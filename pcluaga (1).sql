-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2025 lúc 12:14 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pcluaga`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `link`, `position`, `status`, `created_at`, `updated_at`) VALUES
(13, 'slider1', 'banners/XMCN2j3nQtU6L7OQr6ZZghqngRygYUj4s3EDsUZy.webp', NULL, 3, 1, '2025-06-22 13:06:48', '2025-06-22 13:10:44'),
(14, 'slider2', 'banners/YdBym5AuJCy11Agjto5HnoC0Sg4YDDDcXSZZJDR4.webp', NULL, 1, 1, '2025-06-22 13:07:26', '2025-06-22 13:07:26'),
(15, 'slider3', 'banners/ClwXlSOopBMutCfKDmmODBSv04rhbtIVXHGmzEtu.webp', NULL, 2, 1, '2025-06-22 13:07:48', '2025-06-22 13:17:05'),
(16, 'banner1', 'banners/7YsDkZGe7dnRzMMXmeIOlbbJfLMjCNAa3sA3jbZg.webp', NULL, 0, 0, '2025-06-22 13:08:34', '2025-06-22 13:16:31'),
(17, 'banner2', 'banners/EJulYHVJfwXpIklmcxl5pkU5IpJNuR4OfbN6SaLg.webp', NULL, 0, 0, '2025-06-22 13:08:43', '2025-06-22 13:16:35'),
(18, 'banner3', 'banners/lO6XKi9QXLvp8li8QEx3OkdG3s97LdxzDBnRCpCf.jpg', NULL, 0, 0, '2025-06-22 13:08:55', '2025-06-22 13:16:38'),
(19, 'cbanner1', 'banners/adLxkQTdJBukpUiu3orZomFqLIVqDfh4GUvPWmMI.jpg', NULL, 4, 1, '2025-06-22 13:09:08', '2025-06-22 13:11:16'),
(20, 'cbanner2', 'banners/i5rPIXNKu9P9SZhkwyKCVEuQv6XBhCQ8qJiMvWX5.webp', NULL, 7, 1, '2025-06-22 13:09:18', '2025-06-22 13:09:18'),
(21, 'cbanner3', 'banners/EWZIar76pyjUOd2rvykEVKNw32x7BhT4fTVdIqLe.webp', NULL, 8, 1, '2025-06-22 13:09:34', '2025-06-22 13:09:34'),
(22, 'cbanner4', 'banners/8LEMhoNB7LcGxFJQUf57pd7unfSFZC1EjHW4TuPt.webp', NULL, 10, 1, '2025-06-22 13:09:46', '2025-06-22 13:09:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2025-06-22 13:03:40', '2025-06-22 13:03:40'),
(2, 1, '2025-06-22 13:40:10', '2025-06-22 13:40:10'),
(3, 3, '2025-06-22 14:38:15', '2025-06-22 14:38:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Linh kiện máy tính', 'linh-kien-may-tinh', 1, NULL, '2025-06-21 15:58:49', '2025-06-21 09:56:30'),
(3, 'Mainboard', 'mainboard', 1, 1, '2025-06-21 15:58:49', '2025-06-21 09:56:43'),
(4, 'CPU', 'cpu', 1, 1, '2025-06-21 15:58:49', '2025-06-22 02:10:33'),
(5, 'RAM', 'ram', 1, 1, '2025-06-21 15:58:49', '2025-06-21 09:56:38'),
(6, 'Ổ cứng SSD', 'o-cung-ssd', 1, 1, '2025-06-21 15:58:49', '2025-06-21 09:56:36'),
(7, 'Card màn hình', 'card-man-hinh', 1, 1, '2025-06-21 15:58:49', '2025-06-21 09:56:34'),
(11, 'MSI', 'msi', 1, 4, '2025-06-21 09:57:43', '2025-06-22 02:10:37'),
(12, 'PC', 'pc', 1, NULL, '2025-06-21 11:44:51', '2025-06-21 11:44:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `payment_method` enum('cod','bank') NOT NULL,
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `total_price` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `payment_method`, `status`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 4874250.00, '2024-01-22 13:39:41', '2025-06-22 14:07:07'),
(2, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 6499000.00, '2025-03-22 13:45:11', '2025-06-22 14:07:04'),
(3, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 193918000.00, '2025-06-22 14:08:09', '2025-06-22 14:08:24'),
(4, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 10999000.00, '2024-08-22 14:10:44', '2025-06-22 14:11:51'),
(5, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 13041750.00, '2025-01-22 14:11:00', '2025-06-22 14:11:48'),
(6, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 28489000.00, '2024-06-22 14:11:15', '2025-06-22 14:11:46'),
(7, 2, 'quocphung2005@gmail.com', 'quocphung2005@gmail.com', '0356042005', 'Sơn Trung Quốc Oai', 'cod', 'completed', 43865000.00, '2025-02-22 14:11:34', '2025-06-22 14:11:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 31, 4874250.00, 1, '2025-06-22 13:39:41', '2025-06-22 13:39:41'),
(2, 2, 31, 6499000.00, 1, '2025-01-22 13:45:11', '2025-06-22 13:45:11'),
(3, 3, 29, 21990000.00, 1, '2025-03-22 14:08:09', '2025-06-22 14:08:09'),
(4, 3, 30, 23990000.00, 5, '2025-01-22 14:08:09', '2025-06-22 14:08:09'),
(5, 3, 27, 10990000.00, 1, '2024-08-22 14:08:09', '2025-06-22 14:08:09'),
(6, 3, 28, 18990000.00, 1, '2025-04-22 14:08:09', '2025-06-22 14:08:09'),
(7, 3, 39, 10999000.00, 1, '2025-06-22 14:08:09', '2025-06-22 14:08:09'),
(8, 3, 40, 10999000.00, 1, '2024-06-22 14:08:09', '2025-06-22 14:08:09'),
(9, 4, 40, 10999000.00, 1, '2025-06-22 14:10:44', '2025-06-22 14:10:44'),
(10, 5, 31, 4874250.00, 1, '2025-06-22 14:11:00', '2025-06-22 14:11:00'),
(11, 5, 37, 8167500.00, 1, '2025-06-22 14:11:00', '2025-06-22 14:11:00'),
(12, 6, 29, 21990000.00, 1, '2025-06-22 14:11:15', '2025-06-22 14:11:15'),
(13, 6, 35, 6499000.00, 1, '2025-06-22 14:11:15', '2025-06-22 14:11:15'),
(14, 7, 26, 11990000.00, 1, '2025-06-22 14:11:34', '2025-06-22 14:11:34'),
(15, 7, 28, 18990000.00, 1, '2025-06-22 14:11:34', '2025-06-22 14:11:34'),
(16, 7, 38, 6442500.00, 2, '2025-06-22 14:11:34', '2025-06-22 14:11:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `slug`, `category_id`, `user_id`, `price`, `stock`, `description`, `status`, `created_at`, `updated_at`) VALUES
(26, 'PCGM1', 'PC FASTER GAMING 10400F - RTX 3050 6GB ( ALL NEW- Bảo hành 36 Tháng)- 34 slots- 10 HN- 14 HCM', 'pc-faster-gaming-10400f-rtx-3050-6gb-all-new-bao-hanh-36-thang-34-slots-10-hn-14-hcm', 12, NULL, 11990000.00, 99, '<p>&lt;p&gt;&lt;strong&gt;Tất cả linh kiện đều All NEW - bảo h&amp;agrave;nh 36 th&amp;aacute;ng&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;&lt;strong&gt;Bộ PC tr&amp;ecirc;n đ&amp;atilde; &amp;aacute;p dụng khuyến mại Shock - N&amp;ecirc;n sẽ kh&amp;ocirc;ng&amp;nbsp;k&amp;egrave;m bất k&amp;igrave; KM&amp;nbsp;n&amp;agrave;o kh&amp;aacute;c&lt;/strong&gt;&lt;/p&gt; &lt;hr&gt; &lt;h2&gt;&lt;strong&gt;TH&amp;Ocirc;NG SỐ KỸ THUẬT&lt;/strong&gt;&lt;/h2&gt; &lt;table border=\"1\" cellspacing=\"0\" cellpadding=\"0\"&gt; &lt;tbody&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;STT&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;M&amp;ocirc; tả thiết bị&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;SL&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;Bảo h&amp;agrave;nh&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;CPU Intel Core i5-10400F (2.9GHz turbo up to 4.3Ghz, 6 nh&amp;acirc;n 12 luồng, 12MB Cache, 65W) - Socket Intel LGA 1200&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;36th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;2&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;Mainboard ASRock H510M-H2/M.2 SE&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;36th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;3&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&amp;nbsp;&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;36th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;4&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;&amp;nbsp;Ổ cứng SSD TeamGroup CX2 256GB 2.5 inch SATA III&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;36th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;5&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;Nguồn m&amp;aacute;y t&amp;iacute;nh AIGO VK550 - 500W (M&amp;agrave;u Đen)&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;36th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;6&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;CARD M&amp;Agrave;N H&amp;Igrave;NH ZOTAC GAMING GeForce RTX 3050 Twin Edge OC&amp;nbsp;&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;36th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;7&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;&amp;nbsp;VỎ CASE XIGMATEK ALPHARD M 3GF&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;12th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&lt;strong&gt;8&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;Tản nhiệt kh&amp;iacute; CPU Leopard A200 Plus - Đen&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;1&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;strong&gt;12th&lt;/strong&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;&amp;nbsp;&lt;/td&gt; &lt;td&gt;&amp;nbsp;&lt;/td&gt; &lt;td&gt;&amp;nbsp;&lt;/td&gt; &lt;td&gt;&amp;nbsp;&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt; &lt;/table&gt; &lt;hr&gt; &lt;p&gt;&lt;strong&gt;Upgrade&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;&lt;strong&gt;N&amp;acirc;ng cấp SSD 512GB th&amp;ecirc;m 690K&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;&lt;strong&gt;N&amp;acirc;ng cấp Ram 32GB th&amp;ecirc;m 1 triệu&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;&lt;strong&gt;N&amp;acirc;ng cấp Ram RGB th&amp;ecirc;m 200K&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;&lt;strong&gt;N&amp;acirc;ng cấp Tản nhiệt kh&amp;iacute; CR1000 th&amp;ecirc;m 150K&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;&lt;strong&gt;N&amp;acirc;ng cấp Case Bể C&amp;aacute; 3 mặt k&amp;iacute;nh th&amp;ecirc;m 590K&lt;/strong&gt;&lt;/p&gt; &lt;hr&gt; &lt;h2&gt;&lt;strong&gt;M&amp;Ocirc; TẢ SẢN PHẨM&lt;/strong&gt;&lt;/h2&gt; &lt;div&gt;&lt;strong&gt;PC FASTER GAMING 10400F - RTX 3050 6GB&lt;/strong&gt; l&amp;agrave; bộ PC Gaming - PC Đồ Họa Hiệu năng cao, được x&amp;acirc;y dựng để đ&amp;aacute;p ứng nhu cầu chơi game, học tập, l&amp;agrave;m việc với mức gi&amp;aacute; v&amp;ocirc; c&amp;ugrave;ng hợp l&amp;yacute; . C&amp;oacute; thể c&amp;acirc;n tốt c&amp;aacute;c tựa game Moba, FPS : LOL, FIFA, DOTA, CSGO, GTA 5 , PUBG.... cũng như c&amp;aacute;c t&amp;aacute;c vụ văn ph&amp;ograve;ng , chỉnh sửa ảnh , edit video cơ bản. &lt;h3&gt;&lt;strong&gt;1.&amp;nbsp;CPU Intel Core i5-10400F (2.9GHz turbo up to 4.3Ghz, 6 nh&amp;acirc;n 12 luồng, 12MB Cache, 65W) - Socket Intel LGA 1200&lt;/strong&gt;&lt;/h3&gt; &lt;p&gt;&lt;strong&gt;CPU Intel Core i5-10400F&lt;/strong&gt;&amp;nbsp;ch&amp;iacute;nh l&amp;agrave; sự lựa chọn ho&amp;agrave;n mỹ cho những ai muốn trải nghiệm hiệu suất đa nhiệm tốt nhưng c&amp;oacute; gi&amp;aacute; th&amp;agrave;nh rẻ. CPU Intel Core i5-10400F đ&amp;atilde; cắt giảm đi iGPU t&amp;iacute;ch hợp sẵn nhưng vẫn đem lại trải nghiệm l&amp;agrave;m việc tốt tương tự như bộ xử l&amp;yacute; Intel Core i5 10400 th&amp;ocirc;ng thường. mẫu CPU n&amp;agrave;y sở hữu 6 nh&amp;acirc;n 12 luồng cho đ&amp;aacute;p ứng tốt nhu cầu l&amp;agrave;m việc v&amp;agrave; giải tr&amp;iacute; c&amp;ugrave;ng l&amp;uacute;c. C&amp;oacute; thể n&amp;oacute;i, với mức gi&amp;aacute; ph&amp;ugrave; hợp, đ&amp;acirc;y chắc chắn l&amp;agrave; lựa chọn số 1 cho người d&amp;ugrave;ng phổ th&amp;ocirc;ng.&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;div&gt; &lt;p&gt;&lt;img src=\"https://file.hstatic.net/1000288298/file/i5_10400f_grande.jpg\"&gt;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;h3&gt;&amp;nbsp;&lt;/h3&gt; &lt;h3&gt;&lt;strong&gt;3. RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&amp;nbsp;&lt;/strong&gt;&lt;/h3&gt; &lt;p&gt;RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&amp;nbsp; l&amp;agrave; d&amp;ograve;ng sản phẩm RAM chất lượng , ổn định , &amp;nbsp;c&amp;oacute; hiệu suất cực cao , tốc độ truyền tải nhanh ch&amp;oacute;ng, khả năng tương th&amp;iacute;ch tốt cho ph&amp;eacute;p tất cả c&amp;aacute;c game thủ vượt giới hạn tốc độ v&amp;agrave; tận hưởng thế giới game ấn tượng nhất . Được thiết kế cho c&amp;aacute;c game thủ v&amp;agrave; những người &amp;nbsp;đam m&amp;ecirc;. những người muốn n&amp;acirc;ng cấp tiết kiệm chi ph&amp;iacute; để chơi game nhanh hơn.Đ&amp;acirc;y l&amp;agrave; sự lựa chọn tuyệt vời cho bộ PC Gaming gi&amp;aacute; rẻ m&amp;agrave; c&amp;aacute;c game thủ kh&amp;ocirc;ng n&amp;ecirc;n bỏ qua.&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;p&gt;&lt;img src=\"https://file.hstatic.net/1000288298/file/ram-geil-evo-spear-16gb-ddr4-bus-3200_pcm_2114afa10c95413db9ef7c74bf1f9d4d_grande.png\"&gt;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;h3&gt;4.&amp;nbsp;&amp;nbsp;Ổ cứng SSD TeamGroup CX2 256GB 2.5 inch SATA III&lt;/h3&gt; &lt;p&gt;SSD TeamGroup CX2 được trang bị c&amp;ocirc;ng nghệ FLASH hiện đại, tiết kiệm năng lượng ti&amp;ecirc;u thụ cũng như tốc độ truyền cao. Hiệu suất mang lại kh&amp;aacute;c hẳn so với những chiếc ổ cứng truyền thống trước đ&amp;acirc;y. SSD TeamGroup CX2 sử dụng c&amp;ocirc;ng nghệ SLC Caching t&amp;acirc;n tiến được nh&amp;agrave; sản xuất đưa v&amp;agrave;o nhằm tối ưu hiệu suất l&amp;agrave;m việc tr&amp;ecirc;n m&amp;aacute;y t&amp;iacute;nh cho người d&amp;ugrave;ng. Sở hữu tốc độ đọc/ghi nhanh gấp 4 lần so với c&amp;aacute;c ổ cứng truyền thống. Được trang bị khả năng chống sốc v&amp;agrave; rơi 1500G/0.5mili gi&amp;acirc;y mang đến ổ cứng TeamGroup bền bỉ hơn. Đồng thời SSD CX2 cũng được thiết kế với trải nghiệm kh&amp;ocirc;ng g&amp;acirc;y ra tiếng ồn cơ học kh&amp;oacute; chịu tối ưu trải nghiệm người d&amp;ugrave;ng hơn. Để k&amp;eacute;o d&amp;agrave;i tuổi thọ hơn cho ổ cứng SSD TeamGroup CX2 c&amp;ograve;n được trang bị th&amp;ecirc;m c&amp;ocirc;ng nghệ Wear-Leveling v&amp;agrave; chức năng ECC. Tất cả nhằm mang đến trải nghiệm sử dụng tốt hơn cho người d&amp;ugrave;ng với tốc độ tin cậy trong qu&amp;aacute; tr&amp;igrave;nh truyền dữ liệu. C&amp;ugrave;ng đ&amp;oacute; l&amp;agrave; mức độ bền bỉ khi tuổi thọ của SSD được đảm bảo tốt hơn.&amp;nbsp;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;p&gt;&lt;img src=\"https://file.hstatic.net/1000288298/file/o_cung_ssd_teamgroup_cx2_256gb_2.5_inch_sata_iii_grande.jpg\"&gt;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;h3&gt;&lt;strong&gt;5. &amp;nbsp;CARD M&amp;Agrave;N H&amp;Igrave;NH ZOTAC GAMING GeForce RTX 3050 Twin Edge OC&amp;nbsp;&lt;/strong&gt;&lt;/h3&gt; &lt;p&gt;CARD M&amp;Agrave;N H&amp;Igrave;NH ZOTAC GAMING GeForce RTX 3050 Twin Edge OC&amp;nbsp;&amp;nbsp; l&amp;agrave; một sản phẩm đ&amp;aacute;ng ch&amp;uacute; &amp;yacute; trong ph&amp;acirc;n kh&amp;uacute;c card đồ họa tầm trung.Với kiến tr&amp;uacute;c NVIDI Ampere mới nhất sử dụng chip đồ họa NVIDIA GeForce RTX 3050, c&amp;oacute; khả năng xử l&amp;yacute; đồ họa 3D mượt m&amp;agrave;, hỗ trợ c&amp;ocirc;ng nghệ ray tracing v&amp;agrave; DLSS., RTX 3050 DUAL OC 6GB kết hợp hiệu suất nhiệt tối ưu với khả năng tương th&amp;iacute;ch cao. Đ&amp;acirc;y l&amp;agrave; sự lựa chọn ho&amp;agrave;n hảo cho những game thủ muốn c&amp;oacute; hiệu suất đồ họa mạnh trong một cấu h&amp;igrave;nh nhỏ gọn.&lt;/p&gt; &lt;p&gt;&lt;img src=\"https://file.hstatic.net/1000288298/file/zt-a30500h-10m-image01_grande.jpg\"&gt;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;p&gt;&amp;nbsp;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt;</p>', 1, '2025-06-22 12:53:23', '2025-06-22 14:11:34'),
(27, 'PCGM2', 'PC BEST FOR GAMING i5 10400F- GTX 1660 Super 6GB(Tất cả linh kiện đều All New - bảo hành 36 tháng) - 16 slots - 8HN - 8 HCM', 'pc-best-for-gaming-i5-10400f-gtx-1660-super-6gbtat-ca-linh-kien-deu-all-new-bao-hanh-36-thang-16-slots-8hn-8-hcm', 12, NULL, 10990000.00, 49, '<p><strong>Tất cả linh kiện đều All NEW - bảo h&agrave;nh 36 th&aacute;ng</strong></p>\r\n<p><strong>Bộ PC tr&ecirc;n đ&atilde; &aacute;p dụng khuyến mại Shock - N&ecirc;n sẽ kh&ocirc;ng&nbsp;k&egrave;m bất k&igrave; KM&nbsp;n&agrave;o kh&aacute;c</strong></p>\r\n<hr>\r\n<h3><strong>TH&Ocirc;NG SỐ KỸ THUẬT</strong></h3>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><strong>STT</strong></td>\r\n<td><strong>M&ocirc; tả thiết bị</strong></td>\r\n<td><strong>SL</strong></td>\r\n<td><strong>Bảo h&agrave;nh</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>1</strong></td>\r\n<td><strong>CPU Intel Core i5-10400F (2.9GHz turbo up to 4.3Ghz, 6 nh&acirc;n 12 luồng, 12MB Cache, 65W) - Socket Intel LGA 1200</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>2</strong></td>\r\n<td><strong>Mainboard ASRock H510M-H2/M.2 SE</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>3</strong></td>\r\n<td><strong>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&nbsp;</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>4</strong></td>\r\n<td><strong>Ổ cứng SSD TeamGroup CX2 256GB 2.5 inch SATA III</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>5</strong></td>\r\n<td><strong>Nguồn m&aacute;y t&iacute;nh AIGO VK550 - 500W (M&agrave;u Đen)</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>6</strong></td>\r\n<td><strong>Card m&agrave;n h&igrave;nh NVIDIA OCPC GTX 1660 Super 6GB GDDR6</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>7</strong></td>\r\n<td><strong>&nbsp;VỎ CASE XIGMATEK ALPHARD M 3GF</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>12th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>8</strong></td>\r\n<td><strong>Tản nhiệt kh&iacute; CPU Leopard A200 Plus - Đen</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>12th</strong></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<p><strong>Upgrade</strong></p>\r\n<p><strong>N&acirc;ng cấp SSD 512GB th&ecirc;m 690K</strong></p>\r\n<p><strong>N&acirc;ng cấp Ram 32GB th&ecirc;m 1 triệu</strong></p>\r\n<p><strong>N&acirc;ng cấp Ram RGB th&ecirc;m 200K</strong></p>\r\n<p><strong>N&acirc;ng cấp Tản nhiệt kh&iacute; CR1000 th&ecirc;m 150K</strong></p>\r\n<p><strong>N&acirc;ng cấp Case Bể C&aacute; 3 mặt k&iacute;nh th&ecirc;m 590K</strong></p>\r\n<hr>\r\n<p><strong>M&Ocirc; TẢ SẢN PHẨM</strong></p>\r\n<p>PC BEST FOR GAMING i5 10400F- GTX 1660 Super 6GB&nbsp;được x&acirc;y dựng để đ&aacute;p ứng nhu cầu chơi game, học tập, l&agrave;m việc với mức gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute; . C&oacute; thể c&acirc;n tốt c&aacute;c tựa game Moba, FPS : LOL, FIFA, DOTA, CSGO, GTA 5 , PUBG.... cũng như c&aacute;c t&aacute;c vụ &nbsp;văn ph&ograve;ng , chỉnh sửa ảnh , video cơ bản .</p>\r\n<h3><strong>1. CPU Intel Core i5-10400F (2.9GHz turbo up to 4.3Ghz, 6 nh&acirc;n 12 luồng, 12MB Cache, 65W) - Socket Intel LGA 1200</strong></h3>\r\n<p>CPU Intel Core i5-10400F ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n mỹ cho những ai muốn trải nghiệm hiệu suất đa nhiệm tốt nhưng c&oacute; gi&aacute; th&agrave;nh rẻ. CPU Intel Core i5-10400F đ&atilde; cắt giảm đi iGPU t&iacute;ch hợp sẵn nhưng vẫn đem lại trải nghiệm l&agrave;m việc tốt tương tự như bộ xử l&yacute; Intel Core i5 10400 th&ocirc;ng thường. mẫu CPU n&agrave;y sở hữu 6 nh&acirc;n 12 luồng cho đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; giải tr&iacute; c&ugrave;ng l&uacute;c. C&oacute; thể n&oacute;i, với mức gi&aacute; ph&ugrave; hợp, đ&acirc;y chắc chắn l&agrave; lựa chọn số 1 cho người d&ugrave;ng phổ th&ocirc;ng.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/i5_10400f_33a0f0182b7b4dcd8ea5f0385d464a2c_grande.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<h3>&nbsp;</h3>\r\n<p>&nbsp;</p>\r\n<h3><strong>3. &nbsp;RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&nbsp;</strong></h3>\r\n<p>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&nbsp; l&agrave; d&ograve;ng sản phẩm RAM chất lượng , ổn định , &nbsp;c&oacute; hiệu suất cực cao , tốc độ truyền tải nhanh ch&oacute;ng, khả năng tương th&iacute;ch tốt cho ph&eacute;p tất cả c&aacute;c game thủ vượt giới hạn tốc độ v&agrave; tận hưởng thế giới game ấn tượng nhất . Được thiết kế cho c&aacute;c game thủ v&agrave; những người &nbsp;đam m&ecirc;. những người muốn n&acirc;ng cấp tiết kiệm chi ph&iacute; để chơi game nhanh hơn.Đ&acirc;y l&agrave; sự lựa chọn tuyệt vời cho bộ PC Gaming gi&aacute; rẻ m&agrave; c&aacute;c game thủ kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3>4.&nbsp;&nbsp;Ổ cứng SSD TeamGroup CX2 256GB 2.5 inch SATA III</h3>\r\n<p>SSD TeamGroup CX2 được trang bị c&ocirc;ng nghệ FLASH hiện đại, tiết kiệm năng lượng ti&ecirc;u thụ cũng như tốc độ truyền cao. Hiệu suất mang lại kh&aacute;c hẳn so với những chiếc ổ cứng truyền thống trước đ&acirc;y. SSD TeamGroup CX2 sử dụng c&ocirc;ng nghệ SLC Caching t&acirc;n tiến được nh&agrave; sản xuất đưa v&agrave;o nhằm tối ưu hiệu suất l&agrave;m việc tr&ecirc;n m&aacute;y t&iacute;nh cho người d&ugrave;ng. Sở hữu tốc độ đọc/ghi nhanh gấp 4 lần so với c&aacute;c ổ cứng truyền thống. Được trang bị khả năng chống sốc v&agrave; rơi 1500G/0.5mili gi&acirc;y mang đến ổ cứng TeamGroup bền bỉ hơn. Đồng thời SSD CX2 cũng được thiết kế với trải nghiệm kh&ocirc;ng g&acirc;y ra tiếng ồn cơ học kh&oacute; chịu tối ưu trải nghiệm người d&ugrave;ng hơn. Để k&eacute;o d&agrave;i tuổi thọ hơn cho ổ cứng SSD TeamGroup CX2 c&ograve;n được trang bị th&ecirc;m c&ocirc;ng nghệ Wear-Leveling v&agrave; chức năng ECC. Tất cả nhằm mang đến trải nghiệm sử dụng tốt hơn cho người d&ugrave;ng với tốc độ tin cậy trong qu&aacute; tr&igrave;nh truyền dữ liệu. C&ugrave;ng đ&oacute; l&agrave; mức độ bền bỉ khi tuổi thọ của SSD được đảm bảo tốt hơn.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/o_cung_ssd_teamgroup_cx2_256gb_2.5_inch_sata_iii_grande.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>5. Card M&agrave;n H&igrave;nh OCPC GTX 1660 Super 6GB GDDR6</strong></h3>\r\n<p>Card m&agrave;n h&igrave;nh OCPC GTX 1660 Super 6GB GDDR6 l&agrave; một trong những lựa chọn đ&aacute;ng c&acirc;n nhắc cho c&aacute;c game thủ v&agrave; người d&ugrave;ng s&aacute;ng tạo nội dung muốn n&acirc;ng cấp hiệu suất đồ họa của họ. Với mức gi&aacute; hợp l&yacute; v&agrave; hiệu năng tốt, n&oacute; mang lại trải nghiệm tuyệt vời cho người d&ugrave;ng trong ph&acirc;n kh&uacute;c tầm trung.Với việc sử dụng kiến ​​tr&uacute;c Turing của NVIDIA , bộ nhớ GDDR6 6GB, card n&agrave;y c&oacute; khả năng xử l&yacute; đồ họa mạnh mẽ v&agrave; hiệu quả. N&oacute; cung cấp tốc độ truyền dữ liệu cao hơn v&agrave; khả năng xử l&yacute; đồ họa nhanh ch&oacute;ng hơn so với thế hệ trước ngo&agrave;i ra c&ograve;n được hỗ trợ c&ocirc;ng nghệ tối ưu h&oacute;a cho tr&ograve; chơi, gi&uacute;p tăng hiệu suất v&agrave; đem lại h&igrave;nh ảnh sắc n&eacute;t, mượt m&agrave;. Với hiệu suất n&agrave;y, người d&ugrave;ng c&oacute; thể l&agrave;m việc với c&aacute;c phần mềm đồ họa mượt m&agrave; hay &nbsp;trải nghiệm c&aacute;c tựa game y&ecirc;u th&iacute;ch ở độ ph&acirc;n giải Full HD m&agrave; kh&ocirc;ng gặp vấn đề g&igrave;.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/card_man_hinh_ocpc_gtx_16660_super_6gb_pcm_grande.jpg\"></p>', 1, '2025-06-22 12:57:37', '2025-06-22 14:08:09'),
(28, 'PCGM3', 'PC CHƠI GAME HIỆU SUẤT CAO RTX 3060 12GB - 12400F ( ALL NEW - Bảo hành 36 tháng) - còn 10 Slots Order 5 Hà Nội - HCM 5 slots', 'pc-choi-game-hieu-suat-cao-rtx-3060-12gb-12400f-all-new-bao-hanh-36-thang-con-10-slots-order-5-ha-noi-hcm-5-slots', 12, NULL, 18990000.00, 48, '<p><strong>*** Kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn m&atilde; &nbsp;VGA MSI RTX 3060 VENTUS 2X OC 12GB&nbsp;<br>Hoặc VGA Asus DUAL RTX 3060-12G-GAMING V2&nbsp;<br>Hoặc VGA Gigabyte GeForce RTX 3060 WINDFORCE OC 12GB</strong></p>\r\n<p><strong>Tất cả đều All NEW - Bảo h&agrave;nh 36 th&aacute;ng</strong></p>\r\n<p><strong>Bộ PC n&agrave;y đang &aacute;p dụng KM SHOCK - N&ecirc;n sẽ kh&ocirc;ng &aacute;p dụng KM chung kh&aacute;c</strong></p>\r\n<hr>\r\n<h3>Th&ocirc;ng số kỹ thuật&nbsp;</h3>\r\n<div>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"xl67\"><strong>STT</strong></td>\r\n<td class=\"xl67\"><strong>M&ocirc; tả thiết bị</strong></td>\r\n<td class=\"xl67\"><strong>SL</strong></td>\r\n<td class=\"xl67\"><strong>BH</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl68\"><strong>CPU Intel Core i5-12400F (Up To 4.40GHz, 6 Nh&acirc;n 12 Luồng,18MB Cache, Socket 1700, Alder Lake)- Tray</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>2</strong></td>\r\n<td class=\"xl68\"><strong>Mainboard ASUS B760M -K DDR4</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>3</strong></td>\r\n<td class=\"xl68\"><strong>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>4</strong></td>\r\n<td class=\"xl68\"><strong>Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>5</strong></td>\r\n<td class=\"xl68\"><strong>&nbsp;VGA MSI RTX 3060 VENTUS 2X OC 12 GB&nbsp; hoặc VGA Gigabyte GeForce RTX 3060 WINDFORCE OC 12GB&nbsp; Hoặc Card m&agrave;n h&igrave;nh Asus DUAL RTX 3060-12G-GAMING V2</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>6</strong></td>\r\n<td class=\"xl68\"><strong>NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK650 - 650W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>7</strong></td>\r\n<td class=\"xl68\"><strong>CASE XIGMATEK CUBI M - Tặng k&egrave;m Pack 3Fan RGB</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>12th</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl67\"><strong>8</strong></td>\r\n<td class=\"xl69\"><strong>Tản nhiệt kh&iacute; Jonsbo CR-1000 RGB</strong></td>\r\n<td class=\"xl67\"><strong>1</strong></td>\r\n<td class=\"xl67\"><strong>12th</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div>&nbsp;</div>\r\n<div><hr><strong>Upgrade</strong></div>\r\n<div><strong>Upgrade l&ecirc;n SSD 1TB Th&ecirc;m 790K</strong></div>\r\n<div><strong>Upgrade l&ecirc;n 32GB Ram Th&ecirc;m 1 triệu<br>Upgrade l&ecirc;n I5 13400F th&ecirc;m 890k</strong></div>\r\n<div><strong>Upgrade l&ecirc;n i5 12600KF&nbsp; th&ecirc;m 1690K</strong></div>\r\n<div><strong>Upgrade l&ecirc;n I5 14500 th&ecirc;m 3.590K</strong></div>\r\n<div><strong>Upgrade l&ecirc;n tản nhiệt nước AIO 240 th&ecirc;m 990k</strong></div>\r\n</div>\r\n<div><strong>Upgrade l&ecirc;n Mainboard Wifi + Bluetooth th&ecirc;m 890K<br>Upgrade Card mạng Tplink PCIe Archer TX20E (AX1800, Bluetooth 5.2 th&ecirc;m 590K</strong></div>\r\n<div><strong>Upgrade l&ecirc;n Mainboard Asus B760M-AYW WIFI DDR4 th&ecirc;m 690K</strong></div>\r\n<div>&nbsp;</div>\r\n<div><hr>\r\n<h2>PC CHƠI GAME HIỆU SUẤT CAO RTX 3060 12GB - 12400F</h2>\r\n</div>\r\n<div>PC CHƠI GAME HIỆU SUẤT CAO RTX 3060 12GB - 12400F l&agrave; bộ PC gaming gi&aacute; rẻ hiệu suất cao được TTG Shop&nbsp;tối ưu phần cứng đ&aacute;p ứng c&aacute;c nhu cầu từ chơi game giải tr&iacute; - Livestream. Chiến mượt m&agrave; c&aacute;c tựa game online , game AAA&nbsp; hot hit hiện nay.</div>\r\n<div>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc06083_1024x1024.jpg\"></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc03842_ed5a9fa414c04903a8c78af041efacf5_1024x1024.jpg\"></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div>\r\n<h3><strong>1.CPU Intel Core i5-12400F (Upto 4.4Ghz, 6 nh&acirc;n 12 luồng, 18MB Cache, 65W) - Socket Intel LGA 1700) - TRAY</strong></h3>\r\n<p><strong>CPU Intel Core i5-12400F</strong>&nbsp;nh&acirc;n tố khuất đảo thị trường PC Gaming khi sở hữu mức gi&aacute; rẻ c&ugrave;ng hiệu năng xuất sắc. Với 6 nh&acirc;n 12 luồng, xung nhịp 2.5GHz v&agrave; turbo boost l&ecirc;n 4.4 GHz, quả l&agrave; sự lựa chọn tuyệt vời từ khả năng chơi game cho tới stream game của thế hệ vi xử l&yacute; Intel Gen 12, ch&iacute;nh l&agrave; sự n&acirc;ng cấp vượt bậc so với người tiền nhiệm i5-11400F.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/cpu_intel_core_i5_12400f_ttg_331028cbb1274375963821d2cd0a112b_grande.jpg\" alt=\"CPU Intel Core i5-12400F\"></p>\r\n<h3><strong>2.&nbsp;Mainboard Asus PRIME B760M-K D4</strong></h3>\r\n<p><strong>Mainboard Asus PRIME B760M-K D4</strong>&nbsp;được thiết kế chuy&ecirc;n nghiệp để ph&aacute;t huy hết tiềm năng của bộ vi xử l&yacute; Intel &reg; Thế hệ thứ 12- 13 . Tự h&agrave;o với thiết kế năng lượng mạnh mẽ, giải ph&aacute;p l&agrave;m m&aacute;t to&agrave;n diện v&agrave; c&aacute;c t&ugrave;y chọn điều chỉnh th&ocirc;ng minh, Prime B760M-K D4 cung cấp cho người d&ugrave;ng v&agrave; c&aacute;c nh&agrave; x&acirc;y dựng PC DIY một loạt c&aacute;c t&ugrave;y chọn điều chỉnh hiệu suất th&ocirc;ng qua c&aacute;c t&iacute;nh năng phần mềm v&agrave; phần mềm trực quan.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/mainboard-asus-prime-b760m-k-d4_09d2d7c4a9e542d4a4866e23a90d6554_1024x1024.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>3. RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4</strong></h3>\r\n<p>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&nbsp;&nbsp;l&agrave; d&ograve;ng sản phẩm RAM chất lượng , ổn định ,&nbsp; c&oacute; hiệu suất cực cao , tốc độ truyền tải nhanh ch&oacute;ng, khả năng tương th&iacute;ch tốt cho ph&eacute;p tất cả c&aacute;c game thủ vượt giới hạn tốc độ v&agrave; tận hưởng thế giới game ấn tượng nhất . Được thiết kế cho c&aacute;c game thủ v&agrave; những người&nbsp; đam m&ecirc;. những người muốn n&acirc;ng cấp tiết kiệm chi ph&iacute; để chơi game nhanh hơn.Đ&acirc;y l&agrave; sự lựa chọn tuyệt vời cho bộ PC Gaming gi&aacute; rẻ m&agrave; c&aacute;c game thủ kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/ram-geil-evo-spear-16gb-ddr4-bus-3200_pcm_2114afa10c95413db9ef7c74bf1f9d4d_grande.png\"></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>4.&nbsp;Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME</strong></h3>\r\n<p>Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME&nbsp;được trang bị chuẩn kết nối PCIe Gen 3x4 hiện đại k&egrave;m theo c&ocirc;ng nghệ bộ nhớ 3D-NAND ti&ecirc;n tiến đ&atilde; l&agrave;m cho tất cả người sử dụng cảm thấy h&agrave;i l&ograve;ng về hiệu quả l&agrave;m việc của sản phẩm. Đ&acirc;y sẽ l&agrave; lựa chọn ho&agrave;n hảo cho bất cứ kh&aacute;ch h&agrave;ng n&agrave;o c&oacute; nhu cầu l&agrave;m việc, giải tr&iacute; tốc độ cao.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/ssd-pny_cs1031_500gb_nvme_pcie3_grande.jpg\"></p>\r\n<h3><strong>5.&nbsp;Card m&agrave;n h&igrave;nh MSI RTX 3060 VENTUS 2X OC 12 GB</strong></h3>\r\n<p>Card m&agrave;n h&igrave;nh MSI RTX 3060 VENTUS 2X OC 12 GBl&agrave; mẫu card đồ họa gaming mạnh mẽ Điều n&agrave;y được đ&oacute;ng g&oacute;p bởi thế hệ nh&acirc;n RT v&agrave; Tensor thế hệ mới đến từ kiến tr&uacute;c NVIDIA Ampere hiện đại để đem đến khả năng xử l&yacute; đồ họa đ&aacute;ng mơ ước d&agrave;nh cho mọi game thủ để c&oacute; thể chiến với đại đa số tựa game AAA hiện nay.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc03854_4f495b458c2145349a8940b7ba069fd2_1024x1024.jpg\"></p>\r\n<p>Ngo&agrave;i ra, đi k&egrave;m tr&ecirc;n Card m&agrave;n h&igrave;nh NVIDIA RTX 3060 12G sẽ l&agrave; những c&ocirc;ng nghệ tối ưu h&oacute;a trải nghiệm cho game thủ n&oacute;i ri&ecirc;ng v&agrave; người d&ugrave;ng n&oacute;i chung như c&ocirc;ng nghệ DLSS tối ưu đồ họa hay Ray Tracing đem đến khả năng hiển thị chi tiết trong mọi tựa game hỗ trợ, v&agrave; c&ograve;n đ&oacute; NVIDIA Reflex xử l&yacute; độ trễ tr&ecirc;n những m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh,... Tất cả tạo n&ecirc;n sự h&agrave;i h&ograve;a cho trải nghiệm gaming v&agrave; xử l&yacute; đồ họa tốt nhất c&ugrave;ng mọi linh kiện m&aacute;y t&iacute;nh.</p>\r\n<h3><strong>6. NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK650 - 650W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)</strong></h3>\r\n<p>&nbsp;NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK650 - 650W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)&nbsp;&nbsp;l&agrave; một sự lựa chọn đ&aacute;ng c&acirc;n nhắc cho c&aacute;c hệ thống m&aacute;y t&iacute;nh với c&ocirc;ng suất từ trung b&igrave;nh đến cao. Với c&ocirc;ng suất ổn định, ti&ecirc;u chuẩn an to&agrave;n, quạt l&agrave;m m&aacute;t hiệu quả v&agrave; khả năng kết nối đa dạng, sản phẩm n&agrave;y đ&aacute;p ứng nhu cầu của người d&ugrave;ng đa dạng v&agrave; th&iacute;ch nghi với nhiều mục đ&iacute;ch sử dụng kh&aacute;c nhau.Với c&ocirc;ng suất tối đa l&ecirc;n đến 650W, Nguồn AIGO VK650 cung cấp đủ năng lượng để đ&aacute;p ứng c&aacute;c nhu cầu của hệ thống m&aacute;y t&iacute;nh đa dạng. Từ c&aacute;c m&aacute;y t&iacute;nh văn ph&ograve;ng cho đến c&aacute;c hệ thống chơi game hoặc l&agrave;m đồ họa, nguồn n&agrave;y đảm bảo cung cấp đủ điện cho tất cả c&aacute;c linh kiện quan trọng.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/nguon_aigo_vk650_-_650w_1024x1024.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>7.Tản nhiệt kh&iacute; CPU RGB Jonsbo CR-1000</strong></h3>\r\n<p>Tản nhiệt kh&iacute;&nbsp;<strong>CPU Jonsbo CR-1000 RGB</strong>ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo với mức gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute; gi&uacute;p cho lưu th&ocirc;ng gi&oacute; của case trở n&ecirc;n dễ d&agrave;ng hơn nhờ đ&oacute; CPU được đảm bảo về hiệu năng. Ngo&agrave;i ra với đ&egrave;n LED RGB,&nbsp;<strong>Jonsbo CR-1000</strong>&nbsp;ch&iacute;nh l&agrave; lựa chọn thẩm mỹ cho người d&ugrave;ng khi muốn bộ case của m&igrave;nh lu&ocirc;n m&aacute;t mẻ v&agrave; nổi bật.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc03852_1024x1024.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt;&nbsp;</strong>Xem th&ecirc;m c&aacute;c cấu h&igrave;nh&nbsp;<strong>PC Gaming&nbsp;</strong><a title=\"pc gaming gi&aacute; rẻ \" href=\"https://ttgshop.vn/collections/pc\" target=\"_blank\" rel=\"noopener\"><strong>&nbsp;tại đ&acirc;y</strong></a>&nbsp;</p>\r\n<p>Li&ecirc;n hệ ngay với<strong>&nbsp;TTG Shop&nbsp;</strong>để được tư vấn v&agrave; sở hữu bộ&nbsp;<strong>PC CHƠI GAME HIỆU SUẤT CAO RTX 3060 8GB - 12400F&nbsp;</strong>n&agrave;y với mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn nha !&nbsp;</p>\r\n</div>', 1, '2025-06-22 13:00:47', '2025-06-22 14:11:34'),
(29, 'PCGM4', 'PC GAMING PERFORMANCE RTX 4060 8GB - i5 12400F ( Toàn bộ linh kiện All New - Bảo hành 36 tháng) 16 slots - 8 Hà Nội - 8 HCM ( Upgrade sang card hãng ASUS, MSI, GIGABYTE Thêm 490K)', 'pc-gaming-performance-rtx-4060-8gb-i5-12400f-toan-bo-linh-kien-all-new-bao-hanh-36-thang-16-slots-8-ha-noi-8-hcm-upgrade-sang-card-hang-asus-msi-gigabyte-them-490k', 12, NULL, 21990000.00, 48, '<p><strong>Tất cả linh kiện Đều ALL NEW- Bảo h&agrave;nh 36 Th&aacute;ng</strong></p>\r\n<div><strong>* Lưu &yacute; : Bộ PC n&agrave;y đ&atilde; &aacute;p dụng CTKM SHOCK n&ecirc;n sẽ kh&ocirc;ng được &Aacute;p dụng CTKM Chung</strong></div>\r\n<div><strong>* Kh&aacute;ch h&agrave;ng c&oacute; thể chọn Vỏ m&agrave;u Đen hoặc Trắng</strong></div>\r\n<div>\r\n<h3>Th&ocirc;ng số kỹ thuật</h3>\r\n<div>\r\n<div>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><strong>STT</strong></td>\r\n<td><strong>M&ocirc; tả thiết bị</strong></td>\r\n<td><strong>SL</strong></td>\r\n<td><strong>BH</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>1</strong></td>\r\n<td><strong>CPU Intel Core i5-12400F (Upto 4.4Ghz, 6 nh&acirc;n 12 luồng, 18MB Cache, 65W) TRAY</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>2</strong></td>\r\n<td><strong>Mainboard ASUS B760M-K PRIME DDR4</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>3</strong></td>\r\n<td><strong>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>4</strong></td>\r\n<td><strong>Ổ cứng SSD OCPC MFL-300 512GB NVMe Gen 3x4</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>5</strong></td>\r\n<td><strong>Nguồn M&aacute;y T&iacute;nh AIGO VK650 - 650W (85 Plus/ Active PFC/ Single Rail)</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>6</strong></td>\r\n<td><strong>VGA Colorful GeForce RTX 4060 NB DUO 8GB V5-V</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>7</strong></td>\r\n<td><strong>Vỏ Case AIGO C218M BLACK - K&Egrave;M 4 FAN ARGB</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>12th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>8</strong></td>\r\n<td><strong>Tản nhiệt kh&iacute; JONSBO CR-1000</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>12th</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div><hr><strong>Upgrade</strong></div>\r\n<div><strong>Upgrade&nbsp;</strong><strong>sang card h&atilde;ng ASUS, MSI, GIGABYTE&nbsp;Th&ecirc;m 490K</strong></div>\r\n<div><strong>Upgrade l&ecirc;n 32GB RAM th&ecirc;m 1 triệu<br>Upgrade l&ecirc;n Ram RGB th&ecirc;m 390K<br>Upgrade l&ecirc;n 1TB SSD th&ecirc;m 790K<br>Upgrade l&ecirc;n I5 13400F th&ecirc;m 890k</strong></div>\r\n<div><strong>Upgrade l&ecirc;n i5 12600KF&nbsp;th&ecirc;m 1.690K<br>Upgrade l&ecirc;n I5 14500 th&ecirc;m 3.590K<br>Upgrade l&ecirc;n tản nhiệt nước AIO 240 th&ecirc;m 990K<br>Upgrade l&ecirc;n Mainboard Wifi + Bluetooth th&ecirc;m 890K</strong></div>\r\n<div><strong>Upgrade l&ecirc;n Mainboard Asus B760M-AYW WIFI DDR4 th&ecirc;m 690K<br>Upgrade Card mạng Tplink PCIe Archer TX20E (AX1800, Bluetooth 5.2 th&ecirc;m 590K</strong></div>\r\n<div><hr>\r\n<h2>PC ASUS GAMING PERFORMANCE RTX 4060 - I5 12400F ( To&agrave;n bộ linh kiện All New - Bảo h&agrave;nh 36 th&aacute;ng)</h2>\r\n</div>\r\n<div>\r\n<p>PC ASUS GAMING PERFORMANCE RTX 4060 - I5 12400F ( To&agrave;n bộ linh kiện All New - Bảo h&agrave;nh 36 th&aacute;ng)l&agrave; bộ PC Gaming Gi&aacute; tốt&nbsp; Hiệu năng cao b&aacute;n chạy nhất tại TTG Shop. Đ&aacute;p ứng tốt c&aacute;c nhu cầu từ Streaming , chiến mượt m&agrave; c&aacute;c tựa game AAA , Game online ở độ ph&acirc;n giải cao. Đ&acirc;y sẽ l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho c&aacute;c game thủ v&agrave; Streamer.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc06226_1024x1024.jpg\"></p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc06243_grande.jpg\"></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>&nbsp;\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/dsc07708_grande.jpg\"></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div>\r\n<h3><strong>1.&nbsp;CPU Intel Core i5-12400F (Upto 4.4Ghz, 6 nh&acirc;n 12 luồng, 18MB Cache, 65W) - Socket Intel LGA 1700) - TRAY</strong></h3>\r\n<p>Bộ vi xử l&yacute; Intel Core i5 12400F l&agrave; &ocirc;ng vua ph&acirc;n kh&uacute;c CPU&nbsp; tầm trung d&agrave;nh cho Gaming . Sở hữu 6 l&otilde;i v&agrave; 12 luồng mạnh mẽ, CPU Intel Core i5 12400F được cung cấp sức mạnh từ nền tảng LGA 1700 v&agrave; kiến ​​tr&uacute;c Alder Lake hiện đại, gi&uacute;p mang lại hiệu năng vượt trội so với người anh em thế hệ trước . Core i5 12400F sẽ l&agrave; sự lựa chọn tuyệt vời cho một chiếc PC gaming tầm trung đến cao cấp.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/cpu_intel_core_i5_12400f_ttg_331028cbb1274375963821d2cd0a112b_1024x1024.jpg\" alt=\"cpu 12400f\"></p>\r\n<h3>&nbsp;</h3>\r\n<h3><strong>2. Mainboard ASUS PRIME B760M-K D4</strong></h3>\r\n<p>Mainboard Asus PRIME B760M-K D4 được thiết kế chuy&ecirc;n nghiệp để giải ph&oacute;ng to&agrave;n bộ tiềm năng của Bộ xử l&yacute;&nbsp;Intel Core i5-12400F. Tự h&agrave;o với thiết kế nguồn mạnh mẽ, giải ph&aacute;p l&agrave;m m&aacute;t to&agrave;n diện v&agrave; c&aacute;c t&ugrave;y chọn điều chỉnh th&ocirc;ng minh, PRIME B760M-K D4 cung cấp cho người d&ugrave;ng v&agrave; c&aacute;c nh&agrave; chế tạo PC DIY một loạt c&aacute;c tối ưu h&oacute;a hiệu suất th&ocirc;ng qua c&aacute;c t&iacute;nh năng chương tr&igrave;nh cơ sở v&agrave; phần mềm trực quan.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/mainboard_asus_prime_b760m-k_d4_a902da7f1b934cc0b0df2f950918dba9_1024x1024.png\" alt=\"Mainboard ASUS PRIME B760M-K D4\"></p>\r\n<h3><strong>3. RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4</strong></h3>\r\n<p>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4&nbsp;&nbsp;l&agrave; d&ograve;ng sản phẩm RAM chất lượng , ổn định ,&nbsp; c&oacute; hiệu suất cực cao , tốc độ truyền tải nhanh ch&oacute;ng, khả năng tương th&iacute;ch tốt cho ph&eacute;p tất cả c&aacute;c game thủ vượt giới hạn tốc độ v&agrave; tận hưởng thế giới game ấn tượng nhất . Được thiết kế cho c&aacute;c game thủ v&agrave; những người&nbsp; đam m&ecirc;. những người muốn n&acirc;ng cấp tiết kiệm chi ph&iacute; để chơi game nhanh hơn.Đ&acirc;y l&agrave; sự lựa chọn tuyệt vời cho bộ PC Gaming gi&aacute; rẻ m&agrave; c&aacute;c game thủ kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/ram-geil-evo-spear-16gb-ddr4-bus-3200_pcm_2114afa10c95413db9ef7c74bf1f9d4d_grande.png\"></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>4.&nbsp;Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME</strong></h3>\r\n<p>Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME&nbsp;được trang bị chuẩn kết nối PCIe Gen 3x4 hiện đại k&egrave;m theo c&ocirc;ng nghệ bộ nhớ 3D-NAND ti&ecirc;n tiến đ&atilde; l&agrave;m cho tất cả người sử dụng cảm thấy h&agrave;i l&ograve;ng về hiệu quả l&agrave;m việc của sản phẩm. Đ&acirc;y sẽ l&agrave; lựa chọn ho&agrave;n hảo cho bất cứ kh&aacute;ch h&agrave;ng n&agrave;o c&oacute; nhu cầu l&agrave;m việc, giải tr&iacute; tốc độ cao.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/ssd-pny_cs1031_500gb_nvme_pcie3_grande.jpg\"></p>\r\n<h3><strong>5. VGA Colorful GeForce RTX 4060 NB DUO 8GB V5-V</strong></h3>\r\n<p>VGA Colorful GeForce RTX 4060 NB DUO 8GB V5-V&nbsp; &nbsp;l&agrave; một card m&agrave;n h&igrave;nh gaming hiệu năng cao&nbsp; Được ra mắt v&agrave;o năm 2023, đ&acirc;y l&agrave; một phi&ecirc;n bản đặc biệt của RTX 4060, với bộ nhớ 8GB, card m&agrave;n h&igrave;nh&nbsp;&nbsp;RTX 4060&nbsp;8GB&nbsp;cung cấp hiệu năng đồ họa mạnh mẽ v&agrave; hỗ trợ đa nhiệm tốt. N&oacute; sử dụng kiến tr&uacute;c NVIDIA Ampere, được tối ưu h&oacute;a để cung cấp hiệu suất tốt hơn, đồng thời tiết kiệm năng lượng hơn so với thế hệ trước.L&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho những bộ PC Gaming , PC Stream.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>6. NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK650 - 650W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)</strong></h3>\r\n<p>&nbsp;NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK650 - 650W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)&nbsp;&nbsp;l&agrave; một sự lựa chọn đ&aacute;ng c&acirc;n nhắc cho c&aacute;c hệ thống m&aacute;y t&iacute;nh với c&ocirc;ng suất từ trung b&igrave;nh đến cao. Với c&ocirc;ng suất ổn định, ti&ecirc;u chuẩn an to&agrave;n, quạt l&agrave;m m&aacute;t hiệu quả v&agrave; khả năng kết nối đa dạng, sản phẩm n&agrave;y đ&aacute;p ứng nhu cầu của người d&ugrave;ng đa dạng v&agrave; th&iacute;ch nghi với nhiều mục đ&iacute;ch sử dụng kh&aacute;c nhau.Với c&ocirc;ng suất tối đa l&ecirc;n đến 650W, Nguồn AIGO VK650 cung cấp đủ năng lượng để đ&aacute;p ứng c&aacute;c nhu cầu của hệ thống m&aacute;y t&iacute;nh đa dạng. Từ c&aacute;c m&aacute;y t&iacute;nh văn ph&ograve;ng cho đến c&aacute;c hệ thống chơi game hoặc l&agrave;m đồ họa, nguồn n&agrave;y đảm bảo cung cấp đủ điện cho tất cả c&aacute;c linh kiện quan trọng.</p>\r\n<p><img src=\"https://pcmarket.vn/media/lib/05-08-2024/NgunAIGOVK650-650W.jpg\" alt=\"AIGOVK650-650W\" width=\"850\"></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>7.Tản nhiệt kh&iacute; CPU RGB Jonsbo CR-1000&nbsp;&nbsp;</strong></h3>\r\n<p>Tản nhiệt kh&iacute;&nbsp;<strong>CPU Jonsbo CR-1000 RGB&nbsp;&nbsp;</strong>ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo với mức gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute; gi&uacute;p cho lưu th&ocirc;ng gi&oacute; của case trở n&ecirc;n dễ d&agrave;ng hơn nhờ đ&oacute; CPU được đảm bảo về hiệu năng. Ngo&agrave;i ra với đ&egrave;n LED RGB,&nbsp;<strong>Jonsbo CR-1000</strong>&nbsp;ch&iacute;nh l&agrave; lựa chọn thẩm mỹ cho người d&ugrave;ng khi muốn bộ case của m&igrave;nh lu&ocirc;n m&aacute;t mẻ v&agrave; nổi bật.&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/tan-nhiet-khi_cr_1000evo_black_t_c7434a02e3bb49f38f9fdb441d2215b3_grande.jpg\"></p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt;&nbsp;</strong>Xem th&ecirc;m c&aacute;c cấu h&igrave;nh&nbsp;<strong>PC Gaming&nbsp;</strong><a title=\"pc gaming gi&aacute; rẻ \" href=\"https://ttgshop.vn/collections/pc\" target=\"_blank\" rel=\"noopener\"><strong>&nbsp;tại đ&acirc;y</strong></a>&nbsp;</p>\r\n<p>Li&ecirc;n hệ ngay với<strong>&nbsp;TTG Shop&nbsp;</strong>để được tư vấn v&agrave; sở hữu bộ&nbsp;PC ASUS GAMING PERFORMANCE RTX 4060 - I5 12400F<strong>&nbsp;</strong>n&agrave;y với mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn nha !</p>\r\n</div>\r\n</div>\r\n</div>', 1, '2025-06-22 13:01:53', '2025-06-22 14:11:15');
INSERT INTO `products` (`id`, `code`, `name`, `slug`, `category_id`, `user_id`, `price`, `stock`, `description`, `status`, `created_at`, `updated_at`) VALUES
(30, 'PCGM5', 'PC MAXIMUM GAMING i5 12400F - RTX 3070 8GB ( All NEW - Bảo hành 36 tháng) - 9slots - 5 Hà Nội - 4 HCM', 'pc-maximum-gaming-i5-12400f-rtx-3070-8gb-all-new-bao-hanh-36-thang-9slots-5-ha-noi-4-hcm', 12, NULL, 23990000.00, 35, '<h3>Th&ocirc;ng số kỹ thuật</h3>\r\n<p><strong>Tất cả linh kiện đều All New - Bảo h&agrave;nh 36 th&aacute;ng</strong></p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><strong>STT</strong></td>\r\n<td><strong>M&ocirc; tả thiết bị</strong></td>\r\n<td><strong>SL</strong></td>\r\n<td><strong>BH</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>1</strong></td>\r\n<td><strong>CPU Intel Core i5-12400F (Upto 4.4Ghz, 6 nh&acirc;n 12 luồng, 18MB Cache, 65W) TRAY</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>2</strong></td>\r\n<td><strong>Mainboard ASUS B760M-K PRIME DDR4</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>3</strong></td>\r\n<td><strong>RAM GEIL SPEAR EVO 16GB Bus 3200Mhz DDR4</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>4</strong></td>\r\n<td><strong>Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME GEN 3X4 (ĐỌC 2200MB/S - GHI 1200MB/S)</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>5</strong></td>\r\n<td><strong>Nguồn M&aacute;y T&iacute;nh AIGO VK750 - 750W (85 Plus/ Active PFC/ Single Rail)</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>6</strong></td>\r\n<td><strong>VGA NVIDIA ASL GEFORCE RTX 3070 LHR 8GB GDDR6</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>36th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>7</strong></td>\r\n<td><strong>Vỏ Case XIGMATEK CUBI M BLACK - K&Egrave;M 3 FAN ARGB</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>12th</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>8</strong></td>\r\n<td><strong>Tản nhiệt kh&iacute; JONSBO CR-1000</strong></td>\r\n<td><strong>1</strong></td>\r\n<td><strong>12th</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<p><strong>Upgrade</strong></p>\r\n<p><strong>Upgrade l&ecirc;n 32GB RAM th&ecirc;m 1 triệu<br>Upgrade l&ecirc;n Ram RGB th&ecirc;m 390K<br>Upgrade l&ecirc;n 1TB SSD th&ecirc;m 790K</strong></p>\r\n<p><strong>Upgrade l&ecirc;n I5 13400F th&ecirc;m 1690K</strong></p>\r\n<p><strong>Upgrade l&ecirc;n I5 14500 th&ecirc;m 3.590K</strong></p>\r\n<p><strong>Upgrade l&ecirc;n tản nhiệt nước AIO 240 th&ecirc;m 990K<br>Upgrade l&ecirc;n Mainboard Wifi + Bluetooth th&ecirc;m 890K<br>Upgrade Card wifi Asus AX3000( Wifi 6E , Bluetooth 5.0) th&ecirc;m 590K</strong></p>\r\n<p><strong>Upgrade l&ecirc;n Mainboard Asus B760M-AYW WIFI DDR4 th&ecirc;m 690K</strong></p>\r\n<p><strong>Bộ PC tr&ecirc;n đ&atilde; được &aacute;p dụng KM Si&ecirc;u SHOCK n&ecirc;n sẽ kh&ocirc;ng được &aacute;p dụng CTKM chung</strong></p>\r\n<hr>\r\n<h2><strong>PC MAXIMUM GAMING RTX 3070 -12400F (All NEW - Bảo h&agrave;nh 36 th&aacute;ng)&nbsp;</strong></h2>\r\n<p><strong>PC MAXIMUM GAMING RTX 3070 -12400F</strong>&nbsp; l&agrave; cấu h&igrave;nh PC Gaming đ&atilde; được TTG Shop&nbsp; tối ưu phần cứng nhằm đ&aacute;p ứng tốt c&aacute;c nhu cầu Streaming , chơi game giải tr&iacute; chiến&nbsp;mượt m&agrave; hầu hết c&aacute;c tựa Game AAA&nbsp;Hot Hit hiện nay.</p>\r\n<h3>1.CPU Intel Core i5-12400F (Upto 4.4Ghz, 6 nh&acirc;n 12 luồng, 18MB Cache, 65W) - Socket Intel LGA 1700) - TRAY</h3>\r\n<p><strong>CPU Intel Core i5-12400F</strong>&nbsp;nh&acirc;n tố khuất đảo thị trường PC Gaming khi sở hữu mức gi&aacute; rẻ c&ugrave;ng hiệu năng xuất sắc. Với 6 nh&acirc;n 12 luồng, xung nhịp 2.5GHz v&agrave; turbo boost l&ecirc;n 4.4 GHz, quả l&agrave; sự lựa chọn tuyệt vời từ khả năng chơi game cho tới stream game của thế hệ vi xử l&yacute; Intel Gen 12, ch&iacute;nh l&agrave; sự n&acirc;ng cấp vượt bậc so với người tiền nhiệm i5-11400F.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/cpu_intel_core_i5_12400f_ttg_331028cbb1274375963821d2cd0a112b.jpg\" alt=\"i5 12400f\"></p>\r\n<h3>&nbsp;</h3>\r\n<h3><strong>2. Mainboard ASUS PRIME B760M-K D4</strong></h3>\r\n<p>Mainboard Asus PRIME B760M-K D4 được thiết kế chuy&ecirc;n nghiệp để giải ph&oacute;ng to&agrave;n bộ tiềm năng của Bộ xử l&yacute;&nbsp;Intel Core i5-12400F. Tự h&agrave;o với thiết kế nguồn mạnh mẽ, giải ph&aacute;p l&agrave;m m&aacute;t to&agrave;n diện v&agrave; c&aacute;c t&ugrave;y chọn điều chỉnh th&ocirc;ng minh, PRIME B760M-K D4 cung cấp cho người d&ugrave;ng v&agrave; c&aacute;c nh&agrave; chế tạo PC DIY một loạt c&aacute;c tối ưu h&oacute;a hiệu suất th&ocirc;ng qua c&aacute;c t&iacute;nh năng chương tr&igrave;nh cơ sở v&agrave; phần mềm trực quan.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/mainboard_asus_prime_b760m-k_d4_a902da7f1b934cc0b0df2f950918dba9_grande.png\" alt=\"Mainboard Asus PRIME B760M-K DDR4\"></p>\r\n<h3>&nbsp;</h3>\r\n<h3><strong>3.RAM PNY XLR8 Gaming 16GB Bus 3200MHz DDR4</strong></h3>\r\n<p><br>RAM PNY XLR8 Gaming 16GB Bus 3200MHz DDR4 l&agrave; d&ograve;ng sản phẩm RAM chất lượng , ổn định , &nbsp;c&oacute; hiệu suất cực cao , tốc độ truyền tải nhanh ch&oacute;ng, khả năng tương th&iacute;ch tốt cho ph&eacute;p tất cả c&aacute;c game thủ vượt giới hạn tốc độ v&agrave; tận hưởng thế giới game ấn tượng nhất . Được thiết kế cho c&aacute;c game thủ v&agrave; những người &nbsp;đam m&ecirc;. những người muốn n&acirc;ng cấp tiết kiệm chi ph&iacute; để chơi game nhanh hơn.Đ&acirc;y l&agrave; sự lựa chọn tuyệt vời cho bộ PC Gaming gi&aacute; rẻ m&agrave; c&aacute;c game thủ kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/pny_xlr8_grande.jpg\"></p>\r\n<h3><strong>4.&nbsp;Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME GEN 3X4 (ĐỌC 2200MB/S - GHI 1200MB/S)</strong></h3>\r\n<p>Ổ CỨNG SSD PNY CS1031 500GB M.2 2280 PCIE NVME GEN 3X4 (ĐỌC 2200MB/S - GHI 1200MB/S) l&agrave; một lựa chọn tuyệt vời cho người d&ugrave;ng muốn n&acirc;ng cấp hiệu suất lưu trữ. Với tốc độ đọc l&ecirc;n đến 2200 MB/s v&agrave; tốc độ ghi tối đa 1200 MB/s, sản phẩm mang đến khả năng xử l&yacute; dữ liệu nhanh ch&oacute;ng, gi&uacute;p tối ưu trải nghiệm sử dụng m&aacute;y t&iacute;nh.&nbsp;&nbsp;SSD n&agrave;y rất ph&ugrave; hợp cho c&aacute;c t&aacute;c vụ đ&ograve;i hỏi hiệu năng cao như gaming, xử l&yacute; đồ họa, v&agrave; lập tr&igrave;nh.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/ssd-pny_cs1031_500gb_nvme_pcie3_grande.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>5.VGA NEO FORZA RTX 3070 DUAL OC 8GB&nbsp;</strong></h3>\r\n<p>VGA NEO FORZA RTX 3070 DUAL OC 8GB&nbsp; l&agrave; một trong những sản phẩm cao cấp của &nbsp;phục vụ cho nhu cầu gaming ở độ ph&acirc;n giải 4K với mức gi&aacute; hợp l&yacute;.. Đ&acirc;y l&agrave; card đồ họa được x&acirc;y dựng tr&ecirc;n nền tảng Ampere kiến tr&uacute;c RTX thế hệ thứ 2 của NVIDIA. Mang cho m&igrave;nh Nh&acirc;n d&ograve; tia c&ugrave;ng Nh&acirc;n Tensor n&acirc;ng cao, k&egrave;m theo đ&oacute; l&agrave; bộ đa xử l&yacute; ph&aacute;t trực tiếp mới c&oacute; bộ nhớ G6 tốc độ cao. Kh&ocirc;ng thể kh&ocirc;ng nhắc đến 5888 nh&acirc;n CUDA, 8GB GDDR6, chiếc card đồ họa n&agrave;y dư sức gi&uacute;p bạn trải nghiệm những tựa game khủng với mức đồ họa cao nhất.</p>\r\n<h3><strong>6.&nbsp;&nbsp;&nbsp;Ổ cứng SSD CRUCIAL P3 500GB NVME M.2 PCIE</strong></h3>\r\n<div>\r\n<p>Ổ Cứng SSD Crucial P3 500GB M.2 2280 NVMe&nbsp; được trang bị chuẩn kết nối PCIe Gen 3x4 hiện đại k&egrave;m theo c&ocirc;ng nghệ bộ nhớ 3D-NAND ti&ecirc;n tiến đ&atilde; l&agrave;m cho tất cả người sử dụng cảm thấy h&agrave;i l&ograve;ng về hiệu quả l&agrave;m việc của sản phẩm. Đ&acirc;y sẽ l&agrave; lựa chọn ho&agrave;n hảo cho bất cứ kh&aacute;ch h&agrave;ng n&agrave;o c&oacute; nhu cầu l&agrave;m việc, giải tr&iacute; tốc độ cao.</p>\r\n<p><img src=\"https://pcmarket.vn/media/lib/26-09-2024/ssd-crucial-p3-500gb-nvme-3d-nan1.jpg\"></p>\r\n</div>\r\n<h3><strong>7.&nbsp;NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK750 - 750W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)</strong></h3>\r\n<p>NGUỒN M&Aacute;Y T&Iacute;NH AIGO VK750 - 750W (80 PLUS/ ACTIVE PFC/ SINGLE RAIL)&nbsp; &nbsp;l&agrave; một nguồn m&aacute;y t&iacute;nh gi&aacute; rẻ nhưng vẫn mang lại hiệu suất ổn định v&agrave; c&aacute;c t&iacute;nh năng bảo vệ cơ bản. N&oacute; được thiết kế để phục vụ cho c&aacute;c hệ thống m&aacute;y t&iacute;nh phổ th&ocirc;ng v&agrave; c&oacute; khả năng đ&aacute;p ứng được nhu cầu cung cấp nguồn điện cho c&aacute;c th&agrave;nh phần trong m&aacute;y t&iacute;nh một c&aacute;ch đ&aacute;ng tin cậy.Với c&ocirc;ng suất thực 750W, t&iacute;ch hợp Active PFC v&agrave; tụ ch&iacute;nh Nhật Bản,&nbsp;AIGO VK650&nbsp; cam kết đạt hiệu suất 80%.</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/11558_nguon_may_tinh_aigo_vk750_1_grande.jpg\"></p>\r\n<h3><strong>7.&nbsp;Tản nhiệt kh&iacute; CPU RGB Jonsbo CR-1000</strong></h3>\r\n<p>Tản nhiệt kh&iacute;&nbsp;<strong>CPU Jonsbo CR-1000 RGB</strong>ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo với mức gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute; gi&uacute;p cho lưu th&ocirc;ng gi&oacute; của case trở n&ecirc;n dễ d&agrave;ng hơn nhờ đ&oacute; CPU được đảm bảo về hiệu năng. Ngo&agrave;i ra với đ&egrave;n LED RGB,&nbsp;<strong>Jonsbo CR-1000</strong>&nbsp;ch&iacute;nh l&agrave; lựa chọn thẩm mỹ cho người d&ugrave;ng khi muốn bộ case của m&igrave;nh lu&ocirc;n m&aacute;t mẻ v&agrave; nổi bật.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000288298/file/tan-nhiet-khi_cr_1000evo_black_t_bb70c1baf4e743199b1b2b96bd57273e_1024x1024.jpg\"></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt;&nbsp;</strong>Xem th&ecirc;m c&aacute;c cấu h&igrave;nh&nbsp;<strong>PC Gaming&nbsp;</strong><a title=\"pc gaming gi&aacute; rẻ \" href=\"https://ttgshop.vn/collections/pc\" target=\"_blank\" rel=\"noopener\"><strong>&nbsp;tại đ&acirc;y</strong></a>&nbsp;</p>\r\n<p>Li&ecirc;n hệ ngay với<strong>&nbsp;TTG Shop&nbsp;</strong>để được tư vấn v&agrave; sở hữu bộ&nbsp;<strong>PC MAXIMUM GAMING RTX 3070 -12400F&nbsp;</strong>n&agrave;y với mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn nha !</p>', 1, '2025-06-22 13:02:52', '2025-06-22 14:08:09'),
(31, 'INTEL-F', 'CPU INTEL CORE I5 12600KF - TRAY NEW (3.7GHZ TURBO UP TO 4.9GHZ, 10 NHÂN 16 LUỒNG, 20MB CACHE, 125W)', 'cpu-intel-core-i5-12600kf-tray-new-37ghz-turbo-up-to-49ghz-10-nhan-16-luong-20mb-cache-125w', 4, NULL, 6499000.00, 53, NULL, 1, '2025-06-22 13:20:54', '2025-06-22 14:11:00'),
(32, 'INTEL_F1', 'CPU Intel Core i5-10400F - TRAY NEW (3.4GHz turbo up to 4.4Ghz, 6 nhân 12 luồng, 12MB Cache, 65W)', 'cpu-intel-core-i5-10400f-tray-new-34ghz-turbo-up-to-44ghz-6-nhan-12-luong-12mb-cache-65w', 4, NULL, 2990000.00, 60, NULL, 1, '2025-06-22 13:21:53', '2025-06-22 13:21:53'),
(33, 'INTEL-F2', 'CPU Intel Core i3 12100F - TRAY NEW (3.3GHz turbo up to 4.3GHz, 4 nhân 8 luồng, 12MB Cache, 58W)- Socket Intel LGA 1700)', 'cpu-intel-core-i3-12100f-tray-new-33ghz-turbo-up-to-43ghz-4-nhan-8-luong-12mb-cache-58w-socket-intel-lga-1700', 4, NULL, 3099000.00, 70, NULL, 1, '2025-06-22 13:22:52', '2025-06-22 13:22:52'),
(35, 'INTEL-F3', 'CPU INTEL CORE I5 12600KF - TRAY NEW', 'cpu-intel-core-i5-12600kf-tray-new', 4, NULL, 6499000.00, 99, NULL, 1, '2025-06-22 13:24:17', '2025-06-22 14:11:15'),
(36, 'INTEL-F4', 'CPU Intel Core i5 12400F- TRAY NEW (Upto 4.4Ghz, 6 nhân 12 luồng, 18MB Cache, 65W) - Socket Intel LGA 1700)', 'cpu-intel-core-i5-12400f-tray-new-upto-44ghz-6-nhan-12-luong-18mb-cache-65w-socket-intel-lga-1700', 4, NULL, 5099000.00, 100, NULL, 1, '2025-06-22 13:24:57', '2025-06-22 13:24:57'),
(37, 'AMD', 'CPU AMD Ryzen 7 7700 - TRAY NEW (3.8 GHz Upto 5.3GHz / 40MB / 8 Cores, 16 Threads / 65W / Socket AM5)', 'cpu-amd-ryzen-7-7700-tray-new-38-ghz-upto-53ghz-40mb-8-cores-16-threads-65w-socket-am5', 4, NULL, 10890000.00, 123, NULL, 1, '2025-06-22 13:25:37', '2025-06-22 14:11:00'),
(38, 'AMD1', 'CPU AMD Ryzen Ryzen 5 7500F - TRAY NEW (3.7 GHz Upto 5.0GHz / 38MB / 6 Cores, 12 Threads / 65W / Socket AM5)', 'cpu-amd-ryzen-ryzen-5-7500f-tray-new-37-ghz-upto-50ghz-38mb-6-cores-12-threads-65w-socket-am5', 4, NULL, 8590000.00, 149, NULL, 1, '2025-06-22 13:26:04', '2025-06-22 14:11:34'),
(39, 'AMD2', 'CPU AMD RYZEN 9 7900X - TRAY NEW (4.7 GHZ UPTO 5.6GHZ / 76MB / 12 CORES, 24 THREADS / 170W / AM5)', 'cpu-amd-ryzen-9-7900x-tray-new-47-ghz-upto-56ghz-76mb-12-cores-24-threads-170w-am5', 4, NULL, 10999000.00, 123, NULL, 1, '2025-06-22 13:26:54', '2025-06-22 14:08:09'),
(40, 'AMD3', 'CPU AMD Ryzen 7 9700X - TRAY NEW (3.8 GHz Boost 5.5 GHz | 8 nhân / 16 luồng| 40 MB Cache)', 'cpu-amd-ryzen-7-9700x-tray-new-38-ghz-boost-55-ghz-8-nhan-16-luong-40-mb-cache', 4, NULL, 10999000.00, 142, NULL, 1, '2025-06-22 13:27:27', '2025-06-22 14:10:44'),
(41, 'AMD4', 'CPU AMD Ryzen 9 9900X - TRAY NEW (4.4 GHz Boost 5.6 GHz | 12 nhân / 24 luồng| 64 MB Cache)', 'cpu-amd-ryzen-9-9900x-tray-new-44-ghz-boost-56-ghz-12-nhan-24-luong-64-mb-cache', 4, NULL, 13999000.00, 241, NULL, 1, '2025-06-22 13:27:59', '2025-06-22 13:27:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_thumbnail` tinyint(1) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `type` enum('mo-ta','ky-thuat','thuc-te') DEFAULT 'mo-ta',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `is_thumbnail`, `sort_order`, `type`, `created_at`, `updated_at`) VALUES
(21, 27, 'products/qpLzYEZSY4qoKciY1Mys2zX5ELo9ia2QYFZVGI2w.webp', 1, 0, 'thuc-te', '2025-06-22 12:57:37', '2025-06-22 12:57:44'),
(22, 26, 'products/f4g1Vi2chJ0hnOExpyhyDkg5f7587RbnvCAnJB00.webp', 1, 0, 'thuc-te', '2025-06-22 12:57:51', '2025-06-22 12:57:54'),
(23, 28, 'products/SAHO6DltRAsUkOXvQHiVKzbfmB8lJfyv1S29A49p.webp', 1, 0, 'mo-ta', '2025-06-22 13:00:47', '2025-06-22 13:00:53'),
(24, 28, 'products/ShKQO95G6G3t2VZ6Z8o9ZK0aeqzYXXmIubHj0A14.jpg', 0, 0, 'ky-thuat', '2025-06-22 13:00:47', '2025-06-22 13:00:53'),
(25, 28, 'products/VH6msrzEvgTgPUhLiBSKzuHIGKdjb0fafazPc7RG.jpg', 0, 0, 'thuc-te', '2025-06-22 13:00:47', '2025-06-22 13:00:53'),
(26, 29, 'products/P2o84FxPacNiWxVNee0evUk0QPGRj5XKLEHQSB2Y.webp', 0, 0, 'mo-ta', '2025-06-22 13:01:53', '2025-06-22 13:01:58'),
(27, 29, 'products/gNA2hjxRpeX9tZUAXLXokNMRvZkzhRtMS87Ju4Cr.jpg', 1, 0, 'thuc-te', '2025-06-22 13:01:53', '2025-06-22 13:01:58'),
(28, 30, 'products/nQQ5HCpyvu1SkoMGnlJlC4On0fTlFzWl1oCg8QQ0.webp', 0, 0, 'mo-ta', '2025-06-22 13:02:52', '2025-06-22 13:02:56'),
(29, 30, 'products/Kdu2k4YeyXuDq8Xqb9upAm0fJkOHNIRvdu3tmptl.jpg', 0, 0, 'ky-thuat', '2025-06-22 13:02:52', '2025-06-22 13:02:56'),
(30, 30, 'products/ydHTfolbMr74vwcXlWTlzKuznNLXJF2mgO8hXwBl.webp', 1, 0, 'thuc-te', '2025-06-22 13:02:52', '2025-06-22 13:02:56'),
(31, 31, 'products/Dc4eRVkQhL8y38UVBtIYSnhF6EBS8j3HSJ1fcDOi.webp', 1, 0, 'thuc-te', '2025-06-22 13:20:54', '2025-06-22 13:20:58'),
(32, 32, 'products/bfH1W3wTlM21502vKzr77ypjF6ICfDoLMShsfuto.webp', 1, 0, 'thuc-te', '2025-06-22 13:21:53', '2025-06-22 13:21:56'),
(33, 33, 'products/Ll6HgNBHcaK3YaZdnyKrMc8gLAZPsb0Xy1vDVeyK.webp', 1, 0, 'thuc-te', '2025-06-22 13:22:52', '2025-06-22 13:22:56'),
(34, 35, 'products/V5cM7VGX3ErUrmRfTyneVtLonqPujTRicCcD65WS.webp', 1, 0, 'thuc-te', '2025-06-22 13:24:17', '2025-06-22 13:24:20'),
(35, 36, 'products/hz7kd1X1ue5wHwN0qKvSQPdYatRBC2YS84F7oSLP.webp', 1, 0, 'thuc-te', '2025-06-22 13:24:57', '2025-06-22 13:25:00'),
(36, 37, 'products/8Rt3NplI1asI1LV6uqpdZ3dy8doIqJ73RWac610o.webp', 1, 0, 'thuc-te', '2025-06-22 13:25:37', '2025-06-22 13:28:13'),
(37, 38, 'products/xUQhx7vJdoadiYZJzwOpcgcQqmMLywGkNR8INq37.webp', 1, 0, 'thuc-te', '2025-06-22 13:26:04', '2025-06-22 13:28:10'),
(38, 39, 'products/Q64dcfYQ8jBFC6tTmfRJ8OLkabrPoANhHcYMYHx2.webp', 1, 0, 'thuc-te', '2025-06-22 13:26:54', '2025-06-22 13:28:08'),
(39, 40, 'products/xSjeOxIgmoVM8dY32YGVUawCZZ1XYFee7sNMJuBd.webp', 1, 0, 'thuc-te', '2025-06-22 13:27:27', '2025-06-22 13:28:06'),
(40, 41, 'products/UlyhWIa8TN9aTXUTY3v3UKXeDXVBfrMJ9T0HvT0l.webp', 1, 0, 'thuc-te', '2025-06-22 13:27:59', '2025-06-22 13:28:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sale`
--

CREATE TABLE `product_sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sale`
--

INSERT INTO `product_sale` (`id`, `product_id`, `sale_id`, `created_at`, `updated_at`) VALUES
(21, 31, 5, NULL, NULL),
(22, 36, 5, NULL, NULL),
(23, 37, 5, NULL, NULL),
(24, 38, 5, NULL, NULL),
(25, 41, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total` decimal(12,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(6, 'bannerMng'),
(3, 'categoryMng'),
(9, 'contentMng'),
(4, 'orderMng'),
(2, 'productMng'),
(11, 'reportMng'),
(7, 'revenueMng'),
(8, 'support'),
(10, 'user'),
(5, 'userMng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 10),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 9),
(3, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `discount_type` enum('percent','amount') NOT NULL DEFAULT 'percent',
  `discount_value` decimal(10,2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `name`, `discount_type`, `discount_value`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(5, 'CPU', 'percent', 25.00, '2025-06-22 00:00:00', '2025-06-30 00:00:00', 1, '2025-06-22 09:29:04', '2025-06-22 13:45:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `phone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$XWyE.L1l3w5DsQFWpUWw7uSTarYtL9nUGI3.TZdrgxQvXmoJNIBCO', NULL, NULL, NULL, 'uFpbG8Gq67uWkdwDcxdUHeVGDuBzBdjGkxxi97MDtqmzU2j4OKUvNpldXyBJ', '2025-06-21 08:50:44', '2025-06-21 08:50:44'),
(2, 'куокфунг2005', 'quocphung2005@gmail.com', '$2y$12$68kzawbzPldrvcwM2xEQSugPn70BJo6SHTJln5nX2vipR85FbbObW', NULL, NULL, NULL, 'kA2SJuKZJiS7d5EHbSirBnrkgE5KFkEmyy8qHEFx3jgwHLaOqlhf1aXppuqI', '2025-06-21 08:55:10', '2025-06-21 08:55:10'),
(3, 'PC', 'upskh3sao@gmail.com', '$2y$12$apBOkMjrZkHSZTI891XOkerVQPm/PJ9dDxOy2xEDLPz7ZezCLPWAS', NULL, NULL, NULL, NULL, '2025-06-22 10:08:54', '2025-06-22 10:08:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_images_product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Chỉ mục cho bảng `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_product_images_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_sale`
--
ALTER TABLE `product_sale`
  ADD CONSTRAINT `product_sale_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_sale_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `revenues`
--
ALTER TABLE `revenues`
  ADD CONSTRAINT `revenues_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
