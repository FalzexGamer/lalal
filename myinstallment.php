<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
extract($_REQUEST);

// Fetch gold selling/installment records for the current user
$installments = [];
if (isset($nokp) && !empty($nokp)) {
    $query = mysqli_query($conn, "SELECT * FROM emasjualmz WHERE nokpansur = '$nokp' ORDER BY tarikhansur DESC");
    while ($res = mysqli_fetch_array($query)) {
        $installments[] = $res;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="My Gold Installment Records - Lalal Gold">
    <meta name="keywords" content="gold installment, gold selling, payment records, lalal gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>My Gold Installments - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .my-installments-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .my-installments-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .my-installments-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .my-installments-content {
            padding: var(--spacing-lg);
        }
        
        .search-section {
            margin-bottom: var(--spacing-lg);
        }
        
        .luxury-search {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-xl);
            padding: var(--spacing-md);
            display: flex;
            align-items: center;
            gap: var(--spacing-md);
        }
        
        .luxury-search i {
            color: var(--accent-gold);
            font-size: 1.2rem;
        }
        
        .luxury-search input {
            background: transparent;
            border: none;
            color: var(--accent-gold);
            font-size: 1rem;
            width: 100%;
            outline: none;
        }
        
        .luxury-search input::placeholder {
            color: var(--gray-400);
        }
        
        .installment-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-lg);
            overflow: hidden;
            position: relative;
        }
        
        .installment-card::before {
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
        
        .installment-header {
            padding: var(--spacing-lg);
            border-bottom: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .installment-info {
            display: flex;
            align-items: flex-start;
            gap: var(--spacing-lg);
        }
        
        .installment-icon {
            width: 80px;
            height: 80px;
            border-radius: var(--radius-lg);
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.3);
        }
        
        .installment-icon i {
            font-size: 2rem;
            color: var(--primary-green);
        }
        
        .installment-details {
            flex: 1;
        }
        
        .installment-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            font-size: 1.2rem;
            margin-bottom: var(--spacing-sm);
        }
        
        .installment-description {
            color: var(--gray-300);
            font-size: 0.9rem;
            line-height: 1.5;
            margin-bottom: var(--spacing-sm);
        }
        
        .installment-specs {
            display: flex;
            gap: var(--spacing-md);
            margin-bottom: var(--spacing-sm);
            flex-wrap: wrap;
        }
        
        .installment-spec {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-md);
            padding: var(--spacing-sm) var(--spacing-md);
            color: var(--accent-gold);
            font-size: 0.8rem;
            font-weight: 500;
        }
        
        .installment-status {
            position: absolute;
            top: var(--spacing-lg);
            right: var(--spacing-lg);
        }
        
        .status-badge {
            padding: var(--spacing-sm) var(--spacing-md);
            border-radius: var(--radius-lg);
            font-size: 0.8rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .status-paid {
            background: rgba(76, 175, 80, 0.2);
            color: #4caf50;
            border: 1px solid rgba(76, 175, 80, 0.3);
        }
        
        .status-pending {
            background: rgba(255, 193, 7, 0.2);
            color: #ffc107;
            border: 1px solid rgba(255, 193, 7, 0.3);
        }
        
        .status-partial {
            background: rgba(255, 152, 0, 0.2);
            color: #ff9800;
            border: 1px solid rgba(255, 152, 0, 0.3);
        }
        
        .status-overdue {
            background: rgba(244, 67, 54, 0.2);
            color: #f44336;
            border: 1px solid rgba(244, 67, 54, 0.3);
        }
        
        .installment-body {
            padding: var(--spacing-lg);
        }
        
        .installment-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: var(--spacing-lg);
            padding-bottom: var(--spacing-lg);
            border-bottom: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .installment-date {
            color: var(--gray-400);
            font-size: 0.9rem;
        }
        
        .installment-amount {
            color: var(--accent-gold);
            font-weight: 700;
            font-size: 1.1rem;
        }
        
        .installment-progress {
            margin-bottom: var(--spacing-lg);
        }
        
        .progress-label {
            display: flex;
            justify-content: space-between;
            margin-bottom: var(--spacing-sm);
            color: var(--gray-300);
            font-size: 0.9rem;
        }
        
        .progress-bar {
            background: rgba(255, 255, 255, 0.1);
            border-radius: var(--radius-lg);
            height: 8px;
            overflow: hidden;
        }
        
        .progress-fill {
            background: linear-gradient(90deg, var(--accent-gold) 0%, #ffed4e 100%);
            height: 100%;
            border-radius: var(--radius-lg);
            transition: width 0.3s ease;
        }
        
        .installment-actions {
            display: flex;
            gap: var(--spacing-md);
        }
        
        .luxury-btn {
            padding: var(--spacing-sm) var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 600;
            font-size: 0.9rem;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: var(--spacing-sm);
            transition: var(--transition-normal);
            border: none;
            cursor: pointer;
        }
        
        .luxury-btn-primary {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
        }
        
        .luxury-btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
            color: var(--primary-green);
        }
        
        .luxury-btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            color: var(--accent-gold);
            border: 1px solid rgba(255, 215, 0, 0.3);
        }
        
        .luxury-btn-secondary:hover {
            background: rgba(255, 215, 0, 0.1);
            transform: translateY(-2px);
            color: var(--accent-gold);
        }
        
        .no-installments {
            text-align: center;
            padding: var(--spacing-xl);
            color: var(--gray-400);
        }
        
        .no-installments i {
            font-size: 4rem;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-lg);
            opacity: 0.5;
        }
        
        .no-installments h3 {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            margin-bottom: var(--spacing-md);
        }
        
        .no-installments p {
            margin-bottom: var(--spacing-lg);
        }
        
        .summary-section {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-lg);
        }
        
        .summary-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .summary-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: var(--spacing-lg);
        }
        
        .summary-item {
            text-align: center;
            padding: var(--spacing-md);
            background: rgba(255, 215, 0, 0.05);
            border-radius: var(--radius-lg);
            border: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .summary-value {
            color: var(--accent-gold);
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: var(--spacing-sm);
        }
        
        .summary-label {
            color: var(--gray-300);
            font-size: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .my-installments-content {
                padding: var(--spacing-md);
            }
            
            .installment-info {
                flex-direction: column;
                gap: var(--spacing-md);
            }
            
            .installment-icon {
                width: 60px;
                height: 60px;
            }
            
            .installment-specs {
                flex-wrap: wrap;
            }
            
            .installment-meta {
                flex-direction: column;
                gap: var(--spacing-md);
                align-items: flex-start;
            }
            
            .installment-actions {
                flex-direction: column;
                width: 100%;
            }
            
            .luxury-btn {
                justify-content: center;
            }
            
            .summary-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>

<body>
    <div class="my-installments-container">
        <!-- Header -->
        <header class="my-installments-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="index-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="my-installments-title">My Gold Installments</h1>
                </div>
                <div class="luxury-icon-small">
                    <i class="fas fa-coins" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Content -->
        <div class="my-installments-content">
            <!-- Summary Section -->
            <?php if (!empty($installments)): ?>
                <div class="summary-section">
                    <h3 class="summary-title">
                        <i class="fas fa-chart-line"></i>
                        Installment Summary
                    </h3>
                    <div class="summary-grid">
                        <?php
                        $totalAmount = 0;
                        $totalPaid = 0;
                        $totalPending = 0;
                        
                        foreach ($installments as $installment) {
                            $totalAmount += floatval($installment['totalpricelock'] ?? 0);
                            $paidAmount = floatval($installment['bayaran'] ?? 0);
                            $totalPaid += $paidAmount;
                            $totalPending += (floatval($installment['totalpricelock'] ?? 0) - $paidAmount);
                        }
                        ?>
                        <div class="summary-item">
                           
                            <div class="summary-value"><?php echo count($installments); ?>
                            <br><div class="summary-label">Total Installments</div>
                        </div>
                           
                        </div>
                        <div class="summary-item">
                        <div class="summary-label">Total Locked Price
                        <br><div class="summary-value">RM <?php echo number_format($totalAmount, 2); ?></div>
                        
                        </div>
                       
                            
                        </div>
                        <div class="summary-item">
                        <div class="summary-label">Total Paid Amount
                        <br><div class="summary-value">RM <?php echo number_format($totalPaid, 2); ?></div>

                        </div>
                       
                           
                        </div>
                        <div class="summary-item">
                      <div class="summary-label">Total Outstanding
                      <br> <div class="summary-value">RM <?php echo number_format($totalPending, 2); ?>

                      </div>
                    
                           
                        </div>
                            
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <!-- Search Section -->
            <div class="search-section">
                <div class="luxury-search">
                    <i class="fas fa-search"></i>
                    <input type="text" id="installmentSearch" placeholder="Search your installments...">
                </div>
            </div>

            <!-- Installments List -->
            <?php if (empty($installments)): ?>
                <div class="no-installments">
                    <i class="fas fa-coins"></i>
                    <h3>No Installment Records</h3>
                    <p>You don't have any gold installment records yet. Start your gold investment journey today.</p>
                    
                </div>
            <?php else: ?>
                <?php foreach ($installments as $installment): ?>
                    <div class="installment-card" data-installment-id="<?php echo $installment['id'] ?? ''; ?>">
                        <div class="installment-header">
                            <div class="installment-info">
                                <div class="installment-icon">
                                    <i class="fas fa-coins"></i>
                                </div>
                                <div class="installment-details">
                                    <h3 class="installment-title">
                                        <?php echo htmlspecialchars($installment['jenis_emas'] ?? 'Gold Investment'); ?>
                                    </h3>
                                    <p class="installment-description">
                                        <?php echo htmlspecialchars($installment['catatan'] ?? 'Gold installment payment record'); ?>
                                    </p>
                                    <div class="installment-specs">
                                        <?php if (!empty($installment['berat'])): ?>
                                            <span class="installment-spec"><?php echo number_format($installment['berat'], 2); ?>g</span>
                                        <?php endif; ?>
                                        <?php if (!empty($installment['kualiti'])): ?>
                                            <span class="installment-spec"><?php echo htmlspecialchars($installment['kualiti']); ?></span>
                                        <?php endif; ?>
                                        <?php if (!empty($installment['harga_gram'])): ?>
                                            <span class="installment-spec">RM <?php echo number_format($installment['harga_gram'], 2); ?>/g</span>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="installment-status">
                                <?php
                                $totalPrice = floatval($installment['totalpricelock'] ?? 0);
                                $paidAmount = floatval($installment['bayaran'] ?? 0);
                                
                                if ($paidAmount >= $totalPrice) {
                                    $status = 'paid';
                                    $statusText = 'Paid';
                                } elseif ($paidAmount > 0) {
                                    $status = 'partial';
                                    $statusText = 'Partial';
                                } else {
                                    $status = 'pending';
                                    $statusText = 'Pending';
                                }
                                
                                $statusClass = 'status-' . $status;
                                ?>
                                <span class="status-badge <?php echo $statusClass; ?>">
                                    <?php echo $statusText; ?>
                                </span>
                            </div>
                        </div>
                        <div class="installment-body">
                            <div class="installment-meta">
                                <div class="installment-date">
                                    <i class="fas fa-calendar-alt"></i>
                                    <?php echo date('d M Y \a\t g:i A', strtotime($installment['tarikh'] ?? 'now')); ?>
                                </div>
                                <?php if (!empty($installment['totalpricelock'])): ?>
                                    <div class="installment-amount">
                                        RM <?php echo number_format($installment['totalpricelock'], 2); ?>
                                    </div>
                                <?php endif; ?>
                            </div>
                            
                            <?php if (!empty($installment['bayaran']) && !empty($installment['totalpricelock'])): ?>
                                <div class="installment-progress">
                                    <div class="progress-label">
                                        <span>Payment Progress</span>
                                        <span><?php echo number_format(($installment['bayaran'] / $installment['totalpricelock']) * 100, 1); ?>%</span>
                                    </div>
                                    <div class="progress-bar">
                                        <div class="progress-fill" style="width: <?php echo min(100, ($installment['bayaran'] / $installment['totalpricelock']) * 100); ?>%"></div>
                                    </div>
                                </div>
                            <?php endif; ?>
                            
                            <div class="installment-actions">
                                <a href="#" class="luxury-btn luxury-btn-primary" onclick="viewInstallmentDetails(<?php echo $installment['id'] ?? ''; ?>)">
                                    <i class="fas fa-eye"></i>
                                    View Details
                                </a>
                                <?php 
                                $totalPrice = floatval($installment['totalpricelock'] ?? 0);
                                $paidAmount = floatval($installment['bayaran'] ?? 0);
                                if ($paidAmount < $totalPrice): 
                                ?>
                                    <a href="#" class="luxury-btn luxury-btn-secondary" onclick="makePayment(<?php echo $installment['id'] ?? ''; ?>)">
                                        <i class="fas fa-credit-card"></i>
                                        Make Payment
                                    </a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Search functionality
        document.getElementById('installmentSearch').addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const installmentCards = document.querySelectorAll('.installment-card');
            
            installmentCards.forEach(card => {
                const title = card.querySelector('.installment-title').textContent.toLowerCase();
                const description = card.querySelector('.installment-description').textContent.toLowerCase();
                
                if (title.includes(searchTerm) || description.includes(searchTerm)) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        });
        
        // Installment details view
        function viewInstallmentDetails(installmentId) {
            // You can implement a modal or redirect to installment details page
            alert('Installment details for record #' + installmentId + ' - Feature coming soon!');
        }
        
        // Make payment functionality
        function makePayment(installmentId) {
            if (confirm('Would you like to make a payment for this installment?')) {
                // You can implement payment logic here
                window.location.href = 'payment.php?installment=' + installmentId;
            }
        }
        
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const installmentCards = document.querySelectorAll('.installment-card');
            installmentCards.forEach((card, index) => {
                card.style.opacity = '0';
                card.style.transform = 'translateY(20px)';
                
                setTimeout(() => {
                    card.style.transition = 'all 0.6s ease';
                    card.style.opacity = '1';
                    card.style.transform = 'translateY(0)';
                }, index * 100);
            });
            
            // Add hover effects
            installmentCards.forEach(card => {
                card.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateY(-5px)';
                    this.style.boxShadow = '0 10px 30px rgba(255, 215, 0, 0.2)';
                });
                
                card.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateY(0)';
                    this.style.boxShadow = 'none';
                });
            });
        });
    </script>
</body>
</html>