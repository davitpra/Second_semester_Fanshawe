<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab 3 - Jose David Prado</title>
</head>

<body>
    <!-- Form goes here -->

    <form action="submit.php" method="post">
        <!-- First Name -->
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName">
        <br>

        <!-- Last Name -->
        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName">
        <br>

        <!-- City -->
        <label for="city">City:</label>
        <input type="text" name="city">
        <br>

        <!-- Province -->
        <label for="province">Dropdown:</label>
        <select name="province">
            <option value="Ontario">Ontario</option>
            <option value="Alberta">Alberta</option>
            <option value="Manitoba">Manitoba</option>
        </select>
        <br>

        <!-- Submit -->
        <button type="submit">Submit</button>
    </form>

</body>

</html>