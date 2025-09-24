<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');
extract($_REQUEST);

// Pagination
$page_no = isset($_GET['page_no']) ? (int)$_GET['page_no'] : 1;
$type = isset($_GET['type']) ? $_GET['type'] : 'ALL';
$search = isset($_GET['search']) ? $_GET['search'] : '';
$records_per_page = 12;
$offset = ($page_no - 1) * $records_per_page;

// Build query
$where_conditions = ["status='0'"];
if ($type !== 'ALL') {
    $where_conditions[] = "jenis='$type'";
}
if (!empty($search)) {
    $search_escaped = mysqli_real_escape_string($conn, $search);
    $where_conditions[] = "marhun LIKE '%$search_escaped%'";
}

$where_clause = implode(' AND ', $where_conditions);
$query = mysqli_query($conn, "SELECT * FROM emasjualmz WHERE $where_clause ORDER BY recno DESC LIMIT $offset, $records_per_page");
$total_records = mysqli_fetch_array(mysqli_query($conn, "SELECT COUNT(*) as count FROM emasjualmz WHERE $where_clause"))['count'];
$total_pages = ceil($total_records / $records_per_page);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Shop Premium Gold Jewelry - Lalal Gold">
    <meta name="keywords" content="gold jewelry, rings, earrings, necklaces, precious metals">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Shop Premium Gold Jewelry - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .product-grid-luxury {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
            gap: var(--spacing-md);
            padding: var(--spacing-lg);
        }
        
        .product-card-luxury {
            background: var(--white);
            border-radius: var(--radius-xl);
            overflow: hidden;
            box-shadow: var(--shadow-md);
            transition: var(--transition-normal);
            border: 1px solid var(--gray-200);
            position: relative;
        }
        
        .product-card-luxury:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-xl);
        }
        
        .product-image-luxury {
            width: 100%;
            height: 160px;
            object-fit: cover;
            background: var(--gradient-card);
        }
        
        .product-info-luxury {
            padding: var(--spacing-md);
        }
        
        .product-title-luxury {
            font-size: 0.875rem;
            font-weight: 600;
            color: var(--primary-green);
            margin-bottom: var(--spacing-xs);
            line-height: 1.3;
        }
        
        .product-weight {
            font-size: 0.75rem;
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
        }
        
        .product-price-luxury {
            font-size: 1rem;
            font-weight: 700;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-sm);
        }
        
        .add-to-cart-btn {
            width: 100%;
            background: var(--gradient-gold);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-sm);
            border-radius: var(--radius-md);
            font-weight: 600;
            font-size: 0.875rem;
            cursor: pointer;
            transition: var(--transition-normal);
        }
        
        .add-to-cart-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-gold);
        }
        
        .filter-tabs {
            display: flex;
            gap: var(--spacing-sm);
            padding: var(--spacing-lg);
            overflow-x: auto;
            background: var(--white);
            border-bottom: 1px solid var(--gray-200);
            scrollbar-width: thin;
            scrollbar-color: var(--accent-gold) var(--gray-200);
        }
        
        .filter-tabs::-webkit-scrollbar {
            height: 4px;
        }
        
        .filter-tabs::-webkit-scrollbar-track {
            background: var(--gray-200);
            border-radius: 2px;
        }
        
        .filter-tabs::-webkit-scrollbar-thumb {
            background: var(--accent-gold);
            border-radius: 2px;
        }
        
        .filter-tab {
            background: var(--gray-100);
            color: var(--gray-600);
            border: none;
            padding: var(--spacing-sm) var(--spacing-md);
            border-radius: var(--radius-full);
            font-weight: 500;
            font-size: 0.875rem;
            cursor: pointer;
            transition: var(--transition-normal);
            white-space: nowrap;
        }
        
        .filter-tab.active {
            background: var(--accent-gold);
            color: var(--primary-green);
        }
        
        .filter-tab:hover {
            background: var(--accent-gold-light);
            color: var(--primary-green);
        }
        
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: var(--spacing-sm);
            padding: var(--spacing-lg);
        }
        
        .page-btn {
            background: var(--white);
            color: var(--gray-600);
            border: 1px solid var(--gray-300);
            padding: var(--spacing-sm) var(--spacing-md);
            border-radius: var(--radius-md);
            text-decoration: none;
            font-weight: 500;
            transition: var(--transition-normal);
        }
        
        .page-btn.active {
            background: var(--accent-gold);
            color: var(--primary-green);
            border-color: var(--accent-gold);
        }
        
        .page-btn:hover {
            background: var(--accent-gold-light);
            color: var(--primary-green);
        }
        
        .results-info {
            padding: var(--spacing-lg);
            text-align: center;
            color: var(--gray-600);
            font-size: 0.875rem;
        }
        
        .no-products {
            text-align: center;
            padding: var(--spacing-2xl);
            color: var(--gray-500);
        }
        
        .no-products i {
            font-size: 3rem;
            color: var(--gray-300);
            margin-bottom: var(--spacing-md);
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
                    <button class="luxury-icon-btn" onclick="toggleFilters()">
                        <i class="fas fa-filter"></i>
                    </button>
                </div>
            </div>
        </header>

        <!-- Search Bar -->
        <form method="get" class="luxury-search animate-fade-in">
            <i class="fas fa-search luxury-search-icon"></i>
            <input type="text" name="search" placeholder="Search jewelry, gold products..." 
                   value="<?php echo htmlspecialchars($search); ?>">
            <input type="hidden" name="type" value="<?php echo htmlspecialchars($type); ?>">
            <button type="submit" class="luxury-btn">
                <i class="fas fa-search"></i>
            </button>
        </form>

        <!-- Filter Tabs -->
        <div class="filter-tabs">
            
        <?php
							
                            $query_a=mysqli_query($conn,"select * from marhun ");
                            while($res_a=mysqli_fetch_array($query_a))
                            {
                                        $marhun = $res_a['marhun'];
                                        ?>
                   <a href="?type=NEW&search=<?php echo $marhun; ?>" 
               class="filter-tab <?php echo $search === '<?php echo $marhun; ?>' ? 'active' : ''; ?>">
                <?php echo $marhun; ?>
            </a>    
            <?php } ?>  
        </div>

        <!-- Results Info -->
        <div class="results-info">
            Showing <?php echo $total_records; ?> products
            <?php if (!empty($search)): ?>
                for "<?php echo htmlspecialchars($search); ?>"
            <?php endif; ?>
        </div>

        <!-- Pagination -->
        <?php if ($total_pages > 1): ?>
        <div class="pagination">
            <?php if ($page_no > 1): ?>
                <a href="?page_no=<?php echo $page_no - 1; ?>&type=<?php echo urlencode($type); ?>&search=<?php echo urlencode($search); ?>" 
                   class="page-btn">
                    <i class="fas fa-chevron-left"></i>
                </a>
            <?php endif; ?>
            
            <?php for ($i = max(1, $page_no - 2); $i <= min($total_pages, $page_no + 2); $i++): ?>
                <a href="?page_no=<?php echo $i; ?>&type=<?php echo urlencode($type); ?>&search=<?php echo urlencode($search); ?>" 
                   class="page-btn <?php echo $i === $page_no ? 'active' : ''; ?>">
                    <?php echo $i; ?>
                </a>
            <?php endfor; ?>
            
            <?php if ($page_no < $total_pages): ?>
                <a href="?page_no=<?php echo $page_no + 1; ?>&type=<?php echo urlencode($type); ?>&search=<?php echo urlencode($search); ?>" 
                   class="page-btn">
                    <i class="fas fa-chevron-right"></i>
                </a>
            <?php endif; ?>
        </div>
        <?php endif; ?>

        <!-- Products Grid -->
        <?php if (mysqli_num_rows($query) > 0): ?>
        <div class="product-grid-luxury">
            <?php while ($row = mysqli_fetch_array($query)): ?>
            <div class="product-card-luxury animate-fade-in-up">
                <img src="<?php echo !empty($row['gambar']) ? $row['gambar'] : 'img/noimage.jpg'; ?>" 
                     alt="<?php echo htmlspecialchars($row['marhun']); ?>" 
                     class="product-image-luxury">
                <div class="product-info-luxury">

            

                    <div class="product-title-luxury">
                        <?php echo htmlspecialchars($row['marhun']); ?>
                    </div>

                    <div class="product-title-luxury">
                       Stock No : <?php echo htmlspecialchars($row['nosiri']); ?>
                    </div>
                    <div class="product-weight">
                        <?php echo $row['berat']; ?> gm
                    </div>
                    <div class="product-price-luxury">

                    <?php $berat = $row['berat']; ?>
                    <?php $upah = $row['upah']; ?>
                        RM <?php echo $jumlah = number_format(($harganew * $berat) + $upah,2); ?>
                    </div>
                    <button class="add-to-cart-btn" onclick="addToCart(<?php echo $row['recno']; ?>)">
                        <i class="fas fa-plus"></i> Add to Cart
                    </button>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
        
        <?php else: ?>
        <div class="no-products">
            <i class="fas fa-search"></i>
            <h3>No products found</h3>
            <p>Try adjusting your search criteria or browse our categories</p>
            <a href="?type=ALL" class="luxury-btn">
                <i class="fas fa-home"></i>
                Browse All Products
            </a>
        </div>
        <?php endif; ?>

        <!-- Bottom Navigation -->
        <nav class="luxury-bottom-nav">
            <div class="luxury-nav-items">
                <a href="index-luxury.php" class="luxury-nav-item">
                    <i class="fas fa-home luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Home</span>
                </a>
                <a href="products-luxury.php" class="luxury-nav-item active">
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

    <!-- JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Add animation classes to product cards
            const cards = document.querySelectorAll('.product-card-luxury');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.05}s`;
            });

            // Smooth scrolling for filter tabs
            const filterTabs = document.querySelector('.filter-tabs');
            if (filterTabs) {
                filterTabs.addEventListener('wheel', function(e) {
                    e.preventDefault();
                    this.scrollLeft += e.deltaY;
                });
            }
        });

        function addToCart(productId) {
            // Add to cart functionality
            fetch('add_to_cart.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    product_id: productId,
                    quantity: 1
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showNotification('Product added to cart!', 'success');
                } else {
                    showNotification('Failed to add product to cart', 'error');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showNotification('Error adding product to cart', 'error');
            });
        }

        function showNotification(message, type) {
            // Create notification element
            const notification = document.createElement('div');
            notification.className = `notification notification-${type}`;
            notification.style.cssText = `
                position: fixed;
                top: 20px;
                right: 20px;
                background: ${type === 'success' ? 'var(--success)' : 'var(--error)'};
                color: white;
                padding: var(--spacing-md);
                border-radius: var(--radius-md);
                box-shadow: var(--shadow-lg);
                z-index: 1000;
                animation: slideInRight 0.3s ease-out;
            `;
            notification.textContent = message;
            
            document.body.appendChild(notification);
            
            // Remove notification after 3 seconds
            setTimeout(() => {
                notification.style.animation = 'slideOutRight 0.3s ease-out';
                setTimeout(() => {
                    if (notification.parentElement) {
                        notification.remove();
                    }
                }, 300);
            }, 3000);
        }

        function toggleFilters() {
            // Implement advanced filters panel
            console.log('Toggle filters');
        }

        // Add hover effects to product cards
        document.querySelectorAll('.product-card-luxury').forEach(card => {
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
    </script>
</body>
</html>
