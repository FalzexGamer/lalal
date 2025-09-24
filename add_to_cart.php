<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

// Handle preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}


// Include database connection
include('inc/dt.php');
include('inc/sesi.php');

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    echo json_encode([
        'success' => false,
        'message' => 'User not logged in'
    ]);
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get JSON input
    $input = json_decode(file_get_contents('php://input'), true);
    
    if (!$input) {
        echo json_encode([
            'success' => false,
            'message' => 'Invalid input data'
        ]);
        exit();
    }
    
    $product_id = isset($input['product_id']) ? (int)$input['product_id'] : 0;
    $quantity = isset($input['quantity']) ? (int)$input['quantity'] : 1;
    $user_id = $_SESSION['user_id'];
    $username = $_SESSION['username'];
    
    if ($product_id <= 0) {
        echo json_encode([
            'success' => false,
            'message' => 'Invalid product ID'
        ]);
        exit();
    }
    
    // Get product details
    $product_query = mysqli_query($conn, "SELECT * FROM emasjualmz WHERE recno = $product_id AND status = '0'");
    
    if (mysqli_num_rows($product_query) === 0) {
        echo json_encode([
            'success' => false,
            'message' => 'Product not found'
        ]);
        exit();
    }
    
    $product = mysqli_fetch_array($product_query);
    
    // Check if product already in cart
    $cart_query = mysqli_query($conn, "SELECT * FROM cart WHERE username = '$username' AND product_id = $product_id");
    
    if (mysqli_num_rows($cart_query) > 0) {
        // Update quantity
        $cart_item = mysqli_fetch_array($cart_query);
        $new_quantity = $cart_item['quantity'] + $quantity;
        
        $update_query = mysqli_query($conn, "UPDATE cart SET quantity = $new_quantity WHERE recno = " . $cart_item['recno']);
        
        if ($update_query) {
            echo json_encode([
                'success' => true,
                'message' => 'Cart updated successfully',
                'quantity' => $new_quantity
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Failed to update cart'
            ]);
        }
    } else {
        // Add new item to cart
        $insert_query = mysqli_query($conn, "INSERT INTO cart (username, product_id, product_name, price, quantity, berat, gambar) 
                                           VALUES ('$username', $product_id, '" . mysqli_real_escape_string($conn, $product['nama']) . "', 
                                                   " . $product['harga'] . ", $quantity, " . $product['berat'] . ", 
                                                   '" . mysqli_real_escape_string($conn, $product['gambar']) . "')");
        
        if ($insert_query) {
            echo json_encode([
                'success' => true,
                'message' => 'Product added to cart successfully',
                'quantity' => $quantity
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Failed to add product to cart'
            ]);
        }
    }
} else {
    echo json_encode([
        'success' => false,
        'message' => 'Invalid request method'
    ]);
}
?>


