-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2014 at 04:01 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webbanhang`
--
CREATE DATABASE IF NOT EXISTS `webbanhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `webbanhang`;

-- --------------------------------------------------------

--
-- Table structure for table `binhluans`
--

CREATE TABLE IF NOT EXISTS `binhluans` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SanPham_id` int(10) unsigned NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `NgayDang` date NOT NULL,
  `NoiDung` varchar(255) NOT NULL,
  `TraLoiCho_id` int(10) unsigned NOT NULL,
  `TinhTrang` int(11) NOT NULL COMMENT '0 : chưa xem 1 : đã xem 2 : Đã xóa',
  PRIMARY KEY (`ID`),
  KEY `SanPham_id` (`SanPham_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `binhluans`
--

INSERT INTO `binhluans` (`ID`, `SanPham_id`, `TenDangNhap`, `NgayDang`, `NoiDung`, `TraLoiCho_id`, `TinhTrang`) VALUES
(1, 1, 'Huy Cao', '2013-12-12', 'Áo này có size xxl ko ad?', 0, 1),
(2, 1, 'Mắm Khùng', '2013-12-12', 'Đẹp quá đẹp quá hihi :3', 0, 1),
(21, 1, 'huycao1801', '2014-06-17', 'Có! Còn khoảng 5 cái nhé!', 1, 1),
(22, 1, 'kiwi', '2013-09-12', 'áo này xinh ghê!', 0, 1),
(23, 2, 'kiwi', '2013-09-12', 'Thằng này bảnh quá! :v', 0, 2),
(24, 1, 'huycao1801', '2014-07-18', 'ok', 2, 1),
(25, 1, 'huycao1801', '2014-07-18', 'ok', 2, 1),
(26, 1, 'huycao1801', '2014-07-18', 'ok baby', 2, 1),
(28, 1, 'babycute', '2014-07-18', '<3', 0, 1),
(29, 1, 'huycao1801', '2014-07-18', '<3 <3 <3', 28, 1),
(30, 1, 'babycute', '2014-07-18', ':x :x :x', 0, 1),
(31, 11, 'mamlun', '2014-07-21', 'áo này còn size L ko ad?', 0, 0),
(32, 1, 'holdon', '2014-07-24', 'Áo này đẹp nè :D', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cauhoibimats`
--

CREATE TABLE IF NOT EXISTS `cauhoibimats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NoiDungCauHoi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cauhoibimats`
--

INSERT INTO `cauhoibimats` (`id`, `NoiDungCauHoi`) VALUES
(1, 'Bạn thích nhất món ăn gì?'),
(2, 'Con vật bạn yêu thích nhất là gì?'),
(3, 'Tên trường tiểu học của bạn là gì?'),
(4, 'Nơi nào bạn muốn đi du lịch đến nhất?');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdathangs`
--

CREATE TABLE IF NOT EXISTS `chitietdathangs` (
  `dondathang_id` bigint(20) unsigned NOT NULL,
  `Sanpham_id` int(10) unsigned NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  `SoLuongDat` int(10) unsigned NOT NULL,
  `DonGia` bigint(20) unsigned NOT NULL,
  `ThanhTien` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`dondathang_id`,`Sanpham_id`,`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdathangs`
--

INSERT INTO `chitietdathangs` (`dondathang_id`, `Sanpham_id`, `size_id`, `SoLuongDat`, `DonGia`, `ThanhTien`) VALUES
(9, 9, 3, 1, 195000, 195000),
(9, 11, 1, 2, 225000, 450000),
(10, 1, 1, 1, 185000, 185000),
(10, 2, 1, 1, 185000, 185000),
(10, 2, 2, 1, 185000, 185000),
(11, 9, 1, 1, 195000, 195000),
(11, 9, 3, 1, 195000, 195000),
(11, 10, 1, 2, 195000, 390000),
(11, 11, 3, 3, 225000, 675000),
(12, 1, 1, 5, 185000, 925000),
(12, 1, 3, 3, 185000, 555000),
(12, 3, 1, 7, 185000, 1295000),
(13, 1, 1, 1, 185000, 185000),
(14, 2, 1, 3, 185000, 555000),
(14, 152, 4, 4, 150000, 600000),
(15, 1, 1, 2, 185000, 370000),
(16, 2, 1, 4, 185000, 740000),
(17, 1, 1, 3, 185000, 555000),
(17, 1, 2, 2, 185000, 370000),
(17, 1, 3, 3, 185000, 555000),
(17, 2, 1, 5, 185000, 925000),
(17, 3, 1, 6, 185000, 1110000),
(17, 3, 2, 8, 185000, 1480000),
(17, 3, 3, 8, 185000, 1480000),
(17, 3, 5, 3, 185000, 555000),
(18, 1, 1, 1, 185500, 185500),
(18, 1, 2, 1, 185500, 185500),
(19, 1, 1, 1, 185000, 185000),
(20, 1, 1, 1, 187000, 187000),
(20, 1, 2, 1, 187000, 187000),
(20, 1, 3, 1, 187000, 187000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanphams`
--

CREATE TABLE IF NOT EXISTS `chitietsanphams` (
  `sanpham_id` int(10) unsigned NOT NULL,
  `Size_id` int(10) unsigned NOT NULL,
  `SoLuong` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sanpham_id`,`Size_id`),
  KEY `FKmasize` (`Size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietsanphams`
--

INSERT INTO `chitietsanphams` (`sanpham_id`, `Size_id`, `SoLuong`) VALUES
(1, 1, 26),
(1, 2, 46),
(1, 3, 36),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(2, 1, 3),
(2, 2, 87),
(2, 3, 0),
(3, 1, 34),
(3, 2, 42),
(3, 3, 72),
(3, 4, 0),
(3, 5, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 11, 0),
(4, 1, 48),
(4, 2, 72),
(4, 3, 30),
(5, 1, 0),
(5, 2, 57),
(5, 3, 69),
(6, 1, 40),
(6, 2, 0),
(6, 3, 0),
(7, 1, 0),
(7, 2, 0),
(7, 3, 63),
(8, 1, 73),
(8, 2, 40),
(8, 3, 61),
(9, 1, 30),
(9, 2, 0),
(9, 3, 1),
(10, 1, 32),
(10, 2, 0),
(10, 3, 0),
(11, 1, 1),
(11, 2, 90),
(11, 3, 40),
(12, 1, 0),
(12, 2, 0),
(12, 3, 0),
(13, 1, 60),
(13, 2, 90),
(13, 3, 40),
(14, 1, 60),
(14, 2, 70),
(14, 3, 30),
(15, 1, 0),
(15, 2, 90),
(15, 3, 0),
(16, 1, 62),
(16, 2, 0),
(16, 3, 39),
(17, 1, 40),
(17, 2, 59),
(17, 3, 0),
(18, 1, 69),
(18, 2, 38),
(18, 3, 51),
(19, 1, 0),
(19, 2, 59),
(19, 3, 0),
(20, 1, 0),
(20, 2, 79),
(20, 3, 70),
(21, 1, 50),
(21, 2, 0),
(21, 3, 40),
(22, 1, 0),
(22, 2, 90),
(22, 3, 30),
(23, 1, 70),
(23, 2, 45),
(23, 3, 0),
(24, 1, 70),
(24, 2, 5),
(24, 3, 40),
(25, 1, 0),
(25, 2, 45),
(25, 3, 0),
(26, 1, 9),
(26, 2, 45),
(26, 3, 10),
(27, 1, 50),
(27, 2, 5),
(27, 3, 20),
(28, 1, 30),
(28, 2, 15),
(28, 3, 0),
(29, 1, 7),
(29, 2, 45),
(29, 3, 0),
(30, 1, 30),
(30, 2, 25),
(30, 3, 0),
(31, 1, 70),
(31, 2, 45),
(31, 3, 10),
(32, 1, 30),
(32, 2, 45),
(32, 3, 0),
(33, 1, 70),
(33, 2, 45),
(33, 3, 20),
(34, 1, 70),
(34, 2, 45),
(34, 3, 10),
(35, 1, 70),
(35, 2, 45),
(35, 3, 10),
(36, 1, 0),
(36, 2, 45),
(36, 3, 0),
(37, 1, 0),
(37, 2, 45),
(37, 3, 30),
(38, 1, 20),
(38, 2, 45),
(38, 3, 10),
(39, 1, 30),
(39, 2, 45),
(39, 3, 0),
(40, 1, 70),
(40, 2, 5),
(40, 3, 10),
(41, 1, 13),
(41, 2, 45),
(41, 3, 10),
(41, 4, 15),
(41, 5, 0),
(41, 6, 0),
(41, 7, 0),
(41, 8, 0),
(41, 9, 0),
(41, 10, 0),
(41, 11, 0),
(42, 1, 30),
(42, 2, 45),
(42, 3, 10),
(43, 1, 0),
(43, 2, 0),
(43, 3, 0),
(44, 1, 50),
(44, 2, 5),
(44, 3, 60),
(45, 1, 20),
(45, 2, 35),
(45, 3, 0),
(46, 1, 70),
(46, 2, 45),
(46, 3, 10),
(47, 1, 70),
(47, 2, 45),
(47, 3, 10),
(48, 1, 70),
(48, 2, 45),
(48, 3, 10),
(49, 1, 70),
(49, 2, 45),
(49, 3, 10),
(50, 1, 70),
(50, 2, 45),
(50, 3, 10),
(51, 1, 0),
(51, 2, 0),
(51, 3, 0),
(52, 1, 70),
(52, 2, 45),
(52, 3, 10),
(53, 1, 0),
(53, 2, 45),
(53, 3, 0),
(54, 1, 0),
(54, 2, 0),
(54, 3, 0),
(55, 1, 70),
(55, 2, 45),
(55, 3, 10),
(56, 1, 70),
(56, 2, 45),
(56, 3, 10),
(57, 1, 0),
(57, 2, 0),
(57, 3, 0),
(58, 1, 70),
(58, 2, 0),
(58, 3, 0),
(59, 1, 70),
(59, 2, 45),
(59, 3, 0),
(60, 1, 0),
(60, 2, 0),
(60, 3, 0),
(61, 1, 70),
(61, 2, 45),
(61, 3, 10),
(62, 1, 0),
(62, 2, 45),
(62, 3, 10),
(63, 1, 0),
(63, 2, 0),
(63, 3, 0),
(64, 1, 50),
(64, 2, 5),
(64, 3, 60),
(65, 1, 20),
(65, 2, 35),
(65, 3, 0),
(66, 1, 70),
(66, 2, 45),
(66, 3, 10),
(67, 1, 0),
(67, 2, 0),
(67, 3, 0),
(68, 1, 60),
(68, 2, 35),
(68, 3, 10),
(69, 1, 70),
(69, 2, 45),
(69, 3, 10),
(70, 1, 70),
(70, 2, 45),
(70, 3, 0),
(71, 1, 0),
(71, 2, 20),
(71, 3, 0),
(72, 1, 0),
(72, 2, 45),
(72, 3, 10),
(73, 1, 0),
(73, 2, 45),
(73, 3, 0),
(74, 1, 0),
(74, 2, 60),
(74, 3, 40),
(75, 1, 70),
(75, 2, 45),
(75, 3, 10),
(76, 1, 0),
(76, 2, 45),
(76, 3, 10),
(77, 4, 70),
(77, 5, 45),
(77, 6, 10),
(77, 7, 30),
(78, 4, 45),
(78, 5, 10),
(78, 6, 0),
(78, 7, 0),
(79, 4, 0),
(79, 5, 50),
(79, 6, 5),
(79, 7, 60),
(80, 4, 20),
(80, 5, 35),
(80, 6, 0),
(80, 7, 70),
(81, 4, 45),
(81, 5, 10),
(81, 6, 70),
(81, 7, 45),
(82, 4, 10),
(82, 5, 70),
(82, 6, 45),
(82, 7, 10),
(83, 4, 70),
(83, 5, 45),
(83, 6, 10),
(83, 7, 70),
(84, 4, 45),
(84, 5, 10),
(84, 6, 0),
(84, 7, 0),
(85, 7, 70),
(85, 8, 45),
(85, 9, 10),
(85, 10, 30),
(86, 7, 70),
(86, 8, 45),
(86, 9, 10),
(86, 10, 30),
(87, 7, 70),
(87, 8, 45),
(87, 9, 10),
(87, 10, 30),
(88, 7, 0),
(88, 8, 45),
(88, 9, 0),
(88, 10, 30),
(89, 7, 0),
(89, 8, 0),
(89, 9, 0),
(89, 10, 0),
(90, 7, 0),
(90, 8, 45),
(90, 9, 10),
(90, 10, 0),
(91, 7, 70),
(91, 8, 45),
(91, 9, 10),
(91, 10, 30),
(92, 7, 70),
(92, 8, 45),
(92, 9, 10),
(92, 10, 30),
(93, 7, 0),
(93, 8, 45),
(93, 9, 10),
(93, 10, 30),
(94, 7, 70),
(94, 8, 45),
(94, 9, 0),
(94, 10, 0),
(95, 7, 70),
(95, 8, 45),
(95, 9, 10),
(95, 10, 30),
(96, 7, 70),
(96, 8, 45),
(96, 9, 10),
(96, 10, 30),
(97, 7, 0),
(97, 8, 45),
(97, 9, 0),
(97, 10, 0),
(98, 7, 70),
(98, 8, 45),
(98, 9, 0),
(98, 10, 30),
(99, 7, 0),
(99, 8, 45),
(99, 9, 10),
(99, 10, 30),
(100, 7, 70),
(100, 8, 45),
(100, 9, 10),
(100, 10, 30),
(101, 4, 70),
(101, 5, 45),
(101, 6, 10),
(101, 7, 30),
(102, 4, 70),
(102, 5, 45),
(102, 6, 0),
(102, 7, 30),
(103, 4, 70),
(103, 5, 45),
(103, 6, 0),
(103, 7, 30),
(104, 4, 70),
(104, 5, 45),
(104, 6, 10),
(104, 7, 0),
(105, 1, 70),
(105, 2, 45),
(105, 3, 10),
(106, 1, 70),
(106, 2, 45),
(106, 3, 10),
(107, 1, 70),
(107, 2, 45),
(107, 3, 10),
(108, 1, 70),
(108, 2, 45),
(108, 3, 10),
(109, 1, 0),
(109, 2, 45),
(109, 3, 10),
(110, 1, 70),
(110, 2, 45),
(110, 3, 0),
(111, 1, 70),
(111, 2, 45),
(111, 3, 10),
(112, 1, 0),
(112, 2, 45),
(112, 3, 10),
(113, 1, 70),
(113, 2, 45),
(114, 1, 70),
(114, 2, 45),
(115, 1, 70),
(115, 2, 45),
(116, 1, 70),
(116, 2, 45),
(117, 1, 70),
(117, 2, 45),
(118, 1, 70),
(118, 2, 45),
(119, 1, 70),
(119, 2, 45),
(120, 1, 0),
(120, 2, 25),
(121, 1, 0),
(121, 2, 0),
(122, 1, 70),
(122, 2, 5),
(123, 1, 70),
(123, 2, 45),
(124, 1, 0),
(124, 2, 45),
(125, 1, 70),
(125, 2, 5),
(126, 1, 70),
(126, 2, 4),
(127, 1, 0),
(127, 2, 45),
(128, 1, 70),
(128, 2, 45),
(129, 1, 7),
(129, 2, 45),
(130, 1, 70),
(130, 2, 5),
(131, 1, 70),
(131, 2, 45),
(132, 1, 0),
(132, 2, 45),
(133, 1, 50),
(133, 2, 45),
(133, 3, 45),
(134, 1, 0),
(134, 2, 45),
(134, 3, 45),
(135, 1, 70),
(135, 2, 45),
(135, 3, 45),
(136, 1, 0),
(136, 2, 45),
(136, 3, 0),
(137, 1, 0),
(137, 2, 45),
(137, 3, 5),
(138, 1, 0),
(138, 2, 45),
(138, 3, 5),
(139, 1, 0),
(139, 2, 5),
(139, 3, 45),
(140, 1, 80),
(140, 2, 45),
(140, 3, 45),
(141, 4, 80),
(141, 5, 45),
(141, 6, 45),
(141, 7, 45),
(142, 4, 80),
(142, 5, 45),
(142, 6, 45),
(142, 7, 45),
(143, 4, 80),
(143, 5, 45),
(143, 6, 45),
(143, 7, 45),
(144, 4, 80),
(144, 5, 45),
(144, 6, 45),
(144, 7, 45),
(145, 4, 80),
(145, 5, 45),
(145, 6, 45),
(145, 7, 45),
(146, 4, 80),
(146, 5, 45),
(146, 6, 45),
(146, 7, 45),
(147, 4, 80),
(147, 5, 45),
(147, 6, 45),
(147, 7, 45),
(148, 4, 80),
(148, 5, 45),
(148, 6, 45),
(148, 7, 45),
(149, 4, 80),
(149, 5, 45),
(149, 6, 45),
(149, 7, 45),
(150, 4, 80),
(150, 5, 45),
(150, 6, 45),
(150, 7, 45),
(151, 4, 80),
(151, 5, 45),
(151, 6, 45),
(151, 7, 45),
(152, 4, 80),
(152, 5, 45),
(152, 6, 45),
(152, 7, 45),
(153, 4, 80),
(153, 5, 45),
(153, 6, 45),
(153, 7, 45),
(154, 4, 80),
(154, 5, 45),
(154, 6, 45),
(154, 7, 45),
(155, 4, 80),
(155, 5, 45),
(155, 6, 45),
(155, 7, 45),
(156, 4, 80),
(156, 5, 45),
(156, 6, 45),
(156, 7, 45),
(157, 4, 80),
(157, 5, 45),
(157, 6, 45),
(157, 7, 45),
(158, 4, 80),
(158, 5, 45),
(158, 6, 45),
(158, 7, 45),
(159, 4, 80),
(159, 5, 45),
(159, 6, 45),
(159, 7, 45),
(160, 4, 80),
(160, 5, 45),
(160, 6, 45),
(160, 7, 45),
(161, 4, 80),
(161, 5, 45),
(161, 6, 45),
(161, 7, 45),
(162, 4, 80),
(162, 5, 45),
(162, 6, 45),
(162, 7, 45),
(163, 4, 80),
(163, 5, 45),
(163, 6, 45),
(163, 7, 45),
(164, 4, 80),
(164, 5, 45),
(164, 6, 45),
(164, 7, 45),
(165, 4, 80),
(165, 5, 45),
(165, 6, 45),
(165, 7, 45),
(166, 4, 80),
(166, 5, 45),
(166, 6, 45),
(166, 7, 45),
(167, 4, 80),
(167, 5, 45),
(167, 6, 45),
(167, 7, 45),
(168, 4, 80),
(168, 5, 45),
(168, 6, 45),
(168, 7, 45),
(169, 11, 0),
(170, 11, 45),
(171, 11, 45),
(172, 11, 45),
(173, 11, 45),
(174, 11, 45),
(175, 11, 45),
(176, 11, 45),
(177, 11, 45),
(178, 11, 45),
(179, 11, 45),
(180, 11, 45),
(181, 11, 45),
(182, 11, 45),
(183, 11, 45),
(184, 11, 45),
(185, 11, 45),
(186, 11, 45),
(187, 11, 45),
(188, 11, 45),
(189, 11, 45),
(190, 11, 45),
(191, 11, 45),
(192, 11, 45),
(193, 11, 45),
(194, 11, 45),
(195, 11, 45),
(196, 11, 45),
(197, 11, 45),
(198, 11, 45),
(199, 11, 45),
(200, 11, 45),
(201, 11, 45),
(202, 11, 45),
(203, 11, 45),
(204, 11, 45),
(205, 11, 45),
(206, 11, 45),
(207, 11, 45),
(208, 11, 45),
(209, 11, 45),
(210, 11, 45),
(211, 11, 45),
(212, 11, 45),
(213, 11, 45),
(214, 11, 45),
(215, 11, 45),
(216, 11, 45),
(217, 11, 45),
(218, 11, 45),
(219, 11, 45),
(220, 11, 45),
(221, 11, 45),
(222, 11, 45),
(223, 11, 45),
(224, 11, 45),
(225, 11, 45),
(226, 11, 45),
(227, 11, 45),
(228, 11, 45),
(229, 11, 45),
(230, 11, 45),
(231, 11, 45),
(232, 11, 45),
(233, 11, 45),
(234, 11, 45),
(235, 11, 45),
(236, 11, 45),
(237, 11, 45),
(238, 11, 45),
(239, 11, 45),
(240, 11, 45),
(241, 11, 45),
(242, 11, 45),
(243, 11, 45),
(244, 11, 45),
(245, 11, 45),
(246, 11, 45),
(247, 11, 45),
(248, 11, 45),
(249, 11, 45),
(250, 11, 45),
(251, 11, 45),
(252, 11, 45),
(253, 11, 45),
(254, 11, 45),
(255, 11, 45),
(256, 11, 45),
(257, 11, 45),
(258, 11, 45),
(259, 11, 45),
(260, 11, 45),
(261, 11, 45),
(262, 11, 45),
(263, 11, 45),
(264, 11, 45),
(265, 11, 45),
(266, 11, 45),
(267, 11, 45),
(268, 11, 45),
(269, 11, 45),
(270, 11, 45),
(271, 11, 45),
(272, 11, 45),
(273, 11, 45),
(274, 1, 40),
(274, 2, 13),
(274, 3, 0),
(275, 1, 12),
(275, 2, 0),
(275, 3, 15),
(275, 4, 0),
(275, 5, 0),
(275, 6, 0),
(275, 7, 0),
(275, 8, 0),
(275, 9, 0),
(275, 10, 0),
(275, 11, 0),
(276, 1, 15),
(276, 2, 13),
(276, 3, 12),
(276, 4, 0),
(276, 5, 0),
(276, 6, 0),
(276, 7, 0),
(276, 8, 0),
(276, 9, 0),
(276, 10, 0),
(276, 11, 0),
(278, 1, 20),
(278, 2, 30),
(278, 3, 30),
(278, 4, 0),
(278, 5, 0),
(278, 6, 0),
(278, 7, 0),
(278, 8, 0),
(278, 9, 0),
(278, 10, 0),
(278, 11, 0),
(280, 1, 5),
(280, 2, 0),
(280, 3, 0),
(280, 4, 0),
(280, 5, 0),
(280, 6, 0),
(280, 7, 0),
(280, 8, 0),
(280, 9, 0),
(280, 10, 0),
(280, 11, 0),
(281, 1, 5),
(281, 2, 0),
(281, 3, 0),
(281, 4, 0),
(281, 5, 0),
(281, 6, 0),
(281, 7, 0),
(281, 8, 0),
(281, 9, 0),
(281, 10, 0),
(281, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chudes`
--

CREATE TABLE IF NOT EXISTS `chudes` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TenChuDe` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `TrangThai` tinyint(4) NOT NULL COMMENT '0 : chưa xóa   1 : Đã xóa',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `chudes`
--

INSERT INTO `chudes` (`ID`, `TenChuDe`, `HinhAnh`, `TrangThai`) VALUES
(1, 'TRẺ TRUNG', 'img1.jpg', 0),
(2, 'NĂNG ĐỘNG', 'img2.jpg', 0),
(3, 'CÁ TÍNH', 'img3.jpg', 0),
(4, 'DẠ HỘI', 'img4.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dondathangs`
--

CREATE TABLE IF NOT EXISTS `dondathangs` (
  `ID` bigint(255) unsigned NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(255) NOT NULL,
  `TenNguoiNhan` varchar(255) NOT NULL,
  `SoDienThoaiNguoiNhan` varchar(255) NOT NULL,
  `NoiNhanHang` varchar(255) NOT NULL,
  `NgayLapHD` date NOT NULL,
  `NgayGiaoHang` date DEFAULT NULL,
  `NguoiGiaoHang` text NOT NULL,
  `NguoiDuyetDon` varchar(255) DEFAULT NULL,
  `GiaTriThucHD` bigint(20) unsigned NOT NULL,
  `DiemTichLuyThuong` bigint(20) unsigned NOT NULL,
  `GiaTriDiemTichLuy` bigint(20) unsigned NOT NULL,
  `GiaTriHD` bigint(20) unsigned NOT NULL,
  `TinhTrangHD` int(4) unsigned NOT NULL COMMENT '0 : chưa duyệt   1 : đã duyệt    2:đang giao 3: đã giao 4: đã hủy 5 : đã xóa',
  PRIMARY KEY (`ID`),
  KEY `NguoiDuyetDon` (`NguoiDuyetDon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `dondathangs`
--

INSERT INTO `dondathangs` (`ID`, `TenDangNhap`, `TenNguoiNhan`, `SoDienThoaiNguoiNhan`, `NoiNhanHang`, `NgayLapHD`, `NgayGiaoHang`, `NguoiGiaoHang`, `NguoiDuyetDon`, `GiaTriThucHD`, `DiemTichLuyThuong`, `GiaTriDiemTichLuy`, `GiaTriHD`, `TinhTrangHD`) VALUES
(9, 'mamlun', 'Cao Hồng Huy', '01685525430', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-06-27', NULL, '', NULL, 645000, 32, 10000, 635000, 5),
(10, 'mamlun', 'Cao Hồng Huy', '01685525430', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-15', '2014-07-18', 'Phan Văn Anh', 'huycao1801', 555000, 27, 10000, 545000, 3),
(11, 'babycute', 'Cao Hồng Huy', '01685525430', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-19', NULL, '', NULL, 1455000, 72, 0, 1455000, 5),
(12, 'mamlun', 'Cao Hồng Huy', '01685525430', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-17', '2014-07-20', 'Trần Thanh Tú', 'huycao1801', 2775000, 138, 10000, 2765000, 3),
(13, 'mamlun', 'Phan Thành Danh', '0168552543', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-21', '2014-07-22', 'Trần Thanh Tú', 'huycao1801', 185000, 3, 123000, 62000, 3),
(14, 'mamlun', 'Cao Hồng Huy', '0168552543', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-24', NULL, '', NULL, 1155000, 51, 120000, 1035000, 0),
(15, 'mamlun', 'Cao Hồng Huy', '0168552543', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-24', NULL, '', NULL, 370000, 13, 100000, 270000, 0),
(16, 'badboy', 'Cao Hồng Huy', '0458778954', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-21', NULL, '', NULL, 740000, 37, 0, 740000, 0),
(17, 'mamlun', 'Nguyễn Thành Danh', '0168552543', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-24', NULL, '', NULL, 7030000, 346, 100000, 6930000, 0),
(18, 'mamlun', 'Nguyễn Thanh Tùng', '0168552543', 'Số 13 đường 2 KP.3 P.Tam Phú Q.Thủ Đức', '2014-07-23', NULL, '', NULL, 371000, 12, 123000, 248000, 0),
(19, 'mamlun', 'Võ Thị Phi Yến', '01678890217', '438/21D lê Hông phong, phuong 1, quan 10,tphcm', '2014-07-24', NULL, '', NULL, 185000, 8, 10000, 175000, 0),
(20, 'mamlun', 'Tôn Long Phước', '01678890217', '65 Huỳnh Thúc kháng', '2014-07-25', '2014-12-01', 'Nguyễn Chí Phèo', 'admin01', 561000, 24, 78000, 483000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE IF NOT EXISTS `footers` (
  `Ma` int(11) NOT NULL AUTO_INCREMENT,
  `TenThongTin` text NOT NULL,
  `ThongTin` text NOT NULL,
  `NguoiChinhSua` varchar(255) NOT NULL,
  PRIMARY KEY (`Ma`),
  KEY `NguoiChinhSua` (`NguoiChinhSua`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`Ma`, `TenThongTin`, `ThongTin`, `NguoiChinhSua`) VALUES
(1, 'SoDienThoai', '0167.889.0217', 'huycao1801'),
(2, 'DiaChiShop', '65 Huỳnh Thúc Kháng - Phường Bến Nghé - Quận 1 - Tp. Hồ Chí Minh', 'huycao1801'),
(3, 'BanQuyen', '© NHÓM PHÁT TRIỂN LCT | CÓ BẢN QUYỀN LCT | ĐÃ KÝ TÊN VÀ ĐÓNG DẤU', 'huycao1801'),
(4, 'SoDienThoai2', '0168.552.5430', 'huycao1801'),
(5, 'ThuDienTu', 'doantham1301@gmail.com', 'huycao1801'),
(6, 'ThuDienTu2', 'huycao1801@gmail.com', 'huycao1801');

-- --------------------------------------------------------

--
-- Table structure for table `lienhes`
--

CREATE TABLE IF NOT EXISTS `lienhes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DiaChiEmail` varchar(255) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `NguoiTraLoiMail` varchar(255) NOT NULL,
  `TrangThai` tinyint(4) NOT NULL COMMENT '0 : Chưa trả lời   1 : Đã trả lời    2: Đã xóa',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lienhes`
--

INSERT INTO `lienhes` (`ID`, `DiaChiEmail`, `HoTen`, `NoiDung`, `NguoiTraLoiMail`, `TrangThai`) VALUES
(1, 'doantham1301@yahoo.com', 'Đoàn Thị Hồng Thắm', 'Add có bán sỉ không vậy', 'huycao1801', 1),
(2, 'doantham1301@gmail.com', 'Đoàn Thắm', 'fdsgdg', 'huycao1801', 1),
(3, 'doantham1301@gmail.com', 'Đoàn Thắm', 'fdsgbdsfh', 'huycao1801', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `TenDangNhap` varchar(255) NOT NULL,
  `Sanpham_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`TenDangNhap`,`Sanpham_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`TenDangNhap`, `Sanpham_id`) VALUES
('babycute', 150),
('holdon', 1),
('huycao1801', 5),
('huycao1801', 7),
('huycao1801', 11),
('huycao1801', 12),
('mamlun', 1),
('mamlun', 2),
('mamlun', 9);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanphams`
--

CREATE TABLE IF NOT EXISTS `loaisanphams` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(50) NOT NULL,
  `Parent_ID` int(11) NOT NULL,
  `TrangThai` tinyint(4) NOT NULL COMMENT '1 : Hiện hành    0 : Đã hủy',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `loaisanphams`
--

INSERT INTO `loaisanphams` (`ID`, `TenLoaiSanPham`, `Parent_ID`, `TrangThai`) VALUES
(1, 'ÁO THUN', 0, 1),
(2, 'ÁO SƠ-MI', 0, 1),
(3, 'ÁO KHOÁC', 0, 1),
(4, 'ĐẦM & VÁY', 0, 1),
(5, 'QUẦN JEAN', 0, 1),
(6, 'QUẦN KAKI', 0, 1),
(7, 'NÓN', 0, 1),
(8, 'PHỤ KIỆN', 0, 1),
(9, 'ÁO THUN CÁ TÍNH', 1, 1),
(10, 'ÁO THUN COUPLE', 1, 1),
(11, 'ÁO THUN NAM', 1, 1),
(12, 'ÁO THUN NỮ', 1, 1),
(13, 'ÁO THUN THỂ THAO', 1, 1),
(14, 'ÁO SƠ-MI CARO NAM', 2, 1),
(15, 'ÁO SƠ-MI CARO NỮ', 2, 1),
(16, 'ÁO SƠ-MI CÔNG SỞ NỮ', 2, 1),
(17, 'ÁO SƠ-MI DENIM NAM', 2, 1),
(18, 'ÁO SƠ-MI DENIM NỮ', 2, 1),
(19, 'ÁO KHOÁC DA NAM', 3, 1),
(20, 'ÁO KHOÁC JEAN NAM', 3, 1),
(21, 'ÁO KHOÁC JEAN NỮ', 3, 1),
(22, 'ÁO KHOÁC NỮ', 3, 1),
(23, 'ĐẦM THÁI LAN', 4, 1),
(24, 'VÁY', 4, 1),
(25, 'VÁY YẾM', 4, 1),
(26, 'QUẦN JEAN NAM', 5, 1),
(27, 'QUẦN JEAN NỮ', 5, 1),
(28, 'QUẦN SOOC JEAN NAM', 5, 1),
(29, 'QUẦN KAKI NAM', 6, 1),
(30, 'QUẦN KAKI NỮ', 6, 1),
(31, 'NÓN CỐI', 7, 1),
(32, 'NÓN HÀN QUỐC', 7, 1),
(33, 'NÓN LƯỠI TRAI', 7, 1),
(34, 'NÓN SNAPBACK', 7, 1),
(35, 'CARAVAT', 8, 1),
(36, 'DÂY NỊT NAM', 8, 1),
(37, 'DÂY NỊT NỮ', 8, 1),
(38, 'ĐỒNG HỒ', 8, 1),
(39, 'GỌNG KÍNH NAM', 8, 1),
(40, 'VÍ DA NAM', 8, 1),
(41, 'VÍ DA NỮ', 8, 1),
(42, 'abc xyz', 1, 1),
(43, 'áo ba lỗ', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcaps`
--

CREATE TABLE IF NOT EXISTS `nhacungcaps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TenNhaCungCap` varchar(50) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `TrangThai` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nhacungcaps`
--

INSERT INTO `nhacungcaps` (`id`, `TenNhaCungCap`, `DiaChi`, `TrangThai`) VALUES
(1, 'Ma Bư', '438/21D Lê Hồng Phong, phường 1, quận 10 TPHCM', 1),
(2, 'CalvinKlein', '93 Tô Vĩnh Diện Phường 6 Quận 10', 1),
(3, 'BlueEx', '101 Phạm Ngũ Lão', 1),
(4, 'BabyRed', '225 Kha Vạn Cân', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanphams`
--

CREATE TABLE IF NOT EXISTS `sanphams` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenSanPham` varchar(255) NOT NULL,
  `GiaBan` int(10) unsigned NOT NULL,
  `MoTa` text NOT NULL,
  `HinhAnh` varchar(50) NOT NULL,
  `TrangThai` tinyint(4) NOT NULL COMMENT '1 : Chưa xóa 0 : Đã xóa',
  `HinhChiTiet` varchar(255) NOT NULL,
  `NhaCungCap_id` int(11) unsigned NOT NULL,
  `LoaiSanPham_ID` int(10) unsigned NOT NULL,
  `ChuDe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NhaCungCap_id` (`NhaCungCap_id`),
  KEY `LoaiSanPham_ID` (`LoaiSanPham_ID`),
  KEY `NhaCungCap_id_2` (`NhaCungCap_id`),
  KEY `NhaCungCap_id_3` (`NhaCungCap_id`),
  KEY `ChuDe_id` (`ChuDe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=282 ;

--
-- Dumping data for table `sanphams`
--

INSERT INTO `sanphams` (`ID`, `TenSanPham`, `GiaBan`, `MoTa`, `HinhAnh`, `TrangThai`, `HinhChiTiet`, `NhaCungCap_id`, `LoaiSanPham_ID`, `ChuDe_id`) VALUES
(1, 'Áo Sơ Mi MSN 1316-03a', 187000, '<p style="text-align:justify">Bỏ xa c&aacute;c kiểu &aacute;o sơ mi c&ocirc;ng sở cứng nhắc, đơn điệu, &aacute;o sơ mi sọc ca r&ocirc; mang đến cho bạn nam phong c&aacute;ch s&agrave;nh điệu, thời trang nhưng vẫn thể hiện được n&eacute;t lịch sự, thanh lịch vốn c&oacute;. &Aacute;o sơ mi sọc ca r&ocirc; mang đến cho c&aacute;c bạn nam phong c&aacute;ch trẻ trung, thanh lịch. Họa tiết sọc ca r&ocirc; dường như chưa bao giờ lỗi mốt v&igrave; vậy bạn c&oacute; thể y&ecirc;n t&acirc;m về độ &quot;hot&quot; của n&oacute;. Thiết kế được đ&aacute;nh gi&aacute; cao với từng đường may tỉ mỉ, tinh tế, form &aacute;o vừa vặn với v&oacute;c d&aacute;ng c&acirc;n đối. Chất liệu vải mềm mại, tho&aacute;ng m&aacute;t, thấm mồ h&ocirc;i nhanh mang đến cảm gi&aacute;c thoải m&aacute;i. Chiếc &aacute;o sơ mi ca r&ocirc; n&agrave;y thật s&agrave;nh điệu v&agrave; phong c&aacute;ch phải kh&ocirc;ng n&agrave;o c&aacute;c bạn g&aacute;i. Nhanh tay click Mua Ngay để sở hữu chiếc &aacute;o n&agrave;y nh&eacute;!</p>\r\n', 'asmn1-1.jpg', 1, 'asmn1-1-1.jpg', 1, 14, 3),
(2, 'Áo Sơ Mi MSN 1313-01', 185000, '<p style="text-align:justify">Bỏ xa c&aacute;c kiểu &aacute;o sơ mi c&ocirc;ng sở cứng nhắc, đơn điệu, &aacute;o sơ mi sọc ca r&ocirc; mang đến cho bạn nam phong c&aacute;ch s&agrave;nh điệu, thời trang nhưng vẫn thể hiện được n&eacute;t lịch sự, thanh lịch vốn c&oacute;. &Aacute;o sơ mi sọc ca r&ocirc; mang đến cho c&aacute;c bạn nam phong c&aacute;ch trẻ trung, thanh lịch. Họa tiết sọc ca r&ocirc; dường như chưa bao giờ lỗi mốt v&igrave; vậy bạn c&oacute; thể y&ecirc;n t&acirc;m về độ &quot;hot&quot; của n&oacute;. Thiết kế được đ&aacute;nh gi&aacute; cao với từng đường may tỉ mỉ, tinh tế, form &aacute;o vừa vặn với v&oacute;c d&aacute;ng c&acirc;n đối. Chất liệu vải mềm mại, tho&aacute;ng m&aacute;t, thấm mồ h&ocirc;i nhanh mang đến cảm gi&aacute;c thoải m&aacute;i. Chiếc &aacute;o sơ mi ca r&ocirc; n&agrave;y thật s&agrave;nh điệu v&agrave; phong c&aacute;ch phải kh&ocirc;ng n&agrave;o c&aacute;c bạn g&aacute;i. Nhanh tay click Mua Ngay để sở hữu chiếc &aacute;o n&agrave;y nh&eacute;!</p>\r\n', 'asmn2-2.jpg', 0, 'asmn2-2-2.jpg', 4, 14, NULL),
(3, 'Áo Sơ Mi MSN 1316-03a', 185000, '<p style="text-align:justify">Jean cũng như họa tiết car&ocirc; c&oacute; lẽ l&agrave; hai yếu tố trong thời trang m&agrave; chưa bao giờ lỗi mốt. V&agrave; những sản phẩm chứa hai yếu tố n&agrave;y cũng lu&ocirc;n thu h&uacute;t c&aacute;c bạn trẻ, trong đ&oacute; c&oacute; &Aacute;o Sơ Mi Car&ocirc;. C&oacute; thể n&oacute;i &Aacute;o Sơ Mi Car&ocirc; rất đa năng trong c&aacute;ch sử dụng cũng như tạo phong c&aacute;ch cho c&aacute;c bạn nam. Nhiều họa tiết car&ocirc; kh&aacute;c nhau đang &ldquo;l&agrave;m kh&oacute;&rdquo; c&aacute;c bạn nam bởi sự đa dạng của m&igrave;nh: sọc trắng đen cổ điển, sọc x&aacute;m đen sang trọng, sọc m&agrave;u sắc s&agrave;nh điệu, thời trang. N&oacute;i đến chất lượng của &aacute;o, c&aacute;c bạn nam c&oacute; thể y&ecirc;n t&acirc;m bởi được may từ loại vải cao cấp, thấm mồ h&ocirc;i nhanh v&agrave; những đường chỉ may rất tinh tế v&agrave; tỉ mỉ. Chỉ cần cầm trong tay một chiếc &Aacute;o Sơ Mi Car&ocirc; n&agrave;y th&ocirc;i, chắc chắn c&aacute;c bạn nam sẽ muốn c&oacute; th&ecirc;m nhiều v&agrave; nhiều hơn nữa.</p>\r\n', 'asmn3-3.jpg', 1, 'asmn3-3-3.jpg', 1, 14, 1),
(4, 'Áo Sơ Mi MSN 1312-02', 225000, '<p style="text-align: justify;">Jean cũng như họa tiết car&ocirc; c&oacute; lẽ l&agrave; hai yếu tố trong thời trang m&agrave; chưa bao giờ lỗi mốt. V&agrave; những sản phẩm chứa hai yếu tố n&agrave;y cũng lu&ocirc;n thu h&uacute;t c&aacute;c bạn trẻ, trong đ&oacute; c&oacute; &Aacute;o Sơ Mi Car&ocirc;. C&oacute; thể n&oacute;i &Aacute;o Sơ Mi Car&ocirc; rất đa năng trong c&aacute;ch sử dụng cũng như tạo phong c&aacute;ch cho c&aacute;c bạn nam. Nhiều họa tiết car&ocirc; kh&aacute;c nhau đang &ldquo;l&agrave;m kh&oacute;&rdquo; c&aacute;c bạn nam bởi sự đa dạng của m&igrave;nh: sọc trắng đen cổ điển, sọc x&aacute;m đen sang trọng, sọc m&agrave;u sắc s&agrave;nh điệu, thời trang. N&oacute;i đến chất lượng của &aacute;o, c&aacute;c bạn nam c&oacute; thể y&ecirc;n t&acirc;m bởi được may từ loại vải cao cấp, thấm mồ h&ocirc;i nhanh v&agrave; những đường chỉ may rất tinh tế v&agrave; tỉ mỉ. Chỉ cần cầm trong tay một chiếc &Aacute;o Sơ Mi Car&ocirc; n&agrave;y th&ocirc;i, chắc chắn c&aacute;c bạn nam sẽ muốn c&oacute; th&ecirc;m nhiều v&agrave; nhiều hơn nữa.</p>\r\n', 'asmn4-4.jpg', 0, 'asmn4-4-4.jpg', 1, 14, NULL),
(5, 'Áo Sơ Mi MSN 1316-02', 185000, '<p>Jean cũng như họa tiết car&ocirc; c&oacute; lẽ l&agrave; hai yếu tố trong thời trang m&agrave; chưa bao giờ lỗi mốt. V&agrave; những sản phẩm chứa hai yếu tố n&agrave;y cũng lu&ocirc;n thu h&uacute;t c&aacute;c bạn trẻ, trong đ&oacute; c&oacute; &Aacute;o Sơ Mi Car&ocirc;. C&oacute; thể n&oacute;i &Aacute;o Sơ Mi Car&ocirc; rất đa năng trong c&aacute;ch sử dụng cũng như tạo phong c&aacute;ch cho c&aacute;c bạn nam. Nhiều họa tiết car&ocirc; kh&aacute;c nhau đang &ldquo;l&agrave;m kh&oacute;&rdquo; c&aacute;c bạn nam bởi sự đa dạng của m&igrave;nh: sọc trắng đen cổ điển, sọc x&aacute;m đen sang trọng, sọc m&agrave;u sắc s&agrave;nh điệu, thời trang. N&oacute;i đến chất lượng của &aacute;o, c&aacute;c bạn nam c&oacute; thể y&ecirc;n t&acirc;m bởi được may từ loại vải cao cấp, thấm mồ h&ocirc;i nhanh v&agrave; những đường chỉ may rất tinh tế v&agrave; tỉ mỉ. Chỉ cần cầm trong tay một chiếc &Aacute;o Sơ Mi Car&ocirc; n&agrave;y th&ocirc;i, chắc chắn c&aacute;c bạn nam sẽ muốn c&oacute; th&ecirc;m nhiều v&agrave; nhiều hơn nữa.</p>\r\n', 'asmn5-5.jpg', 1, 'asmn5-5-5.jpg', 1, 14, NULL),
(6, 'Áo Sơ Mi Couple Caro 0523-02', 185000, 'Jean cũng như họa tiết carô có lẽ là hai yếu tố trong thời trang mà chưa bao giờ lỗi mốt. Và những sản phẩm chứa hai yếu tố này cũng luôn thu hút các bạn trẻ, trong đó có Áo Sơ Mi Carô.\r\n\r\nCó thể nói Áo Sơ Mi Carô rất đa năng trong cách sử dụng cũng như tạo phong cách cho các bạn nam. Nhiều họa tiết carô khác nhau đang “làm khó” các bạn nam bởi sự đa dạng của mình: sọc trắng đen cổ điển, sọc xám đen sang trọng, sọc màu sắc sành điệu, thời trang. Nói đến chất lượng của áo, các bạn nam có thể yên tâm bởi được may từ loại vải cao cấp, thấm mồ hôi nhanh và những đường chỉ may rất tinh tế và tỉ mỉ.\r\n\r\nChỉ cần cầm trong tay một chiếc Áo Sơ Mi Carô này thôi, chắc chắn các bạn nam sẽ muốn có thêm nhiều và nhiều hơn nữa. ', 'asmn6-6.jpg', 0, 'asmn6-6-6.jpg', 1, 14, NULL),
(7, 'Áo Sơ Mi MSN 1316-01', 185000, 'Jean cũng như họa tiết carô có lẽ là hai yếu tố trong thời trang mà chưa bao giờ lỗi mốt. Và những sản phẩm chứa hai yếu tố này cũng luôn thu hút các bạn trẻ, trong đó có Áo Sơ Mi Carô.\r\n\r\nCó thể nói Áo Sơ Mi Carô rất đa năng trong cách sử dụng cũng như tạo phong cách cho các bạn nam. Nhiều họa tiết carô khác nhau đang “làm khó” các bạn nam bởi sự đa dạng của mình: sọc trắng đen cổ điển, sọc xám đen sang trọng, sọc màu sắc sành điệu, thời trang. Nói đến chất lượng của áo, các bạn nam có thể yên tâm bởi được may từ loại vải cao cấp, thấm mồ hôi nhanh và những đường chỉ may rất tinh tế và tỉ mỉ.\r\n\r\nChỉ cần cầm trong tay một chiếc Áo Sơ Mi Carô này thôi, chắc chắn các bạn nam sẽ muốn có thêm nhiều và nhiều hơn nữa. ', 'asmn7-7.jpg', 1, 'asmn7-7-7.jpg', 1, 14, NULL),
(8, 'Áo Sơ Mi Couple Caro 0523-02', 185000, 'Những chiếc áo sơ mi với đủ biến tấu từ họa tiết đến kiểu dáng đang chiếm cảm tình của không ít bạn trẻ hiện nay.\r\n\r\nChiếc áo sơ mi caro có lẽ là sản phẩm được ưu ái khá nhiều nhờ khả năng mix&match linh hoạt và tiện dụng không thua gì áo thun.\r\n\r\nVới những chiếc áo sơ mi kẻ caro đang cực hot hiện nay, ngoài cách mặc thông thường bạn còn có thể sử dụng như một chiếc áo khoác, đặc biệt chiếc áo sơ mi caro rất thích hợp để các bạn couple chọn ngay cho mình một cặp đó.', 'asmn8-8.jpg', 1, 'asmn8-8-8.jpg', 1, 14, NULL),
(9, 'Áo Sơ Mi Caro 0005042001', 195000, 'Ngoài áo thun, áo sơ mi chính là item được rất nhiều bạn nữ chọn lựa. Tuy nhiên để chọn một chiếc áo sơ mi phù hợp dáng người, màu da là điều không dễ. Các mẫu áo sơ mi caro ở cửa hàng YaMe rất đa dạng, phong phú, đầy đủ màu sắc và kiểu dáng, đảm bảo không làm bạn thất vọng.\r\n\r\nÁo sơ mi caro phù hợp với mọi phong cách nên các bạn nữ đừng lo ngại nha. Áo sơ mi caro được may bởi chất liệu vải bền bỉ, chất vải mềm và suông. Bạn có thể cách điệu bằng cách cài nút cao phần cổ áo hay điều chỉnh độ dài phần tay áo.\r\n\r\nÁo sơ mi caro có thể mặc cùng quần jean, quần short và cả chân váy nữa, tiện dụng như vậy thì chần chừ gì mà không sắm ngay cho mình một chiếc', 'asmcaronu1-1.jpg', 1, 'asmcaronu1-1-1.jpg', 1, 15, NULL),
(10, 'Áo Sơ Mi Caro 0005041001', 195000, 'Ngoài áo thun, áo sơ mi chính là item được rất nhiều bạn nữ chọn lựa. Tuy nhiên để chọn một chiếc áo sơ mi phù hợp dáng người, màu da là điều không dễ. Các mẫu áo sơ mi caro ở cửa hàng YaMe rất đa dạng, phong phú, đầy đủ màu sắc và kiểu dáng, đảm bảo không làm bạn thất vọng.\r\n\r\nÁo sơ mi caro phù hợp với mọi phong cách nên các bạn nữ đừng lo ngại nha. Áo sơ mi caro được may bởi chất liệu vải bền bỉ, chất vải mềm và suông. Bạn có thể cách điệu bằng cách cài nút cao phần cổ áo hay điều chỉnh độ dài phần tay áo.\r\n\r\nÁo sơ mi caro có thể mặc cùng quần jean, quần short và cả chân váy nữa, tiện dụng như vậy thì chần chừ gì mà không sắm ngay cho mình một chiếc', 'asmcaronu2-2.jpg', 1, 'asmcaronu2-2-2.jpg', 1, 15, NULL),
(11, 'Áo Sơ Mi Caro 2734-001', 225000, 'Ngoài áo thun, áo sơ mi chính là item được rất nhiều bạn nữ chọn lựa. Tuy nhiên để chọn một chiếc áo sơ mi phù hợp dáng người, màu da là điều không dễ. Các mẫu áo sơ mi caro ở cửa hàng LCT Fashion rất đa dạng, phong phú, đầy đủ màu sắc và kiểu dáng, đảm bảo không làm bạn thất vọng.\r\n\r\nÁo sơ mi caro phù hợp với mọi phong cách nên các bạn nữ đừng lo ngại nha. Áo sơ mi caro được may bởi chất liệu vải bền bỉ, chất vải mềm và suông. Bạn có thể cách điệu bằng cách cài nút cao phần cổ áo hay điều chỉnh độ dài phần tay áo.\r\n\r\nÁo sơ mi caro có thể mặc cùng quần jean, quần short và cả chân váy nữa, tiện dụng như vậy thì chần chừ gì mà không sắm ngay cho mình một chiếc', 'asmcaronu3-3.jpg', 1, 'asmcaronu3-3-3.jpg', 1, 15, NULL),
(12, 'Áo Sơ Mi Caro 2424-001', 225000, 'Ngoài áo thun, áo sơ mi chính là item được rất nhiều bạn nữ chọn lựa. Tuy nhiên để chọn một chiếc áo sơ mi phù hợp dáng người, màu da là điều không dễ. Các mẫu áo sơ mi caro ở cửa hàng LCT Fashion rất đa dạng, phong phú, đầy đủ màu sắc và kiểu dáng, đảm bảo không làm bạn thất vọng.\r\n\r\nÁo sơ mi caro phù hợp với mọi phong cách nên các bạn nữ đừng lo ngại nha. Áo sơ mi caro được may bởi chất liệu vải bền bỉ, chất vải mềm và suông. Bạn có thể cách điệu bằng cách cài nút cao phần cổ áo hay điều chỉnh độ dài phần tay áo.\r\n\r\nÁo sơ mi caro có thể mặc cùng quần jean, quần short và cả chân váy nữa, tiện dụng như vậy thì chần chừ gì mà không sắm ngay cho mình một chiếc', 'asmcaronu4-4.jpg', 1, 'asmcaronu4-4-4.jpg', 1, 15, NULL),
(13, 'Áo Sơ Mi Caro 1699-001', 225000, 'Ngoài áo thun, áo sơ mi chính là item được rất nhiều bạn nữ chọn lựa. Tuy nhiên để chọn một chiếc áo sơ mi phù hợp dáng người, màu da là điều không dễ. Các mẫu áo sơ mi caro ở cửa hàng LCT Fashion rất đa dạng, phong phú, đầy đủ màu sắc và kiểu dáng, đảm bảo không làm bạn thất vọng.\r\n\r\nÁo sơ mi caro phù hợp với mọi phong cách nên các bạn nữ đừng lo ngại nha. Áo sơ mi caro được may bởi chất liệu vải bền bỉ, chất vải mềm và suông. Bạn có thể cách điệu bằng cách cài nút cao phần cổ áo hay điều chỉnh độ dài phần tay áo.\r\n\r\nÁo sơ mi caro có thể mặc cùng quần jean, quần short và cả chân váy nữa, tiện dụng như vậy thì chần chừ gì mà không sắm ngay cho mình một chiếc', 'asmcaronu5-5.jpg', 1, 'asmcaronu5-5-5.jpg', 1, 15, NULL),
(14, 'Áo Sơ Mi caro 2735-001', 225000, 'Họa tiết tinh xảo góp phần tạo nên một chiếc áo sơ mi hoàn hảo. Nhu cầu về sản phẩm thời trang của bạn trẻ ngày càng cao, tính thẩm mỹ và sáng tạo của các bạn cũng trở nên cao hơn, chính vì thế LCT Fashion luôn cải tiến để mang đến các bạn một sản phẩm tốt nhất.\r\n\r\nÁo sơ mi caro với nhiều hình dáng, màu sắc khác nhau, các bạn có thể thỏa thích chọn lựa. Chất liệu áo được chọn lọc tỉ mỉ, đường chỉ may khéo léo, hàng nút áo được đính chắc chắn, vì thế các bạn cứ tự tin điện áo sơ mi và sải bước khắp phố nha.\r\n\r\nBạn có thể kết hợp áo sơ mi với quần jean và một chiếc balo cho những ngày đi học hay phối cùng chiếc chân váy cho những buổi hẹn hò.', 'asmcaronu6-6.jpg', 1, 'asmcaronu6-6-6.jpg', 1, 15, NULL),
(15, 'Áo Sơ Mi Caro 2733-001', 225000, 'Họa tiết tinh xảo góp phần tạo nên một chiếc áo sơ mi hoàn hảo. Nhu cầu về sản phẩm thời trang của bạn trẻ ngày càng cao, tính thẩm mỹ và sáng tạo của các bạn cũng trở nên cao hơn, chính vì thế LCT Fashion luôn cải tiến để mang đến các bạn một sản phẩm tốt nhất.\r\n\r\nÁo sơ mi caro với nhiều hình dáng, màu sắc khác nhau, các bạn có thể thỏa thích chọn lựa. Chất liệu áo được chọn lọc tỉ mỉ, đường chỉ may khéo léo, hàng nút áo được đính chắc chắn, vì thế các bạn cứ tự tin điện áo sơ mi và sải bước khắp phố nha.\r\n\r\nBạn có thể kết hợp áo sơ mi với quần jean và một chiếc balo cho những ngày đi học hay phối cùng chiếc chân váy cho những buổi hẹn hò.', 'asmcaronu7-7.jpg', 1, 'asmcaronu7-7-7.jpg', 1, 15, NULL),
(16, 'Áo Sơ Mi Caro 2428-001', 225000, 'Họa tiết Caro có lẽ đã quá quen thuộc đối với tất cả mọi người. Và chiếc áo sơ mi Carô cũng là item được nhiều bạn nữ lựa chọn sử dụng trong những hoạt động hằng ngày.\r\n\r\nÁo sơ mi Caro vẫn trung thành với những màu sắc tươi tắn, trẻ trung. Họa tiết carô cách điệu nhiều kiểu khác nhau tạo điểm nhấn đặc biệt. Kiểu dáng đơn giản phù hợp với tất cả bạn nữ. Chất liệu vải cao cấp nhẹ nhàng, thoáng mát, giúp bạn nữ cảm thấy thoải mái xinh tươi dù bạn ở bất cứ nơi đâu. Form áo đẹp, tay dài kín đáo, duyên dáng cùng họa tiết sọc carô sành điệu và hiện đại.\r\n\r\nBạn có thể kết hợp áo sơ mi Caro với quần jeans, quần sooc hay chân váy đều phù hợp. Dù đi học, đi chơi cùng bạn bè hay đi làm nơi công sở, chiếc áo này sẽ luôn khiến bạn tự tin và nổi bật.', 'asmcaronu8-8.jpg', 1, 'asmcaronu8-8-8.jpg', 1, 15, NULL),
(17, 'Áo Sơ Mi Jean 3322-02', 285000, 'Áo sơ mi là item không thể thiếu trong tủ đồ của bất kỳ bạn nam nào, tuy nhiên để trở nên phong cách và thời trang hơn, các bạn nên chọn cho mình một màu sắc phù hợp với nước da của mình và còn phải phù hợp với thời tiết nữa nha.\r\n\r\nÁo sơ mi trong bộ sưu tập Xuân-Hè mang đến cho bạn một cái nhìn tươi vui nhưng không kém phần nam tính. Chất liệu vải của áo được lựa chọn rất kỹ, phù hợp với thời tiết.\r\n\r\nBạn có thể dễ dàng kết hợp chiếc áo sơ mi này với một áo thun trơn bên trong hoặc chiếc áo khoác da bên ngoài. Đảm bảo các bạn sẽ trở nên tự tin hơn về phong cách của mình đó', 'asmndenim1-1.jpg', 1, 'asmndenim1-1-1.jpg', 1, 17, NULL),
(18, 'Áo Sơ Mi Jean MSN 1355-01', 285000, 'Áo sơ mi là item không thể thiếu trong tủ đồ của bất kỳ bạn nam nào, tuy nhiên để trở nên phong cách và thời trang hơn, các bạn nên chọn cho mình một màu sắc phù hợp với nước da của mình và còn phải phù hợp với thời tiết nữa nha.\r\n\r\nÁo sơ mi trong bộ sưu tập Xuân-Hè mang đến cho bạn một cái nhìn tươi vui nhưng không kém phần nam tính. Chất liệu vải của áo được lựa chọn rất kỹ, phù hợp với thời tiết.\r\n\r\nBạn có thể dễ dàng kết hợp chiếc áo sơ mi này với một áo thun trơn bên trong hoặc chiếc áo khoác da bên ngoài. Đảm bảo các bạn sẽ trở nên tự tin hơn về phong cách của mình đó', 'asmndenim2-2.jpg', 1, 'asmndenim2-2-2.jpg', 1, 17, NULL),
(19, 'ÁO SƠ MI JEAN 3322-01', 285000, 'Áo sơ mi là item không thể thiếu trong tủ đồ của bất kỳ bạn nam nào, tuy nhiên để trở nên phong cách và thời trang hơn, các bạn nên chọn cho mình một màu sắc phù hợp với nước da của mình và còn phải phù hợp với thời tiết nữa nha.\r\n\r\nÁo sơ mi trong bộ sưu tập Xuân-Hè mang đến cho bạn một cái nhìn tươi vui nhưng không kém phần nam tính. Chất liệu vải của áo được lựa chọn rất kỹ, phù hợp với thời tiết.\r\n\r\nBạn có thể dễ dàng kết hợp chiếc áo sơ mi này với một áo thun trơn bên trong hoặc chiếc áo khoác da bên ngoài. Đảm bảo các bạn sẽ trở nên tự tin hơn về phong cách của mình đó', 'asmndenim3-3.jpg', 1, 'asmndenim3-3-3.jpg', 1, 17, NULL),
(20, 'Áo Sơ Mi Jean Hermes 3501-02', 225000, 'Ngoài chiếc áo thun cơ bản thì áo sơ mi chính là item cần phải có trong tủ quần áo của bất kỳ chàng nào. Áo sơ mi phù hợp với những hoàn cảnh khác nhau như đi học, đi làm, hay đi dự tiệc, hãy xem qua những mẫu áo sơ mi của YaMe để chọn cho mình một chiếc thích hợp nha.\r\n\r\nÁo sơ mi Hermes là một chiếc áo độc đáo, bởi thiết kế sang trọng những vẫn giữ được nét trẻ trung, phù hợp với nhiều hoàn cảnh khác nhau. Màu áo sơ mi thong dụng, “menly” không bị chọi với màu da. Chất liệu vải cáo cấp, mịn, mềm, không thô, không phai màu.\r\n\r\nNếu bạn đang muốn thay đổi mình những không biết chọn sản phẩm thời trang nào thì chiếc áo sơ mi Hermes này là một gợi ý hay đó.', 'asmndenim4-4.jpg', 1, 'asmndenim4-4-4.jpg', 1, 17, NULL),
(21, 'Áo Sơ Mi Jean MSN 1319-05', 225000, '', 'asmndenim5-5.jpg', 1, 'asmndenim5-5-5.jpg', 1, 17, NULL),
(22, 'Áo Sơ Mi Jean MSN 1321-03', 225000, 'Áo sơ mi jean hay denim chỉ cần biến tấu một chút là có thể giúp bạn có nhiều phong cách khác nhau song phong cách nào cũng cực thu hút và nổi bật.\r\n\r\nThiết kế theo kiểu truyền thống: tay dài, cổ bẻ, hai túi phía trước nhưng chiếc áo sơ mi jean này sở hữu màu sắc chủ đạo là màu xanh nhạt mang lại sự mới mẻ, giúp các bạn nam có vẻ đẹp thanh lịch và rất năng động. Một vài họa tiết nhỏ được trang trí một cách tinh tế, một chút trên vai, ẩn sau hàng nút hay dưới nắp túi áo… trông cực sành điệu.\r\n\r\nChỉ cần cầm trong tay một chiếc áo sơ mi jean này thôi, chắc chắn các bạn nam sẽ muốn có thêm nhiều và nhiều hơn nữa. Tin không nhỉ!', 'asmndenim6-6.jpg', 1, 'asmndenim6-6-6.jpg', 1, 17, NULL),
(23, 'Áo Sơ Mi Jean MSN 1320-02', 225000, 'Áo sơ mi jean hay denim chỉ cần biến tấu một chút là có thể giúp bạn có nhiều phong cách khác nhau song phong cách nào cũng cực thu hút và nổi bật.\r\n\r\nThiết kế theo kiểu truyền thống: tay dài, cổ bẻ, hai túi phía trước nhưng chiếc áo sơ mi jean này sở hữu màu sắc chủ đạo là màu xanh nhạt mang lại sự mới mẻ, giúp các bạn nam có vẻ đẹp thanh lịch và rất năng động. Một vài họa tiết nhỏ được trang trí một cách tinh tế, một chút trên vai, ẩn sau hàng nút hay dưới nắp túi áo… trông cực sành điệu.\r\n\r\nChỉ cần cầm trong tay một chiếc áo sơ mi jean này thôi, chắc chắn các bạn nam sẽ muốn có thêm nhiều và nhiều hơn nữa. Tin không nhỉ!', 'asmndenim7-7.jpg', 1, 'asmndenim7-7-7.jpg', 1, 17, NULL),
(24, 'Áo Sơ Mi Jean 1318-02', 225000, 'Áo sơ mi jean hay denim chỉ cần biến tấu một chút là có thể giúp bạn có nhiều phong cách khác nhau song phong cách nào cũng cực thu hút và nổi bật.\r\n\r\nThiết kế theo kiểu truyền thống: tay dài, cổ bẻ, hai túi phía trước nhưng chiếc áo sơ mi jean này sở hữu màu sắc chủ đạo là màu xanh nhạt mang lại sự mới mẻ, giúp các bạn nam có vẻ đẹp thanh lịch và rất năng động. Một vài họa tiết nhỏ được trang trí một cách tinh tế, một chút trên vai, ẩn sau hàng nút hay dưới nắp túi áo… trông cực sành điệu.\r\n\r\nChỉ cần cầm trong tay một chiếc áo sơ mi jean này thôi, chắc chắn các bạn nam sẽ muốn có thêm nhiều và nhiều hơn nữa. Tin không nhỉ!', 'asmndenim8-8.jpg', 1, 'asmndenim8-8-8.jpg', 1, 17, NULL),
(25, 'Áo Sơ Mi Appareal 2829-01', 180000, 'Áo sơ mi có lẽ món đồ mà bất cứ một bạn nữ nào cũng sở hữu ít nhất một chiếc. Chiếc áo sơ mi này với kiểu dáng mới sẽ làm bạn tủ đồ của bạn thêm màu sắc đấy!\r\n\r\nÁo sơ mi với kiểu tay dài, cài nút cùng kiểu dáng cổ điển mang đến cho bạn nữ nét trẻ trung, thanh lịch nhưng cũng không kém phần điệu đà, nữ tính. Form dáng vừa vặn, giúp bạn nữ thật thoải mái khi diện chúng. Hoa văn chấm bi trẻ trung cùng màu sắc phối hiện đại, mới mẻ mang đến một sản phẩm cực ấn tượng trong mùa xuân này.\r\n\r\nChiếc áo sơ mi này có lẽ là chiếc áo da phong cách khi kết hợp được với cả quần jean, sooc hay váy. Nhanh tay sở hữu một chiếc để thật nổi bât trong dịp Tết này nhé!\r\n', 'asmcsnu1-1.jpg', 1, 'asmcsnu1-1-1.jpg', 1, 16, NULL),
(26, 'Áo Sơ Mi Voan 8516-01', 225000, 'Chất liệu voan chỉ mới xuất hiện trong năm nay nhưng lại được rất nhiều bạn trẻ yêu thích, nhất là những chiếc áo sơ mi Voan do bởi sự nhẹ nhàng và thanh lịch nó nắm giữ.\r\n\r\nÁo sơ mi Voan với thiết kế bắt mắt cùng những họa tiết trang trí là hoa cách điệu mang đến sự sang trọng cùng sư thanh lịch cho người mặc. Kiểu dáng tay rất da dạng: tay lỡ, sát tay, dài tay để bạn có thể sử dụng cho nhiều mục đích khác nhau. Chất liệu voan cao cấp, thoáng mát, nhẹ nhàng mang lại sự thoải mái tuyệt đối.\r\n\r\nÁo sơ mi Voan có thể dễ dàng phối cùng váy, quần jean, quần sooc… rất thích hợp để đi học, đi làm hay đi chơi, hẹn hò.', 'asmcsnu2-2.jpg', 1, 'asmcsnu2-2-2.jpg', 1, 16, NULL),
(27, 'Áo Sơ Mi Nhung 1525-06', 385000, 'Chiếc áo sơ mi đang ngày càng gia tăng “sức mạnh” của mình với rất nhiều sản phẩm cùng kiểu dáng khác nhau. Sự biến hóa đa dạng làm cho sơ mi dần trở nên quen thuộc cho với, sinh viên, học sinh, hay  nhân viên văn phòng... Áo sơ mi nhung là một trong số đó.\r\n\r\nÁo sơ mi nhung vẫn trung thành với những màu sắc tươi tắn, trẻ trung và cực hiện đại. Với thiết kế không họa tiết tạo điểm nhấn đặc biệt cùng kiểu dáng đơn giản phù hợp với tất cả bạn nữ. Form áo dài giúp bạn nữ thật duyên dáng, nữ tính nhưng cũng không kém phần thu hút.\r\n\r\nBạn có thể kết hợp áo sơ mi nhung với quần jeans, quần sooc hay chân váy đều phù hợp. Dù đi học, đi chơi cùng bạn bè hay đi làm nơi công sở, chiếc áo sơ mi này sẽ luôn khiến bạn tự tin và nổi bật.', 'asmcsnu3-3.jpg', 1, 'asmcsnu3-3-3.jpg', 1, 16, NULL),
(28, 'Áo Sơ Mi Nhung 1525-01', 385000, 'Chiếc áo sơ mi đang ngày càng gia tăng “sức mạnh” của mình với rất nhiều sản phẩm cùng kiểu dáng khác nhau. Sự biến hóa đa dạng làm cho sơ mi dần trở nên quen thuộc cho với, sinh viên, học sinh, hay  nhân viên văn phòng... Áo sơ mi nhung là một trong số đó.\r\n\r\nÁo sơ mi nhung vẫn trung thành với những màu sắc tươi tắn, trẻ trung và cực hiện đại. Với thiết kế không họa tiết tạo điểm nhấn đặc biệt cùng kiểu dáng đơn giản phù hợp với tất cả bạn nữ. Form áo dài giúp bạn nữ thật duyên dáng, nữ tính nhưng cũng không kém phần thu hút.\r\n\r\nBạn có thể kết hợp áo sơ mi nhung với quần jeans, quần sooc hay chân váy đều phù hợp. Dù đi học, đi chơi cùng bạn bè hay đi làm nơi công sở, chiếc áo sơ mi này sẽ luôn khiến bạn tự tin và nổi bật.', 'asmcsnu4-4.jpg', 1, 'asmcsnu4-4-4.jpg', 1, 16, NULL),
(29, 'Áo Sơ Mi Logo Con Vịt 0614-04', 135000, 'Áo sơ mi logo con vịt luôn mang đến năng động và trẻ trung cho các bạn nữ bởi thiết kế đơn giản, ít họa tiết và giá cả cũng không đắt.\r\n\r\nNhững chiếc áo sơ mi logo con vịt được nhấn nhá tinh tế bằng một chú vịt màu vàng nổi bật trước ngực áo tạo điểm nhấn đặc biệt đủ để bạn nữ thể hiện phong cách của mình. Đường chỉ may chắc, chất liệu vải cao cấp mang đến cho các bạn nữ một chiếc cực chất lượng.\r\n\r\nBạn có thể kết hợp áo sơ mi logo con vịt với quần jean, sooc, skinny… thêm một vài phụ kiện thích hợp là bạn đã có một set đồ có thể “tung hoành” bất cứ không gian nào', 'asmcsnu5-5.jpg', 1, 'asmcsnu5-5-5.jpg', 1, 16, NULL),
(30, 'Áo Sơ Mi Cổ Nơ 1153-02', 170000, 'Một item mới cho các bạn nữ trong mùa này đó chính là áo sơ mi cổ nơ giúp bạn nữ có vẻ đẹp nữ tính và duyên dáng.\r\n\r\nÁo sơ mi cổ nơ được thiết kế đơn giản, nhấn tay phồng và cổ nơ, sau lưng nhấn lai ẩn tạo điểm nổi bật cho chiếc áo. Form áo không quá ôm cùng chất liệu vải thấm mồ hôi nhanh mang lại sự thoải mái và tự tin cho người mặc. Ngoài ra, màu sắc sang trọng và sành điệu của chiếc áo sẽ giúp các bạn nữ bắt mắt hơn.\r\n\r\nÁo sơ mi cổ nơ rất thích hợp cho những buổi họp mặt, ra mắt sản phẩm hay đi làm, đi học. Bạn sẽ là trung tâm của mọi sự chú ý  đấy!', 'asmcsnu6-6.jpg', 1, 'asmcsnu6-6-6.jpg', 1, 16, NULL),
(31, 'Áo Sơ Mi CiCi 1159-02', 210000, 'Áo sơ mi có lẽ món đồ mà bất cứ một bạn nữ nào cũng sở hữu ít nhất một chiếc. Chiếc áo sơ mi CiCi với kiểu dáng mới sẽ làm bạn tủ đồ của bạn thêm màu sắc đấy!\r\n\r\nÁo sơ mi CiCi với kiểu tay dài, cài nút cùng kiểu dáng cổ điển mang đến cho bạn nữ nét trẻ trung, thanh lịch nhưng cũng không kém phần điệu đà, nữ tính. Form dáng áo dài, điểm xuyết logo bên tay áo tạo điểm nhấn đặc biệt.\r\n\r\nChiếc áo sơ mi CiCi này có lẽ là chiếc áo phù hợp cho nhiều hoạt động cùng một lúc trong mùa đông này. Nhanh tay sở hữu nào!', 'asmcsnu7-7.jpg', 1, 'asmcsnu7-7-7.jpg', 1, 16, NULL),
(32, 'Áo Sơ Mi Tim Purple 1328-02', 185000, 'Chiếc áo sơ mi đang ngày càng gia tăng “sức mạnh” của mình với rất nhiều sản phẩm cùng kiểu dáng khác nhau. Sự biến hóa đa dạng làm cho sơ mi dần trở nên quen thuộc cho với, sinh viên, học sinh, hay  nhân viên văn phòng... Áo sơ mi Tim Purple là một trong số đó.\r\n\r\nÁo sơ mi Tim Purple là một biến thể của sơ mi và được rất nhiều bạn gái ưa chuộng. Với đường may tinh tế, màu sắc trẻ trung, kiểu dáng hiện đại sẽ giúp bạn nữ thêm phần tự tin khi diện chiếc áo này. Hoa văn trang trí nổi bật và chi tiết giúp bạn gái thật lôi cuốn trong mắt các anh chàng đi đường.\r\n\r\nÁo sơ mi Tim Purple sẽ là một item tuyệt vời mà bất kỳ bạn gái nào cũng muốn có ít nhất một chiếc trong tủ quần áo của mình trong mùa đông này.', 'asmcsnu8-8.jpg', 1, 'asmcsnu8-8-8.jpg', 1, 16, NULL),
(33, 'Áo Sơ Mi Jean Bo 1864-001', 180000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'asmdenimnu1-1.jpg', 1, 'asmdenimnu1-1-1.jpg', 1, 18, NULL),
(34, 'Áo Sơ Mi Jean SD 1773-001', 180000, 'Họa tiết tinh xảo góp phần tạo nên một chiếc áo sơ mi hoàn hảo. Nhu cầu về sản phẩm thời trang của bạn trẻ ngày càng cao, tính thẩm mỹ và sáng tạo của các bạn cũng trở nên cao hơn, chính vì thế LCT Fashion luôn cải tiến để mang đến các bạn một sản phẩm tốt nhất.\r\n\r\nÁo sơ mi Jean với nhiều hình dáng, màu sắc khác nhau, các bạn có thể thỏa thích chọn lựa. Chất liệu áo được chọn lọc tỉ mỉ, đường chỉ may khéo léo, hàng nút áo được đính chắc chắn, vì thế các bạn cứ tự tin điện áo sơ mi và sải bước khắp phố nha.\r\n\r\nBạn có thể kết hợp áo sơ mi với quần jean và một chiếc balo cho những ngày đi học hay phối cùng chiếc chân váy cho những buổi hẹn hò.', 'asmdenimnu2-2.jpg', 1, 'asmdenimnu2-2-2.jpg', 1, 18, 1),
(35, 'Áo Sơ Mi Jean Pretty 2855-01', 265000, 'Áo sơ mi Jean Denim là một item đặc sắc vẫn còn giữ sức "hot" trong bộ sưu tập Xuân-Hè năm nay. Kiểu dáng của áo Jean  khá đơn giản nhưng điểm nhất nổi bật và đặc sắc nhất chính là màu sắc. Áo Jean được phối màu cực thời trang, tạo cảm giác bũi bặm và sành điệu hơn.\r\n\r\nÁo sơ mi Jean có chất liệu giả jean, vải không quá dày như jean, tuy vải mỏng nhưng độ bền bỉ không thua kém gì chất liệu Jean đâu nha. Cố áo mềm, thoải mái, không tạo cảm giác bức bí, phía trước áo còn được cách điệu một chiếc túi tiện dụng. Áo sơ mi Jean có thể sử dụng làm áo khoác cho những ngày nắng hay những ngày thời tiết trở gió.\r\n\r\nChỉ với một chiếc áo mà lại có nhiều công dụng, nhiều phong cách như vậy thì chần chờ gì mà không đến YaMe sắm ngay cho mình một chiếc.', 'asmdenimnu3-3.jpg', 1, 'asmdenimnu3-3-3.jpg', 1, 18, NULL),
(36, 'Áo Sơ Mi Jean Pretty 2852-01', 265000, 'Họa tiết tinh xảo góp phần tạo nên một chiếc áo sơ mi hoàn hảo. Nhu cầu về sản phẩm thời trang của bạn trẻ ngày càng cao, tính thẩm mỹ và sáng tạo của các bạn cũng trở nên cao hơn, chính vì thế LCT Fashion luôn cải tiến để mang đến các bạn một sản phẩm tốt nhất.\r\n\r\nÁo sơ mi Jean Pretty với nhiều hình dáng, màu sắc khác nhau, các bạn có thể thỏa thích chọn lựa. Chất liệu áo được chọn lọc tỉ mỉ, đường chỉ may khéo léo, hàng nút áo được đính chắc chắn, vì thế các bạn cứ tự tin điện áo sơ mi và sải bước khắp phố nha.\r\n\r\nBạn có thể kết hợp áo sơ mi Jean pretty với quần jean và một chiếc balo cho những ngày đi học hay phối cùng chiếc chân váy cho những buổi hẹn hò.', 'asmdenimnu4-4.jpg', 1, 'asmdenimnu4-4-4.jpg', 1, 18, NULL),
(37, 'Sơ Mi Jean 1866-01', 269000, 'Sơ mi jean đang ngày càng khẳng định vị trí của nó trên chiến trường thời trang năm nay. Hàng trăm mẫu mã kiểu dáng khác nhau đua nhau ra đời càng làm cho sự lựa chọn của các bạn nữ thêm phần khó khăn.\r\n\r\nÁo sơ mi jean với chất liệu chắc chắn, cùng đường may tỉ mỉ chi tiết khiến bạn gái không thể không thổn thức. Lấy thiết kế đơn giản làm điểm nổi bật hay nhấn nhá vài họa tiết mang chút không khí cổ điển cũng làm chiếc áo đắt giá hơn. Form áo không quá ôm mang đến sự thoải mái, thoáng mát khi mặc là một điểm cộng đáng chú ý của chiếc áo này.\r\n\r\nNếu bạn là tín đồ của jean, hãy nhanh tay đưa chiếc áo sơ mi jean gia nhập tủ quần áo của bạn!', 'asmdenimnu5-5.jpg', 1, 'asmdenimnu5-5-5.jpg', 1, 18, NULL),
(38, 'Sơ Mi Jean 1754-01', 265000, 'Sơ mi jean đang ngày càng khẳng định vị trí của nó trên chiến trường thời trang năm nay. Hàng trăm mẫu mã kiểu dáng khác nhau đua nhau ra đời càng làm cho sự lựa chọn của các bạn nữ thêm phần khó khăn.\r\n\r\nÁo sơ mi jean với chất liệu chắc chắn, cùng đường may tỉ mỉ chi tiết khiến bạn gái không thể không thổn thức. Lấy thiết kế đơn giản làm điểm nổi bật hay nhấn nhá vài họa tiết mang chút không khí cổ điển cũng làm chiếc áo đắt giá hơn. Form áo không quá ôm mang đến sự thoải mái, thoáng mát khi mặc là một điểm cộng đáng chú ý của chiếc áo này.\r\n\r\nNếu bạn là tín đồ của jean, hãy nhanh tay đưa chiếc áo sơ mi jean gia nhập tủ quần áo của bạn!', 'asmdenimnu6-6.jpg', 1, 'asmdenimnu6-6-6.jpg', 1, 18, NULL),
(39, 'Áo Sơ Mi Pretty 1528-01', 265000, 'Áo sơ mi jean hay denim là một trong những item được các bạn nữ ưa chuộng do tính chất trẻ trung và một chút bụi bặm mà nó mang lại. Vì vậy, bất cứ cô nàng nào cũng đều có ít nhất một chiếc trong tủ áo của mình.\r\n\r\nÁo sơ mi jean có kiểu dáng cách điệu, tay dài cổ điển, cùng phối họa tiết hoa trẻ trung, hiện đại. Form dáng dài, đường cắt may tỉ mỉ, tinh xảo cộng với chất liệu mát mẻ mang đến một chiếc áo cực tốt về chất lượng. Chiếc áo sơ mi này thể hiện được vẻ dịu dàng, nữ tính nhưng không kém phần sành điệu, trẻ trung của các bạn gái.\r\n\r\nBạn có thể kết hợp áo sơ mi jean với một chiếc quần tây, quần jeans hay chân váy để luôn có vẻ ngoài tự tin, cá tính và đầy cuốn hút.', 'asmdenimnu7-7.jpg', 1, 'asmdenimnu7-7-7.jpg', 1, 18, NULL),
(40, 'Áo Sơ Mi Jean Thổ Cẩm 1221-01', 249000, 'Một item được biến thể từ áo sơ mi jean đó chính là áo sơ mi jean thổ cẩm, vừa cá tính, năng động nhưng cũng không kém phần nữ tính, duyên dáng.\r\n\r\nCũng sở hữu những kiểu dáng áo trẻ trung, đường may sắc nét, màu sắc hiện đại, cá tính song chiếc áo sơ mi thổ cẩm này đặc biệt ở chỗ được điểm xuyết hoa văn thổ cẩm lạ mắt ở cổ áo, vai, túi áo... Chất liệu jean cực tốt, thấm mồ hôi nhanh, đem đến sự thoải mái trong từng hoạt động. Form áo dài, nhấn eo nhẹ giúp bạn nữ khoe những đường nét đẹp mắt trên cơ thể.\r\n\r\nNhững tín đồ của áo sơ mi jean hay denim còn chần chừ gì mà chưa mua cho mình một chiếc, nó sẽ làm tủ áo của bạn sáng bừng đấy.', 'asmdenimnu8-8.jpg', 1, 'asmdenimnu8-8-8.jpg', 1, 18, 1),
(41, 'Áo Thun SS 0004858006', 59000, '<p>L&agrave; một trong những kiểu d&aacute;ng &aacute;o dễ mặc v&agrave; đem đến n&eacute;t khỏe khoắn, năng động, &aacute;o thun SS body l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu trong tủ đồ của c&aacute;c bạn nam. Bất kể m&ugrave;a n&agrave;o trong năm, trang phục n&agrave;y cũng c&oacute; thể đồng h&agrave;nh c&ugrave;ng c&aacute;c anh ch&agrave;ng. &Aacute;o thun SS body ng&agrave;y c&agrave;ng được c&aacute;c bạn nam ưa chuộng bởi chất liệu thun cao cấp, co gi&atilde;n 4 chiều v&agrave; thấm mồ h&ocirc;i cực nhanh kh&ocirc;ng g&acirc;y n&oacute;ng bức, vừa tạo cảm gi&aacute;c thoải m&aacute;i vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đ&oacute;, kiểu d&aacute;ng &aacute;o đơn giản, nh&atilde; nhặn với tay ngắn v&agrave; cổ tr&ograve;n, m&agrave;u sắc trẻ trung n&ecirc;n dễ d&agrave;ng mix c&ugrave;ng những trang phục, phụ kiện kh&aacute;c. Form &aacute;o &ocirc;m vừa phải gi&uacute;p bạn nam kh&eacute;o l&eacute;o khoe những đường n&eacute;t mạnh mẽ tr&ecirc;n cơ thể. &Aacute;o thun SS body rất th&iacute;ch hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic c&ugrave;ng bạn b&egrave;. B&ecirc;n cạnh đ&oacute;, n&oacute; cũng l&agrave; m&oacute;n qu&agrave; tuyệt vời gi&agrave;nh tặng cho người th&acirc;n, bạn b&egrave; của bạn.</p>\r\n', 'atct1-1.jpg', 0, 'atct1-1-1.jpg', 1, 9, 1),
(42, 'Áo Thun SS 0004999006', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct2-2.jpg', 1, 'atct2-2-2.jpg', 1, 9, NULL),
(43, 'Áo Thun SS 2753-003', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct3-3.jpg', 1, 'atct3-3-3.jpg', 1, 9, NULL),
(44, 'Áo Thun SS 0285-010', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct4-4.jpg', 1, 'atct4-4-4.jpg', 1, 9, NULL),
(45, 'Áo Thun SS 0278-012', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct5-5.jpg', 1, 'atct5-5-5.jpg', 1, 9, NULL),
(46, 'Áo Thun SS 0278-007', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct6-6.jpg', 1, 'atct6-6-6.jpg', 1, 9, NULL),
(47, 'Áo Thun SS 0268-002', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct7-7.jpg', 1, 'atct7-7-7.jpg', 1, 9, NULL),
(48, 'Áo Thun SS 0264-006', 59000, 'Là một trong những kiểu dáng áo dễ mặc và đem đến nét khỏe khoắn, năng động, áo thun SS body là món đồ không thể thiếu trong tủ đồ của các bạn nam. Bất kể mùa nào trong năm, trang phục này cũng có thể đồng hành cùng các anh chàng.\r\n\r\nÁo thun SS body ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ tròn, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun SS body rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atct8-8.jpg', 1, 'atct8-8-8.jpg', 1, 9, NULL);
INSERT INTO `sanphams` (`ID`, `TenSanPham`, `GiaBan`, `MoTa`, `HinhAnh`, `TrangThai`, `HinhChiTiet`, `NhaCungCap_id`, `LoaiSanPham_ID`, `ChuDe_id`) VALUES
(49, 'Áo Thun Couple Thái 2350-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap5-5.jpg', 1, 'atcap5-5-5.jpg', 1, 10, NULL),
(50, 'Áo Thun Couple Thái 2348-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap7-7.jpg', 1, 'atcap7-7-7.jpg', 1, 10, NULL),
(51, 'Áo Thun Couple Thái 2347-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap8-8.jpg', 1, 'atcap8-8-8.jpg', 1, 10, NULL),
(52, 'Áo Thun Couple Thái 2345-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap4-4.jpg', 1, 'atcap4-4-4.jpg', 1, 10, NULL),
(53, 'Áo Thun Couple Thái 2349-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap6-6.jpg', 1, 'atcap6-6-6.jpg', 1, 10, 1),
(54, 'Áo Thun Couple Thái 2346-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap9-9.jpg', 1, 'atcap9-9-9.jpg', 1, 10, NULL),
(55, 'Áo Thun Couple Thái 2345-01', 299000, 'Bạn hạnh phúc và tự hào về người ấy của mình. Bạn muốn hét lên với cả thế giới biết rằng đó là một nửa yêu thương của bạn. Hãy thể hiện điều đó bằng áo thun Couple Thái cực đáng yêu và dễ thương này nhé.\r\n\r\nÁo thun Couple Thái gồm 1 cái giành cho nam và 1 cái giành cho nữ với thiết kế đơn giản: cổ tròn, ngắn tay, form áo suông nên phù hợp với nhiều dáng người. Màu sắc tươi sáng, hoa văn trang trí trẻ trung, vui tươi và rất ý nghĩa. Áo thun thái luôn luôn mang đến một sản phẩm cực ổn về cả chất liệu và màu in nên các bạn có thể yên tâm về tuổi thọ của nó. Áo dễ mặc, dễ kết hợp với quần jeans hoặc short kaki tạo phong cách thời trang và cá tính hơn.\r\n\r\nÁo thun Couple Thái xinh xắn này sẽ giúp bạn trở nên đặc biệt khi cùng “người ấy” tham gia trong các cuộc dã ngoại, vui chơi cùng với bạn bè, người thân.', 'atcap10-10.jpg', 1, 'atcap10-10-10.jpg', 1, 10, 1),
(56, 'Áo Thun SS Số 9 May Mắn 0239-01', 59000, 'Những cặp áo thun đôi như góp phần làm tăng thêm sự gắn kết trong tình yêu của các bạn. Áo thun đôi là item không thể thiếu đối với những cặp đôi đang yêu. Dấu hiệu tình yêu nồng nàng của bạn sẽ được thể hiện qua những cặp áo đôi từ áo khoác cho đến những bộ đồ đầy màu sắc.\r\n\r\nÁo thun số 9 may mắn cho các cặp đôi trẻ trung, tin chắc chiếc áo thun này vừa mang lại cảm giác thoải mái cho các couple lại vừa giúp các bạn trở nên ấm áp hơn trong những lần hẹn hò. ', 'atcap2-2.jpg', 1, 'atcap2-2-2.jpg', 1, 10, NULL),
(57, 'Áo Thun Zara 3765-01', 185000, 'Đối với những bạn nam thích phong cách casual, thận trong trong cách ăn mặc thì chiếc áo thun sẽ là lựa chọn tối ưu nhất.\r\n\r\nNhững dòng sản phẩm áo thun luôn luôn cải tiến và thay đổi về chất lượng, mẫu mã để các bạn nam có nhiều hơn sự lựa chọn. Đôi khi họa tiết rất đơn giản, nhưng cũng mang lại vẻ hiện đại, nam tính cho bạn nam. Điều đặc biệt khiến chiếc áo thun luôn phổ biến đó chính là chất liệu vải cực tốt, bền, thấm hút mồ hôi, rất phù hợp với thời tiết.\r\n\r\nMột ưu điểm nữa của chiếc áo thun YaMe đó chính là rất dễ phối với các loại quần,bạn không cần mất quá nhiều thời gian để suy nghĩ, quần jean, quần kaki, quần sooc, đều có thể phối với áo thun', 'atnam1-1.jpg', 1, 'atnam1-1-1.jpg', 1, 11, NULL),
(58, 'Áo Thun Style 3467-01', 185000, 'Một chiếc áo có kiểu dáng ôm body cực trẻ trung, thể hiện được vẻ năng động, cá tính của các bạn nam, lại còn rất dễ phối cùng nhiều trang phục và phụ kiện khác, đó chính là chiếc áo thun Style.\r\n\r\nÁo thun Style ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ mềm mại, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun Style rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atnam2-2.jpg', 1, 'atnam2-2-2.jpg', 1, 11, NULL),
(59, 'Áo Thun Zara 3751-01', 225000, 'Đối với những bạn nam thích phong cách casual, thận trong trong cách ăn mặc thì chiếc áo thun sẽ là lựa chọn tối ưu nhất.\r\n\r\nNhững dòng sản phẩm áo thun luôn luôn cải tiến và thay đổi về chất lượng, mẫu mã để các bạn nam có nhiều hơn sự lựa chọn. Đôi khi họa tiết rất đơn giản, nhưng cũng mang lại vẻ hiện đại, nam tính cho bạn nam. Điều đặc biệt khiến chiếc áo thun luôn phổ biến đó chính là chất liệu vải cực tốt, bền, thấm hút mồ hôi, rất phù hợp với thời tiết.\r\n\r\nMột ưu điểm nữa của chiếc áo thun đó chính là rất dễ phối với các loại quần,bạn không cần mất quá nhiều thời gian để suy nghĩ, quần jean, quần kaki, quần sooc, đều có thể phối với áo thun', 'atnam3-3.jpg', 1, 'atnam3-3-3.jpg', 1, 11, NULL),
(60, 'Áo Thun Zara 3766-01', 225000, 'Đối với những bạn nam thích phong cách casual, thận trong trong cách ăn mặc thì chiếc áo thun sẽ là lựa chọn tối ưu nhất.\r\n\r\nNhững dòng sản phẩm áo thun luôn luôn cải tiến và thay đổi về chất lượng, mẫu mã để các bạn nam có nhiều hơn sự lựa chọn. Đôi khi họa tiết rất đơn giản, nhưng cũng mang lại vẻ hiện đại, nam tính cho bạn nam. Điều đặc biệt khiến chiếc áo thun luôn phổ biến đó chính là chất liệu vải cực tốt, bền, thấm hút mồ hôi, rất phù hợp với thời tiết.\r\n\r\nMột ưu điểm nữa của chiếc áo thun đó chính là rất dễ phối với các loại quần,bạn không cần mất quá nhiều thời gian để suy nghĩ, quần jean, quần kaki, quần sooc, đều có thể phối với áo thun', 'atnam4-4.jpg', 1, 'atnam4-4-4.jpg', 1, 11, 1),
(61, 'Áo Thun Style 3466-01', 185000, 'Một chiếc áo có kiểu dáng ôm body cực trẻ trung, thể hiện được vẻ năng động, cá tính của các bạn nam, lại còn rất dễ phối cùng nhiều trang phục và phụ kiện khác, đó chính là chiếc áo thun Style.\r\n\r\nÁo thun Style ngày càng được các bạn nam ưa chuộng bởi chất liệu thun cao cấp, co giãn 4 chiều và thấm mồ hôi cực nhanh không gây nóng bức, vừa tạo cảm giác thoải mái vừa đem đến sự tự tin tuyệt đối cho người mặc. Song song đó, kiểu dáng áo đơn giản, nhã nhặn với tay ngắn và cổ mềm mại, màu sắc trẻ trung nên dễ dàng mix cùng những trang phục, phụ kiện khác. Form áo ôm vừa phải giúp bạn nam khéo léo khoe những đường nét mạnh mẽ trên cơ thể.\r\n\r\nÁo thun Style rất thích hợp cho những buổi dạo phố cuối tuần, chơi thể thao hay picnic cùng bạn bè. Bên cạnh đó, nó cũng là món quà tuyệt vời giành tặng cho người thân, bạn bè của bạn.', 'atnam5-5.jpg', 1, 'atnam5-5-5.jpg', 1, 11, 1),
(62, 'Áo Thun CP 2426-01', 150000, 'Các bạn nam ngày càng có nhiều sự lựa chọn cho việc “làm đẹp” của mình bởi có rất nhiều mẫu áo thun với nhiều kiểu dáng, mẫu mã ra đời. Một trong số đó có áo thun CP.\r\n\r\nÁo thun CP được thiết kế với dạng cổ áo bẻ nhỏ thời trang, xẻ trụ, tay ngắn đơn giản mang lại vẻ trẻ trung, năng động cho các bạn nam. Sử dụng chất liệu thun cao cấp dày mịn, thoáng mát, cho bạn thoải mái vận động. Áo có rất nhiều màu sắc trẻ trung và hiện đại, bạn nam có thể thoải mái lựa chọn màu sắc phù hợp với mình. Form áo body tạo nét trẻ trung nhưng không kém phần sang trọng, lịch lãm.\r\n\r\nBạn có thể dễ dàng kết hợp áo thun CP với quần kaki, giày bata, áo khoác thời trang… khi đi làm, dạo phố hoặc ngay cả những buổi picnic ngoài trời cùng bạn bè hay trong những dịp lễ Tết.', 'atnam6-6.jpg', 1, 'atnam6-6-6.jpg', 1, 11, NULL),
(63, 'Áo Thun CP 2161-01', 150000, 'Các bạn nam ngày càng có nhiều sự lựa chọn cho việc “làm đẹp” của mình bởi có rất nhiều mẫu áo thun với nhiều kiểu dáng, mẫu mã ra đời. Một trong số đó có áo thun CP.\r\n\r\nÁo thun CP được thiết kế với dạng cổ áo bẻ nhỏ thời trang, xẻ trụ, tay ngắn đơn giản mang lại vẻ trẻ trung, năng động cho các bạn nam. Sử dụng chất liệu thun cao cấp dày mịn, thoáng mát, cho bạn thoải mái vận động. Áo có rất nhiều màu sắc trẻ trung và hiện đại, bạn nam có thể thoải mái lựa chọn màu sắc phù hợp với mình. Form áo body tạo nét trẻ trung nhưng không kém phần sang trọng, lịch lãm.\r\n\r\nBạn có thể dễ dàng kết hợp áo thun CP với quần kaki, giày bata, áo khoác thời trang… khi đi làm, dạo phố hoặc ngay cả những buổi picnic ngoài trời cùng bạn bè hay trong những dịp lễ Tết.', 'atnam7-7.jpg', 1, 'atnam7-7-7.jpg', 1, 11, 2),
(64, 'Áo Thun Thái Thinking 2037-01', 169000, 'Thiết kế đơn giản nhưng vẫn thể hiện được nét thời trang sành điệu, năng động đó chính là  điểm nổi bật của những chiếc áo thun thái.\r\n\r\nÁo thun thái với kiểu dáng ngắn tay, cổ tròn quen thuộc, điểm nhấn nổi bật là các họa tiết bắt mắt, tươi trẻ tạo vẻ cuốn hút thật ấn tượng. Hình ảnh in phía trước cực bắt mắt và sắc nét. Form áo ôm dáng chuẩn mang lại sự nam tính, khỏe khoắn và tràn đầy sức sống cho các bạn nam. Đặc biệt, chất liệu thun cao cấp giúp bạn luôn thoải mái, tự tin trong các hoạt động ngoài trời bởi độ co giãn và khả năng thấm mồ hôi cực tốt. \r\n\r\nKết hợp áo thun thái với jeans, kaki, short… bạn đã sở hữu cho mình style riêng, cực trẻ trung và năng động nhưng không kém phần nổi bật. Đón Tết cùng chiếc áo nổi bật này nhé!', 'atnam8-8.jpg', 1, 'atnam8-8-8.jpg', 1, 11, 2),
(65, 'Áo Thun White Line 1715-001', 109000, 'Vẫn là chiếc áo thun với chất liệu thoải mái và màu sắc hài hòa, tuy nhiên mỗi chiếc áo thun mà YaMe mang lại cho các bạn đều có một phong cách, một cá tính khác nhau. Hãy thể hiện mình bằng những chiếc áo thun phù hợp, bạn nhé!\r\n\r\n Áo thun cổ tròn white line vừa phải không quá ôm không gây cảm giác khó chịu, điều đặc biệt mà chiếc áo thun này chính là những họa tiết đôc đáo, ngộ nghĩnh, vui tươi chất liệu thun co giản, thấm hút mồ hôi.\r\n\r\nNhững chiếc áo thun cổ tròn white line này vừa dễ phối, dễ mặc lại không lo bị lỗi thời, chần chờ gì mà không sắm ngay cho mình một chiếc! ', 'atnu1-1.jpg', 1, 'atnu1-1-1.jpg', 1, 12, 2),
(66, 'Áo Thun 6.Style 3133-002', 165000, 'Mùa hè đang bổ bộ về thành phố, cái nắng chói chang, gay gắt làm khó lòng các tín đồ thời trang. Thời tiết như thế này chỉ có áo thun là tuyệt vời nhất! để đáp ứng nhu cầu của các bạn YaMe luôn cải tiến không ngừng và tạo ra nhiều sản phẩm thời trang đẹp mắt hơn.\r\n\r\nÁo thun Style là một item độc áo của mùa hè. Áo thun mang chất liệu thoải mái, thấm hút mồ hôi, màu sắc rực rỡ, tươi vui của nắng. Đặc biệt là phom dáng áo giấy đơn giản, thoải mái, không rườm rà. \r\n\r\nBạn có thể dễ dàng diện chiếc áo này với quần short, jean, legging. Chiếc áo thun giấy rực rỡ sắc màu này sẽ mang lại cho bạn sự hài lòng tuyệt đối vào mùa hè náy đó!', 'atnu2-2.jpg', 1, 'atnu2-2-2.jpg', 1, 12, NULL),
(67, 'Áo Thun Zara Basic 4271-001', 170000, 'Mùa hè đã đến rồi! đây cũng là lúc các sản phẩm thời trang đơn giản, nhẹ nhành, thoải mài lên ngôi. Chọn trang phục ngoài phù hợp với bản thân còn phải phù hợp với thời tiết nữa, đừng để tình trạng " thời trang phang thời tiết" đó. Hãy để YaMe giới thiệu cho bạn một vài sản phẩm phù hợp nhé!\r\n\r\nÁo thun Candy là một trong những item rất phù hợp với mùa hè. Bởi kiểu dáng đơn giản, màu sắc tươi vui, họa tiết không rườm rà, điểm nhấn duy nhất đặc sắc chính là họa tiết nằm trước thân áo. Cổ áo tròn, không quá bó sát cổ gây cảm giác khó chịu, nóng nực. Tay áo rộng vừa khải, không ôm, ngoài ra bạn cón có thể điều chình bằng cách xăn nhẹ phần tay áo.\r\n\r\nBạn có thể dễ dàng kết hợp áo thun Mickey với quần short, quần jean, chiếc áo này sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối. Thế là các bạn nữ đã có thể dễ dàng chọn trang phục chống lại cái nắng âm ỉ rồi nha!', 'atnu3-3.jpg', 1, 'atnu3-3-3.jpg', 1, 12, NULL),
(68, 'Áo Thun Ren Zara 4249-006', 250000, 'Một đề xuất thú vị cho cô nàng thích phong cách sang trọng và quyến rũ đây. Áo thun ren Zara là một điển hình đặc sắc. Áo mang vẻ nữ tính, hiện đại, đặc biệt là màu sắc bắt mắt, thích hợp với nhiều loại màu da.\r\n\r\nÁo thun ren Zara có điểm nhấn là cổ áo tròn, nhấn đen.Form áo ôm vừa phải, tôn dáng tuyệt đối. Chất liệu ren thun, co giản thoải mái, dễ mặc. Chất liệu vải được chọn lọc lỹ lưỡng nên các bạn nữ cứ yên tâm nhé. Tuy nhiên đối với chất liệu ren thì các bạn nên hạn chế sử dụng các phụ kiện có khoen hay kim loại để tránh trường hợp móc trúng phải ren nhé.\r\n\r\nÁo thun Ren Zara có thể mặc cùng quần short, quần ôm kaki, chân váy ôm. Hãy thể hiện tài năng mix&match của bạn bằng chiếc áo thun ren này nha.', 'atnu4-4.jpg', 1, 'atnu4-4-4.jpg', 1, 12, NULL),
(69, 'Áo Thun Candy 1701-003', 95000, 'Mùa hè đã đến rồi! đây cũng là lúc các sản phẩm thời trang đơn giản, nhẹ nhành, thoải mài lên ngôi. Chọn trang phục ngoài phù hợp với bản thân còn phải phù hợp với thời tiết nữa, đừng để tình trạng " thời trang phang thời tiết" đó. Hãy để LCT Fashion giới thiệu cho bạn một vài sản phẩm phù hợp nhé!\r\n\r\nÁo thun Candy là một trong những item rất phù hợp với mùa hè. Bởi kiểu dáng đơn giản, màu sắc tươi vui, họa tiết không rườm rà, điểm nhấn duy nhất đặc sắc chính là họa tiết nằm trước thân áo. Cổ áo tròn, không quá bó sát cổ gây cảm giác khó chịu, nóng nực. Tay áo rộng vừa khải, không ôm, ngoài ra bạn cón có thể điều chình bằng cách xăn nhẹ phần tay áo.\r\n\r\nBạn có thể dễ dàng kết hợp áo thun Mickey với quần short, quần jean, chiếc áo này sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối. Thế là các bạn nữ đã có thể dễ dàng chọn trang phục chống lại cái nắng âm ỉ rồi nha!', 'atnu5-5.jpg', 1, 'atnu5-5-5.jpg', 1, 12, NULL),
(70, 'Áo Thun Mikey 2509-003', 150000, 'Mùa hè đã đến rồi! đây cũng là lúc các sản phẩm thời trang đơn giản, nhẹ nhành, thoải mài lên ngôi. Chọn trang phục ngoài phù hợp với bản thân còn phải phù hợp với thời tiết nữa, đừng để tình trạng " thời trang phang thời tiết" đó. Hãy để LCT Fashion giới thiệu cho bạn một vài sản phẩm phù hợp nhé!\r\n\r\nÁo thun Mickey là một trong những item rất phù hợp với mùa hè. Bởi kiểu dáng đơn giản, màu sắc tươi vui, họa tiết không rườm rà, điểm nhấn duy nhất đặc sắc chính là một chiếc nơ nổi nằm trước thân áo. Cổ áo tròn, không quá bó sát cổ gây cảm giác khó chịu, nóng nực. Tay áo rộng vừa khải, không ôm, ngoài ra bạn cón có thể điều chình bằng cách xăn nhẹ phần tay áo.\r\n\r\nBạn có thể dễ dàng kết hợp áo thun Mickey với quần short, quần jean, chiếc áo này sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối. Thế là các bạn nữ đã có thể dễ dàng chọn trang phục chống lại cái nắng âm ỉ rồi nha!', 'atnu6-6.jpg', 1, 'atnu6-6-6.jpg', 1, 12, 1),
(71, 'Áo Thun Heavy 1003-001', 109000, 'Áo thun crop top có rất nhiều biến tấu, phong phú và đa dạng, một trong số đó chính là chiếc áo thun crop top vô cùng dễ thương và ngọt ngào Heavy này đây.\r\n\r\nÁo thun crop top lấy cảm hứng là những họa tiết gần gũi, tươi vui để cấu thành, đảm bảo họa tiết này sẽ tạo cảm giác mới lạ, độc đáo cho các nàng. Chỉ với nền màu trắng,xám, đơn sắc kiểu dáng đơn giản, tuy nhiên họa tiết biến đổi linh hoạt tạo sự thích thú.\r\n\r\nÁo thun crop top có độ dài vừa phải, bạn có thể dễ dàng kết hợp cùng quần lưng cao, chân váy. Chất liệu vải và kỹ thuật in cao cấp, vì thế bạn cứ tha hồ diện, giặt thoải mái nha. Những ngày hè nóng bức này là thời gian tuyệt vời để diện áo croptop đó các nàng!', 'atnu7-7.jpg', 1, 'atnu7-7-7.jpg', 1, 12, NULL),
(72, 'Áo Thun Giấy 2468-001', 99000, 'Mùa hè đang bổ bộ về thành phố, cái nắng chói chang, gay gắt làm khó lòng các tín đồ thời trang. Thời tiết như thế này chỉ có áo thun là tuyệt vời nhất! để đáp ứng nhu cầu của các bạn LCT Fashion luôn cải tiến không ngừng và tạo ra nhiều sản phẩm thời trang đẹp mắt hơn.\r\n\r\nÁo thun giấy là một item độc áo của mùa hè. Áo thun mang chất liệu thoải mái, thấm hút mồ hôi, màu sắc rực rỡ, tươi vui của nắng. Đặc biệt là phom dáng áo giấy đơn giản, thoải mái, không rườm rà. \r\n\r\nBạn có thể dễ dàng diện chiếc áo này với quần short, jean, legging. Chiếc áo thun giấy rực rỡ sắc màu này sẽ mang lại cho bạn sự hài lòng tuyệt đối vào mùa hè náy đó!', 'atnu8-8.jpg', 1, 'atnu8-8-8.jpg', 1, 12, NULL),
(73, 'Áo Thun Sọc 0005000002', 89000, 'Áo thun 3 lỗ họa tiết hình lính, cổ tròn là một item khá mạnh mẽ cho các chàng. Bạn có thể khoác ngoài chiếc áo jacket hoặc áo khoác jean bụi bặm, kết hợp cùng chiếc quần jean rách nhẹ ở phần ống, trông bạn sẽ cực kỳ ngầu đấy!', 'attt2-2.jpg', 1, 'attt2-2-2.jpg', 1, 13, 2),
(74, 'Áo Thun 3 Lổ Sọc 0005000001', 89000, 'Áo thun 3 lỗ họa tiết hình lính, cổ tròn là một item khá mạnh mẽ cho các chàng. Bạn có thể khoác ngoài chiếc áo jacket hoặc áo khoác jean bụi bặm, kết hợp cùng chiếc quần jean rách nhẹ ở phần ống, trông bạn sẽ cực kỳ ngầu đấy!', 'attt3-3.jpg', 1, 'attt3-3-3.jpg', 1, 13, 2),
(75, 'Áo Thun 3 Lỗ Sọc Ngang 9610-15', 99000, 'Áo thun 3 lỗ không những phù hợp cho các bạn nam có body chuẩn mà còn phù hợp cho cả những bạn nam thích sự trẻ trung.\r\n\r\nNếu bạn biết chọn thêm những chiếc áo khoác như cardigan, jacket hoặc phối thêm layer như áo sơ mi, áo thun tay dài cổ rộng sẽ trông bạn cực kỳ phong cách và khác biệt đấy nhé. Đừng nghĩ chiếc áo ba lỗ tầm thường, nếu biết chọn lọc bạn sẽ trở nên tinh tế và khác biệt ', 'attt5-5.jpg', 1, 'attt5-5-5.jpg', 1, 13, 2),
(76, 'Áo Thun 3 Lỗ Sọc Ngang 9610-14', 99000, 'Áo thun 3 lỗ không những phù hợp cho các bạn nam có body chuẩn mà còn phù hợp cho cả những bạn nam thích sự trẻ trung.\r\n\r\nNếu bạn biết chọn thêm những chiếc áo khoác như cardigan, jacket hoặc phối thêm layer như áo sơ mi, áo thun tay dài cổ rộng sẽ trông bạn cực kỳ phong cách và khác biệt đấy nhé. Đừng nghĩ chiếc áo ba lỗ tầm thường, nếu biết chọn lọc bạn sẽ trở nên tinh tế và khác biệt ', 'attt6-6.jpg', 1, 'attt6-6-6.jpg', 1, 13, 2),
(77, 'Quần Jean Mystyle 0005191002', 290000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean Mystyle có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean Mystyle này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé ', 'qjnu2-2.jpg', 1, 'qjnu2-2-2.jpg', 1, 27, NULL),
(78, 'Quần Jean MyStyle 0005193002', 290000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean MyStyle có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean MyStyle này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu3-3.jpg', 1, 'qjnu3-3-3.jpg', 1, 27, NULL),
(79, 'Quần Jean Viviene 0005262002', 350000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean Viviene có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean Viviene này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu1-1.jpg', 1, 'qjnu1-1-1.jpg', 1, 27, NULL),
(80, 'Quần Jean Prada 0005150006', 250000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean  có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu4-4.jpg', 1, 'qjnu4-4-4.jpg', 1, 27, NULL),
(81, 'Quần Jean Prada 0005150002', 250000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu5-5.jpg', 1, 'qjnu5-5-5.jpg', 1, 27, NULL),
(82, 'Quần Jean Class 0005004001', 250000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu6-6.jpg', 1, 'qjnu6-6-6.jpg', 1, 27, NULL),
(83, 'Quần Jean DG 1241427002', 350000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu7-7.jpg', 1, 'qjnu7-7-7.jpg', 1, 27, NULL),
(84, 'Quần Jean LK 0003120002', 290000, 'Quần jean là lựa chọn số một cho các bạn trẻ hiện nay. Sức mạnh của chiếc quần jean là có thể phối hợp với tất cả các loại áo và nó phù hợp với mọi dáng người. Tuy nhiên để lựa cho mình một chiếc quần jean vừa thoải mái vừa hợp dáng không phải là chuyện dễ dàng, hãy để LCT giúp bạn làm chuyện đó nhé.\r\n\r\nQuần jean có from dáng cực chuẩn, vài bền bỉ, màu sắc đẹp mắt, mới lạ, đường chỉ may chắc chắn, khéo léo. Chiếc quần jean này chắc chắn sẽ mang lại cho bạn cảm giác hài lòng tuyệt đối.\r\n\r\nNhanh tay, nhanh chân đến các cửa hàng LCT để lựa chọn size phù hợp nhé', 'qjnu8-8.jpg', 1, 'qjnu8-8-8.jpg', 1, 27, NULL),
(85, 'Quần Jean Xunchao 3703-01', 385000, 'Áo sơ mi nam caro là item đang rất hot và phù hợp cho các bạn bạn với mọi lứa tuổi, chính vì thế YaMe luôn cải tiến không ngừng để cho ra những sản phẫm hoàn hảo nhất.\r\n\r\nDòng áo sơ mi caro XunChao là những mẫu mã mới nhất và những là một trong những item bán chạy chất. Mẫu mã đẹp mắt, đường chỉ may siêu đẹp, from dáng cực chuẩn, màu sắc trẻ trung mới lạ, không gây nhàm.\r\n\r\nÁo sơ mi caro XunChao hứa hẹn sẽ làm mưa làm gió trên thị trường thời trang nam. Nhanh tay đến các cửa hàng YaMe để sắm ngay cho mình một chiếc nhé.\r\n', 'qjnam1-1.jpg', 1, 'qjnam1-1-1.jpg', 1, 26, NULL),
(86, 'Quần Jean Yin 2619-01', 385000, 'Quần Jean Bụi có lẽ là item mà các bạn trẻ ai cũng sở hữu ít nhất một chiếc trong tủ quần áo của mình. Ngoài sự tiện lợi và dễ dàng mix cùng những trang phục khác, nó còn mang đến sự trẻ trung và năng động cho người mặc.\r\n\r\nVới chất liệu vải jeans co giãn tốt, màu sắc trẻ trung và thiết kế ống đứng - phom chuẩn, khỏe khoắn, năng động, chiếc quần Jean Bụi này giúp các bạn nam tôn lên vẻ đẹp nam tính và mạnh mẽ. Quần có 2 túi trước, 2 túi sau khá đơn giản, nhưng đặc biệt là màu sắc và kiểu dáng không bao giờ lỗi thời. Một vài chi tiết trang trí nhỏ hay đường chỉ may tỉ mỉ, chắc chắn cũng giúp chiếc quần trong bắt mắt hơn.\r\n\r\nBạn có thể diện chiếc quần Jean Bụi này trong nhiều dịp: đi học, đi làm, đi chơi… Khi kết hợp chiếc quần với các kiểu áo sơ mi và áo thun bỏ ngoài, bạn nam sẽ trở nên thật cá tính.', 'qjnam2-2.jpg', 1, 'qjnam2-2-2.jpg', 1, 26, NULL),
(87, 'Quần Jean Luxury Bụi 0812-01', 450000, 'Quần jean LCT mang lại một làn gió mới cho các bạn bởi thiết kế phù hợp với giới trẻ, chất liệu phù hợp cho mọi hoàn cảnh mà lại còn rất phù hợp với túi tiền.\r\n\r\nQuần jean LCT được cấu thành bởi chất liệu siêu bền, kiểu dáng hiện đại, dây kéo trơn tiên dụng, bạn có thể điều chỉnh kích thước của chiếc quần jean bằng cách xăn nhẹ ông quần, trông bạn sẽ rất trẻ trung và sành điệu đó\r\n\r\nBạn có thể dễ dàng kết hợp chiếc quần jean LCT này với tất cả các loại áo như thun, sơ mi… cùng một đôi giày, vài phụ kiện thích hợp để có một set đồ hoàn hảo.', 'qjnam3-3.jpg', 1, 'qjnam3-3-3.jpg', 1, 26, 1),
(88, 'Quần Jean Luxury Bụi 0780-01', 450000, 'Quần jean LCT mang lại một làn gió mới cho các bạn bởi thiết kế phù hợp với giới trẻ, chất liệu phù hợp cho mọi hoàn cảnh mà lại còn rất phù hợp với túi tiền.\r\n\r\nQuần jean LCT được cấu thành bởi chất liệu siêu bền, kiểu dáng hiện đại, dây kéo trơn tiên dụng, bạn có thể điều chỉnh kích thước của chiếc quần jean bằng cách xăn nhẹ ông quần, trông bạn sẽ rất trẻ trung và sành điệu đó\r\n\r\nBạn có thể dễ dàng kết hợp chiếc quần jean LCT này với tất cả các loại áo như thun, sơ mi… cùng một đôi giày, vài phụ kiện thích hợp để có một set đồ hoàn hảo.', 'qjnam4-4.jpg', 1, 'qjnam4-4-4.jpg', 1, 26, 1),
(89, 'Quần Jean Name Hole 1505-01', 385000, 'Quần jean cùng áo thun là hai vật dụng không  thể thiếu trong tủ đồ của các bạn nam, nó đem đến cho bạn nam sự tự tin cũng như năng động trong những hoạt động hàng ngày.\r\n\r\nQuần jean nam là mẫu quần luôn hợp thời trang với mọi lứa tuổi, đặc biệt là đối với các chàng trai thì phong cách của quần jean luôn tạo nên sự thoải mái và mạnh mẽ. Được may từ chất liệu jean cao cấp, có tính co giãn tốt giúp bền màu quần và không bị biến dạng như co, dão... sau khi giặt.\r\n\r\nBạn có thể kết hợp quần jean nam với các loại áo sơ mi, áo thun… để mặc trong những lúc đi học, đi làm, đi chơi cùng bạn bè…', 'qjnam5-5.jpg', 1, 'qjnam5-5-5.jpg', 1, 26, 1),
(90, 'Quần Jean Levis 2481-03', 258000, 'Quần Jean Levis có lẽ là item mà các bạn trẻ ai cũng sở hữu ít nhất một chiếc trong tủ quần áo của mình. Ngoài sự tiện lợi và dễ dàng mix cùng những trang phục khác, nó còn mang đến sự trẻ trung và năng động cho người mặc.\r\n\r\nVới chất liệu vải jeans co giãn tốt, màu sắc trẻ trung và thiết kế ống đứng - phom chuẩn, khỏe khoắn, năng động, chiếc quần Jean Levis này giúp các bạn nam tôn lên vẻ đẹp nam tính và mạnh mẽ. Quần có 2 túi trước, 2 túi sau khá đơn giản, nhưng đặc biệt là màu sắc và kiểu dáng không bao giờ lỗi thời. Một vài chi tiết trang trí nhỏ hay đường chỉ may tỉ mỉ, chắc chắn cũng giúp chiếc quần trong bắt mắt hơn.\r\n\r\nBạn có thể diện chiếc quần Jean Levis này trong nhiều dịp: đi học, đi làm, đi chơi… Khi kết hợp chiếc quần với các kiểu áo sơ mi và áo thun bỏ ngoài, bạn nam sẽ trở nên thật cá tính.', 'qjnam6-6.jpg', 1, 'qjnam6-6-6.jpg', 1, 26, 1),
(91, 'Quần Jean G-Star 3009-01', 258000, 'Quần Jean G-Star có lẽ là item mà các bạn trẻ ai cũng sở hữu ít nhất một chiếc trong tủ quần áo của mình. Ngoài sự tiện lợi và dễ dàng mix cùng những trang phục khác, nó còn mang đến sự trẻ trung và năng động cho người mặc.\r\n\r\nVới chất liệu vải Jeans G-Star co giãn tốt, màu sắc trẻ trung và thiết kế ống đứng - phom chuẩn, khỏe khoắn, năng động, chiếc quần Jean này giúp các bạn nam tôn lên vẻ đẹp nam tính và mạnh mẽ. Quần có 2 túi trước, 2 túi sau khá đơn giản, nhưng đặc biệt là màu sắc và kiểu dáng không bao giờ lỗi thời. Một vài chi tiết trang trí nhỏ cũng giúp chiếc quần trong bắt mắt hơn.\r\n\r\nBạn có thể diện chiếc quần Jean G-Star này trong nhiều dịp: đi học, đi làm, đi chơi… Khi kết hợp chiếc quần với các kiểu áo sơ mi và áo thun bỏ ngoài, bạn nam sẽ trở nên thật cá tính.', 'qjnam7-7.jpg', 1, 'qjnam7-7-7.jpg', 1, 26, NULL),
(92, 'Quần Jean Hanma 1503-01', 295000, 'Quần jean cùng áo thun là hai vật dụng không  thể thiếu trong tủ đồ của các bạn nam, nó đem đến cho bạn nam sự tự tin cũng như năng động trong những hoạt động hàng ngày.\r\n\r\nQuần jean nam là mẫu quần luôn hợp thời trang với mọi lứa tuổi, đặc biệt là đối với các chàng trai thì phong cách của quần jean luôn tạo nên sự thoải mái và mạnh mẽ. Được may từ chất liệu jean cao cấp, có tính co giãn tốt giúp bền màu quần và không bị biến dạng như co, dão... sau khi giặt.\r\n\r\nBạn có thể kết hợp quần jean nam với các loại áo sơ mi, áo thun… để mặc trong những lúc đi học, đi làm, đi chơi cùng bạn bè…', 'qjnam8-8.jpg', 1, 'qjnam8-8-8.jpg', 1, 26, NULL),
(93, 'Quần Sooc Jean 2466-03', 225000, 'Vào những ngày thời tiết không có nắng, hoặc những cơn mưa bất chợt ùa về, quần Sooc chính là lựa chọn tối ưu cho các anh chàng năng động. Quần Sooc Jeans là item được đa số các bạn nam lựa chọn.\r\n\r\nQuần Sooc Jeans có kiểu dáng ống đứng, phối 2 túi bên hông và 2 túi phía sau thời trang, thiết kế lật lai trẻ trung. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động trong nhiều hoạt động khác nhau mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nVới quần Sooc Jeans sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người. Nhanh tay sở hữu chiếc quần đa năng này để kịp thời sử dụng trong dịp Tết này nhé!\r\n', 'sj1-1.jpg', 1, 'sj1-1-1.jpg', 1, 28, NULL),
(94, 'Quần Sooc Jean 2466-02', 225000, 'Vào những ngày thời tiết không có nắng, hoặc những cơn mưa bất chợt ùa về, quần Sooc chính là lựa chọn tối ưu cho các anh chàng năng động. Quần Sooc Jeans là item được đa số các bạn nam lựa chọn.\r\n\r\nQuần Sooc Jeans có kiểu dáng ống đứng, phối 2 túi bên hông và 2 túi phía sau thời trang, thiết kế lật lai trẻ trung. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động trong nhiều hoạt động khác nhau mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nVới quần Sooc Jeans sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người. Nhanh tay sở hữu chiếc quần đa năng này để kịp thời sử dụng trong dịp Tết này nhé!', 'sj2-2.jpg', 1, 'sj2-2-2.jpg', 1, 28, NULL),
(95, 'Quần Sooc Jean 2466-01', 225000, 'Vào những ngày thời tiết không có nắng, hoặc những cơn mưa bất chợt ùa về, quần Sooc chính là lựa chọn tối ưu cho các anh chàng năng động. Quần Sooc Jeans là item được đa số các bạn nam lựa chọn.\r\n\r\nQuần Sooc Jeans có kiểu dáng ống đứng, phối 2 túi bên hông và 2 túi phía sau thời trang, thiết kế lật lai trẻ trung. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động trong nhiều hoạt động khác nhau mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nVới quần Sooc Jeans sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người. Nhanh tay sở hữu chiếc quần đa năng này để kịp thời sử dụng trong dịp Tết này nhé!', 'sj3-3.jpg', 1, 'sj3-3-3.jpg', 1, 28, NULL),
(96, 'Quần Sooc Jean 2464-02', 225000, 'Vào những ngày thời tiết không có nắng, hoặc những cơn mưa bất chợt ùa về, quần Sooc chính là lựa chọn tối ưu cho các anh chàng năng động. Quần Sooc Jeans là item được đa số các bạn nam lựa chọn.\r\n\r\nQuần Sooc Jeans có kiểu dáng ống đứng, phối 2 túi bên hông và 2 túi phía sau thời trang, thiết kế lật lai trẻ trung. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động trong nhiều hoạt động khác nhau mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nVới quần Sooc Jeans sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người. Nhanh tay sở hữu chiếc quần đa năng này để kịp thời sử dụng trong dịp Tết này nhé!', 'sj4-4.jpg', 1, 'sj4-4-4.jpg', 1, 28, NULL),
(97, 'Quần Sooc Jean 2464-01', 225000, 'Vào những ngày thời tiết không có nắng, hoặc những cơn mưa bất chợt ùa về, quần Sooc chính là lựa chọn tối ưu cho các anh chàng năng động. Quần Sooc Jeans là item được đa số các bạn nam lựa chọn.\r\n\r\nQuần Sooc Jeans có kiểu dáng ống đứng, phối 2 túi bên hông và 2 túi phía sau thời trang, thiết kế lật lai trẻ trung. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động trong nhiều hoạt động khác nhau mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nVới quần Sooc Jeans sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người. Nhanh tay sở hữu chiếc quần đa năng này để kịp thời sử dụng trong dịp Tết này nhé!', 'sj5-5.jpg', 1, 'sj5-5-5.jpg', 1, 28, NULL),
(98, 'Quần Sooc Jean 0189-02', 225000, 'Vào những ngày thời tiết không có nắng, hoặc những cơn mưa bất chợt ùa về, quần Sooc chính là lựa chọn tối ưu cho các anh chàng năng động. Quần Sooc Jeans là item được đa số các bạn nam lựa chọn.\r\n\r\nQuần Sooc Jeans có kiểu dáng ống đứng, phối 2 túi bên hông và 2 túi phía sau thời trang. Lai quần nhấn nhá bằng những tua rua jean lạ mắt. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nVới quần Sooc Jeans sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người. Nhanh tay sở hữu chiếc quần đa năng này nào!', 'sj6-6.jpg', 1, 'sj6-6-6.jpg', 1, 28, NULL),
(99, 'Quần Sooc Jean 0189-01', 225000, 'Quần sooc jean đang trở thành người bạn thân thiết của các bạn nam vào những ngày thời thiết mát mẻ hay những ngày trời mưa râm âm ỉ.\r\n\r\nChiếc quần sooc jean có kiểu dáng và màu sắc hiện đại, họa tiết rách cùng kiểu lật lai trẻ trung tôn thêm phần cá tính. Một vài chấm nhỏ nhấn nhá cũng làm chiếc quần có phần khác biệt. Chất liệu jean sẽ luôn làm bạn hài lòng với độ bền và tiện dụng của mình. Những đường chỉ may cực tỉ mỉ và tinh tế, bạn có thể tha hồ vận động mà không lo lắng về "rủi ro tìm ẩn".\r\n\r\nQuần sooc jean rất dễ phối với các loại áo ở đủ mọi chất liệu. Nhanh tay sở hữu chiếc quần đa năng nào!', 'sj7-7.jpg', 1, 'sj7-7-7.jpg', 1, 28, NULL);
INSERT INTO `sanphams` (`ID`, `TenSanPham`, `GiaBan`, `MoTa`, `HinhAnh`, `TrangThai`, `HinhChiTiet`, `NhaCungCap_id`, `LoaiSanPham_ID`, `ChuDe_id`) VALUES
(100, 'Quần Sooc Jean Returner 1046-02', 225000, 'Với các chàng trai thích phá cách nổi bật thì những mẫu quần Sooc Jeans Returner luôn phù hợp sẽ phát huy được hiệu quả phong cách cá tính của phái mạnh tạo nên một gu thẩm mỹ về thời trang tinh tế và đẹp mắt.\r\n\r\nQuần Sooc Jeans Returner có kiểu dáng ống đứng, lật lai, phối 2 túi bên hông và 2 túi phía sau thời trang. Quần được may từ chất liệu jean dày dặn, thấm mồ hôi tốt, gấu quần lật lai tạo sự mới lạ cùng phong cách trẻ trung. Giúp bạn nam trở nên năng động, khỏe khoắn và thu hút mọi ánh nhìn.\r\n\r\nVới quần Sooc Jeans Returner sẽ giúp bạn nam thật thu hút và mới lạ trong mắt mọi người.', 'sj8-8.jpg', 1, 'sj8-8-8.jpg', 1, 28, NULL),
(101, 'Quần KaKi Thun 9253-04', 230000, 'Đặc điểm chính của quần legging là được thiết kế với chất liệu vải có độ co giãn cao, ôm gọn sát đôi chân, rất tiện dụng, thoải mái, đồng thời cũng rất dễ phối đồ. Chính vì những ưu điểm đó quần legging có sức cuốn  hút vô cùng  mạnh mẽ đối với phái đẹp', 'kknu1-1.jpg', 1, 'kknu1-1-1.jpg', 1, 30, NULL),
(102, 'Quần KaKi Thun 9253-03', 230000, 'Đặc điểm chính của quần legging là được thiết kế với chất liệu vải có độ co giãn cao, ôm gọn sát đôi chân, rất tiện dụng, thoải mái, đồng thời cũng rất dễ phối đồ. Chính vì những ưu điểm đó quần legging có sức cuốn  hút vô cùng  mạnh mẽ đối với phái đẹp', 'kknu2-2.jpg', 1, 'kknu2-2-2.jpg', 1, 30, NULL),
(103, 'Quần KaKi Thun 9253-01', 230000, 'Đặc điểm chính của quần legging là được thiết kế với chất liệu vải có độ co giãn cao, ôm gọn sát đôi chân, rất tiện dụng, thoải mái, đồng thời cũng rất dễ phối đồ. Chính vì những ưu điểm đó quần legging có sức cuốn  hút vô cùng  mạnh mẽ đối với phái đẹp', 'kknu4-4.jpg', 1, 'kknu3-3-3.jpg', 1, 30, NULL),
(104, 'Quần KaKi Thun 9253-02', 230000, 'Đặc điểm chính của quần legging là được thiết kế với chất liệu vải có độ co giãn cao, ôm gọn sát đôi chân, rất tiện dụng, thoải mái, đồng thời cũng rất dễ phối đồ. Chính vì những ưu điểm đó quần legging có sức cuốn  hút vô cùng  mạnh mẽ đối với phái đẹp', 'kknu3-3.jpg', 1, 'kknu4-4-4.jpg', 1, 30, NULL),
(105, 'Áo Khoác Da ShiLo 3416-001', 495000, 'Những ngày chợt nắng, chợt mưa như thế này thì áo khoác là một item không thể nào thiếu. Là một người sành điệu và thời trang, ngoài trừ trang phục chính những phụ kiện kèm theo như áo khoác, túi xách đều phải được chọn lọc kỹ lưỡng đó nha.\r\n\r\nBộ sưu tập mùa hè năm nay LCT đã tung ra sản phẩm áo thun Ma Bư, rất thích hợp để mặc cả lúc nắng lẫn lúc mưa. Áo khoác Ma Bư được chọn lọc và may từ chất liệu cao cấp, chất vải mịn, không bị đổ lông. Dây kéo của áo khoác được thiết kế cao, bảo vệ bạn tránh khỏi cái nằng gay gắt.', 'akdnam1-1.jpg', 1, 'akdnam1-1-1.jpg', 1, 19, NULL),
(106, 'Áo Khoác Da GZ 3129-001', 495000, 'Những ngày chợt nắng, chợt mưa như thế này thì áo khoác là một item không thể nào thiếu. Là một người sành điệu và thời trang, ngoài trừ trang phục chính những phụ kiện kèm theo như áo khoác, túi xách đều phải được chọn lọc kỹ lưỡng đó nha.\r\n\r\nBộ sưu tập mùa hè năm nay LCT đã tung ra sản phẩm áo thun Ma Bư, rất thích hợp để mặc cả lúc nắng lẫn lúc mưa. Áo khoác Ma Bư được chọn lọc và may từ chất liệu cao cấp, chất vải mịn, không bị đổ lông. Dây kéo của áo khoác được thiết kế cao, bảo vệ bạn tránh khỏi cái nằng gay gắt.', 'akdnam2-2.jpg', 1, 'akdnam2-2-2.jpg', 1, 19, NULL),
(107, 'Áo Khoác Da ShiLo 3417-01', 450000, 'Những ngày thời tiết bất thường như thế này thi chiếc áo khoác da sẽ là một item đáng có trong tủ đồ của các bạn nam đó.\r\n\r\nÁo khoác da rất tiện dụng, bạn có thể sử dụng nó như một chiếc áo bảo vệ khỏi nắng, mưa, ngoài ra chiếc áo khoác da còn là một item giúp các bạn nam chúng ta trở nên phong cách hơn, thời trang hơn khi kết hợp cùng một chiếc áo thun hay sơ mi khác.\r\n\r\nÁo khoác da được thiết kế bằng chất liệu cực kỳ bền, không bị tự hủy, phai màu, chính vì thế các bạn cứ tha hồ diện chiếc áo này đi bất cứ nơi đâu nhé', 'akdnam3-3.jpg', 1, 'akdnam3-3-3.jpg', 1, 19, NULL),
(108, 'Áo Khoác Dragon 3662-01', 450000, 'Những ngày thời tiết bất thường như thế này thi chiếc áo khoác da sẽ là một item đáng có trong tủ đồ của các bạn nam đó.\r\n\r\nÁo khoác da rất tiện dụng, bạn có thể sử dụng nó như một chiếc áo bảo vệ khỏi nắng, mưa, ngoài ra chiếc áo khoác da còn là một item giúp các bạn nam chúng ta trở nên phong cách hơn, thời trang hơn khi kết hợp cùng một chiếc áo thun hay sơ mi khác.\r\n\r\nÁo khoác da được thiết kế bằng chất liệu cực kỳ bền, không bị tự hủy, phai màu, chính vì thế các bạn cứ tha hồ diện chiếc áo này đi bất cứ nơi đâu nhé', 'akdnam4-4.jpg', 1, 'akdnam4-4-4.jpg', 1, 19, NULL),
(109, 'Áo Khoác Dragon 3661-01', 450000, 'Những ngày thời tiết bất thường như thế này thi chiếc áo khoác da sẽ là một item đáng có trong tủ đồ của các bạn nam đó.\r\n\r\nÁo khoác da rất tiện dụng, bạn có thể sử dụng nó như một chiếc áo bảo vệ khỏi nắng, mưa, ngoài ra chiếc áo khoác da còn là một item giúp các bạn nam chúng ta trở nên phong cách hơn, thời trang hơn khi kết hợp cùng một chiếc áo thun hay sơ mi khác.\r\n\r\nÁo khoác da được thiết kế bằng chất liệu cực kỳ bền, không bị tự hủy, phai màu, chính vì thế các bạn cứ tha hồ diện chiếc áo này đi bất cứ nơi đâu nhé\r\n', 'akdnam5-5.jpg', 1, 'akdnam5-5-5.jpg', 1, 19, NULL),
(110, 'Áo Khoác Dragon 3634-01', 450000, 'Những ngày thời tiết bất thường như thế này thi chiếc áo khoác da sẽ là một item đáng có trong tủ đồ của các bạn nam đó.\r\n\r\nÁo khoác da rất tiện dụng, bạn có thể sử dụng nó như một chiếc áo bảo vệ khỏi nắng, mưa, ngoài ra chiếc áo khoác da còn là một item giúp các bạn nam chúng ta trở nên phong cách hơn, thời trang hơn khi kết hợp cùng một chiếc áo thun hay sơ mi khác.\r\n\r\nÁo khoác da được thiết kế bằng chất liệu cực kỳ bền, không bị tự hủy, phai màu, chính vì thế các bạn cứ tha hồ diện chiếc áo này đi bất cứ nơi đâu nhé', 'akdnam6-6.jpg', 1, 'akdnam6-6-6.jpg', 1, 19, NULL),
(111, 'Áo Khoác Dragon 3627-01', 450000, 'Những ngày thời tiết bất thường như thế này thi chiếc áo khoác da sẽ là một item đáng có trong tủ đồ của các bạn nam đó.\r\n\r\nÁo khoác da rất tiện dụng, bạn có thể sử dụng nó như một chiếc áo bảo vệ khỏi nắng, mưa, ngoài ra chiếc áo khoác da còn là một item giúp các bạn nam chúng ta trở nên phong cách hơn, thời trang hơn khi kết hợp cùng một chiếc áo thun hay sơ mi khác.\r\n\r\nÁo khoác da được thiết kế bằng chất liệu cực kỳ bền, không bị tự hủy, phai màu, chính vì thế các bạn cứ tha hồ diện chiếc áo này đi bất cứ nơi đâu nhé\r\n', 'akdnam7-7.jpg', 1, 'akdnam7-7-7.jpg', 1, 19, NULL),
(112, 'Áo Khoác Dragon 3625-01', 450000, 'Những ngày thời tiết bất thường như thế này thi chiếc áo khoác da sẽ là một item đáng có trong tủ đồ của các bạn nam đó.\r\n\r\nÁo khoác da rất tiện dụng, bạn có thể sử dụng nó như một chiếc áo bảo vệ khỏi nắng, mưa, ngoài ra chiếc áo khoác da còn là một item giúp các bạn nam chúng ta trở nên phong cách hơn, thời trang hơn khi kết hợp cùng một chiếc áo thun hay sơ mi khác.\r\n\r\nÁo khoác da được thiết kế bằng chất liệu cực kỳ bền, không bị tự hủy, phai màu, chính vì thế các bạn cứ tha hồ diện chiếc áo này đi bất cứ nơi đâu nhé', 'akdnam8-8.jpg', 1, 'akdnam8-8-8.jpg', 1, 19, NULL),
(113, 'Áo Khoác Jean 1774-001', 250000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu1-1.jpg', 1, 'akjnu1-1-1.jpg', 1, 21, NULL),
(114, 'Áo Khoác Ghile 3115-001', 280000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu2-2.jpg', 1, 'akjnu2-2-2.jpg', 1, 21, NULL),
(115, 'Áo Khoác Ghile 3114-001', 280000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu3-3.jpg', 1, 'akjnu3-3-3.jpg', 1, 21, NULL),
(116, 'Áo Khoác Jean 3118-001', 350000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu4-4.jpg', 1, 'akjnu4-4-4.jpg', 1, 21, NULL),
(117, 'Áo Khoác Jean 3117-001', 350000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu5-5.jpg', 1, 'akjnu5-5-5.jpg', 1, 21, NULL),
(118, 'Áo Khoác Jean Kate 2477-001', 350000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu6-6.jpg', 1, 'akjnu6-6-6.jpg', 1, 21, NULL),
(119, 'Áo Khoác Jean Kate 2476-002', 350000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc', 'akjnu7-7.jpg', 1, 'akjnu7-7-7.jpg', 1, 21, NULL),
(120, 'Áo Khoác Jean 0118-01', 290000, 'Áo khoác jean là một sản phẩm thời trang có “phép thần kỳ”, bởi vì cho dù set đồ của bạn có đơn giản, có nhàm chán, chỉ cần khoác chiếc áo khoác jean này vào là bạn sẽ trở nên nổi bật hơn, sành điệu hơn.\r\n\r\nÁo khoác jean ngày càng được cải tiến để phù hợp với nhu cầu của các bạn trẻ. Form dáng chuẩn hơn, kiểu dáng hiện đại hơn. Áo khoác jean được thiết kế trên chất liệu jean và đường may chắc chắn vì thế rất bền và tiện dụng.\r\n\r\nChiếc áo khoác này có thể đồng hành cùng bạn cả lúc nắng lẫn lúc mưa, chẵng những thế đây còn là một điểm nhấn độc đáo cho set đồ của bạn. Chần chờ gì mà không sắm ngay cho mình một chiếc.', 'akjnu8-8.jpg', 1, 'akjnu8-8-8.jpg', 1, 21, NULL),
(121, 'Áo Khoác Jean 2709-01', 350000, 'Áo khoác Jean trong những ngày cuối năm này càng được các bạn nữ ưa thích bởi mẫu mã và màu sắc rất hiện đại và sang trọng nhưng không kém phần bụi bặm.\r\n\r\nÁo khoác Jean luôn thu hút các bạn trẻ bởi thiết kế đơn giản: kiểu dáng cổ bẻ cá tính, hai túi cách điệu với những đường chỉ may ẩn, hàng nút cùng nhiều đường may tỉ mỉ tạo sự nổi bật. Màu sắc mới lạ: mạnh mẽ, cá tính với tông màu xanh đậm; sành điệu, thanh lịch với tông màu xanh nhạt… Điểm xuyết một vài họa tiết rách cho phong cách bụi bặm.\r\n\r\nBạn có thể diện một chiếc quần jean, một chiếc áo thun cá tính và chiếc áo khoác Jean là bạn đã có một set đồ có thể đến bất cứ đâu trong dịp Tết này rồi đấy!', 'akjnu9-9.jpg', 1, 'akjnu9-9-9.jpg', 1, 21, NULL),
(122, 'Áo Khoác Gucci 4803-003', 250000, 'Những ngày chợt nắng, chợt mưa như thế này thì áo khoác là một item không thể nào thiếu. Là một người sành điệu và thời trang, ngoài trừ trang phục chính những phụ kiện kèm theo như áo khoác, túi xách đều phải được chọn lọc kỹ lưỡng đó nha.\r\n\r\nBộ sưu tập mùa hè năm nay LCT đã tung ra sản phẩm áo thun Ma Bư, rất thích hợp để mặc cả lúc nắng lẫn lúc mưa. Áo khoác Ma Bư được chọn lọc và may từ chất liệu cao cấp, chất vải mịn, không bị đổ lông. Dây kéo của áo khoác được thiết kế cao, bảo vệ bạn tránh khỏi cái nằng gay gắt.', 'aknu1-1.jpg', 1, 'aknu1-1-1.jpg', 1, 22, NULL),
(123, 'Áo Khoác 4134-002', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để YaMe gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác Adidas với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!', 'aknu2-2.jpg', 1, 'aknu2-2-2-2.jpg', 1, 22, NULL),
(124, 'Áo Khoác Bóng Chày 8285-001', 215000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để YaMe gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác bóng chày với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!', 'aknu3-3.jpg', 1, 'aknu3-3-3.jpg', 1, 22, NULL),
(125, 'Áo Khoác 4134-004', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để YaMe gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác PuMa với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!', 'aknu4-4.jpg', 1, 'aknu4-4-4.jpg', 1, 22, NULL),
(126, 'Áo Khoác 4136-009', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để YaMe gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác Adidas với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!\r\n', 'aknu5-5.jpg', 1, 'aknu5-5-5.jpg', 1, 22, NULL),
(127, 'Áo Khoác 4136-007', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để YaMe gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác Adidas với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!', 'aknu6-6.jpg', 1, 'aknu6-6-6.jpg', 1, 22, NULL),
(128, 'Áo Khoác 4136-006', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để YaMe gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác Adidas với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!\r\n', 'aknu7-7.jpg', 1, 'aknu7-7-7.jpg', 1, 22, NULL),
(129, 'Áo Khoác 4136-004', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để LCT gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác Adidas với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!', 'aknu8-8.jpg', 1, 'aknu8-8-8.jpg', 1, 22, NULL),
(130, 'Áo Khoác 4136-002', 320000, 'Những ngày nắng nóng âm ỉ như thế này, để chọn một chiếc áo khoác chống lại cái nắng quả là một việc khó khăn. Một chiếc áo khoác đẹp thì lại quá nóng khi mặc đi nắng, một chiếc áo chất liệu mỏng thì lại không hợp thời trang. Hãy để LCT gợi ý cho bạn một số mẫu áo khoác cực kỳ phù hợp với thời trang lẫn thời tiết nha.\r\n\r\nÁo khoác Adidas với nhiều màu sắc tươi trẻ của mùa hè, mang lại vẻ tươi mới trẻ trung cho các bạn nữ. Áo có thiết kế đơn giản, không rườm rà, đặc biệt là chất liệu của chiếc áo này cực kì thoải mái. Áo mặc mát, không gây nóng, vải may bền, không bị tróc hay phân hủy.\r\n\r\nNhìn hình không thể hình dung được hết vẻ đẹp và tốt của chiếc áo này, bạn hãy thử đến các cửa hàng YaMe để tận tay sờ thử, đảm bảo các bạn sẽ “xiêu lòng” đó!', 'aknu9-9.jpg', 1, 'aknu9-9-9.jpg', 1, 22, NULL),
(131, 'Áo Khoác GKY 1628-004', 170000, 'hêm một sản phẩm thời trang rất thích hợp với thời tiết sáng nắng, tối lạnh, đó chính là áo khoác Angel\r\n\r\nÁo khoác GKY được may bởi chất liệu vải thun đầy đặn, thiết kế của áo rất là “sporty”, có thể kết hợp với những kiểu áo khác nhau. Chất liệu vải cao cấp giúp bạn tránh khỏi cái nắng âm ỉ và chống những cơn gió se lạnh.\r\n\r\nNgoài sử dụng chiếc áo GKY như một chiếc áo khoác, bạn còn có thể xem đây là một điểm nhấn đặc sắc cho chiếc áo thun bên trong của bạn. Một chiếc áo mà có nhiều công dụng như vậy thì chần chờ gì mà không sắm ngay cho mình một chiếc.', 'aknu10-10.jpg', 1, 'aknu10-10-10.jpg', 1, 22, NULL),
(132, 'Áo Khoác Beer 1640-003', 185000, 'Những ngày chợt nắng, chợt mưa như thế này thì áo khoác là một item không thể nào thiếu. Là một người sành điệu và thời trang, ngoài trừ trang phục chính những phụ kiện kèm theo như áo khoác, túi xách đều phải được chọn lọc kỹ lưỡng đó nha.\r\n\r\nBộ sưu tập mùa hè năm nay LCT đã tung ra sản phẩm áo thun Ma Bư, rất thích hợp để mặc cả lúc nắng lẫn lúc mưa. Áo khoác Ma Bư được chọn lọc và may từ chất liệu cao cấp, chất vải mịn, không bị đổ lông. Dây kéo của áo khoác được thiết kế cao, bảo vệ bạn tránh khỏi cái nằng gay gắt.', 'aknu11-11.jpg', 1, 'aknu11-11-11.jpg', 1, 22, NULL),
(133, 'Áo Khoác Jean 1638-01', 450000, 'Áo khoác Jean ra đời càng chứng tỏ rằng jean là một chất liệu chưa bao giờ là lỗi thời. Ngoài áo khoác, jean còn có thể tạo ra: quần, túi xách… để có thể kết hợp thành một set đồ hoàn hảo.\r\n\r\nÁo khoác Jean với chất liệu jean phá cách, với màu sắc hiện đại và cá tính hơn. Thiết kế vừa ôm sát giúp bạn nam có thể khoe được một thân hình đẹp. Đường may với màu chỉ nổi chắc chắn, tỉ mỉ tạo điểm nhấn cho chiếc áo thêm phần cá tính và mạnh mẽ.\r\n\r\nNếu bạn là tín đồ của jean, hãy nhanh tay đưa chiếc áo khoác jean này vào bộ sưu tập nhé!', 'akjnam1-1.jpg', 1, 'akjnam1-1-1.jpg', 1, 20, NULL),
(134, 'Áo Khoác Jean 1105-01', 350000, 'Áo khoác Jean ra đời càng chứng tỏ rằng jean là một chất liệu chưa bao giờ là lỗi thời. Ngoài áo khoác, jean còn có thể tạo ra: quần, túi xách… để có thể kết hợp thành một set đồ hoàn hảo.\r\n\r\nÁo khoác Jean với chất liệu jean phá cách, với màu sắc hiện đại và sang trọng hơn. Thiết kế vừa ôm sát giúp bạn nam có thể khoe được một thân hình đẹp. Dây kéo trên vai tạo điểm nhấn cho chiếc áo thêm phần cá tính và mạnh mẽ.\r\n\r\nNếu bạn là tín đồ của jean, hãy nhanh tay đưa chiếc áo khoác jean này vào bộ sưu tập nhé!', 'akjnam2-2.jpg', 1, 'akjnam2-2-2.jpg', 1, 20, NULL),
(135, 'Áo Khoác Jean Classic 1092-01', 285000, 'Chất liệu lại một lần nữa khẳng định vị trí của nó khi “lấn sân” sang lĩnh vực áo khoác. Sự “lấn sân” này giúp áo khoác jean dường như  nhận được điểm tuyệt đối từ các bạn nam.\r\n\r\nÁo Khoác Jean được chăm sóc tỉ mỉ đến từng đường nét, đường chỉ may thật bắt mắt và chắc chắn. Thiết kế vừa ôm sát người, giúp bạn nam khoe những đường nét mạnh mẽ trên cơ thể. Chất liệu jean sẽ mang đến cho bạn nam một phong cách vừa năng động vừa cá tính song cũng không kém phần lịch lãm.\r\n\r\nMột chiếc áo khoác Jean sẽ làm cho những ngày đông sắp đến của bạn bớt cô đơn và lạnh giá đấy! Trust me?', 'akjnam3-3.jpg', 1, 'akjnam3-3-3.jpg', 1, 20, NULL),
(136, 'Áo Khoác Jean ZH 0697-02', 495000, 'Chất liệu lại một lần nữa khẳng định vị trí của nó khi “lấn sân” sang lĩnh vực áo khoác. Sự “lấn sân” này giúp áo khoác jean dường như  nhận được điểm tuyệt đối từ các bạn nam.\r\n\r\nÁo Khoác Jean được chăm sóc tỉ mỉ đến từng đường nét, đường chỉ may thật bắt mắt và chắc chắn. Thiết kế vừa ôm sát người, giúp bạn nam khoe những đường nét mạnh mẽ trên cơ thể. Chất liệu jean sẽ mang đến cho bạn nam một phong cách vừa năng động vừa cá tính song cũng không kém phần lịch lãm.\r\n\r\nMột chiếc áo khoác Jean sẽ làm cho những ngày đông sắp đến của bạn bớt cô đơn và lạnh giá đấy! Trust me?', 'akjnam4-4.jpg', 1, 'akjnam4-4-4.jpg', 1, 20, NULL),
(137, 'Áo Khoác Jean ZH 1187-01', 450000, 'Chất liệu lại một lần nữa khẳng định vị trí của nó khi “lấn sân” sang lĩnh vực áo khoác. Sự “lấn sân” này giúp áo khoác jean dường như  nhận được điểm tuyệt đối từ các bạn nam.\r\n\r\nÁo Khoác Jean được chăm sóc tỉ mỉ đến từng đường nét, đường chỉ may thật bắt mắt và chắc chắn. Thiết kế vừa ôm sát người, giúp bạn nam khoe những đường nét mạnh mẽ trên cơ thể. Chất liệu jean sẽ mang đến cho bạn nam một phong cách vừa năng động vừa cá tính song cũng không kém phần lịch lãm.\r\n\r\nMột chiếc áo khoác Jean sẽ làm cho những ngày đông sắp đến của bạn bớt cô đơn và lạnh giá đấy! Trust me?', 'akjnam5-5.jpg', 1, 'akjnam5-5-5.jpg', 1, 20, NULL),
(138, 'Áo Khoác Jean ZH 1186-02', 450000, 'Chất liệu jean lại một lần nữa khẳng định vị trí của nó khi “lấn sân” sang lĩnh vực áo khoác. Sự “lấn sân” này giúp áo khoác jean dường như  nhận được điểm tuyệt đối từ các bạn nam.\r\n\r\nÁo Khoác Jean được chăm sóc tỉ mỉ đến từng đường nét, đường chỉ may thật bắt mắt và chắc chắn. Thiết kế vừa ôm sát người, giúp bạn nam khoe những đường nét mạnh mẽ trên cơ thể. Chất liệu jean sẽ mang đến cho bạn nam một phong cách vừa năng động vừa cá tính song cũng không kém phần lịch lãm.\r\n\r\nMột chiếc áo khoác Jean sẽ làm cho những ngày đông sắp đến của bạn bớt cô đơn và lạnh giá đấy! Trust me?', 'akjnam6-6.jpg', 1, 'akjnam6-6-6.jpg', 1, 20, NULL),
(139, 'Áo Khoác Jean Bụi 1208-01', 550000, 'Chất liệu lại một lần nữa khẳng định vị trí của nó khi “lấn sân” sang lĩnh vực áo khoác. Sự “lấn sân” này giúp áo khoác jean dường như  nhận được điểm tuyệt đối từ các bạn nam.\r\n\r\nÁo Khoác Jean được chăm sóc tỉ mỉ đến từng đường nét, đường chỉ may thật bắt mắt và chắc chắn. Thiết kế vừa ôm sát người, giúp bạn nam khoe những đường nét mạnh mẽ trên cơ thể. Chất liệu jean sẽ mang đến cho bạn nam một phong cách vừa năng động vừa cá tính song cũng không kém phần lịch lãm.\r\n\r\nMột chiếc áo khoác Jean sẽ làm cho những ngày đông sắp đến của bạn bớt cô đơn và lạnh giá đấy! Trust me?', 'akjnam7-7.jpg', 1, 'akjnam7-7-7.jpg', 1, 20, NULL),
(140, 'Áo Khoác Jean ZH 0696-02', 285000, 'Áo khoác jean mà một sản phẩm đang rất nổi bật của mùa Thu/Đông năm nay. Chất liệu vải jean đầy đặn, bền bỉ, đủ để chống chọi lại nắng, gió của thời tiết khắt nghiệt.\r\n\r\nÁo khoác jean không những chỉ dành cho nữ mà nó còn là một sản phẩm thời trang cực phong cách cho các chàng, đặc biệt là những anh chàng thích phong cách chất, lãng tử.\r\n\r\nYaMe cho tung ra những sản phẩm áo khoác jean được phối lại màu tạo sự mạnh mẽ cho các chàng khi mặc. Áo khoác jean không cầu kỳ về kiểu cách, đơn giản về chất liệu nhưng lại mang đến một làn gió mới cho thời trang Thu/Đông', 'akjnam9-9.jpg', 1, 'akjnam9-9-9.jpg', 1, 20, NULL),
(141, 'Váy Đầm Hoa 0487-01', 280000, 'Những chiếc đầm Flower Body luôn có sức hút đặc biệt với các bạn nữ. Không chỉ làm đa dạng và tạo vẻ mới lạ cho bộ sưu tập của bạn mà còn mang lại vẻ ngoài trẻ trung, quyến rũ và cực cool.\r\n\r\nĐầm Flower Body được sản xuất trên quy trình dệt may hiện đại, tiên tiến nhất hiện nay với sự tinh tế, tỉ mỉ trong từng đường kim mũi chỉ đem đến cho người sở hữu sự hài lòng tuyệt đối. Với chất liệu mềm mại và thoáng mát, cùng họa tiết hoa cực kì độc đáo và bắt mắt. Điểm nhấn đặc biệt ở chỗ, chiếc đầm này hở vai, giúp bạn nữ khoe được phần vai trần thanh mảnh, chiếc cổ trắng ngần cũng như những đường cong gợi cảm trên cở thể.\r\n\r\nVới kiểu dáng trẻ trung nhưng không kém phần sang trọng, chiếc đầm Flower Body này thích hợp cho những buổi party cùng bạn bè và người thân của bạn.', 'dtl2-2.jpg', 1, 'dtl2-2-2.jpg', 1, 23, 3),
(142, 'Váy Đầm Nana 0442-09', 220000, 'Những chiếc đầm Flower Body luôn có sức hút đặc biệt với các bạn nữ. Không chỉ làm đa dạng và tạo vẻ mới lạ cho bộ sưu tập của bạn mà còn mang lại vẻ ngoài trẻ trung, quyến rũ và cực cool.\r\n\r\nĐầm Flower Body được sản xuất trên quy trình dệt may hiện đại, tiên tiến nhất hiện nay với sự tinh tế, tỉ mỉ trong từng đường kim mũi chỉ đem đến cho người sở hữu sự hài lòng tuyệt đối. Với chất liệu mềm mại và thoáng mát, cùng họa tiết hoa cực kì độc đáo và bắt mắt. Điểm nhấn đặc biệt ở chỗ, chiếc đầm này hở vai, giúp bạn nữ khoe được phần vai trần thanh mảnh, chiếc cổ trắng ngần cũng như những đường cong gợi cảm trên cở thể.\r\n\r\nVới kiểu dáng trẻ trung nhưng không kém phần sang trọng, chiếc đầm Flower Body này thích hợp cho những buổi party cùng bạn bè và người thân của bạn.', 'dtl1-1.jpg', 1, 'dtl1-1-1.jpg', 1, 23, 3),
(143, 'Váy Đầm Flower 0355-04', 150000, 'Những chiếc đầm Flower Body luôn có sức hút đặc biệt với các bạn nữ. Không chỉ làm đa dạng và tạo vẻ mới lạ cho bộ sưu tập của bạn mà còn mang lại vẻ ngoài trẻ trung, quyến rũ và cực cool.\r\n\r\nĐầm Flower Body được sản xuất trên quy trình dệt may hiện đại, tiên tiến nhất hiện nay với sự tinh tế, tỉ mỉ trong từng đường kim mũi chỉ đem đến cho người sở hữu sự hài lòng tuyệt đối. Với chất liệu mềm mại và thoáng mát, cùng họa tiết hoa cực kì độc đáo và bắt mắt. Điểm nhấn đặc biệt ở chỗ, chiếc đầm này hở vai, giúp bạn nữ khoe được phần vai trần thanh mảnh, chiếc cổ trắng ngần cũng như những đường cong gợi cảm trên cở thể.\r\n\r\nVới kiểu dáng trẻ trung nhưng không kém phần sang trọng, chiếc đầm Flower Body này thích hợp cho những buổi party cùng bạn bè và người thân của bạn.', 'dtl3-3.jpg', 1, 'dtl3-3-3.jpg', 1, 23, 3),
(144, 'Váy Đầm Caro 0376-01', 340000, 'Các bạn nữ đã sắm đồ mới cho những ngày cuối tuần, những ngày lễ hay những buổi tiệc đêm chưa, nếu chưa thì hãy xem một vài gợi ý của LCT nha.\r\n\r\nĐầm caro là một gợi ý hay cho những cô nàng thích phong cách casual, nữ tính pha chút cá tính. Đầm được may bằng chất chiệu vải mềm, mỏng, rũ. Màu sắc của đầm mới mẻ, nổi bật, điểm nhất đặc biệt duy nhất là phần đuôi xòe phía cuối váy. Điểm nhấn này giúp các bạn tôn lên vòng eo siêu “mi nhon” đó.\r\n\r\nChiếc đầm này ngoài diện đi các bữa tiệc còn có thể mặc đi dạo phố, hay chụp hình nữa đó. Nhanh tay sắm cho mình một chiếc trước khi hết hàng nha', 'dtl4-4.jpg', 1, 'dtl4-4-4.jpg', 1, 23, 3),
(145, 'Váy Đầm Caro 0486-01', 270000, 'Các bạn nữ đã sắm đồ mới cho những ngày cuối tuần, những ngày lễ hay những buổi tiệc đêm chưa, nếu chưa thì hãy xem một vài gợi ý của LCT nha.\r\n\r\nĐầm caro là một gợi ý hay cho những cô nàng thích phong cách casual, nữ tính pha chút cá tính. Đầm được may bằng chất chiệu vải mềm, mỏng, rũ. Màu sắc của đầm mới mẻ, nổi bật, điểm nhất đặc biệt duy nhất là phần rút thắt thay cho dây nịt phần giữa váy. Điểm nhấn này giúp các bạn tôn lên vòng eo siêu “mi nhon” đó.\r\n\r\nChiếc đầm này ngoài diện đi các bữa tiệc còn có thể mặc đi dạo phố, hay chụp hình nữa đó. Nhanh tay sắm cho mình một chiếc trước khi hết hàng nha', 'dtl5-5.jpg', 1, 'dtl5-5-5.jpg', 1, 23, 3),
(146, 'Đầm Topping 2300-01', 160000, 'Hoa văn vui nhộn và dễ thương ngày càng được sử dụng nhiều hơn, từ những chiếc áo thun cartoon năng động đến những chiếc sơ mi topping sành điệu. Và trong sản phẩm này, nó trở thành một phần không thể thiếu, đó chính là chiếc đầm Topping.\r\n\r\nSở hữu những màu sắc nhã nhặn nhưng rất hiện đại và duyên dáng giúp chiếc đầm Topping ghi điểm cao trong mắt các bạn nữ. Chất liệu vải tốt, thấm mồ hôi nhanh cùng đường may tỉ mỉ, kiểu dáng đơn giản giúp cho bạn nữ thoải mái hoạt động trong nhiều giờ mà không cảm thấy bức bí. Đầm nổi bật với rất nhiều hoa văn trang trí với đủ màu sắc, cùng vô số hình ảnh dễ thương và vui nhộn tạo điểm nhấn duy nhất.\r\n\r\nVới chiếc đầm Topping này bạn có thể tự tin dạo bước trên những con phố để mua sắm cùng bạn bè, tán gẫu ở những quán cà phê, hay đơn giản là chụp vài “bô” ảnh để kỉ niệm trong những ngày đầu xuân.', 'dtl6-6.jpg', 1, 'dtl6-6-6.jpg', 1, 23, 3),
(147, 'Đầm Flower Body 1960-01', 150000, 'Những chiếc đầm Flower Body luôn có sức hút đặc biệt với các bạn nữ. Không chỉ làm đa dạng và tạo vẻ mới lạ cho bộ sưu tập của bạn mà còn mang lại vẻ ngoài trẻ trung, quyến rũ và cực cool.\r\n\r\nĐầm Flower Body được sản xuất trên quy trình dệt may hiện đại, tiên tiến nhất hiện nay với sự tinh tế, tỉ mỉ trong từng đường kim mũi chỉ đem đến cho người sở hữu sự hài lòng tuyệt đối. Với chất liệu mềm mại và thoáng mát, cùng họa tiết hoa cực kì độc đáo và bắt mắt. Điểm nhấn đặc biệt ở chỗ, chiếc đầm này hở vai, giúp bạn nữ khoe được phần vai trần thanh mảnh, chiếc cổ trắng ngần cũng như những đường cong gợi cảm trên cở thể.\r\n\r\nVới kiểu dáng trẻ trung nhưng không kém phần sang trọng, chiếc đầm Flower Body này thích hợp cho những buổi party cùng bạn bè và người thân của bạn.', 'dtl7-7.jpg', 1, 'dtl7-7-7.jpg', 1, 23, 3),
(148, 'Đầm Cartoon 1963-02', 250000, 'Không hở hang nhưng vẫn lôi cuốn, không đơn điệu mà lại vẫn nền nã, tinh tế, chiếc đầm Cartoon, cổ bẻ, ngắn tay là sự lựa chọn hoàn hảo cho bạn gái.\r\n\r\nSở hữu những màu sắc nhã nhặn nhưng rất hiện đại và duyên dáng giúp chiếc đầm Cartoon ghi điểm cao trong mắt các bạn nữ. Chất liệu vải tốt, thấm mồ hôi nhanh cùng đường may tỉ mỉ, kiểu dáng đơn giản giúp cho bạn nữ thoải mái hoạt động trong nhiều giờ mà không cảm thấy bức bí. Đầm nổi bật với rất nhiều hoa văn trang trí với đủ màu sắc, cùng vô số hình ảnh dễ thương và vui nhộn tạo điểm nhấn đặc sắc cho chiếc đầm.\r\n\r\nVới chiếc đầm Cartoon này bạn có thể tự tin dạo bước trên những con phố để mua sắm cùng bạn bè, tán gẫu ở những quán cà phê, hay đơn giản là chụp vài “bô” ảnh để kỉ niệm.', 'dtl8-8.jpg', 1, 'dtl8-8-8.jpg', 1, 23, 3),
(149, 'Váy Nhung Hoa 0005249002', 140000, 'Váy nhung hoa mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy chấm bi này cũng có sức ảnh hưởng không kém. Chất liệu của váy chấm bi mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy chấm bi này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v2-2.jpg', 1, 'v2-2-2.jpg', 1, 24, NULL),
(150, 'Váy Nhung Hoa 0005252001', 140000, 'Váy mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy chấm bi này cũng có sức ảnh hưởng không kém. Chất liệu của váy nhung hoa mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy chấm bi này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v3-3.jpg', 1, 'v3-3-3.jpg', 1, 24, NULL),
(151, 'Váy Nhung Hoa 1260182001', 140000, 'Váy mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy chấm bi này cũng có sức ảnh hưởng không kém. Chất liệu của váy nhung mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy chấm bi này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v5-5.jpg', 1, 'v5-5-5.jpg', 1, 24, 4),
(152, 'Váy Chấm Bi 1423-01', 150000, 'Váy chấm bi mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy chấm bi này cũng có sức ảnh hưởng không kém. Chất liệu của váy chấm bi mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy chấm bi này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v6-6.jpg', 1, 'v6-6-6.jpg', 1, 24, 4),
(153, 'Váy Chấm Bi 1423-02', 150000, 'Váy chấm bi mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy chấm bi này cũng có sức ảnh hưởng không kém. Chất liệu của váy chấm bi mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy chấm bi này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v7-7.jpg', 1, 'v7-7-7.jpg', 1, 24, 4),
(154, 'Váy Chấm Bi 1423-03', 150000, 'Váy chấm bi mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy chấm bi này cũng có sức ảnh hưởng không kém. Chất liệu của váy chấm bi mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy chấm bi này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v8-8.jpg', 1, 'v8-8-8.jpg', 1, 24, 4);
INSERT INTO `sanphams` (`ID`, `TenSanPham`, `GiaBan`, `MoTa`, `HinhAnh`, `TrangThai`, `HinhChiTiet`, `NhaCungCap_id`, `LoaiSanPham_ID`, `ChuDe_id`) VALUES
(155, 'Váy Đầm Thun 0481-01', 160000, 'Váy mang lại vẻ nữ tính, dịu dàng cho cô nàng theo đuổi phong cách nữ tính đây!\r\n\r\nKhi các loại chân váy với chất liệu dày đang làm mưa làm gió thì chiếc váy thun này cũng có sức ảnh hưởng không kém. Chất liệu của váy thun mỏng, tạo dáng vẻ thướt tha cho các nàng. Phần đai váy có thun co giản, phù hợp với mọi dáng người, ngoài ra còn tạo độ thoải mái tuyệt đối cho các nàng.\r\n\r\nBạn có thể mặc áo thun, áo sơ mi, croptop với chiếc váy thun này, tuy nhiên đừng chọn áo có nhiều họa tiết quá nhé, vì trông bạn sẽ rất xuề xòa đó', 'v9-9.jpg', 1, 'v9-9-9.jpg', 1, 24, 4),
(156, 'Váy Đầm Yếm 3212-002', 250000, 'Gợi ý một style cho các nàng vào những ngày trời nóng âm ỉ nè! Đó chính là đầm suông. Đầm suông rất dễ mặc, phù hợp với mọi dáng người, đặc biệt là rất thoải mái giúp các nàng linh hoạt hơn.\r\n\r\nĐầm suông với form dáng hơi rộng, chất liệu suông, thiết kế đơn giản sẽ mang lại nét nữ tính cho các bạn. Màu sắc hài hòa, mang hơi hường của mùa hè. Không cần phải tốn thời gian cho việc phối quần áo, chỉ cần một chiếc đầm suông là đã đủ trở nên “khác biệt”.\r\n\r\nThêm thắt một vài phụ kiện như vòng tay, túi xách, đôi giày búp bê, đơn giản thế thôi mà đã có một set đồ cực kỳ đẹp mắt rồi.', 'vdy1-1.jpg', 1, 'vdy1-1-1.jpg', 1, 25, NULL),
(157, 'Váy Đầm Yếm Jumper 1634-002', 205000, 'Quần yếm là một icon rất được lòng các bạn trẻ cá tính. Quần jean từng rất phổ biến từ nhưng năm về trước, sau một thời gian im hơi lặng tiếng, cho đến nay quần yếm lại trở nên rất phổ biến và còn “hot” hơn xưa.\r\n\r\nQuần yếm có rất nhiều chất liệu tạo thành, một trong số đó là quần yếm Jumper. Kiểu dáng và chất liệu của chiếc quần yếm không chê vào đâu được. Bạn chỉ cần nhanh chóng kết hớp với áo thun trơn đơn giản cũng trông bạn rất sang điệu và thời trang.\r\n\r\nNhanh chóng sắm cho mình chiếc quần yếm này để bắt kịp xu hướng thời trang nhé các nàng.', 'vdy2-2.jpg', 1, 'vdy2-2-2.jpg', 1, 25, NULL),
(158, 'Váy Đầm Yếm Jumper 1635-001', 205000, 'Quần yếm là một icon rất được lòng các bạn trẻ cá tính. Quần jean từng rất phổ biến từ nhưng năm về trước, sau một thời gian im hơi lặng tiếng, cho đến nay quần yếm lại trở nên rất phổ biến và còn “hot” hơn xưa.\r\n\r\nQuần yếm có rất nhiều chất liệu tạo thành, một trong số đó là quần yếm Jumper. Kiểu dáng và chất liệu của chiếc quần yếm không chê vào đâu được. Bạn chỉ cần nhanh chóng kết hớp với áo thun trơn đơn giản cũng trông bạn rất sang điệu và thời trang.\r\n\r\nNhanh chóng sắm cho mình chiếc quần yếm này để bắt kịp xu hướng thời trang nhé các nàng.', 'vdy3-3.jpg', 1, 'vdy3-3-3.jpg', 1, 25, NULL),
(159, 'Váy Đầm Yếm Jumper 1633-001', 205000, 'Quần yếm là một icon rất được lòng các bạn trẻ cá tính. Quần jean từng rất phổ biến từ nhưng năm về trước, sau một thời gian im hơi lặng tiếng, cho đến nay quần yếm lại trở nên rất phổ biến và còn “hot” hơn xưa.\r\n\r\nQuần yếm có rất nhiều chất liệu tạo thành, một trong số đó là quần yếm Jumper. Kiểu dáng và chất liệu của chiếc quần yếm không chê vào đâu được. Bạn chỉ cần nhanh chóng kết hớp với áo thun trơn đơn giản cũng trông bạn rất sang điệu và thời trang.\r\n\r\nNhanh chóng sắm cho mình chiếc quần yếm này để bắt kịp xu hướng thời trang nhé các nàng.', 'vdy4-4.jpg', 1, 'vdy4-4-4.jpg', 1, 25, NULL),
(160, 'Yếm Sooc Caro 2318-04', 205000, 'Chiếc đầm Yếm Sooc này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc đầm Yếm Sooc trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc đầm Yếm Sooc cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy5-5.jpg', 1, 'vdy5-5-5.jpg', 1, 25, NULL),
(161, 'Yếm Túi Carô 1048-04', 205000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc yếm túi Carô trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm túi Carô cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy6-6.jpg', 1, 'vdy6-6-6.jpg', 1, 25, NULL),
(162, 'Yếm Nơ 1049-01', 205000, 'Chiếc Yếm Nơ này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc yếm Nơ trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm Nơ cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy7-7.jpg', 1, 'vdy7-7-7.jpg', 1, 25, NULL),
(163, 'Yếm Túi Carô 1048-01', 205000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc yếm túi Carô trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm túi Carô cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy8-8.jpg', 1, 'vdy8-8-8.jpg', 1, 25, NULL),
(164, 'Yếm Thái Lan Chấm Bi 0160-02', 180000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc Yếm Thái Lan Chấm Bi trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm Thái Lan Chấm Bi cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy9-9.jpg', 1, 'vdy9-9-9.jpg', 1, 25, NULL),
(165, 'Yếm Thái Lan Chấm Bi 0161-01', 180000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc Yếm Thái Lan Chấm Bi trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm Thái Lan Chấm Bi cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy10-10.jpg', 1, 'vdy10-10-10.jpg', 1, 25, NULL),
(166, 'Yếm Thái Lan Carô 9896-09', 250000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc Yếm Thái Lan Carô trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm Thái Lan Carô cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy11-11.jpg', 1, 'vdy11-11-11.jpg', 1, 25, NULL),
(167, 'Yếm Thái Lan Carô 9896-07', 250000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc Yếm Thái Lan Carô trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm Thái Lan Carô cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy12-12.jpg', 1, 'vdy12-12-12.jpg', 1, 25, NULL),
(168, 'Yếm Thai Lan Carô 9896-02', 250000, 'Chiếc Yếm túi Carô này sẽ giúp bạn nữ trong thật dịu dàng và nữ tính. Với họa tiết  cổ điển của chiếc yếm sẽ nhanh chóng đưa bạn nữ trở về thời kì thập niên 70, một phong cách đang cực “hot” trên thế giới hiện nay.\r\n\r\nMàu sắc sáng và bố cục phá cách giúp chiếc Yếm Thai Lan Carô trở nên rất phong cách và thời trang. Thiết kế hiện đại kết hợp với họa tiết kiểu truyền thống mang đến nét mới lạ cho chiếc yếm này. Chỉ cần kết hợp áo thun tay dài là bạn có thể tung tăng dạo phố với bạn bè một cách tự tin và thoải mái!\r\n\r\nChỉ một chiếc Yếm Thai Lan Carô cũng có thể đưa bạn quay trở lại quá khứ khám phá những điều mới lạ mà không cần bất cứ một phương tiện đắt tiền khác. Tại sao không thử nhỉ.', 'vdy14-14.jpg', 1, 'vdy14-14-14.jpg', 1, 25, NULL),
(169, 'Nón Cối 3102-002', 180000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi3-3.jpg', 1, 'noncoi3-3-3.jpg', 1, 31, NULL),
(170, 'Nón Cối 3102-004', 180000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi1-1.jpg', 1, 'noncoi1-1-1.jpg', 1, 31, NULL),
(171, 'Nón Cối 3102-003', 180000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi2-2.jpg', 1, 'noncoi2-2-2.jpg', 1, 31, NULL),
(172, 'Nón Cối 3102-001', 180000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi4-4.jpg', 1, 'noncoi4-4-4.jpg', 1, 31, NULL),
(173, 'Nón Cối 9059-008', 140000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi5-5.jpg', 1, 'noncoi5-5-5.jpg', 1, 31, NULL),
(174, 'Nón Cối 9059-003', 140000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi6-6.jpg', 1, 'noncoi6-6-6.jpg', 1, 31, NULL),
(175, 'Nón Cối 9059-37', 140000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi7-7.jpg', 1, 'noncoi7-7-7.jpg', 1, 31, NULL),
(176, 'Nón Cối 9059-36', 140000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi8-8.jpg', 1, 'noncoi8-8-8.jpg', 1, 31, NULL),
(177, 'Nón Cối 9059-35', 140000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi9-9.jpg', 1, 'noncoi9-9-9.jpg', 1, 31, NULL),
(178, 'Nón Cối 9059-34', 140000, 'Những ánh nắng nhẹ của buổi chiều, không quá nóng những cũng làm ảnh hướng đến khuôn mặt của bạn, lúc này một chiếc nón cối nhỏ nhắn sẽ là vị cứu tinh hoàn hảo giành cho bạn.\r\n\r\nNhững chiếc nón cối được thiết kế rất đơn giản và màu sắc là điểm nhấn duy nhất giúp nó để lại ấn tượng cho những người xung quanh. Được làm từ chất liệu vải nỉ cao cấp, độ thông thoáng cao giúp tóc bạn không bị ướt sũng khi đội và mang đến cảm giác thật thoải mái.\r\n\r\nVới chiếc nón cối nhiều màu sắc này cùng một vài trang phục, phụ kiện thích hợp, bạn có thể tự tin xuống phố ăn uống cùng bạn bè và “post” vào bức ảnh thật “cute”.', 'noncoi10-10.jpg', 1, 'noncoi10-10-10.jpg', 1, 31, NULL),
(179, 'Nón Cối 9059-009', 140000, 'Những tín đồ thời trang khó có thể qua qua chiếc nón cối xinh xắn và đa phong cách này. Ngoài ra, nó còn là phụ kiện cực thích hợp để có những shoot ảnh nhẹ nhàng và nữ tính.\r\n\r\nVới thiết kế đơn giản: vành lật mang đến cho các bạn nữ một phong cách trẻ trung và năng động. Chiếc nón cối nhẹ nhàng, thoáng mát, không gây hầm nóng hay ngứa cho da đầu, giúp bạn thoải mái tham gia những hoạt động ngoài trời.\r\n\r\nChiếc nón cối này sẽ là món quá tuyệt vời giành cho các bạn nữ. Các bạn sẽ có những khoảnh khắc đáng nhớ với chiếc nón này đấy', 'noncoi11-11.jpg', 1, 'noncoi11-11-11.jpg', 1, 31, NULL),
(180, 'Nón Cối 9059-32', 140000, 'Những tín đồ thời trang khó có thể qua qua chiếc nón cối xinh xắn và đa phong cách này. Ngoài ra, nó còn là phụ kiện cực thích hợp để có những shoot ảnh nhẹ nhàng và nữ tính.\r\n\r\nVới thiết kế đơn giản: vành lật mang đến cho các bạn nữ một phong cách trẻ trung và năng động. Chiếc nón cối nhẹ nhàng, thoáng mát, không gây hầm nóng hay ngứa cho da đầu, giúp bạn thoải mái tham gia những hoạt động ngoài trời.\r\n\r\nChiếc nón cối này sẽ là món quá tuyệt vời giành cho các bạn nữ. Các bạn sẽ có những khoảnh khắc đáng nhớ với chiếc nón này đấy', 'noncoi12-12.jpg', 1, 'noncoi12-12-12.jpg', 1, 31, NULL),
(181, 'Nón HQ 2817-002', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq1-1.jpg', 1, 'nonhq1-1-1.jpg', 1, 32, NULL),
(182, 'Nón HQ 2830-002', 160000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq2-2.jpg', 1, 'nonhq2-2-2.jpg', 1, 32, NULL),
(183, 'Nón HQ 2830-001', 160000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq3-3.jpg', 1, 'nonhq3-3-3.jpg', 1, 32, NULL),
(184, 'Nón HQ 2821-003', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq4-4.jpg', 1, 'nonhq4-4-4.jpg', 1, 32, NULL),
(185, 'Nón HQ 2818-002', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq5-5.jpg', 1, 'nonhq5-5-5.jpg', 1, 32, NULL),
(186, 'Nón HQ 2818-001', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq6-6.jpg', 1, 'nonhq6-6-6.jpg', 1, 32, NULL),
(187, 'Nón HQ 2817-001', 140000, '', 'nonhq7-7.jpg', 1, 'nonhq7-7-7.jpg', 1, 32, NULL),
(188, 'Nón HQ 2506-001', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq8-8.jpg', 1, 'nonhq8-8-8.jpg', 1, 32, NULL),
(189, 'Nón HQ 2505-001', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq9-9.jpg', 1, 'nonhq9-9-9.jpg', 1, 32, NULL),
(190, 'Nón HQ 2500-001', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq10-10.jpg', 1, 'nonhq10-10-10.jpg', 1, 32, NULL),
(191, 'Nón HQ 1275-003', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq11-11.jpg', 1, 'nonhq11-11-11.jpg', 1, 32, NULL),
(192, 'Nón HQ 1275-002', 140000, 'Nón Hàn Quốc càng ngày càng chiếm một vị trí quan trọng trong mắt những bạn trẻ yêu thích thời trang hàn quốc, và trở thành một phụ kiện không thể thiếu trong những ngày nắng nóng. Đôi khi nó còn là vật ngụy trang vô cùng hữu hiệu nữa chứ.\r\n\r\nVới nhiều kiểu màu sắc và họa tiết khác nhau, nón Hàn Quốc sẽ mang đến cho người đội nhiều chiếc mũ với hàng loạt phong cách khác nhau: nữ tính, năng động, cá tính, bụi bặm... Chiếc mũ với kiểu dáng thanh, gọn nhẹ tôn lên hình ảnh của một bạn trẻ năng động, khỏe khoắn và cá tính nhưng cũng cực phong cách.\r\n\r\nChiếc nón Hàn Quốc này sẽ là phụ kiện thích hợp trong những chuyến đi du lịch, dã ngoại hay đơn giản là dạo phố ngày nắng nhẹ.', 'nonhq12-12.jpg', 1, 'nonhq12-12-12.jpg', 1, 32, NULL),
(193, 'Nón SS 2363-003', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt1-1.jpg', 1, 'nonlt1-1-1.jpg', 1, 33, NULL),
(194, 'Nón StreetStyle 2362-003', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt2-2.jpg', 1, 'nonlt2-2-2.jpg', 1, 33, NULL),
(195, 'Nón StreetStyle 2782-002', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt3-3.jpg', 1, 'nonlt3-3-3.jpg', 1, 33, NULL),
(196, 'Nón StreetStyle 1270-04', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt4-4.jpg', 1, 'nonlt4-4-4.jpg', 1, 33, NULL),
(197, 'Nón StreetStyle 1269-05', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt5-5.jpg', 1, 'nonlt5-5-5.jpg', 1, 33, NULL),
(198, 'Nón StreetStyle 1266-07', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt6-6.jpg', 1, 'nonlt6-6-6.jpg', 1, 33, NULL),
(199, 'Nón StreetStyle 1265-001', 140000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt7-7.jpg', 1, 'nonlt7-7-7.jpg', 1, 33, NULL),
(200, 'Nón StreetStyle 2889-04', 120000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt8-8.jpg', 1, 'nonlt8-8-8.jpg', 1, 33, NULL),
(201, 'Nón StreetStyle 2889-03', 120000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt9-9.jpg', 1, 'nonlt9-9-9.jpg', 1, 33, NULL),
(202, 'Nón StreetStyle 2888-001', 120000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt10-10.jpg', 1, 'nonlt10-10-10.jpg', 1, 33, NULL),
(203, 'Nón StreetStyle 2887-02', 120000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt11-11.jpg', 1, 'nonlt11-11-11.jpg', 1, 33, NULL),
(204, 'Nón StreetStyle 2886-01', 120000, 'Chiếc nón ngoài việc giúp bạn che nắng, tránh bụi nó còn giúp bạn thể hiện được phong cách ăn mặc cũng như tính cách của bạn. Hãy thật nổi bật và sành điệu với chiếc nón lưỡi trai này nhé!\r\n\r\nNón lưỡi trai nổi bật với màu sắc và họa tiết trang trí bắt mắt. Dáng mũ được thiết kế đẹp mắt. Sản xuất từ chất liệu cao cấp với kĩ thuật tiên tiến, nên không bị sờn và phai màu khi sử dụng nhiều lần. Những đường chỉ may cực  tỉ mỉ và chi tiết, mang đến một sản phẩm cực ổn về chất lượng. Màu sắc phối với nhau rất tinh tế và đẹp mắt.\r\n\r\nNón lưỡi trai có thể là một món quà ý nghĩa cho những người bạn yêu quý. Hãy mua và sử dụng cùng với họ nhé!', 'nonlt12-12.jpg', 1, 'nonlt12-12-12.jpg', 1, 33, NULL),
(205, 'Nón SnapBack Vans 1078-02', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap1-1.jpg', 1, 'nonsnap1-1-1.jpg', 1, 34, NULL),
(206, 'Nón SnapBack Vans 1078-01', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap2-2.jpg', 1, 'nonsnap2-2-2.jpg', 1, 34, NULL);
INSERT INTO `sanphams` (`ID`, `TenSanPham`, `GiaBan`, `MoTa`, `HinhAnh`, `TrangThai`, `HinhChiTiet`, `NhaCungCap_id`, `LoaiSanPham_ID`, `ChuDe_id`) VALUES
(207, 'Nón SnapBack Sao 1075-04', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap3-3.jpg', 1, 'nonsnap3-3-3.jpg', 1, 34, NULL),
(208, 'Nón SnapBack Sao 1075-03', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap4-4.jpg', 1, 'nonsnap4-4-4.jpg', 1, 34, NULL),
(209, 'Nón SnapBack Sao 1075-01', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap5-5.jpg', 1, 'nonsnap5-5-5.jpg', 1, 34, NULL),
(210, 'Nón SnapBack Rabe Rand 1083-04', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap6-6.jpg', 1, 'nonsnap6-6-6.jpg', 1, 34, NULL),
(211, 'Nón SnapBack Rabe Rand 1083-03', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap7-7.jpg', 1, 'nonsnap7-7-7.jpg', 1, 34, NULL),
(212, 'Nón SnapBack NY 1076-01', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap8-8.jpg', 1, 'nonsnap8-8-8.jpg', 1, 34, NULL),
(213, 'Nón SnapBack NY 1076-02', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap9-9.jpg', 1, 'nonsnap9-9-9.jpg', 1, 34, NULL),
(214, 'Nón SnapBack New York 1081-02', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap10-10.jpg', 1, 'nonsnap10-10-10.jpg', 1, 34, NULL),
(215, 'Nón SnapBack DG sao 1077-04', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap11-11.jpg', 1, 'nonsnap11-11-11.jpg', 1, 34, NULL),
(216, 'Nón SnapBack DG sao 1077-02', 129000, 'Được xem là item “hot” nhất trong mùa hè 2013, chiếc nón SnapBack với kiểu dáng cải tiến cùng đủ loại hoa văn trang trí, có thể phù hợp với tất cả mọi người, dù bạn là ai, dù bạn chọn cho mình phong cách gì.\r\n\r\nChiếc nón SnapBack này được cải tiến từ chiếc mũ bóng chày, phần cải tiến gồm có: phần lưỡi che nắng ở phía trước được thiết kế với một mặt phẳng chứ không có độ cong như những chiếc mũ lưỡi trai truyền thống và hoa văn trang trí với đủ loại: từ những từ ngữ ngắn gọn, đơn giản đến những họa tiết cầu kì và bắt mắt. Ngoài ra, bạn còn có thể trang trí phần bên dưới lưỡi che nắng nữa đấy!\r\n\r\nNếu bạn là một tín đồ thời trang thì không có lí do gì bạn có thể bỏ qua chiếc nón SnapBack – một item ưa thích của những bạn có phong cách năng động, trẻ trung nhưng cũng đầy cá tính.', 'nonsnap12-12.jpg', 1, 'nonsnap12-12-12.jpg', 1, 34, NULL),
(217, 'Caravat 0594-03', 49000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv1-1.jpg', 1, 'crv1-1-1.jpg', 1, 35, NULL),
(218, 'Caravat 0594-01', 49000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv2-2.jpg', 1, 'crv2-2-2.jpg', 1, 35, NULL),
(219, 'Caravat 0594-02', 49000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv3-3.jpg', 1, 'crv3-3-3.jpg', 1, 35, NULL),
(220, 'Caravat 0593-01', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv4-4.jpg', 1, 'crv4-4-4.jpg', 1, 35, NULL),
(221, 'Caravat 0593-02', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv5-5.jpg', 1, 'crv5-5-5.jpg', 1, 35, NULL),
(222, 'Caravat 0593-03', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv6-6.jpg', 1, 'crv6-6-6.jpg', 1, 35, NULL),
(223, 'Caravat 0593-04', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv7-7.jpg', 1, 'crv7-7-7.jpg', 1, 35, NULL),
(224, 'Caravat 0593-05', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv8-8.jpg', 1, 'crv8-8-8.jpg', 1, 35, NULL),
(225, 'Caravat 0595-01', 69000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv9-9.jpg', 1, 'crv9-9-9.jpg', 1, 35, NULL),
(226, 'Caravat 0593-06', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv10-10.jpg', 1, 'crv10-10-10.jpg', 1, 35, NULL),
(227, 'Caravat 0593-07', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv11-11.jpg', 1, 'crv11-11-11.jpg', 1, 35, NULL),
(228, 'Caravat 0593-08', 39000, 'Caravat là phụ kiện quan trọng giúp các bạn nam thể hiện phong cách thời trang và lịch lãm của mình ở nơi làm việc.\r\n\r\nĐược may từ những chất liệu cao cấp nhất vì thế bạn có thể yên tâm về chất lượng. Caravat rất đa dạng về màu sắc cũng như kiểu dáng, bạn có thể tha hồ lựa chọn một vài cái phù hợp với phong cách của bạn.\r\n\r\nNếu bạn là chàng trai của công sở, chắc hẳn chiếc caravat này sẽ là item thường ngày của bạn. Hãy làm mới mình mỗi ngày nhé!', 'crv12-12.jpg', 1, 'crv12-12-12.jpg', 1, 35, NULL),
(229, 'Dây Nịt Da 9983-01', 295000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam1-1.jpg', 1, 'dnnam1-1-1.jpg', 1, 36, NULL),
(230, 'Dây Nịt Chữ H 9983-02', 295000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam2-2.jpg', 1, 'dnnam2-2-2.jpg', 1, 36, NULL),
(231, 'Dây Nịt Ferragamo 9983-03', 295000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam3-3.jpg', 1, 'dnnam3-3-3.jpg', 1, 36, NULL),
(232, 'Dây Nịt Calvin Klein 9983-04', 295000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam4-4.jpg', 1, 'dnnam4-4-4.jpg', 1, 36, NULL),
(233, 'Dây Nịt 8340-01', 150000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam5-5.jpg', 1, 'dnnam5-5-5.jpg', 1, 36, NULL),
(234, 'Dây Nịt 8340-02', 150000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam6-6.jpg', 1, 'dnnam6-6-6.jpg', 1, 36, NULL),
(235, 'Dây Nịt 8340-03', 150000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam7-7.jpg', 1, 'dnnam7-7-7.jpg', 1, 36, NULL),
(236, 'Dây Nịt 8340-04', 150000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam8-8.jpg', 1, 'dnnam8-8-8.jpg', 1, 36, NULL),
(237, 'Dây Nịt 8340-05', 150000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnam9-9.jpg', 1, 'dnnam9-9-9.jpg', 1, 36, NULL),
(238, 'Dây Nịt Chanel 9752-01', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu1-1.jpg', 1, 'dnnu1-1-1.jpg', 1, 37, NULL),
(239, 'Dây Nịt Classic Đen 9752-02', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu2-2.jpg', 1, 'dnnu2-2-2.jpg', 1, 37, NULL),
(240, 'Dây Nịt Da LV 9752-03', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu3-3.jpg', 1, 'dnnu3-3-3.jpg', 1, 37, NULL),
(241, 'Dây Nịt Chữ H 9752-04', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu4-4.jpg', 1, 'dnnu4-4-4.jpg', 1, 37, NULL),
(242, 'Dây Nịt Da GG 9752-05', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu5-5.jpg', 1, 'dnnu5-5-5.jpg', 1, 37, NULL),
(243, 'Dây Nịt Ferragamo 9752-06', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu6-6.jpg', 1, 'dnnu6-6-6.jpg', 1, 37, NULL),
(244, 'Dây Nịt Classic Trắng 9752-07', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu7-7.jpg', 1, 'dnnu7-7-7.jpg', 1, 37, NULL),
(245, 'Dây Nịt Classic Đỏ 9752-08', 75000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nữ. Và nó cũng là phụ kiện giúp trang phục của bạn nữ sành điệu và thu hút hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Cùng với đó là nó sở hữu rất nhiều màu sắc trẻ trung và tươi sáng, bạn nữ có thể tha hồ chọn cho mình một chiếc để phù hợp với trang phục của mình. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu8-8.jpg', 1, 'dnnu8-8-8.jpg', 1, 37, NULL),
(246, 'Dây Nịt 0592-01', 120000, 'Dây nịt (thắt lưng) là một trong những phụ kiện không thể thiếu trong trang phục công sở của các bạn nam. Và nó cũng là phụ kiện giúp trang phục của bạn nam thu hút, lịch lãm và hợp thời trang hơn.\r\n\r\nQuy trình sản xuất được thực hiện bởi những người thợ thủ công tay nghề cao mang đến một sản phẩm với đường may chắc chắn, tỉ mỉ và cẩn thận từng chi tiết. Dây nịt được làm từ da bò cao cấp, càng sử dụng càng mềm, sở hữu nhiều khóa đẹp, lạ và cực độc đáo. Chất liệu da bền bỉ, da đẹp giữ nguyên được độ bóng mượt của lớp da nguyên thủy khi sử dụng nhiều lần. Thiết kế hiện đại giúp thể hiện phong cách sang trọng và lịch lãm của các anh chàng. \r\n\r\nChiếc dây nịt này sẽ là quà tặng ý nghĩa cho người thân và bạn bè. Nó sẽ trở thành người bạn thân thiết của bạn lúc nào không hay đấy!', 'dnnu9-9.jpg', 1, 'dnnu9-9-9.jpg', 1, 37, NULL),
(247, 'Kính Mát Hàn Quốc 7212-01', 65000, 'Kính không chỉ đáp ứng nhu cầu  cần thiết bảo vệ thị lực mà còn giúp bảo vệ đôi mắt của bạn tránh khỏi những tác nhân bên ngoài gây ra. Kính mát Hàn Quốc với gọng kính chất lượng mang đến vẻ đẹp trẻ trung và sành điệu cho người đeo.\r\n\r\nSong song đó, Kính mát Hàn Quốc còn là một phụ kiện không thể thiếu trong túi của bạn nhất là trong điều kiện thời tiết nắng nóng, khói, bụi giúp chống lại tác động của tia cực tím. Một điều đặc biệt bạn nên biết, chiếc kính mát này còn có tác dụng che bớt những khuyết điểm và tôn lên vẻ đẹp của khuôn mặt. Kiểu dáng kính hiện đại, sang trọng sẽ là món quà tuyệt vời cho người thân, bạn bè của bạn.\r\n\r\nNhững lần đi du lịch có lẽ chiếc kính mát Hàn Quốc này sẽ là người bạn đồng hành thân thiết nhất của bạn.', 'gc1-1.jpg', 1, 'gc1-1-1.jpg', 1, 39, NULL),
(248, 'Kính Nobita 5213-01', 45000, 'Kính Nobita đang là phụ kiện ưa chuộng của các bạn trẻ bởi đặc tính mang đến sự trẻ trung và giúp họ nổi bật hơn trong mắt người đối diện.\r\n\r\nKính Nobita với gọng kính tròn đặc trưng, thích hợp với tất cả mọi người. Bên cạnh đó, kính còn bảo vệ mắt của bạn tránh bụi, khói, vật lạ. Ngoài ra,nó còn góp phần giúp bạn tạo được phong cách riêng: thanh lịch và sành điệu.\r\n\r\nMắt kính Nobita có lẽ sẽ là phụ kiện thích hợp cho những shoot hình với concept  thời học sinh.', 'gcn2-2.jpg', 1, 'gcn2-2-2.jpg', 1, 39, NULL),
(249, 'Kính Nobita 5213-02', 45000, 'Kính Nobita đang là phụ kiện ưa chuộng của các bạn trẻ bởi đặc tính mang đến sự trẻ trung và giúp họ nổi bật hơn trong mắt người đối diện.\r\n\r\nKính Nobita với gọng kính tròn đặc trưng, thích hợp với tất cả mọi người. Bên cạnh đó, kính còn bảo vệ mắt của bạn tránh bụi, khói, vật lạ. Ngoài ra,nó còn góp phần giúp bạn tạo được phong cách riêng: thanh lịch và sành điệu.\r\n\r\nMắt kính Nobita có lẽ sẽ là phụ kiện thích hợp cho những shoot hình với concept  thời học sinh.', 'gcn3-3.jpg', 1, 'gcn3-3-3.jpg', 1, 39, NULL),
(250, 'Kính Nobita 5213-03', 45000, 'Kính Nobita đang là phụ kiện ưa chuộng của các bạn trẻ bởi đặc tính mang đến sự trẻ trung và giúp họ nổi bật hơn trong mắt người đối diện.\r\n\r\nKính Nobita với gọng kính tròn đặc trưng, thích hợp với tất cả mọi người. Bên cạnh đó, kính còn bảo vệ mắt của bạn tránh bụi, khói, vật lạ. Ngoài ra,nó còn góp phần giúp bạn tạo được phong cách riêng: thanh lịch và sành điệu.\r\n\r\nMắt kính Nobita có lẽ sẽ là phụ kiện thích hợp cho những shoot hình với concept  thời học sinh.', 'gcn4-4.jpg', 1, 'gcn4-4-4.jpg', 1, 39, NULL),
(251, 'Kính Nobita 5213-04', 45000, 'Kính Nobita đang là phụ kiện ưa chuộng của các bạn trẻ bởi đặc tính mang đến sự trẻ trung và giúp họ nổi bật hơn trong mắt người đối diện.\r\n\r\nKính Nobita với gọng kính tròn đặc trưng, thích hợp với tất cả mọi người. Bên cạnh đó, kính còn bảo vệ mắt của bạn tránh bụi, khói, vật lạ. Ngoài ra,nó còn góp phần giúp bạn tạo được phong cách riêng: thanh lịch và sành điệu.\r\n\r\nMắt kính Nobita có lẽ sẽ là phụ kiện thích hợp cho những shoot hình với concept  thời học sinh.', 'gcn5-5.jpg', 1, 'gcn5-5-5.jpg', 1, 39, NULL),
(252, 'Kính Nobita 5213-05', 45000, 'Kính Nobita đang là phụ kiện ưa chuộng của các bạn trẻ bởi đặc tính mang đến sự trẻ trung và giúp họ nổi bật hơn trong mắt người đối diện.\r\n\r\nKính Nobita với gọng kính tròn đặc trưng, thích hợp với tất cả mọi người. Bên cạnh đó, kính còn bảo vệ mắt của bạn tránh bụi, khói, vật lạ. Ngoài ra,nó còn góp phần giúp bạn tạo được phong cách riêng: thanh lịch và sành điệu.\r\n\r\nMắt kính Nobita có lẽ sẽ là phụ kiện thích hợp cho những shoot hình với concept  thời học sinh.', 'gcn6-6.jpg', 1, 'gcn6-6-6.jpg', 1, 39, NULL),
(253, 'Kính Hàn Quốc 7212-02', 65000, 'Kính không chỉ đáp ứng nhu cầu  cần thiết bảo vệ thị lực mà còn giúp bảo vệ đôi mắt của bạn tránh khỏi những tác nhân bên ngoài gây ra. Kính mát Hàn Quốc với gọng kính chất lượng mang đến vẻ đẹp trẻ trung và sành điệu cho người đeo.\r\n\r\nSong song đó, Kính mát Hàn Quốc còn là một phụ kiện không thể thiếu trong túi của bạn nhất là trong điều kiện thời tiết nắng nóng, khói, bụi giúp chống lại tác động của tia cực tím. Một điều đặc biệt bạn nên biết, chiếc kính mát này còn có tác dụng che bớt những khuyết điểm và tôn lên vẻ đẹp của khuôn mặt. Kiểu dáng kính hiện đại, sang trọng sẽ là món quà tuyệt vời cho người thân, bạn bè của bạn.\r\n\r\nNhững lần đi du lịch có lẽ chiếc kính mát Hàn Quốc này sẽ là người bạn đồng hành thân thiết nhất của bạn.', 'gcn7-7.jpg', 1, 'gcn7-7-7.jpg', 1, 39, NULL),
(254, 'Kính Hàn Quốc 7212-03', 65000, 'Kính không chỉ đáp ứng nhu cầu  cần thiết bảo vệ thị lực mà còn giúp bảo vệ đôi mắt của bạn tránh khỏi những tác nhân bên ngoài gây ra. Kính mát Hàn Quốc với gọng kính chất lượng mang đến vẻ đẹp trẻ trung và sành điệu cho người đeo.\r\n\r\nSong song đó, Kính mát Hàn Quốc còn là một phụ kiện không thể thiếu trong túi của bạn nhất là trong điều kiện thời tiết nắng nóng, khói, bụi giúp chống lại tác động của tia cực tím. Một điều đặc biệt bạn nên biết, chiếc kính mát này còn có tác dụng che bớt những khuyết điểm và tôn lên vẻ đẹp của khuôn mặt. Kiểu dáng kính hiện đại, sang trọng sẽ là món quà tuyệt vời cho người thân, bạn bè của bạn.\r\n\r\nNhững lần đi du lịch có lẽ chiếc kính mát Hàn Quốc này sẽ là người bạn đồng hành thân thiết nhất của bạn.', 'gcn8-8.jpg', 1, 'gcn8-8-8.jpg', 1, 39, NULL),
(255, 'Kính Hàn Quốc 7212-04', 65000, 'Kính không chỉ đáp ứng nhu cầu  cần thiết bảo vệ thị lực mà còn giúp bảo vệ đôi mắt của bạn tránh khỏi những tác nhân bên ngoài gây ra. Kính mát Hàn Quốc với gọng kính chất lượng mang đến vẻ đẹp trẻ trung và sành điệu cho người đeo.\r\n\r\nSong song đó, Kính mát Hàn Quốc còn là một phụ kiện không thể thiếu trong túi của bạn nhất là trong điều kiện thời tiết nắng nóng, khói, bụi giúp chống lại tác động của tia cực tím. Một điều đặc biệt bạn nên biết, chiếc kính mát này còn có tác dụng che bớt những khuyết điểm và tôn lên vẻ đẹp của khuôn mặt. Kiểu dáng kính hiện đại, sang trọng sẽ là món quà tuyệt vời cho người thân, bạn bè của bạn.\r\n\r\nNhững lần đi du lịch có lẽ chiếc kính mát Hàn Quốc này sẽ là người bạn đồng hành thân thiết nhất của bạn.', 'gcn9-9.jpg', 1, 'gcn9-9-9.jpg', 1, 39, NULL);
INSERT INTO `sanphams` (`ID`, `TenSanPham`, `GiaBan`, `MoTa`, `HinhAnh`, `TrangThai`, `HinhChiTiet`, `NhaCungCap_id`, `LoaiSanPham_ID`, `ChuDe_id`) VALUES
(256, 'Ví Teddy 4841-001', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu1-1.jpg', 1, 'vdnu1-1-1.jpg', 1, 41, NULL),
(257, 'Ví Teddy 4840-001', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu2-2.jpg', 1, 'vdnu2-2-2.jpg', 1, 41, NULL),
(258, 'Ví Teddy 4850-001', 120000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu3-3.jpg', 1, 'vdnu3-3-3.jpg', 1, 41, NULL),
(259, 'Ví Teddy 4849-001', 120000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu4-4.jpg', 1, 'vdnu4-4-4.jpg', 1, 41, NULL),
(260, 'Ví Teddy 4839-001', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu5-5.jpg', 1, 'vdnu5-5-5.jpg', 1, 41, NULL),
(261, 'Ví Teddy 4846-001', 120000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu6-6.jpg', 1, 'vdnu6-6-6.jpg', 1, 41, NULL),
(262, 'Ví Teddy 3180-001', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu7-7.jpg', 1, 'vdnu7-7-7.jpg', 1, 41, NULL),
(263, 'Ví Teddy 3166-001', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu8-8.jpg', 1, 'vdnu8-8-8.jpg', 1, 41, NULL),
(264, 'Ví Teddy 3182-001', 120000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu9-9.jpg', 1, 'vdnu9-9-9.jpg', 1, 41, NULL),
(265, 'Ví Teddy 0673-01', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu10-10.jpg', 1, 'vdnu10-10-10.jpg', 1, 41, NULL),
(266, 'Ví Teddy 0673-02', 140000, 'Ví Teddy là phụ kiện không thể thiếu trong túi của bất kì cô gái nào. Ngoài việc giữ tiền bạc, giấy tờ quan trọng  nó còn là người bạn thân thiết giúp các bạn nữ tôn lên nét trẻ trung và thời thượng.\r\n\r\nVí Teddy được thiết kế tỉ mỉ và trau chuốt từng bộ phận, các bạn có thể yên tâm về chất lượng của nó. Kiểu dáng tinh tế, sang trọng cùng đường chỉ may chắc chắn sẽ làm item khiến các cô gái “đứng ngồi không yên” ngay khi nhìn thấy.\r\n\r\nNhanh tay sở hữu cho mình một chiếc ví Teddy đa màu sắc và đa chức năng này nào!', 'vdnu11-11.jpg', 1, 'vdnu11-11-11.jpg', 1, 41, NULL),
(267, 'Ví Da Kaito Kid 9082-01', 195000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam1-1.jpg', 1, 'vinam1-1-1.jpg', 1, 40, NULL),
(268, 'Ví Da Kaito Kid 9082-02', 195000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam2-2.jpg', 1, 'vinam2-2-2.jpg', 1, 40, NULL),
(269, 'Ví Da Kaito Kid 9082-03', 195000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam3-3.jpg', 1, 'vinam3-3-3.jpg', 1, 40, NULL),
(270, 'Ví Da Kaito Kid 9082-04', 195000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam4-4.jpg', 1, 'vinam4-4-4.jpg', 1, 40, NULL),
(271, 'Ví Da Kaito Kid 9082-05', 195000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam5-5.jpg', 1, 'vinam5-5-5.jpg', 1, 40, NULL),
(272, 'Ví Da Ferragamo 5210-01', 450000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam6-6.jpg', 1, 'vinam6-6-6.jpg', 1, 40, NULL),
(273, 'Ví Da Armani 5210-02', 450000, 'Chiếc ví – phụ kiện rất quan trọng không chỉ đối với các bạn nữ mà còn cả những bạn nam. Chiếc ví da không chỉ giúp giữ tiền bạc, namecard, giấy tờ… mà còn thể hiện phong cách của bạn.\r\n\r\nĐược làm từ chất liệu da cao cấp, cùng đường chỉ may chắc chắn và tỉ mỉ mang đến sự sang trọng cho người sở hữu. Ví có nhiều ngăn sắp xếp hợp lý chắc chắn sẽ làm các ban nam hài lòng ngay từ cái nhìn đầu tiên.\r\n\r\nVí da có nhiều mẫu mã cũng như màu sắc khác nhau, các bạn nam có thể lựa chọn chiếc vì thích hợp với phong cách của mình.', 'vinam7-7.jpg', 1, 'vinam7-7-7.jpg', 1, 40, NULL),
(274, 'abcdef', 500000, '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n', 'akdnam1-1.jpg', 1, 'akdnam1-1-1.jpg', 3, 19, NULL),
(275, 'abc', 165000, '<p>dsgfdh hjhgj fhgvjh fgjhgj bvn</p>\r\n', 'akdnam1-1.jpg', 0, 'akdnam1-1-1.jpg', 1, 19, NULL),
(276, 'áo sơ mi asdasdasd', 125000, '<p>aaaaaaaaaassssssssssssssssssssssdddddddddddddddddddddddddddddaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n', 'asmndenim5-5.jpg', 1, 'asmndenim5-5-5.jpg', 1, 17, NULL),
(278, 'Áo khoác da 1203-01', 195000, '', 'akdnam1-1.jpg', 1, 'akdnam1-1-1.jpg', 1, 19, NULL),
(280, 'Áo thun', 85000, '<p>&Aacute;o thun<br />\r\n&nbsp;</p>\r\n', 'atct7-7.jpg', 1, 'akdnam1-1-1.jpg', 1, 9, 1),
(281, 'Áo thun', 850005646, '<p>&Aacute;o thun<br />\r\n&nbsp;</p>\r\n', 'atct7-7.jpg', 1, 'akdnam1-1-1.jpg', 1, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE IF NOT EXISTS `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenSize` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `TenSize`) VALUES
(1, 'SizeM'),
(2, 'SizeL'),
(3, 'SizeXL'),
(4, 'Size27'),
(5, 'Size28'),
(6, 'Size29'),
(7, 'Size30'),
(8, 'Size31'),
(9, 'Size32'),
(10, 'Size33'),
(11, 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `MaSlide` int(11) NOT NULL AUTO_INCREMENT,
  `TenHinh` text NOT NULL,
  `TitleSlide` text,
  `ContentSlide` text,
  `TrangThai` int(11) NOT NULL COMMENT '0 : chưa bỏ     1 : Đã bỏ',
  PRIMARY KEY (`MaSlide`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`MaSlide`, `TenHinh`, `TitleSlide`, `ContentSlide`, `TrangThai`) VALUES
(1, 'banner1.jpg', 'WELCOME TO LCT', '65 Huỳnh Thúc Kháng', 0),
(2, 'banner2.jpg', 'NHIỀU MẪU MÃ HOT', 'Luôn cập nhật sớm nhất các mẫu hàng đẹp', 0),
(3, 'banner3.jpg', 'CÁC BẠN LÀ TẤT CẢ ĐỐI VỚI CHÚNG TÔI', 'Luôn chăm sóc khách hàng chu đáo, bạn sẽ thấy hài lòng', 0),
(4, 'banner4.jpg', 'LUÔN CÓ NHỮNG THỨ BẠN CẦN', 'Chúng tôi lúc nào cũng có những bộ sưu tập của cả 4 mùa quanh năm', 0),
(5, 'banner5.jpg', 'GIÁ CẢ PHẢI CHĂNG', 'Tiền nào của đó, có những món đồ đẹp và chất liệu tốt, bạn sẽ không thấy hối tiếc', 0),
(6, 'banner6.jpg', 'THỜI TRANG LCT', 'THỂ HIỆN PHONG CÁCH CỦA BẠN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoans`
--

CREATE TABLE IF NOT EXISTS `taikhoans` (
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `CMND` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `LoaiTaiKhoan` tinyint(4) NOT NULL,
  `DiemTichLuy` bigint(20) unsigned NOT NULL,
  `CauHoiBiMat_id` int(10) unsigned NOT NULL,
  `CauTraLoi` varchar(255) NOT NULL,
  `TinhTrang` int(10) unsigned NOT NULL COMMENT '0 : chưa xóa   1 : đã xóa',
  PRIMARY KEY (`TenDangNhap`),
  KEY `CauHoiBiMat_id` (`CauHoiBiMat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taikhoans`
--

INSERT INTO `taikhoans` (`TenDangNhap`, `MatKhau`, `CMND`, `SDT`, `UserEmail`, `LoaiTaiKhoan`, `DiemTichLuy`, `CauHoiBiMat_id`, `CauTraLoi`, `TinhTrang`) VALUES
('admin01', '21232f297a57a5a743894a0e4a801fc3', '024252889', '01689987564', 'huycao1801@gmail.com', 0, 0, 3, 'Thái Văn Lung', 0),
('babycute', 'fcea920f7412b5da7be0cf42b8c93759', '025248995', '0169958895', 'hotgirl@gmail.com', 1, 0, 2, 'con chó', 0),
('badboy', 'ab003765f3424bf8e2c8d1d69762d72c', '024588559', '01685547985', 'agilsunno3@gmail.com', 1, 0, 1, 'thịt chó', 0),
('choghe123', 'e10adc3949ba59abbe56e057f20f883e', '024252665', '01685525430', 'huycao1801@gmail.com', 1, 0, 1, 'dưa hấu', 1),
('eminem002', 'e10adc3949ba59abbe56e057f20f883e', '024252668', '01685525430', 'abc@yahoo.com', 1, 0, 3, 'Thái Văn Lung', 1),
('holdon', '254284e7106d5d78a0a5cc24144b32a7', '024566899', '0909885756', 'agilsunno3@gmail.com', 1, 0, 1, 'bánh cuốn', 0),
('huycao1801', 'e10adc3949ba59abbe56e057f20f883e', '024252665', '01685525430', 'huycao1801@gmail.com', 0, 0, 1, 'mực xào', 0),
('kenkiwi8', 'b7205714d47c64329a0b9b41e7e59749', '024155668', '01685525431', 'tiensinhrukawa@yahoo.com', 1, 0, 1, 'bánh bò', 0),
('lordofwar', 'b7205714d47c64329a0b9b41e7e59749', '024252887', '0168557895', 'tiensinhrukawa@yahoo.com', 1, 0, 1, 'bún chả', 0),
('mamlun', 'e10adc3949ba59abbe56e057f20f883e', '024252887', '01685548976', 'thamkhung@gmail.com', 1, 224, 4, 'Paris', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `thamsos`
--

CREATE TABLE IF NOT EXISTS `thamsos` (
  `Ma` int(11) NOT NULL AUTO_INCREMENT,
  `TenSetting` text NOT NULL,
  `GiaTri` text NOT NULL,
  `DonVi` text NOT NULL,
  `NguoiChinhSua` varchar(255) NOT NULL,
  PRIMARY KEY (`Ma`),
  KEY `NguoiChinhSua` (`NguoiChinhSua`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `thamsos`
--

INSERT INTO `thamsos` (`Ma`, `TenSetting`, `GiaTri`, `DonVi`, `NguoiChinhSua`) VALUES
(1, 'SoLuongDat', '8', 'sản phẩm', 'admin01'),
(2, 'SoSlide', '6', 'Slide', 'admin01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD CONSTRAINT `FKSP` FOREIGN KEY (`SanPham_id`) REFERENCES `sanphams` (`ID`);

--
-- Constraints for table `chitietsanphams`
--
ALTER TABLE `chitietsanphams`
  ADD CONSTRAINT `FKmasanpham` FOREIGN KEY (`sanpham_id`) REFERENCES `sanphams` (`ID`),
  ADD CONSTRAINT `FKmasize` FOREIGN KEY (`Size_id`) REFERENCES `sizes` (`id`);

--
-- Constraints for table `dondathangs`
--
ALTER TABLE `dondathangs`
  ADD CONSTRAINT `FKtendangnhap` FOREIGN KEY (`NguoiDuyetDon`) REFERENCES `taikhoans` (`TenDangNhap`);

--
-- Constraints for table `footers`
--
ALTER TABLE `footers`
  ADD CONSTRAINT `FKnguoichinhsua` FOREIGN KEY (`NguoiChinhSua`) REFERENCES `taikhoans` (`TenDangNhap`);

--
-- Constraints for table `sanphams`
--
ALTER TABLE `sanphams`
  ADD CONSTRAINT `FKChude` FOREIGN KEY (`ChuDe_id`) REFERENCES `chudes` (`ID`),
  ADD CONSTRAINT `FKLoaiSanPham` FOREIGN KEY (`LoaiSanPham_ID`) REFERENCES `loaisanphams` (`ID`),
  ADD CONSTRAINT `FKNhaCungCap` FOREIGN KEY (`NhaCungCap_id`) REFERENCES `nhacungcaps` (`id`);

--
-- Constraints for table `taikhoans`
--
ALTER TABLE `taikhoans`
  ADD CONSTRAINT `FKmachbm` FOREIGN KEY (`CauHoiBiMat_id`) REFERENCES `cauhoibimats` (`id`);

--
-- Constraints for table `thamsos`
--
ALTER TABLE `thamsos`
  ADD CONSTRAINT `FKnguoisua` FOREIGN KEY (`NguoiChinhSua`) REFERENCES `taikhoans` (`TenDangNhap`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
