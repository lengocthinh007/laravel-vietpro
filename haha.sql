-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 13, 2019 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `haha`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate`
--

CREATE TABLE `cate` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate`
--

INSERT INTO `cate` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'iphone', NULL, NULL),
(2, 'Samsung', 'samsung', NULL, NULL),
(4, 'Motorola', 'motorola', '2019-08-30 20:01:00', '2019-08-30 20:01:00'),
(5, 'HTC', 'htc', '2019-08-30 20:01:06', '2019-08-30 20:23:31'),
(6, 'Oppo', 'oppo', '2019-08-30 20:01:16', '2019-08-30 20:01:16'),
(7, 'Xiaomi', 'xiaomi', '2019-08-30 20:01:26', '2019-08-30 20:01:26'),
(8, 'Sony', 'sony', '2019-08-30 20:01:29', '2019-08-30 20:01:29'),
(9, 'LG', 'lg', '2019-08-30 20:34:23', '2019-09-01 01:01:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`com_id`, `com_mail`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'kikphantom@yahoo.com.vn', 'kid', 'khá rẻ', 15, '2019-09-09 03:27:04', '2019-09-09 03:27:04'),
(2, 'lengocthinh0099@gmail.com', 'HTC', 'Hay', 19, '2019-09-10 03:15:31', '2019-09-10 03:15:31'),
(3, 'lengocthinh006@gmail.com', 'Phúc', 'Tốt', 15, '2019-09-10 08:42:20', '2019-09-10 08:42:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_27_085056_vp_user', 1),
(4, '2019_08_29_084940_cate', 2),
(5, '2019_09_01_081934_product', 3),
(6, '2019_09_09_100638_comment', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` bigint(100) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(12, 'Điện Thoại Xiaomi Redmi 7 (2GB/16GB) - Hàng Chính Hãng', 'dien-thoai-xiaomi-redmi-7-2gb16gb-hang-chinh-hang', 2490000, 'VNP0_product-2.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<ul>\r\n	<li>Sự miêu tả:</li>\r\n	<li>Màu sắc: trắng / vàng / vàng hồng</li>\r\n	<li>Giải pháp bo mạch chủ: MTK6572</li>\r\n	<li>CPU: lõi kép</li>\r\n	<li>Tần số: 600-1300MHZ</li>\r\n	<li>Chế độ chờ: thẻ kép (một khe SIM tiêu chuẩn, một khe cắm micro SIM)</li>\r\n	<li>Màn hình: Màn hình IPS 5,5 inch</li>\r\n	<li>Độ phân giải: QHD 960 * 540</li>\r\n	<li>Pixel: 200W phía sau + 200W phía trước</li>\r\n	<li>Hệ thống: dành cho Android 4.4</li>\r\n	<li>Bộ nhớ: RAM 512MB + ROM 4GB (thông số thực của máy không chổi than)</li>\r\n	<li>Thẻ TF: hỗ trợ tối đa cho thẻ 32GTF bên ngoài</li>\r\n	<li>Mạng: 2G, 3G</li>\r\n	<li>Băng tần mạng: 2G: GSM: 850/900/1800 / 1900MHZ; 3G: WCDMA: 850 / 2100MHZ</li>\r\n	<li>Chức năng: Mở khóa MP3 / MP4 / FM / WiFi / GPS / BT /</li>\r\n	<li>WiFi: Hỗ trợ không dây 802.11 B / G / N</li>\r\n	<li>Dung lượng pin: pin lithium 3600mah tích hợp</li>\r\n	<li>Bộ chuyển đổi điện áp đầu vào: AC100-240V</li>\r\n	<li>Giao diện sạc: USB MICRO</li>\r\n	<li>Điện áp sạc: DC 5V 1A</li>\r\n	<li>Giao diện âm thanh: 3.5MM</li>\r\n	<li>Ngôn ngữ: Hỗ trợ đa ngôn ngữ</li>\r\n	<li>Kích thước sản phẩm：8*15.6*1cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/c3e147043163d9c3a69a18d012d07f29.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/a7563faf3f3149fc8c3a23df3c4754e5.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/6fc19a438866a7e617567aec0b7625d0.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/be2ecd5a27f4a79f510008a5c25d743a.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/8b992542f991dd27fb1072a7f81dc850.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/91e62925a709ade78512a5d8bba6fcfe.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/7f4176df468d74cc99ee4fa0b326482f.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/2d466548e49f3a8dcadfc821756de181.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">\r\n<h2>Đặc tính sản phẩm Điện thoại di động R9 5,5 inch Inch Điện thoại di động hai SIM Máy ảnh Android 960 * 540 cho Android4.4 GPS Bluetooth GSM 3G Kết nối Wifi WCDMA</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Thương hiệu</span>\r\n\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">OEM</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">252307277_VNAMZ-479362977</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Dòng sản phẩm</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">453454_1-YY</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Phong cách phụ kiện</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Others</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Loại bảo hành</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Warranty</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>', 1, 7, '2019-09-05 08:31:38', '2019-09-11 08:49:29'),
(13, 'Điện Thoại Samsung Galaxy Note 10 Plus (256GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-256gb12gb-hang-chinh-hang', 25590000, '9sGr_product-1.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Điện thoại chính hãng, Nguyên seal, Mới 100%</p>\r\n\r\n<p>Miễn phí giao hàng tiêu chuẩn toàn quốc</p>\r\n\r\n<p>Thiết kế: Nguyên khối</p>\r\n\r\n<p>Màn hình: 6.26\" HD+ (720 x 1520 Pixels)</p>\r\n\r\n<p>Camera Sau: Chính 12 MP &amp; Phụ 5 MP</p>\r\n\r\n<p>Camera Trước: 8 MP</p>\r\n\r\n<p>CPU: Qualcomm Snapdragon 632 8 nhân 64-bit</p>\r\n\r\n<p>Bộ Nhớ: 16GB</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>Tính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt</p>', 1, 2, '2019-09-05 08:32:31', '2019-09-05 08:32:31'),
(14, 'Điện Thoại Samsung Galaxy Note 10 Plus (260GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-260gb12gb-hang-chinh-hang', 25590000, 'ygx8_product-3.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Điện thoại chính hãng, Nguyên seal, Mới 100%</p>\r\n\r\n<p>Miễn phí giao hàng tiêu chuẩn toàn quốc</p>\r\n\r\n<p>Thiết kế: Nguyên khối</p>\r\n\r\n<p>Màn hình: 6.26\" HD+ (720 x 1520 Pixels)</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/Thinh/public/Hinhmota/images/product-3.png\" style=\"height:199px; width:115px\" /></p>\r\n\r\n<p>Camera Sau: Chính 12 MP &amp; Phụ 5 MP</p>\r\n\r\n<p>Camera Trước: 8 MP</p>\r\n\r\n<p>CPU: Qualcomm Snapdragon 632 8 nhân 64-bit</p>\r\n\r\n<p>Bộ Nhớ: 16GB</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>Tính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt</p>', 1, 2, '2019-09-05 08:33:14', '2019-09-11 08:38:56'),
(15, 'Điện Thoại Samsung Galaxy Note 10 Plus (261GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-261gb12gb-hang-chinh-hang', 25590000, 'xLWQ_product-1.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Điện thoại chính hãng, Nguyên seal, Mới 100%</p>\r\n\r\n<p>Miễn phí giao hàng tiêu chuẩn toàn quốc</p>\r\n\r\n<p>Thiết kế: Nguyên khối</p>\r\n\r\n<p>Màn hình: 6.26\" HD+ (720 x 1520 Pixels)</p>\r\n\r\n<p>Camera Sau: Chính 12 MP &amp; Phụ 5 MP</p>\r\n\r\n<p>Camera Trước: 8 MP</p>\r\n\r\n<p>CPU: Qualcomm Snapdragon 632 8 nhân 64-bit</p>\r\n\r\n<p>Bộ Nhớ: 16GB</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>Tính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt</p>', 1, 2, '2019-09-05 08:33:30', '2019-09-05 08:33:30'),
(16, 'Điện Thoại Samsung Galaxy Note 10 Plus (262GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-262gb12gb-hang-chinh-hang', 25590000, 'b2Pk_product-2.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Điện thoại chính hãng, Nguyên seal, Mới 100%</p>\r\n\r\n<p>Miễn phí giao hàng tiêu chuẩn toàn quốc</p>\r\n\r\n<p>Thiết kế: Nguyên khối</p>\r\n\r\n<p>Màn hình: 6.26\" HD+ (720 x 1520 Pixels)</p>\r\n\r\n<p>Camera Sau: Chính 12 MP &amp; Phụ 5 MP</p>\r\n\r\n<p>Camera Trước: 8 MP</p>\r\n\r\n<p>CPU: Qualcomm Snapdragon 632 8 nhân 64-bit</p>\r\n\r\n<p>Bộ Nhớ: 16GB</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>Tính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt</p>', 1, 2, '2019-09-05 08:33:41', '2019-09-05 08:33:41'),
(17, 'Điện Thoại Samsung Galaxy Note 10 Plus (263GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-263gb12gb-hang-chinh-hang', 25590000, '4hMh_product-1.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Điện thoại chính hãng, Nguyên seal, Mới 100%</p>\r\n\r\n<p>Miễn phí giao hàng tiêu chuẩn toàn quốc</p>\r\n\r\n<p>Thiết kế: Nguyên khối</p>\r\n\r\n<p>Màn hình: 6.26\" HD+ (720 x 1520 Pixels)</p>\r\n\r\n<p>Camera Sau: Chính 12 MP &amp; Phụ 5 MP</p>\r\n\r\n<p>Camera Trước: 8 MP</p>\r\n\r\n<p>CPU: Qualcomm Snapdragon 632 8 nhân 64-bit</p>\r\n\r\n<p>Bộ Nhớ: 16GB</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>Tính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt</p>', 1, 2, '2019-09-05 08:33:58', '2019-09-05 08:33:58'),
(18, 'Điện Thoại Samsung Galaxy Note 10 Plus (264GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-264gb12gb-hang-chinh-hang', 25590000, '6Ye1_product-2.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<ul>\r\n	<li>Sự miêu tả:</li>\r\n	<li>Màu sắc: trắng / vàng / vàng hồng</li>\r\n	<li>Giải pháp bo mạch chủ: MTK6572</li>\r\n	<li>CPU: lõi kép</li>\r\n	<li>Tần số: 600-1300MHZ</li>\r\n	<li>Chế độ chờ: thẻ kép (một khe SIM tiêu chuẩn, một khe cắm micro SIM)</li>\r\n	<li>Màn hình: Màn hình IPS 5,5 inch</li>\r\n	<li>Độ phân giải: QHD 960 * 540</li>\r\n	<li>Pixel: 200W phía sau + 200W phía trước</li>\r\n	<li>Hệ thống: dành cho Android 4.4</li>\r\n	<li>Bộ nhớ: RAM 512MB + ROM 4GB (thông số thực của máy không chổi than)</li>\r\n	<li>Thẻ TF: hỗ trợ tối đa cho thẻ 32GTF bên ngoài</li>\r\n	<li>Mạng: 2G, 3G</li>\r\n	<li>Băng tần mạng: 2G: GSM: 850/900/1800 / 1900MHZ; 3G: WCDMA: 850 / 2100MHZ</li>\r\n	<li>Chức năng: Mở khóa MP3 / MP4 / FM / WiFi / GPS / BT /</li>\r\n	<li>WiFi: Hỗ trợ không dây 802.11 B / G / N</li>\r\n	<li>Dung lượng pin: pin lithium 3600mah tích hợp</li>\r\n	<li>Bộ chuyển đổi điện áp đầu vào: AC100-240V</li>\r\n	<li>Giao diện sạc: USB MICRO</li>\r\n	<li>Điện áp sạc: DC 5V 1A</li>\r\n	<li>Giao diện âm thanh: 3.5MM</li>\r\n	<li>Ngôn ngữ: Hỗ trợ đa ngôn ngữ</li>\r\n	<li>Kích thước sản phẩm：8*15.6*1cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/c3e147043163d9c3a69a18d012d07f29.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/a7563faf3f3149fc8c3a23df3c4754e5.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/6fc19a438866a7e617567aec0b7625d0.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/be2ecd5a27f4a79f510008a5c25d743a.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/8b992542f991dd27fb1072a7f81dc850.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/91e62925a709ade78512a5d8bba6fcfe.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/7f4176df468d74cc99ee4fa0b326482f.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/2d466548e49f3a8dcadfc821756de181.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">\r\n<h2>Đặc tính sản phẩm Điện thoại di động R9 5,5 inch Inch Điện thoại di động hai SIM Máy ảnh Android 960 * 540 cho Android4.4 GPS Bluetooth GSM 3G Kết nối Wifi WCDMA</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Thương hiệu</span>\r\n\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">OEM</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">252307277_VNAMZ-479362977</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Dòng sản phẩm</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">453454_1-YY</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Phong cách phụ kiện</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Others</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Loại bảo hành</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Warranty</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>', 1, 2, '2019-09-05 08:34:21', '2019-09-11 08:44:30'),
(19, 'Điện Thoại Samsung Galaxy Note 10 Plus (265GB/12GB) - Hàng Chính Hãng', 'dien-thoai-samsung-galaxy-note-10-plus-265gb12gb-hang-chinh-hang', 25590000, '9Wef_product-1.png', '12 tháng', 'cáp sạc', 'Máy mới 100%', 'Dán cường lực', 1, '<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\">\r\n<ul>\r\n	<li>Sự miêu tả:</li>\r\n	<li>Màu sắc: trắng / vàng / vàng hồng</li>\r\n	<li>Giải pháp bo mạch chủ: MTK6572</li>\r\n	<li>CPU: lõi kép</li>\r\n	<li>Tần số: 600-1300MHZ</li>\r\n	<li>Chế độ chờ: thẻ kép (một khe SIM tiêu chuẩn, một khe cắm micro SIM)</li>\r\n	<li>Màn hình: Màn hình IPS 5,5 inch</li>\r\n	<li>Độ phân giải: QHD 960 * 540</li>\r\n	<li>Pixel: 200W phía sau + 200W phía trước</li>\r\n	<li>Hệ thống: dành cho Android 4.4</li>\r\n	<li>Bộ nhớ: RAM 512MB + ROM 4GB (thông số thực của máy không chổi than)</li>\r\n	<li>Thẻ TF: hỗ trợ tối đa cho thẻ 32GTF bên ngoài</li>\r\n	<li>Mạng: 2G, 3G</li>\r\n	<li>Băng tần mạng: 2G: GSM: 850/900/1800 / 1900MHZ; 3G: WCDMA: 850 / 2100MHZ</li>\r\n	<li>Chức năng: Mở khóa MP3 / MP4 / FM / WiFi / GPS / BT /</li>\r\n	<li>WiFi: Hỗ trợ không dây 802.11 B / G / N</li>\r\n	<li>Dung lượng pin: pin lithium 3600mah tích hợp</li>\r\n	<li>Bộ chuyển đổi điện áp đầu vào: AC100-240V</li>\r\n	<li>Giao diện sạc: USB MICRO</li>\r\n	<li>Điện áp sạc: DC 5V 1A</li>\r\n	<li>Giao diện âm thanh: 3.5MM</li>\r\n	<li>Ngôn ngữ: Hỗ trợ đa ngôn ngữ</li>\r\n	<li>Kích thước sản phẩm：8*15.6*1cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/c3e147043163d9c3a69a18d012d07f29.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/a7563faf3f3149fc8c3a23df3c4754e5.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/6fc19a438866a7e617567aec0b7625d0.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/be2ecd5a27f4a79f510008a5c25d743a.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/8b992542f991dd27fb1072a7f81dc850.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/91e62925a709ade78512a5d8bba6fcfe.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/7f4176df468d74cc99ee4fa0b326482f.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 8px 0px; width: 950px; white-space: pre-wrap;\">\r\n<div style=\"margin: 0px; padding: 0px; width: 950px;\"><img src=\"https://vn-live-01.slatic.net/p/2d466548e49f3a8dcadfc821756de181.jpg\" style=\"border-style:none; display:block; height:auto !important; margin:0px; max-width:100%; padding:0px; width:950px\" /></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">\r\n<h2>Đặc tính sản phẩm Điện thoại di động R9 5,5 inch Inch Điện thoại di động hai SIM Máy ảnh Android 960 * 540 cho Android4.4 GPS Bluetooth GSM 3G Kết nối Wifi WCDMA</h2>\r\n\r\n<div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\">\r\n<ul>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Thương hiệu</span>\r\n\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">OEM</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">SKU</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">252307277_VNAMZ-479362977</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Dòng sản phẩm</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">453454_1-YY</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Phong cách phụ kiện</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Others</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(117, 117, 117)\">Loại bảo hành</span>\r\n	<div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Warranty</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>', 1, 2, '2019-09-05 08:34:33', '2019-09-11 08:42:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lengocthinh006@gmail.com', '$2y$10$YT08qptfPH3BiK5G5adjjOPr6FYaZvj4EOY9pIu1s6M95pQUmBp3K', 1, 'g9lFzFyTsRicI1RxF3kJsAgB9NUVTwpNW8INNrdo7xVB1ZHi0QpUsDYtDXri', NULL, NULL),
(2, 'admin@gmail.com', '$2y$10$4PUsCinFPe.8fgmNv.m/YeO2wPKCcP1/C.Z.ZoIm62Z3sETZ.g9B2', 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `comment_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `product_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cate`
--
ALTER TABLE `cate`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `cate` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
