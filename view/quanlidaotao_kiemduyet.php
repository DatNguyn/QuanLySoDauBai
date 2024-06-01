<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quản lý đào tạo- Kiểm duyệt</title>
    <!-- link googole fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet" />
    <!-- link google material -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- reset css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />

    <!-- link css -->
    <link rel="stylesheet" href="../CSS/quanlidaotao_kiemduyet.css" />
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
            <div class="dieuhuong trangtruoc">Kế hoạch giảng dạy</div>
        </div>
    </nav>
    <!-- POPUP -->
    <div class="popupDuyetDayBu"></div>
    <div class="popupDuyetDayThay"></div>
    <div class="popupThongBao"></div>
    <div class="popupXacNhanTuChoi"></div>

    <?php
  session_start();
  // Truy vấn database để lấy danh sách
  // 1. Include file cấu hình kết nối đến database, khởi tạo kết nối $conn
  include('../database/connect.php');

  // 2. Chuẩn bị câu truy vấn $sql
  $stt = 1;
  $sql = "select * from `tiethoc` TH, `yeucau` YC, `monhoc` MH, `giaovien` GV
            where TH.matiet = YC.matiet and MH.mamon = TH.mamon and GV.magv = TH.magv
             and MH.mabm = {$_SESSION['mabm']} and YC.tinhtrang = 'Chưa duyệt'";

  // 3. Thực thi câu truy vấn SQL để lấy về dữ liệu
  $result = mysqli_query($conn, $sql);

  // 4. Khi thực thi các truy vấn dạng SELECT, dữ liệu lấy về cần phải phân tích để sử dụng
  // Thông thường, chúng ta sẽ sử dụng vòng lặp while để duyệt danh sách các dòng dữ liệu được SELECT
  // Ta sẽ tạo 1 mảng array để chứa các dữ liệu được trả về
  $ds_yeucau = [];
  while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $ds_yeucau[] = array(
      'matiet' => $row['matiet'],
      'daubai' => $row['daubai'],
      'tietppct' => $row['tietppct'],
      'tiet' => $row['tiet'],
      'ngayhoc' => $row['ngayhoc'],
      'malop' => $row['malop'],
      'tenmon' => $row['tenmon'],
      'tinhtrang' => $row['tinhtrang'],
      'tgtao' => $row['tgtao'],
      'tgduyet' => $row['tgduyet'],
      'loaitiethoc' => $row['loaitiethoc'],
      'tengv' => $row['tengv'],
    );
  }
  ?>

    <!-- MAIN PAGE -->
    <div class="main-page">
        <!-- ASIDE NAV -->
        <div class="aside_nav"></div>
        <!-- MAIN CONTENT-->
        <div class="main">
            <div class="main-content clearfix">
                <div class="main-header">
                    <h1>Quản lý đào tạo - Kiểm duyệt</h1>
                </div>
                <div class="main__sort-container">
                    <span class="main__sort--text">Sắp xếp theo: </span>
                    <input class="main__sort--input" id="main__sort--btn-1" type="checkbox" />
                    <label for="main__sort--btn-1" class="main__sort--btn">
                        <span class="btn__icon icon material-symbols-outlined">done</span>
                        <span class="btn__label">Gần đây</span>
                    </label>
                    <input class="main__sort--input" id="main__sort--btn-2" type="checkbox" />
                    <label for="main__sort--btn-2" class="main__sort--btn">
                        <span class="btn__icon icon material-symbols-outlined">done</span>
                        <span class="btn__label">Cũ nhất</span>
                    </label>
                </div>
                <hr />
                <div class="main-kehoach">
                    <table class="table_kehoach">
                        <thead class="table_head">
                            <tr>
                                <th scope="STT" style="width: 48px">STT</th>
                                <th scope="Loai" style="width: 117px">Loại</th>
                                <th scope="Ten" style="width: 330px">Tên kế hoạch bài dạy</th>
                                <th scope="PPCT" style="width: 163px">PPCT</th>
                                <th scope="TGKiemDuyet" style="min-width: 150px">
                                    Kiểm duyệt gần nhất
                                </th>
                                <th scope="TrangThai" style="width: 162px">Trạng thái</th>
                                <th scope="NguoiTao" style="width: 290px">Người tạo</th>
                                <th scope="HanhDong" style="min-width: 150px">Hành động</th>
                            </tr>
                        </thead>
                        <tbody class="table_body">
                            <?php foreach ($ds_yeucau as $index => $yeucau) : ?>
                            <tr>
                                <!-- Dữ liệu từ database -->
                                <th scope="row"><?= $index + 1 ?></th>
                                <td><?= $yeucau['loaitiethoc'] ?></td>
                                <td>
                                    <?= $yeucau['daubai'] ?><br />
                                    Môn:
                                    <?= $yeucau['tenmon'] ?><br />
                                </td>
                                <td>
                                    Tiết <?= $yeucau['tiet'] ?>
                                </td>
                                <td></td>
                                <td class="trangthai"><?= $yeucau['tinhtrang'] ?></td>
                                <td>
                                    <?= $yeucau['tengv'] ?>
                                    <br />
                                    <?= $yeucau['tgtao'] ?>
                                </td>
                                <!-- -->
                                <td class="kehoach-btn">
                                    <?php if ($yeucau['loaitiethoc'] == "Dạy bù") { ?>
                                    <span class="material-symbols-outlined xem_chi_tiet"
                                        id="xem_chi_tiet_bu">visibility</span>
                                    <?php } else { ?>
                                    <span class="material-symbols-outlined xem_chi_tiet"
                                        id="xem_chi_tiet_thay">visibility</span>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER -->
    <footer class="footer"></footer>
    <!-- link js -->
    <script src="../javascript/quanlidaotao_kiemduyet.js"></script>
</body>

</html>