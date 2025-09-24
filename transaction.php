<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');

$tarikhhariini = date("Y-m-d"); 
$year = date("Y");

// Fetch transaction data
$query = mysqli_query($conn, "SELECT * FROM saving WHERE nokp='$nokp' AND status='PAID' ORDER BY recno DESC");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Transaction History - Lalal Gold">
    <meta name="keywords" content="gold transactions, jewelry history, precious metals">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Transaction History - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        /* Transaction Page Specific Styles */
        .transaction-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: var(--spacing-lg);
        }
        
        .transaction-header {
            background: var(--gradient-primary);
            color: var(--white);
            padding: var(--spacing-xl);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-xl);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .transaction-header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, rgba(255, 215, 0, 0.1) 0%, rgba(255, 215, 0, 0.05) 100%);
            pointer-events: none;
        }
        
        .transaction-header h1 {
            color: var(--white);
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: var(--spacing-sm);
            position: relative;
            z-index: 1;
        }
        
        .transaction-header p {
            color: var(--gray-300);
            font-size: 1rem;
            margin: 0;
            position: relative;
            z-index: 1;
        }
        
        .transaction-stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: var(--spacing-lg);
            margin-bottom: var(--spacing-xl);
        }
        
        .stat-card {
            background: var(--white);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
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
            width: 60px;
            height: 60px;
            background: var(--gradient-gold);
            border-radius: var(--radius-full);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-md);
            box-shadow: var(--shadow-gold);
        }
        
        .stat-icon i {
            color: var(--primary-green);
            font-size: 1.5rem;
        }
        
        .stat-value {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary-green);
            margin-bottom: var(--spacing-xs);
        }
        
        .stat-label {
            font-size: 0.875rem;
            color: var(--gray-600);
            font-weight: 500;
        }
        
        .transaction-filters {
            background: var(--white);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-lg);
            box-shadow: var(--shadow-md);
            border: 1px solid var(--gray-200);
        }
        
        .filter-row {
            display: flex;
            gap: var(--spacing-md);
            align-items: center;
            flex-wrap: wrap;
        }
        
        .search-box {
            flex: 1;
            min-width: 250px;
            position: relative;
        }
        
        .search-box input {
            width: 100%;
            padding: var(--spacing-md) var(--spacing-lg);
            padding-left: 3rem;
            border: 2px solid var(--gray-200);
            border-radius: var(--radius-lg);
            font-size: 1rem;
            transition: var(--transition-normal);
            background: var(--white);
        }
        
        .search-box input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 0 4px var(--accent-gold-subtle);
        }
        
        .search-box i {
            position: absolute;
            left: var(--spacing-md);
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-400);
            font-size: 1.125rem;
        }
        
        .filter-btn {
            background: var(--gradient-gold);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-md) var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 600;
            font-size: 0.875rem;
            cursor: pointer;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .filter-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-gold);
        }
        
        .transaction-table {
            background: var(--white);
            border-radius: var(--radius-xl);
            overflow: hidden;
            box-shadow: var(--shadow-lg);
            border: 1px solid var(--gray-200);
        }
        
        .table-header {
            background: var(--gradient-primary);
            color: var(--white);
            padding: var(--spacing-lg);
        }
        
        .table-header h3 {
            color: var(--white);
            margin: 0;
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .table-header h3 i {
            color: var(--accent-gold);
        }
        
        .transaction-list {
            max-height: 600px;
            overflow-y: auto;
        }
        
        .transaction-item {
            display: flex;
            align-items: center;
            padding: var(--spacing-lg);
            border-bottom: 1px solid var(--gray-200);
            transition: var(--transition-normal);
            cursor: pointer;
        }
        
        .transaction-item:hover {
            background: var(--gray-50);
        }
        
        .transaction-item:last-child {
            border-bottom: none;
        }
        
        .transaction-icon {
            width: 50px;
            height: 50px;
            border-radius: var(--radius-full);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: var(--spacing-md);
            flex-shrink: 0;
        }
        
        .transaction-icon.purchase {
            background: linear-gradient(135deg, var(--success) 0%, #059669 100%);
            color: var(--white);
        }
        
        .transaction-icon.redeem {
            background: linear-gradient(135deg, var(--error) 0%, #DC2626 100%);
            color: var(--white);
        }
        
        .transaction-icon.wallet {
            background: linear-gradient(135deg, var(--info) 0%, #2563EB 100%);
            color: var(--white);
        }
        
        .transaction-icon.sell {
            background: linear-gradient(135deg, var(--warning) 0%, #D97706 100%);
            color: var(--white);
        }
        
        .transaction-icon.points {
            background: linear-gradient(135deg, var(--accent-gold) 0%, var(--accent-gold-dark) 100%);
            color: var(--primary-green);
        }
        
        .transaction-icon.deduction {
            background: linear-gradient(135deg, var(--gray-600) 0%, var(--gray-700) 100%);
            color: var(--white);
        }
        
        .transaction-details {
            flex: 1;
            min-width: 0;
        }
        
        .transaction-title {
            font-weight: 600;
            color: var(--primary-green);
            margin-bottom: var(--spacing-xs);
            font-size: 1rem;
        }
        
        .transaction-date {
            font-size: 0.875rem;
            color: var(--gray-600);
            margin-bottom: var(--spacing-xs);
        }
        
        .transaction-amount {
            font-weight: 700;
            font-size: 1.125rem;
        }
        
        .transaction-amount.positive {
            color: var(--success);
        }
        
        .transaction-amount.negative {
            color: var(--error);
        }
        
        .transaction-amount.neutral {
            color: var(--gray-700);
        }
        
        .transaction-balance {
            text-align: right;
            flex-shrink: 0;
        }
        
        .balance-label {
            font-size: 0.75rem;
            color: var(--gray-500);
            margin-bottom: var(--spacing-xs);
        }
        
        .balance-value {
            font-weight: 700;
            color: var(--primary-green);
            font-size: 1.125rem;
        }
        
        .empty-state {
            text-align: center;
            padding: var(--spacing-2xl);
            color: var(--gray-500);
        }
        
        .empty-state i {
            font-size: 4rem;
            color: var(--gray-300);
            margin-bottom: var(--spacing-lg);
        }
        
        .empty-state h3 {
            color: var(--gray-600);
            margin-bottom: var(--spacing-sm);
        }
        
        .empty-state p {
            color: var(--gray-500);
            margin-bottom: var(--spacing-lg);
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            .transaction-container {
                padding: var(--spacing-md);
            }
            
            .transaction-header h1 {
                font-size: 2rem;
            }
            
            .transaction-stats {
                grid-template-columns: 1fr;
            }
            
            .filter-row {
                flex-direction: column;
                align-items: stretch;
            }
            
            .search-box {
                min-width: auto;
            }
            
            .transaction-item {
                flex-direction: column;
                align-items: flex-start;
                gap: var(--spacing-md);
            }
            
            .transaction-icon {
                margin-right: 0;
            }
            
            .transaction-balance {
                text-align: left;
                width: 100%;
            }
        }
        
        /* Custom Scrollbar */
        .transaction-list::-webkit-scrollbar {
            width: 6px;
        }
        
        .transaction-list::-webkit-scrollbar-track {
            background: var(--gray-100);
        }
        
        .transaction-list::-webkit-scrollbar-thumb {
            background: var(--accent-gold);
            border-radius: var(--radius-full);
        }
        
        .transaction-list::-webkit-scrollbar-thumb:hover {
            background: var(--accent-gold-dark);
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
                    <a href="cart.php" class="luxury-icon-btn">
                        <i class="fas fa-shopping-cart"></i>
                    </a>
                    <a href="notifications.html" class="luxury-icon-btn">
                        <i class="fas fa-bell"></i>
                    </a>
                </div>
            </div>
        </header>

        <div class="transaction-container">
            <!-- Transaction Header -->
            <div class="transaction-header">
                <h1><i class="fas fa-history"></i> Transaction History</h1>
                <p>Track your gold investment journey with detailed transaction records</p>
            </div>

            <!-- Transaction Statistics -->
            <div class="transaction-stats">
                <div class="stat-card">
                    <div class="stat-icon">
                        <i class="fas fa-coins"></i>
                    </div>
                    <div class="stat-value"><?php echo mysqli_num_rows($query); ?></div>
                    <div class="stat-label">Total Transactions</div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon">
                        <i class="fas fa-weight-scale"></i>
                    </div>
                    <div class="stat-value"><?php 
                        $total_weight = 0;
                        $weight_query = mysqli_query($conn, "SELECT SUM(berat) as total FROM saving WHERE nokp='$nokp' AND status='PAID' AND transaction='Purchase'");
                        $weight_result = mysqli_fetch_array($weight_query);
                        echo number_format($weight_result['total'], 2);
                    ?> gm</div>
                    <div class="stat-label">Total Gold Weight</div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <div class="stat-value"><?php echo $year; ?></div>
                    <div class="stat-label">Investment Year</div>
                </div>
            </div>

            <!-- Transaction Filters -->
            <div class="transaction-filters">
                <div class="filter-row">
                    <div class="search-box">
                        <i class="fas fa-search"></i>
                        <input type="text" id="searchInput" placeholder="Search transactions..." onkeyup="filterTransactions()">
                    </div>
                    <button class="filter-btn" onclick="exportTransactions()">
                        <i class="fas fa-download"></i>
                        Export
                    </button>
                </div>
            </div>

            <!-- Transaction Table -->
            <div class="transaction-table">
                <div class="table-header">
                    <h3><i class="fas fa-list"></i> Recent Transactions</h3>
                </div>
                
                <div class="transaction-list">
                    <?php if (mysqli_num_rows($query) > 0): ?>
                        <?php while ($res = mysqli_fetch_array($query)): 
                            $recno = $res['recno'];
                            $noinvois = $res['noinvois'];
                            $tarikh = $res['tarikh'];
                            $masa = $res['masa'];
                            $tarikh1 = date('d-m-Y', strtotime($tarikh));
                            $hargaemas = $res['hargaemas'];
                            $transaction = $res['transaction'];
                            $berat = $res['berat'];
                            $beratsemasa = $res['beratsemasa'];
                            $jumlah = $res['jumlah'];
                            
                            // Determine transaction type for styling
                            $transaction_class = '';
                            $icon_class = '';
                            $amount_class = '';
                            
                            switch($transaction) {
                                case 'Purchase':
                                    $transaction_class = 'purchase';
                                    $icon_class = 'fas fa-plus';
                                    $amount_class = 'positive';
                                    break;
                                case 'Redeem Gold Saving':
                                    $transaction_class = 'redeem';
                                    $icon_class = 'fas fa-minus';
                                    $amount_class = 'negative';
                                    break;
                                case 'Wallet':
                                    $transaction_class = 'wallet';
                                    $icon_class = 'fas fa-wallet';
                                    $amount_class = 'neutral';
                                    break;
                                case 'Sell':
                                    $transaction_class = 'sell';
                                    $icon_class = 'fas fa-shopping-cart';
                                    $amount_class = 'negative';
                                    break;
                                case 'Points':
                                    $transaction_class = 'points';
                                    $icon_class = 'fas fa-star';
                                    $amount_class = 'positive';
                                    break;
                                case 'Gold Saving Deduction':
                                    $transaction_class = 'deduction';
                                    $icon_class = 'fas fa-minus-circle';
                                    $amount_class = 'negative';
                                    break;
                            }
                        ?>
                        <div class="transaction-item" data-transaction="<?php echo strtolower($transaction); ?>">
                            <div class="transaction-icon <?php echo $transaction_class; ?>">
                                <i class="<?php echo $icon_class; ?>"></i>
                            </div>
                            
                            <div class="transaction-details">
                                <div class="transaction-title"><?php echo htmlspecialchars($transaction); ?></div>
                                <div class="transaction-date"><?php echo $tarikh1; ?> at <?php echo $masa; ?></div>
                                <div class="transaction-amount <?php echo $amount_class; ?>">
                                    <?php if ($transaction == 'Purchase'): ?>
                                        +<?php echo $berat; ?> gm
                                    <?php elseif ($transaction == 'Redeem Gold Saving'): ?>
                                        -<?php echo $berat; ?> gm
                                    <?php elseif ($transaction == 'Wallet' || $transaction == 'Sell'): ?>
                                        RM <?php echo number_format($jumlah, 2); ?>
                                    <?php elseif ($transaction == 'Points'): ?>
                                        +<?php echo $berat; ?> gm
                                    <?php elseif ($transaction == 'Gold Saving Deduction'): ?>
                                        -<?php echo $berat; ?> gm
                                    <?php endif; ?>
                                </div>
                            </div>
                            
                            <div class="transaction-balance">
                                <div class="balance-label">Current Balance</div>
                                <div class="balance-value"><?php echo $beratsemasa; ?> gm</div>
                            </div>
                        </div>
                        <?php endwhile; ?>
                    <?php else: ?>
                        <div class="empty-state">
                            <i class="fas fa-inbox"></i>
                            <h3>No Transactions Found</h3>
                            <p>Start your gold investment journey to see your transaction history here</p>
                            <a href="products-luxury.php" class="luxury-btn">
                                <i class="fas fa-shopping-bag"></i>
                                Start Investing
                            </a>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
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
                <a href="transaction.php" class="luxury-nav-item active">
                    <i class="fas fa-history luxury-nav-icon"></i>
                    <span class="luxury-nav-label">History</span>
                </a>
            </div>
        </nav>
    </div>

    <script>
        function filterTransactions() {
            const input = document.getElementById('searchInput');
            const filter = input.value.toLowerCase();
            const items = document.querySelectorAll('.transaction-item');
            
            items.forEach(item => {
                const title = item.querySelector('.transaction-title').textContent.toLowerCase();
                const date = item.querySelector('.transaction-date').textContent.toLowerCase();
                const amount = item.querySelector('.transaction-amount').textContent.toLowerCase();
                
                if (title.includes(filter) || date.includes(filter) || amount.includes(filter)) {
                    item.style.display = 'flex';
                } else {
                    item.style.display = 'none';
                }
            });
        }
        
        function exportTransactions() {
            // Implement export functionality
            alert('Export feature coming soon!');
        }
        
        // Add animation to transaction items
        document.addEventListener('DOMContentLoaded', function() {
            const items = document.querySelectorAll('.transaction-item');
            items.forEach((item, index) => {
                item.style.animationDelay = `${index * 0.1}s`;
                item.classList.add('animate-fade-in-up');
            });
        });
    </script>
</body>
</html>