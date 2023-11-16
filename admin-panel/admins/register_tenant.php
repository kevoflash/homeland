<!DOCTYPE html>
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
</html>
