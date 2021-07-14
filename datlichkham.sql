-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2021 lúc 05:15 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `healthit`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `realizada` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sns` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `especialidade` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sintomas` text COLLATE utf8mb4_unicode_ci,
  `diagnostico` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `appointments`
--

INSERT INTO `appointments` (`id`, `realizada`, `name`, `sns`, `data`, `especialidade`, `user_id`, `sintomas`, `diagnostico`, `created_at`, `updated_at`) VALUES
(103, 0, 'Trần Văn T', '1111111111', '2021-08-19 16:34:00', 2, 31, NULL, NULL, '2021-06-24 01:35:12', '2021-07-13 01:51:11'),
(104, 0, 'Le Thi K', '098098098', '2021-07-30 17:03:00', 13, 30, NULL, NULL, '2021-06-25 02:03:51', '2021-07-13 02:00:41'),
(105, 0, 'Đinh Văn X', '03545454545', '2021-07-22 11:52:00', 8, 31, NULL, NULL, '2021-07-12 09:50:25', '2021-07-13 02:01:26'),
(106, 1, 'Hồ Thị S', '0909090909', '2021-07-15 11:01:00', 2, 23, '- Đau đầu, buồn nôn', '- Rối loạn tiền đình\r\n- Phác đồ điều trị:...', '2021-07-12 10:02:00', '2021-07-13 17:59:39'),
(107, 0, 'Nguyen Van N', '123123123', '2021-07-15 11:04:00', 2, 31, NULL, NULL, '2021-07-12 10:05:11', '2021-07-12 10:05:11'),
(108, 0, 'Le Thi B', '090909123', '2021-07-14 11:10:00', 2, 23, NULL, NULL, '2021-07-12 10:10:16', '2021-07-12 10:10:16');

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
(3, '2017_05_11_200607_create_role_users_table', 1),
(4, '2017_05_11_200729_create_roles_table', 1),
(5, '2017_05_12_115258_create_appointments_table', 1),
(6, '2017_05_14_205016_create_proficiencies_table', 1),
(7, '2017_05_17_190450_create_proficiency_user_table', 1);

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
-- Cấu trúc bảng cho bảng `proficiencies`
--

CREATE TABLE `proficiencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `proficiencies`
--

INSERT INTO `proficiencies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tim mạch', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(3, 'Da liễu', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(4, 'Nội tiết', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(5, 'Nhi', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(6, 'Thần kinh', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(7, 'Giải phẩu thẩm mỹ', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(8, 'Tai mũi họng', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(9, 'Hô hấp', '2021-06-10 21:25:31', '2021-06-10 21:25:31'),
(10, 'Cơ xương khớp', '2021-06-10 21:25:32', '2021-06-10 21:25:32'),
(11, 'Gan tụy mật', '2021-06-10 21:25:32', '2021-06-10 21:25:32'),
(12, 'Mắt', '2021-06-10 21:25:32', '2021-06-10 21:25:32'),
(13, 'Nội tổng quát', '2021-06-10 21:25:32', '2021-06-10 21:25:32'),
(14, 'Phụ khoa', '2021-06-10 21:25:32', '2021-06-10 21:25:32'),
(15, 'Răng hàm mặt', '2021-06-10 21:25:32', '2021-06-10 21:25:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `proficiency_user`
--

CREATE TABLE `proficiency_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `proficiency_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `proficiency_user`
--

INSERT INTO `proficiency_user` (`id`, `proficiency_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(11, 2, 23, NULL, NULL),
(12, 4, 23, NULL, NULL),
(13, 9, 23, NULL, NULL),
(14, 2, 1, NULL, NULL),
(20, 9, 29, NULL, NULL),
(21, 14, 29, NULL, NULL),
(22, 13, 30, NULL, NULL),
(23, 14, 30, NULL, NULL),
(24, 2, 31, NULL, NULL),
(25, 3, 31, NULL, NULL),
(26, 4, 31, NULL, NULL),
(27, 5, 31, NULL, NULL),
(28, 6, 31, NULL, NULL),
(29, 7, 31, NULL, NULL),
(30, 8, 31, NULL, NULL),
(31, 9, 31, NULL, NULL),
(32, 10, 31, NULL, NULL),
(33, 11, 31, NULL, NULL),
(34, 12, 31, NULL, NULL),
(35, 13, 31, NULL, NULL),
(36, 14, 31, NULL, NULL),
(37, 15, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Doctor', NULL, NULL),
(2, 'Helpdesk', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_users`
--

INSERT INTO `role_users` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 1, 1, NULL, NULL),
(12, 2, 12, NULL, NULL),
(22, 2, 22, NULL, NULL),
(23, 1, 23, NULL, NULL),
(25, 1, 27, NULL, NULL),
(27, 1, 29, NULL, NULL),
(28, 1, 30, NULL, NULL),
(29, 1, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seg_social` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_in` time DEFAULT NULL,
  `hora_out` time DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `seg_social`, `password`, `hora_in`, `hora_out`, `remember_token`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Bác sĩ A', 'doctor@healthit.com', '58989208', '$2y$10$t8bjfgt2dpvLLhzKbDGM6eBnVgvKt51rDF.oV2W.ychJKYdAhYZOm', NULL, NULL, NULL, '2021-06-10 21:25:35', '2021-07-12 04:15:03', 0),
(12, 'Nhân Viên Trực 1', 'nhanvien1@healthit.com', '45042432', '$2y$10$azqejBRyFLjhMPl5d01FvuUa4yNeoxSST2xdk7fE7tC2nYHjXyxA6', NULL, NULL, NULL, '2021-06-10 21:25:35', '2021-06-10 21:25:35', 1),
(22, 'Admin', 'admin@healthit.com', '23550695', '$2y$10$tkKgaDAN3zpkyUXlvnN4nOexw1Hgt8ycSksJLDLn0Qn3AVR8nrY9u', NULL, NULL, NULL, '2021-06-10 21:25:37', '2021-06-10 21:25:37', 1),
(23, 'Bác sĩ B', 'bacsiB@gmail.com', '111111222', '$2y$10$04s4aJfvZ5hgPuAvnj1V9uDNYZdhGPNpgnsg85gpEHXL/fHJvqud6', '07:00:00', '20:00:00', NULL, '2021-06-18 03:16:59', '2021-07-12 04:15:09', 0),
(24, 'Võ Hoàng Điệp', 'vohoangdiep@gmail.com', '99999', '$2y$10$zb.kY4NHB3TbiCFdw2yPFuYY2hea20x/jtpmruy1Kxc8OJDfOzILi', '08:22:00', '22:29:00', NULL, '2021-06-22 08:39:42', '2021-06-22 08:39:42', 1),
(25, 'Khách hàng tự book', 'noone@noo.com', '11111111', '', NULL, NULL, NULL, NULL, NULL, 1),
(26, 'Nguyen Van G', '09090909@gmail.com', '909090909', '$2y$10$uPppw6iQsi/9wAagLsoXN.V4jaDpWygNfg3dpyDO5Sj0Zm1wbD.Bu', '04:18:00', '21:18:00', NULL, '2021-07-12 02:19:27', '2021-07-12 02:19:27', 1),
(29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0980988888', '$2y$10$0AL2ZkD1fuQ6EIcFE6VK6u7dVuHOacDQB/g5TbAF4ql.D7vZ3k.U2', '05:16:00', '17:16:00', NULL, '2021-07-12 04:16:47', '2021-07-12 04:16:47', 1),
(30, 'Lê Thị B', 'lethib@gmail.com', '0909090909', '$2y$10$gpB4bJfWOnqKIdIH5Tx6sOy7Gj61gtX0yqP16B6GQ/RfoGPDn30Gu', '05:19:00', '17:19:00', NULL, '2021-07-12 04:19:41', '2021-07-12 04:19:41', 1),
(31, 'Tran Van X', 'tranvanx@gmail.com', '0909090777', '$2y$10$xykIY.w08fp5yYY8wDMOv.JHqIN.OMVbk50Vnm.Fm5eZN24EWJcXi', '02:00:00', '23:00:00', NULL, '2021-07-12 10:01:09', '2021-07-12 10:01:09', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Chỉ mục cho bảng `proficiencies`
--
ALTER TABLE `proficiencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `proficiency_user`
--
ALTER TABLE `proficiency_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT cho bảng `proficiencies`
--
ALTER TABLE `proficiencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `proficiency_user`
--
ALTER TABLE `proficiency_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
