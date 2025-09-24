<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');
extract($_REQUEST);

// Handle profile update
if(isset($update_profile)) {
    $new_username = mysqli_real_escape_string($conn, $_POST['username']);
    $new_nofon = mysqli_real_escape_string($conn, $_POST['nofon']);
    $new_email = mysqli_real_escape_string($conn, $_POST['email']);
    $new_password = mysqli_real_escape_string($conn, $_POST['password']);
    
    // Check if username already exists (if changed)
    if($new_username != $username) {
        $check_username = mysqli_query($conn, "SELECT username FROM agen WHERE username='$new_username'");
        if(mysqli_num_rows($check_username) > 0) {
            $update_message = "Username already exists!";
            $update_status = "error";
        } else {
            $username = $new_username;
        }
    }
    
    // Update profile if no errors
    if(!isset($update_message)) {
        $update_sql = "UPDATE agen SET username='$new_username', nofon='$new_nofon', email='$new_email'";
        
        // Only update password if provided
        if(!empty($new_password)) {
            $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
            $update_sql .= ", password='$hashed_password'";
        }
        
        $update_sql .= " WHERE nofon='$nofon' limit 1";
        
        if(mysqli_query($conn, $update_sql)) {
            $update_message = "Profile updated successfully!";
            $update_status = "success";
            // Update session variables
            $username = $new_username;
            $nofon = $new_nofon;
            $email = $new_email;
        } else {
            $update_message = "Failed to update profile!";
            $update_status = "error";
        }
    }
}

// Get user statistics
$query_stats = mysqli_query($conn, "SELECT 
    COUNT(*) as total_orders,
    SUM(CASE WHEN status = 'PAID' THEN 1 ELSE 0 END) as completed_orders,
    SUM(CASE WHEN status = 'PENDING' THEN 1 ELSE 0 END) as pending_orders
    FROM saving WHERE username = '$username'");
$stats = mysqli_fetch_array($query_stats);

// Get recent transactions
$query_transactions = mysqli_query($conn, "SELECT * FROM saving WHERE username = '$username' ORDER BY recno DESC LIMIT 5");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Your Profile - Lalal Gold">
    <meta name="keywords" content="profile, account, portfolio, gold trading">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Your Profile - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .profile-header {
            background: var(--gradient-primary);
            padding: var(--spacing-xl);
            text-align: center;
            color: var(--white);
            position: relative;
            overflow: hidden;
        }
        
        .profile-header::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255, 215, 0, 0.1) 0%, transparent 70%);
            animation: shimmer 4s ease-in-out infinite;
        }
        
        .profile-avatar {
            width: 80px;
            height: 80px;
            border-radius: var(--radius-full);
            background: var(--accent-gold);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-md);
            font-size: 2rem;
            color: var(--primary-green);
            font-weight: 700;
            border: 4px solid var(--white);
            box-shadow: var(--shadow-lg);
        }
        
        .profile-name {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: var(--spacing-xs);
        }
        
        .profile-phone {
            font-size: 1rem;
            opacity: 0.9;
        }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: var(--spacing-md);
            padding: var(--spacing-lg);
        }
        
        .stat-card {
            background: var(--white);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            text-align: center;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--gray-200);
            transition: var(--transition-normal);
        }
        
        .stat-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-xl);
        }
        
        .stat-icon {
            width: 50px;
            height: 50px;
            background: var(--gradient-gold);
            border-radius: var(--radius-full);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-md);
            color: var(--primary-green);
            font-size: 1.25rem;
        }
        
        .stat-value {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary-green);
            margin-bottom: var(--spacing-xs);
        }
        
        .stat-label {
            font-size: 0.875rem;
            color: var(--gray-600);
        }
        
        .profile-form-section {
            padding: var(--spacing-lg);
        }
        
        .section-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: var(--primary-green);
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .profile-form-card {
            background: var(--white);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            box-shadow: var(--shadow-md);
            border: 1px solid var(--gray-200);
            transition: var(--transition-normal);
        }
        
        .profile-form-card:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }
        
        .form-group {
            margin-bottom: var(--spacing-lg);
        }
        
        .form-label {
            display: block;
            font-weight: 600;
            color: var(--primary-green);
            margin-bottom: var(--spacing-sm);
            font-size: 0.9rem;
        }
        
        .form-input {
            width: 100%;
            padding: var(--spacing-md);
            border: 2px solid var(--gray-200);
            border-radius: var(--radius-lg);
            font-size: 1rem;
            transition: var(--transition-normal);
            background: var(--white);
        }
        
        .form-input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 0 3px rgba(255, 215, 0, 0.1);
        }
        
        .form-input::placeholder {
            color: var(--gray-400);
        }
        
        .update-btn {
            width: 100%;
            background: var(--gradient-gold);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition-normal);
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .update-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }
        
        .message {
            padding: var(--spacing-md);
            border-radius: var(--radius-lg);
            margin-bottom: var(--spacing-lg);
            font-weight: 500;
            text-align: center;
        }
        
        .message.success {
            background: rgba(16, 185, 129, 0.1);
            border: 1px solid rgba(16, 185, 129, 0.3);
            color: #065f46;
        }
        
        .message.error {
            background: rgba(239, 68, 68, 0.1);
            border: 1px solid rgba(239, 68, 68, 0.3);
            color: #991b1b;
        }
        
        .logout-section {
            padding: var(--spacing-lg);
        }
        
        .logout-btn {
            width: 100%;
            background: linear-gradient(135deg, #EF4444, #DC2626);
            color: var(--white);
            border: none;
            padding: var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            text-decoration: none;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(239, 68, 68, 0.3);
            position: relative;
            overflow: hidden;
        }
        
        .logout-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: left 0.5s;
        }
        
        .logout-btn:hover {
            background: linear-gradient(135deg, #DC2626, #B91C1C);
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(239, 68, 68, 0.4);
        }
        
        .logout-btn:hover::before {
            left: 100%;
        }
        
        .logout-btn:active {
            transform: translateY(-1px);
        }
        
        .password-info {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            margin-top: var(--spacing-sm);
            font-size: 0.875rem;
            color: var(--gray-600);
        }
    </style>
</head>

<?php 
$query1z=mysqli_query($conn,"select count(recno) as bilpoint,sum(berat) as beratpoint from saving where username='$username' and status='PAID' and transaction='Points'");
$res1z=mysqli_fetch_array($query1z);

$bilpoint =$res1z['bilpoint'];
$beratpoint=$res1z['beratpoint'];
      
if (empty($beratpoint)) {
    $beratpoint="0.00";
}
?>

<body>
    <div class="luxury-container">
        <!-- Profile Header -->
        <div class="profile-header">
            <div class="profile-avatar">
                <?php echo strtoupper(substr($username, 0, 1)); ?>
            </div>
            <div class="profile-name"><?php echo htmlspecialchars($username); ?></div>
            <div class="profile-phone"><?php echo htmlspecialchars($nofon); ?></div>
        </div>

        <!-- Statistics -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-wallet"></i>
                </div>
                <div class="stat-value"><?php echo $berat_saving; ?></div>
                <div class="stat-label">Gold Wallet (gm)</div>
            </div>
            
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-gift"></i>
                </div>
                <div class="stat-value"><?php echo $beratpoint; ?></div>
                <div class="stat-label">Points (gm)</div>
            </div>
            
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="stat-value"><?php echo $stats['total_orders']; ?></div>
                <div class="stat-label">Total Orders</div>
            </div>
        </div>

        <!-- Profile Update Form -->
        <div class="profile-form-section">
            <h3 class="section-title">
                <i class="fas fa-user-edit"></i>
                Update Profile Information
            </h3>
            
            <?php if(isset($update_message)): ?>
                <div class="message <?php echo $update_status; ?>">
                    <i class="fas fa-<?php echo $update_status === 'success' ? 'check-circle' : 'exclamation-triangle'; ?> me-2"></i>
                    <?php echo $update_message; ?>
                </div>
            <?php endif; ?>
            
            <div class="profile-form-card">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-user me-2"></i>Username
                        </label>
                        <input type="text" 
                               name="username" 
                               class="form-input" 
                               value="<?php echo htmlspecialchars($username); ?>" 
                               placeholder="Enter username" 
                               required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-phone me-2"></i>Phone Number
                        </label>
                        <input type="text" 
                               name="nofon" 
                               class="form-input" 
                               value="<?php echo htmlspecialchars($nofon); ?>" 
                               placeholder="Enter phone number" 
                               required readonly>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-envelope me-2"></i>Email Address
                        </label>
                        <input type="email" 
                               name="email" 
                               class="form-input" 
                               value="<?php echo htmlspecialchars($email); ?>" 
                               placeholder="Enter email address" 
                               required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-lock me-2"></i>New Password
                        </label>
                        <input type="password" 
                               name="password" 
                               class="form-input" 
                               placeholder="Enter new password (leave blank to keep current)">
                        <div class="password-info">
                            <i class="fas fa-info-circle me-1"></i>
                            Leave password field blank if you don't want to change it
                        </div>
                    </div>
                    
                    <button type="submit" name="update_profile" class="update-btn">
                        <i class="fas fa-save me-2"></i>Update Profile
                    </button>
                </form>

                <div class="logout-section">
            <a href="signout.php" class="logout-btn" onclick="return confirmSignOut()">
                <i class="fas fa-sign-out-alt"></i>
                Sign Out
            </a>
        </div>

            </div>
        </div>

        <!-- Logout Section -->
        

        <!-- Bottom Navigation -->
        <nav class="luxury-bottom-nav">
            <div class="luxury-nav-items">
                <a href="index-luxury.php" class="luxury-nav-item">
                    <i class="fas fa-home luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Home</span>
                </a>
                <a href="products-luxury.php" class="luxury-nav-item">
                    <i class="fas fa-shopping-bag luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Shop</span>
                </a>
                <a href="cart.php" class="luxury-nav-item">
                    <i class="fas fa-shopping-cart luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Cart</span>
                </a>
                <a href="profile-luxury.php" class="luxury-nav-item active">
                    <i class="fas fa-user luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Profile</span>
                </a>
            </div>
        </nav>
    </div>

    <!-- JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Add animation classes to elements
            const cards = document.querySelectorAll('.stat-card, .profile-form-card');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
                card.classList.add('animate-fade-in-up');
            });

            // Add hover effects
            document.querySelectorAll('.stat-card').forEach(card => {
                card.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateY(-8px) scale(1.02)';
                });
                
                card.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateY(0) scale(1)';
                });
            });

            // Form validation
            const form = document.querySelector('form');
            const inputs = document.querySelectorAll('.form-input');
            
            inputs.forEach(input => {
                input.addEventListener('focus', function() {
                    this.parentElement.style.transform = 'scale(1.02)';
                });
                
                input.addEventListener('blur', function() {
                    this.parentElement.style.transform = 'scale(1)';
                });
            });
            
            // Enhanced sign out confirmation
            window.confirmSignOut = function() {
                const result = confirm('Are you sure you want to sign out? You will need to log in again to access your account.');
                if (!result) {
                    return false;
                }
                
                // Add loading state to button
                const logoutBtn = document.querySelector('.logout-btn');
                const originalText = logoutBtn.innerHTML;
                logoutBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Signing Out...';
                logoutBtn.style.opacity = '0.7';
                logoutBtn.style.pointerEvents = 'none';
                
                // Simulate a brief delay for better UX
                setTimeout(() => {
                    window.location.href = 'signout.php';
                }, 500);
                
                return false;
            };
        });
    </script>
</body>
</html>
