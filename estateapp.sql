-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mysql
-- Thời gian đã tạo: Th5 02, 2024 lúc 04:38 PM
-- Phiên bản máy phục vụ: 8.0.28
-- Phiên bản PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `estateapp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `building`
--

CREATE TABLE `building` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `structure` varchar(255) DEFAULT NULL,
  `numberofbasement` int DEFAULT NULL,
  `floorarea` int DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `rentprice` int DEFAULT NULL,
  `rentpricedescription` text,
  `servicefee` varchar(255) DEFAULT NULL,
  `carfee` varchar(255) DEFAULT NULL,
  `motofee` varchar(255) DEFAULT NULL,
  `overtimefee` varchar(255) DEFAULT NULL,
  `waterfee` varchar(255) DEFAULT NULL,
  `electricityfee` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `renttime` varchar(255) DEFAULT NULL,
  `decorationtime` varchar(255) DEFAULT NULL,
  `brokeragetee` decimal(13,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `linkofbuilding` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `managername` varchar(255) DEFAULT NULL,
  `managerphone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `owner_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `building`
--

INSERT INTO `building` (`id`, `name`, `street`, `ward`, `district`, `structure`, `numberofbasement`, `floorarea`, `direction`, `level`, `rentprice`, `rentpricedescription`, `servicefee`, `carfee`, `motofee`, `overtimefee`, `waterfee`, `electricityfee`, `deposit`, `payment`, `renttime`, `decorationtime`, `brokeragetee`, `type`, `note`, `linkofbuilding`, `map`, `avatar`, `createddate`, `modifieddate`, `createdby`, `modifiedby`, `managername`, `managerphone`, `status`, `owner_id`) VALUES
(1, 'Nam Giao Building Tower', '59 phan xích long', 'Phường 2', 'QUAN_1', NULL, 2, 500, NULL, NULL, 15, '15 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TANG_TRET,NGUYEN_CAN', NULL, NULL, NULL, 'https://drive.google.com/thumbnail?id=1PwtYtNKcDKehiKp9d4bL5gBBnvQkZVS6', NULL, '2024-05-02 02:56:52', NULL, NULL, 'Anh Nam-Chị Linh', '0915354727', 1, 1),
(2, 'ACM Tower', '96 cao thắng', 'Phường 4', 'QUAN_2', NULL, 2, 650, NULL, NULL, 18, '18 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NGUYEN_CAN', NULL, NULL, NULL, 'https://drive.google.com/thumbnail?id=12O-SRGHb49AhKHx4whPZC4epRupYDj-Y', NULL, '2024-05-01 10:36:26', NULL, NULL, 'Chú Thuận', '0173546263', 1, 1),
(3, 'Alpha 2 Building Tower', '153 nguyễn đình chiểu', 'Phường 6', 'QUAN_1', NULL, 1, 200, NULL, NULL, 20, '20 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NOI_THAT', NULL, NULL, NULL, 'https://drive.google.com/thumbnail?id=1Hoh3POxjrrTN53Gsw3mEXWvFbJucdxBD', NULL, '2024-05-01 10:37:50', NULL, NULL, 'Cô Lý', '0555532578', 1, 1),
(4, 'IDD 1 Building', '111 Lý Chính Thắng', 'Phường 7', 'QUAN_4', NULL, 1, 200, NULL, NULL, 12, '12 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TANG_TRET,NGUYEN_CAN,NOI_THAT', NULL, NULL, NULL, 'https://drive.google.com/thumbnail?id=1kIvfO6MAEMka6sAgEvI-xaXz0tKcIXtw', NULL, '2024-05-01 10:41:47', NULL, NULL, 'Anh Long', '017345253', 1, 1),
(9, 'Bitexco', 'Nguyễn Huệ', 'Bến Nghé', 'QUAN_1', '', 68, 500, '', NULL, 50, '5', '', '', '', '', '', '', '', '', '', '', NULL, 'NOI_THAT,NGUYEN_CAN,TANG_TRET,CHO_THUE,BAN', '', '', '', 'https://drive.google.com/thumbnail?id=1tGMCtVZEZ-EiMGx8NBUR2fiyULqWAchX', '2024-05-01 07:54:44', '2024-05-01 10:42:45', NULL, NULL, 'Thu', '0987899977', 1, 1),
(10, 'Bitexco', 'Nguyễn Huệ', 'Bến Nghé', 'QUAN_1', '', 68, 500, '', NULL, 50, '5', '', '', '', '', '', '', '', '', '', '', NULL, 'NOI_THAT,NGUYEN_CAN,TANG_TRET,CHO_THUE,BAN', '', '', '', 'https://drive.google.com/thumbnail?id=1Gu9lX5_ZlAQ37rrKd3Y6ItyGDMJx9bny', '2024-05-01 07:58:17', '2024-05-01 10:04:36', NULL, NULL, 'Thu', '0987899977', 1, 1),
(11, 'Phú Mỹ Hưng Glat', 'Tân Mỹ', 'Tân Phú', 'QUAN_7', 'nhà nhiều tầng', 8, 400, 'Đông - Nam', NULL, 20, '20 triệu/ tầng', '', '', '', '', '', '', '', '', '', '', NULL, 'NOI_THAT,NGUYEN_CAN,TANG_TRET,CHO_THUE', '', '', '', 'https://drive.google.com/thumbnail?id=1hkDDLFUN6jQZBv9oFFW7Gy8Zi20h3F56', '2024-05-01 08:03:07', '2024-05-01 20:06:33', NULL, NULL, 'Long', '077777777', 1, 2),
(12, 'Căn gác cao ban công full Nt mới 100% GẦN RMIT, TDTU, LOTTE Q7', 'Lâm Văn Bền', 'Tân Kiểng', 'HUYEN_NHA_BE', '', 2, 20, '', NULL, 5, '5 triệu/ tháng', '', '', '', '', '', '', '', '', '', '', NULL, 'NOI_THAT,TANG_TRET,CHO_THUE', '', '', '', 'https://drive.google.com/thumbnail?id=1_MttTr-MONh4fYiFDgsh8hE5IfyeMLVQ', '2024-05-01 20:12:31', '2024-05-01 20:52:34', NULL, NULL, 'Thiện', '056565321', 1, 2),
(13, 'Căn hộ DUPLEX gác cao full nội thất ngay trung tâm Q7', 'Đường số 3', 'Tân Kiểng', 'QUAN_7', '', 2, 25, '', NULL, 6, '6 triệu / tháng', '', '', '', '', '', '', '', '', '', '', NULL, 'NOI_THAT,CHO_THUE', '', '', '', 'https://drive.google.com/thumbnail?id=1BCvTrls15DlNr0jxxXkHeSfrA96_qwN_', '2024-05-01 20:15:14', '2024-05-01 20:52:46', NULL, NULL, 'Tèo', '0881818181', 1, 2),
(14, 'DUPLEX RỘNG 40m2 gần Đh Ufm, Đh Luật, KCX TÂN THUẬN Q7', 'Huỳnh Tấn Phát', 'Tân Thuận Đông', 'QUAN_7', '', 2, 25, '', NULL, 5, '5 triệu 400 nghìn', '', '', '', '', '', '', '', '', '', '', NULL, 'NOI_THAT,TANG_TRET,CHO_THUE', '', '', '', 'https://drive.google.com/thumbnail?id=1vhac-zoEMPMLQA4wB3ng3RL3uvgQQ1pe', '2024-05-01 20:23:55', '2024-05-01 20:26:42', NULL, NULL, 'Lý', '087858583', 1, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buildingimage`
--

CREATE TABLE `buildingimage` (
  `id` bigint NOT NULL,
  `building_id` bigint NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `buildingimage`
--

INSERT INTO `buildingimage` (`id`, `building_id`, `image_url`, `description`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(19, 11, 'https://drive.google.com/thumbnail?id=1qKLw0Ex7RVtimUA-bpWtDe3sxwfcA6-N', 'slider image for Phú Mỹ Hưng Glat', '2024-05-01 20:06:33', '2024-05-01 20:06:33', NULL, NULL),
(20, 11, 'https://drive.google.com/thumbnail?id=17We_5ddfjqPcsIi2MkPXTpYnsyl8HI90', 'slider image for Phú Mỹ Hưng Glat', '2024-05-01 20:06:33', '2024-05-01 20:06:33', NULL, NULL),
(21, 11, 'https://drive.google.com/thumbnail?id=1rWwv8ojNQnt91iVdjBCwKSskCpOp-19Z', 'slider image for Phú Mỹ Hưng Glat', '2024-05-01 20:06:33', '2024-05-01 20:06:33', NULL, NULL),
(22, 14, 'https://drive.google.com/thumbnail?id=1Ef0dp16RwhiZVXFSU_szfJWOEH3pYUuW', 'slider image for DUPLEX RỘNG 40m2 gần Đh Ufm, Đh Luật, KCX TÂN THUẬN Q7', '2024-05-01 20:26:42', '2024-05-01 20:26:42', NULL, NULL),
(23, 14, 'https://drive.google.com/thumbnail?id=1r5D64Y5GM4ga8gUaKPS-I8DKSiYfDVQd', 'slider image for DUPLEX RỘNG 40m2 gần Đh Ufm, Đh Luật, KCX TÂN THUẬN Q7', '2024-05-01 20:26:42', '2024-05-01 20:26:42', NULL, NULL),
(24, 14, 'https://drive.google.com/thumbnail?id=1SEaR9sogVNr_XXqedVPDI7ejRFU4Ux5B', 'slider image for DUPLEX RỘNG 40m2 gần Đh Ufm, Đh Luật, KCX TÂN THUẬN Q7', '2024-05-01 20:26:42', '2024-05-01 20:26:42', NULL, NULL),
(29, 1, 'https://drive.google.com/thumbnail?id=1UgDECvbTRJEM4seakVxJOj4IHuklAldc', 'slider image for Nam Giao Building Tower', '2024-05-02 02:56:52', '2024-05-02 02:56:52', NULL, NULL),
(30, 1, 'https://drive.google.com/thumbnail?id=1OZaT29IAUUsYknJH65-YpYLMP6cI1Ajn', 'slider image for Nam Giao Building Tower', '2024-05-02 02:56:52', '2024-05-02 02:56:52', NULL, NULL),
(31, 1, 'https://drive.google.com/thumbnail?id=13VqiWvgTP4jIbB5T36b56RCNjdvqN8N1', 'slider image for Nam Giao Building Tower', '2024-05-02 02:56:52', '2024-05-02 02:56:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `communication`
--

CREATE TABLE `communication` (
  `id` bigint NOT NULL,
  `buyer_renter_id` bigint DEFAULT NULL,
  `sale_id` bigint DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `building_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `communication`
--

INSERT INTO `communication` (`id`, `buyer_renter_id`, `sale_id`, `phone`, `note`, `building_id`) VALUES
(8, 10, 1, '21341234', 'hehehe55\n', 1),
(9, 10, 2, '505505959', 'nuuuuuuuu\n', 13),
(10, 1, 2, '0888888888', 'hé luuuu\n', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `love`
--

CREATE TABLE `love` (
  `id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `building_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `love`
--

INSERT INTO `love` (`id`, `user_id`, `building_id`) VALUES
(10, 2, 2),
(17, 1, 2),
(18, 1, 3),
(21, 2, 11),
(22, 1, 1),
(23, 10, 1),
(24, 10, 2),
(25, 10, 3),
(26, 10, 12),
(27, 10, 14),
(28, 10, 9),
(29, 10, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rentarea`
--

CREATE TABLE `rentarea` (
  `id` bigint NOT NULL,
  `value` int DEFAULT NULL,
  `buildingid` bigint DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `rentarea`
--

INSERT INTO `rentarea` (`id`, `value`, `buildingid`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 100, 1, NULL, NULL, NULL, NULL),
(2, 200, 1, NULL, NULL, NULL, NULL),
(3, 200, 2, NULL, NULL, NULL, NULL),
(4, 300, 2, NULL, NULL, NULL, NULL),
(5, 400, 2, NULL, NULL, NULL, NULL),
(6, 300, 3, NULL, NULL, NULL, NULL),
(7, 400, 3, NULL, NULL, NULL, NULL),
(8, 500, 3, NULL, NULL, NULL, NULL),
(9, 100, 4, NULL, NULL, NULL, NULL),
(10, 400, 4, NULL, NULL, NULL, NULL),
(11, 250, 4, NULL, NULL, NULL, NULL),
(34, NULL, NULL, '2024-05-01 07:54:44', '2024-05-01 07:54:44', NULL, NULL),
(35, NULL, NULL, '2024-05-01 07:58:17', '2024-05-01 07:58:17', NULL, NULL),
(36, 300, 10, '2024-05-01 07:58:17', '2024-05-01 07:58:17', NULL, NULL),
(37, 300, 11, '2024-05-01 08:03:08', '2024-05-01 08:03:08', NULL, NULL),
(38, 20, 12, '2024-05-01 20:12:31', '2024-05-01 20:12:31', NULL, NULL),
(39, 25, 13, '2024-05-01 20:15:14', '2024-05-01 20:15:14', NULL, NULL),
(40, 25, 14, '2024-05-01 20:23:55', '2024-05-01 20:23:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `code`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 'Quản trị hệ thống', 'ADMIN', NULL, NULL, NULL, NULL),
(2, 'Người dùng', 'USER', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `id` int NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `is_mobile` tinyint(1) DEFAULT '0',
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `refresh_expiration_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `token_type`, `expiration_date`, `revoked`, `expired`, `user_id`, `is_mobile`, `refresh_token`, `refresh_expiration_date`) VALUES
(66, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjIsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwic3ViIjoiMjIyMjIyIiwiZXhwIjoxNzE0NTk5MTgwfQ.rYRr4bhOKR3aIEt_P5fAka9qL7OoctCVFtH0Pr0Wfz8', 'Bearer', '2024-05-31 20:49:49', 0, 0, 2, 0, 'b25df4d1-1b80-4270-9a1a-83e140ce3431', '2024-06-30 20:49:49'),
(79, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEwLCJlbWFpbCI6Im1ja0BnbWFpbC5jb20iLCJzdWIiOiIzMzMzMzMiLCJleHAiOjE3MTQ2NTkwOTR9.TwdHuYyRGbsyz7PeazleMhBhWgaUXSrMWdewB9BNvYI', 'Bearer', '2024-06-01 13:28:23', 0, 0, 10, 0, '249d90ef-79ff-4485-969d-4f74b5b7c30c', '2024-07-01 13:28:23'),
(80, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjIsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwic3ViIjoiMjIyMjIyIiwiZXhwIjoxNzE0NjU5MTA0fQ.C_L7RTg1i4HAy9yQvQAIV0UQAkstugMYnh_9tUwHScQ', 'Bearer', '2024-06-01 13:28:32', 0, 0, 2, 0, '97031249-c526-457e-beb5-28c396da2f15', '2024-07-01 13:28:32'),
(81, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEwLCJlbWFpbCI6Im1ja0BnbWFpbC5jb20iLCJzdWIiOiIzMzMzMzMiLCJleHAiOjE3MTQ2NjAxMjN9.tFG7lzgeDyGU4QAibLZC4BtQWob-5GC8Fbr-yXRB0Ps', 'Bearer', '2024-06-01 13:45:31', 0, 0, 10, 0, 'c282c631-592d-4e3e-a33a-7c6d08e6f6d9', '2024-07-01 13:45:31'),
(83, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjIsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwic3ViIjoiMjIyMjIyIiwiZXhwIjoxNzE0NjYxNjg3fQ.J-Mq4FyRbqqSTXA2nAiV574uldhtdw9MZluzJyCXLZk', 'Bearer', '2024-06-01 14:11:36', 0, 0, 2, 0, 'f703fb72-446e-47f4-a470-2ce8c50825ac', '2024-07-01 14:11:36'),
(84, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwic3ViIjoiMTIzNDU2IiwiZXhwIjoxNzE0NjYxOTA4fQ.OGoiySGZAugTIUOnkvpmASABP6FUVLBs9OZV6oMgpcc', 'Bearer', '2024-06-01 14:15:17', 0, 0, 1, 0, 'a5e5c7ac-579d-461e-87b9-f041b61c7b9d', '2024-07-01 14:15:17'),
(85, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwic3ViIjoiMTIzNDU2IiwiZXhwIjoxNzE0NjY0NTY5fQ.WCE02267D7JZmxwwt1QjDvARosTdQwGkk35mGGIC_Wg', 'Bearer', '2024-06-01 14:59:37', 0, 0, 1, 0, 'cb1047f2-1ce9-4668-bcdc-ebaa7c9c5d25', '2024-07-01 14:59:37'),
(86, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEwLCJlbWFpbCI6Im1ja0BnbWFpbC5jb20iLCJzdWIiOiIzMzMzMzMiLCJleHAiOjE3MTQ2Njc0NjN9.UC2q7LbO7_1-zfkjukRNs0MZGaQ70WVtOAFcE7-8sUU', 'Bearer', '2024-06-01 15:47:51', 0, 0, 10, 0, '0da4ea72-55a1-458e-9357-93a71e694b86', '2024-07-01 15:47:51'),
(87, 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwic3ViIjoiMTIzNDU2IiwiZXhwIjoxNzE0NjY5OTI2fQ.3qVApK_o9pKc5e6eu_IrgA8ZDanfJRIxYC0XsM7G3VA', 'Bearer', '2024-06-01 16:28:55', 0, 0, 1, 0, '1aa83d08-fd3c-49ad-a8e7-2ae6b1bd477e', '2024-07-01 16:28:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `role_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `phone`, `password`, `fullname`, `email`, `status`, `avatar`, `createddate`, `modifieddate`, `createdby`, `modifiedby`, `role_id`) VALUES
(1, '123456', '$2a$10$hE9VjVyisSNDCu14L8t0MuEKBYeazJ75WliLNZDKytJfBdn85RBC2', 'admin', 'admin@gmail.com', 1, 'https://drive.google.com/thumbnail?id=19HlnSuvXPU_PPgR8XMSA91jrtzWL66Lk', NULL, '2024-05-01 20:48:26', NULL, NULL, 1),
(2, '222222', '$2a$10$F.4888BPYha3mmRaRpw.bOEldNcSHkw4MkA.P2smtQSCPI1MMX/7u', 'user1', 'user1@gmail.com', 1, 'https://drive.google.com/thumbnail?id=1e8m-zT_spXuIE52uxx1xbadVdd-3SKNG', NULL, '2024-05-01 20:50:14', NULL, NULL, 2),
(10, '333333', '$2a$10$r6dVJdsGWZD9jooc7NEau.iyVie8bJNcUt5zyRKW0sA91FrF4kBoG', 'mck', 'mck@gmail.com', 1, 'https://drive.google.com/thumbnail?id=1gErPd8JWKR-Y-xiWdZv4mxmvOvTDOLAv', '2024-05-01 20:21:38', '2024-05-01 20:22:10', NULL, NULL, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Chỉ mục cho bảng `buildingimage`
--
ALTER TABLE `buildingimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_building_image_building` (`building_id`);

--
-- Chỉ mục cho bảng `communication`
--
ALTER TABLE `communication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `buyer_renter_id` (`buyer_renter_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Chỉ mục cho bảng `love`
--
ALTER TABLE `love`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `rentarea`
--
ALTER TABLE `rentarea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingid` (`buildingid`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `building`
--
ALTER TABLE `building`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `buildingimage`
--
ALTER TABLE `buildingimage`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `communication`
--
ALTER TABLE `communication`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `love`
--
ALTER TABLE `love`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `rentarea`
--
ALTER TABLE `rentarea`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `buildingimage`
--
ALTER TABLE `buildingimage`
  ADD CONSTRAINT `fk_building_image_building` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `communication`
--
ALTER TABLE `communication`
  ADD CONSTRAINT `communication_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`),
  ADD CONSTRAINT `communication_ibfk_2` FOREIGN KEY (`buyer_renter_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `communication_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `love`
--
ALTER TABLE `love`
  ADD CONSTRAINT `love_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`),
  ADD CONSTRAINT `love_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `rentarea`
--
ALTER TABLE `rentarea`
  ADD CONSTRAINT `rentarea_ibfk_1` FOREIGN KEY (`buildingid`) REFERENCES `building` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
