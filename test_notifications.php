<?php
/**
 * Test Notifications Script for Lalal Gold
 * This script adds sample notifications for testing the notification modal
 */

// Include required files
include('inc/dt.php');
include('inc/sesi.php');
include('inc/notification_functions.php');

// Check if user is logged in
if (!isset($nokp) || empty($nokp)) {
    echo "User not logged in. Please log in first.";
    exit;
}

echo "<h2>Testing Notification System for User: $nokp</h2>";

// Sample notifications for testing
$test_notifications = [
    [
        'title' => 'Welcome to Lalal Gold!',
        'message' => 'Thank you for joining our premium gold trading platform. Start exploring our exclusive collection!',
        'type' => 'info',
        'icon' => 'fas fa-crown',
        'action_url' => 'products-luxury.php',
        'action_text' => 'Browse Products'
    ],
    [
        'title' => 'Gold Price Alert',
        'message' => 'Gold prices have increased by 2.5% today. Great time to check our latest offers!',
        'type' => 'price_alert',
        'icon' => 'fas fa-gem',
        'is_important' => true,
        'action_url' => 'products-luxury.php',
        'action_text' => 'View Offers'
    ],
    [
        'title' => 'Weekend Special Offer',
        'message' => 'Get 15% off on all rings this weekend. Limited time offer - don\'t miss out!',
        'type' => 'promo',
        'icon' => 'fas fa-gift',
        'action_url' => 'products-luxury.php',
        'action_text' => 'Shop Now'
    ],
    [
        'title' => 'Order Status Update',
        'message' => 'Your recent order has been processed and will be shipped within 24 hours.',
        'type' => 'order',
        'icon' => 'fas fa-shipping-fast',
        'action_url' => 'mypurchase.php',
        'action_text' => 'Track Order'
    ],
    [
        'title' => 'VIP Benefits Unlocked',
        'message' => 'Congratulations! You\'ve unlocked VIP status with exclusive benefits and priority support.',
        'type' => 'vip',
        'icon' => 'fas fa-star',
        'is_important' => true,
        'action_url' => 'profile-luxury.php',
        'action_text' => 'View Benefits'
    ]
];

$success_count = 0;
$error_count = 0;

foreach ($test_notifications as $notification) {
    $result = createNotification(
        $nokp,
        $notification['title'],
        $notification['message'],
        $notification['type'],
        $notification['icon'],
        $notification['is_important'] ?? false,
        $notification['action_url'] ?? null,
        $notification['action_text'] ?? null
    );
    
    if ($result) {
        echo "<p style='color: green;'>✓ Created notification: {$notification['title']}</p>";
        $success_count++;
    } else {
        echo "<p style='color: red;'>✗ Failed to create notification: {$notification['title']}</p>";
        $error_count++;
    }
}

echo "<hr>";
echo "<h3>Test Results:</h3>";
echo "<p>Successfully created: $success_count notifications</p>";
echo "<p>Failed to create: $error_count notifications</p>";

// Show current notification count
$unread_count = getUnreadNotificationCount($nokp);
$total_count = count(getUserNotifications($nokp, 100));

echo "<p>Current unread notifications: $unread_count</p>";
echo "<p>Total notifications: $total_count</p>";

echo "<hr>";
echo "<p><strong>Next Steps:</strong></p>";
echo "<ol>";
echo "<li>Go to <a href='index-luxury.php'>index-luxury.php</a> to test the notification modal</li>";
echo "<li>Click the bell icon in the header to open notifications</li>";
echo "<li>Test marking notifications as read</li>";
echo "<li>Test clicking on notification action buttons</li>";
echo "</ol>";

echo "<p><a href='index-luxury.php' style='background: #d4af37; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;'>Go to Home Page</a></p>";
?>
