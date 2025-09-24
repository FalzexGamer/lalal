<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
session_start();
include('inc/dt.php'); 
extract($_REQUEST);

if(isset($save)) {
    $name_d = mysqli_real_escape_string($conn, $_POST["name_d"]);
    $nofon_d = mysqli_real_escape_string($conn, $_POST["nofon_d"]);
    $password_d = mysqli_real_escape_string($conn, $_POST["password_d"]);
    $confirmpassword_d = mysqli_real_escape_string($conn, $_POST["confirmpassword_d"]);
    $username_d = mysqli_real_escape_string($conn, $_POST["username_d"]);
    
    if($password_d == $confirmpassword_d) {
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "INSERT INTO member (name, nofon, username, password)
        VALUES ('$name_d', '$nofon_d','$username_d', '$password_d')";

        if ($conn->query($sql) === TRUE) {
            echo "<script>window.location.href='success_register.php';</script>";
        } else {
            $message = "Username already exists!";
        }
    } else {
        $message = "Password and Confirm Password do not match!";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Register - Lalal Gold">
    <meta name="keywords" content="register, gold trading, membership">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Register - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .register-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: var(--spacing-lg);
        }
        
        .register-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-xl);
            padding: var(--spacing-2xl);
            width: 100%;
            max-width: 500px;
            position: relative;
            overflow: hidden;
        }
        
        .register-card::before {
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
        
        .register-header {
            text-align: center;
            margin-bottom: var(--spacing-xl);
        }
        
        .register-logo {
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
        
        .register-logo i {
            font-size: 2rem;
            color: var(--primary-green);
        }
        
        .register-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.8rem;
            margin-bottom: var(--spacing-sm);
            text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .register-subtitle {
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
        }
        
        .form-input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 20px rgba(255, 215, 0, 0.2);
        }
        
        .form-input::placeholder {
            color: var(--gray-400);
        }
        
        .password-error {
            color: #ff6b6b;
            font-size: 0.85rem;
            margin-top: var(--spacing-xs);
            display: none;
            align-items: center;
            gap: var(--spacing-xs);
        }
        
        .password-error.show {
            display: flex;
        }
        
        .register-btn {
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
            margin-top: var(--spacing-lg);
        }
        
        .register-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 40px rgba(255, 215, 0, 0.4);
            color: var(--primary-green);
        }
        
        .register-btn:disabled {
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
        
        .terms-section {
            text-align: center;
            margin-top: var(--spacing-xl);
            padding-top: var(--spacing-lg);
            border-top: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .terms-text {
            color: var(--gray-400);
            font-size: 0.85rem;
            margin-bottom: var(--spacing-sm);
        }
        
        .terms-links {
            display: flex;
            justify-content: center;
            gap: var(--spacing-lg);
        }
        
        .terms-link {
            color: var(--accent-gold);
            text-decoration: none;
            font-size: 0.85rem;
            font-weight: 500;
            transition: var(--transition-normal);
        }
        
        .terms-link:hover {
            color: #ffed4e;
            text-decoration: none;
        }
        
        .login-link {
            text-align: center;
            margin-top: var(--spacing-lg);
        }
        
        .login-link a {
            color: var(--accent-gold);
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition-normal);
        }
        
        .login-link a:hover {
            color: #ffed4e;
            text-decoration: none;
        }
        
        .input-icon {
            color: var(--accent-gold);
            font-size: 1rem;
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .register-container {
                padding: var(--spacing-md);
            }
            
            .register-card {
                padding: var(--spacing-xl);
            }
            
            .register-title {
                font-size: 1.5rem;
            }
            
            .register-logo {
                width: 60px;
                height: 60px;
            }
            
            .register-logo i {
                font-size: 1.5rem;
            }
        }
    </style>
</head>

<body>
    <div class="register-container">
        <div class="register-card">
            <!-- Header -->
            <div class="register-header">
                <div class="register-logo">
                    <i class="fas fa-crown"></i>
                </div>
                <h1 class="register-title">Join Lalal Gold</h1>
                <p class="register-subtitle">Create your premium gold trading account</p>
            </div>

            <!-- Error/Success Messages -->
            <?php if(isset($message)): ?>
            <div class="error-message">
                <i class="fas fa-exclamation-triangle"></i>
                <?php echo htmlspecialchars($message); ?>
            </div>
            <?php endif; ?>

            <!-- Registration Form -->
            <form method="post" enctype="multipart/form-data" id="registerForm">
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user input-icon"></i>
                        Username
                    </label>
                    <input type="text" name="username_d" id="username_d" 
                           class="form-input" placeholder="Enter your username" required>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock input-icon"></i>
                        Password
                    </label>
                    <input type="password" name="password_d" id="password_d" 
                           class="form-input" placeholder="Enter your password" required 
                           oninput="validatePasswords()">
                </div>

                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock input-icon"></i>
                        Confirm Password
                    </label>
                    <input type="password" name="confirmpassword_d" id="confirmpassword_d" 
                           class="form-input" placeholder="Confirm your password" required 
                           oninput="validatePasswords()">
                    <div class="password-error" id="passwordError">
                        <i class="fas fa-times-circle"></i>
                        Passwords do not match!
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user-circle input-icon"></i>
                        Full Name
                    </label>
                    <input type="text" name="name_d" id="name_d" 
                           class="form-input" placeholder="Enter your full name" required>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-phone input-icon"></i>
                        Phone Number
                    </label>
                    <input type="text" name="nofon_d" id="nofon_d" 
                           class="form-input" placeholder="Enter your phone number" required>
                </div>

                <button type="submit" name="save" class="register-btn" id="registerBtn">
                    <i class="fas fa-user-plus"></i>
                    Create Account
                </button>
            </form>

            <!-- Terms Section -->
            <div class="terms-section">
                <p class="terms-text">By continuing you agree to our</p>
                <div class="terms-links">
                    <a href="termsofservice.php" class="terms-link">Terms of Service</a>
                    <a href="privacypolicy.php" class="terms-link">Privacy Policy</a>
                </div>
            </div>

            <!-- Login Link -->
            <div class="login-link">
                <p>Already have an account? <a href="sign_in.php">Sign In</a></p>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Password validation
        function validatePasswords() {
            const password = document.getElementById('password_d').value;
            const confirmPassword = document.getElementById('confirmpassword_d').value;
            const errorMsg = document.getElementById('passwordError');
            const registerBtn = document.getElementById('registerBtn');
            
            if (password !== confirmPassword && confirmPassword !== '') {
                errorMsg.classList.add('show');
                registerBtn.disabled = true;
            } else {
                errorMsg.classList.remove('show');
                registerBtn.disabled = false;
            }
        }
        
        // Form validation
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            const password = document.getElementById('password_d').value;
            const confirmPassword = document.getElementById('confirmpassword_d').value;
            
            if (password !== confirmPassword) {
                e.preventDefault();
                document.getElementById('passwordError').classList.add('show');
                return false;
            }
        });
        
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const registerCard = document.querySelector('.register-card');
            registerCard.classList.add('animate-fade-in-up');
            
            // Add input focus effects
            const inputs = document.querySelectorAll('.form-input');
            inputs.forEach(input => {
                input.addEventListener('focus', function() {
                    this.parentElement.style.transform = 'translateY(-2px)';
                });
                
                input.addEventListener('blur', function() {
                    this.parentElement.style.transform = 'translateY(0)';
                });
            });
        });
        
        // Real-time validation
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('input', function() {
                if (this.value.trim() !== '') {
                    this.style.borderColor = 'var(--accent-gold)';
                } else {
                    this.style.borderColor = 'rgba(255, 215, 0, 0.3)';
                }
            });
        });
    </script>
</body>
</html>