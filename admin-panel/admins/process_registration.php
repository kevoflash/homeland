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

// Get form data
$tenantName = $_POST['tenantName'];
$companyName = $_POST['companyName'];
$officeFloorNumber = $_POST['officeFloorNumber'];
$numberOfEmployees = $_POST['numberOfEmployees'];
$startDate = $_POST['startDate'];
$endDate = $_POST['endDate'];
$rent = $_POST['rent'];
$deposit = $_POST['deposit'];
$balance = $rent - $deposit;

// Insert data into the database
$sql = "INSERT INTO tenants (tenantName, companyName, officeFloorNumber, numberOfEmployees, startDate, endDate, rent, deposit, balance)
VALUES ('$tenantName', '$companyName', $officeFloorNumber, $numberOfEmployees, '$startDate', '$endDate', $rent, $deposit, $balance)";

if ($conn->query($sql) === TRUE) {
    echo "Tenant registered successfully.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
