-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 08, 2023 lúc 11:19 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dealbook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-05-20 15:30:26', '$2y$10$YVJBKUvysXjPCtHed8CjYuCwA2oLT4Ww3v2hQa6JmaEUwo/diJ1yq', 0, 'dnQjaDnSx1lCfNo2FzTSgHe54dLEdqFcBpJAEYmfxa7qthMj2dWI6JpCoA36', '2023-05-20 15:30:26', '2023-05-20 15:30:26'),
(2, 'Nguyễn Văn A', 'nv@gmail.com', NULL, '$2y$10$EOoI07D7GHAKx3Rz9gRac.0jUFBDdl0m6Moo7hI5u/Ih1DNE.nGoS', 1, 'IJjiJzv7Z2uvGb1I6MXxpCzKAAqP6BajztpIRcl94jqbOm9efGSxQNb1DSSA', '2023-06-30 01:31:53', '2023-07-08 16:49:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Tác giả Shima MIZUKI', '2023-08-30 06:48:43', '2023-08-30 06:48:43'),
(5, 'Ôn Như Nguyễn Văn Ngọc', '2023-08-30 06:55:01', '2023-08-30 06:55:01'),
(6, 'Tác giả Thạch Lam', '2023-08-30 06:57:48', '2023-08-30 06:57:48'),
(7, 'Zihua Nguyễn', '2023-08-30 07:07:56', '2023-08-30 07:07:56'),
(8, 'Ngô Tất Tố', '2023-08-30 07:10:34', '2023-08-30 07:10:34'),
(9, 'Phan Việt', '2023-08-30 07:14:24', '2023-08-30 07:14:24'),
(10, 'Rio Book', '2023-08-30 07:26:45', '2023-08-30 07:26:45'),
(11, 'The Economist & Jeremy Kourdi', '2023-08-30 07:29:33', '2023-08-30 07:29:33'),
(12, 'Tim Hughes , Adam Gray , Hugo Whicher', '2023-08-30 07:32:31', '2023-08-30 07:32:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kim Đồng', '2023-08-30 06:45:07', '2023-08-30 06:45:07'),
(2, 'Tuổi Trẻ', '2023-08-30 06:45:21', '2023-08-30 06:45:21'),
(3, 'Phương Nam', '2023-08-30 06:45:55', '2023-08-30 06:45:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `url`, `parent_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Văn Học Việt Nam', 'storage/images/categories/image_183237.jpg', 1, '2023-08-30 06:38:46', '2023-08-30 06:38:46'),
(2, 'Bí Quyết Làm Giàu', 'storage/images/categories/bo-sach-500-cau-chuyen-dao-duc.jpg', 2, '2023-08-30 06:39:30', '2023-08-30 06:39:30'),
(3, 'Bí Quyết Rèn Luyện Bản Thân', 'storage/images/categories/bo-sach-nhung-cau-chuyen-cho-con-thanh-nguoi-tu-te.jpg', 2, '2023-08-30 06:39:56', '2023-08-30 06:39:56'),
(6, 'Conan', 'storage/images/categories/image_195509_1_29257.jpg', 4, '2023-08-30 06:40:44', '2023-08-30 06:40:44'),
(7, 'Doraemon', 'storage/images/categories/Doraemon1.jpg', 4, '2023-08-30 06:44:33', '2023-08-30 06:44:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
(3, 3, 17, 'hay quá', '2023-09-01 13:21:19', '2023-09-01 13:21:19'),
(4, 4, 11, 'Cuốn sách quá ý nghĩa', '2023-09-08 08:49:41', '2023-09-08 08:49:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medias`
--

CREATE TABLE `medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `medias`
--

INSERT INTO `medias` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(9, 'storage/images/products/8931805616863_1.jpg', 6, 'App\\Models\\Product', '2023-08-29 17:28:28', '2023-08-29 17:28:28'),
(10, 'storage/images/products/2023_03_21_09_33_51_2-390x510.jpg', 6, 'App\\Models\\Product', '2023-08-29 17:28:28', '2023-08-29 17:28:28'),
(11, 'storage/images/products/tieu-thuyet-conan-nhung-giay-cuoi-cung-toi-thien-duong.jpg', 7, 'App\\Models\\Product', '2023-08-30 06:50:41', '2023-08-30 06:50:41'),
(13, 'storage/images/products/gio_dau_mua.jpg', 9, 'App\\Models\\Product', '2023-08-30 06:58:58', '2023-08-30 06:58:58'),
(14, 'storage/images/products/nang_trong_vuon.jpg', 10, 'App\\Models\\Product', '2023-08-30 07:03:29', '2023-08-30 07:03:29'),
(15, 'storage/images/products/ky_tuc_xa_phong_307.jpg', 11, 'App\\Models\\Product', '2023-08-30 07:09:26', '2023-08-30 07:09:26'),
(16, 'storage/images/products/tat_den.jpg', 12, 'App\\Models\\Product', '2023-08-30 07:11:45', '2023-08-30 07:11:45'),
(17, 'storage/images/products/tuc_ngu_phong_giao.jpg', 8, 'App\\Models\\Product', '2023-08-30 07:13:34', '2023-08-30 07:13:34'),
(18, 'storage/images/products/ve_nha.jpg', 13, 'App\\Models\\Product', '2023-08-30 07:15:28', '2023-08-30 07:15:28'),
(19, 'storage/images/products/tieu-thuyet-conan-con-ac-mong-den-toi.jpg', 14, 'App\\Models\\Product', '2023-08-30 07:20:09', '2023-08-30 07:20:09'),
(20, 'storage/images/products/digital-marketing-tu-chien-luoc-den-thuc-thi.jpg', 15, 'App\\Models\\Product', '2023-08-30 07:28:23', '2023-08-30 07:28:23'),
(21, 'storage/images/products/chien_luoc_kinh_doanh.jpg', 16, 'App\\Models\\Product', '2023-08-30 07:30:53', '2023-08-30 07:30:53'),
(22, 'storage/images/products/smarketing.jpg', 17, 'App\\Models\\Product', '2023-08-30 07:35:03', '2023-08-30 07:35:03');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_20_132229_create_admins_table', 1),
(6, '2023_05_20_132330_create_parent_categories_table', 1),
(7, '2023_05_20_132406_create_categories_table', 1),
(8, '2023_05_20_132702_create_suppliers_table', 1),
(9, '2023_05_20_133025_create_brands_table', 1),
(10, '2023_05_20_133026_create_authors_table', 1),
(11, '2023_05_20_133057_create_products_table', 1),
(12, '2023_05_21_133738_create_vouchers_table', 1),
(13, '2023_05_21_134018_create_comments_table', 1),
(14, '2023_05_21_134027_create_replies_table', 1),
(15, '2023_05_21_134409_create_ratings_table', 1),
(16, '2023_05_23_134455_create_orders_table', 1),
(17, '2023_05_23_134502_create_order_details_table', 1),
(18, '2023_05_24_134629_create_setting_table', 1),
(19, '2023_05_26_210939_create_medias_table', 1),
(20, '2023_08_11_183940_add_google_columns_to_users_table', 2),
(21, '2023_05_20_224447_create_wishlists_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `voucher_code`, `total`, `address`, `status`, `created_at`, `updated_at`) VALUES
('order_7KsLCLaACurC2qhbgonHthVK', 3, NULL, 150000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 11:14:27', '2023-08-30 11:14:27'),
('order_AGYcW3vZjZ1viY9wKtROA94v', 4, NULL, 52000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 2, '2023-09-07 05:46:38', '2023-09-07 06:02:20'),
('order_C2flQsTI1j4dobZvW4ru7Y5E', 4, NULL, 52000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-09-07 05:48:11', '2023-09-07 05:48:11'),
('order_CFwwiGllFs3bKjhcCVB9ZCdz', 3, NULL, 150000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 19:43:02', '2023-08-30 19:43:02'),
('order_FRWpSKHZzNJENf5sL6UygCoB', 3, NULL, 190000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 2, '2023-09-01 09:03:54', '2023-09-01 10:35:29'),
('order_gnUQaiIMKUljMl8X0U9HAumy', 3, NULL, 100000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 08:28:34', '2023-08-30 08:28:34'),
('order_h2mDf4715fxLzNKraKcMshun', 3, 'km1', 50000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 08:09:58', '2023-08-30 08:09:58'),
('order_HcOcIiMds0T8v3co7eVRzzzR', 1, 'km1', -48000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 08:03:59', '2023-08-30 08:03:59'),
('order_hdh9k1wWQ6EXeilpSPazCAyq', 4, NULL, 52000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-09-07 05:46:13', '2023-09-07 05:46:13'),
('order_QI7c8aYbPxSrQmgNL2RK9mb4', 1, NULL, 50000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 07:37:12', '2023-08-30 07:37:12'),
('order_QLjkyDuzyw7qhMxgrHLrEbEw', 3, NULL, 1710000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-09-07 05:41:31', '2023-09-07 05:41:31'),
('order_SRI61aW5n3FhQReSAP6fhjmD', 4, NULL, 52000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-09-07 05:45:59', '2023-09-07 05:45:59'),
('order_sUCXx0Egh8mpqTEhRvBKF3hY', 1, 'km1', -48000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 1, '2023-08-30 08:04:40', '2023-08-30 08:11:50'),
('order_tFFQ8pJV6CqyWKlIwedKdLEt', 3, NULL, 190000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-09-01 08:51:26', '2023-09-01 08:51:26'),
('order_TgmnQD3TssWWKinpdMPo856e', 2, NULL, 280000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 2, '2023-08-29 17:35:00', '2023-08-29 17:36:29'),
('order_vKfm0dOSxk2a6nkQKQrqQ1mn', 3, NULL, 150000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 2, '2023-08-30 19:45:25', '2023-08-31 09:20:10'),
('order_WfM0MRKGczD2ClWXu3Fpbnuw', 3, NULL, 100000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 2, '2023-08-30 08:27:45', '2023-08-30 15:58:25'),
('order_xMKrAQIOhu4GsSoNT7YS8M6G', 1, NULL, 52000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 08:05:37', '2023-08-30 08:05:37'),
('order_zBJdbUFIQnf8LJ4hoQQNx6i5', 3, NULL, 150000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 2, '2023-08-30 16:18:06', '2023-08-30 16:19:11'),
('order_ZRR9p9sDQnrqZmFXyPZm0nXS', 3, NULL, 150000, 'số 100 đường cầu diễn,phường minh khai, quận bắc từ liêm, hà nội', 0, '2023-08-30 15:46:15', '2023-08-30 15:46:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(17, 'order_QI7c8aYbPxSrQmgNL2RK9mb4', 9, 1, '2023-08-30 07:37:12', '2023-08-30 07:37:12'),
(18, 'order_HcOcIiMds0T8v3co7eVRzzzR', 12, 1, '2023-08-30 08:03:59', '2023-08-30 08:03:59'),
(19, 'order_sUCXx0Egh8mpqTEhRvBKF3hY', 12, 1, '2023-08-30 08:04:40', '2023-08-30 08:04:40'),
(20, 'order_xMKrAQIOhu4GsSoNT7YS8M6G', 12, 1, '2023-08-30 08:05:37', '2023-08-30 08:05:37'),
(21, 'order_h2mDf4715fxLzNKraKcMshun', 16, 1, '2023-08-30 08:09:58', '2023-08-30 08:09:58'),
(22, 'order_WfM0MRKGczD2ClWXu3Fpbnuw', 13, 1, '2023-08-30 08:27:45', '2023-08-30 08:27:45'),
(23, 'order_gnUQaiIMKUljMl8X0U9HAumy', 13, 1, '2023-08-30 08:28:34', '2023-08-30 08:28:34'),
(24, 'order_7KsLCLaACurC2qhbgonHthVK', 16, 1, '2023-08-30 11:14:27', '2023-08-30 11:14:27'),
(25, 'order_ZRR9p9sDQnrqZmFXyPZm0nXS', 16, 1, '2023-08-30 15:46:15', '2023-08-30 15:46:15'),
(26, 'order_zBJdbUFIQnf8LJ4hoQQNx6i5', 16, 1, '2023-08-30 16:18:06', '2023-08-30 16:18:06'),
(27, 'order_CFwwiGllFs3bKjhcCVB9ZCdz', 16, 1, '2023-08-30 19:43:02', '2023-08-30 19:43:02'),
(28, 'order_vKfm0dOSxk2a6nkQKQrqQ1mn', 16, 1, '2023-08-30 19:45:25', '2023-08-30 19:45:25'),
(29, 'order_tFFQ8pJV6CqyWKlIwedKdLEt', 17, 1, '2023-09-01 08:51:26', '2023-09-01 08:51:26'),
(30, 'order_FRWpSKHZzNJENf5sL6UygCoB', 17, 1, '2023-09-01 09:03:54', '2023-09-01 09:03:54'),
(31, 'order_QLjkyDuzyw7qhMxgrHLrEbEw', 17, 3, '2023-09-07 05:41:31', '2023-09-07 05:41:31'),
(32, 'order_SRI61aW5n3FhQReSAP6fhjmD', 12, 1, '2023-09-07 05:45:59', '2023-09-07 05:45:59'),
(33, 'order_hdh9k1wWQ6EXeilpSPazCAyq', 12, 1, '2023-09-07 05:46:13', '2023-09-07 05:46:13'),
(34, 'order_AGYcW3vZjZ1viY9wKtROA94v', 12, 1, '2023-09-07 05:46:38', '2023-09-07 05:46:38'),
(35, 'order_C2flQsTI1j4dobZvW4ru7Y5E', 12, 1, '2023-09-07 05:48:11', '2023-09-07 05:48:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parent_categories`
--

CREATE TABLE `parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `parent_categories`
--

INSERT INTO `parent_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sách Văn Học', '2023-08-30 06:35:01', '2023-08-30 06:35:01'),
(2, 'Sách Kinh Tế', '2023-08-30 06:35:17', '2023-08-30 06:35:17'),
(3, 'Sách Thiếu Nhi', '2023-08-30 06:35:30', '2023-08-30 06:35:30'),
(4, 'Truyện Tranh', '2023-08-30 06:35:48', '2023-08-30 06:35:48');

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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `qty_buy` int(11) NOT NULL DEFAULT 0,
  `public_date` date DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `brand_id`, `supplier_id`, `author_id`, `description`, `qty`, `qty_buy`, `public_date`, `size`, `cover`, `page`, `status`, `created_at`, `updated_at`, `start_date`, `end_date`, `sale_price`, `type`) VALUES
(7, 'Conan - Những Giây Cuối Cùng Tới Thiên Đường', 23000, 6, 1, 1, 4, NULL, 50, 0, '2023-08-30', NULL, NULL, 80, 1, '2023-08-30 06:50:41', '2023-08-30 07:18:05', '2023-08-30', '2023-10-30', 50000, 1),
(9, 'Gió Đầu Mùa', 50000, 1, 2, 2, 6, NULL, 29, 1, '2023-08-30', NULL, NULL, 179, 1, '2023-08-30 06:58:58', '2023-08-30 07:37:12', NULL, NULL, NULL, 0),
(10, 'Nắng Trong Vườn', 52000, 1, 2, 2, 6, NULL, 20, 0, '2023-08-30', NULL, NULL, 170, 1, '2023-08-30 07:03:29', '2023-08-30 07:03:29', '2023-08-30', '2023-10-08', 46000, 1),
(11, 'Ký Túc Xá Phòng 307', 55000, 1, 1, 1, 7, NULL, 50, 0, '2023-08-30', NULL, NULL, 176, 1, '2023-08-30 07:09:26', '2023-08-30 07:09:26', NULL, NULL, NULL, 0),
(12, 'Tắt Đèn', 52000, 1, 3, 3, 8, NULL, 33, 7, '2023-08-30', NULL, NULL, 231, 1, '2023-08-30 07:11:45', '2023-09-07 05:48:11', NULL, NULL, NULL, 0),
(13, 'Về Nhà', 100000, 1, 1, 1, 9, NULL, 33, 2, '2019-10-10', NULL, NULL, 399, 1, '2023-08-30 07:15:28', '2023-09-08 07:29:58', NULL, NULL, 0, 0),
(14, 'Conan - Cơn Ác Mộng Đen Tối', 55000, 6, 1, 1, 4, 'Trong chuyến tham quan thủy cung Toto cùng tiến sĩ Agasa, đội thám tử nhí tình cờ bắt gặp người phụ nữ mất trí nhớ, mình đầy thương tích, và đặc biệt hơn cả: hai đồng tử của cô ta khác màu nhau. Đội thám tử nhí nhiệt tình giúp đỡ, cùng cô ta lên vòng đu quay khổng lồ. Qua vẻ ngoài và khí chất kì dị, Haibara nghi ngờ cô ta là thành viên của tổ chức áo đen. Sự thật là, đêm hôm trước, người phụ nữ này đã đột nhập vào Cơ quan Cảnh sát Quốc gia rồi gặp tai nạn trên đường đào thoát. Tổ chức áo đen đang ráo riết truy lùng hòng cướp người về!', 30, 0, NULL, NULL, NULL, 97, 1, '2023-08-30 07:20:09', '2023-08-30 07:20:09', '2023-08-30', '2023-10-29', 50000, 1),
(16, 'Chiến Lược Kinh Doanh', 150000, 2, 3, 3, 11, 'Cuốn cẩm nang về xây dựng chiến lược kinh doanh này sẽ giúp các doanh nghiệp tránh được những hệ quả khốc liệt của việc đưa ra những quyết định kém hiệu quả. Với những minh họa rõ ràng, các nghiên cứu tình huống cụ thể, 18 chương của cuốn sách giúp người đọc có một tầm nhìn tổng quát về chiến lược: cách thức phát triển và thực thi chiến lược, phân bổ nguồn lực và dẫn dắt nhân sự cho chiến lược thế nào, đổi mới sáng tạo có vai trò ra sao trong chiến lược, làm thế nào để bán hàng và marketing một cách chiến lược.\r\n\r\n \r\n\r\nMột chiến lược kinh doanh tốt được thực thi hoàn hảo chính là nhân tố quyết định tương lai thành công của doanh nghiệp. Cuốn sách này cũng chỉ ra cho bạn đọc thấy, trong lịch sử có vô vàn những quyết định chiến lược, cả lớn lẫn nhỏ, do tổ chức thiếu hiệu quả mà đã dẫn đến hệ quả nặng nề.\r\n\r\n \r\n\r\nHay nói như chính tác giả thì “Một chiến lược được cân nhắc rõ ràng và đầy cảm hứng sẽ mang lại động lực thúc đẩy thành công thương mại, trong khi một chiến lược yếu kém hoặc bị hiểu sai có thể dẫn công ty tới chỗ phá sản.”', 54, 6, '2023-08-30', NULL, NULL, 356, 1, '2023-08-30 07:30:53', '2023-08-30 19:45:25', NULL, NULL, NULL, 0),
(17, 'SMARKETING - Giải Pháp Cạnh Tranh Trong Thế Giới Số', 190000, 2, 2, 2, 12, 'Từ trước tới nay, bán hàng và marketing luôn là hai đế chế riêng biệt, với bộ máy lãnh đạo riêng, ngân sách riêng và cấu trúc tổ chức riêng.\r\nGiờ đây, trước những thay đổi không ngừng của thế giới kinh doanh, với sự bùng nổ của internet và hiểu biết của khách hàng ngày một cao, tương lai của các doanh nghiệp phụ thuộc vào việc phát triển hai đế chế này theo kịp với sự thay đổi của thế giới.\r\nVì vậy, hai bộ phận này đã được hợp nhất thành đơn vị duy nhất, gọi là Smarketing. Mục tiêu chính của Smarketing là nâng cao chất lượng trải nghiệm khách hàng thông qua sắp xếp hợp lý chu trình tương tác với khách hàng; đưa ra những số liệu thống nhất giữa hai bộ phận; cung cấp cho ban lãnh đạo cái nhìn toàn cảnh về các chỉ số đo lường kết quả\r\nbán hàng...\r\nCuốn sách này sẽ cung cấp phương pháp, quy trình và các công cụ cần thiết để các công ty chuyển đổi sang mô hình vận hành dựa trên Smarketing, mà sự phát triển của nó sẽ quyết định tương lai của doanh nghiệp.', 15, 5, '2023-08-30', NULL, NULL, 393, 1, '2023-08-30 07:35:03', '2023-09-07 05:41:31', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `star`, `created_at`, `updated_at`) VALUES
(8, 3, 9, 5, '2023-08-30 10:35:58', '2023-08-30 10:35:58'),
(10, 3, 17, 5, '2023-08-30 11:04:36', '2023-08-30 11:04:36'),
(11, 3, 13, 5, '2023-09-01 10:34:04', '2023-09-01 10:34:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(5, 3, 'admin', 'Cảm ơn quý khách hàng đã quan tâm sản phẩm', '2023-09-08 07:33:43', '2023-09-08 07:33:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `title`, `email`, `tel`, `address`, `created_at`, `updated_at`) VALUES
(1, 'BookStore', 'BookStore@gmail.com', '+01 23.456.789', 'Hà Nội', '2023-08-29 17:31:19', '2023-08-29 17:31:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kim Đồng', '2023-08-30 06:46:24', '2023-08-30 06:46:24'),
(2, 'Tuổi Trẻ', '2023-08-30 06:46:38', '2023-08-30 06:46:38'),
(3, 'Phương Nam', '2023-08-30 06:46:48', '2023-08-30 06:46:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`, `status`, `avatar`, `provider`, `provider_id`, `access_token`) VALUES
(1, 'Test', 'test@gmail.com', NULL, '$2y$10$OCnQ7PvpxDSD942T1OmjIOdB8CLV3V4a9GPqDrQpxdqqhoWDzdNNe', '0123456789', 'tG84sWvYx5AQjn1T1rArjKPXuXhqtTdZoQO43arJgXqXeeVZgiWxeEyUFw1D', '2023-08-29 17:47:37', '2023-08-29 17:47:37', 1, NULL, NULL, NULL, NULL),
(2, 'Hiển Phạm Minh', 'hienpmdc2@gmail.com', NULL, '', '0123456789', 'Zzp0ZuTAgeFzy13ru49Vnoga0submV6kr74SFgL5y06rN2T0eWsmBxxlzoWW', '2023-08-29 17:09:05', '2023-08-29 17:34:02', 1, 'https://lh3.googleusercontent.com/a/AAcHTtf2R41BQ0JQ3OYq7rA67r4umIXVpOLSRGEMmu7P2WLpgsAl=s96-c', 'google', '101374039680393252648', 'ya29.a0AfB_byDIJHD99y2qjaLpBzAJF-TK1y-12ekplT3tadWx8V39YlJzL1i23keN9JGGJrnxkReT1NdFi51HRhruPXBKJy0d1W0mcGGJiSUz2lZdvif6TMRTNIJOeEpGMfNin92QpAZ5bDqBRIZfZMB-4qIZEhXueFMfJ34eWAaCgYKAecSARMSFQHsvYlsNFdWkk-X84kVUdM6wE1cMg0173'),
(3, 'Phạm Minh Hoa', 'hoa@gmail.com', NULL, '$2y$10$O8BcjbOo/kFcm0/5SRfeu.ak2sLe3SxP5VumIwZO42xpbypoDHy0W', '0123456789', 'WJI9SD51pCHyKL1hqve4HlPqjkIm4yx9MrvGUoimKaxoaFHX8qWnHQbka2v1', '2023-08-30 08:08:42', '2023-08-30 08:08:42', 1, NULL, NULL, NULL, NULL),
(4, 'Phạm Minh Hùng', 'hung@gmail.com', NULL, '$2y$10$5JwTP485wHL7CHJZ9yPLpO6YGomD9/lFg0vyiNjt45GDDTDPEhqva', '0123456789', 'PyXmArPUaVsPpGSqQu3NytTVoLJsv3crGUq1QpIt9run51yNgIXv3wSb3CCa', '2023-09-07 04:52:15', '2023-09-07 04:52:15', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`code`, `price`, `qty`, `created_at`, `updated_at`) VALUES
('km1', 100000, 96, '2023-08-30 08:09:58', '2023-08-30 08:09:58'),
('km2', 50000, 200, '2023-08-30 08:10:30', '2023-08-30 08:10:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 12, 4, '2023-09-08 07:46:25', '2023-09-08 07:46:25'),
(5, 11, 4, '2023-09-08 07:46:29', '2023-09-08 07:46:29');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_category_id_index` (`parent_category_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `medias`
--
ALTER TABLE `medias`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_voucher_code_index` (`voucher_code`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_index` (`order_id`),
  ADD KEY `order_details_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_brand_id_index` (`brand_id`),
  ADD KEY `products_supplier_id_index` (`supplier_id`),
  ADD KEY `products_author_id_index` (`author_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_index` (`user_id`),
  ADD KEY `ratings_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_index` (`comment_id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`code`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_index` (`product_id`),
  ADD KEY `wishlists_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `parent_categories`
--
ALTER TABLE `parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `parent_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_voucher_code_foreign` FOREIGN KEY (`voucher_code`) REFERENCES `vouchers` (`code`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
