<?php
/**
 * Notification Table Setup Script for Lalal Gold
 * Run this script once to set up the notification infrastructure
 */

// Include database connection
include('inc/dt.php');

echo "<h2>Setting up Notification System for Lalal Gold</h2>";

try {
    // Create notifications table
    $sql = "CREATE TABLE IF NOT EXISTS notifications (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id VARCHAR(50) NOT NULL,
        title VARCHAR(255) NOT NULL,
        message TEXT NOT NULL,
        type ENUM('info', 'success', 'warning', 'error', 'promo', 'order', 'price_alert', 'vip') DEFAULT 'info',
        icon VARCHAR(100) DEFAULT 'fas fa-bell',
        is_read BOOLEAN DEFAULT FALSE,
        is_important BOOLEAN DEFAULT FALSE,
        action_url VARCHAR(500) NULL,
        action_text VARCHAR(100) NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        read_at TIMESTAMP NULL,
        expires_at TIMESTAMP NULL,
        INDEX idx_user_id (user_id),
        INDEX idx_type (type),
        INDEX idx_is_read (is_read),
        INDEX idx_created_at (created_at),
        INDEX idx_expires_at (expires_at)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
    
    if ($conn->query($sql)) {
        echo "<p style='color: green;'>✓ notifications table created successfully</p>";
    } else {
        echo "<p style='color: red;'>✗ Error creating notifications table: " . $conn->error . "</p>";
    }
    
    // Create notification_settings table for user preferences
    $sql_settings = "CREATE TABLE IF NOT EXISTS notification_settings (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id VARCHAR(50) NOT NULL UNIQUE,
        email_notifications BOOLEAN DEFAULT TRUE,
        push_notifications BOOLEAN DEFAULT TRUE,
        sms_notifications BOOLEAN DEFAULT FALSE,
        price_alerts BOOLEAN DEFAULT TRUE,
        order_updates BOOLEAN DEFAULT TRUE,
        promotional_offers BOOLEAN DEFAULT TRUE,
        vip_notifications BOOLEAN DEFAULT TRUE,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        INDEX idx_user_id (user_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
    
    if ($conn->query($sql_settings)) {
        echo "<p style='color: green;'>✓ notification_settings table created successfully</p>";
    } else {
        echo "<p style='color: red;'>✗ Error creating notification_settings table: " . $conn->error . "</p>";
    }
    
    // Insert sample notifications for testing
    $sample_notifications = [
        [
            'user_id' => 'sample_user',
            'title' => 'New Gold Price Alert',
            'message' => 'Gold price has increased by 2.5% today. Check out our latest offers!',
            'type' => 'price_alert',
            'icon' => 'fas fa-gem',
            'is_important' => TRUE
        ],
        [
            'user_id' => 'sample_user',
            'title' => 'Order Shipped',
            'message' => 'Your jewelry order #12345 has been shipped and is on its way to you.',
            'type' => 'order',
            'icon' => 'fas fa-shipping-fast',
            'action_url' => 'mypurchase.php',
            'action_text' => 'Track Order'
        ],
        [
            'user_id' => 'sample_user',
            'title' => 'Special Weekend Offer',
            'message' => 'Get 10% off on all rings this weekend. Limited time offer!',
            'type' => 'promo',
            'icon' => 'fas fa-gift',
            'action_url' => 'products-luxury.php',
            'action_text' => 'Shop Now'
        ],
        [
            'user_id' => 'sample_user',
            'title' => 'VIP Status Achieved',
            'message' => 'Congratulations! You\'ve reached VIP status with exclusive benefits.',
            'type' => 'vip',
            'icon' => 'fas fa-crown',
            'is_important' => TRUE
        ]
    ];
    
    foreach ($sample_notifications as $notification) {
        $insert_sql = "INSERT IGNORE INTO notifications (user_id, title, message, type, icon, is_important, action_url, action_text) 
                      VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
        $stmt = $conn->prepare($insert_sql);
        $stmt->bind_param("ssssssss", 
            $notification['user_id'],
            $notification['title'],
            $notification['message'],
            $notification['type'],
            $notification['icon'],
            $notification['is_important'],
            $notification['action_url'],
            $notification['action_text']
        );
        
        if ($stmt->execute()) {
            echo "<p style='color: green;'>✓ Sample notification '{$notification['title']}' created</p>";
        } else {
            echo "<p style='color: blue;'>ℹ Sample notification already exists or error occurred</p>";
        }
        $stmt->close();
    }
    
    echo "<hr>";
    echo "<h3>Notification System Setup Complete!</h3>";
    echo "<p>The following notification features are now available:</p>";
    echo "<ul>";
    echo "<li>✓ User-specific notifications</li>";
    echo "<li>✓ Different notification types (info, success, warning, error, promo, order, price_alert, vip)</li>";
    echo "<li>✓ Read/unread status tracking</li>";
    echo "<li>✓ Important notifications flagging</li>";
    echo "<li>✓ Action buttons with URLs</li>";
    echo "<li>✓ Notification expiration dates</li>";
    echo "<li>✓ User notification preferences</li>";
    echo "<li>✓ Sample notifications for testing</li>";
    echo "</ul>";
    
    echo "<p><strong>Next Steps:</strong></p>";
    echo "<ol>";
    echo "<li>Update your PHP files to use the notification functions</li>";
    echo "<li>Create notification.php file for AJAX operations</li>";
    echo "<li>Test the notification system</li>";
    echo "<li>Delete this setup file after successful execution</li>";
    echo "</ol>";
    
} catch (Exception $e) {
    echo "<p style='color: red;'>✗ Error: " . $e->getMessage() . "</p>";
}

// Close connection
$conn->close();
?>
