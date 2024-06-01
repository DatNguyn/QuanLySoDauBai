<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="wclassth=device-wclassth, initial-scale=1" />
    <title>Điểm danh</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="/CSS/popup_capnhatdiemdanh.css" />
</head>

<body>
    <?php
  session_start();
  // Truy vấn database để lấy danh sách
  // 1. Include file cấu hình kết nối đến database, khởi tạo kết nối $conn
  include('../../database/connect.php');

  // 2. Chuẩn bị câu truy vấn $sql
  $stt = 1;
  $sql1 = "select * from `hocsinh` HS, `tiethoc` TH, `diemdanh` DD, `lop` L
    where HS.mahs = DD.mahs and DD.matiet = TH.matiet and HS.malop = L.malop and TH.matiet = 2";

  $result1 = mysqli_query($conn, $sql1);

  $ds_hocsinh = [];
  while ($row = mysqli_fetch_array($result1, MYSQLI_ASSOC)) {
    $ds_hocsinh[] = array(
      'tenhs' => $row['tenhs'],
      'trangthai' => $row['trangthai'],
      'mahs' => $row['mahs'],
      'ngaysinh' => $row['ngaysinh'],
      'tenlop' => $row['tenlop'],
    );
  }
  ?>
    <div class="popup-container">
        <div class="popup">
            <div class="popup-header">
                <h1>Điểm danh</h1>
                <span class="material-symbols-outlined cancel-icon">cancel</span>
            </div>
            <div class="popup-body">
                <div class="popup-body-content">
                    <div class="search">
                        <input type="text" placeholder="Tìm kiếm học sinh" />
                        <span class="material-symbols-outlined"> search </span>
                    </div>
                    <div class="time">
                        <p class="time-name">Thời gian điểm danh:</p>
                        <p class="time-count">7:00</p>
                    </div>
                </div>
                <table class="table-diemdanh">
                    <thead>
                        <th style="width: 20px"></th>
                        <th style="width: 200px">Họ và tên</th>
                        <th style="width: 100px">Mã học sinh</th>
                        <th style="width: 150px">Ngày sinh</th>
                        <th style="width: 100px">Lớp</th>
                        <th style="width: 200px">Trạng thái</th>
                    </thead>
                    <tbody>
                        <?php foreach ($ds_hocsinh as $hocsinh) : ?>
                        <tr>
                            <td>
                                <input type="checkbox" name="diemdanh[]" value="<?= $hocsinh['mahs'] ?>" />
                            </td>
                            <td><?= $hocsinh['tenhs'] ?></td>
                            <td><?= $hocsinh['mahs'] ?></td>
                            <td><?= $hocsinh['ngaysinh'] ?></td>
                            <td><?= $hocsinh['tenlop'] ?></td>
                            <?php if ($hocsinh['trangthai'] == 'Đã điểm danh') ?>
                            <td class="dadiemdanh"><?= $hocsinh['trangthai'] ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <div class="popup-footer">
                <button class="btn-accept" name="btndiemdanh">Điểm danh</button>
                <button class=" btn-reject" name="btnhuydiemdanh">Hủy điểm danh</button>
            </div>
        </div>
    </div>

    <!-- End Popup -->
    <!-- </div> -->
</body>

</html>
<?php
include('../../database/connect.php');
if (isset($_POST['btndiemdanh'])) {
  $mahss = $_POST['diemdanh'];
  foreach ($mahss as $mahs) :
    $sql3 = "update diemdanh set trangthai = 'Đã điểm danh' where mahs = '$mahs'";
    $result3 = mysqli_query($conn, $sql3);
  endforeach;
  // if ($result) {
  //   echo "<script>alert('Điểm danh thành công')</script>";
  // }
}
// // if (isset($_POST['btnhuydiemdanh'])) {
//   $mahs = $_POST['diemdanh'];
//   $sql = "update diemdanh set trangthai = 'Chưa điểm danh' where mahs = '$mahs'";
//   $result = mysqli_query($conn, $sql);
//   if ($result) {
//     echo "<script>alert('Hủy điểm danh thành công')</script>";
// //   }
// }
?>