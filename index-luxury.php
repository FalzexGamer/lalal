<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('inc/notification_functions.php');
include('balance.php');
extract($_REQUEST);


$today= date("Y-m-d");  
// Get current gold price (simulated - replace with real API)
$current_gold_price = 2850.50;
$price_change = 12.75;
$price_change_percent = 0.45;
$is_positive = $price_change > 0;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Lalal Gold - Premium Gold Trading Platform">
    <meta name="keywords" content="gold trading, precious metals, jewelry, investment">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Lalal Gold - Premium Trading Platform</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
</head>

<body>
    <div class="luxury-container">
        <!-- Header -->
        <header class="luxury-header">
            <div class="luxury-navbar">
                <div class="luxury-logo">
                    <div class="crown-logo">
                        <i class="fas fa-crown"></i>
                    </div>
                    <div class="logo-text">
                        <h1>Lalal Gold</h1>
                        <span>Premium Jewelry</span>
                    </div>
                </div>
                <div class="luxury-actions">
                    <button class="luxury-icon-btn" onclick="toggleNotifications()">
                        <i class="fas fa-bell"></i>
                        <span class="notification-badge">0</span>
                    </button>
                    <a href="signout.php" class="luxury-icon-btn">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                </div>
            </div>
        </header>

        <!-- Real-time Gold Price Display -->
        <div class="price-display animate-fade-in-up">
            <div class="price-header">
                <i class="fas fa-gem"></i>
                <span>Live Gold Price Lalal Gold</span>
            </div>
            <div class="price-main">
                <div class="price-currency">MYR</div>
                <div class="price-value"><?php echo number_format($harganew, 2); ?></div>
            </div>
            
            <div class="price-time">
                <i class="fas fa-clock"></i>
                <span>Updated: <?php echo date('H:i'); ?></span>
            </div>
        </div>

        <!-- Search Bar -->
        <form method="post" class="luxury-search animate-fade-in">
            <i class="fas fa-search luxury-search-icon"></i>
            <input type="text" name="carian" placeholder="Search jewelry, gold products..." 
                   value="<?php echo isset($_POST['carian']) ? htmlspecialchars($_POST['carian']) : ''; ?>">
            <button type="submit" name="save" class="luxury-btn">
                <i class="fas fa-search"></i>
            </button>
        </form>

        <!-- Welcome Section -->
        <div class="luxury-grid animate-fade-in-up">
            <div class="luxury-card welcome-card">
                <div class="welcome-content">
                    <div class="welcome-icon">
                        <i class="fas fa-crown"></i>
                    </div>
                    <div class="welcome-text">
                        <h3 class="text-display mb-2">Welcome back, <?php echo htmlspecialchars($username); ?>!</h3>
                        <p class="text-muted">Discover our exclusive collection of premium gold jewelry</p>
                    </div>
                </div>
                <div class="welcome-stats">
                    <div class="stat-item">
                        <i class="fas fa-gem"></i>
                        <span>Premium Quality</span>
                    </div>
                    <div class="stat-item">
                        <i class="fas fa-shield-alt"></i>
                        <span>Secure Trading</span>
                    </div>
                    <div class="stat-item">
                        <i class="fas fa-shipping-fast"></i>
                        <span>Fast Delivery</span>
                    </div>
                </div>
            </div>
        </div>

        <?php 
			  $query1z=mysqli_query($conn,"select count(recno) as bilpoint,sum(berat) as beratpoint from saving where username='$username' and status='PAID' and transaction='Points'");
	$res1z=mysqli_fetch_array($query1z);
	   
	
	   $bilpoint =$res1z['bilpoint'];
	   $beratpoint=$res1z['beratpoint'];
			  
		  if (empty($beratpoint)) {
    // beratpoint is empty (0, '', null, false, etc.)
     $beratpoint="0.00" ;
} else {
    // beratpoint has value

}
		
			  ?>

        <!-- Quick Actions Grid -->
        <div class="luxury-grid luxury-grid-2 animate-fade-in-up">
                         <!-- Gold Wallet -->
             <a href="goldsaving_menu.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-wallet" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">Gold Wallet</div>
                 <div class="feature-value"><?php echo $berat_saving; ?> gm</div>
                 <div class="feature-subtitle">Your digital gold</div>
             </a>

             <!-- My Points -->
             <a href="mypoints.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-star" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">My Points</div>
                 <div class="feature-value"><?php echo $beratpoint; ?> gm</div>
                 <div class="feature-subtitle">Loyalty rewards</div>
             </a>

            <?php 
			  $query1z=mysqli_query($conn,"SELECT count(recno) as bilvideocall,tarikh as tarikhset from videocall where username='$username' and tarikh>='$today' order by recno asc");
			  $res1z=mysqli_fetch_array($query1z);
	   
			  $bilvideocall=$res1z['bilvideocall'];
			  
			  if($bilvideocall<>"0"){
			  $tarikhset = $res1z['tarikhset'];
			  $tarikhset1 = date('d-m-Y', strtotime($tarikhset));
				  }
			  
			   if($bilvideocall=="0"){
				$tarikhset = "No" ;
				    $tarikhset1 = "No" ;
			   }
			  ?>

                         <!-- Video Call -->
             <a href="video_call.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-video" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">Video Call</div>
                 <?php if($bilvideocall != "0"): ?>
                     <div class="feature-value"><?php echo $tarikhset1; ?></div>
                     <div class="feature-subtitle">Appointment scheduled</div>
                 <?php else: ?>
                     <div class="feature-value">No Appointment</div>
                     <div class="feature-subtitle">Book consultation</div>
                 <?php endif; ?>
             </a>

             <!-- Jewelry Order -->
             <a href="goldreservation.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-ring" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">Jewelry Order</div>
                 <div class="feature-value">Custom</div>
                 <div class="feature-subtitle">Design your piece</div>
             </a>

             <!-- My Orders -->
             <a href="myorder.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-clipboard-list" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">My Orders</div>
                 <div class="feature-value">Track</div>
                 <div class="feature-subtitle">Order history</div>
             </a>

                          <!-- My Purchase -->
             <a href="mypurchase.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-shopping-bag" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">My Purchase</div>
                 <div class="feature-value">Track</div>
                 <div class="feature-subtitle">Purchase history</div>
             </a>

             <!-- Buy/Sell -->
             <a href="products-luxury.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-gem" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">Buy</div>
                 <div class="feature-value">Jewelry</div>
                 <div class="feature-subtitle">Lalal Gold</div>
             </a>

             <!-- My Installment -->
             <a href="myinstallment.php" class="feature-card">
                 <div class="feature-icon">
                     <i class="fas fa-credit-card" style="font-size: 24px; color: #013220;"></i>
                 </div>
                 <div class="feature-title">My Installment</div>
                 <div class="feature-value">Track</div>
                 <div class="feature-subtitle">Installment history</div>
             </a>
        </div>

        <!-- Product Categories -->
        <div class="luxury-grid">
            <div class="section-header">
                <h3 class="text-display mb-3">
                    <i class="fas fa-gem"></i>
                    Shop by Category
                </h3>
                <p class="text-muted">Explore our exclusive jewelry collections</p>
            </div>
            <div class="product-grid">
                <a href="products-luxury.php?page_no=1&type=NEW&search=" class="product-card category-card">
                    <div class="category-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Latest</div>
                        <div class="product-price">New Arrivals</div>
                    </div>
                    <div class="category-overlay">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </a>

                <a href="products-luxury.php?page_no=1&type=NEW&search=RING" class="product-card category-card">
                    <div class="category-icon">
                        <i class="fas fa-ring"></i>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Rings</div>
                        <div class="product-price">Elegant Designs</div>
                    </div>
                    <div class="category-overlay">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </a>

                <a href="products-luxury.php?page_no=1&type=NEW&search=EARING" class="product-card category-card">
                    <div class="category-icon">
                        <i class="fas fa-gem"></i>
                    </div>
                    <div class="product-info">
                        <div class="product-title">Earrings</div>
                        <div class="product-price">Timeless Beauty</div>
                    </div>
                    <div class="category-overlay">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </a>

                <a href="products-luxury.php?page_no=1&type=NEW&search=ALL" class="product-card category-card">
                    <div class="category-icon">
                        <i class="fas fa-crown"></i>
                    </div>
                    <div class="product-info">
                        <div class="product-title">All Products</div>
                        <div class="product-price">Complete Collection</div>
                    </div>
                    <div class="category-overlay">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </a>
            </div>
        </div>

        <!-- Featured Products Section -->
        <?php
        $query = mysqli_query($conn, "SELECT * FROM emasjualmz WHERE status='0' AND jenis='NEW' AND showhide='SHOW' LIMIT 10");
        if (mysqli_num_rows($query) > 0):
        ?>
        <div class="luxury-grid">
            <div class="section-header">
                <h3 class="text-display mb-3">
                    <i class="fas fa-star"></i>
                    Featured Products
                </h3>
                <p class="text-muted">Handpicked premium jewelry pieces</p>
            </div>
            <div class="product-grid">
                
                <?php while ($row = mysqli_fetch_array($query)): ?>
                <a href="product-details-luxury.php?id=<?php echo $row['recno']; ?>" class="product-card featured-card">
                    <div class="product-image-container">
                        <img src="<?php echo !empty($row['gambar']) ? $row['img'] : 'img/noimage.jpg'; ?>" 
                             alt="<?php echo htmlspecialchars($row['marhun']); ?>" class="product-image">
                        <div class="product-overlay">
                            <i class="fas fa-eye"></i>
                        </div>
                    </div>
                    <div class="product-info">
                    <div class="product-title"><?php echo htmlspecialchars($row['nosiri']); ?></div>
                        <div class="product-title"><?php echo htmlspecialchars($row['marhun']); ?></div>
                        <div class="product-price">
                            <i class="fas fa-weight-hanging"></i>
                            <?php echo $row['berat']; ?> gm
                        </div>
                        <div class="product-badge">Premium</div>
                    </div>
                </a>
                <?php endwhile; ?>
            </div>
        </div>
        <?php endif; ?>

        <!-- Bottom Navigation -->
        <nav class="luxury-bottom-nav">
            <div class="luxury-nav-items">
                <a href="index-luxury.php" class="luxury-nav-item active">
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

    <!-- Notification Modal -->
    <div id="notificationModal" class="modal-overlay">
        <div class="modal-container">
            <div class="modal-header">
                <h3 class="modal-title">
                    <i class="fas fa-bell"></i>
                    Notifications
                </h3>
                <button class="modal-close" onclick="closeNotificationModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-content">
                <div class="notification-list" id="notificationList">
                    <!-- Notifications will be loaded here -->
                </div>
            </div>
            <div class="modal-footer">
                <button class="luxury-btn" onclick="markAllAsRead()">
                    <i class="fas fa-check-double"></i>
                    Mark All as Read
                </button>
                <button class="luxury-btn" onclick="viewAllNotifications()">
                    <i class="fas fa-eye"></i>
                    View All
                </button>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Smooth animations and interactions
        document.addEventListener('DOMContentLoaded', function() {
            // Add animation classes to elements
            const cards = document.querySelectorAll('.feature-card, .product-card');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
                card.classList.add('animate-fade-in-up');
            });

            // Real-time price updates (simulated)
            setInterval(() => {
                updateGoldPrice();
            }, 30000); // Update every 30 seconds

            // Initialize notification count
            updateNotificationCount();
        });

        function updateGoldPrice() {
            // Simulate price changes
            const priceElement = document.querySelector('.price-value');
            const changeElement = document.querySelector('.price-change');
            
            if (priceElement && changeElement) {
                const currentPrice = parseFloat(priceElement.textContent.replace('$', '').replace(',', ''));
                const change = (Math.random() - 0.5) * 20; // Random change between -10 and +10
                const newPrice = currentPrice + change;
                
                priceElement.textContent = `$${newPrice.toFixed(2)}`;
                
                const isPositive = change > 0;
                changeElement.className = `price-change ${isPositive ? 'positive' : 'negative'}`;
                changeElement.innerHTML = `
                    <i class="fas fa-${isPositive ? 'arrow-up' : 'arrow-down'}"></i>
                    <span>$${Math.abs(change).toFixed(2)} (${(Math.abs(change) / currentPrice * 100).toFixed(2)}%)</span>
                `;
            }
        }

        function toggleNotifications() {
            const modal = document.getElementById('notificationModal');
            modal.classList.add('modal-active');
            document.body.style.overflow = 'hidden';
            loadNotifications();
        }

        function closeNotificationModal() {
            const modal = document.getElementById('notificationModal');
            modal.classList.remove('modal-active');
            document.body.style.overflow = 'auto';
        }

        function markAllAsRead() {
            fetch('notification_ajax.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'action=mark_all_as_read'
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showToast('All notifications marked as read');
                    loadNotifications();
                } else {
                    showToast('Failed to mark notifications as read');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showToast('Error marking notifications as read');
            });
        }

        function viewAllNotifications() {
            // Navigate to full notifications page
            window.location.href = 'notifications.php';
        }

        function loadNotifications() {
            fetch('notification_ajax.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'action=get_notifications&limit=10'
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    displayNotifications(data.notifications);
                    updateNotificationCount();
                } else {
                    showToast('Failed to load notifications');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showToast('Error loading notifications');
            });
        }

        function displayNotifications(notifications) {
            const container = document.getElementById('notificationList');
            
            if (notifications.length === 0) {
                container.innerHTML = `
                    <div class="empty-notifications">
                        <i class="fas fa-bell-slash"></i>
                        <p>No notifications yet</p>
                    </div>
                `;
                return;
            }
            
            container.innerHTML = notifications.map(notification => `
                <div class="notification-item ${notification.is_read ? '' : 'unread'}" 
                     onclick="handleNotificationClick(${notification.id}, '${notification.action_url}')">
                    <div class="notification-icon ${notification.color_class}">
                        <i class="${notification.icon}"></i>
                    </div>
                    <div class="notification-content">
                        <div class="notification-title">${notification.title}</div>
                        <div class="notification-message">${notification.message}</div>
                        <div class="notification-time">${notification.created_at}</div>
                    </div>
                    <div class="notification-status">
                        ${notification.is_read ? 
                            '<span class="read-dot"></span>' : 
                            '<span class="unread-dot"></span>'
                        }
                    </div>
                </div>
            `).join('');
        }

        function handleNotificationClick(notificationId, actionUrl) {
            // Mark as read
            fetch('notification_ajax.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `action=mark_as_read&notification_id=${notificationId}`
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Navigate to action URL if provided
                    if (actionUrl && actionUrl !== 'null') {
                        window.location.href = actionUrl;
                    }
                    // Reload notifications
                    loadNotifications();
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }

        function showToast(message) {
            // Create toast notification
            const toast = document.createElement('div');
            toast.className = 'toast-notification';
            toast.innerHTML = `
                <i class="fas fa-check-circle"></i>
                <span>${message}</span>
            `;
            document.body.appendChild(toast);
            
            // Show toast
            setTimeout(() => {
                toast.classList.add('toast-show');
            }, 100);
            
            // Hide toast after 3 seconds
            setTimeout(() => {
                toast.classList.remove('toast-show');
                setTimeout(() => {
                    document.body.removeChild(toast);
                }, 300);
            }, 3000);
        }

        function toggleMenu() {
            // Implement side menu
            console.log('Toggle menu');
        }

        // Add hover effects
        document.querySelectorAll('.feature-card, .product-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-8px) scale(1.02)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1)';
            });
        });

        // Search functionality
        document.querySelector('.luxury-search input').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                e.preventDefault();
                this.closest('form').submit();
            }
        });

        // Close modal when clicking outside
        document.getElementById('notificationModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeNotificationModal();
            }
        });

        // Close modal with Escape key
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape') {
                const modal = document.getElementById('notificationModal');
                if (modal.classList.contains('modal-active')) {
                    closeNotificationModal();
                }
            }
        });

        // Handle notification item clicks (this is now handled by handleNotificationClick function)

        function updateNotificationCount() {
            fetch('notification_ajax.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'action=get_unread_count'
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    const badge = document.querySelector('.notification-badge');
                    if (badge) {
                        badge.textContent = data.count;
                        badge.style.display = data.count > 0 ? 'block' : 'none';
                    }
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    </script>
</body>
</html>
