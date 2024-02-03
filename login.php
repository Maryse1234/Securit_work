<?php
include('./backend/handling.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body background="images/paper.jpg">
  <div style="font-family: 'Times New Roman', Times, serif;background-color: #4b5764;" class="login-container">
    <h1>Student Login</h1>
    <form action="login.php" method="post">
      <label for="username">Name</label>
      <input type="text" id="username" name="Names" required>
      
      <label for="password">Password</label>
      <input type="password" id="password" name="Passwords" required>
      <input style="    background-color: #742d5c; font-family: 'Times New Roman', Times, serif;" 
      type="submit" name="LOGIN" value="LOGIN" class="btn"><br>

      <input type="password" id="password" onkeyup="checkPasswordStrength()">
<input type="password" id="confirmPassword" onkeyup="validatePasswordMatch()">

<div id="password-strength"></div>
<div id="password-match"></div>

<script>
function checkPasswordStrength() {
    const password = $("#password").val();
    // Add your password strength checking logic here
    let strength = "Weak"; // Update based on your criteria
    // Update UI with password strength
    $("#password-strength").text(`Password Strength: ${strength}`);
}

function validatePasswordMatch() {
    const password = $("#password").val();
    const confirmPassword = $("#confirmPassword").val();
    // Check if passwords match
    const matchMessage = password === confirmPassword ? "Passwords match" : "Passwords do not match";
    // Update UI with password match status
    $("#password-match").text(matchMessage);
}
</script>


    </form>
    <p >do you have account! already if not register here ? <a style="color: #742d5c; font-family: 'Times New Roman', Times, serif;"
    href="register.php">Register</a></p>
  </div>
</body>
</html>