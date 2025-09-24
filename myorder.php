<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
extract($_REQUEST);

// Fetch orders for the current user
$orders = [];
if (isset($nokp) && !empty($nokp)) {
    $query = mysqli_query($conn, "SELECT * FROM myorder WHERE nokp = '$nokp' ORDER BY reservation_date DESC");
    while ($res = mysqli_fetch_array($query)) {
        $orders[] = $res;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="My Gold Jewelry Orders - Lalal Gold">
    <meta name="keywords" content="gold jewelry, my orders, order history, lalal gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>My Gold Orders - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .my-orders-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .my-orders-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .my-orders-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .my-orders-content {
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
        
        .order-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            margin-bottom: var(--spacing-lg);
            overflow: hidden;
            position: relative;
        }
        
        .order-card::before {
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
        
        .order-header {
            padding: var(--spacing-lg);
            border-bottom: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .order-info {
            display: flex;
            align-items: flex-start;
            gap: var(--spacing-lg);
        }
        
        .order-image {
            width: 80px;
            height: 80px;
            border-radius: var(--radius-lg);
            object-fit: cover;
            border: 2px solid rgba(255, 215, 0, 0.3);
            background: rgba(255, 215, 0, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .order-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: var(--radius-lg);
        }
        
        .order-image i {
            font-size: 2rem;
            color: var(--accent-gold);
        }
        
        .order-details {
            flex: 1;
        }
        
        .order-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            font-size: 1.2rem;
            margin-bottom: var(--spacing-sm);
        }
        
        .order-description {
            color: var(--gray-300);
            font-size: 0.9rem;
            line-height: 1.5;
            margin-bottom: var(--spacing-sm);
        }
        
        .order-specs {
            display: flex;
            gap: var(--spacing-md);
            margin-bottom: var(--spacing-sm);
        }
        
        .order-spec {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-md);
            padding: var(--spacing-sm) var(--spacing-md);
            color: var(--accent-gold);
            font-size: 0.8rem;
            font-weight: 500;
        }
        
        .order-status {
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
        
        .status-pending {
            background: rgba(255, 193, 7, 0.2);
            color: #ffc107;
            border: 1px solid rgba(255, 193, 7, 0.3);
        }
        
        .status-confirmed {
            background: rgba(13, 110, 253, 0.2);
            color: #0d6efd;
            border: 1px solid rgba(13, 110, 253, 0.3);
        }
        
        .status-in_progress {
            background: rgba(255, 152, 0, 0.2);
            color: #ff9800;
            border: 1px solid rgba(255, 152, 0, 0.3);
        }
        
        .status-completed {
            background: rgba(76, 175, 80, 0.2);
            color: #4caf50;
            border: 1px solid rgba(76, 175, 80, 0.3);
        }
        
        .status-cancelled {
            background: rgba(244, 67, 54, 0.2);
            color: #f44336;
            border: 1px solid rgba(244, 67, 54, 0.3);
        }
        
        .order-body {
            padding: var(--spacing-lg);
        }
        
        .order-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: var(--spacing-lg);
            padding-bottom: var(--spacing-lg);
            border-bottom: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .order-date {
            color: var(--gray-400);
            font-size: 0.9rem;
        }
        
        .order-price {
            color: var(--accent-gold);
            font-weight: 700;
            font-size: 1.1rem;
        }
        
        .order-actions {
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
        
        .no-orders {
            text-align: center;
            padding: var(--spacing-xl);
            color: var(--gray-400);
        }
        
        .no-orders i {
            font-size: 4rem;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-lg);
            opacity: 0.5;
        }
        
        .no-orders h3 {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            margin-bottom: var(--spacing-md);
        }
        
        .no-orders p {
            margin-bottom: var(--spacing-lg);
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .my-orders-content {
                padding: var(--spacing-md);
            }
            
            .order-info {
                flex-direction: column;
                gap: var(--spacing-md);
            }
            
            .order-image {
                width: 60px;
                height: 60px;
            }
            
            .order-specs {
                flex-wrap: wrap;
            }
            
            .order-meta {
                flex-direction: column;
                gap: var(--spacing-md);
                align-items: flex-start;
            }
            
            .order-actions {
                flex-direction: column;
                width: 100%;
            }
            
            .luxury-btn {
                justify-content: center;
            }
        }
    </style>
</head>

<body>
    <div class="my-orders-container">
        <!-- Header -->
        <header class="my-orders-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="index-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="my-orders-title">My Gold Orders</h1>
                </div>
                <div class="luxury-icon-small">
                    <i class="fas fa-gem" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Content -->
        <div class="my-orders-content">
            <!-- Search Section -->
            <div class="search-section">
                <div class="luxury-search">
                    <i class="fas fa-search"></i>
                    <input type="text" id="orderSearch" placeholder="Search your orders...">
                </div>
            </div>

            <!-- Orders List -->
            <?php if (empty($orders)): ?>
                <div class="no-orders">
                    <i class="fas fa-gem"></i>
                    <h3>No Orders Yet</h3>
                    <p>You haven't placed any gold jewelry orders yet. Start your journey with our premium collection.</p>
                    <a href="goldreservation.php" class="luxury-btn luxury-btn-primary">
                        <i class="fas fa-plus"></i>
                        Place Your First Order
                    </a>
                </div>
            <?php else: ?>
                <?php foreach ($orders as $order): ?>
                    <div class="order-card" data-order-id="<?php echo $order['id']; ?>">
                        <div class="order-header">
                            <div class="order-info">
                                <div class="order-image">
                                    <?php if (!empty($order['image']) && file_exists($order['image'])): ?>
                                        <img src="<?php echo htmlspecialchars($order['image']); ?>" alt="Jewelry Design">
                                    <?php else: ?>
                                        <i class="fas fa-gem"></i>
                                    <?php endif; ?>
                                </div>
                                <div class="order-details">
                                    <h3 class="order-title"><?php echo htmlspecialchars($order['jewelry_type']); ?></h3>
                                    <p class="order-description"><?php echo htmlspecialchars($order['description']); ?></p>
                                    <div class="order-specs">
                                        <span class="order-spec"><?php echo htmlspecialchars($order['karat']); ?></span>
                                        <?php if (!empty($order['weight'])): ?>
                                            <span class="order-spec"><?php echo number_format($order['weight'], 2); ?>g</span>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="order-status">
                                <span class="status-badge status-<?php echo strtolower($order['status']); ?>">
                                    <?php echo ucfirst(str_replace('_', ' ', $order['status'])); ?>
                                </span>
                            </div>
                        </div>
                        <div class="order-body">
                            <div class="order-meta">
                                <div class="order-date">
                                    <i class="fas fa-calendar-alt"></i>
                                    <?php echo date('d M Y \a\t g:i A', strtotime($order['reservation_date'])); ?>
                                </div>
                                <?php if (!empty($order['price'])): ?>
                                    <div class="order-price">
                                        RM <?php echo number_format($order['price'], 2); ?>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <div class="order-actions">
                                <a href="#" class="luxury-btn luxury-btn-primary" onclick="viewOrderDetails(<?php echo $order['id']; ?>)">
                                    <i class="fas fa-eye"></i>
                                    View Details
                                </a>
                                <?php if ($order['status'] === 'completed'): ?>
                                    <a href="#" class="luxury-btn luxury-btn-secondary" onclick="reorderItem(<?php echo $order['id']; ?>)">
                                        <i class="fas fa-redo"></i>
                                        Reorder
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
        document.getElementById('orderSearch').addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const orderCards = document.querySelectorAll('.order-card');
            
            orderCards.forEach(card => {
                const title = card.querySelector('.order-title').textContent.toLowerCase();
                const description = card.querySelector('.order-description').textContent.toLowerCase();
                const jewelryType = card.querySelector('.order-title').textContent.toLowerCase();
                
                if (title.includes(searchTerm) || description.includes(searchTerm) || jewelryType.includes(searchTerm)) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        });
        
        // Order details view
        function viewOrderDetails(orderId) {
            // You can implement a modal or redirect to order details page
            alert('Order details for order #' + orderId + ' - Feature coming soon!');
        }
        
        // Reorder functionality
        function reorderItem(orderId) {
            if (confirm('Would you like to reorder this item?')) {
                // You can implement reorder logic here
                window.location.href = 'goldreservation.php?reorder=' + orderId;
            }
        }
        
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const orderCards = document.querySelectorAll('.order-card');
            orderCards.forEach((card, index) => {
                card.style.opacity = '0';
                card.style.transform = 'translateY(20px)';
                
                setTimeout(() => {
                    card.style.transition = 'all 0.6s ease';
                    card.style.opacity = '1';
                    card.style.transform = 'translateY(0)';
                }, index * 100);
            });
            
            // Add hover effects
            orderCards.forEach(card => {
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