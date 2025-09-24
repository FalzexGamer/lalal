<?php
date_default_timezone_set("Asia/Kuala_Lumpur");
session_start();

// Include database connection and security utilities
include('inc/dt.php');
include('inc/security.php');

// Initialize security system
$security = initSecurity($conn);
createSecurityTables($conn);

// Generate CSRF token
$csrf_token = $security->generateCSRFToken();

    // Handle login form submission
    if (isset($_POST['save'])) {
        // Debug: Check CSRF token
        if (!$security->verifyCSRFToken($_POST['csrf_token'])) {
            error_log("CSRF token verification failed");
            $message = "Security token invalid. Please refresh the page and try again.";
            $message_type = "error";
        } else {
            $email = $security->sanitizeInput($_POST['email']);
            $password = $_POST['password'];
            $remember = isset($_POST['remember']);
            
            // Debug: Log the attempt
            error_log("Login attempt - Email: $email, Remember: " . ($remember ? 'Yes' : 'No'));
            
            // Validate input
            if (empty($email) || empty($password)) {
                $message = "Please fill in all required fields";
                $message_type = "error";
            } elseif (!$security->validateEmail($email) && !preg_match('/^[0-9]+$/', $email) && !preg_match('/^[a-zA-Z0-9_]+$/', $email)) {
                $message = "Please enter a valid email, username, or phone number";
                $message_type = "error";
            } else {
                // Attempt login
                $sql = "SELECT recno, username, nofon, email, password, password_hash FROM agen WHERE (email = ? OR username = ? OR nofon = ?) LIMIT 1";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("sss", $email, $email, $email);
                $stmt->execute();
                $stmt->bind_result($recno, $username, $nofon, $email_db, $password_db, $password_hash);
                $stmt->fetch();
                
                // Create user array
                $user = null;
                if ($recno) {
                    $user = array(
                        'recno' => $recno,
                        'username' => $username,
                        'nofon' => $nofon,
                        'email' => $email_db,
                        'password' => $password_db,
                        'password_hash' => $password_hash
                    );
                }
                $stmt->close();
                
                // Debug: Log the query result
                error_log("Login query - Found user: " . ($user ? 'Yes' : 'No'));
                if ($user) {
                    error_log("User data: " . print_r($user, true));
                }
                
                if ($user && isset($user['recno'])) {
                    // Check password (support both old plain text and new hashed passwords)
                    $password_valid = false;
                    
                    if (!empty($user['password_hash'])) {
                        // New hashed password
                        $password_valid = $security->verifyPassword($password, $user['password_hash']);
                    } else {
                        // Legacy plain text password (migrate to hash)
                        if ($user['password'] === $password) {
                            $password_valid = true;
                            // Update to hashed password
                            $new_hash = $security->hashPassword($password);
                            $update_sql = "UPDATE agen SET password_hash = ? WHERE recno = ?";
                            $update_stmt = $conn->prepare($update_sql);
                            $update_stmt->bind_param("si", $new_hash, $user['recno']);
                            $update_stmt->execute();
                        }
                    }
                    
                    if ($password_valid) {
                        // Debug: Log successful login
                        error_log("Login successful - User ID: " . $user['recno'] . ", Username: " . $user['username']);
                        
                        // Set session
                        $_SESSION["nofon"] = $user['nofon'];
                        $_SESSION["user_id"] = $user['recno'];
                        $_SESSION["username"] = $user['username'];
                        
                        // Handle remember me
                        if ($remember) {
                            $token = $security->generateSecureToken();
                            setcookie("member_login", $user['nofon'], time() + (10 * 365 * 24 * 60 * 60), '/', '', true, true);
                            setcookie("auth_token", $token, time() + (10 * 365 * 24 * 60 * 60), '/', '', true, true);
                        } else {
                            // Clear existing cookies
                            setcookie("member_login", "", time() - 3600, '/');
                            setcookie("auth_token", "", time() - 3600, '/');
                        }
                        
                        // Redirect to dashboard
                        header("Location: index-luxury.php");
                        exit();
                    } else {
                        // Debug: Log failed password
                        error_log("Login failed - Invalid password for user: " . $user['username']);
                        
                        $message = "Invalid email or password";
                        $message_type = "error";
                    }
                } else {
                    // Debug: Log no user found or incomplete user data
                    if (!$user) {
                        error_log("Login failed - No user found for identifier: " . $email);
                    } else {
                        error_log("Login failed - Incomplete user data for identifier: " . $email);
                    }
                    
                    $message = "Invalid email or password";
                    $message_type = "error";
                }
            }
    }
} else {
    // Check for existing session
    if (isset($_SESSION['nofon'])) {
        header("Location: index-luxury.php");
   exit();
}

    // Check for remember me cookies
    if (isset($_COOKIE['member_login']) && isset($_COOKIE['auth_token'])) {
        $saved_nofon = $_COOKIE['member_login'];
        $saved_token = $_COOKIE['auth_token'];
        
        // Verify token and auto-login
        $sql = "SELECT recno, username, nofon, email FROM agen WHERE nofon = ? LIMIT 1";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $saved_nofon);
        $stmt->execute();
        $stmt->bind_result($recno, $username, $nofon, $email);
        $stmt->fetch();
        
        if ($recno) {
            $_SESSION["nofon"] = $nofon;
            $_SESSION["user_id"] = $recno;
            $_SESSION["username"] = $username;
            $stmt->close();
            header("Location: index-luxury.php");
            exit();
        }
        $stmt->close();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Sign in to Lalal Gold - Premium Gold Trading Platform">
    <meta name="keywords" content="gold trading, login, lalal gold, precious metals">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Sign In - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .login-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: var(--spacing-lg);
            position: relative;
            overflow: hidden;
        }
        
        .login-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="50" cy="50" r="1" fill="rgba(255,215,0,0.03)"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>');
            pointer-events: none;
        }
        
        .login-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-xl);
            padding: var(--spacing-2xl);
            width: 100%;
            max-width: 450px;
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        .login-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-gold) 0%, #ffed4e 50%, var(--accent-gold) 100%);
            animation: shimmer 3s infinite;
        }
        
        @keyframes shimmer {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        
        .login-header {
            text-align: center;
            margin-bottom: var(--spacing-xl);
        }
        
        .login-logo {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-lg);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.3);
        }
        
        .login-logo i {
            font-size: 2rem;
            color: var(--primary-green);
        }
        
        .login-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.8rem;
            margin-bottom: var(--spacing-sm);
            text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .login-subtitle {
            color: var(--gray-300);
            font-size: 1rem;
            line-height: 1.6;
        }
        
        .form-group {
            margin-bottom: var(--spacing-lg);
        }
        
        .form-label {
            color: var(--accent-gold);
            font-weight: 600;
            font-size: 0.9rem;
            margin-bottom: var(--spacing-sm);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .form-input {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            color: var(--accent-gold);
            font-size: 1rem;
            width: 100%;
            backdrop-filter: blur(10px);
            transition: var(--transition-normal);
            position: relative;
        }
        
        .form-input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 20px rgba(255, 215, 0, 0.2);
        }
        
        .form-input::placeholder {
            color: var(--gray-400);
        }
        
        .input-wrapper {
            position: relative;
        }
        
        .input-icon {
            position: absolute;
            left: var(--spacing-md);
            top: 50%;
            transform: translateY(-50%);
            color: var(--accent-gold);
            font-size: 1.1rem;
            z-index: 2;
        }
        
        .input-wrapper .form-input {
            padding-left: calc(var(--spacing-md) * 2 + 1.1rem);
        }
        
        .remember-me {
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
            margin-bottom: var(--spacing-lg);
        }
        
        .remember-me input[type="checkbox"] {
            width: 18px;
            height: 18px;
            accent-color: var(--accent-gold);
        }
        
        .remember-me label {
            color: var(--gray-300);
            font-size: 0.9rem;
            cursor: pointer;
        }
        
        .login-btn {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 700;
            font-size: 1.1rem;
            width: 100%;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            margin-bottom: var(--spacing-lg);
        }
        
        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 40px rgba(255, 215, 0, 0.4);
            color: var(--primary-green);
        }
        
        .login-btn:disabled {
            opacity: 0.6;
            cursor: not-allowed;
            transform: none;
        }
        
        .error-message {
            background: rgba(255, 107, 107, 0.1);
            border: 1px solid rgba(255, 107, 107, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            color: #ff6b6b;
            font-size: 0.9rem;
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .success-message {
            background: rgba(76, 175, 80, 0.1);
            border: 1px solid rgba(76, 175, 80, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            color: #4caf50;
            font-size: 0.9rem;
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .forgot-password {
            text-align: center;
            margin-bottom: var(--spacing-lg);
        }
        
        .forgot-password a {
            color: var(--accent-gold);
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 500;
            transition: var(--transition-normal);
        }
        
        .forgot-password a:hover {
            color: #ffed4e;
            text-decoration: underline;
        }
        
        .divider {
            text-align: center;
            margin: var(--spacing-lg) 0;
            position: relative;
        }
        
        .divider::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            height: 1px;
            background: linear-gradient(90deg, transparent 0%, rgba(255, 215, 0, 0.3) 50%, transparent 100%);
        }
        
        .divider span {
            background: rgba(1, 50, 32, 0.9);
            padding: 0 var(--spacing-md);
            color: var(--gray-400);
            font-size: 0.9rem;
            position: relative;
            z-index: 1;
        }
        
        .register-btn {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md) var(--spacing-lg);
            color: var(--accent-gold);
            text-decoration: none;
            font-weight: 600;
            font-size: 0.9rem;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            margin-bottom: var(--spacing-lg);
        }
        
        .register-btn:hover {
            background: rgba(255, 215, 0, 0.1);
            border-color: var(--accent-gold);
            transform: translateY(-2px);
            color: var(--accent-gold);
            text-decoration: none;
        }
        
        .footer-links {
            text-align: center;
            margin-top: var(--spacing-lg);
            padding-top: var(--spacing-lg);
            border-top: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .footer-links p {
            color: var(--gray-400);
            font-size: 0.8rem;
            margin-bottom: var(--spacing-sm);
        }
        
        .footer-links div {
            display: flex;
            justify-content: center;
            gap: var(--spacing-lg);
        }
        
        .footer-links a {
            color: var(--accent-gold);
            text-decoration: none;
            font-size: 0.8rem;
            font-weight: 500;
            transition: var(--transition-normal);
        }
        
        .footer-links a:hover {
            color: #ffed4e;
            text-decoration: underline;
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .login-container {
                padding: var(--spacing-md);
            }
            
            .login-card {
                padding: var(--spacing-xl);
            }
            
            .login-title {
                font-size: 1.5rem;
            }
            
            .login-logo {
                width: 60px;
                height: 60px;
            }
            
            .login-logo i {
                font-size: 1.5rem;
            }
        }
    </style>
</head>

<body>
    <div class="login-container">
        <div class="login-card">
            <!-- Header -->
            <div class="login-header">
              
                <img src="icon/logo2.png" class="img-fluid" width="300"> 
                
                <h1 class="login-title">Welcome Back</h1>
                <p class="login-subtitle">Sign in to your premium gold trading account</p>
            </div>

            <!-- Login Form -->
            <form method="post" id="loginForm">
                <!-- CSRF Protection -->
                <input type="hidden" name="csrf_token" value="<?php echo $csrf_token; ?>">
                
                <!-- Error/Success Messages -->
                <?php if (isset($message)): ?>
                    <div class="<?php echo $message_type === 'error' ? 'error-message' : 'success-message'; ?>">
                        <i class="fas fa-<?php echo $message_type === 'error' ? 'exclamation-triangle' : 'check-circle'; ?>"></i>
                        <?php echo htmlspecialchars($message); ?>
                    </div>
                <?php endif; ?>

                <!-- Email/Username Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user"></i>
                        Email, Username, or Phone
                    </label>
                    <div class="input-wrapper">
                        <i class="fas fa-envelope input-icon"></i>
                        <input 
                            type="text" 
                            name="email" 
                            id="email" 
                            class="form-input"
                            placeholder="Enter your email, username, or phone"
                            value="<?php echo isset($_COOKIE['member_login']) ? htmlspecialchars($_COOKIE['member_login']) : ''; ?>"
                            required
                            autocomplete="username"
                        >
                    </div>
                </div>

                <!-- Password Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock"></i>
                        Password
                    </label>
                    <div class="input-wrapper">
                        <i class="fas fa-lock input-icon"></i>
                        <input 
                            type="password" 
                            name="password" 
                            id="password" 
                            class="form-input"
                            placeholder="Enter your password"
                            required
                            autocomplete="current-password"
                        >
                    </div>
                </div>

                <!-- Remember Me -->
                <div class="remember-me">
                    <input 
                        type="checkbox" 
                        name="remember" 
                        id="remember"
                        <?php echo isset($_COOKIE['member_login']) ? 'checked' : ''; ?>
                    >
                    <label for="remember">Remember me for 30 days</label>
                </div>

                <!-- Submit Button -->
                <button type="submit" name="save" id="submitBtn" class="login-btn">
                    <i class="fas fa-sign-in-alt"></i>
                    Sign In
                </button>
            </form>

            <!-- Forgot Password Link -->
            <div class="forgot-password">
                <a href="forgot_password.php">
                    <i class="fas fa-key"></i>
                    Forgot your password?
                </a>
            </div>

            <!-- Divider -->
            <div class="divider">
                <span>or</span>
            </div>

            <!-- Register Link -->
            <div class="register-section">
                <a href="register.php" class="register-btn">
                    <i class="fas fa-user-plus"></i>
                    <span>Create New Account</span>
                </a>
            </div>

            <!-- Footer Links -->
            <div class="footer-links">
                <p>By continuing you agree to our</p>
                <div>
                    <a href="termsofservice.php">Terms of Service</a>
                    <a href="privacypolicy.php">Privacy Policy</a>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Prevent form resubmission on page refresh
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
        
        // Auto-hide messages after 5 seconds
        document.addEventListener('DOMContentLoaded', function() {
            const messages = document.querySelectorAll('.error-message, .success-message');
            messages.forEach(message => {
                setTimeout(() => {
                    message.style.opacity = '0';
                    setTimeout(() => {
                        if (message.parentElement) {
                            message.remove();
                        }
                    }, 300);
                }, 5000);
            });
            
            // Add smooth animations
            const loginCard = document.querySelector('.login-card');
            loginCard.classList.add('animate-fade-in-up');
        });
        
        // Form validation
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            
            if (!email || !password) {
                e.preventDefault();
                alert('Please fill in all required fields.');
                return false;
            }
        });
        
        // Add input focus effects
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'translateY(-2px)';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'translateY(0)';
            });
        });
    </script>
</body>
</html>