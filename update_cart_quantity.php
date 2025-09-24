<?php
date_default_timezone_set("Asia/Kuala_Lumpur");
include('inc/dt.php');
include('inc/sesi.php');

// Set content type to JSON
header('Content-Type: application/json');

// Check if request method is POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['success' => false, 'message' => 'Invalid request method']);
    exit();
}

// Get JSON input
$input = json_decode(file_get_contents('php://input'), true);

if (!$input) {
    echo json_encode(['success' => false, 'message' => 'Invalid JSON input']);
    exit();
}

// Get parameters
$nosiri = isset($input['nosiri']) ? $input['nosiri'] : '';
$username = isset($input['username']) ? $input['username'] : '';
$quantity = isset($input['quantity']) ? (int)$input['quantity'] : 0;

// Validate parameters
if (empty($nosiri) || empty($username) || $quantity < 1) {
    echo json_encode(['success' => false, 'message' => 'Invalid parameters']);
    exit();
}

try {
    // Update quantity in cart
    $query = "UPDATE mycart SET quantity = ? WHERE nosiri = ? AND username = ? AND status = 'UNPAID'";
    $stmt = mysqli_prepare($conn, $query);
    
    if (!$stmt) {
        throw new Exception('Database prepare failed: ' . mysqli_error($conn));
    }
    
    mysqli_stmt_bind_param($stmt, 'iss', $quantity, $nosiri, $username);
    $result = mysqli_stmt_execute($stmt);
    
    if (!$result) {
        throw new Exception('Database execution failed: ' . mysqli_error($conn));
    }
    
    $affected_rows = mysqli_stmt_affected_rows($stmt);
    mysqli_stmt_close($stmt);
    
    if ($affected_rows > 0) {
        echo json_encode([
            'success' => true, 
            'message' => 'Quantity updated successfully',
            'affected_rows' => $affected_rows
        ]);
    } else {
        echo json_encode([
            'success' => false, 
            'message' => 'Item not found or no changes made'
        ]);
    }
    
} catch (Exception $e) {
    echo json_encode([
        'success' => false, 
        'message' => 'Database error: ' . $e->getMessage()
    ]);
}
?>
