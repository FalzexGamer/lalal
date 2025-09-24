<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');

// Get product ID from URL
$product_id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

if ($product_id <= 0) {
    header('Location: products-luxury.php');
    exit();
}

// Check if product exists by ID
$query10a = mysqli_query($conn, "select count(recno) as checkitem from emasjualmz where recno='$product_id'");
if (!$query10a) {
    die("Database query failed: " . mysqli_error($conn));
}
$res10a = mysqli_fetch_array($query10a);
$checkitem = $res10a['checkitem'];

if ($checkitem == '0') {
    echo "<script>alert('Product not found with ID: $product_id'); window.location.href='products-luxury.php?page_no=1&type=ALL&search=ALL';</script>";
    exit();
}

// Fetch product details by ID
$query2a = mysqli_query($conn, "select * from emasjualmz where recno='$product_id'");
if (!$query2a) {
    die("Database query failed: " . mysqli_error($conn));
}
$res2a = mysqli_fetch_array($query2a);

$recno_nosiri = $res2a['recno'];
$nosiri = $res2a['nosiri'];
$design = $res2a['design'];
$jenis = $res2a['jenis'];
$berat = $res2a['berat'];
$design = $res2a['design'];
$marhun = $res2a['marhun'];
$subdesign = $res2a['subdesign'];
$category = $res2a['category'];

if ($design == '-') {
    $design = '';
}

$cawangan = $res2a['cawangan'];
$bakistok = $res2a['bakistok'];
$keterangan = $res2a['keterangan'];
$hargajualother = $res2a['hargajual'];
$costum_add = $res2a['costum_add'];
$modal = $res2a['hargamodal'];
$panjang = $res2a['panjang'];
$lebar = $res2a['lebar'];
$saiz = $res2a['saiz'];
$img = $res2a['img'];
$upah = $res2a['upah'];
$statusjual = $res2a['status'];
$subcategory = $res2a['subcategory'];
$hargajualcincinlelaki = $res2a['hargajual'];
$keterangan_produk = $res2a['keterangan'];

if ($keterangan_produk == '') {
    $keterangan_produk = 'No Description';
}

if ($keterangan_produk == '-') {
    $keterangan_produk = 'No Description';
}

// Get current gold prices
$harga_query = mysqli_query($conn, "SELECT * FROM hargaemasjualmz WHERE karat='22.0K'");
if (!$harga_query) {
    die("Gold price query failed: " . mysqli_error($conn));
}
$harga_data = mysqli_fetch_array($harga_query);
$harganew = isset($harga_data['hargajual']) ? $harga_data['hargajual'] : 0;
$hargapre = isset($harga_data['hargapre']) ? $harga_data['hargapre'] : 0;

// Get user session data for discount calculations
$nokp = isset($_SESSION['nokp']) ? $_SESSION['nokp'] : '-';
$akaun = isset($_SESSION['akaun']) ? $_SESSION['akaun'] : '';

// Initialize discount variables
$discomnew_p = 0;
$discompre_p = 0;

// Calculate prices based on product type
if ($jenis == 'PRELOVED') {
    $hargaemas = $hargapre;

    if ($nokp == '-') {
        $discompre_p = '0';
    }

    $hargaemas_diskaun = $hargapre - $discompre_p;
    $hargajual = $berat * $hargapre;
    $diskaungram = $discompre_p;
    $jumlahdiskaun = $diskaungram * $berat;
    $hargaasal = $berat * $hargaemas;
    if ($akaun == 'Membership') {
        $komisyen = (3 - $discompre_p) * $berat;
    }
    $hargajual_diskaun = $hargapre * $berat;

    if ($nokp == '-') {
        $hargaemas_diskaun = $hargapre;
        $hargajual = $berat * $hargapre;
        $diskaungram = '0';
        $jumlahdiskaun = $diskaungram * $berat;
        $hargaasal = $berat * $hargaemas;
        $komisyen = '0';
        $hargajual_diskaun = $hargapre * $berat;
    }
}

if ($jenis == 'NEW') {
    $hargaemas = $harganew;

    if ($nokp == '-') {
        $discomnew_p = '0';
    }

    $hargaemas_diskaun = $harganew - $discomnew_p;
    $hargajual = $berat * $harganew + $upah;
    $diskaungram = $discomnew_p;
    $jumlahdiskaun = $diskaungram * $berat;
    $hargaasal = $berat * $hargaemas;

    if ($akaun == 'Membership') {
        $komisyen = '0';
    }
    $hargajual_diskaun = $hargajual;

    if ($nokp == '-') {
        $hargaemas_diskaun = $harganew;
        $hargajual = $berat * $harganew + $upah;
        $diskaungram = $discomnew_p;
        $jumlahdiskaun = '0';
        $hargaasal = $berat * $hargaemas;
        $hargajual_diskaun = $hargajual;
    }
}

// Check image from table subdesign_image and check if subdesign and category is match, take last 4 image maximum, but if less than 4, take all image, image name in table is img
$query_image = mysqli_query($conn, "select * from subdesign_image where subdesign='$subdesign' and category='$marhun' order by recno desc limit 4");

// Initialize with default values
$img_p1 = 'noimage.jpg';
$img_p2 = 'noimage.jpg';
$img_p3 = 'noimage.jpg';
$img_p4 = 'noimage.jpg';

// Properly assign each image to its respective variable
$counter = 1;
while ($res_image = mysqli_fetch_array($query_image)) {
    if ($counter == 1)
        $img_p1 = $res_image['img'];
    if ($counter == 2)
        $img_p2 = $res_image['img'];
    if ($counter == 3)
        $img_p3 = $res_image['img'];
    if ($counter == 4)
        $img_p4 = $res_image['img'];
    $counter++;
}

// Update main product image if it's "noimage.jpg" and we have a better image
if ($img == "noimage.jpg" && $img_p1 != "noimage.jpg") {
    $update_img_query = mysqli_query($conn, "UPDATE emasjualmz SET img='$img_p1' WHERE nosiri='$nosiri' LIMIT 1");
    if ($update_img_query) {
        $img = $img_p1; // Update the variable for current page display
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="<?php echo htmlspecialchars($marhun); ?> - Premium Gold Jewelry - Lalal Gold">
    <meta name="keywords" content="gold jewelry, <?php echo htmlspecialchars($marhun); ?>, precious metals">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title><?php echo htmlspecialchars($marhun); ?> - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .product-details-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: var(--spacing-lg);
        }
        
        .product-details-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: var(--spacing-xl);
            margin-bottom: var(--spacing-xl);
        }
        
        @media (max-width: 768px) {
            .product-details-grid {
                grid-template-columns: 1fr;
                gap: var(--spacing-lg);
            }
        }
        
        .product-image-section {
            position: relative;
        }
        
        .main-image-container {
            margin-bottom: var(--spacing-md);
        }
        
        .product-main-image {
            width: 100%;
            height: 500px;
            object-fit: cover;
            border-radius: var(--radius-xl);
            box-shadow: var(--shadow-lg);
            background: var(--gradient-card);
            transition: var(--transition-normal);
        }
        
        .thumbnail-images {
            display: flex;
            gap: var(--spacing-sm);
            flex-wrap: wrap;
        }
        
        .thumbnail-item {
            width: 80px;
            height: 80px;
            border-radius: var(--radius-md);
            overflow: hidden;
            cursor: pointer;
            border: 2px solid transparent;
            transition: var(--transition-normal);
        }
        
        .thumbnail-item.active {
            border-color: var(--accent-gold);
        }
        
        .thumbnail-item:hover {
            border-color: var(--primary-green);
        }
        
        .thumbnail-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .product-info-section {
            display: flex;
            flex-direction: column;
            gap: var(--spacing-lg);
        }
        
        .product-title {
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-green);
            line-height: 1.2;
            margin-bottom: var(--spacing-sm);
        }
        
        .product-serial {
            font-size: 1rem;
            color: var(--gray-600);
            font-weight: 500;
            margin-bottom: var(--spacing-md);
        }
        
        .product-price-section {
            background: var(--gradient-gold);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            text-align: center;
            margin-bottom: var(--spacing-lg);
        }
        
        .price-label {
            font-size: 0.875rem;
            color: var(--primary-green);
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
        }
        
        .product-price {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--primary-green);
            margin-bottom: var(--spacing-sm);
        }
        
        .original-price {
            font-size: 1.125rem;
            color: var(--gray-500);
            text-decoration: line-through;
            margin-bottom: var(--spacing-xs);
        }
        
        .discount-info {
            font-size: 1rem;
            color: var(--accent-gold);
            font-weight: 600;
        }
        
        .product-specs {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: var(--spacing-md);
            margin-bottom: var(--spacing-lg);
        }
        
        .spec-item {
            background: var(--white);
            padding: var(--spacing-md);
            border-radius: var(--radius-lg);
            border: 1px solid var(--gray-200);
        }
        
        .spec-label {
            font-size: 0.875rem;
            color: var(--gray-600);
            font-weight: 500;
            margin-bottom: var(--spacing-xs);
        }
        
        .spec-value {
            font-size: 1.125rem;
            font-weight: 600;
            color: var(--primary-green);
        }
        
        .product-description {
            background: var(--white);
            padding: var(--spacing-lg);
            border-radius: var(--radius-xl);
            border: 1px solid var(--gray-200);
            margin-bottom: var(--spacing-lg);
        }
        
        .description-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: var(--primary-green);
            margin-bottom: var(--spacing-md);
        }
        
        .description-text {
            font-size: 1rem;
            color: var(--gray-700);
            line-height: 1.6;
        }
        
        .action-buttons {
            display: flex;
            gap: var(--spacing-md);
            margin-bottom: var(--spacing-lg);
        }
        
        .btn-primary-luxury {
            flex: 1;
            background: var(--gradient-gold);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-md) var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition-normal);
            text-decoration: none;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
        }
        
        .btn-primary-luxury:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-gold);
        }
        
        .btn-secondary-luxury {
            flex: 1;
            background: var(--white);
            color: var(--primary-green);
            border: 2px solid var(--accent-gold);
            padding: var(--spacing-md) var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition-normal);
            text-decoration: none;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
        }
        
        .btn-secondary-luxury:hover {
            background: var(--accent-gold);
            transform: translateY(-2px);
        }
        
        .back-button {
            display: inline-flex;
            align-items: center;
            gap: var(--spacing-sm);
            color: var(--gray-600);
            text-decoration: none;
            font-weight: 500;
            margin-bottom: var(--spacing-lg);
            transition: var(--transition-normal);
        }
        
        .back-button:hover {
            color: var(--primary-green);
        }
        
        .breadcrumb {
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
            margin-bottom: var(--spacing-lg);
            font-size: 0.875rem;
            color: var(--gray-600);
        }
        
        .breadcrumb a {
            color: var(--gray-600);
            text-decoration: none;
            transition: var(--transition-normal);
        }
        
        .breadcrumb a:hover {
            color: var(--primary-green);
        }
        
        .breadcrumb-separator {
            color: var(--gray-400);
        }
        
        .loading-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.9);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 9999;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition-normal);
        }
        
        .loading-overlay.show {
            opacity: 1;
            visibility: visible;
        }
        
        .spinner {
            width: 40px;
            height: 40px;
            border: 4px solid var(--gray-200);
            border-top: 4px solid var(--accent-gold);
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <!-- Loading Overlay -->
    <div class="loading-overlay" id="loadingOverlay">
        <div class="spinner"></div>
    </div>

    <!-- Header -->
 

    <div class="product-details-container">
        <!-- Breadcrumb -->
        <div class="breadcrumb">
            <a href="index-luxury.php">Home</a>
            <span class="breadcrumb-separator">/</span>
            <a href="products-luxury.php">Products</a>
            <span class="breadcrumb-separator">/</span>
            <span><?php echo htmlspecialchars($marhun); ?></span>
        </div>

        <!-- Back Button -->
        <a href="products-luxury.php" class="back-button">
            <i class="fas fa-arrow-left"></i>
            Back to Products
        </a>

        <div class="product-details-grid">
            <!-- Product Image Section -->
            <div class="product-image-section">
                <div class="main-image-container">
                    <img src="<?php echo !empty($img) && $img != 'noimage.jpg' ? 'product_image/' . $img : 'product_image/noimage.jpg'; ?>" 
                         alt="<?php echo htmlspecialchars($marhun); ?>" 
                         class="product-main-image" id="mainImage">
                </div>
                
                <!-- Thumbnail Images -->
                <div class="thumbnail-images">
                    <div class="thumbnail-item <?php echo $img != 'noimage.jpg' ? 'active' : ''; ?>" onclick="changeMainImage('<?php echo !empty($img) && $img != 'noimage.jpg' ? 'product_image/' . $img : 'product_image/noimage.jpg'; ?>')">
                        <img src="<?php echo !empty($img) && $img != 'noimage.jpg' ? 'product_image/' . $img : 'product_image/noimage.jpg'; ?>" alt="Main Image">
                    </div>
                    <?php if ($img_p1 != 'noimage.jpg'): ?>
                    <div class="thumbnail-item" onclick="changeMainImage('product_image/<?php echo $img_p1; ?>')">
                        <img src="product_image/<?php echo $img_p1; ?>" alt="Product Image 1">
                    </div>
                    <?php endif; ?>
                    <?php if ($img_p2 != 'noimage.jpg'): ?>
                    <div class="thumbnail-item" onclick="changeMainImage('product_image/<?php echo $img_p2; ?>')">
                        <img src="product_image/<?php echo $img_p2; ?>" alt="Product Image 2">
                    </div>
                    <?php endif; ?>
                    <?php if ($img_p3 != 'noimage.jpg'): ?>
                    <div class="thumbnail-item" onclick="changeMainImage('product_image/<?php echo $img_p3; ?>')">
                        <img src="product_image/<?php echo $img_p3; ?>" alt="Product Image 3">
                    </div>
                    <?php endif; ?>
                    <?php if ($img_p4 != 'noimage.jpg'): ?>
                    <div class="thumbnail-item" onclick="changeMainImage('product_image/<?php echo $img_p4; ?>')">
                        <img src="product_image/<?php echo $img_p4; ?>" alt="Product Image 4">
                    </div>
                    <?php endif; ?>
                </div>
            </div>

            <!-- Product Info Section -->
            <div class="product-info-section">
                <h1 class="product-title"><?php echo htmlspecialchars($marhun); ?></h1>
                <div class="product-serial">Serial: <?php echo htmlspecialchars($nosiri); ?></div>

                <!-- Price Section -->
                <div class="product-price-section">
                    <div class="price-label">Current Price</div>
                    <div class="product-price">RM <?php echo number_format($hargajual, 2); ?></div>
                    <?php if (isset($hargaasal) && $hargaasal > $hargajual): ?>
                        <div class="original-price">Original: RM <?php echo number_format($hargaasal, 2); ?></div>
                        <div class="discount-info">You Save: RM <?php echo number_format($hargaasal - $hargajual, 2); ?></div>
                    <?php endif; ?>
                </div>

                <!-- Product Specifications -->
                <div class="product-specs">
                    <div class="spec-item">
                        <div class="spec-label">Weight</div>
                        <div class="spec-value"><?php echo $berat; ?> gm</div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Type</div>
                        <div class="spec-value"><?php echo htmlspecialchars($jenis); ?></div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Workmanship</div>
                        <div class="spec-value">RM <?php echo number_format($upah, 2); ?></div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Gold Price</div>
                        <div class="spec-value">RM <?php echo number_format($hargaemas, 2); ?>/gm</div>
                    </div>
                </div>

                <!-- Product Description -->
                <div class="product-description">
                    <h3 class="description-title">Product Details</h3>
                    <div class="description-text">
                        <?php if (!empty($design)): ?>
                            <p><strong>Design:</strong> <?php echo htmlspecialchars($design); ?></p>
                        <?php endif; ?>
                        <?php if (!empty($subdesign)): ?>
                            <p><strong>Sub Design:</strong> <?php echo htmlspecialchars($subdesign); ?></p>
                        <?php endif; ?>
                        <p><?php echo htmlspecialchars($keterangan_produk); ?></p>
                        <p>Weight: <?php echo $berat; ?> grams of pure 22K gold</p>
                        <p>Workmanship: RM <?php echo number_format($upah, 2); ?> (includes crafting and finishing)</p>
                        <?php if (!empty($panjang)): ?>
                            <p><strong>Length:</strong> <?php echo $panjang; ?> cm</p>
                        <?php endif; ?>
                        <?php if (!empty($lebar)): ?>
                            <p><strong>Width:</strong> <?php echo $lebar; ?> cm</p>
                        <?php endif; ?>
                        <?php if (!empty($saiz)): ?>
                            <p><strong>Size:</strong> <?php echo $saiz; ?></p>
                        <?php endif; ?>
                    </div>
                </div>

                <!-- Action Buttons -->
                <div class="action-buttons">
                    <button class="btn-primary-luxury" onclick="addToCart(<?php echo $recno_nosiri; ?>)">
                        <i class="fas fa-shopping-cart"></i>
                        Add to Cart
                    </button>
                    <a href="products-luxury.php" class="btn-secondary-luxury">
                        <i class="fas fa-arrow-left"></i>
                        Continue Shopping
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer-luxury">
        <div class="footer-content">
            <p>&copy; 2024 Lalal Gold. All rights reserved.</p>
        </div>
    </footer>

    <script>
        function changeMainImage(imageSrc) {
            const mainImage = document.getElementById('mainImage');
            const thumbnails = document.querySelectorAll('.thumbnail-item');
            
            // Update main image
            mainImage.src = imageSrc;
            
            // Update active thumbnail
            thumbnails.forEach(thumb => {
                thumb.classList.remove('active');
                if (thumb.querySelector('img').src === imageSrc) {
                    thumb.classList.add('active');
                }
            });
        }
        
        function addToCart(productId) {
            // Show loading overlay
            document.getElementById('loadingOverlay').classList.add('show');
            
            // Create form data
            const formData = new FormData();
            formData.append('product_id', productId);
            formData.append('action', 'add_to_cart');
            
            // Send AJAX request
            fetch('add_to_cart.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                // Hide loading overlay
                document.getElementById('loadingOverlay').classList.remove('show');
                
                if (data.success) {
                    // Show success message
                    alert('Product added to cart successfully!');
                    // Optionally redirect to cart page
                    // window.location.href = 'cart.php';
                } else {
                    // Show error message
                    alert(data.message || 'Failed to add product to cart. Please try again.');
                }
            })
            .catch(error => {
                // Hide loading overlay
                document.getElementById('loadingOverlay').classList.remove('show');
                console.error('Error:', error);
                alert('An error occurred. Please try again.');
            });
        }
        
        // Hide loading overlay when page loads
        window.addEventListener('load', function() {
            document.getElementById('loadingOverlay').classList.remove('show');
        });
    </script>
</body>
</html>
