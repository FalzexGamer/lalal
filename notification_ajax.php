<?php
/**
 * Notification AJAX Handler for Lalal Gold
 * Handles AJAX requests for notification operations
 */

// Include required files
include('inc/dt.php');
include('inc/sesi.php');
include('inc/notification_functions.php');

// Set content type to JSON
header('Content-Type: application/json');

// Check if user is logged in
if (!isset($nokp) || empty($nokp)) {
    echo json_encode(['success' => false, 'message' => 'User not authenticated']);
    exit;
}

// Get the action from POST/GET
$action = $_REQUEST['action'] ?? '';

try {
    switch ($action) {
        case 'get_notifications':
            $limit = intval($_REQUEST['limit'] ?? 10);
            $unread_only = isset($_REQUEST['unread_only']) ? (bool)$_REQUEST['unread_only'] : false;
            
            $notifications = getUserNotifications($nokp, $limit, $unread_only);
            
            // Format notifications for display
            $formatted_notifications = [];
            foreach ($notifications as $notification) {
                $formatted_notifications[] = [
                    'id' => $notification['id'],
                    'title' => $notification['title'],
                    'message' => $notification['message'],
                    'type' => $notification['type'],
                    'icon' => $notification['icon'],
                    'is_read' => (bool)$notification['is_read'],
                    'is_important' => (bool)$notification['is_important'],
                    'action_url' => $notification['action_url'],
                    'action_text' => $notification['action_text'],
                    'created_at' => formatNotificationTime($notification['created_at']),
                    'color_class' => getNotificationTypeColor($notification['type'])
                ];
            }
            
            echo json_encode([
                'success' => true,
                'notifications' => $formatted_notifications,
                'total_count' => count($formatted_notifications)
            ]);
            break;
            
        case 'get_unread_count':
            $count = getUnreadNotificationCount($nokp);
            echo json_encode([
                'success' => true,
                'count' => $count
            ]);
            break;
            
        case 'mark_as_read':
            $notification_id = intval($_REQUEST['notification_id'] ?? 0);
            
            if ($notification_id > 0) {
                $success = markNotificationAsRead($notification_id, $nokp);
                echo json_encode([
                    'success' => $success,
                    'message' => $success ? 'Notification marked as read' : 'Failed to mark notification as read'
                ]);
            } else {
                echo json_encode([
                    'success' => false,
                    'message' => 'Invalid notification ID'
                ]);
            }
            break;
            
        case 'mark_all_as_read':
            $success = markAllNotificationsAsRead($nokp);
            echo json_encode([
                'success' => $success,
                'message' => $success ? 'All notifications marked as read' : 'Failed to mark notifications as read'
            ]);
            break;
            
        case 'delete_notification':
            $notification_id = intval($_REQUEST['notification_id'] ?? 0);
            
            if ($notification_id > 0) {
                $success = deleteNotification($notification_id, $nokp);
                echo json_encode([
                    'success' => $success,
                    'message' => $success ? 'Notification deleted' : 'Failed to delete notification'
                ]);
            } else {
                echo json_encode([
                    'success' => false,
                    'message' => 'Invalid notification ID'
                ]);
            }
            break;
            
        case 'get_settings':
            $settings = getNotificationSettings($nokp);
            echo json_encode([
                'success' => true,
                'settings' => $settings
            ]);
            break;
            
        case 'update_settings':
            $settings = [
                'user_id' => $nokp,
                'email_notifications' => isset($_REQUEST['email_notifications']),
                'push_notifications' => isset($_REQUEST['push_notifications']),
                'sms_notifications' => isset($_REQUEST['sms_notifications']),
                'price_alerts' => isset($_REQUEST['price_alerts']),
                'order_updates' => isset($_REQUEST['order_updates']),
                'promotional_offers' => isset($_REQUEST['promotional_offers']),
                'vip_notifications' => isset($_REQUEST['vip_notifications'])
            ];
            
            $success = createNotificationSettings($nokp, $settings);
            echo json_encode([
                'success' => $success,
                'message' => $success ? 'Settings updated successfully' : 'Failed to update settings'
            ]);
            break;
            
        case 'create_test_notification':
            // For testing purposes only
            $type = $_REQUEST['type'] ?? 'info';
            $title = $_REQUEST['title'] ?? 'Test Notification';
            $message = $_REQUEST['message'] ?? 'This is a test notification';
            
            $success = createNotification($nokp, $title, $message, $type);
            echo json_encode([
                'success' => $success,
                'message' => $success ? 'Test notification created' : 'Failed to create test notification'
            ]);
            break;
            
        default:
            echo json_encode([
                'success' => false,
                'message' => 'Invalid action'
            ]);
            break;
    }
    
} catch (Exception $e) {
    echo json_encode([
        'success' => false,
        'message' => 'Error: ' . $e->getMessage()
    ]);
}
?>
