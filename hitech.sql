-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 06, 2021 lúc 05:18 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hitech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image_path`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'gucci', '', '', NULL, '2020-09-17 14:34:46', '2020-09-17 14:34:46', 0),
(3, 'Shin33xx', 'shin33xx', '/storage/photos/brand/2/RuU7EYf36wZyPneGrfOE.jpg', '2020-09-12 15:53:14', '2020-09-17 14:34:42', '2020-09-17 14:34:42', 2),
(4, 'ajc', 'ajc', '/storage/photos/brand/3/GgFpkonzUNRtKMxv09Pn.jpg', '2020-09-17 14:48:04', '2020-09-17 14:48:04', NULL, 3),
(5, 'drive', 'drive', '/storage/photos/brand/3/3FlH5XvCGtb4vv3mXGzI.jpg', '2020-09-17 14:48:23', '2020-09-17 14:48:23', NULL, 3),
(6, 'ekom', 'ekom', '/storage/photos/brand/3/Thc7i2rjbigjftn1zyZn.jpg', '2020-09-17 14:48:34', '2020-09-17 14:48:34', NULL, 3),
(7, 'eme', 'eme', '/storage/photos/brand/3/8rliPYM9jZl2FnANrtQy.jpg', '2020-09-17 14:48:45', '2020-09-17 14:48:45', NULL, 3),
(8, 'ibis', 'ibis', '/storage/photos/brand/3/P7qIcvD7cDNrGefxCgyK.jpg', '2020-09-17 14:48:54', '2020-09-17 14:48:54', NULL, 3),
(9, 'neurowerk', 'neurowerk', '/storage/photos/brand/3/vuvCD0MxJmjaTHM0MwW4.png', '2020-09-17 14:49:34', '2020-09-17 14:49:34', NULL, 3),
(10, 'daray', 'daray', '/storage/photos/brand/3/32tRnDnJTGINGmU2CAhU.png', '2020-09-17 14:49:57', '2020-09-17 14:49:57', NULL, 3),
(11, 'medin', 'medin', '/storage/photos/brand/3/u4jOO6l2EHLKnRml39wI.png', '2020-09-17 14:50:07', '2020-09-17 14:50:07', NULL, 3),
(12, 'medisana', 'medisana', '/storage/photos/brand/3/htgkcLydxltQQVeNeG12.jpg', '2020-09-17 14:50:21', '2020-09-17 14:50:21', NULL, 3),
(13, 'olidef', 'olidef', '/storage/photos/brand/3/AZFq15w0YSlOTwLqhCm5.jpg', '2020-09-17 14:50:39', '2020-09-17 14:50:39', NULL, 3),
(14, 'mallard medical', 'mallard-medical', '/storage/photos/brand/3/GvPir5fRvkd1uClqnuwC.png', '2020-09-17 14:50:58', '2020-09-17 14:50:58', NULL, 3),
(15, 'micromed', 'micromed', '/storage/photos/brand/3/qzI6JCQF20YfYyWzuok4.jpg', '2020-09-17 14:51:11', '2020-09-17 14:51:11', NULL, 3),
(16, 'ms westfalia', 'ms-westfalia', '/storage/photos/brand/3/h7903lzvNOVSYJA9A1i2.jpg', '2020-09-17 14:51:33', '2020-09-17 14:51:33', NULL, 3),
(17, 'ordisi', 'ordisi', '/storage/photos/brand/3/DUD7YGYsiiU6cQ9fGxgy.png', '2020-09-17 14:51:50', '2020-09-17 14:51:50', NULL, 3),
(18, 'progetti', 'progetti', '/storage/photos/brand/3/pvYicz7lGaaB33ggmrUT.jpg', '2020-09-17 14:52:04', '2020-09-17 14:52:04', NULL, 3),
(19, 'treaton', 'treaton', '/storage/photos/brand/3/WhfuWQq95Byr2EQFFEVH.png', '2020-09-17 14:52:16', '2020-09-17 14:52:16', NULL, 3),
(20, 'Máy chụp x-quang', 'may-chup-x-quang', '/storage/photos/brand/3/gpKbRFLjb9GspRyGpPNw.jpg', '2020-09-18 10:51:15', '2020-09-18 10:51:34', '2020-09-18 10:51:34', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `deleted_at`, `created_at`, `updated_at`, `image_path`, `user_id`) VALUES
(42, 'Chuẩn đoán hình ảnh', 'chuan-doan-hinh-anh', 0, NULL, '2020-09-17 15:05:21', '2020-09-23 10:48:18', '/storage/photos/category/3/7Fc62ZbDhRLoAmL8k9FQ.jpg', 3),
(43, 'Thăm dò chức năng', 'tham-do-chuc-nang', 0, NULL, '2020-09-17 15:06:14', '2020-09-23 10:48:52', '/storage/photos/category/3/ErnyibpaS8Fl3UcriynM.jpg', 3),
(44, 'Cấp cứu hồi sức tích cực', 'cap-cuu-hoi-suc-tich-cuc', 0, NULL, '2020-09-17 15:06:45', '2020-09-23 10:50:38', '/storage/photos/category/3/8YUHwb9hTAxy0rGqsG2F.jpg', 3),
(45, 'Thiết bị phòng mổ', 'thiet-bi-phong-mo', 0, NULL, '2020-09-17 15:07:11', '2020-09-23 10:52:49', '/storage/photos/category/3/OCGAWqdr9HlUZaol4sqM.jpg', 3),
(46, 'Thiết bị sản khoa', 'thiet-bi-san-khoa', 0, NULL, '2020-09-17 15:07:33', '2020-09-23 10:53:09', '/storage/photos/category/3/73It5794Y53r4hhel216.jpg', 3),
(47, 'Vật tư tiêu hao', 'vat-tu-tieu-hao', 0, NULL, '2020-09-17 15:07:50', '2020-09-23 10:53:39', '/storage/photos/category/3/hRytCky3akTTRlcvHzOe.jpg', 3),
(48, 'Máy chụp x-quang', 'may-chup-x-quang', 42, NULL, '2020-09-18 10:52:07', '2020-09-18 10:52:07', '/storage/photos/category/3/15JWL6Y871Hjee0lvAg3.jpg', 3),
(49, 'Máy siêu âm', 'may-sieu-am', 42, NULL, '2020-09-18 10:52:33', '2020-09-18 10:52:33', '/storage/photos/category/3/qdji9FDDo6MyMVWjhbbm.jpg', 3),
(50, 'Hệ thống nội soi', 'he-thong-noi-soi', 42, NULL, '2020-09-18 10:52:58', '2020-09-18 10:52:58', '/storage/photos/category/3/Od3RX3ZI8ruFiMfezABh.jpg', 3),
(51, 'Máy soi cổ tử cung', 'may-soi-co-tu-cung', 42, NULL, '2020-09-18 10:53:25', '2020-09-18 10:53:25', '/storage/photos/category/3/1kRlymI2bMM49JJjvpIx.jpg', 3),
(52, 'Máy đo điện não', 'may-do-dien-nao', 43, NULL, '2020-09-18 11:05:47', '2020-09-18 11:05:47', '/storage/photos/category/3/jj70TyKXKq72MQsSgPuL.jpg', 3),
(53, 'Máy đo điện tim', 'may-do-dien-tim', 43, NULL, '2020-09-18 11:06:28', '2020-09-18 11:06:28', '/storage/photos/category/3/tza2Cr34W1OEsw0AJzKd.jpg', 3),
(54, 'Máy đo chức năng hô hấp', 'may-do-chuc-nang-ho-hap', 43, NULL, '2020-09-18 11:07:28', '2020-09-18 11:07:28', '/storage/photos/category/3/B7JLde5A81NLFFvKdvNM.jpg', 3),
(55, 'Máy đo thính lực cho trẻ sơ sinh', 'may-do-thinh-luc-cho-tre-so-sinh', 43, NULL, '2020-09-18 11:07:59', '2020-09-18 11:07:59', '/storage/photos/category/3/O4DZ6AX7xGExLiMptBPT.jpg', 3),
(56, 'Máy thăm dò chức năng khác', 'may-tham-do-chuc-nang-khac', 43, NULL, '2020-09-18 11:08:37', '2020-09-18 11:08:37', '/storage/photos/category/3/Go2REI0CipuUmX52eI37.jpg', 3),
(57, 'Máy hỗ trợ thở', 'may-ho-tro-tho', 44, NULL, '2020-09-18 11:27:09', '2020-09-18 11:27:09', '/storage/photos/category/3/fyUMEoSJZUT7ip83OJZd.jpg', 3),
(58, 'Monitor theo dõi bệnh nhân', 'monitor-theo-doi-benh-nhan', 44, NULL, '2020-09-18 11:27:36', '2020-09-18 11:27:36', '/storage/photos/category/3/2rzIL1oG31ux93Yb1PUO.jpg', 3),
(59, 'Máy theo dõi độ saua gây mê và an thần', 'may-theo-doi-do-saua-gay-me-va-an-than', 44, NULL, '2020-09-18 11:28:37', '2020-09-18 11:28:37', '/storage/photos/category/3/4Plmru87L5MCbuYYKHcS.jpg', 3),
(60, 'Máy khử rung tim', 'may-khu-rung-tim', 44, NULL, '2020-09-18 11:29:04', '2020-09-18 11:29:04', '/storage/photos/category/3/nGc5zjoK6s4RbDMw6EeC.jpg', 3),
(61, 'máy đo độ bão hòa oxi trong máu', 'may-do-do-bao-hoa-oxi-trong-mau', 44, NULL, '2020-09-18 11:31:48', '2020-09-18 11:31:48', '/storage/photos/category/3/97n4TNn2GtvpbCFWvlGj.jpg', 3),
(62, 'Giường hồi sức cấp cứu', 'giuong-hoi-suc-cap-cuu', 44, NULL, '2020-09-18 11:32:21', '2020-09-18 11:32:21', '/storage/photos/category/3/MeKsEjiwaG4RNSnTIHL0.jpg', 3),
(63, 'Thiết bị làm ấm máu và dịch truyền', 'thiet-bi-lam-am-mau-va-dich-truyen', 44, NULL, '2020-09-18 11:36:07', '2020-09-18 11:36:07', '/storage/photos/category/3/xYVIGGfLljLjanguH1ME.jpg', 3),
(64, 'Máy truyền dịch', 'may-truyen-dich', 44, NULL, '2020-09-18 11:37:52', '2020-09-18 11:37:52', '/storage/photos/category/3/bwiaDynq1HV0V2KQJLHz.jpg', 3),
(65, 'Bơm tiêm điện', 'bom-tiem-dien', 44, NULL, '2020-09-18 11:38:22', '2020-09-18 11:38:22', '/storage/photos/category/3/RMJMiD1WQPXyN8AleWz5.jpg', 3),
(66, 'Máy gây mê kèm thở', 'may-gay-me-kem-tho', 45, NULL, '2020-09-18 11:57:38', '2020-09-18 11:57:38', '/storage/photos/category/3/OHOmnqm5pcANxq419w0N.png', 3),
(67, 'Bàn mổ cơ điện thủy lực', 'ban-mo-co-dien-thuy-luc', 45, NULL, '2020-09-18 11:58:16', '2020-09-18 11:58:16', '/storage/photos/category/3/4mkjrIhtlJemPa8Rp553.png', 3),
(68, 'Đèn mổ led ánh sáng lạnh', 'den-mo-led-anh-sang-lanh', 45, NULL, '2020-09-18 11:58:59', '2020-09-18 11:58:59', '/storage/photos/category/3/WIyBNQLuO40NsgNeERQD.jpg', 3),
(69, 'Dao mổ điện', 'dao-mo-dien', 45, NULL, '2020-09-18 11:59:55', '2020-09-18 11:59:55', '/storage/photos/category/3/w7Vh5rl3sLgXTYipJTmX.jpg', 3),
(70, 'Máy hút dịch', 'may-hut-dich', 45, NULL, '2020-09-18 12:00:49', '2020-09-18 12:00:49', '/storage/photos/category/3/JuZWLK8IbqKCM3GYspTn.jpg', 3),
(71, 'Bộ đặt nội khí quản', 'bo-dat-noi-khi-quan', 45, NULL, '2020-09-18 12:02:32', '2020-09-18 12:02:32', '/storage/photos/category/3/DWTjqtXKXvzO1U8sFLJ3.jpg', 3),
(72, 'Tủ làm ấm dịch truyền', 'tu-lam-am-dich-truyen', 45, NULL, '2020-09-18 12:02:59', '2020-09-18 12:02:59', '/storage/photos/category/3/8v7oJV8MuqblQg6vE79l.jpg', 3),
(73, 'Bộ dụng cụ mổ', 'bo-dung-cu-mo', 45, NULL, '2020-09-18 12:03:23', '2020-09-18 12:03:23', '/storage/photos/category/3/iDHSNpsgIxHGXuxpAsmE.jpg', 3),
(74, 'Bồn thủy trị liệu', 'bon-thuy-tri-lieu', 47, NULL, '2020-09-18 12:18:10', '2020-09-18 12:18:10', '/storage/photos/category/3/myIt8tQdKQgI92hgyUVW.jpg', 3),
(75, 'Vật lý trị liệu & phục hồi chức năng', 'vat-ly-tri-lieu-phuc-hoi-chuc-nang', 47, NULL, '2020-09-18 12:18:44', '2020-09-18 12:18:44', '/storage/photos/category/3/SAjlMlEVBrChPLwXGOG7.jpg', 3),
(76, 'Tủ trữ máu', 'tu-tru-mau', 47, NULL, '2020-09-18 12:19:06', '2020-09-18 12:19:06', '/storage/photos/category/3/6wTzYHrM5iEOfKKT96ug.jpg', 3),
(77, 'Thiết bị y tế gia đình', 'thiet-bi-y-te-gia-dinh', 47, NULL, '2020-09-18 12:20:17', '2020-09-18 12:20:17', '/storage/photos/category/3/m1GnHF3bvf2WKphFvTdZ.jpg', 3),
(78, 'Vật tư y tế, tiêu hao, hóa chất', 'vat-tu-y-te-tieu-hao-hoa-chat', 47, NULL, '2020-09-18 12:20:49', '2020-09-18 12:20:49', '/storage/photos/category/3/lxMmpsrjuMHlhncSIbi4.jpg', 3),
(79, 'Các dụng cụ phẫu thuật', 'cac-dung-cu-phau-thuat', 47, NULL, '2020-09-18 12:21:16', '2020-09-18 12:21:51', '/storage/photos/category/3/u3jTXzFvAaMZ362sEwra.jpg', 3),
(80, 'Thiết bị y tế thú y', 'thiet-bi-y-te-thu-y', 47, NULL, '2020-09-18 12:21:43', '2020-09-18 12:22:43', '/storage/photos/category/3/5tBiQ90W2E7qfZVkJ7U5.png', 3),
(81, 'Các dụng cụ phẫu thuật nội soi', 'cac-dung-cu-phau-thuat-noi-soi', 47, NULL, '2020-09-18 12:23:21', '2020-09-18 12:23:21', '/storage/photos/category/3/tgAYAtTkz7rosxPdV5Jq.jpg', 3),
(82, 'Máy xông khí dung', 'may-xong-khi-dung', 47, NULL, '2020-09-18 12:23:52', '2020-09-18 12:23:52', '/storage/photos/category/3/oZxNLsmt0A6AOg4j9m9E.jpg', 3),
(83, 'Đèn khám bệnh đeo trán', 'den-kham-benh-deo-tran', 47, NULL, '2020-09-18 12:24:25', '2020-09-18 12:24:25', '/storage/photos/category/3/jBrqpNx36E9tO73jxbg2.jpg', 3),
(84, 'Thiết bị khám', 'thiet-bi-kham', 47, NULL, '2020-09-18 12:24:41', '2020-09-18 12:24:41', '/storage/photos/category/3/spjBSL2tZSWipjpf7DrV.jpg', 3),
(85, 'Lồng ấp trẻ so sinh', 'long-ap-tre-so-sinh', 46, NULL, '2020-09-18 12:33:18', '2020-09-18 12:33:18', '/storage/photos/category/3/D3IIwX7U8UkwQOKfx5Bo.jpg', 3),
(86, 'Giường hồi sức và sưởi ấm trẻ sơ sinh', 'giuong-hoi-suc-va-suoi-am-tre-so-sinh', 46, NULL, '2020-09-18 12:33:49', '2020-09-18 12:33:49', '/storage/photos/category/3/e7qPqNUKFUuejpQZEpgm.jpg', 3),
(87, 'Đèn chiếu vàng da', 'den-chieu-vang-da', 46, NULL, '2020-09-18 12:34:06', '2020-09-18 12:34:06', '/storage/photos/category/3/KAmWusB0OjBpJiMf2QB4.jpg', 3),
(88, 'Nôi sơ sinh', 'noi-so-sinh', 46, NULL, '2020-09-18 12:34:29', '2020-09-18 12:34:29', '/storage/photos/category/3/Tj6DDZnX9FH1jyIHiL2b.jpg', 3),
(89, 'Cân trẻ sơ sinh kèm thước đo', 'can-tre-so-sinh-kem-thuoc-do', 46, NULL, '2020-09-18 12:34:59', '2020-09-18 12:34:59', '/storage/photos/category/3/VflMh0FeLleTR6mTEo0G.jpg', 3),
(90, 'Monitor sản khoa', 'monitor-san-khoa', 46, NULL, '2020-09-18 12:35:27', '2020-09-18 12:35:27', '/storage/photos/category/3/Wyjq4DV5qjz2xCoYHMRy.jpg', 3),
(91, 'Đèn soi khám sản', 'den-soi-kham-san', 46, NULL, '2020-09-18 12:35:56', '2020-09-18 12:35:56', '/storage/photos/category/3/3xKJQJT3goH2tmtaqWN4.jpg', 3),
(92, 'Doppler tim thai', 'doppler-tim-thai', 46, NULL, '2020-09-18 12:36:23', '2020-09-18 12:36:23', '/storage/photos/category/3/T7uTmOwkEZLJTGMpfgJS.jpg', 3),
(93, 'Máy cắt đốt cổ tử cung', 'may-cat-dot-co-tu-cung', 46, NULL, '2020-09-18 12:37:08', '2020-09-18 12:37:08', '/storage/photos/category/3/28AquTRrTDxeWsV3AvPr.jpg', 3),
(94, 'Máy áp lạnh cổ tử cung', 'may-ap-lanh-co-tu-cung', 46, NULL, '2020-09-18 12:37:31', '2020-09-18 12:37:31', '/storage/photos/category/3/DZqidVakiDdsrmi9VZzl.png', 3),
(95, 'Bàn hộ sinh', 'ban-ho-sinh', 46, NULL, '2020-09-18 12:37:58', '2020-09-18 12:37:58', '/storage/photos/category/3/HE594CXGlWVTP4bZHYDO.jpg', 3),
(96, 'Bàn khám sản', 'ban-kham-san', 46, NULL, '2020-09-18 12:38:19', '2020-09-18 12:38:19', '/storage/photos/category/3/sz9dWopjf9LxvPh4BEOn.jpg', 3),
(97, 'Đèn khám sản di động', 'den-kham-san-di-dong', 46, NULL, '2020-09-18 12:38:49', '2020-09-18 12:38:49', '/storage/photos/category/3/CpL5kvO20bIzfJ9WYN7j.jpg', 3),
(98, 'Đèn soi tai mũi họng', 'den-soi-tai-mui-hong', 46, NULL, '2020-09-18 12:39:12', '2020-09-18 12:39:12', '/storage/photos/category/3/glrKeP1s6eRcXATSXyJx.jpg', 3),
(99, 'xxx', 'xxx', 42, '2020-09-24 16:34:13', '2020-09-24 16:34:07', '2020-09-24 16:34:13', '/storage/photos/category/3/yZD3c5JzXcAyGqERA6vq.png', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `address`, `title`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Shin33', '0868845289', 'fcxomben99@gmail.com', 'Nam Định', 'Nga sẽ cung cấp 100 triệu liều vaccine ngừa Covid-19 cho Ấn Độ', 'gdrtgse', NULL, '2020-09-28 03:21:01', '2020-09-28 03:21:01'),
(4, 'Shin33', '0868845289', '0868845289', 'afds', 'Nga sẽ cung cấp 100 triệu liều vaccine ngừa Covid-19 cho Ấn Độ', 'sdaf', NULL, '2020-10-08 10:22:04', '2020-10-08 10:22:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `out_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infos`
--

INSERT INTO `infos` (`id`, `address`, `created_at`, `updated_at`, `user_id`) VALUES
(8, 't', '2021-01-04 03:20:56', '2021-01-04 03:20:56', 17),
(9, 'da', '2021-01-04 04:23:58', '2021-01-04 04:23:58', 19),
(11, 'Hà Nội', '2021-01-04 13:39:59', '2021-01-04 13:39:59', 1),
(13, 'Hà Nội', '2021-01-26 14:11:07', '2021-01-26 14:11:07', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `intros`
--

CREATE TABLE `intros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `intros`
--

INSERT INTO `intros` (`id`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM c&oacute; t&ecirc;n viết tắt l&agrave; TM Hitech.,JSC</strong>&nbsp;được th&agrave;nh lập v&agrave;o năm 1997&nbsp;l&agrave; doanh nghiệp dẫn đầu tại thị trường Việt Nam&nbsp;chuy&ecirc;n cung cấp c&aacute;c giải ph&aacute;p kỹ thuật hiện đại, chuy&ecirc;n s&acirc;u, ho&agrave;n chỉnh v&agrave; trọn g&oacute;i của nhiều thương hiệu lớn đẳng cấp tr&ecirc;n thế giới về Thiết Bị Y Tế&nbsp;cho c&aacute;c dự &aacute;n đầu tư m&aacute;y m&oacute;c, x&acirc;y dựng mới hay cải tạo bệnh viện đạt ti&ecirc;u chuẩn quốc gia v&agrave; ti&ecirc;u chuẩn quốc tế.</p>\r\n\r\n<p><strong>Mục ti&ecirc;u của TM Hi-Tech</strong>: Ngay từ khi th&agrave;nh lập, ban l&atilde;nh đạo C&ocirc;ng ty đ&atilde; đặt nhiệm vụ ti&ecirc;n phong l&agrave; trở th&agrave;nh C&ocirc;ng ty kinh doanh thiết bị y tế ti&ecirc;u biểu, lớn mạnh v&agrave; chuy&ecirc;n nghiệp tại Việt Nam. TM Hi-Tech sẽ ng&agrave;y c&agrave;ng cố gắng x&acirc;y dựng v&agrave; ph&aacute;t triển thương hiệu, bản sắc ri&ecirc;ng cho doanh nghiệp m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tmhitech.vn/Content/html/images/img-gt1.jpg\" />&nbsp;<img alt=\"\" src=\"https://tmhitech.vn/Content/html/images/img-gt2.jpg\" />&nbsp;<img alt=\"\" src=\"https://tmhitech.vn/Content/html/images/img-gt3.jpg\" /></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Hoạt động của TM Hi-Tech:</strong>&nbsp;TM Hi-Tech hoạt động c&oacute; hiệu quả v&agrave; uy t&iacute;n trong c&aacute;c lĩnh vực kinh doanh của m&igrave;nh:</p>\r\n\r\n<p>1. Cung cấp thiết bị y tế chuy&ecirc;n nghiệp v&agrave; đẳng cấp như c&aacute;c&nbsp;Thiết bị thăm d&ograve; chức năng, Thiết bị Hồi sức cấp cứu,&nbsp;Thiết bị Chẩn đo&aacute;n h&igrave;nh ảnh , M&aacute;y XQ soi chụp c&aacute;c loại,&nbsp;Thiết bị phục hồi chức năng, Thiết bị sản khoa, nhi khoa,Thiết bị tai mũi họng,Thiết bị vật l&yacute; trị liệu, Bộ dụng cụ nội soi, Thiết bị x&eacute;t nghiệm, Thiết bị mắt &ndash; nh&atilde;n khoa.</p>\r\n\r\n<p>2. Cung cấp thiết bị chăm s&oacute;c sức khỏe gia đ&igrave;nh cao cấp như: m&aacute;y đo huyết &aacute;p, đường huyết, nhiệt kế điện tử, m&aacute;y trị vi&ecirc;m mũi dị ứng, m&aacute;y tạo độ ẩm&hellip;</p>\r\n\r\n<p>3. Đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng những thiết bị y tế c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; hiện đại nhất.</p>\r\n\r\n<p>4. Sản phẩm đ&atilde; được lắp đặt ở nhiều Bệnh viện tuyến Trung ương, tuyến tỉnh kh&aacute;c nhau cũng như tuyến Huyện. C&aacute;c Bệnh viện Quốc tế, Bệnh viện tư hay c&aacute;c ph&ograve;ng kh&aacute;m lớn nhỏ.</p>\r\n\r\n<p>5. Ngo&agrave;i c&aacute;c sản phẩm thiết bị Y tế phục vụ cho con người C&ocirc;ng ty ch&uacute;ng t&ocirc;i c&ograve;n cung cấp thiết bị chuy&ecirc;n s&acirc;u cho th&uacute; y.</p>\r\n\r\n<p>TM Hi-Tech với những sản phẩm chất lượng cao, đạo đức trong kinh doanh c&ugrave;ng đội ngũ c&aacute;n bộ, chuy&ecirc;n vi&ecirc;n y&ecirc;u nghề, nhiều kinh nghiệm lu&ocirc;n đ&aacute;p ứng được nhu cầu đa dạng của mọi kh&aacute;ch h&agrave;ng kh&aacute;c nhau nhằm tạo ra c&aacute;c gi&aacute; trị h&agrave;i h&ograve;a về chất lượng v&agrave; chi ph&iacute;, đem lại sự h&agrave;i l&ograve;ng về c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ v&agrave; sự hiệu quả trong đầu tư v&agrave; sử dụng.</p>\r\n\r\n<p><strong><em>H&atilde;y tin tưởng đ&oacute;n nhận những sản phẩm c&ocirc;ng nghệ cao m&agrave; ch&uacute;ng t&ocirc;i mang đến cho bạn ng&agrave;y h&ocirc;m nay!</em></strong></p>', NULL, '2020-09-21 06:01:43', '2020-09-21 07:12:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_31_034716_create_categories_table', 1),
(5, '2020_09_03_162452_alter_table_categories_v1', 2),
(6, '2020_09_03_163838_alter_table_users_v1', 3),
(7, '2020_09_07_093023_create_products_table', 4),
(8, '2020_09_07_100936_alter_table_product_v2', 5),
(9, '2020_09_07_101302_create_tags_table', 6),
(10, '2020_09_07_103357_create_table_product_tag', 7),
(11, '2020_09_07_110344_alter_table_product_v3', 8),
(12, '2020_09_07_111026_create_brands_table', 9),
(13, '2020_09_07_153159_add_table_product_image', 10),
(14, '2020_09_07_162824_alter_table_product_v4', 11),
(15, '2020_09_08_111544_alter_table_product_v5', 12),
(16, '2020_09_08_160108_alter_table_product_v6', 13),
(17, '2020_09_08_160314_alter_table_product_v7', 14),
(18, '2020_09_09_011137_alter_table_product_tag_v1', 15),
(19, '2020_09_12_163709_alter_table_tag_v1', 16),
(20, '2020_09_12_174631_alter_table_brand_v1', 17),
(21, '2020_09_13_085920_create_slides_table', 18),
(22, '2020_09_13_095529_alter_table_slide_v1', 19),
(23, '2020_09_13_153013_create_posts_table', 20),
(24, '2020_09_13_155042_create_post_cates_table', 21),
(25, '2020_09_13_161329_alter_table__post_cates_v1', 22),
(26, '2020_09_13_171456_alter_table_post_v1', 23),
(27, '2020_09_14_163306_create_roles_table', 24),
(28, '2020_09_14_164150_create_user_roles_table', 25),
(29, '2020_09_14_172855_alter_table_role_v1', 26),
(30, '2020_09_15_092510_create_permissions_table', 27),
(31, '2020_09_15_094533_create_permission_roles_table', 28),
(32, '2020_09_15_115500_alter_table_permission_v1', 29),
(33, '2020_09_21_101938_create_intros_table', 30),
(34, '2020_09_21_151007_create_services_table', 31),
(35, '2020_09_21_184520_create_recruitments_table', 32),
(36, '2020_09_21_191954_alter_table_recruitment', 33),
(37, '2020_09_21_201919_alter_table_recruitment_v2', 34),
(38, '2020_09_22_171629_create_contacts_table', 35),
(39, '2020_09_23_222029_create_projects_table', 36),
(40, '2020_12_20_171728_create_orders_table', 37),
(41, '2020_12_20_173855_create_order_details_table', 37),
(42, '2020_12_20_175107_create_discounts_table', 38),
(43, '2020_12_31_163351_add_price_for_product', 39),
(44, '2021_01_03_104534_add_column_phone_to_user', 40),
(45, '2021_01_03_104738_create_infos_table', 40),
(46, '2021_01_03_105203_add_column_user_id_to_infors', 41),
(47, '2021_01_03_173437_add_column_address_to_user', 42),
(48, '2021_01_26_215758_alter_table_product', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ship_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(20,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `ship_name`, `ship_phone`, `ship_address`, `total_price`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'Khải Lê', '0868845289', 'Hà Nội', '49995.00', NULL, 1, '2021-01-25 02:32:00', '2021-02-24 14:38:39', NULL),
(4, 1, 'Khải Lê', '0868845289', 'Nam định2', '2329000000.00', NULL, 0, '2021-03-01 02:38:25', '2021-03-01 02:38:25', NULL),
(5, 1, 'Khải Lê', '0868845289', 'Nam định2sdafdsaf', '20000000.00', NULL, 2, '2021-03-10 15:49:46', '2021-03-10 15:50:29', NULL),
(6, 1, 'Khải Lê', '0868845289', 'Nam định2', '80000000.00', NULL, 0, '2021-03-10 15:57:29', '2021-03-10 15:57:29', NULL),
(7, 1, 'Khải Lê 22', '0868845289', 'Nam định2', '100000000.00', NULL, 2, '2021-03-11 01:38:31', '2021-03-11 01:40:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 34, 3, '2021-01-05 04:24:11', '2021-01-05 04:24:11', NULL),
(2, 2, 33, 2, '2021-01-05 04:24:11', '2021-01-05 04:24:11', NULL),
(3, 3, 33, 5, '2021-01-25 02:32:00', '2021-01-25 02:32:00', NULL),
(4, 4, 44, 1, '2021-03-01 02:38:25', '2021-03-01 02:38:25', NULL),
(5, 4, 41, 100, '2021-03-01 02:38:25', '2021-03-01 02:38:25', NULL),
(6, 4, 33, 1, '2021-03-01 02:38:25', '2021-03-01 02:38:25', NULL),
(7, 5, 33, 2, '2021-03-10 15:49:47', '2021-03-10 15:49:47', NULL),
(8, 6, 33, 8, '2021-03-10 15:57:29', '2021-03-10 15:57:29', NULL),
(9, 7, 33, 10, '2021-03-11 01:38:31', '2021-03-11 01:38:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `des`, `key_code`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Module Category', 'Quản lý Category', NULL, 0, '2020-09-15 15:02:47', '2020-09-15 15:02:47', NULL),
(5, 'list', 'Xem danh sách category', 'category-list', 4, '2020-09-15 15:05:30', '2020-09-15 15:05:30', NULL),
(6, 'add', 'Thêm mới category', 'category-add', 4, '2020-09-15 16:13:23', '2020-09-15 16:13:23', NULL),
(7, 'update', 'Cập nhật category', 'category-update', 4, '2020-09-16 02:19:11', '2020-09-16 02:19:11', NULL),
(8, 'delete', 'Xóa mềm category', 'category-delete', 4, '2020-09-16 02:28:14', '2020-09-16 02:28:14', NULL),
(9, 'restore', 'Khôi phục category', 'category-restore', 4, '2020-09-16 02:29:30', '2020-09-16 02:29:30', NULL),
(10, 'trash', 'Xem thùng rác category', 'category-trash', 4, '2020-09-16 03:03:19', '2020-09-16 03:03:19', NULL),
(11, 'Module Sản Phẩm', 'Quản lý sản phẩm', NULL, 0, '2020-09-16 04:11:19', '2020-09-16 04:11:19', NULL),
(12, 'list', 'Danh sách sản phẩm', 'product-list', 11, '2020-09-16 04:13:45', '2020-09-16 04:13:45', NULL),
(13, 'view', 'Xem xhi tiết sản phẩm', 'product-view', 11, '2020-09-16 04:14:36', '2020-09-16 04:14:36', NULL),
(14, 'add', 'Thêm mới sản phẩm', 'product-add', 11, '2020-09-16 04:21:39', '2020-09-16 04:21:39', NULL),
(15, 'update', 'Cập nhật sản phẩm', 'product-update', 11, '2020-09-16 04:43:08', '2020-09-16 04:43:08', NULL),
(16, 'delete', 'Xóa mềm sản phẩm', 'product-delete', 11, '2020-09-16 04:43:47', '2020-09-16 04:43:47', NULL),
(17, 'restore', 'Khôi phục sản phẩm', 'product-restore', 11, '2020-09-16 04:45:06', '2020-09-16 04:45:06', NULL),
(18, 'force delete', 'Xóa category', 'category-force-delete', 4, '2020-09-16 04:47:34', '2020-09-16 04:47:34', NULL),
(19, 'force delete', 'Xóa sản phẩm', 'product-force-delete', 11, '2020-09-16 04:48:13', '2020-09-16 04:48:13', NULL),
(20, 'trash', 'Xem thùng rác sản phẩm', 'product-trash', 11, '2020-09-16 09:10:38', '2020-09-16 09:10:38', NULL),
(21, 'Module Tag', 'Quản lý tag', NULL, 0, '2020-09-16 09:20:58', '2020-09-16 09:20:58', NULL),
(22, 'Module brand', 'Quản lý brand', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(23, 'Module slide', 'Quản lý slide', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(24, 'Module user', 'Quản lý user', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(25, 'Module post cate', 'Quản lý post cate', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(26, 'Module post', 'Quản lý post', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(27, 'Module role', 'Quản lý role', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(28, 'Module permission', 'Quản lý permission', NULL, 0, '2020-09-16 09:31:35', '2020-09-16 09:31:35', NULL),
(127, 'list', 'Xem danh sách brand', 'brand-list', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(128, 'add', 'Thêm mới brand', 'brand-add', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(129, 'update', 'Cập nhật brand', 'brand-update', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(130, 'delete', 'Xóa mềm brand', 'brand-delete', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(131, 'trash', 'Xem thùng rác brand', 'brand-trash', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(132, 'restore', 'Khôi phục brand', 'brand-restore', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(133, 'force-delete', 'Xóa brand', 'brand-force-delete', 22, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(134, 'list', 'Xem danh sách slide', 'slide-list', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(135, 'add', 'Thêm mới slide', 'slide-add', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(136, 'update', 'Cập nhật slide', 'slide-update', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(137, 'delete', 'Xóa mềm slide', 'slide-delete', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(138, 'trash', 'Xem thùng rác slide', 'slide-trash', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(139, 'restore', 'Khôi phục slide', 'slide-restore', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(140, 'force-delete', 'Xóa slide', 'slide-force-delete', 23, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(141, 'list', 'Xem danh sách user', 'user-list', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(142, 'add', 'Thêm mới user', 'user-add', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(143, 'update', 'Cập nhật user', 'user-update', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(144, 'delete', 'Xóa mềm user', 'user-delete', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(145, 'trash', 'Xem thùng rác user', 'user-trash', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(146, 'restore', 'Khôi phục user', 'user-restore', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(147, 'force-delete', 'Xóa user', 'user-force-delete', 24, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(148, 'list', 'Xem danh sách post cate', 'post-cate-list', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(149, 'add', 'Thêm mới post cate', 'post-cate-add', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(150, 'update', 'Cập nhật post cate', 'post-cate-update', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(151, 'delete', 'Xóa mềm post cate', 'post-cate-delete', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(152, 'trash', 'Xem thùng rác post cate', 'post-cate-trash', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(153, 'restore', 'Khôi phục post cate', 'post-cate-restore', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(154, 'force-delete', 'Xóa post cate', 'post-cate-force-delete', 25, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(155, 'list', 'Xem danh sách post', 'post-list', 26, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(156, 'add', 'Thêm mới post', 'post-add', 26, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(157, 'update', 'Cập nhật post', 'post-update', 26, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(158, 'delete', 'Xóa mềm post', 'post-delete', 26, '2020-09-16 10:42:33', '2020-09-16 10:42:33', NULL),
(159, 'trash', 'Xem thùng rác post', 'post-trash', 26, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(160, 'restore', 'Khôi phục post', 'post-restore', 26, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(161, 'force-delete', 'Xóa post', 'post-force-delete', 26, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(162, 'list', 'Xem danh sách role', 'role-list', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(163, 'add', 'Thêm mới role', 'role-add', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(164, 'update', 'Cập nhật role', 'role-update', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(165, 'delete', 'Xóa mềm role', 'role-delete', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(166, 'trash', 'Xem thùng rác role', 'role-trash', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(167, 'restore', 'Khôi phục role', 'role-restore', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(168, 'force-delete', 'Xóa role', 'role-force-delete', 27, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(169, 'list', 'Xem danh sách permission', 'permission-list', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(170, 'add', 'Thêm mới permission', 'permission-add', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(171, 'update', 'Cập nhật permission', 'permission-update', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(172, 'delete', 'Xóa mềm permission', 'permission-delete', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(173, 'trash', 'Xem thùng rác permission', 'permission-trash', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(174, 'restore', 'Khôi phục permission', 'permission-restore', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(175, 'force-delete', 'Xóa permission', 'permission-force-delete', 28, '2020-09-16 10:42:34', '2020-09-16 10:42:34', NULL),
(176, 'list', 'Xem danh sách tag', 'tag-list', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(177, 'add', 'Thêm mới tag', 'tag-add', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(178, 'update', 'Cập nhật tag', 'tag-update', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(179, 'delete', 'Xóa mềm tag', 'tag-delete', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(180, 'trash', 'Xem thùng rác tag', 'tag-trash', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(181, 'restore', 'Khôi phục tag', 'tag-restore', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(182, 'force-delete', 'Xóa tag', 'tag-force-delete', 21, '2020-09-16 12:03:43', '2020-09-16 12:03:43', NULL),
(183, 'view', 'Xem chi tiết bài viết', 'post-view', 26, '2020-09-16 12:05:37', '2020-09-16 12:05:37', NULL),
(184, 'Module intro', 'Quản lý giới thiệu', NULL, 0, '2020-09-22 04:13:02', '2020-09-22 04:13:02', NULL),
(185, 'Module service', 'Quản lý dịch vụ', NULL, 0, '2020-09-22 04:13:46', '2020-09-22 04:13:46', NULL),
(186, 'Module recruitment', 'Quản lý tuyển dụng', NULL, 0, '2020-09-22 04:15:00', '2020-09-22 04:15:00', NULL),
(193, 'add', 'Thêm mới intro', 'intro-add', 184, '2020-09-22 09:41:56', '2020-09-22 09:41:56', NULL),
(194, 'view', 'Xem chi tiết intro', 'intro-view', 184, '2020-09-22 09:41:56', '2020-09-22 09:41:56', NULL),
(195, 'add', 'Thêm mới service', 'service-add', 185, '2020-09-22 09:41:56', '2020-09-22 09:41:56', NULL),
(196, 'view', 'Xem chi tiết service', 'service-view', 185, '2020-09-22 09:41:56', '2020-09-22 09:41:56', NULL),
(197, 'add', 'Thêm mới recruitment', 'recruitment-add', 186, '2020-09-22 09:41:56', '2020-09-22 09:41:56', NULL),
(198, 'view', 'Xem chi tiết recruitment', 'recruitment-view', 186, '2020-09-22 09:41:56', '2020-09-22 09:41:56', NULL),
(199, 'Module liên hệ', 'Quản lý liên hệ', NULL, 0, '2020-09-22 15:05:31', '2020-09-22 15:05:31', NULL),
(200, 'list', 'Xem danh sách liên hệ', 'contact-list', 199, '2020-09-22 15:06:47', '2020-09-22 15:06:47', NULL),
(201, 'view', 'Xem chi tiết liên hệ', 'contact-view', 199, '2020-09-22 15:08:12', '2020-09-22 15:08:12', NULL),
(202, 'delete', 'Xóa mềm liên hệ', 'contact-delete', 199, '2020-09-22 15:09:21', '2020-09-22 15:09:21', NULL),
(203, 'restore', 'Khôi phục liên hệ', 'contact-restore', 199, '2020-09-22 15:10:35', '2020-09-22 15:10:35', NULL),
(204, 'force delete', 'Xóa liên hệ', 'contact-force-delete', 199, '2020-09-22 15:11:00', '2020-09-22 15:11:00', NULL),
(205, 'trash', 'Xem thùng rác liên hệ', 'contact-trash', 199, '2020-09-23 02:52:26', '2020-09-23 02:52:26', NULL),
(206, 'Module dự án', 'Quản lý dự án', NULL, 0, '2020-09-23 16:17:12', '2020-09-23 16:17:12', NULL),
(207, 'list', 'Xem danh sách dự án', 'project-list', 206, '2020-09-23 16:18:22', '2020-09-23 16:18:29', '2020-09-23 16:18:29'),
(208, 'list', 'Xem danh sách dự án', 'project-list', 206, '2020-09-23 16:18:24', '2020-09-23 16:18:24', NULL),
(209, 'view', 'Xem chi tiết dự án', 'project-view', 206, '2020-09-23 16:19:22', '2020-09-23 16:19:22', NULL),
(210, 'add', 'Thêm mới dự án', 'project-add', 206, '2020-09-23 16:21:11', '2020-09-23 16:21:11', NULL),
(211, 'update', 'Cập nhật dự án', 'project-update', 206, '2020-09-23 16:22:23', '2020-09-23 16:22:23', NULL),
(212, 'delete', 'Xóa mềm dự án', 'project-delete', 206, '2020-09-23 16:23:02', '2020-09-23 16:23:02', NULL),
(213, 'trash', 'Xem thùng rác dự án', 'project-trash', 206, '2020-09-23 16:23:51', '2020-09-23 16:23:51', NULL),
(214, 'restore', 'Khôi phục dự án', 'project-restore', 206, '2020-09-23 16:25:08', '2020-09-23 16:25:08', NULL),
(215, 'force delete', 'Xóa dự án', 'project-force-delete', 206, '2020-09-23 16:26:03', '2020-09-23 16:26:03', NULL),
(216, 'Thống kê', 'statistical', 'statistical', 0, '2021-01-26 14:36:12', '2021-01-26 14:36:12', NULL),
(217, 'dashboard', 'dashboard', 'dashboard', 216, '2021-01-26 14:36:59', '2021-01-26 14:36:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(7, 10, 3, NULL, NULL),
(8, 12, 3, NULL, NULL),
(9, 6, 3, NULL, NULL),
(10, 7, 3, NULL, NULL),
(11, 8, 3, NULL, NULL),
(12, 9, 3, NULL, NULL),
(13, 18, 3, NULL, NULL),
(14, 13, 3, NULL, NULL),
(15, 14, 3, NULL, NULL),
(16, 15, 3, NULL, NULL),
(17, 16, 3, NULL, NULL),
(18, 17, 3, NULL, NULL),
(19, 19, 3, NULL, NULL),
(20, 20, 3, NULL, NULL),
(21, 176, 3, NULL, NULL),
(22, 177, 3, NULL, NULL),
(23, 178, 3, NULL, NULL),
(24, 179, 3, NULL, NULL),
(25, 180, 3, NULL, NULL),
(26, 181, 3, NULL, NULL),
(27, 182, 3, NULL, NULL),
(28, 127, 3, NULL, NULL),
(29, 128, 3, NULL, NULL),
(30, 129, 3, NULL, NULL),
(31, 130, 3, NULL, NULL),
(32, 131, 3, NULL, NULL),
(33, 132, 3, NULL, NULL),
(34, 133, 3, NULL, NULL),
(35, 134, 3, NULL, NULL),
(36, 135, 3, NULL, NULL),
(37, 136, 3, NULL, NULL),
(38, 137, 3, NULL, NULL),
(39, 138, 3, NULL, NULL),
(40, 139, 3, NULL, NULL),
(41, 140, 3, NULL, NULL),
(42, 141, 3, NULL, NULL),
(43, 142, 3, NULL, NULL),
(44, 143, 3, NULL, NULL),
(45, 144, 3, NULL, NULL),
(46, 145, 3, NULL, NULL),
(47, 146, 3, NULL, NULL),
(48, 147, 3, NULL, NULL),
(49, 148, 3, NULL, NULL),
(50, 149, 3, NULL, NULL),
(51, 150, 3, NULL, NULL),
(52, 151, 3, NULL, NULL),
(53, 152, 3, NULL, NULL),
(54, 153, 3, NULL, NULL),
(55, 154, 3, NULL, NULL),
(56, 155, 3, NULL, NULL),
(57, 156, 3, NULL, NULL),
(58, 157, 3, NULL, NULL),
(59, 158, 3, NULL, NULL),
(60, 159, 3, NULL, NULL),
(64, 162, 3, NULL, NULL),
(65, 163, 3, NULL, NULL),
(66, 164, 3, NULL, NULL),
(67, 165, 3, NULL, NULL),
(68, 166, 3, NULL, NULL),
(69, 167, 3, NULL, NULL),
(70, 168, 3, NULL, NULL),
(71, 169, 3, NULL, NULL),
(72, 170, 3, NULL, NULL),
(73, 171, 3, NULL, NULL),
(74, 172, 3, NULL, NULL),
(75, 173, 3, NULL, NULL),
(76, 174, 3, NULL, NULL),
(77, 175, 3, NULL, NULL),
(78, 160, 3, NULL, NULL),
(79, 161, 3, NULL, NULL),
(80, 183, 3, NULL, NULL),
(81, 193, 3, NULL, NULL),
(82, 194, 3, NULL, NULL),
(83, 195, 3, NULL, NULL),
(84, 196, 3, NULL, NULL),
(85, 197, 3, NULL, NULL),
(86, 198, 3, NULL, NULL),
(87, 200, 3, NULL, NULL),
(88, 201, 3, NULL, NULL),
(89, 202, 3, NULL, NULL),
(90, 203, 3, NULL, NULL),
(91, 204, 3, NULL, NULL),
(92, 205, 3, NULL, NULL),
(93, 207, 3, NULL, NULL),
(94, 208, 3, NULL, NULL),
(95, 209, 3, NULL, NULL),
(96, 210, 3, NULL, NULL),
(97, 211, 3, NULL, NULL),
(98, 212, 3, NULL, NULL),
(99, 213, 3, NULL, NULL),
(100, 214, 3, NULL, NULL),
(101, 215, 3, NULL, NULL),
(104, 217, 3, NULL, NULL),
(105, 5, 1, NULL, NULL),
(106, 6, 1, NULL, NULL),
(107, 7, 1, NULL, NULL),
(108, 8, 1, NULL, NULL),
(109, 9, 1, NULL, NULL),
(110, 10, 1, NULL, NULL),
(111, 18, 1, NULL, NULL),
(112, 12, 1, NULL, NULL),
(113, 13, 1, NULL, NULL),
(114, 14, 1, NULL, NULL),
(115, 15, 1, NULL, NULL),
(116, 16, 1, NULL, NULL),
(117, 17, 1, NULL, NULL),
(118, 19, 1, NULL, NULL),
(119, 20, 1, NULL, NULL),
(120, 176, 1, NULL, NULL),
(121, 177, 1, NULL, NULL),
(122, 178, 1, NULL, NULL),
(123, 179, 1, NULL, NULL),
(124, 180, 1, NULL, NULL),
(125, 181, 1, NULL, NULL),
(126, 182, 1, NULL, NULL),
(127, 127, 1, NULL, NULL),
(128, 128, 1, NULL, NULL),
(129, 129, 1, NULL, NULL),
(130, 130, 1, NULL, NULL),
(131, 131, 1, NULL, NULL),
(132, 132, 1, NULL, NULL),
(133, 133, 1, NULL, NULL),
(134, 134, 1, NULL, NULL),
(135, 135, 1, NULL, NULL),
(136, 136, 1, NULL, NULL),
(137, 137, 1, NULL, NULL),
(138, 138, 1, NULL, NULL),
(139, 139, 1, NULL, NULL),
(140, 140, 1, NULL, NULL),
(141, 141, 1, NULL, NULL),
(142, 142, 1, NULL, NULL),
(143, 143, 1, NULL, NULL),
(144, 144, 1, NULL, NULL),
(145, 145, 1, NULL, NULL),
(146, 146, 1, NULL, NULL),
(147, 147, 1, NULL, NULL),
(148, 148, 1, NULL, NULL),
(149, 149, 1, NULL, NULL),
(150, 150, 1, NULL, NULL),
(151, 151, 1, NULL, NULL),
(152, 152, 1, NULL, NULL),
(153, 153, 1, NULL, NULL),
(154, 154, 1, NULL, NULL),
(155, 155, 1, NULL, NULL),
(156, 156, 1, NULL, NULL),
(157, 157, 1, NULL, NULL),
(158, 158, 1, NULL, NULL),
(159, 159, 1, NULL, NULL),
(160, 160, 1, NULL, NULL),
(161, 161, 1, NULL, NULL),
(162, 183, 1, NULL, NULL),
(163, 162, 1, NULL, NULL),
(164, 163, 1, NULL, NULL),
(165, 164, 1, NULL, NULL),
(166, 165, 1, NULL, NULL),
(167, 166, 1, NULL, NULL),
(168, 167, 1, NULL, NULL),
(169, 168, 1, NULL, NULL),
(170, 169, 1, NULL, NULL),
(171, 170, 1, NULL, NULL),
(172, 171, 1, NULL, NULL),
(173, 172, 1, NULL, NULL),
(174, 173, 1, NULL, NULL),
(175, 174, 1, NULL, NULL),
(176, 175, 1, NULL, NULL),
(177, 193, 1, NULL, NULL),
(178, 194, 1, NULL, NULL),
(179, 195, 1, NULL, NULL),
(180, 196, 1, NULL, NULL),
(181, 197, 1, NULL, NULL),
(182, 198, 1, NULL, NULL),
(183, 200, 1, NULL, NULL),
(184, 201, 1, NULL, NULL),
(185, 202, 1, NULL, NULL),
(186, 203, 1, NULL, NULL),
(187, 204, 1, NULL, NULL),
(188, 205, 1, NULL, NULL),
(189, 207, 1, NULL, NULL),
(190, 208, 1, NULL, NULL),
(191, 209, 1, NULL, NULL),
(192, 210, 1, NULL, NULL),
(193, 211, 1, NULL, NULL),
(194, 212, 1, NULL, NULL),
(195, 213, 1, NULL, NULL),
(196, 214, 1, NULL, NULL),
(197, 215, 1, NULL, NULL),
(198, 217, 1, NULL, NULL),
(199, 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_cate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `image_path`, `content`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `post_cate_id`) VALUES
(2, 'cccccccaaaa', 'cccccccaaaa', 'ccc', '/storage/photos/post/2/yUN8b5Z6wZIwItnoVVt8.png', '<p>ccccccccccdsaa</p>', 2, '2020-09-16 16:06:10', '2020-09-13 13:15:27', '2020-09-16 16:06:10', 3),
(3, 'Bệnh nhân nguy kịch sau khi ăn pate Minh Chay, Bộ Y tế lần đầu tiên hướng dẫn nhận biết ngộ độc botulinum', '', 'PGS.TS Nguyễn Trường Sơn, Thứ trưởng Bộ Y tế ngày 8/9 đã ký ban hành Quyết định số 3875/QĐ-KCB về việc ban hành hướng dẫn tạm thời chẩn đoán, điều trị ngộ độc botulinum.', '/storage/photos/post/3/c4IT1e1EkaREpjZjnpXJ.jpg', '<h3><strong>Triệu chứng bệnh</strong></h3>\r\n\r\n<p>Ngộ độc thực phẩm do độc tố botulinum thường do ăn uống c&aacute;c thực phẩm c&oacute; sẵn độc tố botulinum do c&aacute;c chủng vi khuẩn Clostridium sinh ra.</p>\r\n\r\n<p>Thời gian khởi ph&aacute;t bệnh phổ biến 12-36 giờ sau khi ăn, phần lớn trong ng&agrave;y đầu ti&ecirc;n, c&oacute; thể trong khoảng 6 giờ đến 8 ng&agrave;y sau ăn. Như vậy, nếu đ&atilde; ăn qu&aacute; 8 ng&agrave;y, sức khỏe ổn định c&oacute; thể y&ecirc;n t&acirc;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bệnh nh&acirc;n kh&ocirc;ng sốt, huyết &aacute;p c&oacute; thể tụt trong khi mạch/nhịp tim c&oacute; xu hướng kh&ocirc;ng nhanh. Buồn n&ocirc;n, n&ocirc;n, chướng bụng, đau bụng, sau đ&oacute; liệt ruột cơ năng, t&aacute;o b&oacute;n.&nbsp;Bệnh cảnh ch&iacute;nh l&agrave; liệt ngoại bi&ecirc;n đối xứng hai b&ecirc;n kiểu lan xuống, liệt to&agrave;n bộ c&aacute;c cơ với c&aacute;c mức độ kh&aacute;c nhau, người bệnh vẫn tỉnh t&aacute;o, kh&ocirc;ng c&oacute; rối loạn cảm gi&aacute;c. Ngộ độc nặng dẫn tới liệt cơ h&ocirc; hấp, suy h&ocirc; hấp c&oacute; thể tử vong. Liệt nặng nề k&eacute;o d&agrave;i dẫn tới nhiều biến chứng.</p>\r\n\r\n<p>Ngộ độc thực phẩm do độc tố botulinum l&agrave; ngộ độc nặng, tỷ lệ tử vong cao, thời gian liệt k&eacute;o d&agrave;i. Thời gian thở m&aacute;y cần trung b&igrave;nh khoảng 2 th&aacute;ng sau đ&oacute; mới c&oacute; thể cai thở m&aacute;y, tuy nhi&ecirc;n bệnh nh&acirc;n cần nhiều th&aacute;ng để hồi phục. Liều 0,09 mcg ti&ecirc;m tĩnh mạch c&oacute; thể g&acirc;y tử vong một người nặng 70kg.</p>\r\n\r\n<p>C&aacute;c biến chứng ch&iacute;nh: nhiễm tr&ugrave;ng bệnh viện, đặc biệt vi&ecirc;m phổi v&agrave; c&aacute;c biến chứng của thở m&aacute;y; C&aacute;c biến chứng do bất động, nằm k&eacute;o d&agrave;i, lo&eacute;t; Liệt ruột, t&aacute;o b&oacute;n, tr&agrave;o ngược, sặc phổi.</p>\r\n\r\n<p>Ngộ độc xảy ra kh&ocirc;ng thường xuy&ecirc;n, c&oacute; thể th&agrave;nh vụ với nhiều người bị ngộ độc. C&oacute; c&aacute;c trường hợp ngộ độc ri&ecirc;ng lẻ, kh&ocirc;ng r&otilde; yếu tố dịch tễ, diễn biến nhanh, kh&ocirc;ng thể khai th&aacute;c bệnh cảnh đặc trưng, dẫn tới dễ bỏ s&oacute;t hoặc nhầm với nhiều bệnh kh&aacute;c.</p>\r\n\r\n<p>C&aacute;c nh&acirc;n vi&ecirc;n y tế cần n&acirc;ng cảnh gi&aacute;c khai th&aacute;c bệnh sử, đưa v&agrave;o chẩn đo&aacute;n ph&acirc;n biệt đặc biệt với c&aacute;c t&igrave;nh trạng liệt ngoại bi&ecirc;n, qua đ&oacute; gi&uacute;p chẩn đo&aacute;n v&agrave; điều trị sớm, d&ugrave;ng thuốc giải độc sớm nhất gi&uacute;p cải thiện t&igrave;nh trạng ngộ độc.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/1/pateminhchayquangcao79687033082020edited-1598858208302116857002-crop-15988582123321194029010-15989594175881802614879.jpg\" target=\"_blank\"><img alt=\"Bệnh nhân nguy kịch sau khi ăn pate Minh Chay, Bộ Y tế lần đầu tiên hướng dẫn nhận biết ngộ độc botulinum - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/1/pateminhchayquangcao79687033082020edited-1598858208302116857002-crop-15988582123321194029010-15989594175881802614879.jpg\" /></a></p>\r\n\r\n<p>Hiện nay, cả nước c&oacute; 15 bệnh nh&acirc;n ngộ độc botulinum sau khi sử dụng pate Minh Chay. Ảnh: Internet.</p>\r\n\r\n<h3><strong>C&aacute;c biện ph&aacute;p ph&ograve;ng bệnh</strong></h3>\r\n\r\n<p>Bộ Y tế y&ecirc;u cầu c&aacute;c cơ quan chức năng cần&nbsp;tăng cường c&ocirc;ng t&aacute;c kiểm so&aacute;t vệ sinh an to&agrave;n thực phẩm.</p>\r\n\r\n<p>Người d&acirc;n&nbsp;được khuyến c&aacute;o&nbsp;n&ecirc;n chọn c&aacute;c sản phẩm c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, c&oacute; ti&ecirc;u chuẩn chất lượng v&agrave; an to&agrave;n được c&ocirc;ng nhận.&nbsp;Thận trọng với c&aacute;c thực phẩm đ&oacute;ng k&iacute;n như tr&ecirc;n nhưng c&oacute; m&ugrave;i hoặc m&agrave;u sắc thay đổi, hoặc c&oacute; vị thay đổi kh&aacute;c thường (v&iacute; dụ sữa chua nhưng kh&ocirc;ng c&ograve;n vị chua b&igrave;nh thường).</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n tự đ&oacute;ng g&oacute;i k&iacute;n c&aacute;c thực phẩm v&agrave; để k&eacute;o d&agrave;i trong điều kiện kh&ocirc;ng phải đ&ocirc;ng đ&aacute; (chỉ c&oacute; nhiệt độ đ&ocirc;ng đ&aacute; mới l&agrave;m vi khuẩn ngừng ph&aacute;t triển v&agrave; kh&ocirc;ng sinh độc tố).&nbsp;Ưu ti&ecirc;n ăn c&aacute;c thực phẩm mới chế biến, mới nấu ch&iacute;n. Lưu &yacute; nấu ch&iacute;n sẽ ph&aacute; hủy độc tố botulinum (nếu kh&ocirc;ng may c&oacute; trong thực phẩm).</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với c&aacute;c thực phẩm l&ecirc;n men, đ&oacute;ng g&oacute;i hoặc che đậy k&iacute;n theo c&aacute;ch truyền thống (như dưa muối, măng, c&agrave; muối,&hellip;), người d&acirc;n cần đảm bảo phải chua, mặn. Khi thực phẩm hết chua th&igrave; kh&ocirc;ng n&ecirc;n ăn.</p>', 3, '2020-09-19 13:43:59', '2020-09-19 03:26:13', '2020-09-19 13:43:59', 4),
(5, 'Giám đốc CDC Mỹ khẳng định: Khẩu trang sẽ chống dịch hiệu quả hơn vaccine', '', 'Trên tay là chiếc khẩu trang dùng 1 lần, giám đốc CDC khẳng định rằng đây là công cụ hiệu quả và mang đến nhiều hy vọng hơn là vaccine trong tương lai.', '/storage/photos/post/3/PTaflCAAURJWCfR4YrDP.jpg', '<p>Trong phi&ecirc;n điều trần Quốc hội ng&agrave;y 16/9, Tiến sĩ&nbsp;Robert Redfield - gi&aacute;m đốc Trung t&acirc;m Kiểm so&aacute;t v&agrave; Ph&ograve;ng ngừa dịch bệnh Hoa Kỳ (CDC) đ&atilde; c&oacute; lời khẳng định d&agrave;nh cho c&ocirc;ng dụng của khẩu trang. Tr&ecirc;n tay l&agrave; chiếc khẩu trang d&ugrave;ng 1 lần, &ocirc;ng khẳng định rằng đ&acirc;y l&agrave; c&ocirc;ng cụ hiệu quả hơn l&agrave; loại vaccine đang được đặt nhiều hy vọng trong tương lai.</p>\r\n\r\n<p><em>&quot;Chiếc khẩu trang n&agrave;y l&agrave; thứ đảm bảo hơn cho t&ocirc;i trước Covid-19, hơn l&agrave; vaccine,&quot;</em>&nbsp;- Redfield&nbsp;trả lời một tiểu ban Thượng viện. &Ocirc;ng cho biết vaccine c&oacute; thể mang đến khả năng miễn dịch hiệu quả khoảng 70%, nghĩa l&agrave; sẽ c&oacute; gần 1/3 kh&ocirc;ng c&oacute; c&ocirc;ng hiệu.</p>\r\n\r\n<p><em>&quot;Nếu bạn kh&ocirc;ng c&oacute; phản ứng miễn dịch, nghĩa l&agrave; vaccine kh&ocirc;ng thể bảo vệ bạn. C&ograve;n chiếc khẩu trang n&agrave;y th&igrave; c&oacute;.&quot;</em></p>\r\n\r\n<p>N&oacute;i về vaccine, cần biết khả năng tạo miễn dịch l&agrave; điều cực kỳ quan trọng, v&agrave; tỉ lệ bảo vệ l&yacute; tưởng sẽ l&agrave; 100%. Nhưng với virus corona lần n&agrave;y, c&aacute;c chuy&ecirc;n gia chỉ nhắm đến 70%, chủ yếu l&agrave; để giảm l&acirc;y lan. N&oacute;i c&aacute;ch kh&aacute;c, vaccine sẽ kh&ocirc;ng c&oacute; hiệu quả tuyệt đối.</p>\r\n\r\n<p>Trong khi đ&oacute; một nghi&ecirc;n cứu tr&ecirc;n tạp ch&iacute; New England Journal of Medicine đ&atilde; đề cập rằng khẩu trang c&oacute; thể lọc bớt c&aacute;c giọt bắn chứa virus, n&ecirc;n bản th&acirc;n n&oacute; giống như một phương ph&aacute;p trị liệu, gi&uacute;p cơ thể chuẩn bị tốt hơn trước virus corona m&agrave; kh&ocirc;ng khiến họ ph&aacute;t bệnh.</p>\r\n\r\n<p>Tuy nhi&ecirc;n chỉ v&agrave;i giờ sau,&nbsp;Tổng thống Trump cho biết đ&atilde; gọi cho &ocirc;ng Redfield để phản hồi về ph&aacute;t ng&ocirc;n của &ocirc;ng.&nbsp;<em>&quot;T&ocirc;i đ&atilde; gọi cho &ocirc;ng ấy, v&agrave; t&ocirc;i nghĩ &ocirc;ng đ&atilde; sai khi n&oacute;i như vậy. C&oacute; lẽ &ocirc;ng ấy đ&atilde; hiểu sai c&acirc;u hỏi.&quot;</em></p>\r\n\r\n<p><img alt=\"Giám đốc CDC Mỹ khẳng định: Khẩu trang sẽ chống dịch hiệu quả hơn vaccine - Ảnh 2.\" src=\"https://kenh14cdn.com/2020/9/17/photo-1-1600326888528501924283-1600331875197121364061.jpeg\" /></p>\r\n\r\n<p>Theo Tổng thống Trump, Mỹ sẽ sẵn s&agrave;ng ph&acirc;n phối vaccine ngừa Covid-19 sớm nhất l&agrave; v&agrave;o th&aacute;ng 10 năm nay, đồng thời t&aacute;i khẳng định hiệu quả của vaccine sẽ lớn hơn rất nhiều so với khẩu trang. Ngay sau đ&oacute;, &ocirc;ng Redfield cũng đăng đ&agrave;n tr&ecirc;n Twitter để phản hồi lại &yacute; kiến của ng&agrave;i tổng thống - ch&iacute;nh x&aacute;c hơn l&agrave; l&agrave;m r&otilde;, cụ thể như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&quot;T&ocirc;i ho&agrave;n to&agrave;n tin tưởng v&agrave;o vaccine, đặc biệt l&agrave; vaccine Covid-19. N&oacute; sẽ l&agrave; thứ đưa cuộc sống tại Mỹ trở lại trạng th&aacute;i b&igrave;nh thường. Tuy nhi&ecirc;n, c&aacute;ch tốt nhất để hạn chế l&acirc;y nhiễm vẫn sẽ l&agrave; khẩu trang, rửa tay, duy tr&igrave; gi&atilde;n c&aacute;ch.&quot;</em></p>', 3, '2020-09-19 13:43:57', '2020-09-19 04:09:30', '2020-09-19 13:43:57', 4),
(6, 'Nga sẽ cung cấp 100 triệu liều vaccine ngừa Covid-19 cho Ấn Độ', '', 'Quỹ Đầu tư Trực tiếp Nga (RDIF) hôm nay (16/9) ký thỏa thuận cung cấp 100 triệu liều vaccine Sputnik-V ngừa Covid-19 cho một công ty dược phẩm ở Ấn Độ.', '/storage/photos/post/3/Y3E7nmVhmXN9ukCSTc9F.jpg', '<p>Theo nguồn tin từ h&atilde;ng tin Sputnik, cuộc thử nghiệm l&acirc;m s&agrave;ng đối với vaccine của Nga ở Ấn Độ sau đ&oacute; sẽ được thực hiện chung với c&ocirc;ng ty n&agrave;y. Cả việc thử nghiệm v&agrave; thỏa thuận cung c</p>\r\n\r\n<p>Hiện Quỹ đầu tư trực tiếp của Nga (RDIF) đ&atilde; k&yacute; c&aacute;c hợp đồng cung cấp vaccine cho Kazakhstan, Brazil, Mexico v&agrave; đạt được thỏa thuận hợp t&aacute;c sản xuất với Ấn Độ để sản xuất 300 triệu liều vaccine Sputnik-V. Đầu tư Trực tiếp Nga sẽ c&ocirc;ng bố t&ecirc;n của c&ocirc;ng ty Ấn Độ v&agrave;o tối nay (16/9).</p>\r\n\r\n<p>Th&aacute;ng trước, Nga đ&atilde; đăng k&yacute; vaccine Sputnik-V do viện Gamaleya c&oacute; trụ sở tại Moscow ph&aacute;t triển. Ng&agrave;y 26/8, Nga đ&atilde; tiến h&agrave;nh thử nghiệm giai đoạn cuối vaccine Sputnik - với sự tham gia của khoảng 55.000 người./.</p>\r\n\r\n<p>ấp vaccine ngừa Covid-19 Sputnik-V đều phụ thuộc v&agrave;o sự chấp thuận của cơ quan quản l&yacute; tại Ấn Độ.</p>', 3, '2020-09-19 13:43:54', '2020-09-19 04:25:56', '2020-09-19 13:43:54', 4),
(7, 'Mỹ sẽ sản xuất đủ vaccine cho mọi người dân vào tháng 4/2021', '', 'Tổng thống Donald Trump cho biết, Mỹ sẽ sản xuất đủ vaccine ngừa Covid-19 cho mọi người dân Mỹ vào tháng 4 năm sau.', '/storage/photos/post/3/URIzFyow16ap1jNhVlnS.jpg', '<p>Ph&aacute;t biểu trong cuộc họp b&aacute;o ở Nh&agrave; Trắng c&ugrave;ng một số th&agrave;nh vi&ecirc;n Nh&oacute;m đặc tr&aacute;ch chống Covid-19, Tổng thống Donald Trump tuy&ecirc;n bố ngay sau khi vaccine được Cơ quan Quản l&yacute; Dược phẩm v&agrave; Thực phẩm (FDA) ph&ecirc; duyệt, vaccine sẽ được ph&acirc;n phối trong v&ograve;ng 24 tiếng.</p>\r\n\r\n<p>&ldquo;Ch&uacute;ng ta sẽ sản xuất được &iacute;t nhất 100 triệu liều vaccine ngừa Covid-19 trước cuối năm nay v&agrave; c&oacute; khả năng nhiều hơn thế. H&agrave;ng trăm triệu liều sẽ được cung cấp mỗi th&aacute;ng v&agrave; ch&uacute;ng t&ocirc;i hy vọng sẽ c&oacute; đủ vaccine cho mọi người Mỹ v&agrave;o th&aacute;ng 4 năm sau. Một lần nữa, t&ocirc;i tuy&ecirc;n bố ngay cả ở giai đoạn sau đ&oacute; việc ph&acirc;n phối sẽ diễn ra nhanh nhất c&oacute; thể&rdquo; - Tổng thống Donald Trump n&oacute;i.</p>\r\n\r\n<p>Dự b&aacute;o của Tổng thống Donald Trump tr&aacute;i ngược với nhận định của Gi&aacute;m đốc Trung t&acirc;m Kiểm so&aacute;t v&agrave; Ph&ograve;ng ngừa Dịch bệnh, TS. Robert Redfield. Trước đ&oacute;, ph&aacute;t biểu tại phi&ecirc;n điều trần trước Ủy ban Chuẩn chi Ng&acirc;n s&aacute;ch Thượng viện ng&agrave;y 16/9, &ocirc;ng Redfield n&oacute;i rằng Mỹ sẽ kh&ocirc;ng bắt đầu ti&ecirc;m chủng vaccine Covid-19 sớm nhất cho đến th&aacute;ng 11 hoặc th&aacute;ng 12/2020. &Ocirc;ng Redfield cũng cho rằng hầu hết người d&acirc;n Mỹ sẽ kh&ocirc;ng thể tiếp cận rộng r&atilde;i vaccine ngừa Covid-19 cho đến m&ugrave;a H&egrave; hoặc đầu m&ugrave;a Thu năm sau.</p>', 3, '2020-09-19 13:43:51', '2020-09-19 04:27:28', '2020-09-19 13:43:51', 4),
(9, 'Pháp ghi nhận số ca tử vong vì Covid-19 cao nhất trong 4 tháng qua', 'phap-ghi-nhan-so-ca-tu-vong-vi-covid-19-cao-nhat-trong-4-thang-qua', 'Nước Pháp tiếp tục ghi nhận các diễn biến hết sức báo động của đại dịch Covid-19 khi lần đầu tiên kể từ khi gỡ bỏ phong tỏa hồi đầu tháng 5/2020.', '/storage/photos/post/3/VTSHHoTaN6aCuqqdKtKH.jpg', '<p>Số người tử vong v&igrave; Covid-19 trong ng&agrave;y vượt qu&aacute; cột mốc 100, đồng thời số ca mắc ở mức cao nhất từ trước đến nay.</p>\r\n\r\n<p>Nước Ph&aacute;p trong ng&agrave;y 18/9 ghi nhận số ca nhiễm mới virus SARS-CoV-2 ở mức cao nhất từ trước đến nay, kể từ khi đại dịch Covid-19 b&ugrave;ng ph&aacute;t tại nước n&agrave;y, với 13.125 ca mắc mới. Đồng thời, lần đầu ti&ecirc;n kể từ khi nước Ph&aacute;p gỡ bỏ phong tỏa to&agrave;n quốc hồi đầu th&aacute;ng 5, số ca tử vong v&igrave; Covid-19 trong ng&agrave;y đ&atilde; vượt qua cột mốc 100, với 123 bệnh nh&acirc;n thiệt mạng trong v&ograve;ng 24h. Ngo&agrave;i hai con số tr&ecirc;n, tất cả c&aacute;c chỉ số kh&aacute;c cũng đang ở mức b&aacute;o động, khi số ca nhập viện điều trị cũng như số ca bệnh nặng phải hồi sức t&iacute;ch cực cũng đang tăng nhanh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/19/photo-1-1600510280375989447926.jpg\" target=\"_blank\"><img alt=\" Pháp ghi nhận số ca tử vong vì Covid-19 cao nhất trong 4 tháng qua  - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/19/photo-1-1600510280375989447926.jpg\" /></a></p>\r\n\r\n<p>Người d&acirc;n Ph&aacute;p đeo khẩu trang (Ảnh: Reuters)</p>\r\n\r\n<p>Trong b&aacute;o c&aacute;o chi tiết c&ocirc;ng bố trong ng&agrave;y 18/09, Cơ quan Y tế quốc gia Ph&aacute;p cho biết, d&ugrave; hiện nay số người trẻ trong độ tuổi từ 20-30 tuổi vẫn l&agrave; c&aacute;c đối tượng ch&iacute;nh nhiễm virus nhưng trong v&agrave;i ng&agrave;y qua, c&aacute;c đối tượng dễ bị tổn thương nhất l&agrave; những người gi&agrave; tr&ecirc;n 75 tuổi cũng đ&atilde; bắt đầu nhiễm bệnh nhiều hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&igrave;nh h&igrave;nh đặc biệt đ&aacute;ng lo ngại tại c&aacute;c th&agrave;nh phố miền Nam như Marseille, Nice. Tại Marseille, th&agrave;nh phố lớn thứ 2 nước Ph&aacute;p, 90% số giường hồi sức t&iacute;ch cực đ&atilde; được sử dụng. Giới chức y tế Ph&aacute;p đ&atilde; bắt đầu lo ngại c&aacute;c bệnh viện tại một số v&ugrave;ng sẽ nhanh ch&oacute;ng bị qu&aacute; tải, trong bối cảnh đội ngũ y b&aacute;c sĩ vẫn đang mệt mỏi sau l&agrave;n s&oacute;ng dịch thứ nhất.</p>\r\n\r\n<p>&ldquo;Lo lắng của ch&uacute;ng t&ocirc;i đ&oacute; l&agrave; vẫn chưa hiểu r&otilde; về l&agrave;n s&oacute;ng dịch thứ hai n&agrave;y. Ch&uacute;ng t&ocirc;i kh&ocirc;ng biết đ&agrave; l&acirc;y lan virus n&agrave;y sẽ k&eacute;o d&agrave;i tới đ&acirc;u. Tốc độ l&acirc;y lan hiện nay chậm hơn hồi đầu năm nhưng kh&ocirc;ng biết đến khi n&agrave;o sẽ đạt đỉnh&rdquo;.</p>\r\n\r\n<p>Trước c&aacute;c diễn biến dịch phức tạp hiện nay v&agrave; để tr&aacute;nh nguy cơ phải t&aacute;i phong tỏa, c&aacute;c th&agrave;nh phố tại Ph&aacute;p đ&atilde; li&ecirc;n tiếp đưa ra c&aacute;c quy định mới. Tại Nice, c&aacute;c cuộc tụ họp qu&aacute; 10 người tại c&aacute;c c&ocirc;ng vi&ecirc;n, b&atilde;i biển bị cấm. Tại Toulouse, ch&iacute;nh quyền cấm b&aacute;n đồ uống c&oacute; cồn sau 20h. Tại khu vực thủ đ&ocirc; Paris, cơ quan y tế cũng khuyến c&aacute;o người d&acirc;n kh&ocirc;ng n&ecirc;n tụ tập qu&aacute; 10 người.</p>\r\n\r\n<p>Nhằm đẩy nhanh tốc độ x&eacute;t nghiệm, Cơ quan y tế quốc gia Ph&aacute;p đ&atilde; cho ph&eacute;p tiến h&agrave;nh c&aacute;c x&eacute;t nghiệm dịch họng đối với những người c&oacute; triệu chứng. H&igrave;nh thức x&eacute;t nghiệm n&agrave;y sẽ cho kết quả nhanh hơn d&ugrave; c&oacute; độ tin cậy kh&ocirc;ng cao so với x&eacute;t nghiệm PCR.</p>\r\n\r\n<p>Cũng trong ng&agrave;y 18/9, Bộ trưởng Kinh tế Ph&aacute;p Bruno Le Maire th&ocirc;ng b&aacute;o &ocirc;ng đ&atilde; x&eacute;t nghiệm dương t&iacute;nh với virus SARS-CoV-2, d&ugrave; kh&ocirc;ng c&oacute; triệu chứng. Tại Quốc hội Ph&aacute;p, 8 người cũng đ&atilde; bị ph&aacute;t hiện nhiễm bệnh trong v&agrave;i ng&agrave;y qua.</p>', 3, NULL, '2020-09-19 13:44:53', '2020-09-24 02:59:19', 4),
(10, 'Nepal có thêm 2020 ca Covid-19 mới chỉ 1 ngày sau khi dỡ phong tỏa', 'nepal-co-them-2020-ca-covid-19-moi-chi-1-ngay-sau-khi-do-phong-toa', 'Nepal ngày 18/9 đã xác nhận thêm 2020 ca bệnh Covid-19 mới – mức cao kỷ lục từ trước tới nay tại quốc gia Nam Á này.', '/storage/photos/post/3/wF7ybXDkJpJgey7kLeJ2.jpg', '<p>Điều đ&aacute;ng ch&uacute; &yacute; l&agrave; c&aacute;c ca nhiễm SARS-CoV-2 mới được ph&aacute;t hiện chỉ một ng&agrave;y sau khi Nepal dỡ bỏ lệnh phong tỏa k&eacute;o d&agrave;i 6 th&aacute;ng qua v&igrave; Covid-19.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bộ Y tế v&agrave; D&acirc;n số Nepal cho biết, số ca nhiễm mới cao nhất trong 24 giờ qua đưa tổng số người mắc Covid-19 tại quốc gia nằm tr&ecirc;n d&atilde;y Himalaya n&agrave;y l&ecirc;n con số 61.593 người. Số người tử vong v&igrave; đại dịch Covid-19 tại Nepal hiện tại l&agrave; 390.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/19/photo-1-16004789155891213546918.jpg\" target=\"_blank\"><img alt=\"Nepal có thêm 2020 ca Covid-19 mới chỉ 1 ngày sau khi dỡ phong tỏa  - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/19/photo-1-16004789155891213546918.jpg\" /></a></p>\r\n\r\n<p>Phun xịt khuẩn chống Covid-19 tại một khu d&acirc;n cư ở thủ đ&ocirc; Kathmandu. (Ảnh: AFP)</p>\r\n\r\n<p>Bắt đầu từ ng&agrave;y 17/9, Ch&iacute;nh phủ Nepal đ&atilde; nới lỏng c&aacute;c lệnh hạn chế k&eacute;o d&agrave;i từ th&aacute;ng 3 nhằm ngăn ngừa Covid-19. C&aacute;c phương tiện chuy&ecirc;n chở h&agrave;ng h&oacute;a v&agrave; cửa h&agrave;ng được cho ph&eacute;p hoạt động trở lại.</p>', 3, NULL, '2020-09-19 13:45:45', '2020-09-24 02:59:10', 4),
(11, 'Châu Âu ghi nhận 54 nghìn ca mắc mới COVID-19 trong 24 giờ', 'chau-au-ghi-nhan-54-nghin-ca-mac-moi-covid-19-trong-24-gio', 'Giám đốc WHO khu vực châu Âu nhận định, sự gia tăng số ca mắc COVID-19 trong tháng 9 nên được coi như một hồi chuông cảnh tỉnh với các nước trong khu vực.', '/storage/photos/post/3/qBbqbfxbxIbfD3QWPYex.jpg', '<p><em>&quot;T&igrave;nh h&igrave;nh đang rất nghi&ecirc;m trọng, số ca mắc mới trong tuần qua đ&atilde; vượt qu&aacute; 300 ngh&igrave;n người. Con số n&agrave;y đ&atilde; vượt con số ghi nhận đợt đỉnh dịch hồi th&aacute;ng 3 ở khu vực ch&acirc;u &Acirc;u. Hơn một nửa số quốc gia ở ch&acirc;u &Acirc;u th&ocirc;ng b&aacute;o số ca mắc mới tăng hơn 10% trong hai tuần qua&quot;</em>&nbsp;- TS Hans Kluge - Gi&aacute;m đốc Tổ chức Y tế thế giới khu vực ch&acirc;u &Acirc;u n&oacute;i.</p>\r\n\r\n<p>Trước t&igrave;nh trạng n&agrave;y, Tổ chức Y tế thế giới cũng cảnh b&aacute;o c&aacute;c nước ch&acirc;u &Acirc;u kh&ocirc;ng n&ecirc;n r&uacute;t ngắn thời gian c&aacute;ch ly như hiện nay.</p>\r\n\r\n<p><img alt=\"Châu Âu ghi nhận 54 nghìn ca mắc mới COVID-19 trong 24 giờ - Ảnh 1.\" src=\"https://kenh14cdn.com/2020/9/18/mau180920-1600422639776763736968-1600427809253325322386.jpg\" /></p>\r\n\r\n<p>Hiện một số nước ch&acirc;u &Acirc;u đ&atilde; buộc phải siết chặt c&aacute;c biện ph&aacute;p chống dịch. Bắt đầu từ 18/9, Ch&iacute;nh phủ Anh sẽ &aacute;p đặt lệnh giới nghi&ecirc;m ban đ&ecirc;m từ 22h h&ocirc;m trước đến 5h h&ocirc;m sau đối với to&agrave;n bộ v&ugrave;ng Đ&ocirc;ng Bắc England với hơn 10 triệu d&acirc;n.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c bệnh viện của Anh cũng được th&ocirc;ng b&aacute;o phải gấp r&uacute;t chuẩn bị th&ecirc;m giường bệnh trong v&ograve;ng 2 tuần tới để đối ph&oacute; với l&agrave;n s&oacute;ng l&acirc;y nhiễm lần hai.</p>\r\n\r\n<p>Cũng từ ng&agrave;y h&ocirc;m nay, c&aacute;c qu&aacute;n bar v&agrave; nh&agrave; h&agrave;ng tr&ecirc;n to&agrave;n quốc ở Cộng h&ograve;a Czech sẽ phải đ&oacute;ng cửa từ nửa đ&ecirc;m đến 6h. B&ecirc;n cạnh đ&oacute;, học sinh từ lớp 6 trở l&ecirc;n cũng sẽ phải đeo khẩu trang trong lớp học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&ograve;n tại &Aacute;o, kể từ ng&agrave;y 21/9, c&aacute;c nh&agrave; h&agrave;ng v&agrave; qu&aacute;n bar c&oacute; thể chỉ được ph&eacute;p phục vụ kh&aacute;ch tại b&agrave;n, hạn chế di chuyển v&agrave; y&ecirc;u cầu đeo khẩu trang được mở rộng ở những nơi c&ocirc;ng cộng trong đ&oacute; c&oacute; c&aacute;c khu chợ.</p>', 3, NULL, '2020-09-19 13:46:31', '2020-09-24 02:59:01', 4),
(12, 'Dự báo đến ngày 10/10, 218.000 người tử vong do Covid-19 ở Mỹ', 'du-bao-den-ngay-1010-218000-nguoi-tu-vong-do-covid-19-o-my', 'Tính đến chiều 17 tháng 9 (giờ địa phương), đã có ít nhất 197.240 người chết vì Covid-19 và hơn 6,6 triệu trường hợp nhiễm bệnh ở Mỹ', '/storage/photos/post/3/7RlpmzlvLQMVpg7o2Khy.jpg', '<p>Dự b&aacute;o tổng hợp do Trung t&acirc;m Kiểm so&aacute;t v&agrave; Ngăn ngừa Dịch bệnh Mỹ (CDC) c&ocirc;ng bố ng&agrave;y 17/9 cho thấy sẽ c&oacute; từ 207.000 đến 218.000 ca tử vong v&igrave; mắc bệnh Covid-19 ở Mỹ v&agrave;o ng&agrave;y 10/10 tới.</p>\r\n\r\n<p>Kh&ocirc;ng giống như một số m&ocirc; h&igrave;nh ri&ecirc;ng lẻ, dự b&aacute;o tổng hợp của Trung t&acirc;m Kiểm so&aacute;t v&agrave; Ngăn ngừa Dịch bệnh Mỹ chỉ đưa ra c&aacute;c dự b&aacute;o trong một v&agrave;i tuần tới. Dự b&aacute;o tổng hợp lần trước, được c&ocirc;ng bố v&agrave;o ng&agrave;y 10 th&aacute;ng 9, nhận định c&oacute; tới 217.000 người Mỹ tử vong v&igrave; mắc Covid-19 v&agrave;o ng&agrave;y 3/10.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Dự báo đến ngày 10/10, 218.000 người tử vong do Covid-19 ở Mỹ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/photo-1-1600394044346378969542.jpg\" /></p>\r\n\r\n<p>Theo dữ liệu của Đại học Johns Hopkins, t&iacute;nh đến chiều 17/9 (giờ địa phương), đ&atilde; c&oacute; &iacute;t nhất 197.240 người chết v&igrave; Covid-19 v&agrave; hơn 6,6 triệu trường hợp nhiễm bệnh ở Mỹ./.</p>', 3, NULL, '2020-09-19 13:47:10', '2020-09-24 02:58:52', 4),
(13, 'Nga sẽ cung cấp 100 triệu liều vaccine ngừa Covid-19 cho Ấn Độ', 'nga-se-cung-cap-100-trieu-lieu-vaccine-ngua-covid-19-cho-an-do', 'Quỹ Đầu tư Trực tiếp Nga (RDIF) hôm nay (16/9) ký thỏa thuận cung cấp 100 triệu liều vaccine Sputnik-V ngừa Covid-19 cho một công ty dược phẩm ở Ấn Độ.', '/storage/photos/post/3/UwzgA7IeVT5gR8MxGdU6.jpg', '<p>Theo nguồn tin từ h&atilde;ng tin Sputnik, cuộc thử nghiệm l&acirc;m s&agrave;ng đối với vaccine của Nga ở Ấn Độ sau đ&oacute; sẽ được thực hiện chung với c&ocirc;ng ty n&agrave;y. Cả việc thử nghiệm v&agrave; thỏa thuận cung cấp vaccine ngừa Covid-19 Sputnik-V đều phụ thuộc v&agrave;o sự chấp thuận của cơ quan quản l&yacute; tại Ấn Độ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nga sẽ cung cấp 100 triệu liều vaccine ngừa Covid-19 cho Ấn Độ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/16/photo-1-1600260962153268019865.jpg\" /></p>\r\n\r\n<p>Hiện Quỹ đầu tư trực tiếp của Nga (RDIF) đ&atilde; k&yacute; c&aacute;c hợp đồng cung cấp vaccine cho Kazakhstan, Brazil, Mexico v&agrave; đạt được thỏa thuận hợp t&aacute;c sản xuất với Ấn Độ để sản xuất 300 triệu liều vaccine Sputnik-V. Đầu tư Trực tiếp Nga sẽ c&ocirc;ng bố t&ecirc;n của c&ocirc;ng ty Ấn Độ v&agrave;o tối nay (16/9).</p>\r\n\r\n<p>Th&aacute;ng trước, Nga đ&atilde; đăng k&yacute; vaccine Sputnik-V do viện Gamaleya c&oacute; trụ sở tại Moscow ph&aacute;t triển. Ng&agrave;y 26/8, Nga đ&atilde; tiến h&agrave;nh thử nghiệm giai đoạn cuối vaccine Sputnik - với sự tham gia của khoảng 55.000 người./.</p>', 3, NULL, '2020-09-19 13:47:48', '2020-09-24 02:58:45', 4),
(14, 'UAE cấm hãng bay Ấn Độ 15 ngày vì có hành khách mắc Covid-19', 'uae-cam-hang-bay-an-do-15-ngay-vi-co-hanh-khach-mac-covid-19', 'Vì lệnh cấm này, Air India Express sẽ phải điều chỉnh lại tất cả các chuyến bay tới sân bay quốc tế Sharjah của Dubai.', '/storage/photos/post/3/pU3B11hehWNVNac7QvVL.jpg', '<p>Ch&iacute;nh quyền Dubai &ndash; th&agrave;nh phố thuộc C&aacute;c Tiểu vương quốc Arab Thống nhất (UAE) vừa ra lệnh cấm bay với h&atilde;ng h&agrave;ng kh&ocirc;ng Ấn Độ Air India Express trong 15 ng&agrave;y v&igrave; một h&agrave;nh kh&aacute;ch từng sử dụng dịch vụ của h&atilde;ng n&agrave;y được x&aacute;c định dương t&iacute;nh với virus SARS-CoV-2.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/photo-1-16004415825251068515526.jpg\" target=\"_blank\"><img alt=\"UAE cấm hãng bay Ấn Độ 15 ngày vì có hành khách mắc Covid-19 - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/18/photo-1-16004415825251068515526.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y bay của h&atilde;ng h&agrave;ng kh&ocirc;ng Air India (Ảnh: BBC)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>H&agrave;nh kh&aacute;ch n&agrave;y đi tr&ecirc;n chuyến bay từ th&agrave;nh phố Jaipur, bang Rajasthan, tới Dubai h&ocirc;m 4/9. V&igrave; lệnh cấm n&agrave;y, Air India Express sẽ phải điều chỉnh lại tất cả c&aacute;c chuyến bay tới s&acirc;n bay quốc tế Sharjah của Dubai. Trong bức thư gửi Air India Express, Cơ quan H&agrave;ng kh&ocirc;ng D&acirc;n dụng Dubai cho biết đ&acirc;y l&agrave; lần thứ hai h&agrave;nh kh&aacute;ch đi tr&ecirc;n c&aacute;c chuyến bay của h&atilde;ng được ph&aacute;t hiện mắc Covid-19.</p>\r\n\r\n<p>Trước đ&oacute;, h&ocirc;m 2/9, nh&agrave; chức tr&aacute;ch Dubai đ&atilde; gửi một thư cảnh b&aacute;o tới h&atilde;ng h&agrave;ng kh&ocirc;ng Ấn Độ về một trường hợp h&agrave;nh kh&aacute;ch dương t&iacute;nh với SARS-CoV-2. Vận chuyển h&agrave;nh kh&aacute;ch mắc Covid-19 tới lần thứ 2 được coi l&agrave; h&agrave;nh vi vi phạm c&aacute;c quy tr&igrave;nh v&agrave; thủ tục h&agrave;ng kh&ocirc;ng tới v&agrave; đi từ Tiểu vương Dubai trong giai đoạn dịch bệnh Covid-19.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy, tất cả c&aacute;c chuyến bay của Air India Express tới c&aacute;c s&acirc;n bay tại Dubai đều bị đ&igrave;nh chỉ trong thời gian từ 18/9 tới 2/10. Hồi th&aacute;ng 8, h&atilde;ng mẹ của Air India Express l&agrave; Air India cũng buộc phải dừng c&aacute;c chuyến bay tới Hong Kong trong 2 tuần v&igrave; &ldquo;chuy&ecirc;n chở qu&aacute; nhiều h&agrave;nh kh&aacute;ch nhiễm SARS-CoV-2&rdquo;.</p>\r\n\r\n<p>Ch&iacute;nh quyền Hong Kong đưa ra lệnh cấm sau khi 11 h&agrave;nh kh&aacute;ch tr&ecirc;n một chuyến bay của Air India ng&agrave;y 14/8 được x&aacute;c định dương t&iacute;nh với loại virus n&agrave;y. C&aacute;c quan chức h&agrave;ng kh&ocirc;ng cho rằng nguy&ecirc;n nh&acirc;n của hiện tượng n&agrave;y l&agrave; do việc x&eacute;t nghiệm Covid-19 cho h&agrave;nh kh&aacute;ch trước chuyến bay kh&ocirc;ng được thực hiện nghi&ecirc;m t&uacute;c. Air India Express l&agrave; thương hiệu h&agrave;ng kh&ocirc;ng gi&aacute; rẻ thuộc sở hữu của h&atilde;ng H&agrave;ng kh&ocirc;ng Quốc gia Ấn Độ Air India./</p>', 3, NULL, '2020-09-19 13:49:42', '2020-09-24 02:58:26', 4),
(15, 'Vietnam Airlines thực hiện chuyến bay thương mại quốc tế thường lệ đầu tiên sau dịch Covid-19', 'vietnam-airlines-thuc-hien-chuyen-bay-thuong-mai-quoc-te-thuong-le-dau-tien-sau-dich-covid-19', 'Chuyến bay VN310 hành trình Hà Nội - Tokyo (Nhật Bản) của Vietnam Airlines đã cất cánh an toàn từ Nội Bài vào lúc 6h30 sáng nay. Đây là chuyến bay thương mại quốc tế thường lệ đầu tiên của Vietnam Airlines sau một thời gian tạm dừng vì ảnh hưởng của dịch Covid-19.', '/storage/photos/post/3/RUhfBoE6pkerhCvzCiid.jpg', '<p>Chuyến bay được khai th&aacute;c bằng m&aacute;y bay Boeing 787-10, một trong những loại t&agrave;u bay th&acirc;n rộng hiện đại nhất của Vietnam Airlines hiện nay. H&agrave;nh tr&igrave;nh c&oacute; thời lượng l&agrave; 5 tiếng 15 ph&uacute;t, với điểm đến l&agrave; s&acirc;n bay Narita tại Tokyo, Nhật Bản. Số lượng h&agrave;nh kh&aacute;ch tr&ecirc;n chuyến bay l&agrave; gần 60 người, chủ yếu l&agrave; c&aacute;c du học sinh, người lao động đến Nhật Bản để tiếp tục học tập, lao động v&agrave; sinh sống. Chuyến bay cũng chở một số c&ocirc;ng d&acirc;n Nhật Bản về nước. B&ecirc;n cạnh chở h&agrave;nh kh&aacute;ch, chuyến bay c&ograve;n kết hợp chở h&agrave;ng h&oacute;a nhằm phục vụ giao thương, sản xuất.</p>\r\n\r\n<p>H&agrave;nh kh&aacute;ch tr&ecirc;n chuyến bay được sắp xếp ngồi gi&atilde;n c&aacute;ch nhằm đ&aacute;p ứng c&aacute;c quy định về ph&ograve;ng chống dịch bệnh. H&agrave;nh kh&aacute;ch cũng phải tu&acirc;n thủ c&aacute;c quy định nghi&ecirc;m ngặt của nh&agrave; chức tr&aacute;ch Nhật Bản khi nhập cảnh như c&oacute; kết quả x&eacute;t nghiệm PCR &acirc;m t&iacute;nh với Covid-19 trong v&ograve;ng 72h trước khởi h&agrave;nh, khai b&aacute;o lịch sử đi lại trong v&ograve;ng 14 ng&agrave;y, tải ứng dụng x&aacute;c nhận tiếp x&uacute;c&hellip;</p>\r\n\r\n<p><img alt=\"Vietnam Airlines thực hiện chuyến bay thương mại quốc tế thường lệ đầu tiên sau dịch Covid-19 - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119455452101641093638804818050201788531540420o-1600484676296411691550.jpg\" /></p>\r\n\r\n<p>Từ 4h s&aacute;ng 19/9, h&agrave;nh kh&aacute;ch đ&atilde; c&oacute; mặt tại nh&agrave; ga quốc tế T2 Nội B&agrave;i</p>\r\n\r\n<p><img alt=\"Vietnam Airlines thực hiện chuyến bay thương mại quốc tế thường lệ đầu tiên sau dịch Covid-19 - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119707778101641093641004813738122151391860408o-16004846763121671295200.jpg\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; h&agrave;nh kh&aacute;ch tr&ecirc;n chuyến bay thương mại quốc tế đầu ti&ecirc;n của Vietnam Airlines sau Covid 19</p>\r\n\r\n<p>Đối với phi h&agrave;nh đo&agrave;n, to&agrave;n bộ th&agrave;nh vi&ecirc;n sau khi trở về Việt Nam sẽ được kiểm tra sức khỏe v&agrave; tổ chức c&aacute;ch ly theo quy định. M&aacute;y bay được phun khử khuẩn to&agrave;n bộ khoang h&agrave;nh kh&aacute;ch, buồng l&aacute;i bằng h&oacute;a chất theo ti&ecirc;u chuẩn quốc tế.</p>\r\n\r\n<p>Sau chuyến bay VN310 ng&agrave;y 18/9, trong th&aacute;ng 9, Vietnam Airlines sẽ tiếp tục thực hiện 02 chuyến bay nữa từ H&agrave; Nội đi Tokyo v&agrave;o c&aacute;c ng&agrave;y 25/9, 30/9 v&agrave; 1 chuyến bay từ TP. Hồ Ch&iacute; Minh đi Tokyo v&agrave;o ng&agrave;y 30/9. Kh&aacute;ch h&agrave;ng c&oacute; thể mua v&eacute; m&aacute;y bay đi Nhật Bản tr&ecirc;n website, ứng dụng di động Vietnam Airlines v&agrave; c&aacute;c ph&ograve;ng v&eacute;, đại l&yacute; ch&iacute;nh thức của h&atilde;ng tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><img alt=\"Vietnam Airlines thực hiện chuyến bay thương mại quốc tế thường lệ đầu tiên sau dịch Covid-19 - Ảnh 3.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119551862101641093650904811653011369854052719o-1600484676306396368732.jpg\" /></p>\r\n\r\n<p>Hầu hết h&agrave;nh kh&aacute;ch tr&ecirc;n chuyến bay l&agrave; du học sinh, người lao động sang c&ocirc;ng t&aacute;c tại Nhật v&agrave; một số c&ocirc;ng d&acirc;n Nhật trở về nước.</p>\r\n\r\n<p><img alt=\"Vietnam Airlines thực hiện chuyến bay thương mại quốc tế thường lệ đầu tiên sau dịch Covid-19 - Ảnh 4.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119605220101641093642154812695660015167931188o-1600484676308652955026.jpg\" /></p>\r\n\r\n<p>H&agrave;nh kh&aacute;ch phải đeo khẩu trang v&agrave; đồ ph&ograve;ng dịch tr&ecirc;n chuyến bay</p>\r\n\r\n<p>Lịch bay Việt Nam - Nhật Bản trong những th&aacute;ng tiếp theo sẽ được Vietnam Airlines cập nhập trong thời gian sớm nhất. C&aacute;c chuyến bay chở kh&aacute;ch chiều từ Nhật Bản về Việt Nam sẽ được thực hiện sau khi c&oacute; quyết định ch&iacute;nh thức của c&aacute;c nh&agrave; chức tr&aacute;ch. Ngo&agrave;i đường bay Nhật Bản, Vietnam Airlines dự kiến kh&ocirc;i phục c&aacute;c đường bay giữa Việt Nam v&agrave; H&agrave;n Quốc, Trung Quốc, Đ&agrave;i Loan (Trung Quốc), L&agrave;o, Campuchia trong thời gian tới.</p>\r\n\r\n<p><img alt=\"\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119738496101641093642804818172644926509200540o-1600484676314386749153.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119540309101641093649404817724366082287993554o-16004846763041054239673.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119841060101641093647204818514670613341902931o-1600484676317195571044.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119703148101641093643854813667296468040395054o-16004846763101207261997.jpg\" /></p>\r\n\r\n<p><img alt=\"Vietnam Airlines thực hiện chuyến bay thương mại quốc tế thường lệ đầu tiên sau dịch Covid-19 - Ảnh 7.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/19/119512421101641093646604811514211006046266788o-16004846763021732769464.jpg\" /></p>\r\n\r\n<p>M&aacute;y bay được phun khử khuẩn to&agrave;n bộ khoang h&agrave;nh kh&aacute;ch, buồng l&aacute;i bằng h&oacute;a chất theo ti&ecirc;u chuẩn quốc tế.</p>\r\n\r\n<p>Trước đ&oacute;, do ảnh hưởng của Covid-19, Vietnam Airlines đ&atilde; tạm dừng khai th&aacute;c c&aacute;c chuyến bay thương mại thường lệ đến, đi từ Nhật Bản kể từ ng&agrave;y 23/3/2020; tạm dừng to&agrave;n mạng bay quốc tế từ ng&agrave;y 25/3/2020. Từ đ&oacute; đến nay, Vietnam Airlines chỉ thực hiện c&aacute;c chuyến bay quốc tế nhằm mục đ&iacute;ch vận chuyến c&ocirc;ng d&acirc;n Việt Nam từ nước ngo&agrave;i về nước tr&aacute;nh dịch, vận chuyển chuy&ecirc;n gia kỹ thuật v&agrave; vận tải h&agrave;ng h&oacute;a phục vụ sản xuất, giao thương.</p>\r\n\r\n<p>Việc phục hồi c&aacute;c chuyến bay thương mại quốc tế thường lệ l&agrave; t&iacute;n hiệu khởi sắc cho Vietnam Airlines Group, cũng như h&agrave;ng kh&ocirc;ng Việt Nam khi nhiều quốc gia, khu vực đ&atilde; kiểm so&aacute;t tốt t&igrave;nh h&igrave;nh dịch bệnh.</p>', 3, NULL, '2020-09-19 13:50:23', '2020-09-24 02:58:17', 4),
(16, 'Châu Âu ghi nhận 54 nghìn ca mắc mới COVID-19 trong 24 giờ', 'chau-au-ghi-nhan-54-nghin-ca-mac-moi-covid-19-trong-24-gio', 'Giám đốc WHO khu vực châu Âu nhận định, sự gia tăng số ca mắc COVID-19 trong tháng 9 nên được coi như một hồi chuông cảnh tỉnh với các nước trong khu vực.', '/storage/photos/post/3/ja8SPFzX01xV8DCzm4kp.jpg', '<p><em>&quot;T&igrave;nh h&igrave;nh đang rất nghi&ecirc;m trọng, số ca mắc mới trong tuần qua đ&atilde; vượt qu&aacute; 300 ngh&igrave;n người. Con số n&agrave;y đ&atilde; vượt con số ghi nhận đợt đỉnh dịch hồi th&aacute;ng 3 ở khu vực ch&acirc;u &Acirc;u. Hơn một nửa số quốc gia ở ch&acirc;u &Acirc;u th&ocirc;ng b&aacute;o số ca mắc mới tăng hơn 10% trong hai tuần qua&quot;</em>&nbsp;- TS Hans Kluge - Gi&aacute;m đốc Tổ chức Y tế thế giới khu vực ch&acirc;u &Acirc;u n&oacute;i.</p>\r\n\r\n<p>Trước t&igrave;nh trạng n&agrave;y, Tổ chức Y tế thế giới cũng cảnh b&aacute;o c&aacute;c nước ch&acirc;u &Acirc;u kh&ocirc;ng n&ecirc;n r&uacute;t ngắn thời gian c&aacute;ch ly như hiện nay.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/mau180920-1600422639776763736968-1600427809253325322386.jpg\" target=\"_blank\"><img alt=\"Châu Âu ghi nhận 54 nghìn ca mắc mới COVID-19 trong 24 giờ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/18/mau180920-1600422639776763736968-1600427809253325322386.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện một số nước ch&acirc;u &Acirc;u đ&atilde; buộc phải siết chặt c&aacute;c biện ph&aacute;p chống dịch. Bắt đầu từ 18/9, Ch&iacute;nh phủ Anh sẽ &aacute;p đặt lệnh giới nghi&ecirc;m ban đ&ecirc;m từ 22h h&ocirc;m trước đến 5h h&ocirc;m sau đối với to&agrave;n bộ v&ugrave;ng Đ&ocirc;ng Bắc England với hơn 10 triệu d&acirc;n.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c bệnh viện của Anh cũng được th&ocirc;ng b&aacute;o phải gấp r&uacute;t chuẩn bị th&ecirc;m giường bệnh trong v&ograve;ng 2 tuần tới để đối ph&oacute; với l&agrave;n s&oacute;ng l&acirc;y nhiễm lần hai.</p>\r\n\r\n<p>Cũng từ ng&agrave;y h&ocirc;m nay, c&aacute;c qu&aacute;n bar v&agrave; nh&agrave; h&agrave;ng tr&ecirc;n to&agrave;n quốc ở Cộng h&ograve;a Czech sẽ phải đ&oacute;ng cửa từ nửa đ&ecirc;m đến 6h. B&ecirc;n cạnh đ&oacute;, học sinh từ lớp 6 trở l&ecirc;n cũng sẽ phải đeo khẩu trang trong lớp học.</p>\r\n\r\n<p>C&ograve;n tại &Aacute;o, kể từ ng&agrave;y 21/9, c&aacute;c nh&agrave; h&agrave;ng v&agrave; qu&aacute;n bar c&oacute; thể chỉ được ph&eacute;p phục vụ kh&aacute;ch tại b&agrave;n, hạn chế di chuyển v&agrave; y&ecirc;u cầu đeo khẩu trang được mở rộng ở những nơi c&ocirc;ng cộng trong đ&oacute; c&oacute; c&aacute;c khu chợ.</p>', 3, NULL, '2020-09-19 13:51:38', '2020-09-24 02:58:02', 4),
(17, 'NGÀY BÉ TRÀO ĐỜI SẼ AN TOÀN HƠN VỚI LỒNG ẤP OLIDEF', 'ngay-be-trao-doi-se-an-toan-hon-voi-long-ap-olidef', 'Hãng thiết bị y tế Olidef đến từ Brazil đồng hành của Bé những ngày đầu đời khiến \"Bé khỏe mạnh - Mẹ an tâm\". Lồng ấp trẻ sơ sinh Olidef cung cấp một môi trường ấm và ổn định cho những trẻ cần sự chăm sóc đặc biệt trong giai đoạn đầu dời.', '/storage/photos/post/3/q4Z3vIsGjPvo0dZOK6cy.jpg', '<p>Lồng ấp l&agrave; &quot;vị cứu tinh&quot; mang đến sự sống, ấm &aacute;p như l&ograve;ng Mẹ đối với những trẻ sinh non, sinh thiếu th&aacute;ng hay c&aacute;c b&eacute; c&oacute; bệnh l&yacute; về sức khỏe ngay từ khi ch&agrave;o đời.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://tmhitech.vn/Uploads/images/L%e1%bb%92NG%20%e1%ba%a4P%20TR%e1%ba%ba%20S%c6%a0%20SINH.png\" /></p>\r\n\r\n<p>▪️&nbsp;<strong>Sản phẩm được thiết kế bền chắc&nbsp;đảm bảo an to&agrave;n</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://tmhitech.vn/Uploads/images/L%e1%bb%93ng%20%e1%ba%a5p.png\" /></strong></p>\r\n\r\n<p>Thiết kế bền vững của&nbsp;<strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/long-ap-tre-so-sinh-sctiline-4-olidef\">lồng ấp LINE 4</a>&nbsp;</strong>cho đảm bảo tạo ra một m&ocirc;i trường ấm, an to&agrave;n, dễ tiếp nhận v&agrave; chăm s&oacute;c trẻ sơ sinh một tối ưu nhất. Sản phẩm được sản xuất dựa tr&ecirc;n những ti&ecirc;u chuẩn nghi&ecirc;m ngặt nhất thế giới, kh&ocirc;ng cần bảo tr&igrave; nhiều m&agrave; lại dễ vệ sinh v&agrave; sử dụng.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>▪️ N&uacute;t điều khiển v&agrave; c&aacute;c th&ocirc;ng số kỹ thuật đều được hiển thị r&otilde; n&eacute;t tr&ecirc;n m&agrave;n h&igrave;nh</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://tmhitech.vn/Uploads/images/L%e1%bb%93ng%20%e1%ba%a5p%20(2).png\" /></strong></p>\r\n\r\n<p><strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/long-ap-tre-so-sinh-sctiline-4-olidef\">Lồng ấp trẻ sơ sinh Line 4</a>&nbsp;</strong>l&agrave; giải ph&aacute;p lồng ấp t&iacute;ch hợp đầy đủ c&aacute;c t&iacute;nh năng, được sử dụng trong h&agrave;ng ng&agrave;n bệnh viện tr&ecirc;n to&agrave;n thế giới. C&aacute;c chuy&ecirc;n vi&ecirc;n chăm s&oacute;c c&oacute; thể dễ d&agrave;ng t&ugrave;y chỉnh nhiệt độ, độ ẩm v&agrave; nồng độ kh&iacute; oxy cho m&ocirc;i trường lồng ấp, Line 4 li&ecirc;n tục cập nhật c&aacute;c dữ liệu về nhiệt độ của trẻ sơ sinh.&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>▪️ Dễ d&agrave;ng quan s&aacute;t trẻ</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://tmhitech.vn/Uploads/images/L%e1%bb%93ng%20%e1%ba%a5p%20(1).png\" /></strong></p>\r\n\r\n<p>Nắp lồng ấp được l&agrave;m bằng chất liệu cao cấp, chồng trầy xước, c&oacute; đ&egrave;n kiểm tra t&iacute;ch hợp chiếu s&aacute;ng nhằm phục vụ việc đ&aacute;nh gi&aacute; trực quan nhất.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>▪️ C&oacute; đ&egrave;n kiểm tra t&iacute;ch hợp chiếu s&aacute;ng nhằm phục vụ việc đ&aacute;nh gi&aacute; trực quan nhất.</strong></p>\r\n\r\n<p><strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/search?Keyword=Olidef\">Olidef</a></strong>&nbsp;l&agrave; c&ocirc;ng ty chuy&ecirc;n sản xuất c&aacute;c thiết bị y tế d&agrave;nh cho bệnh viện v&agrave; ph&ograve;ng kh&aacute;m c&oacute; trụ sở đặt tại Brazil. Tất cả c&aacute;c sản phẩm của h&atilde;ng đều được sản xuất tr&ecirc;n những ứng dụng y học h&agrave;ng đầu v&agrave; được x&aacute;c nhận bởi tổ chức Good Manufacturing Practices (ANVISA) v&agrave; ISO 13485. C&aacute;c d&ograve;ng sản phẩm nổi bật của h&atilde;ng như: lồng ấp, đ&egrave;n chiếu v&agrave;ng da, giường sưởi ấm cho trẻ... chất lượng cao, được sử dụng rộng r&atilde;i ở c&aacute;c bệnh viện tr&ecirc;n to&agrave;n thế giới.&nbsp;</p>\r\n\r\n<p><strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/long-ap-tre-so-sinh\">LỒNG ẤP OLIDEF</a>&nbsp;l&agrave; giải ph&aacute;p an to&agrave;n được c&aacute;c bệnh viện Quốc tế tin d&ugrave;ng!&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM</strong><br />\r\nNhập khẩu &amp; Ph&acirc;n phối TBYT cao cấp ch&iacute;nh h&atilde;ng</p>\r\n\r\n<p>Hotline: 090 683 5678<br />\r\nEmail:&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/cdn-cgi\\/l\\/email-protection\">[email&nbsp;protected]</a>&nbsp;<br />\r\nAddress: 42 Phương Mai, Đống Đa, HN.<br />\r\nWebsite:&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/l.facebook.com\\/l.php?u=https%3A%2F%2Ftmhitech.vn%2F%3Ffbclid%3DIwAR2sDjeBXph7Sp8i08ItZ9wb3p2uODhlqx0bRTom63XMqVdm6GFJirQxvdM&amp;h=AT22IXrbDHb1uMLkXlF3AXa4Hybr7wueqR84yBVbujyW3L-UZ0FobEZzk2ivyfUn9Wm0W3zLSdObzVeMiOsuIvCbT2lLQEZVO3mQVwiLJ6ex7LhHexah9R0kZRyBB5eBjdmfdpH5qeGhTFCewDlbqWkeNuXj3DwYGHtMcSOsY_um97RNIFuwUHSAZbZyKJyJIfiFJdVaGpg4sHQKLnWUR6fruS5Plnc2qtqe4ywFSMKARTna00EUlesOAO-69qbmZpsCY545g1Gq6aJpaP8T71EYtQcIN3EuxlUEmXPK15Ijaq-uRappm72sWKuhzoOH6V-4w3yr1JzdcbFQafyl82xGYZaMzVeLqt_l2okKjev6xrZ8bKu25MO1Ob5aWo_kaYjDqsGy4XPM4xK8ercshOGeyDRBtyT7qNNAnEfDjsNFPmcC0incqwFzdReEatYx1ms7mDxxpPSC9PVVio1rRaKyKiXdWjrpn0da5x5AzbOUAae7ugdgU-TkDyLyl0gmFV7x176QbRA-nJa1vQe6MvTZRw1LlYeC0XyYC9nKdpjsZL3EIG_44YgJWDpxSsq4pFryPLOY8nyYdP1xmB-rIGqu4yq2uSlxGuXSynjlaDWoUgYeENtDCK1tIk3HuUCdWHEUW47F\" target=\"_blank\">https://tmhitech.vn/</a></p>', 3, NULL, '2020-09-19 13:53:48', '2020-09-24 03:15:19', 5),
(18, 'VÌ SAO NÊN SỬ DỤNG LỒNG ẤP TRẺ SƠ SINH?', 'vi-sao-nen-su-dung-long-ap-tre-so-sinh', 'Trẻ sơ sinh được chăm sóc trong lồng như thế nào? Đây là một câu hỏi mà rất nhiều người quan tâm hiện nay. Liệu trẻ có được chăm sóc tốt như ở nhà không? Lồng ấp trẻ sơ sinh mang lại những lợi ích khi chăm sóc trẻ? Hãy cùng chúng tôi đi tìm câu trả lời ngay sau đây.', '/storage/photos/post/3/zvJRke7j7SWOhjCUm5Z5.jpg', '<h2><strong>1. Lợi &iacute;ch của việc sử dụng lồng ấp trẻ sơ sinh</strong></h2>\r\n\r\n<p><strong>Lồng ấp trẻ sơ sinh&nbsp;</strong>mang đến rất nhiều lợi &iacute;ch khi chăm s&oacute;c c&aacute;c b&eacute; vừa mời ch&agrave;o đời, đặc biệt l&agrave; những b&eacute; sinh non, sinh thiếu th&aacute;ng. Một số lợi &iacute;ch phải kể đến khi sử dụng lồng ấp, đặc biệt l&agrave;<em><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/long-ap-tre-so-sinh-sctiline-4-olidef\" target=\"_blank\">&nbsp;<strong>lồng ấp trẻ sơ sinh SCTILINE 4 OLIDEF</strong></a></em><strong>&nbsp;</strong>như sau:</p>\r\n\r\n<h3><strong>Gi&uacute;p trẻ thở tốt</strong></h3>\r\n\r\n<p>Hệ thống ống th&ocirc;ng, m&aacute;y thở, kim truyền, lồng v&agrave; m&aacute;y gi&aacute;m s&aacute;t c&ocirc;ng nghệ cao c&oacute; thể tr&ocirc;ng rất đ&aacute;ng sợ, nhưng ch&uacute;ng g&oacute;p phần gi&uacute;p lồng ấp Olidef trở th&agrave;nh nơi an to&agrave;n nhất cho một em b&eacute; sinh non hoặc bị bệnh.&nbsp;</p>\r\n\r\n<p><img alt=\"lồng ấp trẻ sơ sinh giúp chăm sóc trẻ sinh non, sinh thiếu tháng\" src=\"https://tmhitech.vn/Uploads/images/news/long-ap-tre-so-sinh-1.jpg\" /></p>\r\n\r\n<p><em>Lồng ấp trẻ sơ sinh gi&uacute;p chăm s&oacute;c trẻ sinh non, sinh thiếu th&aacute;ng</em></p>\r\n\r\n<p>Khi sinh non phổi của trẻ chưa thể ho&agrave;n thiện v&agrave; suy h&ocirc; hấp l&agrave; một trong những l&iacute; do ch&iacute;nh cần phải chăm s&oacute;c b&eacute; trong lồng ấp. B&eacute; c&oacute; thể được cho chụp mũ oxy, l&agrave; một chiếc hộp chứa to&agrave;n oxy tinh khiết vừa vặn với đầu của trẻ để cung cấp oxy ph&ugrave; hợp.&nbsp;</p>\r\n\r\n<h3><strong>Cho trẻ b&uacute; dễ d&agrave;ng hơn</strong></h3>\r\n\r\n<p>Lồng ấp Olidef gi&uacute;p giữ th&acirc;n nhiệt cho cơ thể. Một ống th&ocirc;ng (mũi &ndash; dạ d&agrave;y) cung cấp sữa mẹ hoặc sữa c&ocirc;ng thức trực tiếp đi v&agrave;o dạ d&agrave;y b&eacute; th&ocirc;ng qua lỗ mũi. C&aacute;c kim v&agrave; ống truyền gi&uacute;p cung cấp chất lỏng để giữ cho b&eacute; kh&ocirc;ng bị mất nước đồng thời truyền thuốc v&agrave;o cơ thể.</p>\r\n\r\n<h3><strong>Theo d&otilde;i t&igrave;nh h&igrave;nh sức khỏe b&eacute;</strong></h3>\r\n\r\n<p>Băng theo d&otilde;i sẽ được d&aacute;n v&agrave;o da trẻ để ghi nhận những dấu hiệu quan trọng trong qu&aacute; tr&igrave;nh chăm s&oacute;c. Nếu c&oacute; bất cứ t&igrave;nh huống cấp n&agrave;o xảy ra th&igrave; b&eacute; sẽ được c&aacute;c y b&aacute;c sĩ ngay lập tức hỗ trợ.&nbsp;</p>\r\n\r\n<h2><strong>2. Mua lồng ấp trẻ sơ sinh ở đ&acirc;u?</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay c&oacute; rất nhiều địa chỉ b&aacute;n<strong>&nbsp;lồng ấp trẻ sơ sinh</strong>, tuy nhi&ecirc;n lồng ấp của h&atilde;ng Line 4 của h&atilde;ng Olidef lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của c&aacute;c bệnh viện, đặc biệt c&aacute;c bệnh viện tuyến lớn.&nbsp;</p>\r\n\r\n<p><img alt=\"lồng ấp trẻ sơ sinh Olidef giúp chăm sóc trẻ tốt hơn\" src=\"https://tmhitech.vn/Uploads/images/news/long-ap-tre-so-sinh-2.jpg\" /></p>\r\n\r\n<p><em>Lồng ấp trẻ sơ sinh gi&uacute;p chăm s&oacute;c trẻ sinh non, sinh thiếu th&aacute;ng</em></p>\r\n\r\n<p>- Lồng ấp Olidef được trang bị những ứng dụng c&ocirc;ng nghệ mới nhất của nền y khoa trong việc chăm s&oacute;c trẻ</p>\r\n\r\n<p>- Thiết kế dễ sử dụng, c&aacute;c b&aacute;c sĩ kh&ocirc;ng mất qu&aacute; nhiều thời gian m&agrave; ho&agrave;n to&agrave;n c&oacute; thể thao t&aacute;c nhanh ch&oacute;ng</p>\r\n\r\n<p>- C&aacute;c th&ocirc;ng số kỹ thuật đều hiển thị sắc n&eacute;t tr&ecirc;n m&agrave;n h&igrave;nh gi&uacute;p c&aacute;c b&aacute;c sĩ c&oacute; thể quan s&aacute;t v&agrave; đưa ra c&aacute;c biện ph&aacute;p can thiệt kịp thời</p>\r\n\r\n<p>- Lớp đệm b&ecirc;n trong mềm mại, ấm &aacute;p tạo cảm gi&aacute;c cho trẻ nhỏ v&agrave; đặc biệt kh&ocirc;ng g&acirc;y ra bất cứ t&aacute;c dụng phụ n&agrave;o cho l&agrave;n da của trẻ sơ sinh</p>\r\n\r\n<p>- Thời gian bảo h&agrave;nh l&acirc;u, gi&aacute; cả ph&ugrave; hợp.&nbsp;</p>\r\n\r\n<p>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM c&oacute; trụ sở đặt tại 42 Phương Mai, Đống Đa, H&agrave; Nội l&agrave; đơn vị độc quyền ph&acirc;n phối d&ograve;ng&nbsp;<strong>lồng ấp trẻ sơ sinh</strong>&nbsp;của h&atilde;ng Olidef. Ch&uacute;ng t&ocirc;i lu&ocirc;n c&oacute; mức gi&aacute; cạnh tranh nhất thị trường, đặc biệt l&ecirc;n cấu h&igrave;nh v&agrave; hỗ trợ vấn đề thanh to&aacute;n một c&aacute;ch linh hoạt nhất.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i&nbsp;<strong>lồng ấp trẻ sơ sinh,</strong>&nbsp;ch&uacute;ng t&ocirc;i&nbsp;c&ograve;n cung cấp&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/noi-so-sinh\" target=\"_blank\"><strong>n&ocirc;i sơ sinh</strong></a>, đ&egrave;n chiếu v&agrave;ng da&hellip; của h&atilde;ng Olidef. Q&uacute;y kh&aacute;ch h&agrave;ng h&atilde;y truy cập v&agrave;o địa chỉ website:<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\" target=\"_blank\"><strong>&nbsp;tmhitech.vn</strong></a>&nbsp;để cập nhật th&ocirc;ng tin, hoặc gọi cho ch&uacute;ng t&ocirc;i theo số hotline:<strong>&nbsp;098 969 7177</strong>&nbsp;để được tư vấn v&agrave; giải đ&aacute;p nhanh ch&oacute;ng nhất về sản phẩm.&nbsp;</p>', 3, NULL, '2020-09-19 13:55:03', '2020-09-24 03:15:11', 5);
INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `image_path`, `content`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `post_cate_id`) VALUES
(19, 'NHỮNG MODEL ĐÈN MỔ ÁNH SÁNG LẠNH ĐƯỢC ƯA CHUỘNG TRONG BỆNH VIỆN HIỆN NAY', 'nhung-model-den-mo-anh-sang-lanh-duoc-ua-chuong-trong-benh-vien-hien-nay', 'Ánh sáng trong bệnh viện đóng vai trò quan trọng, nó giúp các bác sĩ có thể thực hiện ca mổ một cách chính xác nhất. Những model đèn mổ ánh sáng lạnh mà chúng tôi giới thiệu dưới đây là dòng sản phẩm được rất nhiều bệnh viện lớn trên thế giới tin tưởng lựa chọn. Cùng tìm hiểu về sản phẩm ngay nhé!', '/storage/photos/post/3/Kz7HtAB0hqPcSKpmFtu4.jpg', '<h2><strong>1. Đ&egrave;n mổ &aacute;nh s&aacute;ng lạnh - Hệ thống đ&egrave;n mổ Led Series SL700 Daray&nbsp;</strong></h2>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng&nbsp;<em>đ&egrave;n mổ bệnh viện</em>&nbsp;nổi bật h&agrave;ng đầu của h&atilde;ng Daray được thiết kế cung cấp &aacute;nh s&aacute;ng c&oacute; chất lượng cao, ch&ugrave;m &aacute;nh s&aacute;ng &iacute;t b&oacute;ng với chi ph&iacute; vận h&agrave;nh &iacute;t nhất. Sản phẩm sẽ gi&uacute;p cho ph&ograve;ng mổ s&aacute;ng r&otilde; nhất c&oacute; thể v&agrave; đặc biệt kh&ocirc;ng hề tạo b&oacute;ng ở bất cứ vị tr&iacute; n&agrave;o, tạo điểm nh&igrave;n thuận lợi hơn c&aacute;c &yacute; b&aacute;c sĩ.&nbsp;</p>\r\n\r\n<p><img alt=\"Đèn mổ ánh sáng lạnh Series SL 700 cao cấp\" src=\"https://tmhitech.vn/Uploads/images/news/den-mo-anh-sang-lanh-1.jpg\" /></p>\r\n\r\n<p>Đ&egrave;n mổ &aacute;nh s&aacute;ng lạnh Series SL 700 cao cấp</p>\r\n\r\n<p><br />\r\nMột số th&ocirc;ng tin cơ bản về sản phẩm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Nhiệt độ m&agrave;u 4.300 K.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Chao đ&egrave;n đ&uacute;c khu&ocirc;n &aacute;p lực, phẳng, tạo ra một giải ph&aacute;p chiếu s&aacute;ng mạnh mẽ.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Kiểm so&aacute;t cường độ &aacute;nh s&aacute;ng kỹ thuật số với 10 mức s&aacute;ng v&agrave; bộ nhớ tự động cho sự linh hoạt .&nbsp;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Hệ thống nguồn cung cấp được gắn b&ecirc;n trong tr&aacute;nh lắp đặt phức tạp của hộp điều khiển gắn tr&ecirc;n tường.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Nguồn s&aacute;ng phụ trợ cho c&aacute;c ca mổ bao gồm phẫu thuật nội soi.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Tuổi thọ của nguồn s&aacute;ng LED l&ecirc;n đến 40.000 giờ.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;C&aacute;nh tay treo chắc chắn với di chuyển dễ d&agrave;ng v&agrave; định vị chuẩn x&aacute;c.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;C&aacute;nh tay c&oacute; khả năng xoay 360 độ<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Kh&ocirc;ng c&oacute; bức xạ hồng ngoại hoặc tia cực t&iacute;m.<br />\r\nĐặc biệt, sản phẩm c&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau như: Treo tường, gắn trần, di động tạo ra sự linh động cao trong việc lựa chọn phi&ecirc;n bản ph&ugrave; hợp cho thiết kế ph&ograve;ng mổ.&nbsp;</p>\r\n\r\n<p>Xem chi tiết sản phẩm&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/he-thong-den-mo-led-series-sl700-daray\" target=\"_blank\"><strong>tại đ&acirc;y</strong></a></p>\r\n\r\n<h2><strong>2.&nbsp;Đ&egrave;n mổ Led SL 400 Camera HD Daray Medical</strong></h2>\r\n\r\n<p><em>Đ&egrave;n mổ Led SL 400 Camera HD Daray Medical&nbsp;</em>l&agrave; một phi&ecirc;n bản kh&ocirc;ng thể bỏ qua khi bạn muốn mua d&ograve;ng đ&egrave;n led chiếu s&aacute;ng trong bệnh viện. Sản phẩm với chất lượng tốt, gi&aacute; th&agrave;nh vừa phải l&agrave; sự lựa chọn m&agrave; bất cứ bệnh viện quy m&ocirc; quốc tế n&agrave;o cũng muốn sở hữu ri&ecirc;ng cho m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Đèn mổ ánh sáng lạnh  SL 400 của hãng Daray\" src=\"https://tmhitech.vn/Uploads/images/news/den-mo-anh-sang-lanh-2.jpg\" /></p>\r\n\r\n<p><em>Đ&egrave;n mổ &aacute;nh s&aacute;ng lạnh &nbsp;SL 400 của h&atilde;ng Daray</em></p>\r\n\r\n<p>&nbsp;Một số đặc điểm của sản phẩm:&nbsp;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Bảng điều khiển kỹ thuật số.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ch&ugrave;m s&aacute;ng m&aacute;t v&agrave; thoải m&aacute;i .<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Trọng lượng nhẹ v&agrave; đầu đ&egrave;n mỏng cho &aacute;nh s&aacute;ng tuyệt vời.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Hệ thống chiếu s&aacute;ng h&igrave;nh học đa thấu k&iacute;nh.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ti&ecirc;u thụ năng lượng thấp.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Khả năng hội tụ ch&ugrave;m tia cao&nbsp;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Giảm thiểu b&oacute;ng tối tuyệt vời.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Thời gian l&agrave;m việc 40.000 giờ từ c&aacute;c m&ocirc;-đun LED.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Tổng chi ph&iacute; đầu tư thấp.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Nhiệt độ m&agrave;u 4.300 K. T&ugrave;y chọn camera t&iacute;ch hợp c&oacute; sẵn.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;C&oacute; sẵn treo trần, tường v&agrave; di động.<br />\r\nSản phẩm&nbsp;<em>đ&egrave;n mổ cao cấp</em>&nbsp;cho &aacute;nh s&aacute;ng c&oacute; cường độ lớn, số lượng b&oacute;ng &iacute;t v&agrave; hiệu quả trong việc đầu tư, cũng như &iacute;t phải bảo dưỡng l&agrave; thế mạnh của SL 400.&nbsp;</p>\r\n\r\n<p>&gt;&gt; Xem chi tiết sản phẩm đ&egrave;n mổ SL 400&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/den-mo-led-sl400-camera-hd-daray-medical\" target=\"_blank\"><strong>tại đ&acirc;y</strong></a></p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y ch&uacute;ng t&ocirc;i đ&atilde; giới thiệu đến bạn 2 d&ograve;ng đ&egrave;n led &aacute;nh s&aacute;ng lạnh c&oacute; chất lượng tốt, gi&aacute; th&agrave;nh phải chăng đến từ thương hiệu Daray Medical. Nếu bạn muốn trang bị cho bệnh viện m&igrave;nh những model cao cấp n&agrave;y h&atilde;y li&ecirc;n hệ ngay với C&ocirc;ng ty Cổ Phần Thiết Bị C&ocirc;ng nghệ Cao TM nh&agrave; ph&acirc;n phối độc quyền của h&atilde;ng Daray tại thị trường Việt Nam để được hưởng mức gi&aacute; ưu đ&atilde;i nhất.&nbsp;<br />\r\nCh&uacute;ng t&ocirc;i rất mong muốn c&oacute; cơ hội được hợp t&aacute;c c&ugrave;ng với bạn để c&oacute; thể mang những sản phẩm&nbsp;<strong>đ&egrave;n</strong></p>', 3, NULL, '2020-09-19 14:00:52', '2020-09-24 03:15:05', 5),
(20, 'BƠM TIÊM ĐIỆN LOẠI NÀO TỐT NHẤT HIỆN NAY?', 'bom-tiem-dien-loai-nao-tot-nhat-hien-nay', 'Bơm tiêm điện là thiết bị y tế được dùng rất nhiều hiện nay tại các cơ sở y tế để có được chất lượng chăm sóc bệnh nhân tốt nhất. Vậy bơm tiêm điện nào nào tốt nhất hiện nay? Bài viết dưới đây chúng tôi sẽ giới thiệu đến bạn mẫu bơm tiêm bằng điện thông dụng cũng như địa chỉ uy tín chuyên nhập khẩu dòng sản phẩm này. Cùng tìm hiểu ngay để có cho mình sự lựa chọn phù hợp nhất nhé!', '/storage/photos/post/3/9pmAotHrGiAAYu345yZY.jpg', '<h2><strong>1. Bơm ti&ecirc;m điện l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Bơm tiện điện l&agrave; một loại m&aacute;y bơm ti&ecirc;m được thiết kế với k&iacute;ch thước kh&aacute; lớn so với c&aacute;c loại bơm ti&ecirc;m y tế th&ocirc;ng thường. Chiếc bơm ti&ecirc;m n&agrave;y được thiết kế gi&uacute;p cho người d&ugrave;ng c&oacute; thể điều chỉnh v&agrave; c&agrave;i đặt sẵn nhiều th&ocirc;ng số kh&aacute;c nhau như liều lượng ti&ecirc;m, tốc độ ti&ecirc;m để đạt được t&iacute;nh ch&iacute;nh x&aacute;c cao nhất.</p>\r\n\r\n<p>Với chiếc&nbsp;<strong>bơm ti&ecirc;m điện cao cấp</strong>&nbsp;sẽ gi&uacute;p truyền dịch v&agrave; ti&ecirc;m thuốc cho bệnh nh&acirc;n một c&aacute;ch dễ d&agrave;ng m&agrave; kh&ocirc;ng cần sự thao t&aacute;c trực tiếp của c&aacute;c b&aacute;c sĩ. Nhờ đ&oacute;, c&aacute;c b&aacute;c sĩ sẽ c&oacute; nhiều thời gian hơn để l&agrave;m việc kh&aacute;c cũng như chăm s&oacute;c được nhiều bệnh nh&acirc;n hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"Bơm tiêm điện giúp các bác sĩ bệnh nhân đạt kết quả tốt hơn\" src=\"https://tmhitech.vn/Uploads/images/news/bom-tiem-dien-2.jpg\" /></p>\r\n\r\n<p><em>Bơm ti&ecirc;m điện gi&uacute;p c&aacute;c b&aacute;c sĩ bệnh nh&acirc;n đạt kết quả tốt hơn</em></p>\r\n\r\n<h2><strong>2. Bơm tiện điện loại n&agrave;o tốt nhất hiện nay?</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay&nbsp;<strong>bơm ti&ecirc;m điện</strong>&nbsp;chất lượng đến từ Đức, &Yacute;, Nhật Bản&hellip; được c&aacute;c bệnh viện tin d&ugrave;ng. Trong đ&oacute;&nbsp;<strong>bơm ti&ecirc;m điện PG-907S Progetti</strong>&nbsp;của &Yacute; lu&ocirc;n nhận được sự quan t&acirc;m đặc biệt. Sản phẩm c&oacute; nhiều chức năng kh&aacute;c nhau như:</p>\r\n\r\n<p>- Gi&uacute;p giới hạn t&iacute;nh ch&iacute;nh x&aacute;c tỷ lệ lưu lượng thuốc</p>\r\n\r\n<p>- Giới hạn được thể t&iacute;ch thuốc sử dụng khi ti&ecirc;m truyền</p>\r\n\r\n<p>- M&aacute;y được thiết kế chi tiết v&agrave; mang lại độ ch&iacute;nh x&aacute;c cao cho sản phẩm</p>\r\n\r\n<p>- Với chiếc<strong>&nbsp;bơm ti&ecirc;m điện</strong>&nbsp;n&agrave;y th&igrave; c&aacute;c b&aacute;c sĩ c&oacute; thể tự điều chỉnh được tốc độ bơm, bơm nhanh hoặc bơm chậm t&ugrave;y v&agrave;o từng loại thuốc.&nbsp;</p>\r\n\r\n<p>- M&aacute;y c&ograve;n được thiết kế gi&uacute;p đếm được ch&iacute;nh x&aacute;c từng giọt nước truyền dịch, gi&uacute;p thuận tiện hơn cho việc ti&ecirc;m v&agrave; truyền những loại thuốc đặc biệt.&nbsp;</p>\r\n\r\n<p>- Chiếc bơm được thiết kế kh&aacute; nhỏ so với c&aacute;c loại m&aacute;y kh&aacute;c n&ecirc;n gi&uacute;p việc sử dụng v&agrave; di chuyển l&uacute;c d&ugrave;ng được tốt nhất, m&aacute;y cũng được cấu tr&uacute;c gi&uacute;p sử dụng với nhiều loại bơm ti&ecirc;m v&agrave; ống truyền dịch kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>- Bơm c&oacute; thể d&ugrave;ng để gắn ở đầu giường người bệnh hoặc c&oacute; thể gắn v&agrave;o thanh truyền dịch để thuận tiện cho việc sử dụng.&nbsp;</p>\r\n\r\n<p>Xem chi tiết về sản phẩm tại đ&acirc;y:<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/bom-tiem-dien-pg-907s-progetti\" target=\"_blank\">&nbsp;https://tmhitech.vn/bom-tiem-dien-pg-907s-progetti</a></p>\r\n\r\n<p><img alt=\"Bơm tiêm điện cao cấp Progetti (Ý) sự lựa chọn hàng đầu của bệnh viện cao cấp\" src=\"https://tmhitech.vn/Uploads/images/news/bom-tiem-dien-1.jpg\" /></p>\r\n\r\n<p><em>Bơm ti&ecirc;m điện cao cấp Progetti (&Yacute;) sự lựa chọn h&agrave;ng đầu của bệnh viện cao cấp</em></p>\r\n\r\n<h2><strong>3. Địa chỉ mua bơm ti&ecirc;m điện gi&aacute; tốt nhất thị trường</strong></h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều đơn vị ph&acirc;n phối&nbsp;<strong>bơm ti&ecirc;m điện</strong>, tuy nhi&ecirc;n để đảm bảo được sản phẩm bơm ti&ecirc;m điện c&oacute; chất lượng v&agrave; mức gi&aacute; tốt nhất th&igrave; bạn n&ecirc;n t&igrave;m mua ở đơn vị uy t&iacute;n.&nbsp;</p>\r\n\r\n<p>Nếu bạn c&oacute; nhu cầu mua c&aacute;c loại bơm ti&ecirc;n điện nhập khẩu ch&iacute;nh h&atilde;ng v&agrave; gi&aacute; tốt từ h&atilde;ng Progetti th&igrave; h&atilde;y li&ecirc;n hệ trực tiếp ngay cho&nbsp;<strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM</strong>&nbsp;bạn nh&eacute;! Ch&uacute;ng t&ocirc;i l&agrave; đơn vị chuy&ecirc;n cung cấp c&aacute;c thiết bị y tế bệnh viện từ c&aacute;c h&atilde;ng nổi tiếng, ch&uacute;ng t&ocirc;i cam kết mang đến cho kh&aacute;ch h&agrave;ng sản phẩm đảm bảo về chất lượng v&agrave; gi&aacute; trẻ nhất thị trường.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i việc cung cấp<strong>&nbsp;bơm ti&ecirc;m điện</strong>, ch&uacute;ng t&ocirc;i c&ograve;n rất nhiều c&aacute;c mặt h&agrave;ng kh&aacute;c nhau bạn c&oacute; thể tham khảo th&ecirc;m như: B&agrave;n mổ, đ&egrave;n mổ, m&aacute;y thở, monitor theo d&otilde;i bệnh nh&acirc;n,&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/3-tieu-chi-giup-ban-mua-duoc-may-sieu-am-chat-luong\" target=\"_blank\"><strong>m&aacute;y si&ecirc;u &acirc;m</strong></a>, m&aacute;y chụp Xquang...</p>\r\n\r\n<p><strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM</strong><br />\r\nTrụ sở: 12B/2, 781 Hồng H&agrave;, Quận Ho&agrave;n Kiếm, H&agrave; Nội, Việt Nam.<br />\r\nVăn ph&ograve;ng H&agrave; Nội: 42 Phương Mai, Đống Đa, H&agrave; Nội<br />\r\nHotline: 098 969 7177<br />\r\nEmail:&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/cdn-cgi\\/l\\/email-protection\">[email&nbsp;protected]</a></p>', 3, NULL, '2020-09-19 14:02:14', '2020-09-24 03:08:36', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_cates`
--

CREATE TABLE `post_cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_cates`
--

INSERT INTO `post_cates` (`id`, `name`, `slug`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'xxxzzz', 'xxxzzz', 2, '2020-09-13 09:30:09', '2020-09-19 03:04:44', '2020-09-19 03:04:44'),
(3, 'zzzzzzzzzzz', '', 0, NULL, '2020-09-19 03:04:47', '2020-09-19 03:04:47'),
(4, 'Tin tức y tế', 'tin-tuc-y-te', 3, '2020-09-19 03:05:09', '2020-09-19 03:05:09', NULL),
(5, 'Tin tức nội bộ', 'tin-tuc-noi-bo', 1, '2020-09-19 03:05:20', '2021-03-10 15:42:11', NULL),
(6, 'Lê Quang Khải', 'le-quang-khai', 1, '2021-01-17 09:46:55', '2021-01-25 02:33:51', '2021-01-25 02:33:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `made_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(25) NOT NULL,
  `inventory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `model`, `made_by`, `des`, `content`, `user_id`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`, `image_path`, `price`, `inventory`) VALUES
(27, 'fadfas', 'fadfas', 'dafsa', 'asdsdf', '<p>dfasdfa</p>', '<p>asfasfd</p>', 1, 29, 2, '2020-09-10 14:28:10', '2020-09-25 02:21:50', '2020-09-25 02:21:50', '', 10000000, 100),
(29, 'Máy điện xung elektra 2 eme', 'may-dien-xung-elektra-2-eme', NULL, NULL, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh rộng: M&agrave;n h&igrave;nh cảm ứng m&agrave;u 6 &rdquo;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hơn 36 dạng s&oacute;ng : Tần số thấp v&agrave; trung b&igrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện &aacute;p cao, Microcurrents, APS v&agrave; c&aacute;c thiết bị kh&aacute;c.</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Đường cong I / T v&agrave; sau khi xử l&yacute;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tệp bệnh nh&acirc;n để lưu trữ tất cả dữ liệu</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Kết nối giữa EleKtra v&agrave; K-Sound để điều trị kết hợp si&ecirc;u &acirc;m điện trị liệu.</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Kết nối giữa EleKtra v&agrave; H&uacute;t ch&acirc;n kh&ocirc;ng cho c&aacute;c phương ph&aacute;p điều trị kết hợp với liệu ph&aacute;p ch&acirc;n kh&ocirc;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thẻ th&ocirc;ng minh để lưu trữ nhiều phương ph&aacute;p điều trị c&aacute; nh&acirc;n v&agrave; tập tin bệnh nh&acirc;n.</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Phần mềm c&oacute; thể n&acirc;ng cấp</p>\r\n	</li>\r\n</ul>', '<h2><strong>Giới thiệu về m&aacute;y điện xung Elektra 2 Eme</strong></h2>\r\n\r\n<p><strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/may-dien-xung-elektra-2-eme\" target=\"_blank\">M&aacute;y điện xung Elektra 2 Eme</a></strong>&nbsp;l&agrave; một thiết bị trị liệu ho&agrave;n to&agrave;n mới cho ph&eacute;p truy cập với c&aacute;c dạng s&oacute;ng &nbsp;v&agrave; chương tr&igrave;nh bằng c&aacute;c ảnh chụp tr&ecirc;n m&agrave;n h&igrave;nh kh&aacute;c nhau:<br />\r\nbạn c&oacute; thể chọn từ danh s&aacute;ch dạng s&oacute;ng, điều trị giao thức hoặc c&aacute;c ứng dụng kh&aacute;c nhau tr&ecirc;n mọi bộ phận cơ thể.</p>\r\n\r\n<p>Bạn c&oacute; thể sử dụng c&ugrave;ng một chương tr&igrave;nh trong c&aacute;c k&ecirc;nh kh&aacute;c nhau hoặc sửa đổi ch&uacute;ng, sử dụng ch&uacute;ng song song, thay thế ch&uacute;ng, &aacute;p dụng ch&uacute;ng đồng thời, đồng bộ h&oacute;a ch&uacute;ng hoặc &aacute;p dụng ch&uacute;ng theo tr&igrave;nh tự.</p>\r\n\r\n<p>Những t&aacute;c động ch&iacute;nh l&agrave; tạo ra k&iacute;ch th&iacute;ch điện đến hệ thống thần kinh cơ, để hệ thống thần kinh phản ứng ch&iacute;nh x&aacute;c trong c&aacute;c phản ứng tự nguyện v&agrave; kh&ocirc;ng tự nguyện bằng hoạt động co lại; giảm co cứng bằng c&aacute;ch k&iacute;ch th&iacute;ch c&aacute;c chất chủ vận v&agrave; đối kh&aacute;ng; ph&aacute;t h&agrave;nh qua da của thuốc c&aacute;c chất v&agrave;o da (ionophoresis);cải thiện t&iacute;nh di động chung bằng cơ học k&eacute;o d&agrave;i cơ bắp; cải thiện chữa l&agrave;nh vết thương bằng c&aacute;ch tăng lưu th&ocirc;ng tại khu vực điều trị; giảm k&iacute;ch thước ph&ugrave; nề nhờ hoạt động của bơm cơ.</p>\r\n\r\n<h2><strong>T&iacute;nh năng nổi bật của m&aacute;y điện xung Elektra 2 Eme</strong></h2>\r\n\r\n<p>- M&agrave;n h&igrave;nh rộng: M&agrave;n h&igrave;nh cảm ứng m&agrave;u 6 &rdquo;.</p>\r\n\r\n<p>- Hơn 36 dạng s&oacute;ng : Tần số thấp v&agrave; trung b&igrave;nh</p>\r\n\r\n<p>- Điện &aacute;p cao, Microcurrents, APS v&agrave; c&aacute;c thiết bị kh&aacute;c.</p>\r\n\r\n<p>- Hơn 100 đề xuất điều trị được nh&oacute;m lại theo c&aacute;c khu vực giải phẫu, c&aacute;c nh&aacute;nh chuy&ecirc;n m&ocirc;n v&agrave; dạng s&oacute;ng.</p>\r\n\r\n<p>- Đường cong I / T v&agrave; sau khi xử l&yacute;.</p>\r\n\r\n<p>- Tệp bệnh nh&acirc;n để lưu trữ tất cả dữ liệu, điều trị v&agrave; lịch sử th&ocirc;ng tin ngắn của bệnh nh&acirc;n.</p>\r\n\r\n<p>- N&uacute;t trợ gi&uacute;p, Mỗi gợi &yacute; điều trị cho thấy chỉ dẫn về c&aacute;ch sử dụng v&agrave; nơi đặt c&aacute;c điện cực.</p>\r\n\r\n<p>- Kết nối giữa EleKtra v&agrave; K-Sound để điều trị kết hợp si&ecirc;u &acirc;m điện trị liệu.</p>\r\n\r\n<p>- Kết nối giữa EleKtra v&agrave; H&uacute;t ch&acirc;n kh&ocirc;ng cho c&aacute;c phương ph&aacute;p điều trị kết hợp với liệu ph&aacute;p ch&acirc;n kh&ocirc;ng.</p>\r\n\r\n<p>- Thẻ th&ocirc;ng minh để lưu trữ nhiều phương ph&aacute;p điều trị c&aacute; nh&acirc;n v&agrave; tập tin bệnh nh&acirc;n.</p>\r\n\r\n<p>- Phần mềm c&oacute; thể n&acirc;ng cấp</p>\r\n\r\n<h3><strong>Th&ocirc;ng số kỹ thuật của ,&aacute;y điện xung Elektra 2 Eme</strong></h3>\r\n\r\n<p>- Nguồn điện ch&iacute;nh : 230 Vca, 50-60 Hz &plusmn; 10%</p>\r\n\r\n<p>- Hấp thụ điện năng ch&iacute;nh tối đa : 30 VA</p>\r\n\r\n<p>- Đ&ocirc;i bị trễ loại : 315 mA-T</p>\r\n\r\n<p>- Đồ họa m&agrave;u LCD c&oacute; đ&egrave;n nền</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh cảm ứng 6 &rdquo;</p>\r\n\r\n<p>- Thời gian điều trị c&oacute; thể điều chỉnh 1 - 99 ph&uacute;t</p>\r\n\r\n<p>- Hoạt động: điện &aacute;p kh&ocirc;ng đổi</p>\r\n\r\n<p>- D&ograve;ng điện giao thoa l&ecirc;n đến 4.000 HZ</p>\r\n\r\n<p>- Điện &aacute;p cao 500V hiện tại</p>\r\n\r\n<p>- D&ograve;ng li&ecirc;n tục Ionthophoresis giới hạn đến 50 mA</p>\r\n\r\n<p>- D&ograve;ng điện cực đại với 100 mA</p>\r\n\r\n<p>- C&ocirc;ng suất đỉnh 100 V</p>\r\n\r\n<p>- Giao thức được lưu trữ 250</p>\r\n\r\n<p>- Khả năng cập nhật phần mềm&nbsp;</p>\r\n\r\n<p>- Trọng lượng 4,4 Kg</p>\r\n\r\n<p>- K&iacute;ch thước 39 x 14 x 30</p>\r\n\r\n<p>Để đặt mua sản phẩm&nbsp;<strong>m&aacute;y điện xung Elektra 2 Eme</strong>, qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177&nbsp;</strong>để được tư vấn v&agrave; hỗ trợ nhanh nhất về sản phẩm. Ngo&agrave;i thiết bị m&aacute;y xung điện, c&ocirc;ng ty ch&uacute;ng t&ocirc;i c&ograve;n cung cấp rất nhiều c&aacute;c thiết bị bệnh viện kh&aacute;c như: b&agrave;n mổ, đ&egrave;n mổ, lồng ấp trẻ sơ sinh, m&aacute;y si&ecirc;u &acirc;m... của c&aacute;c h&atilde;ng uy t&iacute;n tr&ecirc;n thế giới với chất lượng tốt nhất v&agrave; gi&aacute; th&agrave;nh cạnh tranh nhất.&nbsp;</p>', 1, 49, 7, '2020-09-25 03:00:38', '2020-12-31 09:53:21', NULL, '/storage/photos/product/3/qugautTJTAUd1awEYZgq.jpg', 10000000, 100),
(30, 'MÁY ĐO ĐIỆN TIM GẮNG SỨC CARDIOPART 12 ECG AMEDTEC', 'may-do-dien-tim-gang-suc-cardiopart-12-ecg-amedtec', 'CardioPart 12 ECG', 'Đức', '<ul>\r\n	<li>\r\n	<p>Thiết bị ghi CardioPart 12 ECG c&oacute; thể kết nối USB hoặc Bluetoot,&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>L&yacute; tưởng cho y học thể thao nhờ c&oacute; thể truyền dữ liệu kh&ocirc;ng d&acirc;y&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm so&aacute;t t&ugrave;y chọn m&aacute;y chạy bộ hoặc m&aacute;y đo tốc độ xe đạp v&agrave; m&aacute;y đo tiếng vang&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Hoạt động bằng một n&uacute;t bấm v&agrave; người d&ugrave;ng được hướng dẫn cho việc sử dụng chương tr&igrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm tra chất lượng ghi của từng điện cực trước khi tiến h&agrave;nh kiểm tra</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm tra căng thẳng ECG c&oacute; thể chạy ho&agrave;n to&agrave;n tự động -&gt; m&agrave; kh&ocirc;ng cần bất kỳ sự can thiệp n&agrave;o của người vận h&agrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Chế độ xem lại to&agrave;n bộ ECG 12 đạo tr&igrave;nh c&oacute; &nbsp;ph&acirc;n t&iacute;ch sự bất thường trong c&aacute;c lần đo</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết quả cuối c&ugrave;ng tự động &nbsp;c&oacute; thể chỉnh sửa, c&aacute;c khối văn bản được x&aacute;c định trước</p>\r\n	</li>\r\n</ul>', '<h2><strong>M&aacute;y đo điện tim gắng sức CardioPart 12 ECG &nbsp;Amedtec</strong></h2>\r\n\r\n<p><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/may-do-dien-tim-gang-suc-cardiopart-12-ecg-amedtec\" target=\"_blank\">M&aacute;y đo điện tim gắng sức CardioPart 12 ECG &nbsp;Amedtec</a>&nbsp;với quy tr&igrave;nh l&agrave;m việc tối ưu, nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c v&agrave; đơn giản.&nbsp;</p>\r\n\r\n<p>- Thiết bị ghi CardioPart 12 ECG c&oacute; thể kết nối USB hoặc Bluetoot,&nbsp;</p>\r\n\r\n<p>- L&yacute; tưởng cho y học thể thao nhờ c&oacute; thể truyền dữ liệu kh&ocirc;ng d&acirc;y (v&iacute; dụ: m&aacute;y chạy bộ)</p>\r\n\r\n<p>- Kiểm so&aacute;t t&ugrave;y chọn m&aacute;y chạy bộ hoặc m&aacute;y đo tốc độ xe đạp v&agrave; m&aacute;y đo tiếng vang&nbsp;</p>\r\n\r\n<p>- Hoạt động bằng một n&uacute;t bấm v&agrave; người d&ugrave;ng được hướng dẫn cho việc sử dụng chương tr&igrave;nh</p>\r\n\r\n<p>- Kiểm tra chất lượng ghi của từng điện cực trước khi tiến h&agrave;nh kiểm tra</p>\r\n\r\n<p>- Kiểm tra căng thẳng ECG c&oacute; thể chạy ho&agrave;n to&agrave;n tự động -&gt; m&agrave; kh&ocirc;ng cần bất kỳ sự can thiệp n&agrave;o của người vận h&agrave;nh</p>\r\n\r\n<p>- Chế độ xem lại to&agrave;n bộ ECG 12 đạo tr&igrave;nh c&oacute; &nbsp;ph&acirc;n t&iacute;ch sự bất thường trong c&aacute;c lần đo</p>\r\n\r\n<p>- Kết quả cuối c&ugrave;ng tự động &nbsp;c&oacute; thể chỉnh sửa, c&aacute;c khối văn bản được x&aacute;c định trước</p>\r\n\r\n<p>- Chế độ xem ECG tr&ecirc;n to&agrave;n mạng theo thời gian thực cho tất cả người d&ugrave;ng được ủy quyền sử dụng của AMEDTEC ECGpro &reg; Online</p>\r\n\r\n<p>- C&aacute;c kiểm tra bệnh nh&acirc;n c&oacute; thể được x&aacute;c định từ c&aacute;c chương tr&igrave;nh chẩn đo&aacute;n kh&aacute;c nhau</p>\r\n\r\n<p>- Nhiều lựa chọn định dạng in v&agrave; c&oacute; thể dễ d&agrave;ng th&ecirc;m c&aacute;c định dạng kh&aacute;c</p>\r\n\r\n<p>- Được t&iacute;ch hợp trong hệ thống quản l&yacute; dữ liệu AMEDTEC ECGpro &reg;</p>\r\n\r\n<p><img alt=\"Máy điện tim gắng sức CardioPart 12 ECG Amedtec\" src=\"https://tmhitech.vn/Uploads/images/products/may-dien-tim-gang-suc-cardio-part-12-eeg-amedtec.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y điện tim gắng sức CardioPart 12 ECG Amedtec</em></p>\r\n\r\n<h3><strong>Phụ kiện/linh kiện</strong></h3>\r\n\r\n<p>Ti&ecirc;u chuẩn :</p>\r\n\r\n<p>- C&aacute;p bệnh nh&acirc;n&nbsp;</p>\r\n\r\n<p>- M&aacute;y ch&iacute;nh PC</p>\r\n\r\n<p>- M&aacute;y chạy bộ hoặc m&aacute;y đo &aacute;p suất</p>\r\n\r\n<p>- Xe đẩy</p>\r\n\r\n<p>- Theo d&otilde;i huyết &aacute;p</p>\r\n\r\n<p><strong>PHỤ KIỆN</strong></p>\r\n\r\n<p>Điện cực d&iacute;nh</p>\r\n\r\n<p>Để đặt mua&nbsp;<strong>m&aacute;y đo điện tim gắng sức CardioPart 12 ECG &nbsp;Amedtec&nbsp;</strong>qu&yacute; kh&aacute;ch h&atilde;y li&ecirc;n hệ ngay với C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM theo số hotline<strong>: 098 969 7177&nbsp;</strong>để được tư vấn về sản phẩm một c&aacute;ch nhanh ch&oacute;ng nhất. Đặc biệt,&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\" target=\"_blank\"><strong>tmhitech.vn&nbsp;</strong></a>cung cấp đa dạng c&aacute;c sản phẩm thiết bị bệnh viện của đầy đủ c&aacute;c khoa ph&ograve;ng, v&igrave; vậy bạn cần đặt mua bất cứ sản phẩm n&agrave;o h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i nh&eacute;!</p>', 3, 42, 4, '2020-09-28 03:37:56', '2020-09-28 03:37:56', NULL, '/storage/photos/product/3/uJdVVvR1c9Fd6TImWBhl.jpg', 10000000, 100),
(31, 'MÁY ĐIỆN TIM 3 KÊNH KỸ THUẬT SỐ EPG VIEW PROGETTI', 'may-dien-tim-3-kenh-ky-thuat-so-epg-view-progetti', 'Epg View', 'Ý', NULL, '<h2><strong>Th&ocirc;ng số kỹ thuật của m&aacute;y điện tim 3 k&ecirc;nh kỹ thuật số EPG VIEW Progetti&nbsp;</strong></h2>\r\n\r\n<p>- M&agrave;n h&igrave;nh LCD: 320x240 pixel, 1 hoặc 3 k&ecirc;nh ở định dạng chuẩn hoặc cabrera với c&agrave;i đặt đường nền</p>\r\n\r\n<p>- M&aacute;y in nhiệt độ ph&acirc;n giải cao: (8 chấm / mm): bản 1 hoặc 3 k&ecirc;nh thời gian thực với khả năng in bằng lưới &ocirc; vu&ocirc;ng milim&eacute;t:&nbsp;</p>\r\n\r\n<p>- Ghi: bằng tay hoặc tự động</p>\r\n\r\n<p>- Bộ nhớ: 10 gi&acirc;y cho mỗi đạo tr&igrave;nh</p>\r\n\r\n<p>- Dừng h&igrave;nh: với bộ nhớ cuộn để xem v&agrave; bản sao của c&aacute;c t&iacute;n hiệu thu được</p>\r\n\r\n<p>- Bộ lọc kỹ thuật số: để loại bỏ rung cơ, đường d&acirc;y điện v&agrave; l&agrave;m nhiễu loạn đường nền</p>\r\n\r\n<p>- Nguồn điện: t&iacute;ch hợp Pin Ni-Mh với c&ocirc;ng suất cao v&agrave; thời gian sạc nhanh</p>\r\n\r\n<p>- Vận h&agrave;nh: rất đơn giản th&ocirc;ng qua c&aacute;c ph&iacute;m v&agrave; menu đ&atilde; được x&aacute;c định trước</p>\r\n\r\n<p>- Thực sự di động: với k&iacute;ch thước nhỏ v&agrave; trọng lượng nhẹ</p>\r\n\r\n<p>- Bộ xử l&yacute; RISC để xử l&yacute; t&iacute;n hiệu số ho&agrave;n to&agrave;n</p>\r\n\r\n<h2><strong>Đặc điểm kỹ thuật</strong></h2>\r\n\r\n<p>- Nguồn điện: Pin Ni-MH c&oacute; thể sạc lại, 2Ah</p>\r\n\r\n<p>- Nguồn điện lưới: 220 V ~ &plusmn; 10%; 50 - 60 Hz; Tối đa 150 mA; c&aacute;ch ly CL2 B</p>\r\n\r\n<p>- Pin tự động: 2,5 giờ</p>\r\n\r\n<p>- Phần ứng dụng: kiểu CF</p>\r\n\r\n<p>- Trở kh&aacute;ng đầu v&agrave;o:&gt; 100 M&Omega;</p>\r\n\r\n<p>- Tần số đ&aacute;p ứng: 0,05: 145 Hz</p>\r\n\r\n<p>- CMRR:&gt; 100 dB, hằng số thời gian:&gt; 3,2 gi&acirc;y</p>\r\n\r\n<p>- Thu nhận: 12 bit 800 mẫu / gi&acirc;y / k&ecirc;nh-isochrone</p>\r\n\r\n<p>- Đạo tr&igrave;nh: 12 ti&ecirc;u chuẩn hoặc Cabrera</p>\r\n\r\n<p>- Độ nhạy: 5 mm / mV; 10 mm / mV; 20 mm / mV &plusmn; 5%</p>\r\n\r\n<p>- Tốc độ cuộn: 5 mm / gi&acirc;y; 10 mm / gi&acirc;y; 25 mm / gi&acirc;y; 50 mm / gi&acirc;y</p>\r\n\r\n<p>- Bộ nhớ t&iacute;n hiệu: 10 gi&acirc;y cho mỗi k&ecirc;nh</p>\r\n\r\n<p>- M&aacute;y in : m&aacute;y in nhiệt 8 pixel / mm, giấy 58 mm</p>\r\n\r\n<p>- Hiển thị: m&agrave;n h&igrave;nh LCD TFT 4.7&quot; 320x240 pixel, đ&egrave;n nền CFL&nbsp;</p>\r\n\r\n<p>- Bộ lọc: rung cơ 35 Hz kỹ thuật số; nhiễu đường d&acirc;y điện 50 Hz 60 Hz kỹ thuật số; lọc th&ocirc;ng cao 0,5 Hz kỹ thuật số</p>\r\n\r\n<p>- Bảo vệ khử rung tim: nội bộ</p>\r\n\r\n<p>- Đồng hồ thời gian thực (chỉ chế độ giải th&iacute;ch)</p>\r\n\r\n<p>- K&iacute;ch thước: 240x160x65 mm</p>\r\n\r\n<p>- Trọng lượng: 1500 gr</p>\r\n\r\n<p>- Vỏ: IP 20</p>\r\n\r\n<p>- Nhiệt độ hoạt động: + 10 &deg; C ~ 40 &deg; C</p>\r\n\r\n<p>- Nhiệt độ bảo quản: -10 &deg; C ~ 40 &deg; C</p>\r\n\r\n<p>- Độ ẩm tương đối cho hoạt động: 25% ~ 95% m&agrave; kh&ocirc;ng ngưng tụ</p>\r\n\r\n<p>- C&aacute;c ti&ecirc;u chuẩn ph&ugrave; hợp: &nbsp;&nbsp; &nbsp;93/42 / CEE; EN60601-1; EN60601-1-2, IEC601-2-25</p>\r\n\r\n<h3><strong>Phụ kiện ti&ecirc;u chuẩn</strong></h3>\r\n\r\n<p>- C&aacute;p bệnh nh&acirc;n</p>\r\n\r\n<p>- Bộ điện cực</p>\r\n\r\n<p>- Gel - Giấy cuộn&nbsp;</p>\r\n\r\n<p>- D&acirc;y c&aacute;p nguồn</p>\r\n\r\n<p>- Hướng dẫn sử dụng</p>\r\n\r\n<p>- Hộp đựng (Chọn th&ecirc;m)</p>', 1, 53, 5, '2020-09-28 03:42:34', '2020-12-31 09:52:49', NULL, '/storage/photos/product/3/LinIgJ6uEOCbfXvSBaNx.jpg', 10000000, 100),
(32, 'MÁY SOI CỔ TỬ CUNG KP 3000 KAPS', 'may-soi-co-tu-cung-kp-3000-kaps', 'KP 3000', 'Đức', '<ul>\r\n	<li>&Aacute;nh s&aacute;ng LEDone mạnh mẽ</li>\r\n	<li>Độ ph&oacute;ng đại đơn hoặc bộ chỉnh độ ph&oacute;ng đại 3 bước</li>\r\n	<li>Lựa chọn giữa ống thẳng hoặc nghi&ecirc;ng</li>\r\n	<li>Ống k&iacute;nh v&agrave; thị k&iacute;nh ho&aacute;n đổi cho nhau</li>\r\n	<li>T-xử l&yacute; c&oacute; thể được gắn tr&ecirc;n cả hai mặt</li>\r\n	<li>Bộ lọc m&agrave;u xanh l&aacute; c&acirc;y Swing-in</li>\r\n</ul>', '<h2><strong>Đặc điểm nổi bật của m&aacute;y soi cổ tử cung KP 3000 Kaps</strong></h2>\r\n\r\n<p><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/may-soi-co-tu-cung-kp-3000-kaps\" target=\"_blank\"><strong>M&aacute;y soi cổ tử cung KP 3000 Kaps</strong></a>&nbsp;tr&ecirc;n thiết bị di động l&agrave; m&aacute;y soi cổ tử cung l&yacute; tưởng cho việc chẩn đo&aacute;n bệnh&nbsp;h&agrave;ng ng&agrave;y. C&ugrave;ng với c&aacute;c phụ kiện của, m&aacute;y&nbsp;&nbsp;đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn cao về chất lượng v&agrave; thuyết phục người d&ugrave;ng với gi&aacute; trị hấp dẫn của sản phẩm v&agrave; gi&uacute;p tiết kiệm chi ph&iacute; một c&aacute;ch tối đa.&nbsp;</p>\r\n\r\n<p><strong>M&aacute;y soi cổ tử cung KP 3000 Kaps&nbsp;</strong>nổi bật với chức năng xử l&yacute; thuận tiện v&agrave; thời gian nhanh ch&oacute;ng, sự linh hoạt của m&aacute;y&nbsp;trong việc sử dụng thực h&agrave;nh y tế h&agrave;ng ng&agrave;y, v&agrave; phạm vi rộng lớn của c&aacute;c phụ kiện. D&ograve;ng sản phẩm n&agrave;y sẽ hỗ trợ t&iacute;ch cực v&agrave;o việc chẩn đo&aacute;n h&igrave;nh ảnh cũng như gi&uacute;p c&aacute;c b&aacute;c sĩ đưa ra giải ph&aacute;p can thiệp điều trị bệnh kịp thời cho bệnh nh&acirc;n.&nbsp;</p>\r\n\r\n<p><img alt=\"Máy soi cổ tử cung KP 3000 Kaps chất lượng cao \" src=\"https://tmhitech.vn/Uploads/images/products/may-soi-co-tu-cung-kp-3000-kaps-3.jpg\" style=\"width:489px\" /></p>\r\n\r\n<p><em>M&aacute;y soi cổ tử cung KP 3000 Kaps chất lượng cao&nbsp;</em></p>\r\n\r\n<h3><strong>Một số ưu điểm của sản phẩm</strong></h3>\r\n\r\n<p>- &Aacute;nh s&aacute;ng LEDone mạnh mẽ</p>\r\n\r\n<p>- Độ ph&oacute;ng đại đơn hoặc bộ chỉnh độ ph&oacute;ng đại 3 bước</p>\r\n\r\n<p>- Lựa chọn giữa ống thẳng hoặc nghi&ecirc;ng</p>\r\n\r\n<p>- Ống k&iacute;nh v&agrave; thị k&iacute;nh ho&aacute;n đổi cho nhau</p>\r\n\r\n<p>- T-xử l&yacute; c&oacute; thể được gắn tr&ecirc;n cả hai mặt</p>\r\n\r\n<p>- Bộ lọc m&agrave;u xanh l&aacute; c&acirc;y Swing-in</p>\r\n\r\n<p><img alt=\"Máy soi cổ tử cung có ống kính hiển thị sắc nét các hình ảnh\" src=\"https://tmhitech.vn/Uploads/images/products/may-soi-co-tu-cung-kp-3000-kaps-2.jpg\" style=\"width:489px\" /></p>\r\n\r\n<p><em><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/may-soi-co-tu-cung\" target=\"_blank\">M&aacute;y soi cổ tử cung</a>&nbsp;c&oacute; ống k&iacute;nh hiển thị sắc n&eacute;t c&aacute;c h&igrave;nh ảnh</em></p>\r\n\r\n<p><strong>Cấu h&igrave;nh cung cấp</strong></p>\r\n\r\n<p>01 Ch&acirc;n đẩy gồm đ&egrave;n LED</p>\r\n\r\n<p>01 gi&aacute; đỡ k&iacute;nh soi cổ tử cung</p>\r\n\r\n<p>01 tay cầm ho&agrave;n chỉnh</p>\r\n\r\n<p>01 Bộ chuyển đổi &aacute;nh s&aacute;ng lạnh với bộ lọc m&agrave;u xanh lục</p>\r\n\r\n<p>01 thiết bị ph&oacute;ng đại c&oacute; thể thay đổi gấp 3 lần</p>\r\n\r\n<p>01 Ống &nbsp;nh&ograve;m nghi&ecirc;ng 450, f = 125mm</p>\r\n\r\n<p>01 Thị k&iacute;nh điều chỉnh, WF 20xV</p>\r\n\r\n<p>01 Mục ti&ecirc;u f = 300mm</p>\r\n\r\n<p>01 Phủ bụi</p>\r\n\r\n<p>Phụ kiện lựa chọn mua th&ecirc;m</p>\r\n\r\n<p>Bộ t&aacute;ch ch&ugrave;m t&iacute;ch hợp với C-mount</p>\r\n\r\n<p>M&aacute;y quay video HD Sentech loại HD223 với kết nối HDMI</p>\r\n\r\n<p>Để đặt h&agrave;ng&nbsp;<strong>m&aacute;y soi cổ tử cung KP 3000 Kaps</strong>&nbsp;qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y gọi cho ch&uacute;ng t&ocirc;i theo số hotline:<strong>&nbsp;098 969 7177</strong>&nbsp;để được hỗ trợ nhanh nhất. Ch&uacute;ng t&ocirc;i lu&ocirc;n c&oacute; mức gi&aacute; cạnh tranh nhất c&ugrave;ng với việc nhiều ưu đ&atilde;i hấp dẫn d&agrave;nh cho kh&aacute;ch h&agrave;ng. V&igrave; vậy, nếu bạn cần t&igrave;m một đơn vị ph&acirc;n thiết bị y tế ch&iacute;nh h&atilde;ng đừng qu&ecirc;n li&ecirc;n hệ với&nbsp;<strong>C&ocirc;ng ty Cổ Phần Thiết bị C&ocirc;ng nghệ Cao TM&nbsp;</strong>ngay nh&eacute;!</p>', 1, 51, 6, '2020-09-28 03:51:08', '2020-12-31 09:52:20', NULL, '/storage/photos/product/3/vQjWV9cI90sclY13z2HL.jpg', 10000000, 100),
(33, 'ARES MR CARDIO MS WESTFALIA', 'ares-mr-cardio-ms-westfalia', 'Ares Mr Cardio', 'Đức', '<ul>\r\n	<li>X-ray system with large power reserve</li>\r\n	<li>Ceiling mount and LCD monitors</li>\r\n	<li>Image intensifier of 9&#39;&#39; and 13&#39;&#39;</li>\r\n	<li>Digital CCD-camera 1kx1k</li>\r\n	<li>Air cooling system Dual cooling</li>\r\n	<li>C-arm E-motion system</li>\r\n	<li>Power reserve system Dual Power</li>\r\n	<li>Remote control</li>\r\n</ul>', '<p>- X-ray system with large power reserve</p>\r\n\r\n<p>- Ceiling mount and LCD monitors</p>\r\n\r\n<p>- Image intensifier of 9&#39;&#39; and 13&#39;&#39;</p>\r\n\r\n<p>- Digital CCD-camera 1kx1k</p>\r\n\r\n<p>- Air cooling system Dual cooling</p>\r\n\r\n<p>- C-arm E-motion system</p>\r\n\r\n<p>- Power reserve system Dual Power</p>\r\n\r\n<p>- Remote control</p>', 1, 48, 19, '2020-10-10 15:19:14', '2021-03-11 01:38:31', NULL, '/storage/photos/product/3/K9SFq1uz49hJjHvmGnF4.jpg', 10000000, 0),
(34, 'HỆ THỐNG SIÊU ÂM ĐEN TRẮNG XÁCH TAY KỸ THUẬT SỐ KUP-101', 'he-thong-sieu-am-den-trang-xach-tay-ky-thuat-so-kup-101', 'KUP-101', 'Đức', '<ul>\r\n	<li>Ti&ecirc;u chuẩn chất lượng Ch&acirc;u &Acirc;u</li>\r\n	<li>Thiết kế th&ocirc;ng minh v&agrave; tiện lợi</li>\r\n	<li>Tối ưu h&oacute;a, c&ocirc;ng việc dễ d&agrave;ng</li>\r\n	<li>Hiệu suất cao nhất mặc d&ugrave; thiết kế nhỏ gọn</li>\r\n	<li>Sử dụng di động với pin t&iacute;ch hợp</li>\r\n	<li>Kết nối với hai đầu d&ograve;</li>\r\n	<li>Thời gian hoạt động lớn</li>\r\n	<li>Ti&ecirc;u thụ điện năng nhỏ</li>\r\n	<li>M&agrave;n h&igrave;nh hiển thị c&oacute; độ ph&acirc;n giải cao</li>\r\n	<li>Nặng chỉ 6,5kg</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<h2><strong>Hệ thống si&ecirc;u &acirc;m đen trắng x&aacute;ch tay kỹ thuật số KUP-101</strong></h2>\r\n\r\n<p>-&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/he-thong-sieu-am-den-trang-xach-tay-ky-thuat-so-kup-101\" target=\"_blank\">Hệ thống si&ecirc;u &acirc;m đen trắng x&aacute;ch tay kỹ thuật số KUP-101&nbsp;</a>đạt ti&ecirc;u chuẩn chất lượng Ch&acirc;u &Acirc;u</p>\r\n\r\n<p>- Thiết kế th&ocirc;ng minh v&agrave; tiện lợi</p>\r\n\r\n<p>- Tối ưu h&oacute;a, c&ocirc;ng việc dễ d&agrave;ng</p>\r\n\r\n<p>- Hiệu suất cao nhất mặc d&ugrave; thiết kế nhỏ gọn</p>\r\n\r\n<p>- Sử dụng di động với pin t&iacute;ch hợp</p>\r\n\r\n<p>- Kết nối với hai đầu d&ograve;</p>\r\n\r\n<p>- T&ugrave;y chọn bộ nhớ kh&aacute;c nhau: Ổ cứng / USB / giao diện DICOM</p>\r\n\r\n<p>- Đầu d&ograve; Convex, tuyến t&iacute;nh, microconvex, v&agrave; &acirc;m đạo (128 phần tử)</p>\r\n\r\n<p><img alt=\"Hệ thống siêu âm đen trắng xách tay kỹ thuật số KUP - 101 chẩn đoán chính xác \" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-sieu-am-den-trang-xach-tay-ky-thuat-so-kup-101-cao-cap-1.jpg\" /></p>\r\n\r\n<p><em>Hệ thống si&ecirc;u &acirc;m đen trắng x&aacute;ch tay kỹ thuật số KUP - 101 chẩn đo&aacute;n ch&iacute;nh x&aacute;c&nbsp;</em></p>\r\n\r\n<h3><strong>T&iacute;nh năng, hiệu suất của hệ thống si&ecirc;u &acirc;m đen trắng x&aacute;ch tay kỹ thuật số KUP-101</strong></h3>\r\n\r\n<p><strong>Hệ thống si&ecirc;u &acirc;m đen&nbsp;trắng x&aacute;ch tay kỹ thuật số KUP-101</strong>, c&oacute; gi&aacute; cả phải chăng v&agrave; được thiết kế để sử dụng di động. KUP-101 được cấp bằng s&aacute;ng chế, c&ocirc;ng nghệ kỹ thuật số để cung cấp h&igrave;nh ảnh độ ph&acirc;n giải cao với độ ch&iacute;nh x&aacute;c cao nhất cho chẩn đo&aacute;n. B&agrave;n ph&iacute;m sử dụng v&agrave; l&agrave;m việc hiệu quả tạo điều kiện cho hoạt động h&agrave;ng ng&agrave;y cho người sử dụng.</p>\r\n\r\n<p>Thiết kế s&aacute;ng tạo của thiết bị di động đảm bảo trọng lượng nhẹ chỉ 6,5 kg, bao gồm pin t&iacute;ch hợp. KUP-101 l&agrave; đối t&aacute;c tin cậy của bạn bất cứ nơi n&agrave;o bạn muốn sử dụng n&oacute;. KUP-101 cung cấp c&aacute;c t&ugrave;y chọn lưu trữ kh&aacute;c nhau chẳng hạn như ổ đĩa, USB v&agrave; cho ph&eacute;p truyền dữ liệu với HIS sử dụng DICOM 3.0.</p>\r\n\r\n<p><img alt=\"Hệ thống siêu âm giúp chẩn đoán nhiều bệnh lý khác nhau\" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-sieu-am-den-trang-xach-tay-ky-thuat-so-kup-101-cao-cap-2.jpg\" /></p>\r\n\r\n<p><em>Hệ thống si&ecirc;u &acirc;m gi&uacute;p chẩn đo&aacute;n nhiều bệnh l&yacute; kh&aacute;c nhau</em></p>\r\n\r\n<h3><strong>Th&ocirc;ng số kỹ thuật của sản phẩm</strong></h3>\r\n\r\n<p>Chế độ hiển thị&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;B, B/B, 4B, B/M, M<br />\r\nM&agrave;n h&igrave;nh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LCD, độ ph&acirc;n giải: 800 x 600<br />\r\nC&ocirc;ng suất &acirc;m thanh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Điều chỉnh 20-100%<br />\r\nNguồn cung cấp:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 200 &ndash; 240 V~, 50/60 Hz<br />\r\nC&ocirc;ng suất ti&ecirc;u thụ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 80 VA<br />\r\nHoạt động li&ecirc;n tục&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &ge; 8 giờ<br />\r\nPhần mềm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Thai kỳ, tiết niệu, tim mạch<br />\r\nĐ&aacute;nh dấu cơ thể&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 100 kiểu, dấu hiệu cho vị tr&iacute; đầu d&ograve;<br />\r\nK&iacute;ch thước&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;440 mm x 420 mm x 355 mm (H x W x D)<br />\r\nC&acirc;n nặng&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,5 kg</p>\r\n\r\n<p><strong>Hệ thống si&ecirc;u &acirc;m đen trắng x&aacute;ch tay kỹ thuật số KUP-101&nbsp;</strong>hiện đang được&nbsp;<strong>C&ocirc;ng ty Cổ Phần Thiết Bị C&ocirc;ng nghệ Cao TM&nbsp;</strong>ph&acirc;n phối tại thị trường Việt Nam c&oacute; chất lượng tốt nhất v&agrave; gi&aacute; th&agrave;nh cạnh tranh nhất. H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;để được tư vấn v&agrave; hỗ trợ nhanh nhất về sản phẩm. Rất mong c&oacute; cơ hội được hợp t&aacute;c c&ugrave;ng c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m</p>\r\n\r\n<p><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/he-thong-sieu-am-den-trang-ky-thuat-so-kut-201\" target=\"_blank\">Hệ thống si&ecirc;u &acirc;m đen trắng kỹ thuật số KUT-201</a></p>', 1, 49, 18, '2020-10-10 15:23:02', '2020-12-31 09:52:05', NULL, '/storage/photos/product/3/tIc1tk0dPfGDQg0Amsvk.jpg', 10000000, 100),
(35, 'HỆ THỐNG NỘI SOI TAI MŨI HỌNG INV 250 INNOTECH', 'he-thong-noi-soi-tai-mui-hong-inv-250-innotech', 'HỆ THỐNG NỘI SOI INV-250 (HALOGEN)', 'Hàn Quốc', '<ul>\r\n	<li>Sử dụng loại đ&egrave;n halogen 250W</li>\r\n	<li>H&igrave;nh ảnh hiển thị r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t hơn&nbsp;</li>\r\n	<li>Trang bị hệ thống dừng h&igrave;nh ảnh hiện đại&nbsp;</li>\r\n	<li>Đ&egrave;n halogen c&oacute; chức năng tắt/bật ri&ecirc;ng biệt</li>\r\n	<li>Đ&egrave;n halogen c&oacute; thể thay dễ d&agrave;ng</li>\r\n	<li>Thiết kế hiện đại, thuận tiện tối đa cho người sử dụng&nbsp;</li>\r\n	<li>Điều trị nhi khoa v&agrave; điều trị tại gia đ&igrave;nh</li>\r\n</ul>', '<h2><strong>Đặc điểm nổi bật của hệ thống nội soi tai mũi họng INV 250 Innotech</strong></h2>\r\n\r\n<p><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/he-thong-noi-soi-tai-mui-hong-inv-250-innotech\" target=\"_blank\"><strong>Hệ thống nội soi tai mũi họng INV 250 Innotech</strong>&nbsp;</a>sử dụng loại đ&egrave;n halogen 250W, nhờ đ&oacute; h&igrave;nh ảnh hiển thị r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t hơn. Trang bị hệ thống dừng h&igrave;nh ảnh hiện đại c&ugrave;ng với c&aacute;c chức năng đa dạng được thiết kế g&oacute;i gọn trong một hệ thống bao gồm: Chức năng chia khung h&igrave;nh 2.4, chức năng 4 bộ nhớ v&agrave; hệ thống 2 k&ecirc;nh.</p>\r\n\r\n<p><img alt=\"Hệ thống noi soi tai mũi họng INV 250 Innotech\" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-noi-soi-tai-mui-hong-inv-250-innotec.jpg\" style=\"width:489px\" /></p>\r\n\r\n<p><em>Hệ thống noi soi tai mũi họng INV 250 Innotech</em></p>\r\n\r\n<p>M&aacute;y sử dụng c&aacute;c đầu soi mũi, đầu soi tai v&agrave; đầu soi thanh quản, nối trực tiếp với mũi, tai v&agrave; thanh quản bệnh nh&acirc;n, gi&uacute;p quan s&aacute;t h&igrave;nh ảnh một c&aacute;ch ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>- Đ&egrave;n halogen c&oacute; chức năng tắt/bật ri&ecirc;ng biệt, nhờ đ&oacute; khi kh&ocirc;ng sử dụng đến đ&egrave;n c&oacute; thể tắt đ&egrave;n, gi&uacute;p k&eacute;o d&agrave;i tuổi thọ của đ&egrave;n.</p>\r\n\r\n<p>-&nbsp;<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/ht-noi-soi-tai-mui-hong\" target=\"_blank\"><strong>Hệ thống soi tai mũi họng&nbsp;</strong></a>sử dụng quạt gi&oacute; cũng c&oacute; chức năng tắt/bật ri&ecirc;ng biệt, độ ồn thấp, thuận tiện cho việc sử dụng.</p>\r\n\r\n<p>- Kh&ocirc;ng chỉ sử dụng để điều trị ngoại khoa m&agrave; c&ograve;n c&oacute; thể sử dụng cho c&aacute;c điều trị b&ecirc;n trong, điều trị nhi khoa v&agrave; điều trị tại gia đ&igrave;nh.</p>\r\n\r\n<p>- Đ&egrave;n halogen c&oacute; thể thay dễ d&agrave;ng - Thiết kế hiện đại, thuận tiện tối đa cho người sử dụng.&nbsp;</p>\r\n\r\n<p><strong>Đặc t&iacute;nh kỹ thuật</strong></p>\r\n\r\n<p>CCD Camera: 410,000 PIXEL - CCD Adaptor: 25 mm, 28 mm - Nguồn s&aacute;ng: Đ&egrave;n halogen 24V, 250W - Bộ dẫn nguồn s&aacute;ng: 4.8mm, 2m. loại k&iacute;nh - Nguồn điện: 220V, 50/60Hz - Năng lượng ti&ecirc;u thụ: 0.4 KW -Trọng lượng: 10 kg&nbsp;</p>\r\n\r\n<p>Để đặt mua&nbsp;<strong>hệ thống nội soi tai mũi họng INV 250 Innotech</strong>&nbsp;thuộc khoa&nbsp;<strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/chan-doan-hinh-anh\" target=\"_blank\">chẩn đo&aacute;n h&igrave;nh ảnh</a>&nbsp;</strong>qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y gọi cho ch&uacute;ng t&ocirc;i theo số hotline:<strong>&nbsp;098 969 7177</strong>&nbsp;để được hỗ trợ nhanh nhất.&nbsp;</p>', 1, 58, 17, '2020-10-10 15:35:25', '2020-12-31 09:51:51', NULL, '/storage/photos/product/3/6cOX6QeHIaG0sfBoVGCR.jpg', 10000000, 100),
(36, 'HỆ THỐNG ĐIỆN NÃO 34, 58, 90 KÊNH NEUROWERK EEG (ĐỨC)', 'he-thong-dien-nao-34-58-90-kenh-neurowerk-eeg-duc', 'NEUROWERK EEG', 'Đức', '<ul>\r\n	<li>Hiển thị đầy đủ cơ sở dữ liệu bệnh nh&acirc;n</li>\r\n	<li>Bao gồm c&aacute;c phi&ecirc;n bản 34, 58, 90 k&ecirc;nh khuếch đại</li>\r\n	<li>Vận h&agrave;nh phần mền đơn giản</li>\r\n	<li>Khả năng thiết lập c&aacute;c th&ocirc;ng số trực tuyến</li>\r\n	<li>Lập biểu đồ bi&ecirc;n độ của c&aacute;c đoạn EEG được lựa chọn</li>\r\n	<li>Truyền dữ liệu ghi điện n&atilde;o qua hệ thống mạng</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<h2><strong>Hệ thống điện n&atilde;o 34, 58, 90 k&ecirc;nh Neurowerk EEG (Đức)</strong></h2>\r\n\r\n<p>- Thiết kế với bộ khuyếch đại mới bao gồm c&aacute;c phi&ecirc;n bản 34, 58, 90 k&ecirc;nh khuếch đại</p>\r\n\r\n<p>-&nbsp;<strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/he-thong-dien-nao-34-58-90-kenh-neurowerk-eeg\" target=\"_blank\">Hệ thống điện n&atilde;o 34, 58, 90 k&ecirc;nh Neurowerk EEG (Đức)&nbsp;</a></strong>được lựa chọn điện cực tham chiếu</p>\r\n\r\n<p>- Chế độ ghi video EEG với độ ph&acirc;n giải HD</p>\r\n\r\n<p>- Hỗ trợ chế độ ph&acirc;n t&iacute;ch phổ DSA trực tuyến</p>\r\n\r\n<p>- Hỗ trợ c&aacute;c chuẩn b&aacute;o c&aacute;o bằng định dạng PDF th&ocirc;ng qua chuẩn EDP/HL7</p>\r\n\r\n<p><strong>Phần mềm Quản l&yacute; dữ liệu bệnh nh&acirc;n&nbsp;</strong></p>\r\n\r\n<p><strong>- Hệ thống điện n&atilde;o 34, 58, 90 k&ecirc;nh Neurowerk EEG</strong>&nbsp;(Đức) c&agrave;i đặt quản l&yacute; theo chế độ người d&ugrave;ng</p>\r\n\r\n<p>- Hiển thị đầy đủ cơ sở dữ liệu bệnh nh&acirc;n</p>\r\n\r\n<p>- Kiểm tra lưu trữ dữ liệu (Tự động th&ocirc;ng b&aacute;o khi lưu trữ dữ liệu</p>\r\n\r\n<p>- Tự động lưu trữ b&aacute;o c&aacute;o về dung lượng dữ liệu của b&ecirc;nh nh&acirc;n</p>\r\n\r\n<p>- Sao lưu chương tr&igrave;nh v&agrave; cơ sở dữ liệu</p>\r\n\r\n<p><img alt=\"Hệ thống điện não EEG giúp hiển thị đầy đủ các thông số kiểm tra ở người bệnh \" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-dien-nao-34-58-90-kenh-neurowerk-duc-1.jpg\" /></p>\r\n\r\n<p><em>Hệ thống điện n&atilde;o EEG gi&uacute;p hiển thị đầy đủ c&aacute;c th&ocirc;ng số kiểm tra ở người bệnh&nbsp;</em></p>\r\n\r\n<p><strong>Phần mềm ghi điện n&atilde;o đồ</strong></p>\r\n\r\n<p>- Vận h&agrave;nh phần mền đơn giản với c&aacute;c biểu tượng trực quan tr&ecirc;n giao diện phần mềm điều khiển bằng chuột hoặc b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh.</p>\r\n\r\n<p>- C&aacute;c hệ thống quang, đồ thị, số lượng ph&eacute;p đo điện n&atilde;o c&oacute; thể được vận h&agrave;nh qua hệ thống điều khiển.</p>\r\n\r\n<p>- C&oacute; thể thực hiện ph&eacute;p đo điện n&atilde;o ở nhiều thời điểm kh&aacute;c nhau, khả năng lưu trữ tất cả c&aacute;c dữ liệu điện n&atilde;o đ&atilde; được đo.</p>\r\n\r\n<p>- Chế độ hiển thị nhiều cửa sổ giao diện tr&ecirc;n m&agrave;n h&igrave;nh cho mổ phỏng ghi dữ liệu &nbsp;v&agrave; xem kết quả đo</p>\r\n\r\n<p>- Truyền dữ liệu ghi điện n&atilde;o qua hệ thống mạng</p>\r\n\r\n<p>- Khả năng đ&aacute;nh dấu 20 sự kiện, v&agrave; kh&ocirc;ng giới hạn số lượng k&yacute; tự lời ch&uacute; th&iacute;ch sự kiện.</p>\r\n\r\n<p>- Mở rộng khả năng đ&aacute;nh dấu 8 sự kiện b&ecirc;n ngo&agrave;i qua t&iacute;n hiệu trigger</p>\r\n\r\n<p>- Khă năng loại bỏ đoạn s&oacute;ng từ dữ liệu đ&aacute;nh dấu</p>\r\n\r\n<p>- Tự động đ&aacute;nh dấu k&iacute;ch th&iacute;ch &aacute;nh s&aacute;ng (Thiết lập từ phần mềm)</p>\r\n\r\n<p>- Tự động đ&aacute;nh dấu khi bệnh nh&acirc;n tở gấp (Thiết lập từ phầm mềm)</p>\r\n\r\n<p>- Khả năng đ&aacute;nh dấu in ấn điện n&atilde;o</p>\r\n\r\n<p>- Thiết lập thời gian ghi điện n&atilde;o t&ugrave;y &yacute;, v&agrave; tự động dừng ghi khi hết thời gian, đồng thờ gởi tin nhắn mạng.</p>\r\n\r\n<p>-&nbsp;<strong><a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/may-do-dien-nao\" target=\"_blank\">M&aacute;y đo điện n&atilde;o</a></strong>&nbsp;được lập tr&igrave;nh Macro</p>\r\n\r\n<p>- Khả năng thiết lập c&aacute;c th&ocirc;ng số trực tuyến</p>\r\n\r\n<p>- EEG montage kh&ocirc;ng giới hạn</p>\r\n\r\n<p><img alt=\"Hệ thống điện não vận hành đơn giản, dễ sử dụng\" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-dien-nao-34-58-90-kenh-neurowerk-duc-2.jpg\" /></p>\r\n\r\n<p><em>Hệ thống điện n&atilde;o vận h&agrave;nh đơn giản, dễ sử dụng</em></p>\r\n\r\n<p><strong>Phần mền xem điện n&atilde;o đồ</strong></p>\r\n\r\n<p>- Vận h&agrave;nh phần mền đơn giản với c&aacute;c biểu tượng trực quan tr&ecirc;n giao diện phần mềm điều khiển bằng chuột hoặc b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh.</p>\r\n\r\n<p>- Khả năng ph&aacute;t thảo, tr&igrave;nh b&agrave;y kh&ocirc;ng giới hạn EEG montage v&agrave; c&aacute;c th&ocirc;ng số.</p>\r\n\r\n<p>- Tự động chuyển đổi sang montage theo t&iacute;n hiệu ghi montage.</p>\r\n\r\n<p>- Khả năng tiềm kiếm điểm đ&aacute;nh dấu, sự kiện, ghi chu v&agrave; thời gian</p>\r\n\r\n<p>- Khả năng nhập, thay đổi, v&agrave; chỉnh sửa điểm đ&aacute;nh dấu.</p>\r\n\r\n<p>- Tự động ph&acirc;n trang với tốc độ</p>\r\n\r\n<p>- Hiển thị c&aacute;c th&ocirc;ng số ng&agrave;y đo, thời gian bắt đầu đo v&agrave; độ d&agrave;i ph&eacute;p đo</p>\r\n\r\n<p>- C&oacute; thể chỉnh sửa m&agrave;u sắc của c&aacute;c t&iacute;nh hiệu đo.</p>\r\n\r\n<p>- Chức năng tự động đo lường c&aacute;c t&iacute;nh hiệu EEG c&oacute; bi&ecirc;n độ v&agrave; tần số cao.</p>\r\n\r\n<p>- Ph&oacute;ng lớn c&aacute;c đoạn EEG bao gồm cả chức năng đo tần số, bi&ecirc;n độ v&agrave; thời gian.</p>\r\n\r\n<p>- Lập biểu đồ bi&ecirc;n độ của c&aacute;c đoạn EEG được lựa chọn</p>\r\n\r\n<p>- Ph&acirc;n t&iacute;ch tần số của c&aacute;c đoạn EEG được chọn</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ ng&agrave;y với ch&uacute;ng t&ocirc;i<strong>&nbsp;C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM</strong>&nbsp;theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;nếu bạn quan t&acirc;m v&agrave; muốn đặt mua&nbsp;<strong>hệ thống điện n&atilde;o 34, 58, 90 k&ecirc;nh Neurowerk EEG (Đức)&nbsp;</strong>cho khoa<a href=\"http://www.allowcopy.com/open/?url=https:\\/\\/tmhitech.vn\\/tham-do-chuc-nang\" target=\"_blank\"><strong>&nbsp;thăm d&ograve; chức năng</strong></a>. Đội ngũ kỹ sư d&agrave;y dặn kinh nghiệm của ch&uacute;ng t&ocirc;i sẽ tư vấn v&agrave; giải đ&aacute;p mọi thắc mắc của bạn 24/7 tất cả c&aacute;c ng&agrave;y trong tuần, kể cả ng&agrave;y nghỉ lễ.&nbsp;</p>', 1, 42, 16, '2020-11-04 07:06:16', '2021-01-03 03:57:57', NULL, '/storage/photos/product/1/8NOAN3n9SSLu1o37iPrY.jpg', 10000000, 100),
(37, 'fdasfa', 'fdasfa', '32432432', '4323432', '<p>2433232</p>', '<p>34234232342</p>', 1, 42, 4, '2021-01-28 15:06:41', '2021-02-13 14:01:11', '2021-02-13 14:01:11', NULL, 10000000, 100),
(38, 'MÁY THỞ XÁCH TAY PR4-G LEISTUNG BRAZIN', 'may-tho-xach-tay-pr4-g-leistung-brazin', 'PR4-G LEISTUNG', 'Brazin', '<ul>\r\n	<li>M&aacute;y thở d&ugrave;ng cho người lớn v&agrave; trẻ sơ sinh</li>\r\n	<li>Chương tr&igrave;nh b&aacute;o tự động</li>\r\n	<li>C&oacute; gi&aacute;m s&aacute;t đồ họa</li>\r\n	<li>Pin sạc b&ecirc;n trong 900 ph&uacute;t</li>\r\n	<li>Th&ocirc;ng gi&oacute; dự ph&ograve;ng VCV, PCV</li>\r\n</ul>', '<p><strong>M&aacute;y thở x&aacute;ch tay PR4-g Leistung Brazin Cung c&acirc;́p hi&ecirc;̣u xu&acirc;́t vượt tr&ocirc;̣i và đ&acirc;̀y đủ tính năng trong m&ocirc;̣t gói di đ&ocirc;̣ng</strong></p>\r\n\r\n<p><a href=\"https://tmhitech.vn/may-tho-xach-tay-pr4-g-leistung-brazin\" target=\"_blank\"><strong>M&aacute;y thở x&aacute;ch tay PR4-g Leistung Brazin</strong></a>&nbsp;cung c&acirc;́p đ&acirc;̀y đủ tính năng c&acirc;̀n thi&ecirc;́t của m&ocirc;̣t máy thở, mở r&ocirc;̣ng hơn các đ&ocirc;́i tượng b&ecirc;̣nh nh&acirc;n nhưng v&acirc;̃n cung c&acirc;́p đ&acirc;̀y đủ sự thu&acirc;̣n ti&ecirc;̣n và hoạt đ&ocirc;̣ng đ&ocirc;̣c l&acirc;̣p.</p>\r\n\r\n<p><strong>C&aacute;c Mode thở</strong></p>\r\n\r\n<p><strong>- Người lớn/trẻ em</strong></p>\r\n\r\n<p>+ Hỗ trợ kiểm so&aacute;t VCV</p>\r\n\r\n<p>+ Hỗ trợ PCV c&oacute; kiểm so&aacute;t</p>\r\n\r\n<p>+ SIMV (VCV) + PSV</p>\r\n\r\n<p>+ Th&ocirc;ng gi&oacute; dự ph&ograve;ng (VCV)</p>\r\n\r\n<p>+ Th&ocirc;ng gi&oacute; dự ph&ograve;ng (PCV)</p>\r\n\r\n<p><strong>- Trẻ sơ sinh</strong></p>\r\n\r\n<p>+ D&ograve;ng chảy li&ecirc;n tục</p>\r\n\r\n<p>+ CPAP mũi&#39;</p>\r\n\r\n<p><strong>- Chương tr&igrave;nh b&aacute;o động</strong></p>\r\n\r\n<p>+ &Aacute;p suất đường thở tối đa</p>\r\n\r\n<p>+ &Aacute;p suất đường thở tối thiểu</p>\r\n\r\n<p>+ Lượng thủy triều lấy cảm hứng tối đa</p>\r\n\r\n<p>+ Lượng thủy triều lấy cảm hứng tối thiểu</p>\r\n\r\n<p>+ Thời gian b&aacute;o động ngưng thở</p>\r\n\r\n<p>+ Tần số thở tối đa</p>\r\n\r\n<p><strong>- Gi&aacute;m s&aacute;t đồ họa</strong></p>\r\n\r\n<p>+ Đường cong &aacute;p lực thời gian</p>\r\n\r\n<p>+ Đ&ocirc;ng cứng</p>\r\n\r\n<p>+ Quy m&ocirc; tự động</p>\r\n\r\n<p><img alt=\"Máy thở xách tay PR4-g Leistung có màn hình hiển thị rõ ràng, sắc nét\" src=\"https://tmhitech.vn/Uploads/images/products/may-tho-xach-tay-pr4-g-Leistung-1.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y thở x&aacute;ch tay PR4-g Leistung c&oacute; m&agrave;n h&igrave;nh hiển thị r&otilde; r&agrave;ng, sắc n&eacute;t</em></p>\r\n\r\n<h2><strong>C&aacute;c t&iacute;nh năng v&agrave; th&ocirc;ng số kỹ thuật kh&aacute;c của sản phẩm</strong></h2>\r\n\r\n<p>B&aacute;o động lịch sử</p>\r\n\r\n<p>Phổi cơ học: AutoPEEP</p>\r\n\r\n<p><strong>Cung cấp năng lượng</strong></p>\r\n\r\n<p>Nguồn b&ecirc;n ngo&agrave;i: 12.0 đến 15.0Vdc (tối thiểu 2A)</p>\r\n\r\n<p>Pin sạc b&ecirc;n trong: 900 ph&uacute;t</p>\r\n\r\n<p><strong>Kiểm so&aacute;t</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>FiO&sup2;: 50 - 100%</p>\r\n\r\n<p>- Thời gian tăng: 5 cấp độ</p>\r\n\r\n<p>- Thời gian truyền cảm hứng: 0,2 - 3 gi&acirc;y (tạm dừng + 2 gi&acirc;y)</p>\r\n\r\n<p>- Tần suất: 1 - 150 cpm</p>\r\n\r\n<p>- Thể t&iacute;ch d&ograve;ng: 10 - 2500 mL</p>\r\n\r\n<p>- &Aacute;p suất được kiểm so&aacute;t: 2 - 30 cm H&sup2;O</p>\r\n\r\n<p>- Hỗ trợ &aacute;p lực: 2 - 30 cm H&sup2;O</p>\r\n\r\n<p>- PEEP: 0 - 20 cmH&sup2;O</p>\r\n\r\n<p>- Độ nhạy k&iacute;ch hoạt &aacute;p suất: -0,5 a -10,0 cmH&sup2;O</p>\r\n\r\n<p>- Độ cao b&ugrave;: 0 - 6000 masl</p>\r\n\r\n<p><strong>Ngưng thở</strong></p>\r\n\r\n<p>- 0,10 - 2 gi&acirc;y</p>\r\n\r\n<p><strong>Gi&aacute;m s&aacute;t</strong></p>\r\n\r\n<p>- &Aacute;p suất đường thở cao điểm: 0 - 120 cm H&sup2;O</p>\r\n\r\n<p>- Đường dẫn kh&iacute; trung b&igrave;nh: 0 - 100 cm H&sup2;O</p>\r\n\r\n<p>- Lượng thủy triều h&ocirc; hấp: 10 - 1500 mL</p>\r\n\r\n<p>- Tần suất: 1- 150 cpm</p>\r\n\r\n<p>- Tỷ lệ: 5: 1 - 1:99</p>\r\n\r\n<p>Để đặt mua<strong>&nbsp;m&aacute;y thở x&aacute;ch tay PR4-g Leistung Brazin&nbsp;</strong>với chất lượng tốt nhất v&agrave; gi&aacute; th&agrave;nh cạnh tranh nhất qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;để được tư vấn v&agrave; giải đ&aacute;p mọi thắc mắc về sản phẩm. Ngo&agrave;i m&aacute;y thở x&aacute;ch tay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i c&ograve;n b&aacute;n rất nhiều c&aacute;c thiết bị bệnh viện đ&aacute;p ứng cho đầy đủ khoa ph&ograve;ng. V&igrave; vậy bạn đừng qu&ecirc;n truy cập thường xuy&ecirc;n v&agrave;o website:&nbsp;<a href=\"https://tmhitech.vn/\" target=\"_blank\"><strong>tmhitech.vn&nbsp;</strong></a>để c&oacute; thể t&igrave;m hiểu th&ecirc;m về sản phẩm.&nbsp;</p>', 1, 57, 4, '2021-02-13 14:18:57', '2021-02-13 14:19:13', NULL, '/storage/photos/product/1/8MFeJebd8glsqx5uUtJg.jpg', 25000000, 100),
(39, 'MÁY THỞ XÁCH TAY CHENWEI CWH-2010', 'may-tho-xach-tay-chenwei-cwh-2010', 'CWH-2010', 'China', '<ul>\r\n	<li>&Aacute;p dụng cho người lớn v&agrave; trẻ em.</li>\r\n	<li>Hệ điều h&agrave;nh th&ocirc;ng minh.</li>\r\n	<li>Được chứng nhận bởi CE v&agrave; ISO 9001/13485.</li>\r\n	<li>Dễ d&agrave;ng mang theo, đi k&egrave;m với trọng lượng nhẹ để vận chuyển.</li>\r\n	<li>Chống sốc, chống nhiễu v&agrave; chống thấm nước.</li>\r\n	<li>C&oacute; thể được sử dụng trong khoa cấp cứu, khoa phụ khoa v&agrave; sản khoa, ICU, vận chuyển, viện trợ ngo&agrave;i trời, viện trợ mỗi bệnh viện v&agrave; b&ecirc;n cạnh giường.</li>\r\n</ul>', '<p><strong>T&iacute;nh năng</strong></p>\r\n\r\n<p>- &Aacute;p dụng cho người lớn v&agrave; trẻ em.</p>\r\n\r\n<p>- Điều khiển bằng kh&iacute; n&eacute;n, điều khiển điện tử.</p>\r\n\r\n<p>- Hệ thống gi&aacute;m s&aacute;t v&agrave; b&aacute;o động ti&ecirc;n tiến cho c&aacute;c th&ocirc;ng số li&ecirc;n quan đến bệnh nh&acirc;n.</p>\r\n\r\n<p>- Điểm hiệu suất sử dụng cao</p>\r\n\r\n<p>- Dễ d&agrave;ng mang theo, đi k&egrave;m với trọng lượng nhẹ để vận chuyển.</p>\r\n\r\n<p>- Chống sốc, chống nhiễu v&agrave; chống thấm nước.</p>\r\n\r\n<p>- C&oacute; thể được sử dụng trong khoa cấp cứu, khoa phụ khoa v&agrave; sản khoa, ICU, vận chuyển, viện trợ ngo&agrave;i trời, viện trợ mỗi bệnh viện v&agrave; b&ecirc;n cạnh giường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>M&aacute;y thở x&aacute;ch tay CWH - 2010</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&ocirc;ng suất đầu v&agrave;o:</p>\r\n			</td>\r\n			<td>\r\n			<p>220 V (&plusmn; 10%), 50Hz (&plusmn; 2%) hoặc 110 V / 60Hz S</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Pin dự ph&ograve;ng</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&oacute; thể sạc lại nội bộ</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pin sử dụng, 12V</p>\r\n			</td>\r\n			<td>\r\n			<p>&gt; 4 giờ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Sạc xe DC</p>\r\n			</td>\r\n			<td>\r\n			<p>12V</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước m&agrave;n h&igrave;nh (inch):</p>\r\n			</td>\r\n			<td>\r\n			<p>5,7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Kh&iacute;:</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Oxy, air</p>\r\n			</td>\r\n			<td>\r\n			<p>Oxy, air</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phạm vi đầu v&agrave;o đường ống</p>\r\n			</td>\r\n			<td>\r\n			<p>280 kPa ~ 600 kPa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Th&ocirc;ng số kỹ thuật th&ocirc;ng gi&oacute;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ thở</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;4 ~ 100 / ph&uacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thời lượng h&ocirc; hấp</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;0,2 ~ 6s</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thể t&iacute;ch th&ocirc;ng kh&iacute; (TV )</p>\r\n			</td>\r\n			<td>\r\n			<p>50-1500ml</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nồng độ oxy</p>\r\n			</td>\r\n			<td>\r\n			<p>45% ~ 100%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>I: E Tỷ lệ</p>\r\n			</td>\r\n			<td>\r\n			<p>4: 1 ~ 1: 8</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thở d&agrave;i</p>\r\n			</td>\r\n			<td>\r\n			<p>1 ~ 5 (Cứ 100 lần)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Chế độ th&ocirc;ng gi&oacute;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>IPPV</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>SPONT / CPAP</p>\r\n			</td>\r\n			<td>\r\n			<p>SPONT</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đ / C</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>SIGH</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>SIMV</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Triger</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch hoạt &aacute;p suất</p>\r\n			</td>\r\n			<td>\r\n			<p>-2.0 kPa 0 kPa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Gi&aacute;m s&aacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thể t&iacute;ch thủy triều S</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khối lượng th&ocirc;ng gi&oacute; S</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhịp thở</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ppeak</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nồng độ oxy</p>\r\n			</td>\r\n			<td>\r\n			<p>T&ugrave;y chọn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Hiển thị dạng s&oacute;ng</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Aacute;p lực thời gian</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>B&aacute;o động</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ngưng thở</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Vt qu&aacute; cao (thấp) S</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Aacute;p suất đường thở qu&aacute; cao S</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cung cấp kh&ocirc;ng kh&iacute; hoặc kh&ocirc;ng th&agrave;nh c&ocirc;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mất điện AC</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pin dưới điện &aacute;p S</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Kh&ocirc;ng c&oacute; th&ocirc;ng kh&iacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Ti&ecirc;u chuẩn</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 57, 15, '2021-02-13 14:25:44', '2021-02-13 14:25:44', NULL, '/storage/photos/product/1/dm4mD7Tiy1Umcl4GigTM.png', 14000000, 100);
INSERT INTO `products` (`id`, `name`, `slug`, `model`, `made_by`, `des`, `content`, `user_id`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`, `image_path`, `price`, `inventory`) VALUES
(40, 'MONITOR THEO DÕI BỆNH NHÂN MPR6-03 TREATON (EU)', 'monitor-theo-doi-benh-nhan-mpr6-03-treaton-eu', 'MPR6-03', 'EU', '<ul>\r\n	<li>Monitor c&oacute; thiết kế nhỏ gọn, dễ sử dụng</li>\r\n	<li>Một giải ph&aacute;p ho&agrave;n chỉnh cho tất cả c&aacute;c c&agrave;i đặt theo d&otilde;i bệnh nh&acirc;n</li>\r\n	<li>Theo d&otilde;i c&aacute;c chế độ sinh tồn của bệnh nh&acirc;n</li>\r\n	<li>M&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn, dễ d&agrave;ng quan s&aacute;t</li>\r\n	<li>C&aacute;c th&ocirc;ng số theo d&otilde;i cơ bản: 12 đạo tr&igrave;nh EEG</li>\r\n	<li>Bảo h&agrave;nh 24&nbsp;th&aacute;ng (Đặt mua trong năm 2019 bảo h&agrave;nh 30 th&aacute;ng)</li>\r\n</ul>\r\n\r\n<div id=\"simple-translate\">\r\n<div>\r\n<div class=\"simple-translate-button isShow\" style=\"background-image: url(&quot;chrome-extension://ibplnjkanclpjokhdolnendpplpjiace/icons/512.png&quot;); height: 22px; width: 22px; top: 51px; left: 142px;\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-panel \" style=\"width: 300px; height: 200px; top: 0px; left: 0px; font-size: 13px; background-color: rgb(24, 24, 24);\">\r\n<div class=\"simple-translate-result-wrapper\" style=\"overflow: hidden;\">\r\n<div class=\"simple-translate-move\" draggable=\"true\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-result-contents\">\r\n<p class=\"simple-translate-result\" style=\"color: rgb(230, 230, 230);\">&nbsp;</p>\r\n\r\n<p class=\"simple-translate-candidate\" style=\"color: rgb(170, 170, 170);\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<h2><strong>Monitor theo d&otilde;i bệnh nh&acirc;n MPR6-03 Treaton</strong></h2>\r\n\r\n<p>Mục đ&iacute;ch sử dụng: chăm s&oacute;c đặc biệt</p>\r\n\r\n<p>Được thiết kế để theo d&otilde;i c&aacute;c th&ocirc;ng số ch&iacute;nh của c&aacute;c dấu hiệu sinh tồn của bệnh nh&acirc;n.</p>\r\n\r\n<p><strong>C&aacute;c ứng dụng:</strong></p>\r\n\r\n<p>- Theo d&otilde;i trẻ sơ sinh c&oacute; trọng lượng cơ thể nhỏ từ 500 g.</p>\r\n\r\n<p>- Trong ph&ograve;ng điều trị sơ sinh v&agrave; c&aacute;c đơn vị chăm s&oacute;c đặc biệt.</p>\r\n\r\n<p>- Trong c&aacute;c khoa (thần kinh học, tim mạch v&agrave; những khoa kh&aacute;c).</p>\r\n\r\n<p>- Trong kh&aacute;m bệnh ban đầu cho trẻ em.</p>\r\n\r\n<p><img alt=\"Monitor theo dõi bệnh nhân mpr6-03 Treaton (Eu) thoe dõi chỉ số sống còn của bệnh nhân chính xác\" src=\"https://tmhitech.vn/Uploads/images/products/monitor-theo-doi-benh-nhan-mpr6-03-treaton-EU.jpg\" /></p>\r\n\r\n<p><em>Monitor theo d&otilde;i bệnh nh&acirc;n mpr6-03 Treaton (Eu) thoe d&otilde;i chỉ số sống c&ograve;n của bệnh nh&acirc;n ch&iacute;nh x&aacute;c</em></p>\r\n\r\n<p>C&aacute;c module v&agrave; dấu hiệu sinh tồn&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Điện tim (ECG)</p>\r\n			</td>\r\n			<td>\r\n			<p>12 đạo tr&igrave;nh: I, II, III, aVL, aVR, aVF, V1 &ndash; V6<br />\r\n			Ph&acirc;n t&iacute;ch nhịp tim biến thi&ecirc;n (HRV)<br />\r\n			Ph&acirc;n t&iacute;ch ST<br />\r\n			Nhịp tim<br />\r\n			Ph&acirc;n t&iacute;ch v&agrave; ph&aacute;t hiện tự động loạn nhịp tim</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Xung oxy TREATON&reg;</p>\r\n			</td>\r\n			<td>\r\n			<p>Nhịp tim<br />\r\n			SpO2<br />\r\n			S&oacute;ng biểu đồ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Xung oxy Masimo SET&reg;</p>\r\n			</td>\r\n			<td>\r\n			<p>Nhịp tim</p>\r\n\r\n			<p>SpO2</p>\r\n\r\n			<p>S&oacute;ng biểu đồ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đo nhiệt độ</p>\r\n			</td>\r\n			<td>\r\n			<p>Hai k&ecirc;nh<br />\r\n			Đo nhiệt độ ch&ecirc;nh lệch</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phương ph&aacute;p đo trở kh&aacute;ng c&aacute;c th&ocirc;ng số h&ocirc; hấp</p>\r\n			</td>\r\n			<td>\r\n			<p>Tần số thở<br />\r\n			S&oacute;ng nhịp thở</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>NIBP</p>\r\n			</td>\r\n			<td>\r\n			<p>&Aacute;p lực động mạch Sys / Mean / Dia&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đo huyết &aacute;p tự động li&ecirc;n tục (cNIBP)</p>\r\n			</td>\r\n			<td>\r\n			<p>&Aacute;p lực động mạch Sys / Mean / Dia, nhịp mạch, thời gianchuyển tiếp tương đối so với QRS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đo huyết &aacute;p x&acirc;m lấn (2 k&ecirc;nh IBP)</p>\r\n			</td>\r\n			<td>\r\n			<p>Huyết &aacute;p Sys / Mean / Dia&nbsp;<br />\r\n			Lựa chọn loại &aacute;p lực: ART, PA, CVP, ICP, RAP, LAP, RVP, UA<br />\r\n			C&aacute;c dạng s&oacute;ng IBP1, IBP2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đo CVP x&acirc;m lấn tối thiểu v&agrave; c&aacute;c &aacute;p lực m&aacute;u thấp kh&aacute;c ở c&aacute;c v&ugrave;ng kh&aacute;c nhau của cơ thể (IIND 500/75)</p>\r\n			</td>\r\n			<td>\r\n			<p>Dải đo, mmH2O: &ndash;200&hellip; 450</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cảm biến d&ograve;ng ch&iacute;nh đo CO2</p>\r\n			</td>\r\n			<td>\r\n			<p>EtCO2, FiCO2, RR<br />\r\n			Dạng biểu đồ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cảm biến d&ograve;ng b&ecirc;n đo CO2 (tỷ lệ mẫu 50 ml / ph&uacute;t)</p>\r\n			</td>\r\n			<td>\r\n			<p>EtCO2, FiCO2, RR<br />\r\n			Dạng biểu đồ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đo oxy d&ograve;ng b&ecirc;n&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>EtO2, FiO2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&iacute;nh to&aacute;n trao đổi chất</p>\r\n			</td>\r\n			<td>\r\n			<p>VO2, VCO2, REE, RQ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&ocirc;-đun chất g&acirc;y m&ecirc; (đa kh&iacute;)</p>\r\n			</td>\r\n			<td>\r\n			<p>Fi / Et: СО2, О2, N2O, 5AA. RR, MAC<br />\r\n			Lựa chọn dạng s&oacute;ng: СО2, O2, chất g&acirc;y m&ecirc;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>12 th&aacute;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để đặt mua sản phẩm&nbsp;<strong>Monitor theo d&otilde;i bệnh nh&acirc;n MPR6-03 Treaton</strong>&nbsp;qu&yacute; kh&aacute;ch h&agrave;ng li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;để được tư vấn v&agrave; hỗ trợ nhanh nhất.</p>\r\n\r\n<p>Ngo&agrave;i ra, monitor ch&uacute;ng t&ocirc;i c&ograve;n cung cấp nhiều d&ograve;ng sản phẩm kh&aacute;c nhau trong bệnh viện như: M&aacute;y thở, m&aacute;y g&acirc;y m&ecirc;, đo điện tim, m&aacute;y đo điện n&atilde;o, b&agrave;n mổ, đ&egrave;n mổ... của nhiều thương hiệu lớn tr&ecirc;n thế giới v&agrave; gi&aacute; th&agrave;nh phải chăng nhất. H&atilde;y thường xuy&ecirc;n truy cập v&agrave;o website:&nbsp;<strong><a href=\"https://tmhitech.vn/\" target=\"_blank\">tmhitech.vn&nbsp;</a></strong>để nắm r&otilde; hơn cho m&igrave;nh bạn nh&eacute;!</p>', 1, 58, 4, '2021-02-13 14:31:43', '2021-02-13 14:31:43', NULL, '/storage/photos/product/1/TrKnJtyR1pVo7eayDVF2.jpg', 25000000, 100),
(41, 'HỆ THỐNG MONITOR TRUNG TÂM OMNI (MỸ)', 'he-thong-monitor-trung-tam-omni-my', 'OMNI', 'Mỹ', '<ul>\r\n	<li>Thiết kế hiện đại, c&oacute; c&agrave;i đặt nhiều cấu h&igrave;nh sẵn</li>\r\n	<li>Một giải ph&aacute;p ho&agrave;n chỉnh cho tất cả c&aacute;c c&agrave;i đặt theo d&otilde;i bệnh nh&acirc;n</li>\r\n	<li>Pin m&aacute;y c&oacute; tuổi thọ cao</li>\r\n	<li>Thời gian quản l&yacute; l&ecirc;n đến 72 giờ đồng hồ</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng hiển thị sắc n&eacute;t c&aacute;c th&ocirc;ng số gi&uacute;p b&aacute;c sĩ dễ d&agrave;ng theo d&otilde;i</li>\r\n	<li>Th&iacute;ch hợp sử dụng cho mọi đối tượng, đặc biệt l&agrave; trẻ sơ sinh, trẻ em, người gi&agrave;</li>\r\n	<li>M&agrave;n h&igrave;nh ch&iacute;nh c&oacute; khả năng kết nối với 32 m&agrave;n h&igrave;nh monitor bệnh nh&acirc;n kh&aacute;c nhau</li>\r\n	<li>Mới 100%, đạt ti&ecirc;u chuẩn FDA, CE, DIN EN ISO 13485 :2003</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<h2><strong>Đặc điểm của hệ thống Monitor trung t&acirc;m Omni</strong></h2>\r\n\r\n<p><strong>Hệ thống Monitor trung t&acirc;m Omni bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Omni III: M&agrave;n h&igrave;nh 15 inch</li>\r\n	<li>Omni II: M&agrave;n h&igrave;nh 12.1 inch</li>\r\n	<li>Omni K: M&agrave;n h&igrave;nh 10.5 inch</li>\r\n	<li>Omni: 10.1 inch</li>\r\n	<li>Omni Express: M&agrave;n h&igrave;nh 7 inch</li>\r\n</ul>\r\n\r\n<p><strong>Một số đặc điểm cơ bản của sản phẩm</strong></p>\r\n\r\n<p><strong>Hệ thống Monitor trung t&acirc;m&nbsp;OMNI&nbsp;</strong>được thiết kế cho m&ocirc;i trường l&agrave;m việc nhịp độ nhanh, giao diện đơn giản v&agrave; dễ sử dụng. M&agrave;n h&igrave;nh cảm ứng với độ ph&acirc;n giải cao tối ưu h&oacute;a tốc độ của việc chăm s&oacute;c bệnh nh&acirc;n. Do đ&oacute;, người sử dụng c&oacute; thể điều chỉnh nhanh m&agrave;n h&igrave;nh, thiết lập c&agrave;i đặt mặc định, giới hạn cảnh b&aacute;o, quản l&yacute; l&ecirc;n đến 72 giờ dữ liệu bệnh nh&acirc;n chi tiết. Th&ocirc;ng tin bệnh nh&acirc;n c&ugrave;ng với c&aacute;c thiết lập dấu hiệu quan trọng được nhanh ch&oacute;ng điều chỉnh để đ&aacute;p ứng c&aacute;c y&ecirc;u cầu thay đổi t&igrave;nh trạng của bệnh nh&acirc;n.</p>\r\n\r\n<p><img alt=\"Hệ thống monitor trung tâm Omni được các bệnh viện lớn sử dụng nhiều\" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-monitor-trung-tam-omni-cao-cap.jpg\" style=\"width:314.5px\" /></p>\r\n\r\n<p><em>Hệ thống monitor trung t&acirc;m Omni được c&aacute;c bệnh viện lớn sử dụng nhiều</em></p>\r\n\r\n<p>- D&ograve;ng m&aacute;y Monitor OMNI được thiết kế để ph&ugrave; hợp v&agrave; di chuyển dễ d&agrave;ng giữa c&aacute;c khu vực chăm s&oacute;c nhiều bệnh nh&acirc;n. D&ograve;ng m&aacute;y OMNI theo d&otilde;i c&aacute;c th&ocirc;ng số ti&ecirc;u chuẩn: Huyết &aacute;p kh&ocirc;ng x&acirc;m lấn (NIBP), ECG với ph&aacute;t hiện loạn nhịp tim, SpO2, Nhiệt độ v&agrave; Nhịp thở. Lựa chọn th&ecirc;m: EtCO2, Kh&iacute; g&acirc;y m&ecirc; v&agrave; Huyết &aacute;p x&acirc;m nhập (IBP) c&oacute; thể th&ecirc;m v&agrave;o chỉ đơn giản bằng c&aacute;ch gắn giắc cắm trong c&aacute;c modun.</p>\r\n\r\n<p>Khả năng n&acirc;ng cấp n&agrave;y cho ph&eacute;p người d&ugrave;ng t&ugrave;y chỉnh mức độ sắc n&eacute;t của m&agrave;n h&igrave;nh trong khi thay đổi t&igrave;nh trạng của bệnh nh&acirc;n. Nếu muốn, người d&ugrave;ng c&oacute; thể di chuyển từ một m&agrave;n h&igrave;nh cơ bản với c&aacute;c dạng s&oacute;ng (dấu hiệu sống) quan trọng sang kiểu m&agrave;n h&igrave;nh theo d&otilde;i li&ecirc;n tục cạnh giường bệnh hoặc sang kiểu m&agrave;n h&igrave;nh g&acirc;y m&ecirc; tr&ecirc;n một monitor duy nhất ở tất cả c&aacute;c lần.</p>\r\n\r\n<p>-&nbsp;<strong>Khả năng kết nối</strong>: OMNI cung cấp một số giải ph&aacute;p li&ecirc;n kết mạng nhiều monitor v&agrave;/ hoặc quản l&yacute; dữ liệu bệnh nh&acirc;n tr&ecirc;n một EMR hoặc mạng của bệnh viện. Monitor theo d&otilde;i bệnh nh&acirc;n OMNI kết nối Ethernet v&agrave; RS-232 với một giao thức truyền th&ocirc;ng m&atilde; nguồn mở. Infinium cung cấp 2 cấp độkết nốimạng v&agrave; kết nối. Infinium DataManager&reg; l&agrave; một giải ph&aacute;p phần mềm được thiết kế cho c&aacute;c trung t&acirc;m phẫu thuật v&agrave; ph&ograve;ng phẫu thuật nhỏ.</p>\r\n\r\n<p>Phần mềm ứng dụng DataManager &reg;cho ph&eacute;p lưu trữ th&ocirc;ng tin bệnh nh&acirc;n v&agrave; c&aacute;c dấu hiệu sống quan trọng kh&aacute;c v&agrave;o một m&aacute;y t&iacute;nh chuy&ecirc;n dụng. Đối với c&aacute;c cơ sở y tế lớn, c&aacute;c trạm trung t&acirc;mOmniview&reg; cho ph&eacute;p đo lường thời gian thực v&agrave; mạng lưới l&ecirc;n đến 32 monitor theo d&otilde;i bệnh nh&acirc;n OMNI.</p>\r\n\r\n<p>Omniview&reg; lưu trữ đầy đủ c&aacute;c dấu hiệu sống quan trọng của bệnh nh&acirc;n. C&aacute;c dữ liệu của bệnh nh&acirc;n c&oacute; thể được gửi đến một EMR như l&agrave; sự bổ sung hồ sơ của bệnh nh&acirc;n hoặc được t&iacute;ch hợp v&agrave;o mạng lưới bệnh viện.</p>\r\n\r\n<p>-&nbsp;<strong>Khả năng n&acirc;ng cấp</strong>: Tất cả c&aacute;c d&ograve;ng OMNI được cấu h&igrave;nh sẵn với huyết &aacute;p kh&ocirc;ng x&acirc;m lấn (NIBP), ECG với ph&aacute;t hiện loạn nhịp tim, nhịp thở, SpO2 v&agrave; nhiệt độ. EtCO2, kh&iacute; g&acirc;y m&ecirc;, huyết &aacute;p x&acirc;m lấn (IBP), pin tuổi thọ cao, m&aacute;y in nhiệt đều l&agrave; c&aacute;c t&ugrave;y chọn c&oacute; thể đặt th&ecirc;m. C&aacute;c modun c&oacute; thể d&ugrave;ng tr&ecirc;n c&aacute;c m&agrave;n h&igrave;nh k&iacute;ch thước kh&aacute;c nhau, tiết kiệm chi ph&iacute; cho việc lắp đặt c&aacute;c m&agrave;n h&igrave;nh lớn.</p>\r\n\r\n<p><strong>C&aacute;ch kết nối của hệ thống Monitor trung t&acirc;m Omni (Mỹ)</strong></p>\r\n\r\n<p><strong><img alt=\"Cách kết nối của hệ thống monitor trung tâm Omni (Mỹ)\" src=\"https://tmhitech.vn/Uploads/images/products/he-thong-monitor-trung-tam-Omni-2.jpg\" style=\"width:314.5px\" /></strong></p>\r\n\r\n<p><em>C&aacute;ch kết nối của hệ thống monitor trung t&acirc;m Omni (Mỹ)</em></p>\r\n\r\n<p>Trạm trung t&acirc;m Omniview &trade; cho ph&eacute;p đo lường kh&ocirc;ng d&acirc;y hoặc c&oacute; d&acirc;y cứng cho một mạng c&oacute; tới 32 m&agrave;n h&igrave;nh bệnh nh&acirc;n Omni kh&aacute;c nhau. C&aacute;c Omniview &trade; c&oacute; chức năng lưu trữ to&agrave;n bộ th&ocirc;ng tin của bệnh nh&acirc;n v&agrave; c&aacute;c xu hướng dấu hiệu quan trọng. Trong thời gian thực, Omniview &trade; hiển thị số của bệnh nh&acirc;n</p>\r\n\r\n<p>C&aacute;c dấu hiệu quan trọng c&ugrave;ng với dạng s&oacute;ng. Dữ liệu bệnh nh&acirc;n từ Omniview &trade; c&oacute; thể chuyển sang EMR dưới dạng bổ sung cho tệp của bệnh nh&acirc;n hoặc t&iacute;ch hợp v&agrave;o hệ thống th&ocirc;ng tin bệnh viện.</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177&nbsp;</strong>để c&oacute; thể đặt mua v&agrave; t&igrave;m hiểu kĩ hơn về d&ograve;ng sản phẩm&nbsp;<a href=\"https://tmhitech.vn/he-thong-monitor-trung-tam-omni\" target=\"_blank\"><strong>hệ thống monitor trung t&acirc;m Omni</strong></a>&nbsp;(Mỹ)</p>\r\n\r\n<p><strong>C&ocirc;ng ty Cổ phần Thiết Bị C&ocirc;ng nghệ Cao TM</strong></p>\r\n\r\n<p><strong>Địa chỉ: 42 Phương Mai, Đống Đa, H&agrave; Nội</strong></p>\r\n\r\n<p><strong>Hotline:&nbsp;098 969 7177</strong></p>\r\n\r\n<p><strong>Email:&nbsp;info@tmhitech.com.vn</strong></p>\r\n\r\n<p>&nbsp;</p>', 1, 58, 11, '2021-02-13 14:33:54', '2021-03-01 02:38:25', NULL, '/storage/photos/product/1/nsldxyC5rdDPJzpk8Mst.jpg', 23000000, 0),
(42, 'MONITOR THEO DÕI BỆNH NHÂN OMNI II', 'monitor-theo-doi-benh-nhan-omni-ii', 'Omni II', 'Mỹ', '<ul>\r\n	<li>M&agrave;n h&igrave;nh m&agrave;u dạng chạm (Touch-screen) TFT 12.1&rdquo;</li>\r\n	<li>Theo d&otilde;i nhiều đạo tr&igrave;nh ECG</li>\r\n	<li>Thao t&aacute;c với chế độ chạm m&agrave;n h&igrave;nh.</li>\r\n	<li>C&oacute; trang bị sẵn Pin sạc</li>\r\n	<li>Hiển thị gi&aacute; trị đo NIBP</li>\r\n	<li>Trang bị sẳn m&aacute;y in nhiệt</li>\r\n	<li>Đạt ti&ecirc;u chuẩn ISO 13485, EC Certificate</li>\r\n</ul>', '<h2><strong>Đặc điểm nổi bật của&nbsp;Monitor theo d&otilde;i bệnh nh&acirc;n Omni II</strong></h2>\r\n\r\n<p><a href=\"https://tmhitech.vn/monitor-theo-doi-benh-nhan-infinium-omni-ii\" target=\"_blank\"><strong>Monitor&nbsp;theo d&otilde;i bệnh nh&acirc;n&nbsp;Omni II&nbsp;</strong></a>&trade; cung cấp một giao diện người d&ugrave;ng cực kỳ đơn giản v&agrave; tiện dụng. Omni II cung cấp m&agrave;n h&igrave;nh cảm ứng 12,1 inch c&oacute; độ ph&acirc;n giải cao để tối ưu h&oacute;a việc chăm s&oacute;c bệnh nh&acirc;n. Do đ&oacute;, người d&ugrave;ng c&oacute; thể thực hiện điều chỉnh c&agrave;i đặt tr&ecirc;n m&agrave;n h&igrave;nh nhanh ch&oacute;ng, giới hạn cảnh b&aacute;o v&agrave; quản l&yacute; dữ liệu bệnh nh&acirc;n chi tiết tối đa 72 giờ.</p>\r\n\r\n<p>Omni II được thiết kế để ph&ugrave; hợp v&agrave; di chuyển giữa nhiều khu vực chăm s&oacute;c bệnh nh&acirc;n dễ d&agrave;ng v&agrave; v&ocirc; c&ugrave;ng linh hoạt. Omni II &trade; cung cấp c&aacute;c ph&eacute;p đo ti&ecirc;u chuẩn về: huyết &aacute;p kh&ocirc;ng x&acirc;m lấn, ECG với ph&aacute;t hiện loạn nhịp tim, SpO2 , Nhiệt độ v&agrave; Tỷ lệ h&ocirc; hấp,ETCO2 , đo chất g&acirc;y m&ecirc;, đầu ra tim v&agrave; huyết &aacute;p x&acirc;m lấn c&oacute; thể được th&ecirc;m v&agrave;o bằng c&aacute;ch gắn c&aacute;c m&ocirc;-đun ( t&ugrave;y chọn ).&nbsp;</p>\r\n\r\n<p>Omni II &trade; c&oacute; thể kết nối mạng nhiều m&agrave;n h&igrave;nh với nhau hoặc quản l&yacute; dữ liệu bệnh nh&acirc;n tr&ecirc;n nền tảng hồ sơ y tế điện tử hoặc hệ thống th&ocirc;ng tin bệnh viện dựa tr&ecirc;n HL7 . M&aacute;y theo d&otilde;i bệnh nh&acirc;n Omni II cung cấp kết nối Ethernet v&agrave; RS-232 với giao thức truyền th&ocirc;ng m&atilde; nguồn mở. Infinium cung cấp 2 cấp độ mạng v&agrave; kết nối. . Giao thức mạng HL7 sẽ cho ph&eacute;p tất cả th&ocirc;ng tin bệnh nh&acirc;n v&agrave; c&aacute;c xu hướng dấu hiệu quan trọng được chuyển giao v&agrave; lưu trữ tr&ecirc;n hệ thống th&ocirc;ng tin bệnh viện.&nbsp;</p>\r\n\r\n<p><img alt=\"Monitor theo dõi bệnh nhân Infinium Omni II có giao diện đơn giản, dễ thực hiện\" src=\"https://tmhitech.vn/Uploads/images/products/monitor-theo-doi-benh-nhan-Infinium-omni-ii-2.jpg\" style=\"width:314.5px\" /></p>\r\n\r\n<p><em>Monitor theo d&otilde;i bệnh nh&acirc;n&nbsp;Omni II c&oacute; giao diện đơn giản, dễ thực hiện</em></p>\r\n\r\n<h2><strong>C&aacute;c t&iacute;nh năng kỹ thuật của sản phẩm</strong></h2>\r\n\r\n<p>- M&agrave;n h&igrave;nh m&agrave;u dạng chạm (Touch-screen) TFT 12.1&rdquo;</p>\r\n\r\n<p>- Theo d&otilde;i nhiều đạo tr&igrave;nh ECG</p>\r\n\r\n<p>- Thao t&aacute;c với chế độ chạm m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>- C&oacute; trang bị sẵn Pin sạc</p>\r\n\r\n<p>- Hiển thị gi&aacute; trị đo NIBP</p>\r\n\r\n<p>- Trang bị sẳn m&aacute;y in nhiệt</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh rộng, c&oacute; thể hiển thị c&ugrave;ng l&uacute;c 4, 6 hay 8 dạng s&oacute;ng ghi.</p>\r\n\r\n<p>- C&oacute; thể sử dụng như một m&aacute;y con trong hệ thống theo d&otilde;i trung t&acirc;m\\</p>\r\n\r\n<p>- Thiết kế chắc chắn, tiện dụng trong việc theo d&otilde;i bệnh nh&acirc;n dạng di động</p>\r\n\r\n<p>- C&oacute; thể c&agrave;i đặt nhiều ng&ocirc;n ngữ hiển thị.</p>\r\n\r\n<p>- Bộ nhớ lưu dữ liệu ghi ph&acirc;n t&iacute;ch ti&ecirc;n lượng trong khoảng 48 giờ.</p>\r\n\r\n<p>- C&aacute;c chức năng theo d&otilde;i ch&iacute;nh: Nhịp tim (ECG), Nhịp thở (RESP), Huyết &aacute;p (NIBP), SpO2, Nhiệt độ (Temp) v&agrave; Printer (2 k&ecirc;nh)</p>\r\n\r\n<p>- C&aacute;c chức năng chọn th&ecirc;m (Option): Huyết &aacute;p x&acirc;m lấn đ&ocirc;i Dual IBP v&agrave; EtCO2</p>\r\n\r\n<p>Để đặt mua&nbsp;<strong>Monitor theo d&otilde;i bệnh nh&acirc;n&nbsp;Omni II</strong>&nbsp;qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y li&ecirc;n hệ ngay với C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM theo số hotline<strong>: 098 969 7177</strong>&nbsp;để được tư vấn v&agrave; hỗ trợ về sản phẩm một c&aacute;ch nhanh ch&oacute;ng nhất.&nbsp;</p>', 1, 59, 8, '2021-02-13 14:36:06', '2021-02-13 15:03:08', NULL, '/storage/photos/product/1/AZIo1X2gVqDesgZkN2gR.jpg', 22000000, 100),
(43, 'MÁY THEO DÕI ĐỘ SÂU CỦA GÂY MÊ MGA-06 TREATON (EU)', 'may-theo-doi-do-sau-cua-gay-me-mga-06-treaton-eu', 'MGA-06', 'EU- NGA', '<ul>\r\n	<li>Cho biết mức độ g&acirc;y m&ecirc; v&agrave; mức độ an thần của bệnh nh&acirc;n.</li>\r\n	<li>Độ s&acirc;u đ&aacute;nh gi&aacute; g&acirc;y m&ecirc; dựa tr&ecirc;n ph&acirc;n t&iacute;ch EEG.</li>\r\n	<li>Hoạt động với thuốc g&acirc;y m&ecirc; h&ocirc; hấp v&agrave; tĩnh mạch</li>\r\n	<li>Giảm ti&ecirc;u thụ thuốc m&ecirc;</li>\r\n	<li>Hạn chế thời gian thức tỉnh do g&acirc;y m&ecirc;;</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng m&agrave;u TFT 4.3 &rdquo;</li>\r\n	<li>Sử dụng cho mọi đối tượng bệnh nh&acirc;n v&agrave; trẻ em từ 10 tuổi trở l&ecirc;n</li>\r\n	<li>Tiến tr&igrave;nh hoạt động 24 giờ</li>\r\n	<li>Bảo h&agrave;nh 24&nbsp;th&aacute;ng</li>\r\n</ul>', '<h2><strong>Đặc điểm cơ bản của m&aacute;y theo d&otilde;i độ s&acirc;u của g&acirc;y m&ecirc; MGA-06 Treaton (EU)</strong></h2>\r\n\r\n<p><a href=\"https://tmhitech.vn/may-theo-doi-do-sau-cua-gay-me-mga-06-treaton\" target=\"_blank\">M&aacute;y theo d&otilde;i độ s&acirc;u của g&acirc;y m&ecirc; MGA-06 Treaton (EU)&nbsp;</a>được rất nhiều bệnh viện lớn ở ch&acirc;u &Acirc;u, ch&acirc;u &Aacute;, ch&acirc;u Mỹ tin tưởng sử dụng bởi sản phẩm c&oacute; nhiều ưu điểm nổi bật như sau:</p>\r\n\r\n<p>- Bệnh nh&acirc;n: Người lớn, trẻ em (tr&ecirc;n 10 tuổi)</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh: M&agrave;n h&igrave;nh cảm ứng m&agrave;u TFT 4.3 &rdquo;</p>\r\n\r\n<p>- Nguồn: 100-240V, 50Hz</p>\r\n\r\n<p>- Pin: 2 h hoạt động</p>\r\n\r\n<p>- Tiến tr&igrave;nh: 24 h</p>\r\n\r\n<p>- B&aacute;o động: AI cao v&agrave; thấp</p>\r\n\r\n<p><img alt=\"Máy theo dõi độ sâu của gây mê MGA-06 Treaton cho biết các chỉ số gây mê chính xác\" src=\"https://tmhitech.vn/Uploads/images/products/may-theo-doi-do-sau-cua-gay-me-mga-06-treaton-6.png\" /></p>\r\n\r\n<p><em>M&aacute;y theo d&otilde;i độ s&acirc;u của g&acirc;y m&ecirc; MGA-06 Treaton cho biết c&aacute;c chỉ số g&acirc;y m&ecirc; ch&iacute;nh x&aacute;c</em></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Th&ocirc;ng số</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Mi&ecirc;u tả</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>AI Chỉ số hoạt động của n&atilde;o</p>\r\n			</td>\r\n			<td>\r\n			<p>Cho biết mức độ g&acirc;y m&ecirc; v&agrave; mức độ an thần của bệnh nh&acirc;n.<br />\r\n			Độ s&acirc;u đ&aacute;nh gi&aacute; g&acirc;y m&ecirc; dựa tr&ecirc;n ph&acirc;n t&iacute;ch EEG.<br />\r\n			Thuật to&aacute;n ph&acirc;n t&iacute;ch EEG giữ th&ocirc;ng tin về c&aacute;c dấu hiệu điển h&igrave;nh của ức chế EEG.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>SR Tỷ lệ ức chế t&iacute;n hiệu E</p>\r\n			</td>\r\n			<td>\r\n			<p>Phản &aacute;nh sự ức chế của hoạt động EEG v&agrave; x&aacute;c định mức độ s&acirc;u của g&acirc;y m&ecirc;.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>SQI Chỉ số chất lượng t&iacute;n hiệu EEG</p>\r\n			</td>\r\n			<td>\r\n			<p>Cho biết ảnh hưởng của trở kh&aacute;ng điện cực c&aacute;p, giả tạo, nhiễu tần số cao, nhiễu nguồn điện.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>EMG Mức th&agrave;nh phần điện cơ</p>\r\n			</td>\r\n			<td>\r\n			<p>Hoạt động điện của cơ mặt.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n<img alt=\"Giao diện sử dụng máy theo dõi độ sâu của gây mê MGA-06 Treaton\" src=\"https://tmhitech.vn/Uploads/images/products/may-theo-doi-do-sau-cua-gay-me-mga-06-treaton-5.jpg\" /></p>\r\n\r\n<p><em>Giao diện sử dụng m&aacute;y theo d&otilde;i độ s&acirc;u của g&acirc;y m&ecirc; MGA-06 Treaton</em></p>\r\n\r\n<p>- Hoạt động với thuốc g&acirc;y m&ecirc; h&ocirc; hấp v&agrave; tĩnh mạch;</p>\r\n\r\n<p>-&nbsp;Gi&aacute; rẻ v&agrave; c&oacute; sẵn tr&ecirc;n to&agrave;n thế giới: 3 điện cực ECG ti&ecirc;u chuẩn cho 1 bệnh nh&acirc;n, MGA-06 tương th&iacute;ch với điện cực Covidien, 3M v&agrave; FIAB ECG;</p>\r\n\r\n<p>- Nhẹ v&agrave; di động;</p>\r\n\r\n<p>-&nbsp;Sử dụng MGA-06 cho ph&eacute;p:</p>\r\n\r\n<p>+ Giảm ti&ecirc;u thụ thuốc m&ecirc;;</p>\r\n\r\n<p>+ Hạn chế thời gian thức tỉnh do g&acirc;y m&ecirc;;</p>\r\n\r\n<p>+ Ổn định duy tr&igrave; độ s&acirc;u cần thiết của thuốc an thần;</p>\r\n\r\n<p>+ Chủ yếu loại bỏ nguy cơ nhận thức khi g&acirc;y m&ecirc;.</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo địa chỉ sau nếu bạn c&oacute; nhu cầu t&igrave;m hiểu v&agrave; đặt mua d&ograve;ng sản phẩm&nbsp;<strong>m&aacute;y theo d&otilde;i độ s&acirc;u của g&acirc;y m&ecirc; MGA-06 Treaton (Eu).&nbsp;</strong></p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN THIẾT BỊ C&Ocirc;NG NGHỆ CAO TM</strong></p>\r\n\r\n<p>Địa chỉ: 42 Phương Mai, Đống Đa, H&agrave; Nội</p>\r\n\r\n<p>Hotline:&nbsp;<strong>098 969 7177</strong></p>\r\n\r\n<p>Email:&nbsp;info@tmhitech.com.vn</p>\r\n\r\n<p>Website: tmhitech.vn</p>', 1, 59, 4, '2021-02-13 14:47:06', '2021-02-13 15:02:56', NULL, '/storage/photos/product/1/CMlOZ1KSSiJEsuI9TeVC.jpg', 27000000, 100),
(44, 'MÁY KHỬ RUNG TIM REANIBEX 800', 'may-khu-rung-tim-reanibex-800', 'Reanibex 800', 'TÂY BAN NHA', NULL, NULL, 1, 60, 4, '2021-02-13 14:52:58', '2021-03-01 02:38:25', NULL, '/storage/photos/product/1/87zqbH4EKsZtBLYEgxFX.jpg', 19000000, 99),
(45, 'MÁY KHỬ RUNG TIM REANIBEX 700', 'may-khu-rung-tim-reanibex-700', 'Reanibex 700', 'TÂY BAN NHA', NULL, NULL, 1, 42, 4, '2021-02-13 14:55:14', '2021-02-13 14:55:14', NULL, '/storage/photos/product/1/2OyUrVcQtDzdFguluand.jpg', 21000000, 100),
(46, 'MÁY KHỬ RUNG TIM REANIBEX 500', 'may-khu-rung-tim-reanibex-500', 'Reanibex 500', 'TÂY BAN NHA', NULL, NULL, 1, 60, 4, '2021-02-13 14:57:41', '2021-02-13 14:59:03', NULL, '/storage/photos/product/1/lTd2TE8SdyLZcjHpF91G.jpg', 14000000, 100),
(47, 'MÁY KHỬ RUNG TIM RESCUE 230 PROGETTI Ý', 'may-khu-rung-tim-rescue-230-progetti-y', 'RESCUE 230', 'Ý', '<ul>\r\n	<li>C&oacute; chế độ đ&aacute;nh sốc bằng tay hoặc b&aacute;n tự động</li>\r\n	<li>M&agrave;n h&igrave;nh hiển thị &nbsp;LCD độ ph&acirc;n giải cao TFT &nbsp;5.7 &ldquo;</li>\r\n	<li>Tự động in trước v&agrave; sau khi sốc</li>\r\n	<li>Cảm biến SPO2 tương th&iacute;ch với chuẩn BCI</li>\r\n	<li>C&agrave;i đạt được b&aacute;o động nhịp tim v&agrave; Spo2</li>\r\n	<li>Băng th&ocirc;ng: 0.5 đến 140 Hz (-3dB) khi tắt c&aacute;c bộ lọc</li>\r\n	<li>Bộ lộc: 50Hz/60Hz, lọc đường nền, lọc th&ocirc;ng thấp</li>\r\n	<li>Đạt ti&ecirc;u chuẩn: EN ISO 13485:2004, CE, h&agrave;ng mới 100%</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<h2><strong>Đặc điểm nổi bật của m&aacute;y khử rung tim RESCUE 230 PROGETTI &Yacute;</strong></h2>\r\n\r\n<p>- Đ&aacute;nh sốc bằng tay v&agrave; b&aacute;n tự động AED (chọn th&ecirc;m)</p>\r\n\r\n<p>- Loại đ&aacute;nh sốc lưỡng pha BTE</p>\r\n\r\n<p>- Ph&aacute;t năng lượng b&ugrave; trừ trở kh&aacute;ng</p>\r\n\r\n<p>- Mức năng lượng c&oacute; khả năng được chọn: 2 đến 230 J từ bảng điều khiển ph&iacute;a trước</p>\r\n\r\n<p>- C&oacute; chế độ đ&aacute;nh đồng bộ theo s&oacute;ng &lsquo;R&rsquo; của điện tim hoặc kh&ocirc;ng đồng bộ</p>\r\n\r\n<p>- Cảm biến SPO2 tương th&iacute;ch với chuẩn BCI</p>\r\n\r\n<p>- C&agrave;i đạt được b&aacute;o động nhịp tim v&agrave; Spo2</p>\r\n\r\n<p>- Tự động in trước v&agrave; sau khi sốc</p>\r\n\r\n<p>- Chế độ sốc b&aacute;n tự động (AED) theo ti&ecirc;u chuẩn của AAMI DF 39 (chọn th&ecirc;m)</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh hiển thị &nbsp;LCD độ ph&acirc;n giải cao TFT &nbsp;5.7 &ldquo;</p>\r\n\r\n<p><img alt=\"Máy khử rung tim Rescue 230 Progetti Ý\" src=\"https://tmhitech.vn/Uploads/images/products/may-khu-rung-tim-rescue-230-progetti-y-2.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y khử rung tim Rescue 230 Progetti &Yacute;</em></p>\r\n\r\n<p><strong>T&iacute;nh năng kỹ thuật của m&aacute;y</strong></p>\r\n\r\n<p>- Loại đ&aacute;nh sốc lưỡng pha BTE</p>\r\n\r\n<p>- Chế độ sốc b&aacute;n tự động (AED) theo ti&ecirc;u chuẩn của AAMI DF 39</p>\r\n\r\n<p>- Những chỉ dẫn bằng chữ tr&ecirc;n m&agrave;n h&igrave;nh hướng dẫn người vận h&agrave;nh thực hiện c&aacute;c quy tr&igrave;nh cấp cứu</p>\r\n\r\n<p>- Năng lượng từ 2 đến 230 J được chọn trực tiếp từ bảng điều khiển ph&iacute;a trước (từ 2-10J, mỗi bước 1J; từ 10-230J, mỗi bước 5J)</p>\r\n\r\n<p>- Thời gian nạp năng lượng cho điện cực: 5 gi&acirc;y cho 230 J (Pin đ&atilde; được sạc đầy)</p>\r\n\r\n<p>- Đ&aacute;nh sốc được 100 lần với mức năng lượng &nbsp;230 J (Pin đ&atilde; được sạc đầy)</p>\r\n\r\n<p>- Điều khiển nạp năng lượng v&agrave; đ&aacute;nh sốc được &nbsp;được thực hiện tr&ecirc;n 2 tay sốc (điện cực)</p>\r\n\r\n<p>- 2 Chế độ sốc: đồng bộ theo s&oacute;ng &ldquo;R&rdquo; của điện tim v&agrave; kh&ocirc;ng đồng bộ</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh hiển thị</strong></p>\r\n\r\n<p>- M&agrave;n h&igrave;nh hiển thị LCD 5.7&rdquo; rộng độ ph&acirc;n giải cao (320x240 pixels)</p>\r\n\r\n<p>- Đo ECG th&ocirc;ng qua 2 tay đ&aacute;nh sốc ( 1 chuyển đạo) hoặc bộ điện cực 4 d&acirc;y ( 6 chuyển đạo): I, II, III, aVR,aVL,aVF, dạng s&oacute;ng SPO2 v&agrave; gi&aacute; trị đo</p>\r\n\r\n<p>- Tự động chuyển đổi khi chuyển qua cắm bộ điện cực bệnh nh&acirc;n</p>\r\n\r\n<p>- Bộ lộc: 50Hz/60Hz, lọc đường nền, lọc th&ocirc;ng thấp</p>\r\n\r\n<p>- Đ&egrave;n chỉ thị nhịp tim</p>\r\n\r\n<p><strong>THEO D&Otilde;I ECG</strong></p>\r\n\r\n<p>- Băng th&ocirc;ng: 0.5 đến 140 Hz (-3dB) khi tắt c&aacute;c bộ lọc</p>\r\n\r\n<p>- C&aacute;c th&ocirc;ng số s&oacute;ng điện tim ECG:</p>\r\n\r\n<p>- Tốc độ: 5, 12.5, 25 mm/gi&acirc;y</p>\r\n\r\n<p>- Độ lợi: 5, 10, 20 mm/mV</p>\r\n\r\n<p>- Nhịp tim hiển thị tr&ecirc;n m&agrave;n h&igrave;nh từ 20 đến 300 nhịp/ph&uacute;t (&plusmn;2%)</p>\r\n\r\n<p>- B&aacute;o động: &nbsp;nhịp tim c&oacute; thể c&agrave;i đặt tối đa 250 nhịp/ph&uacute;t,tối thiểu 20 nhịp/ph&uacute;t</p>\r\n\r\n<p><strong>BỘ PHẬN IN</strong></p>\r\n\r\n<p>- M&aacute;y in nhiệt được t&iacute;ch hợp b&ecirc;n trong d&ugrave;ng cho in ECG v&agrave; c&aacute;c sự kiện bao gồm SPO2 (%)</p>\r\n\r\n<p>- Tốc độ in: 5, 10, 25 mm/gi&acirc;y</p>\r\n\r\n<p>- Khổ giấy: rộng 58 mm</p>\r\n\r\n<p>- Chế độ hoạt động: bằng tay, tự động(10 gi&acirc;y trước v&agrave; sau khi sốc)</p>\r\n\r\n<p><strong>CHẾ ĐỘ AED (chọn th&ecirc;m)</strong></p>\r\n\r\n<p>- Năng lượng: &nbsp;cố định 150 J</p>\r\n\r\n<p>- Quy thức: &nbsp;AHA 2005 CPR</p>\r\n\r\n<p>- Thời gian ph&acirc;n t&iacute;ch: tối đa 12 gi&acirc;y</p>\r\n\r\n<p>- Rung tim: VT (nhanh thất v&ocirc; mạch): bi&ecirc;n độ &gt;100uV</p>\r\n\r\n<p>- VF (rung thất): nhịp &gt;150</p>\r\n\r\n<p><strong>ĐO NỒNG ĐỘ OXY TRONG M&Aacute;U (SPO2)(chọn th&ecirc;m)</strong></p>\r\n\r\n<p>- Tầm đo SPO2: 0 đến 100%</p>\r\n\r\n<p>- Tầm đo nhịp mạch: 18 đến 300 nhịp/ph&uacute;t</p>\r\n\r\n<p>- Sai số SPO2: 70 &ndash; 100% &plusmn; 2% &nbsp;đối với người lớn sử dụng cảm biến kẹp ng&oacute;n tay</p>\r\n\r\n<p>- B&aacute;o động SPO2 : tối thiểu 65%</p>\r\n\r\n<p><strong>M&Aacute;Y TẠO NHỊP TIM KH&Ocirc;NG X&Acirc;M LẤN (mua th&ecirc;m)</strong></p>\r\n\r\n<p>- Dạng s&oacute;ng :tam gi&aacute;c</p>\r\n\r\n<p>- Thời gian xung: 22 ms</p>\r\n\r\n<p>- D&ograve;ng xung: Max 150 mA</p>\r\n\r\n<p>- Điện thế xung: 150 V</p>\r\n\r\n<p>- Chế độ hoạt động: Cố định , hoặc c&agrave;i đặt theo y&ecirc;u cầu.</p>\r\n\r\n<p><strong>NGUỒN CUNG CẤP</strong></p>\r\n\r\n<p>- Pin Ni &ndash; Cd dung lượng cao với thời gian sạc nhanh</p>\r\n\r\n<p>- Thời gian sạc (95%): 2 giờ</p>\r\n\r\n<p>- Adater sạc pin: 100 -230 V&plusmn;10%, 50/60Hz</p>\r\n\r\n<p><strong>ĐIỀU KIỆN HOẠT ĐỘNG</strong></p>\r\n\r\n<p>- Nhiệt độ hoạt động: 0 &ndash; 550C</p>\r\n\r\n<p>- Nhiệt độ lưu kho: -20 &ndash; 650C</p>\r\n\r\n<p>- Độ ẩm kh&ocirc;ng kh&iacute; tương đối: 15 - 80%</p>\r\n\r\n<p>- Chống thấm nước: IPX4</p>\r\n\r\n<p><strong>AN TO&Agrave;N</strong></p>\r\n\r\n<p>- Chứng nhận an to&agrave;n 2 tay đ&aacute;nh sốc</p>\r\n\r\n<p>- C&aacute;ch ly điện tim ng&otilde; v&agrave;o CF class</p>\r\n\r\n<p>- Sốc trong sau 30 gi&acirc;y chờ sau khi sạc</p>\r\n\r\n<p>- K&Iacute;CH THƯỚC: 340 X 260 X 130 mm</p>\r\n\r\n<p>TRỌNG LƯỢNG: 5.5 KG &nbsp; &nbsp;</p>\r\n\r\n<p><strong>CẤU H&Igrave;NH GỒM C&Oacute;:</strong></p>\r\n\r\n<p>01 &nbsp; &nbsp; &nbsp;M&aacute;y ch&iacute;nh với m&agrave;n h&igrave;nh 5.7&rdquo; inch v&agrave; &nbsp;bộ phận in<br />\r\n01 &nbsp; &nbsp; &nbsp;C&aacute;p điện tim bệnh nh&acirc;n<br />\r\n01 &nbsp; &nbsp; &nbsp;Pin sạc d&ugrave;ng nhiều lần<br />\r\n01 Cuộn &nbsp; &nbsp; &nbsp;giấy in kết quả<br />\r\n01 &nbsp; &nbsp; &nbsp;D&acirc;y điện nguồn<br />\r\n01 &nbsp; &nbsp; &nbsp;T&agrave;i liệu hướng dẫn sử dụng Tiếng Anh v&agrave; Tiếng Việt</p>\r\n\r\n<p>Xem th&ecirc;m</p>\r\n\r\n<p><em><a href=\"https://tmhitech.vn/may-khu-rung-tim-rescue-sam-progetti-y\" target=\"_blank\">M&aacute;y khử rung tim RESCUE SAM PROGETTI &Yacute;</a></em></p>\r\n\r\n<p><em><a href=\"https://tmhitech.vn/may-khu-rung-tim-rescue-life-progetti-y\" target=\"_blank\">M&aacute;y khử rung tim RESCUE Life PROGETTI &Yacute;</a></em></p>', 1, 60, 18, '2021-02-13 15:11:31', '2021-02-13 15:11:31', NULL, '/storage/photos/product/1/PqTfnyT7zymgr5rvlns3.jpg', 22000000, 100),
(48, 'MÁY ĐO NỒNG ĐỘ OXY TRONG MÁU SP02 MEDISANA', 'may-do-nong-do-oxy-trong-mau-sp02-medisana', 'SP02', 'Đức', '<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ quang học, nhanh, ch&iacute;nh x&aacute;c, kh&ocirc;ng g&acirc;y tổn thương.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhỏ gọn (xấp xỉ: 55g bao gồm cả pin), c&oacute; thể bỏ t&uacute;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời gian sử dụng d&agrave;i: 02 pin AAA.</p>\r\n	</li>\r\n	<li>\r\n	<p>B&aacute;o pin yếu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tự động tắt nguồn sau 12s kh&ocirc;ng sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>M&aacute;y đo nồng độ oxy trong m&aacute;u SP02 dễ d&agrave;ng sử dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế nhỏ gọn, dễ sử dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>C&aacute;c th&ocirc;ng số kỹ thuật hiển thị đầy đủ tr&ecirc;n m&agrave;n h&igrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh 3 năm</p>\r\n	</li>\r\n</ul>', '<h2><strong>M&aacute;y đo nồng độ oxy trong m&aacute;u SPO2 cho kết quả đ&ocirc; độ b&atilde;o h&ograve;a oxy trong m&aacute;u ch&iacute;nh x&aacute;c</strong></h2>\r\n\r\n<p>M&aacute;y đo nồng độ oxy trong m&aacute;u SPO2 l&agrave; thiết bị được d&ugrave;ng để đo độ b&atilde;o ho&agrave; oxy trong m&aacute;u, kết hợp đo nhịp tim th&ocirc;ng qua đầu ng&oacute;n tay; sử dụng c&ocirc;ng nghệ cảm biến quang học để t&iacute;nh độ b&atilde;o ho&agrave; hemoglobin.</p>\r\n\r\n<p><img alt=\"Máy đo nồng độ oxy trong máu SP02 có thiết kế nhỏ gọn\" src=\"https://tmhitech.vn/Uploads/images/products/may-do-oxy-mau-spo2-medisana-5.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y đo nồng độ oxy trong m&aacute;u SP02&nbsp;c&oacute; thiết kế nhỏ gọn</em></p>\r\n\r\n<p>Ứng dụng: Thiết bị được d&ugrave;ng để đo độ b&atilde;o h&ograve;a oxy trong m&aacute;u v&agrave; nhịp tim. Rất th&iacute;ch hợp sử dụng trong c&aacute;c gia đ&igrave;nh, c&aacute;c bệnh viện hay c&aacute;c trung t&acirc;m y học thể thao. Kh&ocirc;ng n&ecirc;n d&ugrave;ng để theo d&otilde;i li&ecirc;n tục cho bệnh nh&acirc;n.</p>\r\n\r\n<p><img alt=\"Máy sử dụng đơn giản, không gây đau\" src=\"https://tmhitech.vn/Uploads/images/products/may-do-oxy-mau-spo2-medisana-6.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y sử dụng đơn giản, kh&ocirc;ng g&acirc;y đau</em></p>\r\n\r\n<p>Sản phẩm m&aacute;y đo nồng độ oxy trong m&aacute;u SP 02 của h&atilde;ng&nbsp;Medisana&nbsp;được kết nối với điện thoại th&ocirc;ng qua Bluetooth Smart (4.0) với hệ điều h&agrave;nh IOS v&agrave; Android, Nếu muốn kết nối được với điện thoại th&igrave; bạn phải tải về phầm mềm VitaDock Online th&ocirc;ng qua Vitadock + App để tải phần mềm về m&aacute;y.</p>\r\n\r\n<p>M&aacute;y đo nồng độ oxy trong m&aacute;u SP02 kết nối với điện thoại</p>\r\n\r\n<p><strong>Ưu điểm sản phẩm m&aacute;y đo nồng độ oxy trong m&aacute;y SPO2</strong></p>\r\n\r\n<p>1. Dễ sử dụng.</p>\r\n\r\n<p>2. C&ocirc;ng nghệ quang học, nhanh, ch&iacute;nh x&aacute;c, kh&ocirc;ng g&acirc;y tổn thương.</p>\r\n\r\n<p>3. Nhỏ gọn (xấp xỉ: 55g bao gồm cả pin), c&oacute; thể bỏ t&uacute;i.</p>\r\n\r\n<p>4. Thời gian sử dụng d&agrave;i: 02 pin AAA.</p>\r\n\r\n<p>5. B&aacute;o pin yếu.</p>\r\n\r\n<p>6. Tự động tắt nguồn sau 12s kh&ocirc;ng sử dụng.</p>\r\n\r\n<p>M&aacute;y đo nồng độ oxy trong m&aacute;u SP02 dễ d&agrave;ng sử dụng</p>\r\n\r\n<h2><strong>SPO2 l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Kh&iacute; oxy rất cần cho sự sống của lo&agrave;i người. Kh&iacute; oxy c&oacute; trong kh&iacute; trời. Khi ch&uacute;ng ta h&iacute;t thở, oxy sẽ v&agrave;o phổi. M&aacute;u m&agrave; th&agrave;nh phần quan trọng nhất của m&aacute;u l&agrave; hemoglobine (Hb) sẽ vận chuyển oxy từ phổi đến c&aacute;c nơi cần thiết trong cơ thể để đảm bảo sự sống. Sự vận chuyển đ&oacute; xảy ra khi Hb kết hợp với oxy th&agrave;nh HbO2 (hemoglobine c&oacute; gắn oxy).Tỷ lệ HbO2/ (HbO2+Hb) gọi l&agrave; độ b&atilde;o h&ograve;a oxy trong m&aacute;u SpO2, n&oacute;i c&aacute;ch kh&aacute;c l&agrave; tỷ lệ phần trăm hemoglobine của m&aacute;u kết hợp với oxy.</p>\r\n\r\n<p>Sự cần thiết khi d&ugrave;ng m&aacute;y đo độ b&atilde;o h&ograve;a oxy trong m&aacute;u M&aacute;y đo độ b&atilde;o h&ograve;a oxy trong m&aacute;u l&agrave; sản phẩm cần thiết đối với một số người kh&ocirc;ng tự thở kh&ocirc;ng kh&iacute; ngo&agrave;i trời m&agrave; cần phải trợ gi&uacute;p bằng b&igrave;nh oxy hay m&aacute;y tạo oxy. Khi nồng độ oxy xuống qu&aacute; thấp hoặc tim c&oacute; vấn đề về nhịp đập th&igrave; đ&acirc;y l&agrave; sản phẩm đo độ b&atilde;o h&ograve;a oxy cho ra kết quả đang được c&aacute;c b&aacute;c sỹ trong c&aacute;c bệnh viện m&agrave; c&aacute;c bệnh nh&acirc;n cần phải c&oacute; để lu&ocirc;n kiểm tra hệ h&ocirc; hấp cũng như sức khỏe của m&igrave;nh.</p>\r\n\r\n<p>Một số bệnh nh&acirc;n cần phải sử dụng m&aacute;y đo oxy trong m&aacute;u như bệnh tai biến đột quỵ, bệnh tắt nghẽn phổi m&atilde;n t&iacute;nh, bệnh rối loạn thượng thận, suy tim, bệnh nh&acirc;n ung thư gian đoạn giữa trở l&ecirc;n, một số trường hợp kh&aacute;c như hẹp ống thanh quản v&agrave; bệnh hen suyễn. Nếu bệnh nh&acirc;n hay người sử dụng c&oacute; vấn đề g&igrave; như mất thăng bằng kh&ocirc;ng tự chủ bản th&acirc;n, c&oacute; cảm gi&aacute;c như ngất, thở dốc, tay ch&acirc;n, đầu, lưng bị đổ mồ h&ocirc;i hột li&ecirc;n tục, tay ch&acirc;n m&ocirc;i t&iacute;m t&aacute;i phải kiểm tra ngay.</p>\r\n\r\n<p>Chỉ số chuẩn mức độ b&atilde;o h&ograve;a oxy trong m&aacute;u Th&ocirc;ng thường, mức độ b&atilde;o h&ograve;a oxy người b&igrave;nh thường l&agrave; 97% &ndash; 99% v&agrave; trung b&igrave;nh l&agrave; 98%, nhưng đối với một số người do h&uacute;t thuốc qu&aacute; nhiều th&igrave; c&oacute; chỉ số độ b&atilde;o h&ograve;a oxy trong m&aacute;u chỉ ở mức 93% &ndash; 95%. Chỉ số b&atilde;o h&ograve;a oxy ở tầm thấp l&agrave; từ 90% &ndash; 92% th&igrave; cần phải c&oacute; m&aacute;y đo nồng độ b&atilde;o h&ograve;a oxy trong m&aacute;u. Nếu ở mức qu&aacute; thấp hơn 90% phải li&ecirc;n hệ trực tiếp với y t&aacute;, b&aacute;c sỹ.</p>', 1, 61, 12, '2021-02-13 15:13:55', '2021-02-13 15:13:55', NULL, '/storage/photos/product/1/rmupToIzBbLZ1XhI5XGp.jpg', 17000000, 100),
(49, 'THIẾT BỊ LÀM ẤM BỆNH NHÂN VỚI MIẾNG GEL RAMONAK-03', 'thiet-bi-lam-am-benh-nhan-voi-mieng-gel-ramonak-03', 'RAMONAK-03', 'Belarus', '<ul>\r\n	<li>L&agrave;m n&oacute;ng trong phạm vi nhiệt độ 34-39 &ordm;C</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c của nhiệt độ duy tr&igrave; trong v&ograve;ng 1 &ordm;C</li>\r\n	<li>Nhiệt độ tăng 0,1 &ordm;C</li>\r\n	<li>Thời gian hoạt động li&ecirc;n tục</li>\r\n	<li>Nệm nước dung t&iacute;ch 5 l</li>\r\n	<li>C&agrave;i đặt thời gian hoạt động tối đa&nbsp;1,5h.</li>\r\n	<li>C&ocirc;ng suất ti&ecirc;u thụ trung b&igrave;nh 140 W</li>\r\n</ul>', NULL, 1, 62, 14, '2021-02-13 15:21:51', '2021-02-13 15:21:51', NULL, '/storage/photos/product/1/m07zUJEDvIFu7TfIY35X.jpg', 30000000, 100),
(50, 'BƠM TRUYỀN DỊCH PG-807I PROGETTI', 'bom-truyen-dich-pg-807i-progetti', 'CardioPart 12 ECG', 'TÂY BAN NHA', '<ul>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng v&agrave; m&agrave;n h&igrave;nh cảm ứng LCD 4.3 inch độ s&aacute;ng cao th&acirc;n thiện với người d&ugrave;ng</li>\r\n	<li>Tương th&iacute;ch với IEC 60601, chỉ định an to&agrave;n cao với CPU k&eacute;p</li>\r\n	<li>Chức năng chống dự trữ độc đ&aacute;o tr&ecirc;n động cơ để ngăn chặn thượng nguồn</li>\r\n	<li>DERS (Hệ thống giảm lỗi thuốc) c&oacute; sẵn</li>\r\n	<li>Mạng Wi-Fi kh&ocirc;ng d&acirc;y c&oacute; sẵn v&agrave; hệ thống điều khiển từ xa với trạm trung t&acirc;m truyền (t&ugrave;y chọn)</li>\r\n	<li>Loại bảo vệ điện: Loại I</li>\r\n	<li>Cấp bảo vệ điện: Loại bằng chứng khử rung CF &aacute;p dụng một phần</li>\r\n	<li>Bảo vệ chống lại sự x&acirc;m nhập của chất lỏng: IP24</li>\r\n	<li>Nguy&ecirc;n l&yacute; l&agrave;m việc: Tuyến t&iacute;nh nhu động li&ecirc;n tục tuyến t&iacute;nh</li>\r\n	<li>K&iacute;ch thước: 234 (W) * 99 (D) * 120 (H) mm</li>\r\n	<li>Trọng lượng: 1,8kg</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<h2><strong>Đặc điểm nổi bật của bơm truyền dịch PG-807i Progetti&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng v&agrave; m&agrave;n h&igrave;nh cảm ứng LCD 4.3 inch độ s&aacute;ng cao th&acirc;n thiện với người d&ugrave;ng</li>\r\n	<li>Tương th&iacute;ch với IEC 60601, chỉ định an to&agrave;n cao với CPU k&eacute;p</li>\r\n	<li>Chức năng chống dự trữ độc đ&aacute;o tr&ecirc;n động cơ để ngăn chặn thượng nguồn</li>\r\n	<li>DERS (Hệ thống giảm lỗi thuốc) c&oacute; sẵn</li>\r\n	<li>Mạng Wi-Fi kh&ocirc;ng d&acirc;y c&oacute; sẵn v&agrave; hệ thống điều khiển từ xa với trạm trung t&acirc;m truyền (t&ugrave;y chọn)</li>\r\n	<li>Loại bảo vệ điện: Loại I</li>\r\n	<li>Cấp bảo vệ điện: Loại bằng chứng khử rung CF &aacute;p dụng một phần</li>\r\n	<li>Bảo vệ chống lại sự x&acirc;m nhập của chất lỏng: IP24</li>\r\n	<li>Nguy&ecirc;n l&yacute; l&agrave;m việc: Tuyến t&iacute;nh nhu động li&ecirc;n tục tuyến t&iacute;nh</li>\r\n	<li>Ph&acirc;n loại: Hệ thống mở bơm truyền c&oacute; thể sử dụng bộ IV th&ocirc;ng dụng với t&ecirc;n thương hiệu c&oacute; thể điều chỉnh. C&oacute; sẵn t&ugrave;y chọn hệ thống đ&oacute;ng.</li>\r\n	<li>C&aacute;c t&iacute;nh năng đặc biệt: Mở cửa tự động v&agrave; hệ thống đ&oacute;ng cửa, kẹp chống d&ograve;ng chảy tự do, &aacute;p suất động, chế độ ban đ&ecirc;m, chế độ chờ, kh&oacute;a m&agrave;n h&igrave;nh, bảo vệ bằng mật khẩu, thay đổi &nbsp;tốc độ trong khi chạy, tự động t&iacute;nh to&aacute;n nồng độ, bộ nhớ của c&aacute;c thiết lập truyền cuối c&ugrave;ng.</li>\r\n	<li>Thư viện thuốc: L&ecirc;n đến 2000 danh s&aacute;ch t&ecirc;n thuốc v&agrave; hiển thị, liều thuốc tr&ecirc;n / giới hạn dưới</li>\r\n</ul>\r\n\r\n<p><img alt=\"Bơm truyền dịch PG-807i Progetti hiện đại, cao cấp\" src=\"https://tmhitech.vn/Uploads/images/products/bom-truyen-dich-pg-807-i-gia-tot.png\" /></p>\r\n\r\n<p><em>Bơm truyền dịch PG-807i Progetti hiện đại, cao cấp</em></p>\r\n\r\n<h2><strong>Th&ocirc;ng số kỹ thuật của&nbsp;Bơm truyền dịch PG-807i Progetti&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>-M&agrave;n h&igrave;nh cảm ứng LCD TFT 4.3 &rdquo;, 10 mức hiển thị độ tương phản độ s&aacute;ng</li>\r\n	<li>Chế độ truyền: 7 chế độ c&oacute; sẵn: ml / h, trọng lượng cơ thể, nhỏ giọt, tải liều, đoạn &nbsp;đường nối, tr&igrave;nh tự v&agrave; chế độ chuyển tiếp</li>\r\n	<li>Chế độ Micro &nbsp;100 ml đến 1200 ml lập tr&igrave;nh</li>\r\n	<li>Phạm vi truyền dịch: 0,01 - 1200 ml / h với min. tăng 0,01 ml / h</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c của hệ thống: &ge;1ml / h, &plusmn; 5%</li>\r\n	<li>Tốc độ KVO: 0,01 - 5,00ml / h, gi&aacute; trị mặc định l&agrave; 1 ml / h</li>\r\n	<li>Tốc độ d&ograve;ng chảy tối thiểu tăng: 0,01ml / h</li>\r\n	<li>Bolus: Bolus thủ c&ocirc;ng v&agrave; bolus c&oacute; thể lập tr&igrave;nh, hỗ trợ chống bolus</li>\r\n	<li>Khối lượng Bolus: Tối thiểu 0,1ml, tối đa 50ml</li>\r\n	<li>VTBI (khối lượng được truyền): 0-9999ml, bước tối thiểu l&agrave; 0,01ml</li>\r\n	<li>Tổng khối lượng truyền: 0,01-9999,99ml, bước tối thiểu l&agrave; 0,01ml</li>\r\n	<li>Phạm vi thời gian: 1 ph&uacute;t-99 giờ 59 ph&uacute;t</li>\r\n	<li>Thanh lọc: 1200 ml / h</li>\r\n	<li>Ph&aacute;t hiện kh&ocirc;ng kh&iacute;: 7 cấp độ, độ nhạy 20&micro;l</li>\r\n	<li>Mức độ kết luận: 12 cấp độ, thượng nguồn v&agrave; hạ lưu tắc nghẽn</li>\r\n	<li>Lịch sử hồ sơ: Hơn 5000 hồ sơ</li>\r\n	<li>C&aacute;c chức năng kh&aacute;c: Gọi y t&aacute;, RS232, xuất dữ liệu</li>\r\n	<li>Giao diện: Mini USB</li>\r\n	<li>K&iacute;ch thước: 234 (W) * 99 (D) * 120 (H) mm</li>\r\n	<li>Trọng lượng: 1,8kg</li>\r\n</ul>\r\n\r\n<h3><strong>Nguồn điện&nbsp;</strong></h3>\r\n\r\n<ul>\r\n	<li>Nguồn điện AC: AC 110 / 240V, 50/60 Hz</li>\r\n	<li>C&ocirc;ng suất đầu v&agrave;o: 50 VA</li>\r\n	<li>DC cung cấp điện: DC 15 V pin lithium</li>\r\n	<li>Đặc điểm kỹ thuật: 11.1V 2600mAh</li>\r\n	<li>Thời gian sạc: 5h (ở trạng th&aacute;i OFF)</li>\r\n	<li>Thời gian l&agrave;m việc: &ge;9h (sau khi sạc đầy</li>\r\n	<li>Pin mới, khi nhiệt độ m&ocirc;i trường l&agrave;</li>\r\n	<li>25 &deg; C v&agrave; tốc độ d&ograve;ng chảy l&agrave; 25ml / h, l&agrave;m việc li&ecirc;n tục -&nbsp;thời gian)</li>\r\n</ul>\r\n\r\n<h3><strong>Cảnh b&aacute;o</strong></h3>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng tin b&aacute;o động h&igrave;nh ảnh v&agrave; &acirc;m thanh: VTBI gần cuối, VTBI truyền,</li>\r\n	<li>&Aacute;p lực cao, kiểm tra ngược d&ograve;ng, pin gần như hết, pin hết, Kh&ocirc;ng c&oacute; pin lắp trong m&aacute;y, kh&ocirc;ng c&oacute; nguồn cung cấp điện, b&aacute;o động nhắc nhở, thời gian chờhết hạn, KVO đ&atilde; ho&agrave;n th&agrave;nh, kết nối cảm biến thả, lỗi thả, bong b&oacute;ng kh&iacute;,</li>\r\n	<li>Mở cửa</li>\r\n</ul>\r\n\r\n<h3><strong>M&ocirc;i trường</strong></h3>\r\n\r\n<ul>\r\n	<li>&nbsp;Hoạt động: nhiệt độ: 5-40 &deg; C</li>\r\n	<li>Độ ẩm: 20-90%, kh&ocirc;ng ngưng tụ</li>\r\n	<li>&Aacute;p suất kh&iacute; quyển: 86-106kPa</li>\r\n	<li>Vận chuyển v&agrave; lưu trữ: nhiệt độ: -20-60 &deg; C</li>\r\n	<li>Độ ẩm: 10-95%, kh&ocirc;ng ngưng tụ</li>\r\n	<li>&Aacute;p suất kh&iacute; quyển: 50-106kPa</li>\r\n</ul>\r\n\r\n<p>&bull;&nbsp;&nbsp;<strong>&nbsp;&nbsp;T&ugrave;y chọn</strong>: IrDA, WIFI, cảm biến drop, docking station v&agrave; trạm trung t&acirc;m tĩnh mạch</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ ngay với&nbsp;<strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM&nbsp;</strong>theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;nếu bạn c&oacute; nhu cầu t&igrave;m hiểu về th&ocirc;ng tin d&ograve;ng sản phẩm bơm truyền dịch PG-807i Progetti để c&oacute; được tư vấn v&agrave; c&oacute; mức gi&aacute; tốt nhất.</p>', 1, 64, 13, '2021-02-13 15:24:37', '2021-02-13 15:24:37', NULL, '/storage/photos/product/1/h81t7b4DA9OQY4z5y94M.jpg', 12000000, 100);
INSERT INTO `products` (`id`, `name`, `slug`, `model`, `made_by`, `des`, `content`, `user_id`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`, `image_path`, `price`, `inventory`) VALUES
(51, 'BƠM TIÊM ĐIỆN PG-907S PROGETTI (Ý)', 'bom-tiem-dien-pg-907s-progetti-y', 'PG-907S', 'Ý', '<ul>\r\n	<li>Hiển thị: M&agrave;n h&igrave;nh cảm ứng 4.3&rdquo; TFT</li>\r\n	<li>Ống ti&ecirc;m tương th&iacute;ch: 5ml, 10ml, 20ml, 30ml , 50/60ml</li>\r\n	<li>C&aacute;c mức độ chọn lọc: 12 mức</li>\r\n	<li>Lịch sử ghi nhớ: Hơn 5000 lần</li>\r\n	<li>Loại bảo vệ điện: Loại I3</li>\r\n	<li>Cấp bảo vệ điện: Loại bằng chứng khử rung CF &aacute;p dụng một phần</li>\r\n	<li>Bảo vệ chống lại sự x&acirc;m nhập của chất lỏng: IP24</li>\r\n	<li>Nguy&ecirc;n tắc l&agrave;m việc: động cơ bước dẫn v&iacute;t hoạt động li&ecirc;n tục</li>\r\n	<li>K&iacute;ch thước: 394(W)*90(D)*123(H) mm</li>\r\n	<li>Trọng lượng:1,7kg</li>\r\n	<li>Nguồn cung cấp : 100-240V 50/60Hz</li>\r\n</ul>', '<h2><strong>Giới thiệu chung về bơm ti&ecirc;m điện PG-907S Progetti</strong></h2>\r\n\r\n<p>-&nbsp;<strong><a href=\"https://tmhitech.vn/bom-tiem-dien-pg-907s-progetti\" target=\"_blank\">Bơm ti&ecirc;m điện PG-907S Progetti&nbsp;</a></strong>c&oacute; m&agrave;n h&igrave;nh cảm ứng LCD 4.3 inch v&agrave; m&agrave;n h&igrave;nh cảm ứng th&acirc;n thiện với người d&ugrave;ng</p>\r\n\r\n<p>- Ph&ugrave; hợp với IEC 60601, chỉ định an to&agrave;n cao với CPU k&eacute;p tự động x&aacute;c định k&iacute;ch thước cho ống ti&ecirc;m 5, 10, 20, 30, 50/60 ml Chức năng chống dự trữ duy nhất tr&ecirc;n động cơ để ngăn chặn thượng nguồn</p>\r\n\r\n<p>- DERS (hệ thống giảm lỗi) c&oacute; sẵn</p>\r\n\r\n<p>- Mạng Wi-Fi kh&ocirc;ng d&acirc;y c&oacute; sẵn v&agrave; hệ thống điều khiển từ xa vớitrạm trung t&acirc;m truyền (t&ugrave;y chọn)</p>\r\n\r\n<p>- Loại bảo vệ điện: Loại I3</p>\r\n\r\n<p>- Cấp bảo vệ điện: Loại bằng chứng khử rung CF &aacute;p dụng một phần</p>\r\n\r\n<p>- Bảo vệ chống lại sự x&acirc;m nhập của chất lỏng: IP24</p>\r\n\r\n<p>- Nguy&ecirc;n tắc l&agrave;m việc: động cơ bước dẫn v&iacute;t hoạt động li&ecirc;n tục</p>\r\n\r\n<p>- Ph&acirc;n loại: Bơm ti&ecirc;m với hệ thống mở để sử dụng ống ti&ecirc;m phổ thương hiệu</p>\r\n\r\n<p>- C&aacute;c t&iacute;nh năng đặc biệt: &Aacute;p suất động, chế độ ban đ&ecirc;m, stand-by, kh&oacute;a m&agrave;n h&igrave;nh, bảo vệ pass-word,</p>\r\n\r\n<p>- Tốc độ thay đổi trong khi chạy, t&iacute;nh to&aacute;n tự động, bộ nhớ của c&agrave;i đặt truyền cuối c&ugrave;ng, t&iacute;nh to&aacute;n tựđộng tập trung.</p>\r\n\r\n<p><img alt=\"Bơm tiêm điện PG-907S Progetti\" src=\"https://tmhitech.vn/Uploads/images/products/bom-tiem-dien-pg-907-s-1(1).jpg\" /></p>\r\n\r\n<p>Bơm ti&ecirc;m điện PG-907S Progetti (&Yacute;)</p>\r\n\r\n<h2><strong>Th&ocirc;ng số kỹ thuật của sản phẩm</strong></h2>\r\n\r\n<p>- Hiển thị: M&agrave;n h&igrave;nh cảm ứng 4.3&rdquo; TFT</p>\r\n\r\n<p>- Ống ti&ecirc;m tương th&iacute;ch: 5ml, 10ml, 20ml, 30ml , 50/60ml</p>\r\n\r\n<p>- C&aacute;c mức độ chọn lọc: 12 mức</p>\r\n\r\n<p>- Lịch sử ghi nhớ: Hơn 5000 lần</p>\r\n\r\n<p>- K&iacute;ch thước: 394(W)*90(D)*123(H) mm</p>\r\n\r\n<p>- Trọng lượng:1,7kg</p>\r\n\r\n<p>- Nguồn cung cấp : 100-240V 50/60Hz</p>\r\n\r\n<p>Để đặt mua&nbsp;<strong>bơm ti&ecirc;m điện PG-907S Progetti (&Yacute;)</strong>&nbsp;d&ugrave;ng cho khoa&nbsp;<a href=\"https://tmhitech.vn/cap-cuu-hoi-suc-tich-cuc\" target=\"_blank\"><strong>cấp cứu hồi sức t&iacute;ch cực</strong></a>&nbsp;qu&yacute; kh&aacute;ch h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i&nbsp;<strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM&nbsp;&nbsp;</strong>theo số hotline<strong>:&nbsp;098 969 7177&nbsp;</strong>để được tư vấn về sản phẩm một c&aacute;ch nhanh ch&oacute;ng nhất. Ch&uacute;ng t&ocirc;i rất mong muốn c&oacute; thể hợp t&aacute;c v&agrave; mang đến những d&ograve;ng sản phẩm thiết bị y tế chất lượng, gi&aacute; th&agrave;nh hợp l&yacute; đến cho bệnh viện, ph&ograve;ng kh&aacute;m của đơn vị bạn.&nbsp;</p>', 1, 65, 18, '2021-02-13 15:27:49', '2021-02-13 15:27:49', NULL, '/storage/photos/product/1/nqc6KrI2TV3kFitbtGjW.jpg', 15000000, 100),
(52, 'HỆ THỐNG ĐIỆN NÃO 34, 58, 90 KÊNH NEUROWERK EEG (ĐỨC) 2', 'he-thong-dien-nao-34-58-90-kenh-neurowerk-eeg-duc-2', 'NEUROWERK EEG', 'Đức', '<ul>\r\n	<li>Hiển thị đầy đủ cơ sở dữ liệu bệnh nh&acirc;n</li>\r\n	<li>Bao gồm c&aacute;c phi&ecirc;n bản 34, 58, 90 k&ecirc;nh khuếch đại</li>\r\n	<li>Vận h&agrave;nh phần mền đơn giản</li>\r\n	<li>Khả năng thiết lập c&aacute;c th&ocirc;ng số trực tuyến</li>\r\n	<li>Lập biểu đồ bi&ecirc;n độ của c&aacute;c đoạn EEG được lựa chọn</li>\r\n	<li>Truyền dữ liệu ghi điện n&atilde;o qua hệ thống mạng</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', NULL, 1, 52, 4, '2021-02-13 15:53:49', '2021-02-13 16:01:18', NULL, '/storage/photos/product/1/r5Fsqlb87nhpIKvbLROJ.jpg', 19000000, 100),
(53, 'MÁY ĐO ĐIỆN TIM GẮNG SỨC CARDIOPART 12 ECG AMEDTEC 2', 'may-do-dien-tim-gang-suc-cardiopart-12-ecg-amedtec-2', 'CardioPart 12 ECG', 'Đức', '<ul>\r\n	<li>\r\n	<p>Thiết bị ghi CardioPart 12 ECG c&oacute; thể kết nối USB hoặc Bluetoot,&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>L&yacute; tưởng cho y học thể thao nhờ c&oacute; thể truyền dữ liệu kh&ocirc;ng d&acirc;y&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm so&aacute;t t&ugrave;y chọn m&aacute;y chạy bộ hoặc m&aacute;y đo tốc độ xe đạp v&agrave; m&aacute;y đo tiếng vang&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Hoạt động bằng một n&uacute;t bấm v&agrave; người d&ugrave;ng được hướng dẫn cho việc sử dụng chương tr&igrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm tra chất lượng ghi của từng điện cực trước khi tiến h&agrave;nh kiểm tra</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm tra căng thẳng ECG c&oacute; thể chạy ho&agrave;n to&agrave;n tự động -&gt; m&agrave; kh&ocirc;ng cần bất kỳ sự can thiệp n&agrave;o của người vận h&agrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Chế độ xem lại to&agrave;n bộ ECG 12 đạo tr&igrave;nh c&oacute; &nbsp;ph&acirc;n t&iacute;ch sự bất thường trong c&aacute;c lần đo</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết quả cuối c&ugrave;ng tự động &nbsp;c&oacute; thể chỉnh sửa, c&aacute;c khối văn bản được x&aacute;c định trước</p>\r\n	</li>\r\n</ul>', NULL, 1, 53, 4, '2021-02-13 15:56:08', '2021-02-13 16:01:29', NULL, '/storage/photos/product/1/W910F6VcTUEyEiyedNQU.jpg', 17000000, 100),
(54, 'MÁY ĐO CHỨC NĂNG HÔ HẤP KSP-1000', 'may-do-chuc-nang-ho-hap-ksp-1000', 'KSP-1000', 'Đức', '<ul>\r\n	<li>Ti&ecirc;u chuẩn chất lượng Ch&acirc;u &Acirc;u</li>\r\n	<li>Kết nối với PC qua USB / Bluetooth</li>\r\n	<li>Thiết kế chi ph&iacute;-hiệu quả, bền, c&aacute;c th&agrave;nh phần cơ kh&iacute; c&oacute; tuổi thọ lớn</li>\r\n	<li>Sử dụng c&aacute;c bộ lọc vi khuẩn ti&ecirc;u chuẩn c&oacute; gi&aacute; hợp l&yacute; hoặc miếng ngậm ti&ecirc;u chuẩn</li>\r\n	<li>Kh&ocirc;ng c&oacute; bộ phận chuyển động, hiệu chuẩn nội bộ tự động</li>\r\n	<li>Dễ d&agrave;ng để l&agrave;m sạch v&agrave; khử tr&ugrave;ng</li>\r\n	<li>Đo tất cả c&aacute;c th&ocirc;ng số chức năng phổi ti&ecirc;u chuẩn</li>\r\n	<li>Ph&aacute;t h&agrave;nh b&aacute;o c&aacute;o bản in r&otilde; r&agrave;ng</li>\r\n</ul>', '<h2><strong>C&aacute;c t&iacute;nh năng&nbsp; nổi bật của m&aacute;y đo chức năng h&ocirc; hấp KSP-1000</strong></h2>\r\n\r\n<ul>\r\n	<li>Ti&ecirc;u chuẩn chất lượng Ch&acirc;u &Acirc;u</li>\r\n	<li>Kết nối với PC qua USB / Bluetooth</li>\r\n	<li>Thiết kế chi ph&iacute;-hiệu quả, bền, c&aacute;c th&agrave;nh phần cơ kh&iacute; c&oacute; tuổi thọ lớn</li>\r\n	<li>Sử dụng c&aacute;c bộ lọc vi khuẩn ti&ecirc;u chuẩn c&oacute; gi&aacute; hợp l&yacute; hoặc miếng ngậm ti&ecirc;u chuẩn</li>\r\n	<li>Kh&ocirc;ng c&oacute; bộ phận chuyển động, hiệu chuẩn nội bộ tự động</li>\r\n	<li>Dễ d&agrave;ng để l&agrave;m sạch v&agrave; khử tr&ugrave;ng</li>\r\n	<li>Đo tất cả c&aacute;c th&ocirc;ng số chức năng phổi ti&ecirc;u chuẩn</li>\r\n	<li>Ph&aacute;t h&agrave;nh b&aacute;o c&aacute;o bản in r&otilde; r&agrave;ng</li>\r\n</ul>\r\n\r\n<p><img alt=\"Máy đo chức năng hô hấp KSP-1000 Kalamed\" src=\"https://tmhitech.vn/Uploads/images/products/may-do-chuc-nang-ho-hap-ksp-1000-duc.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y đo chức năng h&ocirc; hấp KSP-1000 Kalamed</em></p>\r\n\r\n<h2><strong>C&aacute;c t&iacute;nh năng hiệu suất</strong></h2>\r\n\r\n<p>Hệ thống phế dung kế m&aacute;y t&iacute;nh KSP-1000 c&oacute; thể dễ d&agrave;ng c&agrave;i đặt tr&ecirc;n bất kỳ mạng Windows office. N&oacute; c&oacute; thể được kết nối với PC qua c&aacute;p USB th&ocirc;ng thường cũng như qua Bluetooth. Cơ sở dữ liệu v&agrave; giao diện bệnh nh&acirc;n, e. g. DDT / HL7 cho hệ thống EDP văn ph&ograve;ng / bệnh viện l&agrave; c&aacute;c t&iacute;nh năng ti&ecirc;u chuẩn, cũng như t&iacute;ch hợp dễ d&agrave;ng v&agrave;o c&aacute;c m&ocirc;i trường mạng hiện c&oacute;.</p>\r\n\r\n<p>Hệ thống phế dung kế m&aacute;y t&iacute;nhKSP-1000 cung cấp c&aacute;c chế độ kh&aacute;c nhau về đo lường như thở ra v&agrave; h&iacute;t v&agrave;o bắt buộc, đo dung t&iacute;ch sống tĩnh cũng như c&aacute;c gi&aacute; trị ngưỡng h&ocirc; hấp tối đa. Hiệu chỉnh phế dung kế phức tạp kh&ocirc;ng c&ograve;n cần thiết nữa.</p>\r\n\r\n<p>Bất kỳ số lượng dữ liệu bệnh nh&acirc;n mong muốn v&agrave; bản ghi ph&ecirc; dung được lưu trữ tự động tập trung v&agrave; c&oacute; thể được hiển thị bất kỳ l&uacute;c n&agrave;o tr&ecirc;n bất kỳ m&aacute;y t&iacute;nh n&agrave;o trong mạng nội bộ v&agrave; được in tr&ecirc;nbất kỳ m&aacute;y in th&ocirc;ng thường n&agrave;o.</p>\r\n\r\n<p>Ống đo t&iacute;ch hợp an to&agrave;n c&oacute; thể được khử tr&ugrave;ng bằng chất khử tr&ugrave;ng lạnh. Điều n&agrave;y cũng cho ph&eacute;p sử dụng miếng ngậm bằng c&aacute;t t&ocirc;ng hoặc nhựa th&ocirc;ng thường. Tuy nhi&ecirc;n, ch&uacute;ng t&ocirc;i khuy&ecirc;n bạn n&ecirc;n sử dụng bộ lọc vi khuẩn d&ugrave;ng một lần từ c&aacute;c phụ kiện của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sản phẩm giúp theo dõi các chỉ số hô hấp một cách chính xác\" src=\"https://tmhitech.vn/Uploads/images/products/may-do-chuc-nang-ho-hap-ksp-1000-duc-1.jpg\" /></p>\r\n\r\n<p><em>Sản phẩm gi&uacute;p theo d&otilde;i c&aacute;c chỉ số h&ocirc; hấp một c&aacute;ch ch&iacute;nh x&aacute;c</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật của sản phẩm</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Lưu lượng kế</td>\r\n			<td>\r\n			<p>Nguy&ecirc;n l&yacute; s&oacute;ng (si&ecirc;u &acirc;m)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung sai</p>\r\n			</td>\r\n			<td>\r\n			<p>+/- 3 %</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Độ ph&acirc;n giải</p>\r\n			</td>\r\n			<td>\r\n			<p>8 mL / s</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dải lưu lượng&nbsp;&nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>+/- 18 L / s</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ lấy mẫu kỹ thuật số&nbsp;&nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;&nbsp; &nbsp;100MHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nguồn cung cấp</p>\r\n			</td>\r\n			<td>\r\n			<p>USB / pin t&iacute;ch hợp cho Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thở ra v&agrave; h&iacute;t v&agrave;o bắt buộc</p>\r\n			</td>\r\n			<td>\r\n			<p>FVC, FEV1, FEV0,5, FEV3, PIF v&agrave; nhiều mục kh&aacute;c</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung t&iacute;ch sống h&iacute;t v&agrave;o</p>\r\n			</td>\r\n			<td>\r\n			<p>VC, IVC, ERV, TV v&agrave; nhiều mục kh&aacute;c</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ngưỡng h&ocirc; hấp</p>\r\n			</td>\r\n			<td>\r\n			<p>MVV</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hệ điều h&agrave;nh m&aacute;y t&iacute;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Windows XP / Windows 7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Giao diện bắt buộc</p>\r\n			</td>\r\n			<td>\r\n			<p>USB / Bluetooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuỗi hoạt ảnh cho trẻ em</p>\r\n			</td>\r\n			<td>\r\n			<p>Nến / r&egrave;m</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>150 x 60 x 27 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&acirc;n nặng&nbsp;&nbsp; &nbsp;USB</p>\r\n			</td>\r\n			<td>\r\n			<p>100 g / Bluetooth 200 g</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Để đặt mua sản phẩm bạn h&atilde;y li&ecirc;n hệ ngay với C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM theo số hotline:&nbsp;<strong>098 969 7177&nbsp;</strong>để được tư vấn v&agrave; đặt h&agrave;ng một c&aacute;ch nhanh ch&oacute;ng nhất.</p>', 1, 54, 10, '2021-02-13 16:04:30', '2021-02-13 16:04:30', NULL, '/storage/photos/product/1/uLJzl21hjfzEwEqTBOb9.jpg', 21000000, 100),
(55, 'MÁY ĐO THÍNH LỰC AT700E AURITEC', 'may-do-thinh-luc-at700e-auritec', 'AT700e', 'Đức', '<ul>\r\n	<li>M&aacute;y đo th&iacute;nh lực độc lập với m&aacute;y t&iacute;nh Windows7 t&iacute;ch hợp</li>\r\n	<li>Bảng đo th&iacute;nh lực thoải m&aacute;i với c&aacute;c thanh trượt dB, ngắt, tần số...</li>\r\n	<li>Hướng dẫn sử dụng vượt trội</li>\r\n	<li>Cơ sở dữ liệu t&iacute;ch hợp cho dữ liệu đo lường v&agrave; bệnh nh&acirc;n</li>\r\n	<li>L&agrave;m mờ đường cong đo lường cũ v&agrave;o ph&eacute;p đo hiện tại</li>\r\n	<li>Tổng số độc lập của phần cứng m&aacute;y t&iacute;nh b&ecirc;n ngo&agrave;i</li>\r\n	<li>Ti&ecirc;u chuẩn: 125 Hz bis 8000 H</li>\r\n	<li>&Acirc;m cao đến 16000Hz</li>\r\n	<li>L&ecirc;n đến 3 k&ecirc;nh đo độc lập với chức năng pha trộn</li>\r\n	<li>&Acirc;m lượng cao</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<h2><strong>Đặc điểm ch&iacute;nh của m&aacute;y đo th&iacute;nh lực AT700e Auritec&nbsp;</strong></h2>\r\n\r\n<p>-&nbsp;<strong><a href=\"https://tmhitech.vn/may-do-thinh-luc-at700e-auritec\" target=\"_blank\">M&aacute;y đo th&iacute;nh lực AT700e Auritec&nbsp;</a></strong>độc lập với m&aacute;y t&iacute;nh Windows7 t&iacute;ch hợp</p>\r\n\r\n<p>- Bảng đo th&iacute;nh lực thoải m&aacute;i với c&aacute;c thanh trượt dB, ngắt, tần số, tiếp nhận v&agrave; trả về kh&oacute;a bằng b&agrave;n ph&iacute;m PC t&iacute;ch hợp</p>\r\n\r\n<p>- Hướng dẫn sử dụng vượt trội</p>\r\n\r\n<p>- Cơ sở dữ liệu t&iacute;ch hợp cho dữ liệu đo lường v&agrave; bệnh nh&acirc;n</p>\r\n\r\n<p>- L&agrave;m mờ đường cong đo lường cũ v&agrave;o ph&eacute;p đo hiện tại</p>\r\n\r\n<p>- Tổng số độc lập của phần cứng m&aacute;y t&iacute;nh b&ecirc;n ngo&agrave;i</p>\r\n\r\n<p><img alt=\"Máy đo thính lực AT700e Auritec\" src=\"https://tmhitech.vn/Uploads/images/products/may-do-thinh-luc-at-700e-auritec-3.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y đo th&iacute;nh lực AT700e Auritec</em></p>\r\n\r\n<h3><strong>C&aacute;c mức hiệu chuẩn ri&ecirc;ng biệt cho từng t&iacute;n hiệu v&agrave; tần số thử nghiệm :</strong></h3>\r\n\r\n<p>- Tr&igrave;nh b&agrave;y trực tuyến tất cả c&aacute;c qu&aacute; tr&igrave;nh đo th&iacute;nh lực</p>\r\n\r\n<p>- Ghi lại h&agrave;ng đo thứ hai cho tất cả c&aacute;c đầu d&ograve; trong một th&iacute;nh đồ đo</p>\r\n\r\n<p>- Đo th&iacute;nh lực th&iacute;nh lực với k&iacute;ch hoạt t&iacute;ch hợp c&aacute;c b&agrave;i kiểm tra ng&ocirc;n ngữ từ ổ cứng</p>\r\n\r\n<p>- L&ecirc;n đến 3 k&ecirc;nh đo độc lập với chức năng pha trộn</p>\r\n\r\n<p>- &Acirc;m lượng cao</p>\r\n\r\n<p>- Truy cập mạng v&agrave; cơ sở dữ liệu, im - v&agrave; xuất qua giao diện BDT / GDT</p>\r\n\r\n<p>- Th&ocirc;ng qua m&aacute;y t&iacute;nh, bạn độc lập với phần cứng b&ecirc;n ngo&agrave;i, chỉ cần&ldquo; cắm v&agrave; chạy &rdquo;</p>\r\n\r\n<p>- C&oacute; thể N&acirc;ng cấp với c&aacute;c b&agrave;i kiểm tra bằng giọng n&oacute;i-tiếng ồn hiện đại của Matrix</p>\r\n\r\n<p>- M&aacute;y đo th&iacute;nh lực c&oacute; thể được n&acirc;ng cấp với tối đa 8 loa để kiểm tra th&iacute;nh gi&aacute;c định hướng</p>\r\n\r\n<p><img alt=\"Máy đo thính lực giúp kiểm tra chính xác các dữ liệu\" src=\"https://tmhitech.vn/Uploads/images/products/may-do-thinh-luc-at-700e-auritec-2.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y đo th&iacute;nh lực gi&uacute;p kiểm tra ch&iacute;nh x&aacute;c c&aacute;c dữ liệu</em></p>\r\n\r\n<h2><strong>Dữ liệu kỹ thuật của m&aacute;y&nbsp;đo th&iacute;nh lực AT700e Auritec&nbsp;</strong></h2>\r\n\r\n<p>- Tần suất đo th&iacute;nh lực tinh khiết</p>\r\n\r\n<p>Ti&ecirc;u chuẩn: 125 Hz bis 8000 Hz</p>\r\n\r\n<p>&Acirc;m cao đến 16000Hz</p>\r\n\r\n<p><strong>- T&iacute;n hiệu mặt nạ :</strong></p>\r\n\r\n<p>Dải hẹp cho mặt nạ t&ocirc;ng m&agrave;u tinh khiết e (= TVR)</p>\r\n\r\n<p>Băng rộng (tiếng ồn trắng) (= BB-noise )</p>\r\n\r\n<p>Giọng n&oacute;i c&oacute; trọng số giọng n&oacute;i (= SVR)</p>\r\n\r\n<p><strong>- Đầu ra:</strong></p>\r\n\r\n<p>M&aacute;y dẫn kh&iacute; HDA280</p>\r\n\r\n<p>D&acirc;y dẫn xương B-71</p>\r\n\r\n<p>Trường tự do phải v&agrave; tr&aacute;i</p>\r\n\r\n<p>Thiết bị nghe được sử dụng trong đo th&iacute;nh lực c&oacute; giọng n&oacute;i.</p>\r\n\r\n<p><strong>- PC :</strong></p>\r\n\r\n<p>Windows7 với bộ xử l&yacute; Intel</p>\r\n\r\n<p>Loại II cho giai điệu tinh khiết sau DIN EN 60645-1</p>\r\n\r\n<p>Lớp B-E cho th&iacute;nh lực th&iacute;nh gi&aacute;c sau DIN EN 60645-2</p>\r\n\r\n<p>D&ograve;ng sản phẩm&nbsp;<strong>m&aacute;y&nbsp;đo th&iacute;nh lực AT700e Auritec</strong>&nbsp;được rất nhiều c&aacute;c đơn vị bệnh viện sử dụng&nbsp;nhằm n&acirc;ng cao chất lượng dịch vụ tốt nhất. Để đặt mua sản phẩm, h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;để được tư vấn v&agrave; hỗ trợ nhanh nhất về sản phẩm.&nbsp;</p>', 1, 55, 8, '2021-02-13 16:12:09', '2021-02-13 16:12:09', NULL, '/storage/photos/product/1/JchZf4rDGU2qpoz6vj2h.jpg', 20000000, 100),
(56, 'MÁY DOPPLER XUYÊN SỌ DLOPHIN 4D VIASONIX', 'may-doppler-xuyen-so-dlophin-4d-viasonix', 'viasonix', 'TÂY BAN NHA', '<ul>\r\n	<li>X&aacute;c định co thắt mạch sau chảy m&aacute;u dưới nhện</li>\r\n	<li>Kiểm tra đ&aacute;p ứng v&agrave; cơ chế tự điều h&ograve;a của c&aacute;c mạch m&aacute;u n&atilde;o</li>\r\n	<li>Ph&aacute;t hiện c&aacute;c t&iacute;n hiệu tho&aacute;ng qua tần số cao</li>\r\n	<li>Kiểm tra chết n&atilde;oTheo d&otilde;i li&ecirc;n tục trong thời gian d&agrave;i</li>\r\n	<li>Theo d&otilde;i khi c&oacute; nghi ngờ tăng &aacute;p lực nội sọ,...</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng chạm 18&#39;&#39; hiển thị đầy đủ c&aacute;c th&ocirc;ng số</li>\r\n	<li>Xuất b&aacute;o c&aacute;o dễ d&agrave;ng</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng</li>\r\n</ul>', '<p><em><strong><a href=\"https://tmhitech.vn/may-doppler-xuyen-so-dlophin-4d-viasonix\" target=\"_blank\">M&aacute;y doppler xuy&ecirc;n so&nbsp;Dlophin 4D Viasonix</a>&nbsp;</strong>l&agrave; thiết bị đo vận tốc d&ograve;ng m&aacute;u nội sọ, ngo&agrave;i sọ v&agrave; ngoại bi&ecirc;n, đ&aacute;nh gi&aacute; được t&igrave;nh trạng chức năng của c&aacute;c mạch m&aacute;u n&atilde;o. L&agrave; phương ph&aacute;p kh&ocirc;ng nguy hại, chi ph&iacute; thực hiện thấp c&oacute; thể tiến h&agrave;nh theo d&otilde;i bệnh nh&acirc;n nhiều lần, c&oacute; thể l&agrave;m ngay tại giường đặc biệt l&agrave; đối với bệnh nh&acirc;n cấp cứu v&agrave; phẫu thuật.</em></p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của m&aacute;y doppler xuy&ecirc;n sọ Dlophin 4D Viasonix</strong></h2>\r\n\r\n<p><strong>M&aacute;y Doppler xuy&ecirc;n sọ Dolphin 4D Viasonix</strong>&nbsp;với m&agrave;n h&igrave;nh cảm ứng chạm ho&agrave;n to&agrave;n 18&rdquo; cho ph&eacute;p theo d&otilde;i dạng s&oacute;ng n&atilde;o sắc n&eacute;t, điều chỉnh v&agrave; căn chuẩn dễ d&agrave;ng.</p>\r\n\r\n<p><img alt=\"Máy doppler xuyên sọ Dolphin 4D đo chính xác chức năng của mạch máu não\" src=\"https://tmhitech.vn/Uploads/images/products/may-doppler-xuyen-so-dlophin-4d-viasonix-chinh-xac.png\" /></p>\r\n\r\n<p><em>M&aacute;y doppler xuy&ecirc;n sọ Dolphin 4D&nbsp;đo ch&iacute;nh x&aacute;c chức năng của mạch m&aacute;u n&atilde;o</em></p>\r\n\r\n<p>Giao diện th&acirc;n thiện, t&iacute;ch hợp nhiều b&agrave;i kiểm tra với h&igrave;nh minh họa r&otilde; r&agrave;ng, trực quan gi&uacute;p người d&ugrave;ng dễ theo d&otilde;i v&agrave; x&aacute;c định đ&uacute;ng vị tr&iacute; c&aacute;c mạnh m&atilde;u n&atilde;o. Xuất b&aacute;o c&aacute;o dễ d&agrave;ng, c&oacute; thể t&ugrave;y chỉnh theo từng mục đ&iacute;ch sử dụng kh&aacute;c nhau.</p>\r\n\r\n<p><strong>C&aacute;c ứng dụng ti&ecirc;u biểu</strong></p>\r\n\r\n<p>- X&aacute;c định co thắt mạch sau chảy m&aacute;u dưới nhện</p>\r\n\r\n<p>- Kiểm tra đ&aacute;p ứng v&agrave; cơ chế tự điều h&ograve;a của c&aacute;c mạch m&aacute;u n&atilde;o</p>\r\n\r\n<p>- Ph&aacute;t hiện c&aacute;c t&iacute;n hiệu tho&aacute;ng qua tần số cao</p>\r\n\r\n<p>- Kiểm tra chết n&atilde;oTheo d&otilde;i li&ecirc;n tục trong thời gian d&agrave;i</p>\r\n\r\n<p>- Theo d&otilde;i khi c&oacute; nghi ngờ tăng &aacute;p lực nội sọ,...</p>\r\n\r\n<p><img alt=\"Các thông số kỹ thuật sẽ được hiển thị đầy đủ trên màn hình \" src=\"https://tmhitech.vn/Uploads/images/products/may-doppler-xuyen-so-dlophin-4d-viasonix-hien-dai.png\" /></p>\r\n\r\n<p><em>C&aacute;c th&ocirc;ng số kỹ thuật sẽ được hiển thị đầy đủ tr&ecirc;n m&agrave;n h&igrave;nh&nbsp;</em></p>\r\n\r\n<p><strong>Ti&ecirc;u chuẩn kỹ thuật của sản phẩm</strong></p>\r\n\r\n<p>- T&iacute;n hiệu: C&oacute; thể ph&aacute;t lại phổ Doppler với h&igrave;nh ảnh v&agrave; &acirc;m thanh đầy đủ</p>\r\n\r\n<p>- Bộ nhớ: 4GLưu: Tự động</p>\r\n\r\n<p>- Xuất dữ liệu: chụp m&agrave;n h&igrave;nh, dạng s&oacute;ng (excel), b&aacute;o c&aacute;o (PDF), tập tin (DOL), phim (WMV)</p>\r\n\r\n<p>- Mạng: DICOM (bao gồm cả SR), HL7, GDT, SQL</p>\r\n\r\n<p><strong>Hiện m&aacute;y doppler xuy&ecirc;n sọ Dlophin 4D Viasonix</strong>&nbsp;đang được ph&acirc;n phối bởi c&ocirc;ng ty Cổ Phần Thiết Bị C&ocirc;ng nghệ Cao TM, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu h&atilde;y li&ecirc;n hệ ngay cho ch&uacute;ng t&ocirc;i theo số hotline:&nbsp;<strong>098 969 7177&nbsp;</strong>để được tư vấn v&agrave; giải đ&aacute;p về sản phẩm một c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c nhất nh&eacute;!</p>', 1, 56, 17, '2021-02-13 16:14:13', '2021-02-13 16:14:13', NULL, '/storage/photos/product/1/95CZ0bM2uPwycbAM1VIb.jpg', 17000000, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`) VALUES
(57, '/storage/photos/product/1/QnFYLyDJqMZmzwW2rr5I.jpg', 23, '2020-09-09 02:17:16', '2020-09-09 02:17:16'),
(60, '/storage/photos/product/1/X5EOZrcZT6uaoM7XnPDN.jpg', 23, '2020-09-09 02:17:16', '2020-09-09 02:17:16'),
(61, '/storage/photos/product/1/Fn3HfPVMvzKKkOg96hqG.jpg', 24, '2020-09-09 04:49:06', '2020-09-09 04:49:06'),
(62, '/storage/photos/product/1/drCtWHJpoVWfg1JMIAIz.jpg', 24, '2020-09-09 04:49:06', '2020-09-09 04:49:06'),
(63, '/storage/photos/product/1/3GvU5fnKbqFSywLPoOH7.png', 24, '2020-09-09 04:49:06', '2020-09-09 04:49:06'),
(64, '/storage/photos/product/1/XMWV1BoAPGJjioCz2fVr.jpg', 24, '2020-09-09 04:49:06', '2020-09-09 04:49:06'),
(65, '/storage/photos/product/1/zjUG1O43lDMMydG8IY2W.jpg', 25, '2020-09-09 08:50:34', '2020-09-09 08:50:34'),
(66, '/storage/photos/product/1/HVelnbMBMW9tTAfuVINM.jpg', 25, '2020-09-09 08:50:34', '2020-09-09 08:50:34'),
(72, '/storage/photos/product/1/BAXaffaLgfmytfoC61ey.jpg', 27, '2020-09-10 15:20:56', '2020-09-10 15:20:56'),
(73, '/storage/photos/product/1/WytcJY10t6sisQzSkyvI.jpg', 27, '2020-09-10 15:20:56', '2020-09-10 15:20:56'),
(84, '/storage/photos/product/3/gPwMw633ayyqtZZtT9DW.jpg', 32, '2020-09-28 03:51:10', '2020-09-28 03:51:10'),
(85, '/storage/photos/product/3/SE0nn0TYVE50BV9UQujU.jpg', 32, '2020-09-28 03:51:10', '2020-09-28 03:51:10'),
(86, '/storage/photos/product/3/oVBY3E7H1cViV7znTOje.jpg', 32, '2020-09-28 03:51:10', '2020-09-28 03:51:10'),
(87, '/storage/photos/product/3/zkpsEkR84XxswQgiZkiV.jpg', 34, '2020-10-10 15:23:02', '2020-10-10 15:23:02'),
(88, '/storage/photos/product/3/LCKgV9J8O7ICQCAnmOyf.jpg', 34, '2020-10-10 15:23:02', '2020-10-10 15:23:02'),
(89, '/storage/photos/product/1/4AusbPV3rEo20huh8Nn0.jpg', 36, '2020-11-04 07:06:16', '2020-11-04 07:06:16'),
(90, '/storage/photos/product/1/ixXMb7POPuLYAMW0j8WQ.jpg', 36, '2020-11-04 07:06:16', '2020-11-04 07:06:16'),
(91, '/storage/photos/product/1/rPFQlNFCufyWoQoocBOh.jpg', 36, '2020-11-04 07:06:16', '2020-11-04 07:06:16'),
(92, '/storage/photos/product/1/qTjMod4NpZVL1PnzlfrW.jpg', 40, '2021-02-13 14:31:43', '2021-02-13 14:31:43'),
(93, '/storage/photos/product/1/GOWOTpHaRNwGAMnOj2bV.jpg', 40, '2021-02-13 14:31:43', '2021-02-13 14:31:43'),
(94, '/storage/photos/product/1/1YRhE4Mroi5lwwBiVtXI.jpg', 43, '2021-02-13 14:47:07', '2021-02-13 14:47:07'),
(95, '/storage/photos/product/1/ZOhJzy7lNzIMVW930ZA4.jpg', 43, '2021-02-13 14:47:07', '2021-02-13 14:47:07'),
(96, '/storage/photos/product/1/pFoT1uMBsxpDgvB8DjE1.jpg', 44, '2021-02-13 14:52:58', '2021-02-13 14:52:58'),
(97, '/storage/photos/product/1/SYTFzfG55U0tFqJ6Djx7.jpg', 44, '2021-02-13 14:52:58', '2021-02-13 14:52:58'),
(98, '/storage/photos/product/1/7RQTaDdecPcjjCHdP0YR.jpg', 45, '2021-02-13 14:55:16', '2021-02-13 14:55:16'),
(99, '/storage/photos/product/1/fm6vA8behZY9tr73C0y3.jpg', 46, '2021-02-13 14:57:43', '2021-02-13 14:57:43'),
(100, '/storage/photos/product/1/MBQ4njJ7KaycgU55Zb0l.jpg', 46, '2021-02-13 14:57:43', '2021-02-13 14:57:43'),
(101, '/storage/photos/product/1/lMNeopPJFnmcgmeAESdE.jpg', 48, '2021-02-13 15:13:57', '2021-02-13 15:13:57'),
(102, '/storage/photos/product/1/YCBtNQxkRffxgxq5rNB5.jpg', 49, '2021-02-13 15:21:52', '2021-02-13 15:21:52'),
(103, '/storage/photos/product/1/HeWE6PomxzNLlKCiF4Yj.jpg', 49, '2021-02-13 15:21:52', '2021-02-13 15:21:52'),
(104, '/storage/photos/product/1/TRsYpIxAIb56UFQKiaIC.jpg', 52, '2021-02-13 15:53:49', '2021-02-13 15:53:49'),
(105, '/storage/photos/product/1/FWXHdJvQ9Gq691yY69kE.jpg', 52, '2021-02-13 15:53:49', '2021-02-13 15:53:49'),
(106, '/storage/photos/product/1/8iy7OIrZVgXghherLbL7.jpg', 52, '2021-02-13 15:53:49', '2021-02-13 15:53:49'),
(107, '/storage/photos/product/1/8ZSIlJlSk9KEgRdXcsqH.jpg', 54, '2021-02-13 16:04:32', '2021-02-13 16:04:32'),
(108, '/storage/photos/product/1/RRHGXgT0r2oSVagHqAKF.jpg', 56, '2021-02-13 16:14:15', '2021-02-13 16:14:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tag`
--

INSERT INTO `product_tag` (`id`, `created_at`, `updated_at`, `product_id`, `tag_id`) VALUES
(3, NULL, NULL, 21, 1),
(4, NULL, NULL, 21, 5),
(5, NULL, NULL, 22, 5),
(6, NULL, NULL, 22, 6),
(8, '2020-09-09 02:17:16', '2020-09-09 02:17:16', 23, 7),
(9, '2020-09-09 04:49:06', '2020-09-09 04:49:06', 24, 5),
(10, '2020-09-09 04:49:06', '2020-09-09 04:49:06', 24, 8),
(11, '2020-09-09 08:50:34', '2020-09-09 08:50:34', 25, 9),
(12, '2020-09-09 08:58:17', '2020-09-09 08:58:17', 26, 9),
(13, '2020-09-10 14:28:10', '2020-09-10 14:28:10', 27, 10),
(14, '2020-09-10 15:20:56', '2020-09-10 15:20:56', 27, 11),
(21, '2020-12-31 09:51:51', '2020-12-31 09:51:51', 35, 21),
(22, '2020-12-31 09:51:51', '2020-12-31 09:51:51', 35, 22),
(23, '2020-12-31 09:52:05', '2020-12-31 09:52:05', 34, 23),
(24, '2020-12-31 09:52:05', '2020-12-31 09:52:05', 34, 24),
(25, '2020-12-31 09:52:05', '2020-12-31 09:52:05', 34, 25),
(26, '2021-01-28 15:06:41', '2021-01-28 15:06:41', 37, 26),
(27, '2021-02-13 14:25:44', '2021-02-13 14:25:44', 39, 27),
(28, '2021-02-13 14:25:44', '2021-02-13 14:25:44', 39, 28),
(29, '2021-02-13 14:31:43', '2021-02-13 14:31:43', 40, 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `summary`, `image_path`, `content`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Dự án cung cấp thiết bị cho bệnh viện Y học Phóng Xạ và U Bướu Quân Đội', 'du-an-cung-cap-thiet-bi-cho-benh-vien-y-hoc-phong-xa-va-u-buou-quan-doi', 'Công ty Cổ phần Thiết bị Công nghệ Cao TM có trụ sở đặt tại 42 Phương Mai, Đống Đa, Hà Nội nhận được sự tin tưởng của bệnh viện Y học Phóng xạ và U Bướu Quân Đội, chúng tôi đã lắp đặt thành công nhiều trang thiết bị hiện đại cho bệnh viện như: Hệ thống gây kèm thở Pasithec Heyer, hệ thống đèn mổ có camera SL700 Led Daray (Anh Quốc)', '/storage/photos/project/3/0qzdU3JnIhSRlMaKJ0qZ.jpg', '<p><strong>Viện Y học ph&oacute;ng xạ v&agrave; U bướu Qu&acirc;n đội</strong><br />\r\n18 Định C&ocirc;ng Thượng, Định C&ocirc;ng, Ho&agrave;ng Mai, H&agrave; Nội<br />\r\nSố điện thoại: 0243 8552 353</p>\r\n\r\n<p>Mời c&aacute;c bạn c&ugrave;ng xem một số h&igrave;nh ảnh&nbsp;kĩ sư của TM Hi-Tech lắp đặt v&agrave; b&agrave;n giao m&aacute;y cho bệnh viện:</p>\r\n\r\n<p><img alt=\"Kỹ sư của TM Hi-Tech lắp đặt thành công đèn chiếu sáng SL 700 Daray cho bệnh viện\" src=\"https://tmhitech.vn/Uploads/images/news/lap-dat-thiet-bi-benh-vien-y-hoc-phong-xa-u-buou-quan-doi.jpg\" /></p>\r\n\r\n<p><em>Kỹ sư của TM Hi-Tech lắp đặt th&agrave;nh c&ocirc;ng đ&egrave;n chiếu s&aacute;ng SL 700 Daray cho bệnh viện&nbsp;</em></p>\r\n\r\n<p><em><img alt=\"Kỹ sư TM Hi-Tech lắp đặt và bàn giao máy gây mê kèm thở Pasithec Heyer\" src=\"https://tmhitech.vn/Uploads/images/news/lap-dat-thiet-bi-benh-vien-y-hoc-phong-xa-u-buou-quan-doi-1.jpg\" /></em></p>\r\n\r\n<p><em>Kỹ sư TM Hi-Tech lắp đặt v&agrave; b&agrave;n giao m&aacute;y g&acirc;y m&ecirc; k&egrave;m thở Pasithec Heyer</em></p>\r\n\r\n<p><em>Để đặt mua<strong>&nbsp;thiết bị bệnh viện</strong>&nbsp;cũng như được tư vấn cụ thể về từng sản phẩm, qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y li&ecirc;n hệ ngay với&nbsp;<strong>C&ocirc;ng ty Cổ phần Thiết bị C&ocirc;ng nghệ Cao TM</strong>&nbsp;theo số hotline:&nbsp;<strong>098 969 7177</strong>&nbsp;để được tư vấn v&agrave; hỗ trợ nhanh nhất.&nbsp;</em></p>', 3, NULL, '2020-09-23 16:35:36', '2020-09-23 16:35:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitments`
--

CREATE TABLE `recruitments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `recruitments`
--

INSERT INTO `recruitments` (`id`, `created_at`, `updated_at`, `deleted_at`, `content`) VALUES
(1, '2020-09-21 13:21:46', '2020-09-21 13:21:46', NULL, '<p>Đang cập nhật...</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `des`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Nhân viên', 'Nhân viên trong hệ thống', NULL, NULL, '2021-03-10 15:53:44', 1),
(3, 'Admin', 'Quản trị viên', NULL, NULL, '2021-01-26 14:38:08', 1),
(4, 'xxxcc', 'cccxx', '2021-01-03 07:38:02', '2020-09-15 13:20:15', '2021-01-03 07:38:02', 3),
(5, 'Shin33', 'xxx', '2020-10-06 02:09:42', '2020-09-15 14:28:50', '2020-10-06 02:09:42', 3),
(6, 'Khách hàng', 'Khách hàng', NULL, '2021-01-26 14:10:42', '2021-01-26 14:10:42', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Với đội ngũ chuy&ecirc;n gia c&oacute; kinh nghiệm gần 20 năm tham gia c&aacute;c dự &aacute;n đầu tư mua sắm trang thiết bị y tế, TM Hitech đảm bảo sẽ đưa ra những tư vấn hữu &iacute;ch cho dự &aacute;n của bạn. Ch&uacute;ng t&ocirc;i cam kết tư vấn miễn ph&iacute; trong to&agrave;n bộ dự &aacute;n với mục ti&ecirc;u tạo sự tin tưởng v&agrave; mối li&ecirc;n hệ tốt với kh&aacute;ch h&agrave;ng.</strong></p>\r\n\r\n<p>Trong bối cảnh thị trường rộng mở như hiện nay, c&oacute; rất nhiều d&ograve;ng thiết bị y tế với gi&aacute; cả v&agrave; chất lượng kh&aacute;c nhau để kh&aacute;ch h&agrave;ng lựa chọn. Điều n&agrave;y đ&ocirc;i khi l&agrave;m kh&oacute; cho c&aacute;c quyết định đầu tư của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Kinh nghiệm l&acirc;u năm trong ng&agrave;nh thiết bị y tế, TM Hitech tự tin c&oacute; thể hỗ trợ kh&aacute;ch h&agrave;ng thiết kế tổng thể dự &aacute;n, x&acirc;y dựng cấu h&igrave;nh chi tiết c&aacute;c d&ograve;ng thiết bị sử dụng cho bệnh viện hay ph&ograve;ng kh&aacute;m của bạn.</p>\r\n\r\n<p><strong>Dịch vụ trong bảo h&agrave;nh</strong></p>\r\n\r\n<p>Tất cả c&aacute;c thiết bị C&ocirc;ng ty cung cấp đều được bảo h&agrave;nh đảm bảo theo đ&uacute;ng ti&ecirc;u chuẩn v&agrave; cam kết của nh&agrave; sản xuất. Đội ngũ kỹ sư của C&ocirc;ng ty gi&agrave;u kinh nghiệm được cử đi tập huấn v&agrave; đ&agrave;o tạo h&agrave;ng năm ở nước ngo&agrave;i theo c&aacute;c kho&aacute; tập huấn của H&atilde;ng đại diện, nh&agrave; sản xuất... ch&uacute;ng t&ocirc;i hy vọng đ&aacute;p ứng được y&ecirc;u cầu của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bất cứ l&uacute;c n&agrave;o trong thời gian ngắn nhất, nh&acirc;n vi&ecirc;n kỹ thuật sẽ c&oacute; mặt theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng để chỉ dẫn th&ecirc;m những vấn đề li&ecirc;n quan đến kỹ thuật của m&aacute;y hoặc xử l&yacute; những sự cố bất thường.</p>\r\n\r\n<p><strong>Dịch vụ trong bảo h&agrave;nh</strong></p>\r\n\r\n<p>Kiểm tra định kỳ l&acirc;u d&agrave;i cho tất cả c&aacute;c thiết bị do C&ocirc;ng ty cung cấp.</p>\r\n\r\n<p>Sẵn s&agrave;ng k&yacute; hợp đồng bảo tr&igrave; nếu Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;u cầu, gi&aacute; cả ph&ugrave; hợp với gi&aacute; hiện h&agrave;nh tr&ecirc;n thị trường.</p>\r\n\r\n<p>Với kinh nghiệm &amp; uy t&iacute;n của m&igrave;nh, TMHitech lu&ocirc;n cam kết ho&agrave;n th&agrave;nh tốt nhất c&aacute;c y&ecirc;u cầu về cung cấp, lắp đặt &amp; hướng dẫn, tư vấn cho c&aacute;c kh&aacute;ch h&agrave;ng.</p>', NULL, '2020-09-21 09:01:08', '2020-09-21 09:01:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image_path`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(2, '/storage/photos/slide/3/AzAlpnCCkVoelEHPKL5u.png', '2020-09-17 14:31:51', '2020-09-17 14:10:06', '2020-09-17 14:31:51', 3),
(3, '/storage/photos/slide/3/pPsfmCOz97eEuMm08vfY.png', '2020-09-17 14:31:49', '2020-09-17 14:10:21', '2020-09-17 14:31:49', 3),
(4, '/storage/photos/slide/3/2Qv5wIExu2PUZFl2pimm.png', '2020-09-17 14:31:47', '2020-09-17 14:10:29', '2020-09-17 14:31:47', 3),
(5, '/storage/photos/slide/3/AEj7LIbNKxg3KfVdwZfp.jpg', NULL, '2020-09-17 14:32:54', '2020-09-17 14:32:54', 3),
(6, '/storage/photos/slide/3/ZxcgUERieoeNhbhvwnik.jpg', NULL, '2020-09-17 14:33:01', '2020-09-17 14:33:01', 3),
(7, '/storage/photos/slide/3/mlZYCV6a9aE0sJyELHVa.jpg', NULL, '2020-09-17 14:33:09', '2020-09-17 14:33:09', 3),
(8, '/storage/photos/slide/3/EITJDznAHST5fPJ3ptPJ.jpg', NULL, '2020-09-17 14:33:15', '2020-09-17 14:33:15', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'bla', NULL, NULL, NULL, 1),
(5, 'khai', NULL, '2020-09-08 18:33:53', '2020-09-08 18:33:53', 0),
(7, 'lll', NULL, '2020-09-09 02:17:16', '2020-09-09 02:17:16', 0),
(8, 'sdva', NULL, '2020-09-09 04:49:06', '2020-09-09 04:49:06', 0),
(9, 'dsa', NULL, '2020-09-09 08:50:34', '2020-09-09 08:50:34', 0),
(10, 'sa', NULL, '2020-09-10 14:28:10', '2020-09-10 14:28:10', 0),
(12, 'xnxx', NULL, '2020-09-12 10:02:23', '2021-01-03 05:19:54', 2),
(14, 'xxxxx', '2020-10-05 04:19:09', '2020-09-12 10:03:52', '2020-10-05 04:19:09', 2),
(15, 'Siêu âm', '2020-10-05 04:14:33', '2020-09-26 16:49:56', '2020-10-05 04:14:33', 3),
(16, 'Hệ thống siêu âm đen trắng xách tay kỹ thuật số KUP-101', NULL, '2020-10-10 15:23:02', '2020-10-10 15:23:02', NULL),
(17, 'Máy siêu âm', NULL, '2020-10-10 15:23:02', '2020-10-10 15:23:02', NULL),
(18, 'máy siêu âm đen trắng', NULL, '2020-10-10 15:23:02', '2020-10-10 15:23:02', NULL),
(19, 'Chẩn đoán hình ảnh', NULL, '2020-10-10 15:35:26', '2020-10-10 15:35:26', NULL),
(20, 'Hệ thống máy nội soi', NULL, '2020-10-10 15:35:26', '2020-10-10 15:35:26', NULL),
(21, 'Chẩn đoán hình ảnh', NULL, '2020-12-31 09:51:51', '2020-12-31 09:51:51', 1),
(22, 'Hệ thống máy nội soi', NULL, '2020-12-31 09:51:51', '2020-12-31 09:51:51', 1),
(23, 'Hệ thống siêu âm đen trắng xách tay kỹ thuật số KUP-101', NULL, '2020-12-31 09:52:05', '2020-12-31 09:52:05', 1),
(24, 'Máy siêu âm', NULL, '2020-12-31 09:52:05', '2020-12-31 09:52:05', 1),
(25, 'máy siêu âm đen trắng', NULL, '2020-12-31 09:52:05', '2020-12-31 09:52:05', 1),
(26, '234', NULL, '2021-01-28 15:06:41', '2021-01-28 15:06:41', NULL),
(27, 'máy thở', NULL, '2021-02-13 14:25:44', '2021-02-13 14:25:44', NULL),
(28, 'máy thở xách tay', NULL, '2021-02-13 14:25:44', '2021-02-13 14:25:44', NULL),
(29, 'Monitor theo dõi bệnh nhân', NULL, '2021-02-13 14:31:43', '2021-02-13 14:31:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `phone`, `address`) VALUES
(1, 'Khải Lê', 'abc@gmail.com', NULL, '$2y$10$VGLFgWoScV9iea6qycUat.CV0sHLEIMQil/opZcjmlWQPNowUB4s6', NULL, NULL, '2021-02-20 16:50:09', NULL, '0868845289', 'Nam định2'),
(20, 'Khải', 'abcd@gmail.com', NULL, '$2y$10$gJjEp5DI/wwnN7inmCXQy.wGHuj4MJC3BTb6o8.8Z09VKknFKPlAm', NULL, '2021-01-26 14:09:51', '2021-01-26 14:11:07', NULL, '0868845289', 'Nam Định'),
(21, 'Lê Quang Khải', 'abcs@gmail.com', NULL, '$2y$10$T6YE0Y9/ybMo9aOk/RwQO.kdSLG7tOPkzIoNKKBEUTj8basmezoAG', NULL, '2021-01-26 14:16:12', '2021-01-26 14:16:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 1, 3, NULL, NULL),
(3, 5, 1, NULL, NULL),
(4, 5, 3, NULL, NULL),
(5, 7, 1, NULL, NULL),
(6, 7, 3, NULL, NULL),
(7, 9, 1, NULL, NULL),
(8, 10, 3, NULL, NULL),
(9, 11, 1, NULL, NULL),
(12, 3, 3, NULL, NULL),
(13, 15, 3, NULL, NULL),
(14, 16, 3, NULL, NULL),
(15, 20, 6, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `intros`
--
ALTER TABLE `intros`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_cates`
--
ALTER TABLE `post_cates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitments`
--
ALTER TABLE `recruitments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `intros`
--
ALTER TABLE `intros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `post_cates`
--
ALTER TABLE `post_cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `recruitments`
--
ALTER TABLE `recruitments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
