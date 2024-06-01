<?php
include("../database/connect.php");
if (isset($_POST["sign_in"])) {
    $email = $_POST["email"];
    $password = $_POST["password"];

    $sql = "select * from taikhoan where email ='$email' and matkhau = '$password'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        session_start();
        $row = $result->fetch_assoc();
        $_SESSION["email"] = $row["email"];
        $_SESSION["vaitro"] = $row["vaitro"];
        $sql1 = "select * from `taikhoan` TK join `giaovien` GV on TK.email = GV.email where TK.email = '" . $row["email"] . "'";
        $result1 = mysqli_query($conn, $sql1);
        while ($row1 = mysqli_fetch_array($result1, MYSQLI_ASSOC)) {
            $_SESSION["magv"] = $row1["magv"];
            $_SESSION["tengv"] = $row1["tengv"];
            $_SESSION["mabm"] = $row1["mabm"];
        }
        header("Location: ../view/tongquan.html");
        exit();
    } else { ?>
<button
    style="height: 40px; width: max-content; background-color: pink;position:relative; top: 40%; left: 45%; border-radius: 8px; color: white;">
    <a href="/view/login.php" style="text-decoration: none; font-weight:bold;">Đăng nhập sai rồi. Quay lại</a>

</button>
<?php
    }
}
?>