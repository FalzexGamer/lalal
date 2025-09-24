<?php
/**
 * Notification Functions for Lalal Gold
 * Include this file in your PHP pages to use notification functionality
 */

// Include database connection if not already included
if (!isset($conn)) {
    include('dt.php');
}

/**
 * Create a new notification
 * @param string $user_id - User ID (nokp)
 * @param string $title - Notification title
 * @param string $message - Notification message
 * @param string $type - Notification type (info, success, warning, error, promo, order, price_alert, vip)
 * @param string $icon - Font Awesome icon class
 * @param bool $is_important - Whether notification is important
 * @param string $action_url - Optional action URL
 * @param string $action_text - Optional action button text
 * @param string $expires_at - Optional expiration date
 * @return bool - Success status
 */
function createNotification($user_id, $title, $message, $type = 'info', $icon = 'fas fa-bell', $is_important = false, $action_url = null, $action_text = null, $expires_at = null) {
    global $conn;
    
    $sql = "INSERT INTO notifications (user_id, title, message, type, icon, is_important, action_url, action_text, expires_at) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssssss", $user_id, $title, $message, $type, $icon, $is_important, $action_url, $action_text, $expires_at);
    
    $result = $stmt->execute();
    $stmt->close();
    
    return $result;
}

/**
 * Get user notifications
 * @param string $user_id - User ID (nokp)
 * @param int $limit - Number of notifications to return (0 for all)
 * @param bool $unread_only - Return only unread notifications
 * @return array - Array of notifications
 */
function getUserNotifications($user_id, $limit = 0, $unread_only = false) {
    global $conn;
    
    $sql = "SELECT * FROM notifications WHERE user_id = ?";
    
    if ($unread_only) {
        $sql .= " AND is_read = FALSE";
    }
    
    $sql .= " AND (expires_at IS NULL OR expires_at > NOW())";
    $sql .= " ORDER BY created_at DESC";
    
    if ($limit > 0) {
        $sql .= " LIMIT ?";
    }
    
    $stmt = $conn->prepare($sql);
    
    if ($limit > 0) {
        $stmt->bind_param("si", $user_id, $limit);
    } else {
        $stmt->bind_param("s", $user_id);
    }
    
    $stmt->execute();
    $result = $stmt->get_result();
    
    $notifications = [];
    while ($row = $result->fetch_assoc()) {
        $notifications[] = $row;
    }
    
    $stmt->close();
    return $notifications;
}

/**
 * Get unread notification count
 * @param string $user_id - User ID (nokp)
 * @return int - Number of unread notifications
 */
function getUnreadNotificationCount($user_id) {
    global $conn;
    
    $sql = "SELECT COUNT(*) as count FROM notifications 
            WHERE user_id = ? AND is_read = FALSE 
            AND (expires_at IS NULL OR expires_at > NOW())";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $stmt->close();
    
    return $row['count'];
}

/**
 * Mark notification as read
 * @param int $notification_id - Notification ID
 * @param string $user_id - User ID for security
 * @return bool - Success status
 */
function markNotificationAsRead($notification_id, $user_id) {
    global $conn;
    
    $sql = "UPDATE notifications SET is_read = TRUE, read_at = NOW() 
            WHERE id = ? AND user_id = ?";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $notification_id, $user_id);
    
    $result = $stmt->execute();
    $stmt->close();
    
    return $result;
}

/**
 * Mark all user notifications as read
 * @param string $user_id - User ID (nokp)
 * @return bool - Success status
 */
function markAllNotificationsAsRead($user_id) {
    global $conn;
    
    $sql = "UPDATE notifications SET is_read = TRUE, read_at = NOW() 
            WHERE user_id = ? AND is_read = FALSE";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user_id);
    
    $result = $stmt->execute();
    $stmt->close();
    
    return $result;
}

/**
 * Delete notification
 * @param int $notification_id - Notification ID
 * @param string $user_id - User ID for security
 * @return bool - Success status
 */
function deleteNotification($notification_id, $user_id) {
    global $conn;
    
    $sql = "DELETE FROM notifications WHERE id = ? AND user_id = ?";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $notification_id, $user_id);
    
    $result = $stmt->execute();
    $stmt->close();
    
    return $result;
}

/**
 * Get notification settings for user
 * @param string $user_id - User ID (nokp)
 * @return array - Notification settings
 */
function getNotificationSettings($user_id) {
    global $conn;
    
    $sql = "SELECT * FROM notification_settings WHERE user_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $settings = $result->fetch_assoc();
    $stmt->close();
    
    if (!$settings) {
        // Create default settings if none exist
        $default_settings = [
            'user_id' => $user_id,
            'email_notifications' => true,
            'push_notifications' => true,
            'sms_notifications' => false,
            'price_alerts' => true,
            'order_updates' => true,
            'promotional_offers' => true,
            'vip_notifications' => true
        ];
        
        createNotificationSettings($user_id, $default_settings);
        return $default_settings;
    }
    
    return $settings;
}

/**
 * Create or update notification settings
 * @param string $user_id - User ID (nokp)
 * @param array $settings - Settings array
 * @return bool - Success status
 */
function createNotificationSettings($user_id, $settings) {
    global $conn;
    
    $sql = "INSERT INTO notification_settings (user_id, email_notifications, push_notifications, sms_notifications, 
            price_alerts, order_updates, promotional_offers, vip_notifications) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?) 
            ON DUPLICATE KEY UPDATE 
            email_notifications = VALUES(email_notifications),
            push_notifications = VALUES(push_notifications),
            sms_notifications = VALUES(sms_notifications),
            price_alerts = VALUES(price_alerts),
            order_updates = VALUES(order_updates),
            promotional_offers = VALUES(promotional_offers),
            vip_notifications = VALUES(vip_notifications)";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("siiiiiii", 
        $user_id,
        $settings['email_notifications'],
        $settings['push_notifications'],
        $settings['sms_notifications'],
        $settings['price_alerts'],
        $settings['order_updates'],
        $settings['promotional_offers'],
        $settings['vip_notifications']
    );
    
    $result = $stmt->execute();
    $stmt->close();
    
    return $result;
}

/**
 * Create order notification
 * @param string $user_id - User ID (nokp)
 * @param string $order_number - Order number
 * @param string $status - Order status
 * @param float $amount - Order amount
 * @return bool - Success status
 */
function createOrderNotification($user_id, $order_number, $status, $amount = null) {
    $status_messages = [
        'pending' => 'Your order #%s is being processed',
        'confirmed' => 'Your order #%s has been confirmed',
        'shipped' => 'Your order #%s has been shipped',
        'delivered' => 'Your order #%s has been delivered',
        'cancelled' => 'Your order #%s has been cancelled'
    ];
    
    $status_icons = [
        'pending' => 'fas fa-clock',
        'confirmed' => 'fas fa-check-circle',
        'shipped' => 'fas fa-shipping-fast',
        'delivered' => 'fas fa-box-open',
        'cancelled' => 'fas fa-times-circle'
    ];
    
    $message = sprintf($status_messages[$status], $order_number);
    if ($amount) {
        $message .= " - Total: RM " . number_format($amount, 2);
    }
    
    return createNotification(
        $user_id,
        "Order Update",
        $message,
        'order',
        $status_icons[$status],
        false,
        'mypurchase.php',
        'View Order'
    );
}

/**
 * Create price alert notification
 * @param string $user_id - User ID (nokp)
 * @param string $metal_type - Type of metal (Gold, Silver, etc.)
 * @param float $old_price - Old price
 * @param float $new_price - New price
 * @param float $change_percent - Percentage change
 * @return bool - Success status
 */
function createPriceAlertNotification($user_id, $metal_type, $old_price, $new_price, $change_percent) {
    $direction = $change_percent > 0 ? 'increased' : 'decreased';
    $message = sprintf(
        "%s price has %s by %.1f%% (RM %.2f → RM %.2f). Check out our latest offers!",
        $metal_type,
        $direction,
        abs($change_percent),
        $old_price,
        $new_price
    );
    
    return createNotification(
        $user_id,
        "Price Alert",
        $message,
        'price_alert',
        'fas fa-gem',
        true,
        'products-luxury.php',
        'Shop Now'
    );
}

/**
 * Create promotional notification
 * @param string $user_id - User ID (nokp)
 * @param string $title - Promotion title
 * @param string $message - Promotion message
 * @param string $action_url - Action URL
 * @return bool - Success status
 */
function createPromotionalNotification($user_id, $title, $message, $action_url = 'products-luxury.php') {
    return createNotification(
        $user_id,
        $title,
        $message,
        'promo',
        'fas fa-gift',
        false,
        $action_url,
        'Shop Now'
    );
}

/**
 * Create VIP notification
 * @param string $user_id - User ID (nokp)
 * @param string $title - VIP notification title
 * @param string $message - VIP notification message
 * @return bool - Success status
 */
function createVIPNotification($user_id, $title, $message) {
    return createNotification(
        $user_id,
        $title,
        $message,
        'vip',
        'fas fa-crown',
        true,
        'profile.php',
        'View Benefits'
    );
}

/**
 * Format notification time for display
 * @param string $timestamp - MySQL timestamp
 * @return string - Formatted time
 */
function formatNotificationTime($timestamp) {
    $time = strtotime($timestamp);
    $now = time();
    $diff = $now - $time;
    
    if ($diff < 60) {
        return 'Just now';
    } elseif ($diff < 3600) {
        $minutes = floor($diff / 60);
        return $minutes . ' minute' . ($minutes > 1 ? 's' : '') . ' ago';
    } elseif ($diff < 86400) {
        $hours = floor($diff / 3600);
        return $hours . ' hour' . ($hours > 1 ? 's' : '') . ' ago';
    } elseif ($diff < 604800) {
        $days = floor($diff / 86400);
        return $days . ' day' . ($days > 1 ? 's' : '') . ' ago';
    } else {
        return date('M j, Y', $time);
    }
}

/**
 * Get notification type color class
 * @param string $type - Notification type
 * @return string - CSS color class
 */
function getNotificationTypeColor($type) {
    $colors = [
        'info' => 'notification-info',
        'success' => 'notification-success',
        'warning' => 'notification-warning',
        'error' => 'notification-error',
        'promo' => 'notification-promo',
        'order' => 'notification-order',
        'price_alert' => 'notification-price-alert',
        'vip' => 'notification-vip'
    ];
    
    return isset($colors[$type]) ? $colors[$type] : 'notification-info';
}
?>
