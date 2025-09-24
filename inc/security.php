<?php
/**
 * Security Utilities for Lalal Gold Login System
 * Handles password hashing, validation, brute-force protection, and security features
 */

class Security {
    private $conn;
    private $max_attempts = 5;
    private $lockout_duration = 900; // 15 minutes in seconds
    
    public function __construct($conn) {
        $this->conn = $conn;
    }
    
    /**
     * Hash password using Argon2 (preferred) or bcrypt
     */
    public function hashPassword($password) {
        if (function_exists('password_hash') && defined('PASSWORD_ARGON2ID')) {
            return password_hash($password, PASSWORD_ARGON2ID, [
                'memory_cost' => 65536,
                'time_cost' => 4,
                'threads' => 3
            ]);
        } elseif (function_exists('password_hash')) {
            return password_hash($password, PASSWORD_BCRYPT, ['cost' => 12]);
        } else {
            // Fallback for older PHP versions
            return hash('sha256', $password . 'lalalgold_salt_2024');
        }
    }
    
    /**
     * Verify password against hash
     */
    public function verifyPassword($password, $hash) {
        if (function_exists('password_verify')) {
            return password_verify($password, $hash);
        } else {
            // Fallback for older PHP versions
            return hash('sha256', $password . 'lalalgold_salt_2024') === $hash;
        }
    }
    
    /**
     * Check if account is locked due to failed attempts
     */

    
    
    /**
     * Record failed login attempt
     */
    public function recordFailedAttempt($identifier, $ip_address) {
        $sql = "INSERT INTO login_attempts (identifier, ip_address, failed_attempts, last_failed_attempt) 
                VALUES (?, ?, 1, NOW()) 
                ON DUPLICATE KEY UPDATE 
                failed_attempts = failed_attempts + 1, 
                last_failed_attempt = NOW()";
        
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ss", $identifier, $ip_address);
        return $stmt->execute();
    }
    
    /**
     * Reset failed attempts on successful login
     */
    public function resetFailedAttempts($identifier) {
        $sql = "DELETE FROM login_attempts WHERE identifier = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("s", $identifier);
        return $stmt->execute();
    }
    
    /**
     * Generate CSRF token
     */
    public function generateCSRFToken() {
        if (!isset($_SESSION['csrf_token'])) {
            $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
        }
        return $_SESSION['csrf_token'];
    }
    
    /**
     * Verify CSRF token
     */
    public function verifyCSRFToken($token) {
        return isset($_SESSION['csrf_token']) && hash_equals($_SESSION['csrf_token'], $token);
    }
    
    /**
     * Sanitize input data
     */
    public function sanitizeInput($data) {
        if (is_array($data)) {
            return array_map([$this, 'sanitizeInput'], $data);
        }
        return htmlspecialchars(trim($data), ENT_QUOTES, 'UTF-8');
    }
    
    /**
     * Validate email format
     */
    public function validateEmail($email) {
        return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
    }
    
    /**
     * Generate secure random token
     */
    public function generateSecureToken($length = 32) {
        return bin2hex(random_bytes($length));
    }
    
    /**
     * Check password strength
     */
    public function checkPasswordStrength($password) {
        $errors = [];
        
        if (strlen($password) < 8) {
            $errors[] = "Password must be at least 8 characters long";
        }
        
        if (!preg_match('/[A-Z]/', $password)) {
            $errors[] = "Password must contain at least one uppercase letter";
        }
        
        if (!preg_match('/[a-z]/', $password)) {
            $errors[] = "Password must contain at least one lowercase letter";
        }
        
        if (!preg_match('/[0-9]/', $password)) {
            $errors[] = "Password must contain at least one number";
        }
        
        if (!preg_match('/[^A-Za-z0-9]/', $password)) {
            $errors[] = "Password must contain at least one special character";
        }
        
        return $errors;
    }
    
    /**
     * Get remaining lockout time
     */
    public function getRemainingLockoutTime($identifier) {
        $sql = "SELECT last_failed_attempt FROM login_attempts 
                WHERE identifier = ? AND failed_attempts >= ?";
        
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("si", $identifier, $this->max_attempts);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $last_attempt = strtotime($row['last_failed_attempt']);
            $unlock_time = $last_attempt + $this->lockout_duration;
            $remaining = $unlock_time - time();
            return max(0, $remaining);
        }
        
        return 0;
    }
}

/**
 * Initialize security class
 */
function initSecurity($conn) {
    return new Security($conn);
}

/**
 * Create required security tables if they don't exist
 */
function createSecurityTables($conn) {
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
    
    $conn->query($sql);
    
    // Add email column to agen table if it doesn't exist
    $check_email = "SHOW COLUMNS FROM agen LIKE 'email'";
    $result = $conn->query($check_email);
    
    if ($result->num_rows == 0) {
        $add_email = "ALTER TABLE agen ADD COLUMN email VARCHAR(255) AFTER username";
        $conn->query($add_email);
        
        // Add unique index with prefix length to avoid index size issues
        $add_email_index = "ALTER TABLE agen ADD UNIQUE INDEX idx_email (email(191))";
        $conn->query($add_email_index);
    }
    
    // Add password_hash column if it doesn't exist
    $check_hash = "SHOW COLUMNS FROM agen LIKE 'password_hash'";
    $result = $conn->query($check_hash);
    
    if ($result->num_rows == 0) {
        $add_hash = "ALTER TABLE agen ADD COLUMN password_hash VARCHAR(255) AFTER password";
        $conn->query($add_hash);
    }
}
?>
