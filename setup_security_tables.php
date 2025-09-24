<?php
/**
 * Security Tables Setup Script for Lalal Gold
 * Run this script once to set up the required security infrastructure
 */

// Include database connection
include('inc/dt.php');

echo "<h2>Setting up Security Tables for Lalal Gold</h2>";

try {
    // Create login_attempts table
    $sql = "CREATE TABLE IF NOT EXISTS login_attempts (
        id INT AUTO_INCREMENT PRIMARY KEY,
        identifier VARCHAR(255) NOT NULL,
        ip_address VARCHAR(45) NOT NULL,
        failed_attempts INT DEFAULT 1,
        last_failed_attempt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        INDEX idx_identifier (identifier(191)),
        INDEX idx_ip_address (ip_address),
        INDEX idx_last_attempt (last_failed_attempt)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
    
    if ($conn->query($sql)) {
        echo "<p style='color: green;'>✓ login_attempts table created successfully</p>";
    } else {
        echo "<p style='color: red;'>✗ Error creating login_attempts table: " . $conn->error . "</p>";
    }
    
    // Check if email column exists in agen table
    $check_email = "SHOW COLUMNS FROM agen LIKE 'email'";
    $result = $conn->query($check_email);
    
    if ($result->num_rows == 0) {
        $add_email = "ALTER TABLE agen ADD COLUMN email VARCHAR(255) AFTER username";
        if ($conn->query($add_email)) {
            echo "<p style='color: green;'>✓ email column added to agen table</p>";
            
            // Add unique index with prefix length to avoid index size issues
            $add_email_index = "ALTER TABLE agen ADD UNIQUE INDEX idx_email (email(191))";
            if ($conn->query($add_email_index)) {
                echo "<p style='color: green;'>✓ email unique index added to agen table</p>";
            } else {
                echo "<p style='color: red;'>✗ Error adding email index: " . $conn->error . "</p>";
            }
        } else {
            echo "<p style='color: red;'>✗ Error adding email column: " . $conn->error . "</p>";
        }
    } else {
        echo "<p style='color: blue;'>ℹ email column already exists in agen table</p>";
    }
    
    // Check if password_hash column exists in agen table
    $check_hash = "SHOW COLUMNS FROM agen LIKE 'password_hash'";
    $result = $conn->query($check_hash);
    
    if ($result->num_rows == 0) {
        $add_hash = "ALTER TABLE agen ADD COLUMN password_hash VARCHAR(255) AFTER password";
        if ($conn->query($add_hash)) {
            echo "<p style='color: green;'>✓ password_hash column added to agen table</p>";
        } else {
            echo "<p style='color: red;'>✗ Error adding password_hash column: " . $conn->error . "</p>";
        }
    } else {
        echo "<p style='color: blue;'>ℹ password_hash column already exists in agen table</p>";
    }
    
    // Create users table for better user management (optional)
    $sql_users = "CREATE TABLE IF NOT EXISTS users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(100) UNIQUE NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        phone VARCHAR(20),
        password_hash VARCHAR(255) NOT NULL,
        first_name VARCHAR(100),
        last_name VARCHAR(100),
        is_active BOOLEAN DEFAULT TRUE,
        is_verified BOOLEAN DEFAULT FALSE,
        verification_token VARCHAR(255),
        reset_token VARCHAR(255),
        reset_token_expires TIMESTAMP NULL,
        last_login TIMESTAMP NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        INDEX idx_email (email(191)),
        INDEX idx_username (username),
        INDEX idx_phone (phone)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
    
    if ($conn->query($sql_users)) {
        echo "<p style='color: green;'>✓ users table created successfully</p>";
    } else {
        echo "<p style='color: red;'>✗ Error creating users table: " . $conn->error . "</p>";
    }
    
    // Create audit_log table for security monitoring
    $sql_audit = "CREATE TABLE IF NOT EXISTS audit_log (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT,
        action VARCHAR(100) NOT NULL,
        details TEXT,
        ip_address VARCHAR(45),
        user_agent TEXT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        INDEX idx_user_id (user_id),
        INDEX idx_action (action),
        INDEX idx_created_at (created_at)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
    
    if ($conn->query($sql_audit)) {
        echo "<p style='color: green;'>✓ audit_log table created successfully</p>";
    } else {
        echo "<p style='color: red;'>✗ Error creating audit_log table: " . $conn->error . "</p>";
    }
    
    // Insert sample data for testing (optional)
    $sample_user = "INSERT IGNORE INTO users (username, email, phone, password_hash, first_name, last_name) 
                    VALUES ('admin', 'admin@lalalgold.com', '+60123456789', 
                    '$2y$12$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin', 'User')";
    
    if ($conn->query($sample_user)) {
        echo "<p style='color: green;'>✓ Sample admin user created (password: password)</p>";
    } else {
        echo "<p style='color: blue;'>ℹ Sample user already exists or error occurred</p>";
    }
    
    echo "<hr>";
    echo "<h3>Security Setup Complete!</h3>";
    echo "<p>The following security features are now available:</p>";
    echo "<ul>";
    echo "<li>✓ Brute-force protection with account lockout</li>";
    echo "<li>✓ Password hashing with bcrypt/Argon2</li>";
    echo "<li>✓ CSRF protection</li>";
    echo "<li>✓ Input validation and sanitization</li>";
    echo "<li>✓ Login attempt tracking</li>";
    echo "<li>✓ Audit logging</li>";
    echo "<li>✓ Email-based login support</li>";
    echo "</ul>";
    
    echo "<p><strong>Important:</strong> Delete this setup file after successful execution for security.</p>";
    
} catch (Exception $e) {
    echo "<p style='color: red;'>✗ Error: " . $e->getMessage() . "</p>";
}

// Close connection
$conn->close();
?>
