<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTML Form Example</title>
</head>
<body>
  <!-- Form goes here -->

    <form action="submit.php" method="get">
        <!-- Text field -->
        <label for="text">Text Field:</label>
        <input type="text" name="text">
        <br>

        <!-- Textarea field -->
        <label for="textarea">Textarea Field:</label>
        <textarea name="textarea" row=5 col=7></textarea>
        <br>

        <!-- Select w/ options -->
        <label for="select">Dropdown:</label>
        <select name="select">
            <option value="option1">Option 1</option>
            <option value="option2">Option 2</option>
        </select>
        <br>

        <!-- Checkboxes -->
        <label for="checkbox">Checkbox 1</label>
        <input type="checkbox" name="checkbox" value="checked1">
        <br>

        <label for="checkbox2">Checkbox 2</label>
        <input type="checkbox" name="checkbox2" value="checked2">
        <br>

        <!-- Radio buttons -->
        <label for="radio">Radio Button 1</label>
        <input type="radio" name="radio" value="radio1">
        <br>

        <label for="radio">Radio Button 2</label>
        <input type="radio" name="radio" value="radio2">
        <br>

        <!-- Submit -->
        <button type="submit">Submit</button>
    </form>
  

</body>
</html>
