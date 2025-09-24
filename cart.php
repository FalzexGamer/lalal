<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');
extract($_REQUEST);

// Generate unique bill ID
$uniqid = uniqid();
$rand_start = rand(1,5);
$rand_8_char = substr($uniqid,$rand_start,8);
$record_id = $rand_8_char; 	
$bill_id_update = "INV_" . $record_id;

// Get cart items
$query = mysqli_query($conn, "SELECT * FROM mycart WHERE username='$username' AND status='UNPAID'");
$cart_items = [];
$total_amount = 0;

while($res = mysqli_fetch_array($query)) {
    $nosiri = $res['nosiri'];
    $design = $res['design'];
    $bill_id = $res['bill_id'];
    
    if($bill_id == "-") {
        $sql = "UPDATE mycart SET bill_id='$bill_id_update' WHERE username='$username' AND status='UNPAID'";
        $conn->query($sql);
    }
    
    $query2 = mysqli_query($conn, "SELECT * FROM emasjualmz WHERE nosiri='$nosiri'");
    $res12 = mysqli_fetch_array($query2);
    
    if($res12) {
        $nosiri = $res12['nosiri'];
        $marhun = $res12['marhun'];
        $berat = $res12['berat'];	
        $minupah = $res12['minupah'];									
        $upah = $res12['upah'];		
        $design = $res12['design'];
        $subdesign = $res12['subdesign'];
        
        // Get image
        $query1z = mysqli_query($conn, "SELECT count(recno) as bil_p, img from image_parameter where subdesign='$subdesign' and (dari<='$berat' and hingga>='$berat')");
        $res1z = mysqli_fetch_array($query1z);
        $bil_p = $res1z['bil_p'];
        
        if($bil_p == "0") {
            $img_p = "noimage.jpg";
        } else {
            $img_p = $res1z['img'];
        }
        
        $hargajualcart = $berat * $harganew + $upah;
        $total_amount += $hargajualcart;
        
        $cart_items[] = [
            'nosiri' => $nosiri,
            'marhun' => $marhun,
            'berat' => $berat,
            'hargajualcart' => $hargajualcart,
            'img_p' => $img_p
        ];
    }
}

// Get customer address
$query1z = mysqli_query($conn, "SELECT count(recno) as biladdress, nama, alamat_jalan, poskod, bandar, negeri, nofon from alamat_customer where username='$username' and setdefault='DEFAULT'");
$res1z = mysqli_fetch_array($query1z);
$biladdress = $res1z['biladdress'];
$nama_add = $res1z['nama'];
$alamat_jalan = $res1z['alamat_jalan'];
$poskod = $res1z['poskod'];
$bandar = $res1z['bandar'];
$negeri = $res1z['negeri'];
$nofon = $res1z['nofon'];

$postage = 7;
$fee = 1;
$grand_total = $total_amount + $postage + $fee;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Your Luxury Gold Cart - Lalal Gold">
    <meta name="keywords" content="gold cart, luxury jewelry, premium gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Your Luxury Cart - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .cart-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .cart-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .cart-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .cart-item {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-md);
            transition: var(--transition-normal);
        }
        
        .cart-item:hover {
            border-color: var(--accent-gold);
            transform: translateY(-2px);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.1);
        }
        
        .cart-item-image {
            width: 80px;
            height: 80px;
            border-radius: var(--radius-lg);
            object-fit: cover;
            border: 2px solid var(--accent-gold);
        }
        
        .cart-item-details h6 {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
            font-size: 0.9rem;
        }
        
        .cart-item-weight {
            color: var(--gray-300);
            font-size: 0.8rem;
            margin-bottom: var(--spacing-xs);
        }
        
        .cart-item-price {
            color: var(--accent-gold);
            font-weight: 700;
            font-size: 1.1rem;
        }
        
        .quantity-controls {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid var(--accent-gold);
            border-radius: var(--radius-full);
            padding: var(--spacing-xs);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .quantity-btn {
            background: var(--accent-gold);
            color: var(--primary-green);
            border: none;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--transition-normal);
        }
        
        .quantity-btn:hover {
            background: var(--accent-gold-light);
            transform: scale(1.1);
        }
        
        .quantity-input {
            background: transparent;
            border: none;
            color: var(--accent-gold);
            text-align: center;
            width: 40px;
            font-weight: 600;
        }
        
        .delete-btn {
            color: #ff6b6b;
            background: none;
            border: none;
            font-size: 0.8rem;
            cursor: pointer;
            transition: var(--transition-normal);
            margin-top: var(--spacing-xs);
        }
        
        .delete-btn:hover {
            color: #ff4757;
        }
        
        .add-more-btn {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-md);
            border-radius: var(--radius-lg);
            font-weight: 600;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            transition: var(--transition-normal);
            margin: var(--spacing-lg) 0;
        }
        
        .add-more-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
            color: var(--primary-green);
        }
        
        .summary-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-md);
        }
        
        .summary-title {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-md);
            font-size: 1.1rem;
        }
        
        .summary-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: var(--spacing-sm) 0;
            border-bottom: 1px solid rgba(255, 215, 0, 0.1);
        }
        
        .summary-row:last-child {
            border-bottom: none;
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--accent-gold);
        }
        
        .summary-label {
            color: var(--gray-300);
        }
        
        .summary-value {
            color: var(--accent-gold);
            font-weight: 600;
        }
        
        .address-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-md);
        }
        
        .address-title {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-md);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .address-content {
            color: var(--gray-300);
            line-height: 1.6;
            margin-bottom: var(--spacing-md);
        }
        
        .change-address-btn {
            color: var(--accent-gold);
            text-decoration: none;
            font-size: 0.9rem;
            transition: var(--transition-normal);
        }
        
        .change-address-btn:hover {
            color: var(--accent-gold-light);
        }
        
        .checkout-btn {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 700;
            font-size: 1.1rem;
            width: 100%;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
        }
        
        .checkout-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 40px rgba(255, 215, 0, 0.4);
            color: var(--primary-green);
        }
        
        .empty-cart {
            text-align: center;
            padding: var(--spacing-2xl);
            color: var(--gray-300);
        }
        
        .empty-cart i {
            font-size: 4rem;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-lg);
        }
        
        .empty-cart h3 {
            color: var(--accent-gold);
            margin-bottom: var(--spacing-md);
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .cart-item {
                padding: var(--spacing-md);
            }
            
            .cart-item-image {
                width: 60px;
                height: 60px;
            }
            
            .cart-title {
                font-size: 1.3rem;
            }
        }
    </style>
</head>

<body>
    <div class="cart-container">
        <!-- Header -->
        <header class="cart-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="products-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="cart-title">Your Cart</h1>
                </div>
                <div class="cart-count">
                    <span style="color: var(--accent-gold); font-weight: 600;"><?php echo count($cart_items); ?> items</span>
                </div>
            </div>
        </header>

        <div style="padding: var(--spacing-lg);">
            <?php if (empty($cart_items)): ?>
            <!-- Empty Cart -->
            <div class="empty-cart">
                <i class="fas fa-shopping-bag"></i>
                <h3>Your cart is empty</h3>
                <p>Start shopping for beautiful gold jewelry</p>
                <a href="products-luxury.php" class="add-more-btn">
                    <i class="fas fa-plus"></i>
                    Browse Products
                </a>
            </div>
            <?php else: ?>
            
            <!-- Cart Items -->
            <?php foreach ($cart_items as $item): ?>
            <div class="cart-item">
                <div class="d-flex align-items-center gap-3">
                    <img src="product_image/<?php echo $item['img_p']; ?>" 
                         alt="<?php echo htmlspecialchars($item['marhun']); ?>" 
                         class="cart-item-image">
                    <div class="cart-item-details flex-grow-1">
                        <h6>SKU: <?php echo $item['nosiri']; ?>
                            <?php if($item['marhun'] != "-"): ?>
                            - <?php echo htmlspecialchars($item['marhun']); ?>
                            <?php endif; ?>
                        </h6>
                        <div class="cart-item-weight">Weight: <?php echo $item['berat']; ?> gm</div>
                        <div class="cart-item-price">RM <?php echo number_format($item['hargajualcart'], 2); ?></div>
                    </div>
                    <div class="d-flex flex-column align-items-end gap-2">
                        <div class="quantity-controls">
                            <button class="quantity-btn" onclick="updateQuantity(<?php echo $item['nosiri']; ?>, -1)">
                                <i class="fas fa-minus"></i>
                            </button>
                            <input type="text" class="quantity-input" value="1" readonly>
                            <button class="quantity-btn" onclick="updateQuantity(<?php echo $item['nosiri']; ?>, 1)">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                        <button class="delete-btn" onclick="removeItem(<?php echo $item['nosiri']; ?>)">
                            <i class="fas fa-trash"></i> Remove
                        </button>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>

            <!-- Add More Items -->
            <a href="products-luxury.php" class="add-more-btn">
                <i class="fas fa-plus"></i>
                Add More Jewelry
            </a>

            <!-- Order Summary -->
            <div class="summary-card">
                <h5 class="summary-title">
                    <i class="fas fa-receipt"></i>
                    Order Summary
                </h5>
                <div class="summary-row">
                    <span class="summary-label">Subtotal</span>
                    <span class="summary-value">RM <?php echo number_format($total_amount, 2); ?></span>
                </div>
                <div class="summary-row">
                    <span class="summary-label">Postage</span>
                    <span class="summary-value">RM <?php echo number_format($postage, 2); ?></span>
                </div>
                <div class="summary-row">
                    <span class="summary-label">Transaction Fee</span>
                    <span class="summary-value">RM <?php echo number_format($fee, 2); ?></span>
                </div>
                <div class="summary-row">
                    <span class="summary-label">Grand Total</span>
                    <span class="summary-value">RM <?php echo number_format($grand_total, 2); ?></span>
                </div>
            </div>

            <!-- Delivery Address -->
            <?php if($biladdress != "0"): ?>
            <div class="address-card">
                <h5 class="address-title">
                    <i class="fas fa-map-marker-alt"></i>
                    Delivery Address
                </h5>
                <div class="address-content">
                    <?php echo htmlspecialchars($nama_add); ?><br>
                    <?php echo htmlspecialchars($alamat_jalan); ?><br>
                    <?php echo htmlspecialchars($poskod); ?> <?php echo htmlspecialchars($bandar); ?><br>
                    <?php echo htmlspecialchars($negeri); ?>
                </div>
                <a href="register_address.php" class="change-address-btn">
                    <i class="fas fa-edit"></i> Change Address
                </a>
            </div>
            <?php endif; ?>
            <?php endif; ?>
        </div>

        <!-- Fixed Bottom Checkout -->
        <div class="fixed-bottom p-3" style="background: rgba(1, 50, 32, 0.95); backdrop-filter: blur(20px); border-top: 1px solid rgba(255, 215, 0, 0.2);">
            <?php if($biladdress == "0"): ?>
            <a href="register_address.php" class="checkout-btn">
                <i class="fas fa-plus"></i>
                Add Delivery Address
            </a>
            <?php else: ?>
            <form action="payment-generate-gateway-call.php" method="post" enctype="multipart/form-data" class="mb-0">
                <input type="hidden" name="order_no" value="<?php echo $bill_id_update; ?>">
                <input type="hidden" name="buyer_ic_no" value="<?php echo $nokp; ?>">
                <input type="hidden" name="order_amount" value="<?php echo $grand_total; ?>">
                <input type="hidden" name="buyer_name" value="<?php echo $name; ?>">
                <input type="hidden" name="buyer_email" value="<?php echo $email; ?>">
                <input type="hidden" name="buyer_tel" value="<?php echo $nofon; ?>">
                
                <button type="submit" class="checkout-btn">
                    <i class="fas fa-credit-card"></i>
                    Pay RM <?php echo number_format($grand_total, 2); ?>
                </button>
            </form>
            <?php endif; ?>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        function updateQuantity(nosiri, change) {
            const quantityInput = event.target.closest('.quantity-controls').querySelector('.quantity-input');
            const currentQuantity = parseInt(quantityInput.value);
            const newQuantity = currentQuantity + change;
            
            // Prevent negative quantities
            if (newQuantity < 1) {
                // If quantity would be 0, remove the item instead
                removeItem(nosiri);
                return;
            }
            
            // Show loading state
            const updateBtn = event.target.closest('.quantity-btn');
            const originalContent = updateBtn.innerHTML;
            updateBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i>';
            updateBtn.disabled = true;
            
            // Send AJAX request to update quantity
            fetch('update_cart_quantity.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    nosiri: nosiri,
                    username: '<?php echo $username; ?>',
                    quantity: newQuantity
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Update the quantity input
                    quantityInput.value = newQuantity;
                    
                    // Update the price if needed (you might want to recalculate totals)
                    // For now, just reload the page to update totals
                    window.location.reload();
                } else {
                    // Show error message
                    alert(data.message || 'Failed to update quantity. Please try again.');
                    updateBtn.innerHTML = originalContent;
                    updateBtn.disabled = false;
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred. Please try again.');
                updateBtn.innerHTML = originalContent;
                updateBtn.disabled = false;
            });
        }
        
        function removeItem(nosiri) {
            if (confirm('Are you sure you want to remove this item?')) {
                // Show loading state
                const removeBtn = event.target.closest('.delete-btn');
                const originalText = removeBtn.innerHTML;
                removeBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Removing...';
                removeBtn.disabled = true;
                
                // Send AJAX request to remove item
                fetch('remove_from_cart.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        nosiri: nosiri,
                        username: '<?php echo $username; ?>'
                    })
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        // Remove the cart item from DOM with animation
                        const cartItem = removeBtn.closest('.cart-item');
                        cartItem.style.transition = 'all 0.3s ease';
                        cartItem.style.opacity = '0';
                        cartItem.style.transform = 'translateX(-100%)';
                        
                        setTimeout(() => {
                            cartItem.remove();
                            // Reload page to update totals and item count
                            window.location.reload();
                        }, 300);
                    } else {
                        // Show error message
                        alert(data.message || 'Failed to remove item. Please try again.');
                        removeBtn.innerHTML = originalText;
                        removeBtn.disabled = false;
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('An error occurred. Please try again.');
                    removeBtn.innerHTML = originalText;
                    removeBtn.disabled = false;
                });
            }
        }
        
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const cartItems = document.querySelectorAll('.cart-item');
            cartItems.forEach((item, index) => {
                item.style.animationDelay = `${index * 0.1}s`;
                item.classList.add('animate-fade-in-up');
            });
        });
    </script>
</body>
</html>