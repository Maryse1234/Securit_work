<?php
$server= "localhost";
$username= "root";
$password= "";
$db= "student_system";
// Create connection
$conn = new mysqli($server, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// else{
//     echo("Successful");
// }
?>