<?php
// Memulai session atau melanjutkan session yang sudah ada
session_start();

// Menyertakan code dari file koneksi
include "koneksi.php";

// Cek jika sudah ada user yang login arahkan ke halaman admin
if (isset($_SESSION['username'])) { 
    header("location:admin.php"); 
}

// Logika jika form login di-submit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = md5($_POST['password']); // Mengenkripsi password dengan md5

    // Prepared statement
    $stmt = $conn->prepare("SELECT username 
                            FROM user 
                            WHERE username=? AND password=?");
    $stmt->bind_param("ss", $username, $password); // Parameter binding
    
    $stmt->execute();
    $hasil = $stmt->get_result();
    $row = $hasil->fetch_array(MYSQLI_ASSOC);

    if (!empty($row)) {
        $_SESSION['username'] = $row['username'];
        header("location:admin.php");
    } else {
        $error = "Username atau password salah!";
    }

    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to bottom right, #1d3557, #457b9d);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
            overflow: hidden;
        }
        .container {
            position: relative;
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 3rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            width: 100%;
            max-width: 400px;
        }
        .container h1 {
            margin-bottom: 2rem;
            font-size: 2rem;
            font-weight: bold;
            color: #f1faee;
        }
        .container input {
            width: 90%;
            padding: 1rem;
            margin-bottom: 1.5rem;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background: rgba(255, 255, 255, 0.2);
            color: #f1faee;
            outline: none;
        }
        .container input::placeholder {
            color: #f1faee;
            opacity: 0.8;
        }
        .container button {
            width: 98%;
            padding: 1rem;
            background: linear-gradient(to right, #e63946, #f77f00);
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            cursor: pointer;
            transition: 0.3s ease;
        }
        .container button:hover {
            background: linear-gradient(to right, #f77f00, #e63946);
            transform: scale(1.05);
        }
        .error-message {
            color: #e63946;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
        }
        .background-animation {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }
        .background-animation span {
            position: absolute;
            display: block;
            width: 30px;
            height: 30px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            animation: move 20s linear infinite;
        }
        @keyframes move {
            0% {
                transform: translateY(0) rotate(0deg);
            }
            50% {
                transform: translateY(-100px) rotate(180deg);
            }
            100% {
                transform: translateY(0) rotate(360deg);
            }
        }
    </style>
</head>
<body>
    <div class="background-animation">
        <?php for ($i = 0; $i < 20; $i++): ?>
            <span style="top: <?= rand(0, 100) ?>%; left: <?= rand(0, 100) ?>%; animation-duration: <?= rand(10, 20) ?>s;"></span>
        <?php endfor; ?>
    </div>
    <div class="container">
        <h1>Welcome Back</h1>
        <?php if (!empty($error)): ?>
            <div class="error-message"><?php echo $error; ?></div>
        <?php endif; ?>
        <form action="" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
