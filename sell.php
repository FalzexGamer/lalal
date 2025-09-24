<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');

extract($_REQUEST);

// Generate unique invoice ID
$uniqid = uniqid();
$rand_start = rand(1,5);
$rand_8_char = substr($uniqid,$rand_start,8);
$record_id = $rand_8_char; 	
$bill_id_update = "INV_" . $record_id;

// Calculate selling price
$kiraspread = $spread/100 * $harganew; 
$hargajual = $harganew - $kiraspread;

// Handle form submission
if(isset($save)){
    $jumlah = mysqli_real_escape_string($conn, $_REQUEST['jumlah']);	
    $pincode_check = mysqli_real_escape_string($conn, $_REQUEST['pincode_check']);				
    
    if($pincode_check == $pincode){						
        if($berat_saving >= $jumlah){	
            if($jumlah != ""){							
                $jumlah_hargajual = $jumlah * $hargajual;						
                
                $uniqid = uniqid();
                $rand_start = rand(1,5);
                $rand_8_char = substr($uniqid,$rand_start,8);
                $noinv = "INV-" . $rand_8_char; 
                
                $totalberat1 = $berat_saving - $jumlah; 
                
                if($jumlah >= 1){
                    $sql = "INSERT INTO saving (`noinvois`,`tarikh`, `masa`, `nokp`, `username`,`transaction`, `hargaemas`, `berat`, `jumlah`,`beratsemasa`,`status`,`bill_id`)
                    VALUES ('$noinv',CURDATE(), CURTIME(), '$nokp','$username','Sell','$hargajual','-$jumlah','$jumlah_hargajual','$totalberat1','PAID','$bill_id_update')";

                    if ($conn->query($sql) === TRUE) {
                        echo "<script>window.location.href='success_sell.php?noinvois=$noinv';</script>";
                    }
                } else {
                    $message = "Minimum 1 gm required!";
                }
            } else {
                $message = "Please enter amount!";
            }
        } else {
            $message = "Your current gold account only has " . $berat_saving . " gm!";
        }
    } else {
        $message = "Pincode does not match!";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Sell Gold - Lalal Gold">
    <meta name="keywords" content="sell gold, jewelry trading, precious metals">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Sell Gold - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        /* Sell Page Specific Styles */
        .sell-container {
            max-width: 480px;
            margin: 0 auto;
            padding: var(--spacing-lg);
        }
        
        .sell-header {
            background: var(--gradient-primary);
            color: var(--white);
            padding: var(--spacing-xl);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-xl);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .sell-header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, rgba(255, 215, 0, 0.1) 0%, rgba(255, 215, 0, 0.05) 100%);
            pointer-events: none;
        }
        
        .sell-header h1 {
            color: var(--white);
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: var(--spacing-sm);
            position: relative;
            z-index: 1;
        }
        
        .sell-header p {
            color: var(--gray-300);
            font-size: 0.875rem;
            margin: 0;
            position: relative;
            z-index: 1;
        }
        
        .sell-icon {
            width: 80px;
            height: 80px;
            background: var(--gradient-gold);
            border-radius: var(--radius-full);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-lg);
            box-shadow: var(--shadow-gold);
            position: relative;
            z-index: 1;
        }
        
        .sell-icon i {
            color: var(--primary-green);
            font-size: 2rem;
        }
        
        .account-summary {
            background: var(--white);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-lg);
            box-shadow: var(--shadow-md);
            border: 1px solid var(--gray-200);
        }
        
        .summary-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: var(--spacing-md);
        }
        
        .summary-item {
            text-align: center;
            padding: var(--spacing-md);
            background: var(--gray-50);
            border-radius: var(--radius-lg);
            border: 1px solid var(--gray-200);
        }
        
        .summary-label {
            font-size: 0.75rem;
            color: var(--gray-600);
            font-weight: 500;
            margin-bottom: var(--spacing-xs);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .summary-value {
            font-size: 1.25rem;
            font-weight: 700;
            color: var(--primary-green);
        }
        
        .sell-form {
            background: var(--white);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-lg);
            box-shadow: var(--shadow-md);
            border: 1px solid var(--gray-200);
        }
        
        .form-group {
            margin-bottom: var(--spacing-lg);
        }
        
        .form-label {
            display: block;
            font-size: 0.875rem;
            font-weight: 600;
            color: var(--primary-green);
            margin-bottom: var(--spacing-sm);
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
            box-shadow: 0 0 0 4px var(--accent-gold-subtle);
        }
        
        .form-input::placeholder {
            color: var(--gray-400);
        }
        
        .price-display {
            background: var(--gradient-gold);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            text-align: center;
            margin-bottom: var(--spacing-lg);
            color: var(--primary-green);
        }
        
        .price-label {
            font-size: 0.875rem;
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
            opacity: 0.9;
        }
        
        .price-value {
            font-size: 2rem;
            font-weight: 800;
            margin-bottom: var(--spacing-xs);
        }
        
        .price-note {
            font-size: 0.75rem;
            opacity: 0.8;
        }
        
        .purity-badge {
            display: inline-flex;
            align-items: center;
            gap: var(--spacing-xs);
            background: var(--primary-green);
            color: var(--white);
            padding: var(--spacing-sm) var(--spacing-md);
            border-radius: var(--radius-full);
            font-size: 0.875rem;
            font-weight: 600;
        }
        
        .purity-badge i {
            color: var(--accent-gold);
        }
        
        .total-section {
            background: var(--gradient-primary);
            color: var(--white);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            text-align: center;
            margin-bottom: var(--spacing-lg);
        }
        
        .total-label {
            font-size: 0.875rem;
            opacity: 0.9;
            margin-bottom: var(--spacing-xs);
        }
        
        .total-value {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-xs);
        }
        
        .total-note {
            font-size: 0.75rem;
            opacity: 0.8;
        }
        
        .error-message {
            background: var(--error);
            color: var(--white);
            padding: var(--spacing-md);
            border-radius: var(--radius-lg);
            margin-bottom: var(--spacing-lg);
            font-size: 0.875rem;
            text-align: center;
        }
        
        .sell-button {
            width: 100%;
            background: var(--gradient-gold);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            font-weight: 700;
            font-size: 1.125rem;
            cursor: pointer;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            box-shadow: var(--shadow-gold);
        }
        
        .sell-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(255, 215, 0, 0.4);
        }
        
        .sell-button:active {
            transform: translateY(0);
        }
        
        .sell-button:disabled {
            background: var(--gray-300);
            color: var(--gray-600);
            cursor: not-allowed;
            transform: none;
            box-shadow: none;
        }
        
        .security-note {
            background: var(--accent-gold-subtle);
            border: 1px solid var(--accent-gold);
            padding: var(--spacing-md);
            border-radius: var(--radius-lg);
            margin-bottom: var(--spacing-lg);
            text-align: center;
        }
        
        .security-note i {
            color: var(--accent-gold);
            margin-right: var(--spacing-xs);
        }
        
        .security-note span {
            font-size: 0.875rem;
            color: var(--primary-green);
            font-weight: 500;
        }
        
        /* Responsive Design */
        @media (max-width: 480px) {
            .sell-container {
                padding: var(--spacing-md);
            }
            
            .sell-header h1 {
                font-size: 1.75rem;
            }
            
            .summary-grid {
                grid-template-columns: 1fr;
            }
            
            .price-value {
                font-size: 1.75rem;
            }
            
            .total-value {
                font-size: 2rem;
            }
        }
        
        /* Animation */
        .animate-fade-in-up {
            animation: fadeInUp 0.6s ease-out;
        }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="luxury-container">
        <!-- Header -->
        <header class="luxury-header">
            <div class="luxury-navbar">
                <div class="luxury-logo">
                    <a href="index-luxury.php" style="text-decoration: none; color: inherit;">
                        <img src="icon/logo2.png" alt="Lalal Gold">
                        <h1>Lalal Gold</h1>
                    </a>
                </div>
                <div class="luxury-actions">
                    <a href="goldsaving_menu.php" class="luxury-icon-btn">
                        <i class="fas fa-arrow-left"></i>
                    </a>
                </div>
            </div>
        </header>

        <div class="sell-container">
            <!-- Sell Header -->
            <div class="sell-header animate-fade-in-up">
                <div class="sell-icon">
                    <i class="fas fa-coins"></i>
                </div>
                <h1>Sell Gold</h1>
                <p>Convert your gold savings to cash at current market rates</p>
            </div>

            <!-- Account Summary -->
            <div class="account-summary animate-fade-in-up">
                <div class="summary-grid">
                    <div class="summary-item">
                        <div class="summary-label">Available Gold</div>
                        <div class="summary-value"><?php echo number_format($berat_saving, 2); ?> gm</div>
                    </div>
                    <div class="summary-item">
                        <div class="summary-label">Current Price</div>
                        <div class="summary-value">RM <?php echo number_format($hargajual, 2); ?></div>
                    </div>
                </div>
            </div>

            <!-- Sell Form -->
            <form method="post" class="sell-form animate-fade-in-up">
                <!-- Price Display -->
                <div class="price-display">
                    <div class="price-label">Selling Price per Gram</div>
                    <div class="price-value">RM <?php echo number_format($hargajual, 2); ?></div>
                    <div class="price-note">Based on current market rates</div>
                    <div class="purity-badge">
                        <i class="fas fa-gem"></i>
                        916 Purity
                    </div>
                </div>

                <!-- Amount Input -->
                <div class="form-group">
                    <label class="form-label">Amount to Sell (grams)</label>
                    <input type="number" 
                           id="jumlah" 
                           name="jumlah" 
                           class="form-input" 
                           placeholder="Enter amount in grams"
                           step="0.01" 
                           min="0.01" 
                           max="<?php echo $berat_saving; ?>"
                           oninput="calculateTotal(this.value)" 
                           onchange="calculateTotal(this.value)"
                           required>
                    <small style="color: var(--gray-500); font-size: 0.75rem; margin-top: var(--spacing-xs); display: block;">
                        Maximum: <?php echo number_format($berat_saving, 2); ?> gm
                    </small>
                </div>

                <!-- Security Note -->
                <div class="security-note">
                    <i class="fas fa-shield-alt"></i>
                    <span>Secure transaction with PIN verification</span>
                </div>

                <!-- PIN Input -->
                <div class="form-group">
                    <label class="form-label">Security PIN</label>
                    <input type="password" 
                           name="pincode_check" 
                           id="pincode_check" 
                           class="form-input" 
                           placeholder="Enter your 6-digit PIN"
                           maxlength="6" 
                           pattern="\d{6}" 
                           title="Please enter a 6-digit number" 
                           required>
                </div>

                <!-- Error Message -->
                <?php if(isset($message)): ?>
                <div class="error-message">
                    <i class="fas fa-exclamation-triangle"></i>
                    <?php echo htmlspecialchars($message); ?>
                </div>
                <?php endif; ?>

                <!-- Total Section -->
                <div class="total-section">
                    <div class="total-label">Total Cash Value</div>
                    <div class="total-value">RM <span id="total_value">0.00</span></div>
                    <div class="total-note">You will receive this amount in cash</div>
                </div>

                <!-- Sell Button -->
                <button type="submit" name="save" class="sell-button" id="sellButton" disabled>
                    <i class="fas fa-coins"></i>
                    Sell Gold Now
                </button>
            </form>
        </div>

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
                <a href="profile-luxury.php" class="luxury-nav-item">
                    <i class="fas fa-user luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Profile</span>
                </a>
            </div>
        </nav>
    </div>

    <script>
        function calculateTotal(amount) {
            const price = <?php echo $hargajual; ?>;
            const total = (amount * price).toFixed(2);
            document.getElementById('total_value').textContent = total;
            
            // Enable/disable sell button
            const sellButton = document.getElementById('sellButton');
            const maxAmount = <?php echo $berat_saving; ?>;
            
            if (amount > 0 && amount <= maxAmount) {
                sellButton.disabled = false;
            } else {
                sellButton.disabled = true;
            }
        }
        
        // Initialize on page load
        document.addEventListener('DOMContentLoaded', function() {
            calculateTotal(0);
        });
        
        // Add animation to form elements
        document.addEventListener('DOMContentLoaded', function() {
            const formElements = document.querySelectorAll('.form-group, .price-display, .total-section');
            formElements.forEach((element, index) => {
                element.style.animationDelay = `${index * 0.1}s`;
                element.classList.add('animate-fade-in-up');
            });
        });
    </script>
</body>
</html>