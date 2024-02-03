
<?php
include('./backend/handling.php');
?>

<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
          body {
            font-family: 'Times New Roman', Times, serif;
            background-color: #f5f5f5;
            margin: 20px;
            padding: 20px;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 30px;
            text-align: center;
        }

        header h1 {
            font-size: 28px;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav li {
            display: inline;
            margin-right: 20px;
        }

        nav a {
            text-decoration: none;
            color: #fff;
        }

        .add-facilitator-section {
            background-color: #fff;
            margin: 20px;
            padding: 20px;
            border-radius: 20px;
        }

        .add-facilitator-section h2 {
            font-size: 22px;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 50px;
            padding: 20px 450px;
            cursor: pointer;
        }
    </style>
</head>
<body background="images/paper.jpg">
    <header>
        <h1>Welcome</h1>
        <nav>
            <ul>
                <li><a style="color: #742d5c;"  href="view.php">view Feedbacks</a></li>
                <li><a style="color: #742d5c;"  href="logout.php">Logout</a></li>
            </ul>
        </nav>
    </header>
    <div class="add-facilitator-section">
        <h2>Add a New Facilitator</h2>
        <form action="admin.php" method="post">
            <label for="facilitator_name">Facilitator Name</label>
            <input type="text" id="facilitator_name" name="F_Names" required>

            <label for="facilitator_email">Facilitator Email</label>
            <input type="email" id="facilitator_email" name="Email" required>

            <label for="facilitator_password">Facilitator Password</label>
            <input type="password" id="facilitator_password" name="Passwords" required onkeyup="checkPasswordStrength()">

            <input type="submit" name="submit" value="Add Facilitator" class="btn">
        </form>
    </div>
    <script src="passwords.js"></script>
</body>
</html>
