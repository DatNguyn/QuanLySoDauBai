<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="../CSS/login.css">

</head>

<body>
    <div class="login-container">
        <div class="login-box">
            <div class="logo">
                <img src="../images/image.png" alt="Logo">
            </div>
            <h2>TRƯỜNG THPT CHUYÊN NGUYỄN CHÍ THANH</h2>
            <h3>SỔ ĐẦU BÀI ONLINE</h3>
            <form action="/controller/loginController.php" method="post">
                <div class="input-group">
                    <input type="email" id="email" name="email" placeholder="Nhập email" required>
                </div>
                <div class="input-group">
                    <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
                </div>
                <input type="submit" class="login-button" name="sign_in" value="Đăng nhập">
            </form>
        </div>
    </div>
</body>

<?php

?>

</html>