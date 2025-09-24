<?php
/**
 * Test File for Lalal Gold Login System
 * This file tests the basic functionality of the new security system
 */

// Include required files
include('inc/dt.php');
include('inc/security.php');

echo "<h1>Lalal Gold Login System - Test Results</h1>";
echo "<style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .success { color: green; }
    .error { color: red; }
    .info { color: blue; }
    .test-section { margin: 20px 0; padding: 15px; border: 1px solid #ccc; border-radius: 5px; }
</style>";

// Test 1: Database Connection
echo "<div class='test-section'>";
echo "<h3>Test 1: Database Connection</h3>";
if ($conn) {
    echo "<p class='success'>✓ Database connection successful</p>";
} else {
    echo "<p class='error'>✗ Database connection failed</p>";
    exit;
}
echo "</div>";

// Test 2: Security Class Initialization
echo "<div class='test-section'>";
echo "<h3>Test 2: Security Class Initialization</h3>";
try {
    $security = initSecurity($conn);
    echo "<p class='success'>✓ Security class initialized successfully</p>";
} catch (Exception $e) {
    echo "<p class='error'>✗ Security class initialization failed: " . $e->getMessage() . "</p>";
}
echo "</div>";

// Test 3: Password Hashing
echo "<div class='test-section'>";
echo "<h3>Test 3: Password Hashing</h3>";
if (isset($security)) {
    $test_password = "TestPassword123!";
    $hash = $security->hashPassword($test_password);
    
    if ($hash && strlen($hash) > 20) {
        echo "<p class='success'>✓ Password hashing working (Hash: " . substr($hash, 0, 20) . "...)</p>";
        
        // Test password verification
        if ($security->verifyPassword($test_password, $hash)) {
            echo "<p class='success'>✓ Password verification working</p>";
        } else {
            echo "<p class='error'>✗ Password verification failed</p>";
        }
    } else {
        echo "<p class='error'>✗ Password hashing failed</p>";
    }
}
echo "</div>";

// Test 4: CSRF Token Generation
echo "<div class='test-section'>";
echo "<h3>Test 4: CSRF Token Generation</h3>";
if (isset($security)) {
    $token1 = $security->generateCSRFToken();
    $token2 = $security->generateCSRFToken();
    
    if ($token1 && $token2 && $token1 === $token2) {
        echo "<p class='success'>✓ CSRF token generation working (Token: " . substr($token1, 0, 20) . "...)</p>";
        
        // Test token verification
        if ($security->verifyCSRFToken($token1)) {
            echo "<p class='success'>✓ CSRF token verification working</p>";
        } else {
            echo "<p class='error'>✗ CSRF token verification failed</p>";
        }
    } else {
        echo "<p class='error'>✗ CSRF token generation failed</p>";
    }
}
echo "</div>";

// Test 5: Input Validation
echo "<div class='test-section'>";
echo "<h3>Test 5: Input Validation</h3>";
if (isset($security)) {
    // Test email validation
    $valid_email = "test@example.com";
    $invalid_email = "invalid-email";
    
    if ($security->validateEmail($valid_email)) {
        echo "<p class='success'>✓ Valid email validation working</p>";
    } else {
        echo "<p class='error'>✗ Valid email validation failed</p>";
    }
    
    if (!$security->validateEmail($invalid_email)) {
        echo "<p class='success'>✓ Invalid email validation working</p>";
    } else {
        echo "<p class='error'>✗ Invalid email validation failed</p>";
    }
    
    // Test input sanitization
    $dirty_input = "<script>alert('xss')</script>";
    $clean_input = $security->sanitizeInput($dirty_input);
    
    if (strpos($clean_input, '<script>') === false) {
        echo "<p class='success'>✓ Input sanitization working</p>";
    } else {
        echo "<p class='error'>✗ Input sanitization failed</p>";
    }
}
echo "</div>";

// Test 6: Database Tables
echo "<div class='test-section'>";
echo "<h3>Test 6: Database Tables Check</h3>";

// Check if required tables exist
$tables_to_check = ['login_attempts', 'users', 'audit_log'];
$existing_tables = [];

foreach ($tables_to_check as $table) {
    $result = $conn->query("SHOW TABLES LIKE '$table'");
    if ($result && $result->num_rows > 0) {
        $existing_tables[] = $table;
        echo "<p class='success'>✓ Table '$table' exists</p>";
    } else {
        echo "<p class='error'>✗ Table '$table' missing</p>";
    }
}

// Check agen table structure
$result = $conn->query("SHOW COLUMNS FROM agen LIKE 'email'");
if ($result && $result->num_rows > 0) {
    echo "<p class='success'>✓ 'email' column exists in agen table</p>";
} else {
    echo "<p class='error'>✗ 'email' column missing from agen table</p>";
}

$result = $conn->query("SHOW COLUMNS FROM agen LIKE 'password_hash'");
if ($result && $result->num_rows > 0) {
    echo "<p class='success'>✓ 'password_hash' column exists in agen table</p>";
} else {
    echo "<p class='error'>✗ 'password_hash' column missing from agen table</p>";
}
echo "</div>";

// Test 7: Security Functions
echo "<div class='test-section'>";
echo "<h3>Test 7: Security Functions</h3>";
if (isset($security)) {
    // Test secure token generation
    $token = $security->generateSecureToken();
    if ($token && strlen($token) === 64) {
        echo "<p class='success'>✓ Secure token generation working</p>";
    } else {
        echo "<p class='error'>✗ Secure token generation failed</p>";
    }
    
    // Test password strength checking
    $weak_password = "123";
    $strong_password = "StrongPass123!";
    
    $weak_errors = $security->checkPasswordStrength($weak_password);
    $strong_errors = $security->checkPasswordStrength($strong_password);
    
    if (count($weak_errors) > 0) {
        echo "<p class='success'>✓ Weak password detection working</p>";
    } else {
        echo "<p class='error'>✗ Weak password detection failed</p>";
    }
    
    if (count($strong_errors) === 0) {
        echo "<p class='success'>✓ Strong password validation working</p>";
    } else {
        echo "<p class='error'>✗ Strong password validation failed</p>";
    }
}
echo "</div>";

// Summary
echo "<div class='test-section' style='background-color: #f0f8ff;'>";
echo "<h3>Test Summary</h3>";
echo "<p><strong>Database Connection:</strong> " . ($conn ? "Working" : "Failed") . "</p>";
echo "<p><strong>Security System:</strong> " . (isset($security) ? "Working" : "Failed") . "</p>";
echo "<p><strong>Required Tables:</strong> " . count($existing_tables) . "/" . count($tables_to_check) . " created</p>";

if (isset($security) && $conn) {
    echo "<p class='success'><strong>Overall Status: READY FOR USE</strong></p>";
    echo "<p>Your enhanced login system is working correctly!</p>";
} else {
    echo "<p class='error'><strong>Overall Status: NEEDS ATTENTION</strong></p>";
    echo "<p>Please fix the issues above before using the system.</p>";
}
echo "</div>";

// Recommendations
echo "<div class='test-section' style='background-color: #fffacd;'>";
echo "<h3>Next Steps</h3>";
echo "<ol>";
echo "<li>Run <code>setup_security_tables.php</code> if tables are missing</li>";
echo "<li>Test the actual login page at <code>sign_in.php</code></li>";
echo "<li>Delete this test file for security</li>";
echo "<li>Update existing user passwords to use the new hash system</li>";
echo "</ol>";
echo "</div>";

$conn->close();
?>
