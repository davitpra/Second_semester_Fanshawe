<?php
//login page

//set the page title
define('TITLE', 'User Login');

//include the header
include('templates/header.php');

print '<h2>Login Form</h2>';

$formStart = '<form action="login.php" method="post">';
$emailLabel = '<label for="email">Email:</label> <br>';
$emailInput = '<input type="email" name="email"> <br>';
$passLabel = '<label for="pass">Password:</label><br>';
$passInput = '<input type="password" name="pass"> <br>';
$submit = '<input type="submit" name="submit" value="Log In"> <br>';
$formEnd = '</form>';

//check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    //Form submitted
    $email = htmlspecialchars($_POST['email']);
    $password = htmlspecialchars($_POST['pass']);

    //Create sticky form for error cases
    $stickyForm = $formStart .
        $emailLabel . "<input type='email' name='email' value={{$email}}> <br>" .
        $passLabel . $passInput .
        $submit .
        $formEnd;

    if (empty($email) || empty($password)) {
        //All data submitted
        if ((strtolower($email) == 'test@test.com') && ($password == 'test')) {
            //Login successful
            ob_end_clean();
            header('Location: specials.php');
            exit();
        } else {
            print '<p>Email or password is incorrect. Please try again</p>' . $stickyForm;
        }
    } else {
        //Missing data
        print '<p>Email or password are required. Please try again</p>' . $stickyForm;
    }
} else {
    //Form not submitted - show form
    print $formStart .
        $emailLabel . $emailInput .
        $passLabel . $passInput .
        $submit .
        $formEnd;
}

//include the footer
include('templates/footer.php');
