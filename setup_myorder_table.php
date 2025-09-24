<?php
// Setup script to create myorder table
date_default_timezone_set("Asia/Kuala_Lumpur");
include('inc/dt.php');

echo "<h2>Setting up myorder table...</h2>";

// SQL to create the myorder table with smaller field sizes to avoid index issues
$create_table_sql = "
CREATE TABLE IF NOT EXISTS `myorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `nokp` varchar(20) DEFAULT NULL,
  `jewelry_type` varchar(50) NOT NULL,
  `karat` varchar(10) NOT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reservation_date` datetime NOT NULL,
  `status` enum('pending','confirmed','in_progress','completed','cancelled') DEFAULT 'pending',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_phone` (`phone`),
  KEY `idx_status` (`status`),
  KEY `idx_reservation_date` (`reservation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
";

// Create the table
if ($conn->query($create_table_sql) === TRUE) {
    echo "<p style='color: green;'>✅ myorder table created successfully!</p>";
} else {
    echo "<p style='color: red;'>❌ Error creating table: " . $conn->error . "</p>";
}

// Create additional indexes for better performance (with smaller field sizes)
$indexes = [
    "CREATE INDEX IF NOT EXISTS idx_myorder_email_phone ON myorder(email(50), phone)",
    "CREATE INDEX IF NOT EXISTS idx_myorder_jewelry_type ON myorder(jewelry_type)",
    "CREATE INDEX IF NOT EXISTS idx_myorder_karat ON myorder(karat)"
];

foreach ($indexes as $index_sql) {
    if ($conn->query($index_sql) === TRUE) {
        echo "<p style='color: green;'>✅ Index created successfully!</p>";
    } else {
        echo "<p style='color: orange;'>⚠️ Index creation warning: " . $conn->error . "</p>";
    }
}

// Check if table exists and show structure
$check_table = $conn->query("SHOW TABLES LIKE 'myorder'");
if ($check_table->num_rows > 0) {
    echo "<h3>Table Structure:</h3>";
    $structure = $conn->query("DESCRIBE myorder");
    echo "<table border='1' style='border-collapse: collapse; width: 100%;'>";
    echo "<tr><th>Field</th><th>Type</th><th>Null</th><th>Key</th><th>Default</th><th>Extra</th></tr>";
    while ($row = $structure->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['Field'] . "</td>";
        echo "<td>" . $row['Type'] . "</td>";
        echo "<td>" . $row['Null'] . "</td>";
        echo "<td>" . $row['Key'] . "</td>";
        echo "<td>" . $row['Default'] . "</td>";
        echo "<td>" . $row['Extra'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
    
    echo "<h3>✅ Setup Complete!</h3>";
    echo "<p>The myorder table has been created successfully with optimized field sizes to avoid index issues.</p>";
    echo "<p><strong>Changes made:</strong></p>";
    echo "<ul>";
    echo "<li>Reduced name field from varchar(255) to varchar(100)</li>";
    echo "<li>Reduced email field from varchar(255) to varchar(100)</li>";
    echo "<li>Reduced phone field from varchar(50) to varchar(20)</li>";
    echo "<li>Reduced nokp field from varchar(50) to varchar(20)</li>";
    echo "<li>Reduced jewelry_type field from varchar(100) to varchar(50)</li>";
    echo "<li>Limited email index to first 50 characters</li>";
    echo "</ul>";
    echo "<p>You can now place orders through the goldreservation.php page.</p>";
    echo "<p><a href='goldreservation.php' style='background: #4CAF50; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;'>Go to Gold Reservation</a></p>";
} else {
    echo "<p style='color: red;'>❌ Table creation failed!</p>";
}

$conn->close();
?>
