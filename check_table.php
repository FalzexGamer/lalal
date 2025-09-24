<?php
include('inc/dt.php');

echo "<h2>Check Agen Table Structure</h2>";

// Check table structure
$result = $conn->query("DESCRIBE agen");
if ($result) {
    echo "<h3>Table Structure:</h3>";
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
    echo "Error: " . $conn->error;
}

// Check sample data
echo "<h3>Sample Data (first 3 rows):</h3>";
$result = $conn->query("SELECT * FROM agen LIMIT 3");
if ($result) {
    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        $first = true;
        while ($row = $result->fetch_assoc()) {
            if ($first) {
                echo "<tr>";
                foreach ($row as $key => $value) {
                    echo "<th>" . $key . "</th>";
                }
                echo "</tr>";
                $first = false;
            }
            echo "<tr>";
            foreach ($row as $value) {
                echo "<td>" . (strlen($value) > 50 ? substr($value, 0, 50) . '...' : $value) . "</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "No data found in agen table";
    }
} else {
    echo "Error: " . $conn->error;
}
?>
