-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 11:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlysodaubai`
--

-- --------------------------------------------------------

--
-- Table structure for table `bomon`
--

CREATE TABLE `bomon` (
  `mabm` int(11) NOT NULL,
  `tenbm` enum('Toán - Tin','Tự nhiên','Xã hội','Ngữ Văn','Ngoại ngữ','') DEFAULT NULL,
  `diadiem` varchar(50) DEFAULT NULL,
  `matotruong` int(11) NOT NULL,
  `ngaynhamchuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `bomon`
--

INSERT INTO `bomon` (`mabm`, `tenbm`, `diadiem`, `matotruong`, `ngaynhamchuc`) VALUES
(1, 'Toán - Tin', 'Phòng A1.01', 1, '2024-05-03'),
(2, 'Tự nhiên', 'Phòng A1.02', 2, '2024-05-10'),
(3, 'Xã hội', 'Phòng A1.03', 3, '2024-05-20'),
(4, 'Ngữ Văn', 'Phòng A1.04', 4, '2024-05-11'),
(5, 'Ngoại ngữ', 'Phòng A1.05', 5, '2024-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `mahs` int(11) NOT NULL,
  `matiet` int(11) NOT NULL,
  `trangthai` enum('Đã điểm danh','Vắng có phép','Vắng không có phép','Chưa điểm danh') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`mahs`, `matiet`, `trangthai`) VALUES
(1, 2, 'Đã điểm danh'),
(2, 2, 'Chưa điểm danh'),
(3, 2, 'Vắng có phép'),
(4, 2, 'Vắng không có phép'),
(5, 2, 'Chưa điểm danh'),
(6, 2, 'Đã điểm danh'),
(7, 2, 'Đã điểm danh'),
(8, 2, 'Đã điểm danh'),
(9, 2, 'Đã điểm danh'),
(10, 2, 'Đã điểm danh'),
(11, 2, 'Đã điểm danh'),
(12, 2, 'Đã điểm danh'),
(13, 2, 'Đã điểm danh'),
(14, 2, 'Đã điểm danh'),
(15, 2, 'Đã điểm danh'),
(16, 2, 'Đã điểm danh'),
(17, 2, 'Đã điểm danh'),
(18, 2, 'Đã điểm danh'),
(19, 2, 'Đã điểm danh'),
(20, 2, 'Đã điểm danh');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `magv` int(11) NOT NULL,
  `tengv` varchar(50) DEFAULT NULL,
  `diachi` varchar(200) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ngayvaolam` date DEFAULT NULL,
  `mabm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`magv`, `tengv`, `diachi`, `ngaysinh`, `email`, `ngayvaolam`, `mabm`) VALUES
(1, 'Nguyen Van A', 'Binh Duong', '2000-01-01', 'ttbm1@gmail.com', '2024-05-01', 1),
(2, 'Nguyen Van B', 'Vũng Tàu', '1999-05-13', 'ttbm2@gmail.com', '2023-02-27', 2),
(3, 'Tran Thi C', 'Quảng Nam', '1998-10-01', 'ttbm3@gmail.com', '2021-12-12', 3),
(4, 'Le Thi D', 'Quảng Ninh', '1995-11-07', 'ttbm4@gmail.com', '2020-09-12', 4),
(5, 'Nguyễn H', 'Hà Nội', '1994-11-07', 'ttbm5@gmail.com', '2020-09-12', 5),
(6, 'Nguyen Minh Quyen', 'Đà Nẵng', '1990-04-15', 'gv1@gmail.com', '2018-06-20', 1),
(7, 'Le Thi Thu', 'TP Hồ Chí Minh', '1988-09-09', 'gv2@gmail.com', '2017-03-11', 2),
(8, 'Tran Van Kien', 'Hải Phòng', '1992-12-21', 'gv3@gmail.com', '2019-08-30', 4),
(9, 'Pham Thi Lan', 'Nghệ An', '1985-03-03', 'gv4@gmail.com', '2015-11-17', 4),
(10, 'Bui Van Cuong', 'Bình Thuận', '1996-07-19', 'gv5@gmail.com', '2021-05-25', 3),
(11, 'Nguyen Van Lam', 'Cần Thơ', '1987-02-14', 'gv6@gmail.com', '2016-07-15', 1),
(12, 'Hoang Thi Ha', 'Thanh Hóa', '1991-06-25', 'gv7@gmail.com', '2018-10-22', 3),
(13, 'Vu Duy Khang', 'Đắk Lắk', '1989-11-30', 'gv8@gmail.com', '2017-04-13', 4),
(14, 'Tran Thi Mai', 'Phú Yên', '1993-05-16', 'gv9@gmail.com', '2019-09-05', 2),
(15, 'Nguyen Van Hao', 'Quảng Bình', '1984-01-22', 'gv10@gmail.com', '2014-12-01', 2),
(16, 'Nguyen Van Phu', 'Cần Thơ', '1983-02-14', 'bangiamhieu@gmail.com', '2014-07-15', 1),
(17, 'Nguyen Van Dung', 'Nam Định', '1983-02-10', 'gvcn1@gmail.com', '2010-03-21', 1),
(18, 'Tran Thi Lan', 'Thái Bình', '1985-07-15', 'gvcn2@gmail.com', '2012-05-11', 2),
(19, 'Le Van Nam', 'Huế', '1990-03-22', 'gvcn3@gmail.com', '2013-08-20', 3),
(20, 'Pham Thi Thao', 'Hà Nam', '1992-11-30', 'gvcn4@gmail.com', '2015-09-25', 4),
(21, 'Bui Van Son', 'Ninh Bình', '1988-12-14', 'gvcn5@gmail.com', '2016-11-10', 5),
(22, 'Do Thi Mai', 'Nghệ An', '1984-04-18', 'gvcn6@gmail.com', '2011-04-17', 1),
(23, 'Vu Van Binh', 'Bắc Giang', '1987-08-23', 'gvcn7@gmail.com', '2013-07-29', 2),
(24, 'Hoang Thi Hue', 'Quảng Trị', '1989-09-19', 'gvcn8@gmail.com', '2014-10-31', 3),
(25, 'Ngo Van Tuan', 'Hòa Bình', '1991-06-06', 'gvcn9@gmail.com', '2016-02-15', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `mahs` int(11) NOT NULL,
  `tenhs` varchar(50) DEFAULT NULL,
  `diachi` varchar(200) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `ngaynhaphoc` date DEFAULT NULL,
  `malop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`mahs`, `tenhs`, `diachi`, `ngaysinh`, `sdt`, `ngaynhaphoc`, `malop`) VALUES
(1, 'Nguyen Tien Dat', 'TP Hồ Chí Minh', '2004-02-16', '0976334782', '2023-07-15', 1),
(2, 'Tran Van An', 'Hà Nội', '2005-03-14', '0987112233', '2023-08-20', 1),
(3, 'Le Thi Binh', 'Đà Nẵng', '2004-05-23', '0919334455', '2023-09-10', 1),
(4, 'Hoang Van Cuong', 'Hải Phòng', '2005-11-19', '0908556677', '2023-06-01', 1),
(5, 'Phan Thi Dao', 'Cần Thơ', '2004-01-09', '0933228811', '2023-07-25', 1),
(6, 'Bui Van Em', 'Huế', '2005-12-31', '0977559900', '2023-10-11', 1),
(7, 'Ngo Thi Giang', 'Bình Định', '2004-04-21', '0911223344', '2023-05-19', 1),
(8, 'Dao Van Hoa', 'Đồng Nai', '2005-06-30', '0922445566', '2023-04-02', 1),
(9, 'Nguyen Thi Khai', 'Quảng Nam', '2004-07-08', '0909778899', '2023-03-15', 1),
(10, 'Pham Van Lam', 'Lâm Đồng', '2005-08-18', '0933664400', '2023-02-28', 1),
(11, 'Trinh Thi My', 'Thanh Hóa', '2004-09-27', '0944225566', '2023-01-20', 1),
(12, 'Vu Van Nam', 'Nghệ An', '2005-10-10', '0911992255', '2023-11-30', 1),
(13, 'Nguyen Thi Oanh', 'Bắc Giang', '2004-11-11', '0905223344', '2023-12-12', 1),
(14, 'Le Van Phuc', 'Thái Nguyên', '2005-02-22', '0933885577', '2023-08-18', 1),
(15, 'Hoang Thi Quy', 'Nam Định', '2004-03-31', '0922994455', '2023-07-13', 1),
(16, 'Bui Van Son', 'Quảng Ninh', '2005-04-04', '0908336677', '2023-06-15', 1),
(17, 'Ngo Thi Thao', 'Phú Thọ', '2004-05-15', '0911445588', '2023-05-27', 1),
(18, 'Dao Van Uyen', 'Bà Rịa-Vũng Tàu', '2005-06-26', '0933006611', '2023-04-19', 1),
(19, 'Phan Thi Viet', 'Bình Dương', '2004-07-07', '0922557744', '2023-03-22', 1),
(20, 'Nguyen Van Xuan', 'Hà Tĩnh', '2005-08-09', '0911773344', '2023-02-10', 1),
(22, 'Nguyen Thi Bao', 'Hà Nội', '2005-03-14', '0988111223', '2023-08-25', 2),
(23, 'Tran Van Cuong', 'Đà Nẵng', '2004-05-23', '0919331145', '2023-09-15', 2),
(24, 'Le Thi Dao', 'Hải Phòng', '2005-11-19', '0908556711', '2023-06-10', 2),
(25, 'Hoang Van Em', 'Cần Thơ', '2004-01-09', '0933228745', '2023-07-30', 2),
(26, 'Pham Thi Giang', 'Huế', '2005-12-31', '0977559844', '2023-10-20', 2),
(27, 'Bui Van Hoa', 'Bình Định', '2004-04-21', '0911223377', '2023-05-25', 2),
(28, 'Ngo Thi Khai', 'Đồng Nai', '2005-06-30', '0922445599', '2023-04-07', 2),
(29, 'Dao Van Lam', 'Quảng Nam', '2004-07-08', '0909778876', '2023-03-20', 2),
(30, 'Nguyen Thi My', 'Lâm Đồng', '2005-08-18', '0933664477', '2023-02-25', 2),
(31, 'Phan Van Nam', 'Thanh Hóa', '2004-09-27', '0944225599', '2023-01-27', 2),
(32, 'Vu Thi Oanh', 'Nghệ An', '2005-10-10', '0911992277', '2023-11-25', 2),
(33, 'Tran Van Phuc', 'Bắc Giang', '2004-11-11', '0905223388', '2023-12-15', 2),
(34, 'Hoang Thi Quy', 'Thái Nguyên', '2005-02-22', '0933885599', '2023-08-22', 2),
(35, 'Bui Van Son', 'Nam Định', '2004-03-31', '0922994499', '2023-07-20', 2),
(36, 'Ngo Thi Thao', 'Quảng Ninh', '2005-04-04', '0908336678', '2023-06-17', 2),
(37, 'Dao Van Uyen', 'Phú Thọ', '2004-05-15', '0911445599', '2023-05-30', 2),
(38, 'Phan Thi Viet', 'Bà Rịa-Vũng Tàu', '2005-06-26', '0933006644', '2023-04-21', 2),
(39, 'Nguyen Van Xuan', 'Bình Dương', '2004-07-07', '0922557755', '2023-03-24', 2),
(40, 'Tran Thi Yen', 'Hà Tĩnh', '2005-08-09', '0911773399', '2023-02-15', 2),
(41, 'Nguyen Thi Bao', 'Tiền Giang', '2004-09-19', '0905332277', '2023-01-30', 2),
(42, 'Nguyen Van Binh', 'TP Hồ Chí Minh', '2005-02-15', '0987654321', '2023-08-25', 3),
(43, 'Tran Thi Cam', 'Hà Nội', '2004-04-22', '0912345678', '2023-09-15', 3),
(44, 'Le Van Danh', 'Đà Nẵng', '2005-06-18', '0908765432', '2023-06-10', 3),
(45, 'Hoang Thi Dao', 'Hải Phòng', '2004-03-08', '0934567890', '2023-07-30', 3),
(46, 'Pham Van Duy', 'Cần Thơ', '2005-10-25', '0976543210', '2023-10-20', 3),
(47, 'Bui Thi Hang', 'Huế', '2004-08-05', '0910987654', '2023-05-25', 3),
(48, 'Ngo Van Hieu', 'Bình Định', '2005-07-10', '0923456789', '2023-04-07', 3),
(49, 'Dao Thi Lan', 'Đồng Nai', '2004-09-19', '0909876543', '2023-03-20', 3),
(50, 'Nguyen Van Phong', 'Quảng Nam', '2005-05-25', '0932109876', '2023-02-25', 3),
(51, 'Tran Thi Quyen', 'Lâm Đồng', '2004-11-11', '0945678901', '2023-01-27', 3),
(52, 'Nguyen Thi Bao Anh', 'Hà Nội', '2005-01-15', '0987123456', '2023-08-25', 4),
(53, 'Tran Van Chau', 'Đà Nẵng', '2004-03-22', '0912345671', '2023-09-15', 4),
(54, 'Le Thi Diep', 'Hải Phòng', '2005-05-18', '0908765431', '2023-06-10', 4),
(55, 'Hoang Van Duy', 'Cần Thơ', '2004-02-08', '0934567891', '2023-07-30', 4),
(56, 'Pham Thi Hong', 'Huế', '2005-09-25', '0976543211', '2023-10-20', 4),
(57, 'Bui Van Khoi', 'Bình Định', '2004-07-05', '0910987651', '2023-05-25', 4),
(58, 'Ngo Thi Lieu', 'Đồng Nai', '2005-08-10', '0923456781', '2023-04-07', 4),
(59, 'Dao Van Manh', 'Quảng Nam', '2004-09-19', '0909876541', '2023-03-20', 4),
(60, 'Nguyen Thi Nu', 'Lâm Đồng', '2005-06-25', '0932109871', '2023-02-25', 4),
(61, 'Tran Van Phu', 'Thanh Hóa', '2004-11-11', '0945678902', '2023-01-27', 4),
(62, 'Nguyen Van An', 'TP Hồ Chí Minh', '2005-02-15', '0987123456', '2023-08-25', 5),
(63, 'Tran Thi Binh', 'Hà Nội', '2004-04-22', '0912345672', '2023-09-15', 5),
(64, 'Le Van Cuong', 'Đà Nẵng', '2005-06-18', '0908765433', '2023-06-10', 5),
(65, 'Hoang Thi Dao', 'Hải Phòng', '2004-02-08', '0934567892', '2023-07-30', 5),
(66, 'Pham Van Duong', 'Cần Thơ', '2005-09-25', '0976543212', '2023-10-20', 5),
(67, 'Bui Thi Hang', 'Huế', '2004-07-05', '0910987652', '2023-05-25', 5),
(68, 'Ngo Van Khang', 'Bình Định', '2005-08-10', '0923456782', '2023-04-07', 5),
(69, 'Dao Thi Lan', 'Đồng Nai', '2004-09-19', '0909876542', '2023-03-20', 5),
(70, 'Nguyen Van Minh', 'Quảng Nam', '2005-05-25', '0932109872', '2023-02-25', 5),
(71, 'Tran Thi Nhung', 'Lâm Đồng', '2004-11-11', '0945678903', '2023-01-27', 5),
(73, 'Nguyen Van Bao', 'TP Hồ Chí Minh', '2005-01-15', '0987123457', '2023-08-25', 6),
(74, 'Tran Thi Cam', 'Hà Nội', '2004-03-22', '0912345673', '2023-09-15', 6),
(75, 'Le Van Duy', 'Đà Nẵng', '2005-05-18', '0908765434', '2023-06-10', 6),
(76, 'Hoang Thi Diep', 'Hải Phòng', '2004-02-08', '0934567893', '2023-07-30', 6),
(77, 'Pham Van Giang', 'Cần Thơ', '2005-09-25', '0976543213', '2023-10-20', 6),
(78, 'Bui Thi Hang', 'Huế', '2004-07-05', '0910987653', '2023-05-25', 6),
(79, 'Ngo Van Kiet', 'Bình Định', '2005-08-10', '0923456783', '2023-04-07', 6),
(80, 'Dao Thi Lan', 'Đồng Nai', '2004-09-19', '0909876544', '2023-03-20', 6),
(81, 'Nguyen Van Minh', 'Quảng Nam', '2005-05-25', '0932109873', '2023-02-25', 6),
(82, 'Tran Thi Nhung', 'Lâm Đồng', '2004-11-11', '0945678904', '2023-01-27', 6),
(83, 'Nguyen Van Bao Anh', 'Hà Nội', '2005-01-15', '0987123458', '2023-08-25', 7),
(84, 'Tran Thi Cam Tu', 'Đà Nẵng', '2004-03-22', '0912345674', '2023-09-15', 7),
(85, 'Le Van Duong', 'Hải Phòng', '2005-05-18', '0908765435', '2023-06-10', 7),
(86, 'Hoang Thi Giang', 'Cần Thơ', '2004-02-08', '0934567894', '2023-07-30', 7),
(87, 'Pham Van Hieu', 'Huế', '2005-09-25', '0976543214', '2023-10-20', 7),
(88, 'Bui Thi Hong', 'Bình Định', '2004-07-05', '0910987654', '2023-05-25', 7),
(89, 'Ngo Van Kiet', 'Đồng Nai', '2005-08-10', '0923456784', '2023-04-07', 7),
(90, 'Dao Thi Lan', 'Quảng Nam', '2004-09-19', '0909876545', '2023-03-20', 7),
(91, 'Nguyen Van Minh', 'Lâm Đồng', '2005-05-25', '0932109874', '2023-02-25', 7),
(92, 'Tran Thi Nhung', 'Thanh Hóa', '2004-11-11', '0945678905', '2023-01-27', 7),
(93, 'Nguyen Van An', 'TP Hồ Chí Minh', '2005-01-15', '0987123459', '2023-08-25', 8),
(94, 'Tran Thi Binh', 'Hà Nội', '2004-03-22', '0912345675', '2023-09-15', 8),
(95, 'Le Van Cuong', 'Đà Nẵng', '2005-05-18', '0908765436', '2023-06-10', 8),
(96, 'Hoang Thi Dao', 'Hải Phòng', '2004-02-08', '0934567896', '2023-07-30', 8),
(97, 'Pham Van Duong', 'Cần Thơ', '2005-09-25', '0976543216', '2023-10-20', 8),
(98, 'Bui Thi Hang', 'Huế', '2004-07-05', '0910987656', '2023-05-25', 8),
(99, 'Ngo Van Khang', 'Bình Định', '2005-08-10', '0923456786', '2023-04-07', 8),
(100, 'Dao Thi Lan', 'Đồng Nai', '2004-09-19', '0909876547', '2023-03-20', 8),
(101, 'Nguyen Van Minh', 'Quảng Nam', '2005-05-25', '0932109875', '2023-02-25', 8),
(102, 'Tran Thi Nhung', 'Lâm Đồng', '2004-11-11', '0945678907', '2023-01-27', 8),
(103, 'Nguyen Van Bao Anh', 'Hà Nội', '2005-01-15', '0987123460', '2023-08-25', 9),
(104, 'Tran Thi Cam Tu', 'Đà Nẵng', '2004-03-22', '0912345676', '2023-09-15', 9),
(105, 'Le Van Duong', 'Hải Phòng', '2005-05-18', '0908765438', '2023-06-10', 9),
(106, 'Hoang Thi Giang', 'Cần Thơ', '2004-02-08', '0934567898', '2023-07-30', 9),
(107, 'Pham Van Hieu', 'Huế', '2005-09-25', '0976543219', '2023-10-20', 9),
(108, 'Bui Thi Hong', 'Bình Định', '2004-07-05', '0910987659', '2023-05-25', 9),
(109, 'Ngo Van Kiet', 'Đồng Nai', '2005-08-10', '0923456789', '2023-04-07', 9),
(110, 'Dao Thi Lan', 'Quảng Nam', '2004-09-19', '0909876549', '2023-03-20', 9),
(111, 'Nguyen Van Minh', 'Lâm Đồng', '2005-05-25', '0932109879', '2023-02-25', 9),
(112, 'Tran Thi Nhung', 'Thanh Hóa', '2004-11-11', '0945678909', '2023-01-27', 9);

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `malop` int(11) NOT NULL,
  `tenlop` varchar(50) NOT NULL,
  `diadiem` varchar(200) NOT NULL,
  `siso` int(11) NOT NULL,
  `magvcn` int(11) NOT NULL,
  `ngaytiepnhan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`malop`, `tenlop`, `diadiem`, `siso`, `magvcn`, `ngaytiepnhan`) VALUES
(1, '10A', 'B1.01', 30, 1, '2023-09-05'),
(2, '10B', 'B1.02', 40, 2, '2023-09-05'),
(3, '11A', 'B1.03', 35, 3, '2023-09-05'),
(4, '11B', 'B1.04', 36, 4, '2023-09-05'),
(5, '12A', 'B1.05', 32, 5, '2023-09-05'),
(6, '10C', 'B1.06', 33, 6, '2023-09-05'),
(7, '11C', 'B1.07', 35, 7, '2023-09-05'),
(8, '12B', 'B1.08', 38, 8, '2023-09-05'),
(9, '12C', 'B1.09', 42, 9, '2023-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `mamon` int(11) NOT NULL,
  `tenmon` varchar(50) NOT NULL,
  `tongsotiet` int(11) NOT NULL,
  `mabm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`mamon`, `tenmon`, `tongsotiet`, `mabm`) VALUES
(1, 'Toán học', 90, 1),
(2, 'Tin học', 45, 1),
(3, 'Vật lý', 75, 2),
(4, 'Hóa học', 75, 2),
(5, 'Sinh học', 75, 2),
(6, 'Ngữ Văn', 120, 4),
(7, 'Lịch Sử', 45, 3),
(8, 'Địa Lý', 45, 3),
(9, 'Giáo dục công dân', 45, 3),
(10, 'Tiếng Anh', 90, 5),
(11, 'Công nghệ', 45, 3);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `vaitro` enum('Giáo viên','Giáo viên chủ nhiệm','Ban giám hiệu','Tổ trưởng bộ môn') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`email`, `matkhau`, `vaitro`) VALUES
('bangiamhieu@gmail.com', '12345', 'Ban giám hiệu'),
('gv1@gmail.com', '12345', 'Giáo viên'),
('gv10@gmail.com', '12345', 'Giáo viên'),
('gv2@gmail.com', '12345', 'Giáo viên'),
('gv3@gmail.com', '12345', 'Giáo viên'),
('gv4@gmail.com', '12345', 'Giáo viên'),
('gv5@gmail.com', '12345', 'Giáo viên'),
('gv6@gmail.com', '12345', 'Giáo viên'),
('gv7@gmail.com', '12345', 'Giáo viên'),
('gv8@gmail.com', '12345', 'Giáo viên'),
('gv9@gmail.com', '12345', 'Giáo viên'),
('gvcn1@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn11@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn2@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn3@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn4@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn5@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn6@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn7@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn8@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('gvcn9@gmail.com', '12345', 'Giáo viên chủ nhiệm'),
('ttbm1@gmail.com', '12345', 'Tổ trưởng bộ môn'),
('ttbm2@gmail.com', '12345', 'Tổ trưởng bộ môn'),
('ttbm3@gmail.com', '12345', 'Tổ trưởng bộ môn'),
('ttbm4@gmail.com', '12345', 'Tổ trưởng bộ môn'),
('ttbm5@gmail.com', '12345', 'Tổ trưởng bộ môn');

-- --------------------------------------------------------

--
-- Table structure for table `tiethoc`
--

CREATE TABLE `tiethoc` (
  `matiet` int(11) NOT NULL,
  `daubai` varchar(50) DEFAULT NULL,
  `tietppct` int(11) DEFAULT NULL,
  `tiet` int(11) DEFAULT NULL,
  `nhanxet` varchar(200) DEFAULT NULL,
  `ngayhoc` date DEFAULT NULL,
  `diemso` int(11) DEFAULT NULL,
  `malop` int(11) DEFAULT NULL,
  `magv` int(11) DEFAULT NULL,
  `mamon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tiethoc`
--

INSERT INTO `tiethoc` (`matiet`, `daubai`, `tietppct`, `tiet`, `nhanxet`, `ngayhoc`, `diemso`, `malop`, `magv`, `mamon`) VALUES
(1, 'Bài học đầu tiên', 20, 1, 'Rất tốt', '2023-09-10', 9, 1, 1, 1),
(2, 'Hàm số', 43, 2, 'Tốt', '2023-09-12', 8, 1, 1, 1),
(3, 'Giới thiệu môn học', 53, 1, 'Tạm được', '2023-09-10', 7, 2, 2, 3),
(4, 'Bài 1', 45, 2, 'Khá', '2023-09-13', 8, 2, 2, 3),
(5, 'Chương 1', 14, 1, 'Rất tốt', '2023-09-14', 9, 3, 3, 7),
(6, 'Chương 2', 33, 2, 'Tốt', '2023-09-17', 8, 3, 3, 7),
(7, 'Khái niệm cơ bản', 34, 1, 'Tạm được', '2023-09-10', 7, 4, 4, 4),
(8, 'Hóa học hữu cơ', 12, 2, 'Khá', '2023-09-13', 8, 4, 4, 4),
(9, 'Sinh học tế bào', 22, 1, 'Rất tốt', '2023-09-10', 9, 5, 5, 5),
(10, 'Di truyền học', 33, 2, 'Tốt', '2023-09-12', 8, 5, 5, 5),
(11, 'Ngữ văn', 34, 1, 'Tạm được', '2023-09-15', 7, 6, 6, 6),
(12, 'Văn học Việt Nam', 34, 2, 'Khá', '2023-09-18', 8, 6, 6, 6),
(13, 'Địa lý tự nhiên', 33, 1, 'Rất tốt', '2023-09-14', 9, 7, 7, 8),
(14, 'Địa lý kinh tế', 12, 2, 'Tốt', '2023-09-17', 8, 7, 7, 8),
(15, 'Lịch sử Việt Nam', 23, 1, 'Tạm được', '2023-09-10', 7, 8, 8, 7),
(16, 'Lịch sử thế giới', 12, 2, 'Khá', '2023-09-13', 8, 8, 8, 7),
(17, 'Giáo dục công dân', 22, 1, 'Rất tốt', '2023-09-14', 9, 9, 9, 9),
(18, 'Pháp luật', 21, 2, 'Tốt', '2023-09-17', 8, 9, 9, 9),
(19, 'Giới thiệu môn học', 1, 1, 'Rất tốt', '2024-01-10', 9, 1, 1, 1),
(20, 'Toán cấp 3', 2, 2, 'Tốt', '2024-01-12', 8, 1, 1, 1),
(21, 'Hình học không gian', 3, 3, 'Rất tốt', '2024-01-15', 9, 1, 1, 1),
(22, 'Hàm số và ứng dụng', 4, 4, 'Tốt', '2024-01-18', 8, 1, 1, 1),
(23, 'Đại số', 5, 5, 'Tạm được', '2024-01-20', 7, 1, 1, 1),
(24, 'Toán tổ hợp', 6, 6, 'Tốt', '2024-01-22', 8, 1, 1, 1),
(25, 'Toán giải tích', 7, 7, 'Rất tốt', '2024-01-25', 9, 1, 1, 1),
(26, 'Lượng giác', 8, 8, 'Tốt', '2024-01-28', 8, 1, 1, 1),
(27, 'Toán ứng dụng', 9, 9, 'Rất tốt', '2024-01-30', 9, 1, 1, 1),
(28, 'Tổ hợp', 10, 10, 'Tạm được', '2024-02-01', 7, 1, 1, 1),
(29, 'Giao điểm của các đường tròn', 1, 1, 'Rất tốt', '2024-02-05', 9, 1, 1, 1),
(30, 'Tiếp tuyến và tiếp điểm', 2, 2, 'Tốt', '2024-02-08', 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yeucau`
--

CREATE TABLE `yeucau` (
  `mayeucau` int(11) NOT NULL,
  `matiet` int(11) NOT NULL,
  `tgduyet` date NOT NULL,
  `tgtao` date NOT NULL,
  `tinhtrang` enum('Duyệt','Chưa duyệt','Từ chối','') NOT NULL,
  `lido` varchar(200) DEFAULT NULL,
  `loaitiethoc` enum('Dạy bù','Dạy thay','','') NOT NULL,
  `magvmoi` int(11) DEFAULT NULL,
  `ngayhocmoi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `yeucau`
--

INSERT INTO `yeucau` (`mayeucau`, `matiet`, `tgduyet`, `tgtao`, `tinhtrang`, `lido`, `loaitiethoc`, `magvmoi`, `ngayhocmoi`) VALUES
(1, 1, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(2, 12, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(3, 10, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(4, 9, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(5, 8, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(6, 7, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(7, 5, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(8, 4, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(9, 3, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(10, 2, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy thay', 6, NULL),
(11, 13, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy bù', NULL, '2024-04-05'),
(12, 14, '2024-03-31', '2024-03-25', 'Chưa duyệt', 'Giáo viên đi công tác', 'Dạy bù', NULL, '2024-04-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bomon`
--
ALTER TABLE `bomon`
  ADD PRIMARY KEY (`mabm`),
  ADD KEY `fk_bomon_matotruong` (`matotruong`);

--
-- Indexes for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`mahs`,`matiet`),
  ADD KEY `fk_diemdanh_matiet` (`matiet`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`magv`),
  ADD KEY `fk_giaovien_email` (`email`),
  ADD KEY `fk_giaovien_mabm` (`mabm`),
  ADD KEY `magv` (`magv`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`mahs`),
  ADD KEY `fk_hocsinh_malop` (`malop`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `fk_lop_magvcn` (`magvcn`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamon`),
  ADD KEY `fk_monhoc_mabm` (`mabm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tiethoc`
--
ALTER TABLE `tiethoc`
  ADD PRIMARY KEY (`matiet`),
  ADD KEY `fk_tiethoc_malop` (`malop`),
  ADD KEY `fk_tiethoc_magv` (`magv`),
  ADD KEY `fk_tiethoc_mamon` (`mamon`);

--
-- Indexes for table `yeucau`
--
ALTER TABLE `yeucau`
  ADD PRIMARY KEY (`mayeucau`),
  ADD KEY `fk_yeucau_matiet` (`matiet`),
  ADD KEY `fk_yeucau_magvmoi` (`magvmoi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `magv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `mahs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `malop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `mamon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tiethoc`
--
ALTER TABLE `tiethoc`
  MODIFY `matiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `yeucau`
--
ALTER TABLE `yeucau`
  MODIFY `mayeucau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bomon`
--
ALTER TABLE `bomon`
  ADD CONSTRAINT `fk_bomon_matotruong` FOREIGN KEY (`matotruong`) REFERENCES `giaovien` (`magv`);

--
-- Constraints for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `fk_diemdanh_mahs` FOREIGN KEY (`mahs`) REFERENCES `hocsinh` (`mahs`),
  ADD CONSTRAINT `fk_diemdanh_matiet` FOREIGN KEY (`matiet`) REFERENCES `tiethoc` (`matiet`);

--
-- Constraints for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `fk_giaovien_email` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`),
  ADD CONSTRAINT `fk_giaovien_mabm` FOREIGN KEY (`mabm`) REFERENCES `bomon` (`mabm`);

--
-- Constraints for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `fk_hocsinh_malop` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`);

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `fk_lop_magvcn` FOREIGN KEY (`magvcn`) REFERENCES `giaovien` (`magv`);

--
-- Constraints for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `fk_monhoc_mabm` FOREIGN KEY (`mabm`) REFERENCES `bomon` (`mabm`);

--
-- Constraints for table `tiethoc`
--
ALTER TABLE `tiethoc`
  ADD CONSTRAINT `fk_tiethoc_magv` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`),
  ADD CONSTRAINT `fk_tiethoc_malop` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`),
  ADD CONSTRAINT `fk_tiethoc_mamon` FOREIGN KEY (`mamon`) REFERENCES `monhoc` (`mamon`);

--
-- Constraints for table `yeucau`
--
ALTER TABLE `yeucau`
  ADD CONSTRAINT `fk_yeucau_magvmoi` FOREIGN KEY (`magvmoi`) REFERENCES `giaovien` (`magv`),
  ADD CONSTRAINT `fk_yeucau_matiet` FOREIGN KEY (`matiet`) REFERENCES `tiethoc` (`matiet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
