<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "homeland";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch and display tenant data
$sql = "SELECT * FROM tenants";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h2>Tenant List</h2>";
    echo "<table border='1'>
            <tr>
                <th>Tenant Name</th>
                <th>Company Name</th>
                <th>Office Floor Number</th>
                <th>Number of Employees</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Rent</th>
                <th>Deposit</th>
                <th>Balance</th>
            </tr>";
    
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>".$row['tenantName']."</td>
                <td>".$row['companyName']."</td>
                <td>".$row['officeFloorNumber']."</td>
                <td>".$row['numberOfEmployees']."</td>
                <td>".$row['startDate']."</td>
                <td>".$row['endDate']."</td>
                <td>".$row['rent']."</td>
                <td>".$row['deposit']."</td>
                <td>".$row['balance']."</td>
            </tr>";
    }
    echo "</table>";
} else {
    echo "No tenants found.";
}

$conn->close();
?>
