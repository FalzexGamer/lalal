<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');
extract($_REQUEST);

// Get user points data
$query = mysqli_query($conn, "SELECT * FROM saving WHERE username='$username' AND status='PAID' AND transaction='Points' ORDER BY tarikh DESC");
$points_transactions = [];
$total_points = 0;

while($res = mysqli_fetch_array($query)) {
    $tarikh = $res['tarikh'];
    $noresit = $res['noinvois'];
    $jenisbayaran = $res['transaction'];
    $berat = $res['berat'];
    $tarikh2 = date('d-m-Y', strtotime($tarikh));
    
    $total_points += $berat;
    
    $points_transactions[] = [
        'tarikh' => $tarikh2,
        'noresit' => $noresit,
        'berat' => $berat
    ];
}

// Get current balance
$current_balance = $bilpoint;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Your Gold Points - Lalal Gold">
    <meta name="keywords" content="gold points, loyalty rewards, premium gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Your Gold Points - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .points-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .points-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .points-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .points-balance-card {
            background: linear-gradient(135deg, rgba(255, 215, 0, 0.1) 0%, rgba(255, 215, 0, 0.05) 100%);
            backdrop-filter: blur(20px);
            border: 2px solid var(--accent-gold);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin: var(--spacing-lg);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .points-balance-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, transparent 30%, rgba(255, 215, 0, 0.1) 50%, transparent 70%);
            animation: shimmer 3s infinite;
        }
        
        @keyframes shimmer {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        
        .balance-label {
            color: var(--gray-300);
            font-size: 0.9rem;
            font-weight: 500;
            margin-bottom: var(--spacing-sm);
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .balance-amount {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 800;
            font-size: 3rem;
            margin-bottom: var(--spacing-sm);
            text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .balance-unit {
            color: var(--accent-gold);
            font-size: 1.2rem;
            font-weight: 600;
            opacity: 0.8;
        }
        
        .search-section {
            padding: var(--spacing-lg);
            padding-top: 0;
        }
        
        .search-input {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-full);
            padding: var(--spacing-md) var(--spacing-lg);
            color: var(--accent-gold);
            font-size: 0.9rem;
            width: 100%;
            backdrop-filter: blur(10px);
        }
        
        .search-input::placeholder {
            color: var(--gray-400);
        }
        
        .search-input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 20px rgba(255, 215, 0, 0.2);
        }
        
        .transactions-section {
            padding: var(--spacing-lg);
            padding-top: 0;
        }
        
        .section-title {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-lg);
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .transaction-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-md);
            transition: var(--transition-normal);
        }
        
        .transaction-card:hover {
            border-color: var(--accent-gold);
            transform: translateY(-2px);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.1);
        }
        
        .transaction-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: var(--spacing-md);
        }
        
        .outlet-info h6 {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
            font-size: 1rem;
        }
        
        .receipt-number {
            color: var(--gray-300);
            font-size: 0.9rem;
            font-weight: 500;
        }
        
        .points-badge {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-sm) var(--spacing-md);
            border-radius: var(--radius-full);
            font-weight: 700;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .transaction-date {
            color: var(--gray-400);
            font-size: 0.85rem;
            font-weight: 500;
        }
        
        .empty-state {
            text-align: center;
            padding: var(--spacing-2xl);
            color: var(--gray-300);
        }
        
        .empty-state i {
            font-size: 4rem;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-lg);
            opacity: 0.5;
        }
        
        .empty-state h3 {
            color: var(--accent-gold);
            margin-bottom: var(--spacing-md);
            font-weight: 600;
        }
        
        .empty-state p {
            color: var(--gray-400);
            margin-bottom: var(--spacing-lg);
        }
        
        .earn-points-btn {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-md) var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 600;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: var(--spacing-sm);
            transition: var(--transition-normal);
        }
        
        .earn-points-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
            color: var(--primary-green);
        }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: var(--spacing-md);
            margin: var(--spacing-lg);
            margin-top: 0;
        }
        
        .stat-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            text-align: center;
            transition: var(--transition-normal);
        }
        
        .stat-card:hover {
            border-color: var(--accent-gold);
            transform: translateY(-2px);
        }
        
        .stat-icon {
            color: var(--accent-gold);
            font-size: 1.5rem;
            margin-bottom: var(--spacing-sm);
        }
        
        .stat-value {
            color: var(--accent-gold);
            font-weight: 700;
            font-size: 1.2rem;
            margin-bottom: var(--spacing-xs);
        }
        
        .stat-label {
            color: var(--gray-300);
            font-size: 0.8rem;
            font-weight: 500;
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .points-balance-card {
                margin: var(--spacing-md);
                padding: var(--spacing-lg);
            }
            
            .balance-amount {
                font-size: 2.5rem;
            }
            
            .stats-grid {
                grid-template-columns: repeat(2, 1fr);
                margin: var(--spacing-md);
            }
        }
    </style>
</head>

<body>
    <div class="points-container">
        <!-- Header -->
        <header class="points-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="index-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="points-title">My Gold Points</h1>
                </div>
                <div class="points-icon">
                    <i class="fas fa-coins" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Points Balance Card -->
        <div class="points-balance-card">
            <div class="balance-label">Current Balance</div>
            <div class="balance-amount"><?php echo number_format($current_balance, 2); ?></div>
            <div class="balance-unit">Gold Points</div>
        </div>

        <!-- Statistics Grid -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-gem"></i>
                </div>
                <div class="stat-value"><?php echo count($points_transactions); ?></div>
                <div class="stat-label">Transactions</div>
            </div>
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-chart-line"></i>
                </div>
                <div class="stat-value"><?php echo number_format($total_points, 2); ?></div>
                <div class="stat-label">Total Earned</div>
            </div>
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-calendar-alt"></i>
                </div>
                <div class="stat-value"><?php echo date('M Y'); ?></div>
                <div class="stat-label">This Month</div>
            </div>
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-trophy"></i>
                </div>
                <div class="stat-value">Gold</div>
                <div class="stat-label">Member Level</div>
            </div>
        </div>

        <!-- Search Section -->
        <div class="search-section">
            <input type="text" class="search-input" placeholder="Search by receipt number..." id="searchInput">
        </div>

        <!-- Transactions Section -->
        <div class="transactions-section">
            <h5 class="section-title">
                <i class="fas fa-history"></i>
                Transaction History
            </h5>
            
            <?php if (empty($points_transactions)): ?>
            <!-- Empty State -->
            <div class="empty-state">
                <i class="fas fa-coins"></i>
                <h3>No Points Yet</h3>
                <p>Start shopping to earn gold points and unlock exclusive rewards</p>
                <a href="products-luxury.php" class="earn-points-btn">
                    <i class="fas fa-shopping-bag"></i>
                    Start Shopping
                </a>
            </div>
            <?php else: ?>
            
            <!-- Transaction Cards -->
            <?php foreach ($points_transactions as $transaction): ?>
            <div class="transaction-card">
                <div class="transaction-header">
                    <div class="outlet-info">
                        <h6>Lalal Gold</h6>
                        <div class="receipt-number">Receipt: <?php echo htmlspecialchars($transaction['noresit']); ?></div>
                    </div>
                    <div class="points-badge">
                        <?php echo $transaction['berat']; ?> gm
                    </div>
                </div>
                <div class="transaction-date">
                    <i class="fas fa-calendar"></i>
                    <?php echo $transaction['tarikh']; ?>
                </div>
            </div>
            <?php endforeach; ?>
            <?php endif; ?>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Search functionality
        document.getElementById('searchInput').addEventListener('input', function() {
            const searchTerm = this.value.toLowerCase();
            const transactionCards = document.querySelectorAll('.transaction-card');
            
            transactionCards.forEach(card => {
                const receiptNumber = card.querySelector('.receipt-number').textContent.toLowerCase();
                if (receiptNumber.includes(searchTerm)) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        });
        
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const cards = document.querySelectorAll('.transaction-card, .stat-card');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
                card.classList.add('animate-fade-in-up');
            });
            
            // Animate balance card
            const balanceCard = document.querySelector('.points-balance-card');
            balanceCard.classList.add('animate-fade-in-up');
        });
        
        // Add hover effects
        document.querySelectorAll('.transaction-card').forEach(card => {
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