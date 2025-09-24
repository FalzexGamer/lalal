<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');

date_default_timezone_set("Asia/Kuala_Lumpur");
extract($_REQUEST);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Gold Wallet - Lalal Gold">
    <meta name="keywords" content="gold wallet, digital gold, buy sell gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Gold Wallet - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .gold-wallet-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .wallet-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .wallet-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .hero-section {
            text-align: center;
            padding: var(--spacing-xl);
            position: relative;
        }
        
        .hero-icon {
            width: 120px;
            height: 120px;
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-lg);
            box-shadow: 0 10px 40px rgba(255, 215, 0, 0.3);
        }
        
        .hero-icon i {
            font-size: 3rem;
            color: var(--primary-green);
        }
        
        .hero-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: var(--spacing-md);
            text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .hero-subtitle {
            color: var(--gray-300);
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: var(--spacing-lg);
        }
        
        .wallet-balance-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin: var(--spacing-lg);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .wallet-balance-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 2px;
            background: linear-gradient(90deg, var(--accent-gold) 0%, #ffed4e 50%, var(--accent-gold) 100%);
            animation: shimmer 2s infinite;
        }
        
        @keyframes shimmer {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        
        .balance-label {
            color: var(--gray-300);
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: var(--spacing-sm);
        }
        
        .balance-amount {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 2.5rem;
            margin-bottom: var(--spacing-xs);
        }
        
        .balance-unit {
            color: var(--gray-400);
            font-size: 1rem;
            font-weight: 500;
        }
        
        .action-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: var(--spacing-md);
            padding: 0 var(--spacing-lg);
            margin-bottom: var(--spacing-xl);
        }
        
        .action-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            text-align: center;
            transition: var(--transition-normal);
            text-decoration: none;
            color: inherit;
        }
        
        .action-card:hover {
            border-color: var(--accent-gold);
            transform: translateY(-4px);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.2);
            color: inherit;
            text-decoration: none;
        }
        
        .action-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-md);
            transition: var(--transition-normal);
        }
        
        .action-card:hover .action-icon {
            transform: scale(1.1);
        }
        
        .action-icon i {
            font-size: 1.5rem;
            color: var(--primary-green);
        }
        
        .action-title {
            color: var(--accent-gold);
            font-weight: 600;
            font-size: 1rem;
            margin-bottom: var(--spacing-xs);
        }
        
        .action-description {
            color: var(--gray-300);
            font-size: 0.8rem;
            line-height: 1.4;
        }
        
        .registration-section {
            padding: var(--spacing-lg);
        }
        
        .registration-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-md);
        }
        
        .registration-btn {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-md) var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 600;
            font-size: 0.9rem;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            text-decoration: none;
        }
        
        .registration-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(255, 215, 0, 0.3);
            color: var(--primary-green);
            text-decoration: none;
        }
        
        .terms-section {
            padding: var(--spacing-lg);
        }
        
        .terms-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
        }
        
        .terms-title {
            color: var(--accent-gold);
            font-weight: 600;
            font-size: 1.3rem;
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .terms-list {
            color: var(--gray-300);
            line-height: 1.6;
        }
        
        .terms-list li {
            margin-bottom: var(--spacing-md);
        }
        
        .terms-list strong {
            color: var(--accent-gold);
            font-weight: 600;
        }
        
        .terms-list ul {
            margin-top: var(--spacing-sm);
            padding-left: var(--spacing-lg);
        }
        
        .terms-list ul li {
            margin-bottom: var(--spacing-xs);
            color: var(--gray-400);
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 1.5rem;
            }
            
            .hero-icon {
                width: 100px;
                height: 100px;
            }
            
            .hero-icon i {
                font-size: 2.5rem;
            }
            
            .action-grid {
                grid-template-columns: 1fr;
                gap: var(--spacing-sm);
            }
            
            .balance-amount {
                font-size: 2rem;
            }
        }
    </style>
</head>

<body>
    <div class="gold-wallet-container">
        <!-- Header -->
        <header class="wallet-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="index-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="wallet-title">Gold Wallet</h1>
                </div>
                <div class="wallet-icon">
                    <i class="fas fa-wallet" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <div class="hero-section">
            <div class="hero-icon">
                <i class="fas fa-coins"></i>
            </div>
            <h2 class="hero-title">Digital Gold Wallet</h2>
            <p class="hero-subtitle">
                Secure, transparent, and convenient way to buy, sell, and manage your digital gold investments
            </p>
        </div>

        <!-- Wallet Balance -->
        <div class="wallet-balance-card">
            <div class="balance-label">Current Balance</div>
            <div class="balance-amount"><?php echo number_format($beratpoint, 2); ?></div>
            <div class="balance-unit">Grams of Gold</div>
        </div>

        <!-- Action Grid -->
        <div class="action-grid">
            <a href="goldsaving.php" class="action-card">
                <div class="action-icon">
                    <i class="fas fa-plus"></i>
                </div>
                <div class="action-title">Buy Gold</div>
                <div class="action-description">Purchase digital gold starting from RM10</div>
            </a>
            
            <a href="sell.php" class="action-card">
                <div class="action-icon">
                    <i class="fas fa-minus"></i>
                </div>
                <div class="action-title">Sell Gold</div>
                <div class="action-description">Convert your gold to cash instantly</div>
            </a>
            
            <a href="transaction.php" class="action-card">
                <div class="action-icon">
                    <i class="fas fa-history"></i>
                </div>
                <div class="action-title">Transactions</div>
                <div class="action-description">View your complete transaction history</div>
            </a>
        </div>

        <!-- Registration Section -->
        <div class="registration-section">
            <?php if($email=="-"){ ?>
            <div class="registration-card">
                <a href="profile.php" class="registration-btn">
                    <i class="fas fa-envelope"></i>
                    Please Register E-Mail
                </a>
            </div>
            <?php } ?>
            
            <?php if($pincode=="-"){ ?>
            <div class="registration-card">
                <a href="register_pincode.php" class="registration-btn">
                    <i class="fas fa-map-marker-alt"></i>
                    Register Pin Code
                </a>
            </div>
            <?php } ?>
        </div>

        <!-- Terms Section -->
        <div class="terms-section">
            <div class="terms-card">
                <h3 class="terms-title">
                    <i class="fas fa-file-contract"></i>
                    Terms and Conditions
                </h3>
                <div class="terms-list">
                    <ul>
                        <li>
                            <strong>Eligibility</strong>
                            <ul>
                                <li>Must be at least 18 years old (or legal age as per local regulations).</li>
                                <li>A valid government-issued ID is required for account verification.</li>
                            </ul>
                        </li>
                        <li>
                            <strong>Minimum Purchase Amount</strong>
                            <ul>
                                <li>The minimum purchase starts at RM10 (or equivalent in local currency).</li>
                            </ul>
                        </li>
                        <li>
                            <strong>Security</strong>
                            <ul>
                                <li>All transactions are secured with bank-level encryption.</li>
                                <li>Your gold is stored in secure vaults and fully insured.</li>
                            </ul>
                        </li>
                        <li>
                            <strong>Transparency</strong>
                            <ul>
                                <li>Real-time gold prices updated every minute.</li>
                                <li>No hidden fees or charges on transactions.</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const cards = document.querySelectorAll('.action-card, .registration-card, .terms-card');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
                card.classList.add('animate-fade-in-up');
            });
            
            // Animate hero section
            const heroSection = document.querySelector('.hero-section');
            heroSection.classList.add('animate-fade-in-up');
            
            // Animate balance card
            const balanceCard = document.querySelector('.wallet-balance-card');
            balanceCard.classList.add('animate-fade-in-up');
        });
        
        // Add hover effects
        document.querySelectorAll('.action-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-4px) scale(1.02)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1)';
            });
        });
    </script>
</body>
</html>