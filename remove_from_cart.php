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

// Validate parameters
if (empty($nosiri) || empty($username)) {
    echo json_encode(['success' => false, 'message' => 'Missing required parameters']);
    exit();
}

try {
    // Remove item from cart
    $query = "DELETE FROM mycart WHERE nosiri = ? AND username = ? AND status = 'UNPAID'";
    $stmt = mysqli_prepare($conn, $query);
    
    if (!$stmt) {
        throw new Exception('Database prepare failed: ' . mysqli_error($conn));
    }
    
    mysqli_stmt_bind_param($stmt, 'ss', $nosiri, $username);
    $result = mysqli_stmt_execute($stmt);
    
    if (!$result) {
        throw new Exception('Database execution failed: ' . mysqli_error($conn));
    }
    
    $affected_rows = mysqli_stmt_affected_rows($stmt);
    mysqli_stmt_close($stmt);
    
    if ($affected_rows > 0) {
        echo json_encode([
            'success' => true, 
            'message' => 'Item removed successfully',
            'affected_rows' => $affected_rows
        ]);
    } else {
        echo json_encode([
            'success' => false, 
            'message' => 'Item not found or already removed'
        ]);
    }
    
} catch (Exception $e) {
    echo json_encode([
        'success' => false, 
        'message' => 'Database error: ' . $e->getMessage()
    ]);
}
?>
