<?php
// Debug script to check login issues
include('inc/dt.php');
include('inc/security.php');

echo "<h2>Debug Login System</h2>";

// Test database connection
echo "<h3>1. Database Connection Test</h3>";
if ($conn) {
    echo "✅ Database connection successful<br>";
    echo "Server info: " . $conn->server_info . "<br>";
} else {
    echo "❌ Database connection failed<br>";
    exit;
}

// Check agen table structure
echo "<h3>2. Agen Table Structure</h3>";
$result = $conn->query("DESCRIBE agen");
if ($result) {
    echo "<table border='1'>";
    echo "<tr><th>Field</th><th>Type</th><th>Null</th><th>Key</th><th>Default</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['Field'] . "</td>";
        echo "<td>" . $row['Type'] . "</td>";
        echo "<td>" . $row['Null'] . "</td>";
        echo "<td>" . $row['Key'] . "</td>";
        echo "<td>" . $row['Default'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "❌ Error checking table structure: " . $conn->error . "<br>";
}

// Check if there are any users in the agen table
echo "<h3>3. Sample Users in Agen Table</h3>";
$result = $conn->query("SELECT id, username, nofon, email, password, password_hash FROM agen LIMIT 5");
if ($result) {
    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Username</th><th>Phone</th><th>Email</th><th>Has Password</th><th>Has Hash</th></tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['username'] . "</td>";
            echo "<td>" . $row['nofon'] . "</td>";
            echo "<td>" . $row['email'] . "</td>";
            echo "<td>" . (!empty($row['password']) ? 'Yes' : 'No') . "</td>";
            echo "<td>" . (!empty($row['password_hash']) ? 'Yes' : 'No') . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "❌ No users found in agen table<br>";
    }
} else {
    echo "❌ Error querying users: " . $conn->error . "<br>";
}

// Test security class
echo "<h3>4. Security Class Test</h3>";
$security = initSecurity($conn);
echo "✅ Security class initialized<br>";

// Test password hashing
$test_password = "test123";
$hash = $security->hashPassword($test_password);
echo "✅ Password hashing works: " . substr($hash, 0, 20) . "...<br>";

// Test password verification
$verify = $security->verifyPassword($test_password, $hash);
echo "✅ Password verification: " . ($verify ? 'Works' : 'Failed') . "<br>";

// Test email validation
$test_email = "test@example.com";
$email_valid = $security->validateEmail($test_email);
echo "✅ Email validation: " . ($email_valid ? 'Works' : 'Failed') . "<br>";

// Test CSRF token
$csrf_token = $security->generateCSRFToken();
echo "✅ CSRF token generated: " . substr($csrf_token, 0, 20) . "...<br>";

// Check if login_attempts table exists
echo "<h3>5. Security Tables Check</h3>";
$result = $conn->query("SHOW TABLES LIKE 'login_attempts'");
if ($result && $result->num_rows > 0) {
    echo "✅ login_attempts table exists<br>";
} else {
    echo "❌ login_attempts table missing<br>";
}

echo "<h3>6. Test Login Query</h3>";
// Test the actual login query with a sample username
$test_identifier = "test"; // Change this to a username that exists in your database
$sql = "SELECT * FROM agen WHERE (email = ? OR username = ? OR nofon = ?) LIMIT 1";
$stmt = $conn->prepare($sql);
if ($stmt) {
    $stmt->bind_param("sss", $test_identifier, $test_identifier, $test_identifier);
    $stmt->execute();
    $result = $stmt->get_result();
    echo "✅ Login query prepared and executed successfully<br>";
    echo "Found " . $result->num_rows . " matching records for identifier: " . $test_identifier . "<br>";
} else {
    echo "❌ Error preparing login query: " . $conn->error . "<br>";
}

echo "<h3>Debug Complete</h3>";
echo "<p>Check the output above to identify any issues with the login system.</p>";
?>
