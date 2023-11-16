<?php require "../layouts/header.php"; ?>  
<?php require "../../config/config.php"; ?>

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

<html>
<head>
    <title>Tenant Registration</title>
</head>
<body>
    <h2>Tenant Registration</h2>
    <form action="process_registration.php" method="POST">
        <label>Tenant Name:</label>
        <input type="text" name="tenantName" required><br>

        <label>Company Name:</label>
        <input type="text" name="companyName" required><br>

        <label>Office Floor Number:</label>
        <input type="number" name="officeFloorNumber" required><br>

        <label>Number of Employees:</label>
        <input type="number" name="numberOfEmployees" required><br>

        <label>Start Date:</label>
        <input type="date" name="startDate" required><br>

        <label>End Date:</label>
        <input type="date" name="endDate" required><br>

        <label>Rent:</label>
        <input type="text" name="rent" required><br>

        <label>Deposit:</label>
        <input type="text" name="deposit" required><br>

        <button type="submit">Register Tenant</button>
    </form>
</body>

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
