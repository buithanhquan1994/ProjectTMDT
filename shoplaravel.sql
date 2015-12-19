-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2015 at 02:56 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoplaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE IF NOT EXISTS `cates` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 'dien-thoai', 10, 0, 'DT', 'Điện thoại', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'SamSung', 'samsung', 10, 1, 'SS', 'SamSung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Nokia', 'nokia', 10, 1, 'NK', 'Nokia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Iphone', 'iphone', 10, 1, 'IP', 'Iphone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Sony', 'sony', 10, 1, 'SN', 'Sony', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Thời trang', 'thoi-trang', 10, 0, 'TT', 'Thời trang', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Thời trang cho Nam', 'thoi-trang-cho-nam', 10, 6, 'DN', 'Thời trang cho Nam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Thời trang cho Nữ', 'thoi-trang-cho-nu', 10, 6, 'TTCN', 'Thời trang cho Nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Áo thun nam', 'ao-thun-nam', 10, 9, 'ATN', 'Áo thun nam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Quần lửng nam', 'quan-lung-nam', 10, 9, 'QL', 'Quần lửng nam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Áo thun nữ', 'ao-thun-nu', 10, 10, 'ATN', 'Áo thun nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Quần jean nữ', 'quan-jean-nu', 10, 10, 'QJN', 'Quần jean nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Ẩm thực', 'am-thuc', 10, 0, 'AT', 'Ẩm thực', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Buffet', 'buffet', 10, 15, 'BF', 'Buffet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Thực phẩm', 'thuc-pham', 10, 15, 'TP', 'Thực phẩm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cafe - Kem - Bánh', 'cafe---kem---banh', 10, 15, 'CFKB', 'Cafe - Kem - Bánh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Sản phẩm', 'san-pham', 10, 0, 'SP', 'Sản phẩm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Gia dụng', 'gia-dung', 10, 19, 'GD', 'Gia dụng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Nội thất', 'noi-that', 10, 19, 'NT', 'Nội thất', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Sức khỏe và làm đẹp', 'suc-khoe-va-lam-dep', 10, 19, 'SKVLD', 'Sức khỏe và làm đẹp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Đào tạo và giải trí', 'dao-tao-va-giai-tri', 10, 0, 'DTVGT', 'Đào tạo và giải trí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đào tạo', 'dao-tao', 10, 23, 'DT', 'Đào tạo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Khoa học cho bé', 'khoa-hoc-cho-be', 10, 23, 'KHCB', 'Khoa học cho bé', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gói chụp hình', 'goi-chup-hinh', 10, 23, 'GCH', 'Gói chụp hình', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Karaoke', 'karaoke', 10, 23, 'KROK', 'Karaoke\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_08_073554_cates', 1),
('2015_11_08_074505_Product', 1),
('2015_11_08_075424_ProductImages', 1),
('2015_12_11_082831_Transaction', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keywords`, `description`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(2, '02 Giờ Hát + 01 Dĩa Trái Cây Tại King Club Karaoke - Không Gian Sang Trọng, Đẳng Cấp', '', 129000, '<p>King Club</p>\r\n', '<p>C&ugrave;ng Bạn B&egrave; Xả Stress, H&ograve;a M&igrave;nh V&agrave;o C&aacute;c Giai Điệu S&ocirc;i Động Với 02 Giờ H&aacute;t + 01 Dĩa Tr&aacute;i C&acirc;y Tại Kh&ocirc;ng Gian Sang Trọng, Đẳng Cấp Của King Club Karaoke. Voucher 570.000 VNĐ, C&ograve;n 129.000 VNĐ, Giảm 77%.</p>\r\n', 'karaoke.png', 'Karaoke', 'Karaoke', 1, 27, '2015-12-18 19:56:14', '2015-12-18 19:56:14'),
(3, 'Trọn Gói Chụp Album Cưới Ngoại Cảnh Nội Thành TPHCM - Quý Nguyễn Studio', '', 2600000, '<p>G&oacute;i chụp h&igrave;nh</p>\r\n', '<p>Cơ Hội Ghi Lại Những Khoảnh Khắc Đẹp B&ecirc;n &ldquo;Nửa Kia&rdquo; Của Bạn C&ugrave;ng Trọn G&oacute;i Album Chụp Ảnh Cưới Ngoại Cảnh &ndash; Nội Th&agrave;nh TPHCM &ndash; Qu&yacute; Nguyễn Studio. Voucher 6.000.000 VNĐ, C&ograve;n 2.600.000 VNĐ, Giảm 57%.</p>\r\n', 'chup hinh.png', 'chup hinh ', 'chup hinh', 1, 26, '2015-12-18 20:01:29', '2015-12-18 20:01:29'),
(5, 'Trọn Gói Chụp Album Cưới Ngoại Cảnh Nội Thành TPHCM - Hồng Thanh Studio', '', 1999000, '<p>Chụp h&igrave;nh cưới nội ngoại th&agrave;nh</p>\r\n', '<p>Lưu Lại Những Khoảnh Khắc Đẹp, Đ&aacute;ng Nhớ Với Trọn G&oacute;i Chụp Album Cưới Ngoại Cảnh Nội Th&agrave;nh TPHCM Tại Hồng Thanh Studio. Voucher 6.800.000 VNĐ, C&ograve;n 1.999.000 VNĐ, Giảm 71%.</p>\r\n', 'chuphinh2.png', 'chup hinh', 'chup hinh', 1, 26, '2015-12-18 20:08:52', '2015-12-18 20:08:52'),
(8, 'Chụp Hình Baby - Gia Đình Tại Studido Lê Đăng', '', 70000, '<p>Chụp H&igrave;nh Baby - Gia Đ&igrave;nh Tại Studido L&ecirc; Đăng</p>\r\n', '<p>Lưu Giữ Những Khoảnh Khắc Đ&aacute;ng Nhớ Với G&oacute;i Chụp H&igrave;nh Baby - Gia Đ&igrave;nh Tại Studio L&ecirc; Đăng. Voucher 800.000 VNĐ, C&ograve;n 69.000 VNĐ, Giảm 91%.</p>\r\n', 'chuphinhembe.png', 'chup hinh baby', 'chup hinh baby', 1, 26, '2015-12-18 20:27:33', '2015-12-18 20:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$mSrsSuq3aByt5i.EZp.LruW7xug4lIoWottPxOoAl/XU/jz47ibVa', 'mualua98@gmail.com', 1, 'RcsRDM92C4XCiBTYBHPcHa0UQV24GjGmwukIlmKw', '2015-12-18 06:42:06', '2015-12-18 06:42:06'),
(2, 'Nguyen Van Teo', '$2y$10$53K.ySNKQBsJ/iJ1KGvAqOx4LpOLVPq.yIGUNl6N671Rc6Cqeii3q', 'teo@gmail.com', 0, 'kxCkF2Cf6dTSscM0Vs15xF2ZWCG2lPo8oBj8BtG53PygVthEGebUy0REa0I4', '2015-12-19 00:46:29', '2015-12-19 01:29:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
