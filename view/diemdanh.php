<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Kế hoạch giảng dạy</title>
    <!-- link googole fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet" />
    <!-- link google material -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20,400,1,0" />

    <!-- reset css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />

    <!-- link css -->
    <link rel="stylesheet" href="../CSS/diemdanh.css" />
</head>

<body>
    <!-- HEADER -->
    <header class="header"></header>
    <nav class="nav_bar">
        <div class="nav_tree">
            <div class="dieuhuong trangtruoc">Trang chủ</div>
            <span class="material-symbols-outlined arrow_forward_ios">
                arrow_forward_ios
            </span>
            <div class="dieuhuong trangtruoc">Điểm danh</div>
        </div>
    </nav>
    <!-- POPUP -->
    <div class="popup_capnhatdiemdanh"></div>
    <!-- MAIN -->
    <?php
  session_start();
  // Truy vấn database để lấy danh sách
  // 1. Include file cấu hình kết nối đến database, khởi tạo kết nối $conn
  include('../database/connect.php');

  // 2. Chuẩn bị câu truy vấn $sql
  $stt = 1;
  $sql = "select * from `tiethoc` TH, `monhoc` MH, `lop` L
            where MH.mamon = TH.mamon and TH.malop = L.malop and matiet = 2";

  // 3. Thực thi câu truy vấn SQL để lấy về dữ liệu
  $result = mysqli_query($conn, $sql);

  // 4. Khi thực thi các truy vấn dạng SELECT, dữ liệu lấy về cần phải phân tích để sử dụng
  // Thông thường, chúng ta sẽ sử dụng vòng lặp while để duyệt danh sách các dòng dữ liệu được SELECT
  // Ta sẽ tạo 1 mảng array để chứa các dữ liệu được trả về   
  $tiethoc = [];
  if ($result->num_rows > 0) {
    // Lấy hàng đầu tiên
    $tiethoc = $result->fetch_assoc();
  } else {
    echo "Không có kết quả";
  }

  $sql1 = "select * from `hocsinh` HS, `tiethoc` TH, `diemdanh` DD
            where HS.mahs = DD.mahs and DD.matiet = TH.matiet and TH.matiet = 2";

  $result1 = mysqli_query($conn, $sql1);

  $ds_hocsinh = [];
  while ($row = mysqli_fetch_array($result1, MYSQLI_ASSOC)) {
    $ds_hocsinh[] = array(
      'tenhs' => $row['tenhs'],
      'trangthai' => $row['trangthai'],
      'mahs' => $row['mahs']
    );
  }
  ?>
    <div class="main-page">
        <!-- ASIDE NAV -->
        <div class="aside_nav"></div>
        <!-- MAIN CONTENT-->
        <div class="main">
            <div class="main-content clearfix">
                <div class="main-header">
                    <h1>Điểm danh</h1>
                </div>
                <hr />
                <div class="main-button">
                    <div class="main__sort-container">
                        <h3>
                            <?= $tiethoc['tenmon'] ?>
                        </h3>
                        <p>Lớp: <?= $tiethoc['tenlop'] ?></p>
                        <p>Thời gian:Tiết <?= $tiethoc['tiet'] ?> <?= $tiethoc['ngayhoc'] ?></p>
                    </div>
                    <div class="btn">
                        <button class="btn-capnhatdiemdanh">Cập nhật điểm danh</button>
                    </div>
                </div>
                <hr />
                <div class="main-diemdanh">
                    <div class="main-diemdanh-header">
                        <h3>Danh sách học sinh</h3>
                        <div class="chuthich">
                            <div class="chuthich-item">
                                <p>Chưa điểm danh</p>
                                <div class="square-xam"></div>
                            </div>
                            <div class="chuthich-item">
                                <p>Đi học</p>
                                <div class="square-xanh"></div>
                            </div>
                            <div class="chuthich-item">
                                <p>Có phép</p>
                                <div class="square-vang"></div>
                            </div>
                            <div class="chuthich-item">
                                <p>Không phép</p>
                                <div class="square-do"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Danh sách học sinh -->
                    <div class="dshocsinh">
                        <?php foreach ($ds_hocsinh as $hocsinh) :
              if ($hocsinh['trangthai'] == 'Đã điểm danh') { ?>
                        <div class="hocsinh">
                            <div class="ten">
                                <h3><?= $hocsinh['tenhs'] ?></h3>
                                <span class="material-symbols-outlined"> error </span>
                            </div>
                            <div class="mahocsinh">Mã học sinh: <?= $hocsinh['mahs'] ?></div>
                        </div>

                        <?php } elseif ($hocsinh['trangthai'] == 'Chưa điểm danh') { ?>
                        <div class="hocsinh" id="chuadiemdanh">
                            <div class="ten">
                                <h3><?= $hocsinh['tenhs'] ?></h3>
                                <span class="material-symbols-outlined"> error </span>
                            </div>
                            <div class="mahocsinh">Mã học sinh: <?= $hocsinh['mahs'] ?></div>
                        </div>

                        <?php } elseif ($hocsinh['trangthai'] == 'Vắng có phép') { ?>
                        <div class="hocsinh" id="cophep">
                            <div class="ten">
                                <h3><?= $hocsinh['tenhs'] ?></h3>
                                <span class="material-symbols-outlined"> error </span>
                            </div>
                            <div class="mahocsinh">Mã học sinh: <?= $hocsinh['mahs'] ?></div>
                        </div>

                        <?php } elseif ($hocsinh['trangthai'] == 'Vắng không có phép') { ?>
                        <div class="hocsinh" id="kophep">
                            <div class="ten">
                                <h3><?= $hocsinh['tenhs'] ?></h3>
                                <span class="material-symbols-outlined"> error </span>
                            </div>
                            <div class="mahocsinh">Mã học sinh: <?= $hocsinh['mahs'] ?></div>
                        </div>

                        <?php }
            endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <footer class="footer"></footer>

    <script src="../javascript/diemdanh.js"></script>
</body>

</html>