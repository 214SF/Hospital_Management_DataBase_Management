<?php
// Add the necessary code for session start and authentication here
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        nav {
            background-color: #ddd;
            padding: 10px;
            display: flex;
            justify-content: space-around;
        }

        section {
            padding: 20px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        h2 {
            color: #333;
        }
    </style>
</head>
<body>

<header>
    <h1>Nurse Dashboard</h1>
</header>

<nav>
    <a href="#patients">Patients</a>
    <a href="#appointments">Appointments</a>
    <a href="#reports">Reports</a>
    <a href="logout.php">Logout</a>
</nav>

<section class="container">
    <div class="card" id="patients">
        <h2>Patients</h2>
        <!-- Add content related to patients here -->
    </div>

    <div class="card" id="appointments">
        <h2>Appointments</h2>
        <!-- Add content related to appointments here -->
    </div>

    <div class="card" id="reports">
        <h2>Reports</h2>
        <!-- Add content related to reports here -->
    </div>
</section>

<footer>
    <p>&copy; 2023 Nurse Dashboard</p>
</footer>

</body>
</html>
