-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2025 at 03:58 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local`
--

-- --------------------------------------------------------

--
-- Table structure for table `aflink`
--

DROP TABLE IF EXISTS `aflink`;
CREATE TABLE IF NOT EXISTS `aflink` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nosiri` varchar(50) NOT NULL DEFAULT '-',
  `design` varchar(150) NOT NULL DEFAULT '-',
  `idaf` varchar(50) NOT NULL DEFAULT '-',
  `diskaun` decimal(10,0) NOT NULL DEFAULT '0',
  `link` varchar(200) NOT NULL DEFAULT 'Not Generated',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `akaun_setting`
--

DROP TABLE IF EXISTS `akaun_setting`;
CREATE TABLE IF NOT EXISTS `akaun_setting` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `pakej` varchar(50) NOT NULL DEFAULT 'Full Version',
  `untungnew` int NOT NULL DEFAULT '1',
  `untungpre` int NOT NULL DEFAULT '1',
  `untungtradein` int NOT NULL DEFAULT '1',
  `untungupah` int NOT NULL DEFAULT '1',
  `untunggoldbar` int NOT NULL DEFAULT '1',
  `untunglain` int NOT NULL DEFAULT '1',
  `ansuran_modul` int NOT NULL DEFAULT '1',
  `tabung_modul` int NOT NULL DEFAULT '1',
  `vip_modul` int NOT NULL DEFAULT '1',
  `ecommerce_modul` int NOT NULL DEFAULT '1',
  `debtor_modul` int NOT NULL DEFAULT '1',
  `gaji_pekerja_modul` int NOT NULL DEFAULT '1',
  `rekodtradein_modul` int NOT NULL DEFAULT '1',
  `cashierconsole_modul` int NOT NULL DEFAULT '1',
  `goldwallet_modul` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akaun_setting`
--

INSERT INTO `akaun_setting` (`recno`, `pakej`, `untungnew`, `untungpre`, `untungtradein`, `untungupah`, `untunggoldbar`, `untunglain`, `ansuran_modul`, `tabung_modul`, `vip_modul`, `ecommerce_modul`, `debtor_modul`, `gaji_pekerja_modul`, `rekodtradein_modul`, `cashierconsole_modul`, `goldwallet_modul`) VALUES
(1, 'Full Version', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

DROP TABLE IF EXISTS `alamat`;
CREATE TABLE IF NOT EXISTS `alamat` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '-',
  `nofon` varchar(30) DEFAULT NULL,
  `facebook` longtext,
  `cawangan` varchar(100) DEFAULT NULL,
  `negeri` varchar(200) DEFAULT NULL,
  `promosi` int NOT NULL DEFAULT '0',
  `bawah10` decimal(11,2) NOT NULL DEFAULT '0.00',
  `atas10` decimal(11,2) NOT NULL DEFAULT '0.00',
  `eks` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kod` varchar(5) NOT NULL DEFAULT '-',
  `mg` int NOT NULL DEFAULT '0',
  `pilih` int NOT NULL DEFAULT '0',
  `nosirique` varchar(100) NOT NULL DEFAULT '0',
  `tarikhque` date DEFAULT NULL,
  `10atasmarket` decimal(11,2) NOT NULL DEFAULT '0.00',
  `10bawahmarket` decimal(11,2) NOT NULL DEFAULT '0.00',
  `komisyenmarket` decimal(11,2) NOT NULL DEFAULT '0.00',
  `resitnew` varchar(10) NOT NULL DEFAULT '0',
  `10atasmarketahli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `10bawahmarketahli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tolakusahawan` int NOT NULL DEFAULT '0',
  `waferv2` int NOT NULL DEFAULT '0',
  `tolakdiskaunpre` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tolakdiskaunnew` decimal(11,2) NOT NULL DEFAULT '0.00',
  `syarikat` varchar(50) NOT NULL DEFAULT '-',
  `domain` varchar(150) NOT NULL DEFAULT '-',
  `ssm` varchar(100) NOT NULL DEFAULT '-',
  `tagline` varchar(150) NOT NULL DEFAULT '-',
  `syarikat_tag` varchar(100) NOT NULL DEFAULT '-',
  `tradeinpromo` decimal(11,2) NOT NULL DEFAULT '0.00',
  `buybackpromo` decimal(11,2) NOT NULL DEFAULT '0.00',
  `promositrade` int NOT NULL DEFAULT '0',
  `domainupdate` varchar(200) DEFAULT '-',
  `domaintext` varchar(100) NOT NULL DEFAULT 'Website :',
  `fontname` varchar(100) NOT NULL DEFAULT 'Times New Roman',
  `fontsize` int NOT NULL DEFAULT '12',
  `kodcaw` varchar(10) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`recno`, `alamat`, `nofon`, `facebook`, `cawangan`, `negeri`, `promosi`, `bawah10`, `atas10`, `eks`, `kod`, `mg`, `pilih`, `nosirique`, `tarikhque`, `10atasmarket`, `10bawahmarket`, `komisyenmarket`, `resitnew`, `10atasmarketahli`, `10bawahmarketahli`, `tolakusahawan`, `waferv2`, `tolakdiskaunpre`, `tolakdiskaunnew`, `syarikat`, `domain`, `ssm`, `tagline`, `syarikat_tag`, `tradeinpromo`, `buybackpromo`, `promositrade`, `domainupdate`, `domaintext`, `fontname`, `fontsize`, `kodcaw`) VALUES
(27, 'K6,JALAN PASIR PUTEH KOTA BHARU BANDAR SATELIT PASIR TUMBOH,16050 KOTA BHARU,KELANTAN.', '01117819389/01116058846', 'HM JEWELs ', 'HMPASIRTUMBOH', 'Kelantan', 0, '0.00', '0.00', '0.00', 'R', 1, 0, '0', NULL, '0.00', '0.00', '0.00', '0', '0.00', '0.00', 0, 0, '0.00', '0.00', 'HM JEWELS', 'kedaiemashmjewelpasirtumbuh.com', 'Dimiliki Oleh : HAFIZ MUHAMMAD JEWEL (201703164532)', '\"Nak cantik,nak lawa ingatlah HM Jewels\"', 'HM JEWELS', '0.00', '0.00', 0, 'kedaiemashmjewelpasirtumbuh.com', 'Website :', 'Times New Roman', 12, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `alamatholding`
--

DROP TABLE IF EXISTS `alamatholding`;
CREATE TABLE IF NOT EXISTS `alamatholding` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `p1` varchar(100) NOT NULL DEFAULT '-',
  `p2` varchar(100) NOT NULL DEFAULT '-',
  `p3` varchar(100) NOT NULL DEFAULT '-',
  `p4` varchar(100) NOT NULL DEFAULT '-',
  `email` varchar(100) NOT NULL DEFAULT '-',
  `noakaun` varchar(150) NOT NULL DEFAULT '-',
  `bank` varchar(150) NOT NULL DEFAULT '-',
  `status` varchar(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamatholding`
--

INSERT INTO `alamatholding` (`recno`, `p1`, `p2`, `p3`, `p4`, `email`, `noakaun`, `bank`, `status`) VALUES
(1, 'HQ MZ GOLD', '202101011258 (1411557-X) No. 365-O,', ' Jalan Temenggong ', '15000 Kota Bharu, Kelantan\r\n\r\n', 'mzgold@gmail.com', '-', 'MZ GOLD SDN BHD', 'MZ GOLD');

-- --------------------------------------------------------

--
-- Table structure for table `ansuranemas`
--

DROP TABLE IF EXISTS `ansuranemas`;
CREATE TABLE IF NOT EXISTS `ansuranemas` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `kodansuran` varchar(150) NOT NULL DEFAULT '0',
  `nokp` varchar(40) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `nosiri` varchar(100) NOT NULL DEFAULT '0',
  `marhun` varchar(300) NOT NULL DEFAULT '0',
  `marhundetail` varchar(300) NOT NULL DEFAULT '0',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `harga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargabelian` decimal(11,2) NOT NULL DEFAULT '0.00',
  `t_daftar` date DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Ansuran',
  `cawangan` varchar(100) NOT NULL DEFAULT '0',
  `negeri` varchar(100) NOT NULL DEFAULT '0',
  `statustebus` varchar(100) NOT NULL DEFAULT 'Belum Tebus',
  `tarikhtebus` date DEFAULT NULL,
  `idstafftebus` varchar(100) NOT NULL DEFAULT '0',
  `statuspelanggan` varchar(200) NOT NULL DEFAULT '0',
  `bulan` int NOT NULL DEFAULT '0',
  `peratusupah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `peratusdeposit` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahdeposit` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`),
  KEY `nokp` (`nokp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `approveinvois`
--

DROP TABLE IF EXISTS `approveinvois`;
CREATE TABLE IF NOT EXISTS `approveinvois` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noinvois` varchar(200) NOT NULL,
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bil` int NOT NULL DEFAULT '0',
  `totalmodal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(150) NOT NULL DEFAULT '-',
  `status` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auditemas`
--

DROP TABLE IF EXISTS `auditemas`;
CREATE TABLE IF NOT EXISTS `auditemas` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `bilscan` int NOT NULL DEFAULT '0',
  `bilbelumjual` int NOT NULL DEFAULT '0',
  `jumlah` int NOT NULL DEFAULT '0',
  `bilhilang` int NOT NULL DEFAULT '0',
  `cawangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `tarikhfinish` date DEFAULT NULL,
  `masafinish` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `beratscan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berathilang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `auditby` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
CREATE TABLE IF NOT EXISTS `audit_trail` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `logs_trail` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `idstaff` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jana` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=1341 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`recno`, `tarikh`, `masa`, `logs_trail`, `idstaff`, `jana`) VALUES
(1, '2025-08-03', '12:56:04 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(2, '2025-08-03', '1:00:38 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(3, '2025-08-03', '1:27:20 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(4, '2025-08-03', '2:02:23 PM', 'Daftar No Siri HM2A0001 | Bangle | Berat : 4.39 gm', 'hafiz4117', 0),
(5, '2025-08-03', '2:02:49 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0001', 'hafiz4117', 0),
(6, '2025-08-03', '2:04:08 PM', 'Daftar No Siri HM2A0002 | Bangle | Berat : 9.17 gm', 'hafiz4117', 0),
(7, '2025-08-03', '2:04:12 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0002', 'hafiz4117', 0),
(8, '2025-08-03', '2:04:40 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0002', 'hafiz4117', 0),
(9, '2025-08-03', '2:04:56 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0002 Berat : 9.71 gm', 'hafiz4117', 0),
(10, '2025-08-03', '2:06:03 PM', 'Daftar No Siri HM2A0003 | Bangle | Berat : 7.11 gm', 'hafiz4117', 0),
(11, '2025-08-03', '2:06:06 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0003', 'hafiz4117', 0),
(12, '2025-08-03', '2:07:17 PM', 'Daftar No Siri HM2A0004 | Bangle | Berat : 15.57 gm', 'hafiz4117', 0),
(13, '2025-08-03', '2:07:20 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0004', 'hafiz4117', 0),
(14, '2025-08-03', '2:08:08 PM', 'Daftar No Siri HM2A0005 | Bangle | Berat : 16.64 gm', 'hafiz4117', 0),
(15, '2025-08-03', '2:08:10 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0005', 'hafiz4117', 0),
(16, '2025-08-03', '2:08:49 PM', 'Daftar No Siri HM2A0006 | Bangle | Berat : 2.74 gm', 'hafiz4117', 0),
(17, '2025-08-03', '2:08:52 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0006', 'hafiz4117', 0),
(18, '2025-08-03', '2:12:18 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0004', 'hafiz4117', 0),
(19, '2025-08-03', '2:12:35 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0004 Berat : 15.57 gm', 'hafiz4117', 0),
(20, '2025-08-03', '2:14:34 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0002', 'hafiz4117', 0),
(21, '2025-08-03', '2:14:37 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0002 Berat : 9.71 gm', 'hafiz4117', 0),
(22, '2025-08-03', '2:17:39 PM', 'Daftar No Siri HM2A0007 | Rantai Leher | Berat : 18.20 gm', 'hafiz4117', 0),
(23, '2025-08-03', '2:17:43 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0007', 'hafiz4117', 0),
(24, '2025-08-03', '2:18:45 PM', 'Daftar No Siri HM2A0008 | Rantai Leher | Berat : 19.83 gm', 'hafiz4117', 0),
(25, '2025-08-03', '2:19:13 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0007', 'hafiz4117', 0),
(26, '2025-08-03', '2:19:22 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0007 Berat : 18.20 gm', 'hafiz4117', 0),
(27, '2025-08-03', '2:21:04 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0007', 'hafiz4117', 0),
(28, '2025-08-03', '2:27:34 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0007', 'hafiz4117', 0),
(29, '2025-08-03', '2:27:48 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0007 Berat : 18.20 gm', 'hafiz4117', 0),
(30, '2025-08-03', '2:30:08 PM', 'Daftar No Siri HM2A0009 | Rantai Leher | Berat : 19.83 gm', 'hafiz4117', 0),
(31, '2025-08-03', '2:30:30 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0009', 'hafiz4117', 0),
(32, '2025-08-03', '3:36:17 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0009', 'hafiz4117', 0),
(33, '2025-08-03', '3:36:40 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0007', 'hafiz4117', 0),
(34, '2025-08-03', '3:37:06 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0007', 'hafiz4117', 0),
(35, '2025-08-03', '3:40:02 PM', 'Daftar No Siri HM2A0010 | Loket | Berat : 3.24 gm', 'hafiz4117', 0),
(36, '2025-08-03', '3:40:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0010', 'hafiz4117', 0),
(37, '2025-08-03', '4:15:47 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(38, '2025-08-03', '4:18:16 PM', 'Daftar No Siri HM2A0011 | Loket | Berat : 2.87 gm', 'hafiz4117', 0),
(39, '2025-08-03', '4:18:26 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0011', 'hafiz4117', 0),
(40, '2025-08-03', '4:19:00 PM', 'Daftar No Siri HM2A0012 | Loket | Berat : 3.79 gm', 'hafiz4117', 0),
(41, '2025-08-03', '4:19:03 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0012', 'hafiz4117', 0),
(42, '2025-08-03', '4:19:39 PM', 'Daftar No Siri HM2A0013 | Loket | Berat : 4.43 gm', 'hafiz4117', 0),
(43, '2025-08-03', '4:19:43 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0013', 'hafiz4117', 0),
(44, '2025-08-03', '4:20:37 PM', 'Daftar No Siri HM2A0014 | Loket | Berat : 4.20 gm', 'hafiz4117', 0),
(45, '2025-08-03', '4:20:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0014', 'hafiz4117', 0),
(46, '2025-08-03', '4:21:13 PM', 'Daftar No Siri HM2A0015 | Loket | Berat : 2.54 gm', 'hafiz4117', 0),
(47, '2025-08-03', '4:21:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0015', 'hafiz4117', 0),
(48, '2025-08-03', '4:22:03 PM', 'Daftar No Siri HM2A0016 | Loket | Berat : 2.25 gm', 'hafiz4117', 0),
(49, '2025-08-03', '4:22:08 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0016', 'hafiz4117', 0),
(50, '2025-08-03', '4:22:37 PM', 'Daftar No Siri HM2A0017 | Loket | Berat : 1.85 gm', 'hafiz4117', 0),
(51, '2025-08-03', '4:22:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0017', 'hafiz4117', 0),
(52, '2025-08-03', '4:23:10 PM', 'Daftar No Siri HM2A0018 | Loket | Berat : 0.51 gm', 'hafiz4117', 0),
(53, '2025-08-03', '4:23:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0018', 'hafiz4117', 0),
(54, '2025-08-03', '4:23:39 PM', 'Daftar No Siri HM2A0019 | Loket | Berat : 0.50 gm', 'hafiz4117', 0),
(55, '2025-08-03', '4:23:44 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0019', 'hafiz4117', 0),
(56, '2025-08-03', '4:24:15 PM', 'Daftar No Siri HM2A0020 | Loket | Berat : 0.42 gm', 'hafiz4117', 0),
(57, '2025-08-03', '4:24:19 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0020', 'hafiz4117', 0),
(58, '2025-08-03', '4:25:29 PM', 'Daftar No Siri HM2A0021 | Subang | Berat : 2.01 gm', 'hafiz4117', 0),
(59, '2025-08-03', '4:25:55 PM', 'Daftar No Siri HM2A0022 | Subang | Berat : 2.00 gm', 'hafiz4117', 0),
(60, '2025-08-03', '4:26:00 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0022', 'hafiz4117', 0),
(61, '2025-08-03', '4:26:02 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0021', 'hafiz4117', 0),
(62, '2025-08-03', '4:26:39 PM', 'Daftar No Siri HM2A0023 | Subang | Berat : 2.19 gm', 'hafiz4117', 0),
(63, '2025-08-03', '4:26:42 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0023', 'hafiz4117', 0),
(64, '2025-08-03', '4:27:09 PM', 'Daftar No Siri HM2A0024 | Subang | Berat : 2.19 gm', 'hafiz4117', 0),
(65, '2025-08-03', '4:27:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0024', 'hafiz4117', 0),
(66, '2025-08-03', '4:28:11 PM', 'Daftar No Siri HM2A0025 | Subang | Berat : 2.65 gm', 'hafiz4117', 0),
(67, '2025-08-03', '4:28:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0025', 'hafiz4117', 0),
(68, '2025-08-03', '4:29:19 PM', 'Daftar No Siri HM2A0026 | Subang | Berat : 2.63 gm', 'hafiz4117', 0),
(69, '2025-08-03', '4:29:23 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0026', 'hafiz4117', 0),
(70, '2025-08-03', '4:30:04 PM', 'Daftar No Siri HM2A0027 | Subang | Berat : 2.29 gm', 'hafiz4117', 0),
(71, '2025-08-03', '4:30:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0027', 'hafiz4117', 0),
(72, '2025-08-03', '4:30:38 PM', 'Daftar No Siri HM2A0028 | Subang | Berat : 2.21 gm', 'hafiz4117', 0),
(73, '2025-08-03', '4:30:42 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0028', 'hafiz4117', 0),
(74, '2025-08-03', '4:31:20 PM', 'Daftar No Siri HM2A0029 | Subang | Berat : 4.05 gm', 'hafiz4117', 0),
(75, '2025-08-03', '4:31:24 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0029', 'hafiz4117', 0),
(76, '2025-08-03', '4:33:05 PM', 'Daftar No Siri HM2A0030 | Subang | Berat : 1.41 gm', 'hafiz4117', 0),
(77, '2025-08-03', '4:33:08 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0030', 'hafiz4117', 0),
(78, '2025-08-03', '4:33:40 PM', 'Daftar No Siri HM2A0031 | Subang | Berat : 1.41 gm', 'hafiz4117', 0),
(79, '2025-08-03', '4:33:44 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0031', 'hafiz4117', 0),
(80, '2025-08-03', '4:34:18 PM', 'Daftar No Siri HM2A0032 | Subang | Berat : 2.63 gm', 'hafiz4117', 0),
(81, '2025-08-03', '4:34:21 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0032', 'hafiz4117', 0),
(82, '2025-08-03', '4:35:11 PM', 'Daftar No Siri HM2A0033 | Subang | Berat : 1.15 gm', 'hafiz4117', 0),
(83, '2025-08-03', '4:35:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0033', 'hafiz4117', 0),
(84, '2025-08-03', '4:36:38 PM', 'Daftar No Siri HM2A0034 | Subang | Berat : 1.21 gm', 'hafiz4117', 0),
(85, '2025-08-03', '4:36:42 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0034', 'hafiz4117', 0),
(86, '2025-08-03', '4:37:11 PM', 'Daftar No Siri HM2A0035 | Subang | Berat : 1.20 gm', 'hafiz4117', 0),
(87, '2025-08-03', '4:37:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0035', 'hafiz4117', 0),
(88, '2025-08-03', '4:37:46 PM', 'Daftar No Siri HM2A0036 | Subang | Berat : 1.38 gm', 'hafiz4117', 0),
(89, '2025-08-03', '4:37:51 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0036', 'hafiz4117', 0),
(90, '2025-08-03', '4:40:48 PM', 'Daftar No Siri HM2A0037 | Subang | Berat : 1.09 gm', 'hafiz4117', 0),
(91, '2025-08-03', '4:40:51 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0037', 'hafiz4117', 0),
(92, '2025-08-03', '4:41:15 PM', 'Daftar No Siri HM2A0038 | Subang | Berat : 1.42 gm', 'hafiz4117', 0),
(93, '2025-08-03', '4:41:19 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0038', 'hafiz4117', 0),
(94, '2025-08-03', '4:41:52 PM', 'Daftar No Siri HM2A0039 | Subang | Berat : 1.70 gm', 'hafiz4117', 0),
(95, '2025-08-03', '4:41:55 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0039', 'hafiz4117', 0),
(96, '2025-08-03', '4:42:19 PM', 'Daftar No Siri HM2A0040 | Subang | Berat : 1.71 gm', 'hafiz4117', 0),
(97, '2025-08-03', '4:42:28 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0040', 'hafiz4117', 0),
(98, '2025-08-03', '4:42:57 PM', 'Daftar No Siri HM2A0041 | Subang | Berat : 1.18 gm', 'hafiz4117', 0),
(99, '2025-08-03', '4:43:01 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0041', 'hafiz4117', 0),
(100, '2025-08-03', '4:43:25 PM', 'Daftar No Siri HM2A0042 | Subang | Berat : 1.22 gm', 'hafiz4117', 0),
(101, '2025-08-03', '4:43:28 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0042', 'hafiz4117', 0),
(102, '2025-08-03', '4:44:04 PM', 'Daftar No Siri HM2A0043 | Subang | Berat : 1.04 gm', 'hafiz4117', 0),
(103, '2025-08-03', '4:44:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0043', 'hafiz4117', 0),
(104, '2025-08-03', '4:44:39 PM', 'Daftar No Siri HM2A0044 | Subang | Berat : 1.50 gm', 'hafiz4117', 0),
(105, '2025-08-03', '4:44:43 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0044', 'hafiz4117', 0),
(106, '2025-08-03', '4:45:01 PM', 'Daftar No Siri HM2A0045 | Subang | Berat : 1.22 gm', 'hafiz4117', 0),
(107, '2025-08-03', '4:45:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0045', 'hafiz4117', 0),
(108, '2025-08-03', '4:45:38 PM', 'Daftar No Siri HM2A0046 | Subang | Berat : 1.46 gm', 'hafiz4117', 0),
(109, '2025-08-03', '4:45:43 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0046', 'hafiz4117', 0),
(110, '2025-08-03', '4:47:54 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0008', 'hafiz4117', 0),
(111, '2025-08-03', '4:49:03 PM', 'Daftar No Siri HM2A0047 | Rantai Leher | Berat : 36.64 gm', 'hafiz4117', 0),
(112, '2025-08-03', '4:49:10 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0047', 'hafiz4117', 0),
(113, '2025-08-03', '4:49:43 PM', 'Daftar No Siri HM2A0048 | Rantai Leher | Berat : 4.60 gm', 'hafiz4117', 0),
(114, '2025-08-03', '4:49:46 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0048', 'hafiz4117', 0),
(115, '2025-08-03', '4:50:09 PM', 'Daftar No Siri HM2A0049 | Rantai Leher | Berat : 5.95 gm', 'hafiz4117', 0),
(116, '2025-08-03', '4:50:32 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0048', 'hafiz4117', 0),
(117, '2025-08-03', '4:50:38 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0048 Berat : 4.60 gm', 'hafiz4117', 0),
(118, '2025-08-03', '4:51:22 PM', 'Daftar No Siri HM2A0050 | Rantai Leher | Berat : 5.95 gm', 'hafiz4117', 0),
(119, '2025-08-03', '4:51:27 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0050', 'hafiz4117', 0),
(120, '2025-08-03', '4:51:47 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0049', 'hafiz4117', 0),
(121, '2025-08-03', '4:52:15 PM', 'Daftar No Siri HM2A0051 | Rantai Leher | Berat : 3.45 gm', 'hafiz4117', 0),
(122, '2025-08-03', '4:52:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0051', 'hafiz4117', 0),
(123, '2025-08-03', '4:52:50 PM', 'Daftar No Siri HM2A0052 | Rantai Leher | Berat : 2.95 gm', 'hafiz4117', 0),
(124, '2025-08-03', '4:52:55 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0052', 'hafiz4117', 0),
(125, '2025-08-03', '4:53:33 PM', 'Daftar No Siri HM2A0053 | Rantai Leher | Berat : 2.94 gm', 'hafiz4117', 0),
(126, '2025-08-03', '4:53:37 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0053', 'hafiz4117', 0),
(127, '2025-08-03', '4:56:21 PM', 'Daftar No Siri HM2A0054 | Rantai Leher | Berat : 4.58 gm', 'hafiz4117', 0),
(128, '2025-08-03', '4:56:26 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0054', 'hafiz4117', 0),
(129, '2025-08-03', '4:57:01 PM', 'Daftar No Siri HM2A0055 | Rantai Leher | Berat : 4.55 gm', 'hafiz4117', 0),
(130, '2025-08-03', '4:57:06 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0055', 'hafiz4117', 0),
(131, '2025-08-03', '4:57:43 PM', 'Daftar No Siri HM2A0056 | Rantai Leher | Berat : 2.25 gm', 'hafiz4117', 0),
(132, '2025-08-03', '4:57:50 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0056', 'hafiz4117', 0),
(133, '2025-08-03', '4:58:16 PM', 'Daftar No Siri HM2A0057 | Rantai Leher | Berat : 2.31 gm', 'hafiz4117', 0),
(134, '2025-08-03', '4:58:58 PM', 'Daftar No Siri HM2A0058 | Rantai Leher | Berat : 1.97 gm', 'hafiz4117', 0),
(135, '2025-08-03', '4:59:27 PM', 'Daftar No Siri HM2A0059 | Rantai Leher | Berat : 3.93 gm', 'hafiz4117', 0),
(136, '2025-08-03', '5:00:05 PM', 'Daftar No Siri HM2A0060 | Rantai Leher | Berat : 13.90 gm', 'hafiz4117', 0),
(137, '2025-08-03', '5:00:39 PM', 'Daftar No Siri HM2A0061 | Rantai Leher | Berat : 13.00 gm', 'hafiz4117', 0),
(138, '2025-08-03', '5:01:09 PM', 'Daftar No Siri HM2A0062 | Rantai Leher | Berat : 14.11 gm', 'hafiz4117', 0),
(139, '2025-08-03', '5:01:50 PM', 'Daftar No Siri HM2A0063 | Rantai Leher | Berat : 5.32 gm', 'hafiz4117', 0),
(140, '2025-08-03', '5:02:22 PM', 'Daftar No Siri HM2A0064 | Rantai Leher | Berat : 5.32 gm', 'hafiz4117', 0),
(141, '2025-08-03', '5:02:58 PM', 'Daftar No Siri HM2A0065 | Rantai Leher | Berat : 12.71 gm', 'hafiz4117', 0),
(142, '2025-08-03', '5:03:06 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0065', 'hafiz4117', 0),
(143, '2025-08-03', '5:03:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0064', 'hafiz4117', 0),
(144, '2025-08-03', '5:03:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0063', 'hafiz4117', 0),
(145, '2025-08-03', '5:03:08 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0062', 'hafiz4117', 0),
(146, '2025-08-03', '5:03:08 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0061', 'hafiz4117', 0),
(147, '2025-08-03', '5:03:09 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0060', 'hafiz4117', 0),
(148, '2025-08-03', '5:03:09 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0059', 'hafiz4117', 0),
(149, '2025-08-03', '5:03:09 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0058', 'hafiz4117', 0),
(150, '2025-08-03', '5:03:10 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0057', 'hafiz4117', 0),
(151, '2025-08-03', '5:09:48 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(152, '2025-08-03', '5:15:05 PM', 'Daftar No Siri HM2A0066 | Rantai Tangan | Berat : 5.03 gm', 'hafiz4117', 0),
(153, '2025-08-03', '5:15:45 PM', 'Daftar No Siri HM2A0067 | Rantai Tangan | Berat : 6.43 gm', 'hafiz4117', 0),
(154, '2025-08-03', '5:16:19 PM', 'Daftar No Siri HM2A0068 | Rantai Tangan | Berat : 0.76 gm', 'hafiz4117', 0),
(155, '2025-08-03', '5:17:15 PM', 'Daftar No Siri HM2A0069 | Rantai Tangan | Berat : 5.36 gm', 'hafiz4117', 0),
(156, '2025-08-03', '5:17:41 PM', 'Daftar No Siri HM2A0070 | Rantai Tangan | Berat : 2.05 gm', 'hafiz4117', 0),
(157, '2025-08-03', '5:19:24 PM', 'Daftar No Siri HM2A0071 | Rantai Tangan | Berat : 4.03 gm', 'hafiz4117', 0),
(158, '2025-08-03', '5:19:52 PM', 'Daftar No Siri HM2A0072 | Rantai Tangan | Berat : 3.94 gm', 'hafiz4117', 0),
(159, '2025-08-03', '5:20:18 PM', 'Daftar No Siri HM2A0073 | Rantai Tangan | Berat : 5.33 gm', 'hafiz4117', 0),
(160, '2025-08-03', '5:20:54 PM', 'Daftar No Siri HM2A0074 | Rantai Tangan | Berat : 6.21 gm', 'hafiz4117', 0),
(161, '2025-08-03', '5:21:36 PM', 'Daftar No Siri HM2A0075 | Rantai Tangan | Berat : 7.54 gm', 'hafiz4117', 0),
(162, '2025-08-03', '5:22:00 PM', 'Daftar No Siri HM2A0076 | Rantai Tangan | Berat : 6.45 gm', 'hafiz4117', 0),
(163, '2025-08-03', '5:22:27 PM', 'Daftar No Siri HM2A0077 | Rantai Tangan | Berat : 9.22 gm', 'hafiz4117', 0),
(164, '2025-08-03', '5:22:53 PM', 'Daftar No Siri HM2A0078 | Rantai Tangan | Berat : 6.70 gm', 'hafiz4117', 0),
(165, '2025-08-03', '5:23:16 PM', 'Daftar No Siri HM2A0079 | Rantai Tangan | Berat : 5.74 gm', 'hafiz4117', 0),
(166, '2025-08-03', '5:23:35 PM', 'Daftar No Siri HM2A0080 | Rantai Tangan | Berat : 3.50 gm', 'hafiz4117', 0),
(167, '2025-08-03', '5:24:07 PM', 'Daftar No Siri HM2A0081 | Rantai Tangan | Berat : 2.50 gm', 'hafiz4117', 0),
(168, '2025-08-03', '5:24:34 PM', 'Daftar No Siri HM2A0082 | Rantai Tangan | Berat : 2.67 gm', 'hafiz4117', 0),
(169, '2025-08-03', '5:25:00 PM', 'Daftar No Siri HM2A0083 | Rantai Tangan | Berat : 5.49 gm', 'hafiz4117', 0),
(170, '2025-08-03', '5:25:31 PM', 'Daftar No Siri HM2A0084 | Rantai Tangan | Berat : 14.37 gm', 'hafiz4117', 0),
(171, '2025-08-03', '5:25:36 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0084', 'hafiz4117', 0),
(172, '2025-08-03', '5:25:51 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0083', 'hafiz4117', 0),
(173, '2025-08-03', '5:25:52 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0082', 'hafiz4117', 0),
(174, '2025-08-03', '5:25:52 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0081', 'hafiz4117', 0),
(175, '2025-08-03', '5:25:52 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0080', 'hafiz4117', 0),
(176, '2025-08-03', '5:25:53 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0079', 'hafiz4117', 0),
(177, '2025-08-03', '5:25:53 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0078', 'hafiz4117', 0),
(178, '2025-08-03', '5:25:54 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0077', 'hafiz4117', 0),
(179, '2025-08-03', '5:25:54 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0076', 'hafiz4117', 0),
(180, '2025-08-03', '5:25:55 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0075', 'hafiz4117', 0),
(181, '2025-08-03', '5:25:55 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0074', 'hafiz4117', 0),
(182, '2025-08-03', '5:25:55 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0073', 'hafiz4117', 0),
(183, '2025-08-03', '5:25:56 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0072', 'hafiz4117', 0),
(184, '2025-08-03', '5:25:56 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0071', 'hafiz4117', 0),
(185, '2025-08-03', '5:25:57 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0070', 'hafiz4117', 0),
(186, '2025-08-03', '5:25:57 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0069', 'hafiz4117', 0),
(187, '2025-08-03', '5:25:58 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0068', 'hafiz4117', 0),
(188, '2025-08-03', '5:25:58 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0067', 'hafiz4117', 0),
(189, '2025-08-03', '5:25:59 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0066', 'hafiz4117', 0),
(190, '2025-08-03', '5:27:48 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0084', 'hafiz4117', 0),
(191, '2025-08-03', '5:29:00 PM', 'Daftar No Siri HM2A0085 | Rantai Tangan | Berat : 10.21 gm', 'hafiz4117', 0),
(192, '2025-08-03', '5:29:28 PM', 'Daftar No Siri HM2A0086 | Rantai Tangan | Berat : 8.97 gm', 'hafiz4117', 0),
(193, '2025-08-03', '5:29:57 PM', 'Daftar No Siri HM2A0087 | Rantai Tangan | Berat : 9.61 gm', 'hafiz4117', 0),
(194, '2025-08-03', '5:30:27 PM', 'Daftar No Siri HM2A0088 | Rantai Tangan | Berat : 9.56 gm', 'hafiz4117', 0),
(195, '2025-08-03', '5:30:31 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0088', 'hafiz4117', 0),
(196, '2025-08-03', '5:30:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0087', 'hafiz4117', 0),
(197, '2025-08-03', '5:30:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0086', 'hafiz4117', 0),
(198, '2025-08-03', '5:30:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0085', 'hafiz4117', 0),
(199, '2025-08-03', '5:31:27 PM', 'Daftar No Siri HM2A0089 | Rantai Tangan | Berat : 6.11 gm', 'hafiz4117', 0),
(200, '2025-08-03', '5:31:38 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0089', 'hafiz4117', 0),
(201, '2025-08-03', '5:32:17 PM', 'Daftar No Siri HM2A0090 | Rantai Tangan | Berat : 6.33 gm', 'hafiz4117', 0),
(202, '2025-08-03', '5:32:21 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0090', 'hafiz4117', 0),
(203, '2025-08-03', '5:33:14 PM', 'Daftar No Siri HM2A0091 | Rantai Tangan | Berat : 4.51 gm', 'hafiz4117', 0),
(204, '2025-08-03', '5:33:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0091', 'hafiz4117', 0),
(205, '2025-08-03', '5:34:04 PM', 'Daftar No Siri HM2A0092 | Rantai Tangan | Berat : 3.25 gm', 'hafiz4117', 0),
(206, '2025-08-03', '5:34:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0092', 'hafiz4117', 0),
(207, '2025-08-03', '5:35:01 PM', 'Daftar No Siri HM2A0093 | Rantai Tangan | Berat : 3.11 gm', 'hafiz4117', 0),
(208, '2025-08-03', '5:35:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0093', 'hafiz4117', 0),
(209, '2025-08-03', '5:35:43 PM', 'Daftar No Siri HM2A0094 | Rantai Tangan | Berat : 3.74 gm', 'hafiz4117', 0),
(210, '2025-08-03', '5:35:46 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0094', 'hafiz4117', 0),
(211, '2025-08-03', '5:39:24 PM', 'Daftar No Siri HM2A0095 | Rantai Tangan | Berat : 16.76 gm', 'hafiz4117', 0),
(212, '2025-08-03', '5:39:28 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0095', 'hafiz4117', 0),
(213, '2025-08-03', '5:40:11 PM', 'Daftar No Siri HM2A0096 | Rantai Tangan | Berat : 16.99 gm', 'hafiz4117', 0),
(214, '2025-08-03', '5:40:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0096', 'hafiz4117', 0),
(215, '2025-08-03', '5:41:00 PM', 'Daftar No Siri HM2A0097 | Rantai Tangan | Berat : 15.00 gm', 'hafiz4117', 0),
(216, '2025-08-03', '5:41:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0097', 'hafiz4117', 0),
(217, '2025-08-03', '5:42:35 PM', 'Daftar No Siri HM2A0098 | Rantai Tangan | Berat : 16.02 gm', 'hafiz4117', 0),
(218, '2025-08-03', '5:42:44 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0098', 'hafiz4117', 0),
(219, '2025-08-03', '5:43:20 PM', 'Daftar No Siri HM2A0099 | Rantai Tangan | Berat : 8.04 gm', 'hafiz4117', 0),
(220, '2025-08-03', '5:43:31 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0099', 'hafiz4117', 0),
(221, '2025-08-03', '5:44:16 PM', 'Daftar No Siri HM2A0100 | Rantai Tangan | Berat : 6.15 gm', 'hafiz4117', 0),
(222, '2025-08-03', '5:44:21 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0100', 'hafiz4117', 0),
(223, '2025-08-03', '5:44:47 PM', 'Daftar No Siri HM2A0101 | Rantai Tangan | Berat : 5.18 gm', 'hafiz4117', 0),
(224, '2025-08-03', '5:44:51 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0101', 'hafiz4117', 0),
(225, '2025-08-03', '5:45:15 PM', 'Daftar No Siri HM2A0102 | Rantai Tangan | Berat : 5.67 gm', 'hafiz4117', 0),
(226, '2025-08-03', '5:45:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0102', 'hafiz4117', 0),
(227, '2025-08-03', '5:46:22 PM', 'Daftar No Siri HM2A0103 | Rantai Tangan | Berat : 4.23 gm', 'hafiz4117', 0),
(228, '2025-08-03', '5:46:25 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0103', 'hafiz4117', 0),
(229, '2025-08-03', '5:46:53 PM', 'Daftar No Siri HM2A0104 | Rantai Tangan | Berat : 5.22 gm', 'hafiz4117', 0),
(230, '2025-08-03', '5:47:15 PM', 'Daftar No Siri HM2A0105 | Rantai Tangan | Berat : 5.22 gm', 'hafiz4117', 0),
(231, '2025-08-03', '5:47:20 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0105', 'hafiz4117', 0),
(232, '2025-08-03', '5:47:45 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0104', 'hafiz4117', 0),
(233, '2025-08-03', '5:48:25 PM', 'Daftar No Siri HM2A0106 | Rantai Tangan | Berat : 4.07 gm', 'hafiz4117', 0),
(234, '2025-08-03', '5:48:59 PM', 'Daftar No Siri HM2A0107 | Rantai Tangan | Berat : 7.67 gm', 'hafiz4117', 0),
(235, '2025-08-03', '5:49:32 PM', 'Daftar No Siri HM2A0108 | Rantai Tangan | Berat : 2.10 gm', 'hafiz4117', 0),
(236, '2025-08-03', '5:49:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0108', 'hafiz4117', 0),
(237, '2025-08-03', '5:49:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0107', 'hafiz4117', 0),
(238, '2025-08-03', '5:49:42 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0106', 'hafiz4117', 0),
(239, '2025-08-03', '5:50:33 PM', 'Daftar No Siri HM2A0109 | Rantai Tangan | Berat : 3.03 gm', 'hafiz4117', 0),
(240, '2025-08-03', '5:51:08 PM', 'Daftar No Siri HM2A0110 | Rantai Tangan | Berat : 3.33 gm', 'hafiz4117', 0),
(241, '2025-08-03', '5:51:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0110', 'hafiz4117', 0),
(242, '2025-08-03', '5:51:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0109', 'hafiz4117', 0),
(243, '2025-08-04', '10:33:15 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(244, '2025-08-04', '10:36:55 AM', 'Daftar No Siri HM2A0111 | Rantai Tangan | Berat : 3.27 gm', 'hafiz4117', 0),
(245, '2025-08-04', '10:37:27 AM', 'Daftar No Siri HM2A0112 | Rantai Tangan | Berat : 4.31 gm', 'hafiz4117', 0),
(246, '2025-08-04', '10:38:00 AM', 'Daftar No Siri HM2A0113 | Rantai Tangan | Berat : 5.96 gm', 'hafiz4117', 0),
(247, '2025-08-04', '10:38:12 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0113', 'hafiz4117', 0),
(248, '2025-08-04', '10:38:12 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0112', 'hafiz4117', 0),
(249, '2025-08-04', '10:38:13 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0111', 'hafiz4117', 0),
(250, '2025-08-04', '10:39:24 AM', 'Daftar No Siri HM2A0114 | Rantai Tangan | Berat : 7.54 gm', 'hafiz4117', 0),
(251, '2025-08-04', '10:40:28 AM', 'Daftar No Siri HM2A0115 | Rantai Tangan | Berat : 8.13 gm', 'hafiz4117', 0),
(252, '2025-08-04', '10:40:58 AM', 'Daftar No Siri HM2A0116 | Rantai Tangan | Berat : 9.58 gm', 'hafiz4117', 0),
(253, '2025-08-04', '10:41:05 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0116', 'hafiz4117', 0),
(254, '2025-08-04', '10:41:06 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0115', 'hafiz4117', 0),
(255, '2025-08-04', '10:41:06 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0114', 'hafiz4117', 0),
(256, '2025-08-04', '10:42:13 AM', 'Daftar No Siri HM2A0117 | Rantai Tangan | Berat : 9.56 gm', 'hafiz4117', 0),
(257, '2025-08-04', '10:42:47 AM', 'Daftar No Siri HM2A0118 | Rantai Tangan | Berat : 27.46 gm', 'hafiz4117', 0),
(258, '2025-08-04', '10:43:29 AM', 'Daftar No Siri HM2A0119 | Rantai Tangan | Berat : 24.77 gm', 'hafiz4117', 0),
(259, '2025-08-04', '10:43:33 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0119', 'hafiz4117', 0),
(260, '2025-08-04', '10:43:33 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0118', 'hafiz4117', 0),
(261, '2025-08-04', '10:43:33 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0117', 'hafiz4117', 0),
(262, '2025-08-04', '10:44:09 AM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0118', 'hafiz4117', 0),
(263, '2025-08-04', '10:45:10 AM', 'Daftar No Siri HM2A0120 | Rantai Tangan | Berat : 11.26 gm', 'hafiz4117', 0),
(264, '2025-08-04', '10:45:48 AM', 'Daftar No Siri HM2A0121 | Rantai Tangan | Berat : 10.30 gm', 'hafiz4117', 0),
(265, '2025-08-04', '10:46:14 AM', 'Daftar No Siri HM2A0122 | Rantai Tangan | Berat : 11.81 gm', 'hafiz4117', 0),
(266, '2025-08-04', '10:46:47 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0122', 'hafiz4117', 0),
(267, '2025-08-04', '10:46:47 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0121', 'hafiz4117', 0),
(268, '2025-08-04', '10:46:48 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0120', 'hafiz4117', 0),
(269, '2025-08-04', '10:47:37 AM', 'Daftar No Siri HM2A0123 | Rantai Tangan | Berat : 12.75 gm', 'hafiz4117', 0),
(270, '2025-08-04', '10:48:34 AM', 'Daftar No Siri HM2A0124 | Rantai Tangan | Berat : 14.41 gm', 'hafiz4117', 0),
(271, '2025-08-04', '10:49:08 AM', 'Daftar No Siri HM2A0125 | Rantai Tangan | Berat : 17.70 gm', 'hafiz4117', 0),
(272, '2025-08-04', '10:49:21 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0125', 'hafiz4117', 0),
(273, '2025-08-04', '10:49:24 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0124', 'hafiz4117', 0),
(274, '2025-08-04', '10:49:26 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0123', 'hafiz4117', 0),
(275, '2025-08-04', '10:51:46 AM', 'Daftar No Siri HM2A0126 | Rantai Tangan | Berat : 19.04 gm', 'hafiz4117', 0),
(276, '2025-08-04', '10:52:18 AM', 'Daftar No Siri HM2A0127 | Rantai Tangan | Berat : 22.98 gm', 'hafiz4117', 0),
(277, '2025-08-04', '10:52:27 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0127', 'hafiz4117', 0),
(278, '2025-08-04', '10:53:47 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0126', 'hafiz4117', 0),
(279, '2025-08-04', '10:54:36 AM', 'Daftar No Siri HM2A0128 | Rantai Tangan | Berat : 17.06 gm', 'hafiz4117', 0),
(280, '2025-08-04', '10:55:06 AM', 'Daftar No Siri HM2A0129 | Rantai Tangan | Berat : 16.46 gm', 'hafiz4117', 0),
(281, '2025-08-04', '10:55:35 AM', 'Daftar No Siri HM2A0130 | Rantai Tangan | Berat : 19.26 gm', 'hafiz4117', 0),
(282, '2025-08-04', '10:56:08 AM', 'Daftar No Siri HM2A0131 | Rantai Tangan | Berat : 41.56 gm', 'hafiz4117', 0),
(283, '2025-08-04', '10:56:21 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0131', 'hafiz4117', 0),
(284, '2025-08-04', '10:58:15 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0130', 'hafiz4117', 0),
(285, '2025-08-04', '10:58:21 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0129', 'hafiz4117', 0),
(286, '2025-08-04', '10:58:31 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0128', 'hafiz4117', 0),
(287, '2025-08-04', '11:01:56 AM', 'Daftar No Siri HM2A0132 | Gelang Kaki | Berat : 2.18 gm', 'hafiz4117', 0),
(288, '2025-08-04', '11:02:23 AM', 'Daftar No Siri HM2A0133 | Gelang Kaki | Berat : 2.21 gm', 'hafiz4117', 0),
(289, '2025-08-04', '11:03:35 AM', 'Daftar No Siri HM2A0134 | Gelang Kaki | Berat : 5.70 gm', 'hafiz4117', 0),
(290, '2025-08-04', '11:03:42 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0134', 'hafiz4117', 0),
(291, '2025-08-04', '11:04:00 AM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0134', 'hafiz4117', 0),
(292, '2025-08-04', '11:04:20 AM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0134 Berat : 5.70 gm', 'hafiz4117', 0),
(293, '2025-08-04', '11:04:40 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0133', 'hafiz4117', 0),
(294, '2025-08-04', '11:04:42 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0132', 'hafiz4117', 0),
(295, '2025-08-04', '11:05:54 AM', 'Daftar No Siri HM2A0135 | Rantai Tangan | Berat : 3.55 gm', 'hafiz4117', 0),
(296, '2025-08-04', '11:06:35 AM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0135', 'hafiz4117', 0),
(297, '2025-08-04', '11:06:47 AM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0135 Berat : 3.55 gm', 'hafiz4117', 0),
(298, '2025-08-04', '11:07:16 AM', 'Daftar No Siri HM2A0136 | Rantai Tangan | Berat : 1.35 gm', 'hafiz4117', 0),
(299, '2025-08-04', '11:07:37 AM', 'Daftar No Siri HM2A0137 | Rantai Tangan | Berat : 10.42 gm', 'hafiz4117', 0),
(300, '2025-08-04', '11:08:12 AM', 'Daftar No Siri HM2A0138 | Rantai Tangan | Berat : 2.77 gm', 'hafiz4117', 0),
(301, '2025-08-04', '11:08:15 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0138', 'hafiz4117', 0),
(302, '2025-08-04', '11:08:20 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0137', 'hafiz4117', 0),
(303, '2025-08-04', '11:09:10 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0136', 'hafiz4117', 0),
(304, '2025-08-04', '11:09:16 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0135', 'hafiz4117', 0),
(305, '2025-08-04', '11:09:49 AM', 'Daftar No Siri HM2A0139 | Rantai Tangan | Berat : 14.55 gm', 'hafiz4117', 0),
(306, '2025-08-04', '11:10:23 AM', 'Daftar No Siri HM2A0140 | Rantai Tangan | Berat : 26.62 gm', 'hafiz4117', 0),
(307, '2025-08-04', '11:11:07 AM', 'Daftar No Siri HM2A0141 | Rantai Tangan | Berat : 25.65 gm', 'hafiz4117', 0),
(308, '2025-08-04', '11:11:12 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0141', 'hafiz4117', 0),
(309, '2025-08-04', '11:11:21 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0140', 'hafiz4117', 0),
(310, '2025-08-04', '11:11:27 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0139', 'hafiz4117', 0),
(311, '2025-08-04', '11:12:20 AM', 'Daftar No Siri HM2A0142 | Rantai Tangan | Berat : 2.54 gm', 'hafiz4117', 0),
(312, '2025-08-04', '11:12:53 AM', 'Daftar No Siri HM2A0143 | Rantai Tangan | Berat : 2.61 gm', 'hafiz4117', 0),
(313, '2025-08-04', '11:13:38 AM', 'Daftar No Siri HM2A0144 | Rantai Tangan | Berat : 10.63 gm', 'hafiz4117', 0),
(314, '2025-08-04', '11:14:06 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0144', 'hafiz4117', 0),
(315, '2025-08-04', '11:14:16 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0143', 'hafiz4117', 0),
(316, '2025-08-04', '11:14:23 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0142', 'hafiz4117', 0),
(317, '2025-08-04', '11:15:09 AM', 'Daftar No Siri HM2A0145 | Rantai Tangan | Berat : 28.06 gm', 'hafiz4117', 0),
(318, '2025-08-04', '11:15:52 AM', 'Daftar No Siri HM2A0146 | Rantai Tangan | Berat : 37.86 gm', 'hafiz4117', 0),
(319, '2025-08-04', '11:16:40 AM', 'Daftar No Siri HM2A0147 | Rantai Tangan | Berat : 35.24 gm', 'hafiz4117', 0),
(320, '2025-08-04', '11:16:45 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0147', 'hafiz4117', 0),
(321, '2025-08-04', '11:17:08 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0146', 'hafiz4117', 0),
(322, '2025-08-04', '11:17:19 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0145', 'hafiz4117', 0),
(323, '2025-08-04', '11:18:08 AM', 'Daftar No Siri HM2A0148 | Rantai Tangan | Berat : 54.46 gm', 'hafiz4117', 0),
(324, '2025-08-04', '11:18:40 AM', 'Daftar No Siri HM2A0149 | Rantai Tangan | Berat : 31.97 gm', 'hafiz4117', 0),
(325, '2025-08-04', '11:18:44 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0149', 'hafiz4117', 0),
(326, '2025-08-04', '11:19:12 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0148', 'hafiz4117', 0),
(327, '2025-08-04', '11:24:58 AM', 'Daftar No Siri HM2A0150 | Cincin | Berat : 2.64 gm', 'hafiz4117', 0),
(328, '2025-08-04', '11:25:29 AM', 'Daftar No Siri HM2A0151 | Cincin | Berat : 1.37 gm', 'hafiz4117', 0),
(329, '2025-08-04', '11:25:54 AM', 'Daftar No Siri HM2A0152 | Cincin | Berat : 2.08 gm', 'hafiz4117', 0),
(330, '2025-08-04', '11:26:01 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0152', 'hafiz4117', 0),
(331, '2025-08-04', '11:26:07 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0151', 'hafiz4117', 0),
(332, '2025-08-04', '11:26:11 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0150', 'hafiz4117', 0),
(333, '2025-08-04', '11:26:52 AM', 'Daftar No Siri HM2A0153 | Cincin | Berat : 1.28 gm', 'hafiz4117', 0),
(334, '2025-08-04', '11:27:17 AM', 'Daftar No Siri HM2A0154 | Cincin | Berat : 1.43 gm', 'hafiz4117', 0),
(335, '2025-08-04', '11:27:50 AM', 'Daftar No Siri HM2A0155 | Cincin | Berat : 3.24 gm', 'hafiz4117', 0),
(336, '2025-08-04', '11:27:53 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0155', 'hafiz4117', 0),
(337, '2025-08-04', '11:27:58 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0154', 'hafiz4117', 0),
(338, '2025-08-04', '11:28:01 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0153', 'hafiz4117', 0),
(339, '2025-08-04', '11:29:07 AM', 'Daftar No Siri HM2A0156 | Cincin | Berat : 2.50 gm', 'hafiz4117', 0),
(340, '2025-08-04', '11:29:39 AM', 'Daftar No Siri HM2A0157 | Cincin | Berat : 2.49 gm', 'hafiz4117', 0),
(341, '2025-08-04', '11:30:03 AM', 'Daftar No Siri HM2A0158 | Cincin | Berat : 2.36 gm', 'hafiz4117', 0),
(342, '2025-08-04', '11:30:08 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0158', 'hafiz4117', 0),
(343, '2025-08-04', '11:30:12 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0157', 'hafiz4117', 0),
(344, '2025-08-04', '11:30:15 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0156', 'hafiz4117', 0),
(345, '2025-08-04', '11:30:57 AM', 'Daftar No Siri HM2A0159 | Cincin | Berat : 2.44 gm', 'hafiz4117', 0),
(346, '2025-08-04', '11:31:19 AM', 'Daftar No Siri HM2A0160 | Cincin | Berat : 2.52 gm', 'hafiz4117', 0),
(347, '2025-08-04', '11:31:21 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0160', 'hafiz4117', 0),
(348, '2025-08-04', '11:31:24 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0159', 'hafiz4117', 0),
(349, '2025-08-04', '11:32:05 AM', 'Daftar No Siri HM2A0161 | Cincin | Berat : 2.10 gm', 'hafiz4117', 0),
(350, '2025-08-04', '11:32:30 AM', 'Daftar No Siri HM2A0162 | Cincin | Berat : 2.16 gm', 'hafiz4117', 0),
(351, '2025-08-04', '11:32:47 AM', 'Daftar No Siri HM2A0163 | Cincin | Berat : 2.07 gm', 'hafiz4117', 0),
(352, '2025-08-04', '11:32:50 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0163', 'hafiz4117', 0),
(353, '2025-08-04', '11:32:53 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0162', 'hafiz4117', 0),
(354, '2025-08-04', '11:32:56 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0161', 'hafiz4117', 0),
(355, '2025-08-04', '11:34:18 AM', 'Daftar No Siri HM2A0164 | Cincin | Berat : 1.28 gm', 'hafiz4117', 0),
(356, '2025-08-04', '11:34:50 AM', 'Daftar No Siri HM2A0165 | Cincin | Berat : 1.34 gm', 'hafiz4117', 0),
(357, '2025-08-04', '11:35:09 AM', 'Daftar No Siri HM2A0166 | Cincin | Berat : 2.16 gm', 'hafiz4117', 0),
(358, '2025-08-04', '11:35:22 AM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0166', 'hafiz4117', 0),
(359, '2025-08-04', '11:35:27 AM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0166 Berat : 2.16 gm', 'hafiz4117', 0),
(360, '2025-08-04', '11:35:56 AM', 'Daftar No Siri HM2A0167 | Cincin | Berat : 1.29 gm', 'hafiz4117', 0),
(361, '2025-08-04', '11:35:59 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0167', 'hafiz4117', 0),
(362, '2025-08-04', '11:36:02 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0166', 'hafiz4117', 0),
(363, '2025-08-04', '11:36:06 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0165', 'hafiz4117', 0),
(364, '2025-08-04', '11:36:11 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0164', 'hafiz4117', 0),
(365, '2025-08-04', '11:37:30 AM', 'Daftar No Siri HM2A0168 | Cincin | Berat : 3.12 gm', 'hafiz4117', 0),
(366, '2025-08-04', '11:37:55 AM', 'Daftar No Siri HM2A0169 | Cincin | Berat : 3.41 gm', 'hafiz4117', 0),
(367, '2025-08-04', '11:38:16 AM', 'Daftar No Siri HM2A0170 | Cincin | Berat : 3.18 gm', 'hafiz4117', 0),
(368, '2025-08-04', '11:38:29 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0170', 'hafiz4117', 0),
(369, '2025-08-04', '11:38:33 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0169', 'hafiz4117', 0),
(370, '2025-08-04', '11:38:36 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0168', 'hafiz4117', 0),
(371, '2025-08-04', '11:39:21 AM', 'Daftar No Siri HM2A0171 | Cincin | Berat : 2.14 gm', 'hafiz4117', 0),
(372, '2025-08-04', '11:39:54 AM', 'Daftar No Siri HM2A0172 | Cincin | Berat : 1.42 gm', 'hafiz4117', 0),
(373, '2025-08-04', '11:40:55 AM', 'Daftar No Siri HM2A0173 | Cincin | Berat : 2.29 gm', 'hafiz4117', 0),
(374, '2025-08-04', '11:41:17 AM', 'Daftar No Siri HM2A0174 | Cincin | Berat : 2.16 gm', 'hafiz4117', 0),
(375, '2025-08-04', '11:41:46 AM', 'Daftar No Siri HM2A0175 | Cincin | Berat : 3.68 gm', 'hafiz4117', 0),
(376, '2025-08-04', '11:42:13 AM', 'Daftar No Siri HM2A0176 | Cincin | Berat : 1.88 gm', 'hafiz4117', 0),
(377, '2025-08-04', '11:42:36 AM', 'Daftar No Siri HM2A0177 | Cincin | Berat : 2.68 gm', 'hafiz4117', 0),
(378, '2025-08-04', '11:42:52 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0177', 'hafiz4117', 0),
(379, '2025-08-04', '11:42:55 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0176', 'hafiz4117', 0),
(380, '2025-08-04', '11:43:00 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0175', 'hafiz4117', 0),
(381, '2025-08-04', '11:43:05 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0174', 'hafiz4117', 0),
(382, '2025-08-04', '11:43:41 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0173', 'hafiz4117', 0),
(383, '2025-08-04', '11:43:48 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0172', 'hafiz4117', 0),
(384, '2025-08-04', '11:43:53 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0171', 'hafiz4117', 0),
(385, '2025-08-04', '11:45:21 AM', 'Daftar No Siri HM2A0178 | Cincin | Berat : 3.34 gm', 'hafiz4117', 0),
(386, '2025-08-04', '11:45:54 AM', 'Daftar No Siri HM2A0179 | Cincin | Berat : 4.16 gm', 'hafiz4117', 0),
(387, '2025-08-04', '11:46:18 AM', 'Daftar No Siri HM2A0180 | Cincin | Berat : 4.26 gm', 'hafiz4117', 0),
(388, '2025-08-04', '11:46:25 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0180', 'hafiz4117', 0),
(389, '2025-08-04', '11:46:29 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0179', 'hafiz4117', 0),
(390, '2025-08-04', '11:46:32 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0178', 'hafiz4117', 0),
(391, '2025-08-04', '11:47:14 AM', 'Daftar No Siri HM2A0181 | Cincin | Berat : 3.03 gm', 'hafiz4117', 0),
(392, '2025-08-04', '11:47:37 AM', 'Daftar No Siri HM2A0182 | Cincin | Berat : 2.81 gm', 'hafiz4117', 0),
(393, '2025-08-04', '11:48:03 AM', 'Daftar No Siri HM2A0183 | Cincin | Berat : 3.23 gm', 'hafiz4117', 0),
(394, '2025-08-04', '11:48:06 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0183', 'hafiz4117', 0),
(395, '2025-08-04', '11:48:10 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0182', 'hafiz4117', 0),
(396, '2025-08-04', '11:48:13 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0181', 'hafiz4117', 0),
(397, '2025-08-04', '11:48:53 AM', 'Daftar No Siri HM2A0184 | Cincin | Berat : 2.84 gm', 'hafiz4117', 0),
(398, '2025-08-04', '11:49:25 AM', 'Daftar No Siri HM2A0185 | Cincin | Berat : 4.13 gm', 'hafiz4117', 0),
(399, '2025-08-04', '11:49:28 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0185', 'hafiz4117', 0),
(400, '2025-08-04', '11:49:31 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0184', 'hafiz4117', 0),
(401, '2025-08-04', '11:50:33 AM', 'Daftar No Siri HM2A0186 | Cincin | Berat : 4.88 gm', 'hafiz4117', 0),
(402, '2025-08-04', '11:51:15 AM', 'Daftar No Siri HM2A0187 | Cincin | Berat : 6.81 gm', 'hafiz4117', 0),
(403, '2025-08-04', '11:51:40 AM', 'Daftar No Siri HM2A0188 | Cincin | Berat : 3.58 gm', 'hafiz4117', 0),
(404, '2025-08-04', '11:52:07 AM', 'Daftar No Siri HM2A0189 | Cincin | Berat : 4.98 gm', 'hafiz4117', 0),
(405, '2025-08-04', '11:52:13 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0189', 'hafiz4117', 0),
(406, '2025-08-04', '11:52:16 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0188', 'hafiz4117', 0),
(407, '2025-08-04', '11:52:20 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0187', 'hafiz4117', 0),
(408, '2025-08-04', '11:52:24 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0186', 'hafiz4117', 0),
(409, '2025-08-04', '11:53:05 AM', 'Daftar No Siri HM2A0190 | Cincin | Berat : 5.74 gm', 'hafiz4117', 0),
(410, '2025-08-04', '11:53:30 AM', 'Daftar No Siri HM2A0191 | Cincin | Berat : 5.52 gm', 'hafiz4117', 0),
(411, '2025-08-04', '11:54:01 AM', 'Daftar No Siri HM2A0192 | Cincin | Berat : 7.39 gm', 'hafiz4117', 0),
(412, '2025-08-04', '11:54:22 AM', 'Daftar No Siri HM2A0193 | Cincin | Berat : 4.12 gm', 'hafiz4117', 0),
(413, '2025-08-04', '11:54:26 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0193', 'hafiz4117', 0),
(414, '2025-08-04', '11:54:29 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0192', 'hafiz4117', 0),
(415, '2025-08-04', '11:54:32 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0191', 'hafiz4117', 0),
(416, '2025-08-04', '11:54:34 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0190', 'hafiz4117', 0),
(417, '2025-08-04', '11:55:39 AM', 'Daftar No Siri HM2A0194 | Cincin | Berat : 7.15 gm', 'hafiz4117', 0),
(418, '2025-08-04', '11:56:09 AM', 'Daftar No Siri HM2A0195 | Cincin | Berat : 4.76 gm', 'hafiz4117', 0),
(419, '2025-08-04', '11:56:38 AM', 'Daftar No Siri HM2A0196 | Cincin | Berat : 3.83 gm', 'hafiz4117', 0),
(420, '2025-08-04', '11:56:40 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0196', 'hafiz4117', 0),
(421, '2025-08-04', '11:56:44 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0195', 'hafiz4117', 0),
(422, '2025-08-04', '11:56:47 AM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0194', 'hafiz4117', 0),
(423, '2025-08-04', '11:59:34 AM', 'Daftar No Siri HM2A0197 | Cincin | Berat : 0.74 gm', 'hafiz4117', 0),
(424, '2025-08-04', '12:00:00 PM', 'Daftar No Siri HM2A0198 | Cincin | Berat : 1.63 gm', 'hafiz4117', 0),
(425, '2025-08-04', '12:00:19 PM', 'Daftar No Siri HM2A0199 | Cincin | Berat : 0.78 gm', 'hafiz4117', 0),
(426, '2025-08-04', '12:00:57 PM', 'Daftar No Siri HM2A0200 | Cincin | Berat : 0.84 gm', 'hafiz4117', 0),
(427, '2025-08-04', '12:01:00 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0200', 'hafiz4117', 0),
(428, '2025-08-04', '12:01:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0199', 'hafiz4117', 0),
(429, '2025-08-04', '12:01:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0198', 'hafiz4117', 0),
(430, '2025-08-04', '12:01:10 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0197', 'hafiz4117', 0),
(431, '2025-08-04', '12:02:30 PM', 'Daftar No Siri HM2A0201 | Cincin | Berat : 0.35 gm', 'hafiz4117', 0),
(432, '2025-08-04', '12:02:49 PM', 'Daftar No Siri HM2A0202 | Cincin | Berat : 0.57 gm', 'hafiz4117', 0),
(433, '2025-08-04', '12:03:22 PM', 'Daftar No Siri HM2A0203 | Cincin | Berat : 0.47 gm', 'hafiz4117', 0),
(434, '2025-08-04', '12:03:44 PM', 'Daftar No Siri HM2A0204 | Cincin | Berat : 0.44 gm', 'hafiz4117', 0),
(435, '2025-08-04', '12:04:02 PM', 'Daftar No Siri HM2A0205 | Cincin | Berat : 0.63 gm', 'hafiz4117', 0),
(436, '2025-08-04', '12:04:21 PM', 'Daftar No Siri HM2A0206 | Cincin | Berat : 0.34 gm', 'hafiz4117', 0),
(437, '2025-08-04', '12:04:38 PM', 'Daftar No Siri HM2A0207 | Cincin | Berat : 0.56 gm', 'hafiz4117', 0),
(438, '2025-08-04', '12:04:56 PM', 'Daftar No Siri HM2A0208 | Cincin | Berat : 0.38 gm', 'hafiz4117', 0),
(439, '2025-08-04', '12:04:59 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0208', 'hafiz4117', 0),
(440, '2025-08-04', '12:05:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0207', 'hafiz4117', 0),
(441, '2025-08-04', '12:05:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0206', 'hafiz4117', 0),
(442, '2025-08-04', '12:05:10 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0205', 'hafiz4117', 0),
(443, '2025-08-04', '12:05:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0204', 'hafiz4117', 0),
(444, '2025-08-04', '12:05:15 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0203', 'hafiz4117', 0),
(445, '2025-08-04', '12:05:19 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0202', 'hafiz4117', 0),
(446, '2025-08-04', '12:05:22 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0201', 'hafiz4117', 0),
(447, '2025-08-04', '12:07:42 PM', 'Daftar No Siri HM2A0209 | Cincin | Berat : 0.35 gm', 'hafiz4117', 0),
(448, '2025-08-04', '12:08:04 PM', 'Daftar No Siri HM2A0210 | Cincin | Berat : 0.31 gm', 'hafiz4117', 0),
(449, '2025-08-04', '12:08:23 PM', 'Daftar No Siri HM2A0211 | Cincin | Berat : 0.27 gm', 'hafiz4117', 0),
(450, '2025-08-04', '12:08:46 PM', 'Daftar No Siri HM2A0212 | Cincin | Berat : 0.37 gm', 'hafiz4117', 0),
(451, '2025-08-04', '12:09:11 PM', 'Daftar No Siri HM2A0213 | Cincin | Berat : 0.38 gm', 'hafiz4117', 0),
(452, '2025-08-04', '12:09:40 PM', 'Daftar No Siri HM2A0214 | Cincin | Berat : 0.28 gm', 'hafiz4117', 0),
(453, '2025-08-04', '12:10:08 PM', 'Daftar No Siri HM2A0215 | Cincin | Berat : 0.30 gm', 'hafiz4117', 0),
(454, '2025-08-04', '12:10:30 PM', 'Daftar No Siri HM2A0216 | Cincin | Berat : 0.29 gm', 'hafiz4117', 0),
(455, '2025-08-04', '12:10:52 PM', 'Daftar No Siri HM2A0217 | Cincin | Berat : 0.31 gm', 'hafiz4117', 0),
(456, '2025-08-04', '12:11:15 PM', 'Daftar No Siri HM2A0218 | Cincin | Berat : 0.27 gm', 'hafiz4117', 0),
(457, '2025-08-04', '12:11:35 PM', 'Daftar No Siri HM2A0219 | Cincin | Berat : 0.27 gm', 'hafiz4117', 0),
(458, '2025-08-04', '12:11:59 PM', 'Daftar No Siri HM2A0220 | Cincin | Berat : 0.38 gm', 'hafiz4117', 0),
(459, '2025-08-04', '12:12:18 PM', 'Daftar No Siri HM2A0221 | Cincin | Berat : 0.34 gm', 'hafiz4117', 0),
(460, '2025-08-04', '12:12:36 PM', 'Daftar No Siri HM2A0222 | Cincin | Berat : 0.38 gm', 'hafiz4117', 0),
(461, '2025-08-04', '12:12:55 PM', 'Daftar No Siri HM2A0223 | Cincin | Berat : 0.37 gm', 'hafiz4117', 0),
(462, '2025-08-04', '12:12:59 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0223', 'hafiz4117', 0),
(463, '2025-08-04', '12:13:02 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0222', 'hafiz4117', 0),
(464, '2025-08-04', '12:13:25 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0221', 'hafiz4117', 0),
(465, '2025-08-04', '12:13:28 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0220', 'hafiz4117', 0),
(466, '2025-08-04', '12:13:31 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0219', 'hafiz4117', 0),
(467, '2025-08-04', '12:13:34 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0218', 'hafiz4117', 0),
(468, '2025-08-04', '12:13:37 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0217', 'hafiz4117', 0),
(469, '2025-08-04', '12:13:40 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0216', 'hafiz4117', 0),
(470, '2025-08-04', '12:13:43 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0215', 'hafiz4117', 0),
(471, '2025-08-04', '12:13:47 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0214', 'hafiz4117', 0),
(472, '2025-08-04', '12:13:50 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0213', 'hafiz4117', 0),
(473, '2025-08-04', '12:13:53 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0212', 'hafiz4117', 0),
(474, '2025-08-04', '12:13:56 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0211', 'hafiz4117', 0),
(475, '2025-08-04', '12:13:59 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0210', 'hafiz4117', 0),
(476, '2025-08-04', '12:14:02 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0209', 'hafiz4117', 0),
(477, '2025-08-04', '12:14:52 PM', 'Daftar No Siri HM2A0224 | Cincin | Berat : 0.70 gm', 'hafiz4117', 0),
(478, '2025-08-04', '12:15:12 PM', 'Daftar No Siri HM2A0225 | Cincin | Berat : 0.63 gm', 'hafiz4117', 0),
(479, '2025-08-04', '12:15:15 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0225', 'hafiz4117', 0),
(480, '2025-08-04', '12:15:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0224', 'hafiz4117', 0),
(481, '2025-08-04', '12:18:48 PM', 'Daftar No Siri HM2A0226 | Cincin | Berat : 0.76 gm', 'hafiz4117', 0),
(482, '2025-08-04', '12:19:05 PM', 'Daftar No Siri HM2A0227 | Cincin | Berat : 0.81 gm', 'hafiz4117', 0),
(483, '2025-08-04', '12:19:25 PM', 'Daftar No Siri HM2A0228 | Cincin | Berat : 0.78 gm', 'hafiz4117', 0),
(484, '2025-08-04', '12:19:49 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0227', 'hafiz4117', 0),
(485, '2025-08-04', '12:20:04 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0227 Berat : 0.81 gm', 'hafiz4117', 0),
(486, '2025-08-04', '12:20:20 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0228', 'hafiz4117', 0),
(487, '2025-08-04', '12:20:24 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0228 Berat : 0.78 gm', 'hafiz4117', 0);
INSERT INTO `audit_trail` (`recno`, `tarikh`, `masa`, `logs_trail`, `idstaff`, `jana`) VALUES
(488, '2025-08-04', '12:20:53 PM', 'Daftar No Siri HM2A0229 | Cincin | Berat : 0.65 gm', 'hafiz4117', 0),
(489, '2025-08-04', '12:21:15 PM', 'Daftar No Siri HM2A0230 | Cincin | Berat : 0.51 gm', 'hafiz4117', 0),
(490, '2025-08-04', '12:21:31 PM', 'Daftar No Siri HM2A0231 | Cincin | Berat : 0.65 gm', 'hafiz4117', 0),
(491, '2025-08-04', '12:21:46 PM', 'Daftar No Siri HM2A0232 | Cincin | Berat : 0.60 gm', 'hafiz4117', 0),
(492, '2025-08-04', '12:22:00 PM', 'Daftar No Siri HM2A0233 | Cincin | Berat : 0.74 gm', 'hafiz4117', 0),
(493, '2025-08-04', '12:22:15 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0233', 'hafiz4117', 0),
(494, '2025-08-04', '12:22:17 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0232', 'hafiz4117', 0),
(495, '2025-08-04', '12:22:20 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0231', 'hafiz4117', 0),
(496, '2025-08-04', '12:22:23 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0230', 'hafiz4117', 0),
(497, '2025-08-04', '12:22:26 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0229', 'hafiz4117', 0),
(498, '2025-08-04', '12:22:29 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0228', 'hafiz4117', 0),
(499, '2025-08-04', '12:22:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0227', 'hafiz4117', 0),
(500, '2025-08-04', '12:22:35 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0226', 'hafiz4117', 0),
(501, '2025-08-04', '12:23:23 PM', 'Daftar No Siri HM2A0234 | Cincin | Berat : 0.76 gm', 'hafiz4117', 0),
(502, '2025-08-04', '12:23:42 PM', 'Daftar No Siri HM2A0235 | Cincin | Berat : 0.81 gm', 'hafiz4117', 0),
(503, '2025-08-04', '12:23:44 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0235', 'hafiz4117', 0),
(504, '2025-08-04', '12:23:47 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0234', 'hafiz4117', 0),
(505, '2025-08-04', '12:24:48 PM', 'Daftar No Siri HM2A0236 | Cincin | Berat : 1.26 gm', 'hafiz4117', 0),
(506, '2025-08-04', '12:25:12 PM', 'Daftar No Siri HM2A0237 | Cincin | Berat : 1.07 gm', 'hafiz4117', 0),
(507, '2025-08-04', '12:25:55 PM', 'Daftar No Siri HM2A0238 | Cincin | Berat : 1.31 gm', 'hafiz4117', 0),
(508, '2025-08-04', '12:26:18 PM', 'Daftar No Siri HM2A0239 | Cincin | Berat : 0.69 gm', 'hafiz4117', 0),
(509, '2025-08-04', '12:26:38 PM', 'Daftar No Siri HM2A0240 | Cincin | Berat : 0.48 gm', 'hafiz4117', 0),
(510, '2025-08-04', '12:26:59 PM', 'Daftar No Siri HM2A0241 | Cincin | Berat : 0.96 gm', 'hafiz4117', 0),
(511, '2025-08-04', '12:27:23 PM', 'Daftar No Siri HM2A0242 | Cincin | Berat : 1.03 gm', 'hafiz4117', 0),
(512, '2025-08-04', '12:27:43 PM', 'Daftar No Siri HM2A0243 | Cincin | Berat : 1.08 gm', 'hafiz4117', 0),
(513, '2025-08-04', '12:27:46 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0243', 'hafiz4117', 0),
(514, '2025-08-04', '12:27:58 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0242', 'hafiz4117', 0),
(515, '2025-08-04', '12:28:00 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0241', 'hafiz4117', 0),
(516, '2025-08-04', '12:28:01 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0240', 'hafiz4117', 0),
(517, '2025-08-04', '12:28:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0239', 'hafiz4117', 0),
(518, '2025-08-04', '12:28:07 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0238', 'hafiz4117', 0),
(519, '2025-08-04', '12:28:10 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0237', 'hafiz4117', 0),
(520, '2025-08-04', '12:28:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0236', 'hafiz4117', 0),
(521, '2025-08-04', '12:32:28 PM', 'Daftar No Siri HM2A0244 | Cincin | Berat : 3.11 gm', 'hafiz4117', 0),
(522, '2025-08-04', '12:32:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0244', 'hafiz4117', 0),
(523, '2025-08-04', '12:39:03 PM', 'Pengurus hapus rekod peti besi Pendahuluan Dari HQ Tunai Keluar RM 0.00 | Tunai Masuk RM 12,552.00  pada tarikh 04-08-2025', 'hafiz4117', 0),
(524, '2025-08-04', '12:40:07 PM', 'Pengurus hapus rekod peti besi Serahan Kepada HQ Tunai Keluar RM 10,000.00 | Tunai Masuk RM 0.00  pada tarikh 04-08-2025', 'hafiz4117', 0),
(525, '2025-08-04', '12:45:57 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(526, '2025-08-04', '12:53:33 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(527, '2025-08-04', '12:54:02 PM', 'Klik butang Trade In', 'TIEY', 0),
(528, '2025-08-04', '1:00:40 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(529, '2025-08-04', '1:06:13 PM', 'Klik butang Trade In', 'TIEY', 0),
(530, '2025-08-04', '1:06:22 PM', 'Klik butang Trade In', 'TIEY', 0),
(531, '2025-08-04', '1:10:13 PM', 'Klik butang Trade In', 'TIEY', 0),
(532, '2025-08-04', '1:10:17 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(533, '2025-08-04', '1:14:32 PM', 'Klik butang Trade In', 'TIEY', 0),
(534, '2025-08-04', '1:14:36 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(535, '2025-08-04', '1:18:59 PM', 'Scan No Siri : HM2A0090', 'TIEY', 0),
(536, '2025-08-04', '1:19:19 PM', 'Klik butang Ubah Berat No Siri : HM2A0090', 'TIEY', 0),
(537, '2025-08-04', '1:22:03 PM', 'Terima Ubah Berat : 5.87 gm | No Siri : HM2A0090', 'TIEY', 0),
(538, '2025-08-04', '1:22:13 PM', 'Klik Bayar/Paid : RM2890.42 | No Resit 81:61/HM0408202512533-0067-TIEY', 'TIEY', 0),
(539, '2025-08-04', '1:23:00 PM', 'Resit Jualan : 81:61/HM0408202512533-0067-TIEY', 'TIEY', 0),
(540, '2025-08-04', '1:23:00 PM', 'No Siri Jual : HM2A0090 | No Resit 81:61/HM0408202512533-0067-TIEY', 'TIEY', 0),
(541, '2025-08-04', '1:23:00 PM', 'Cetak Resit : RM2890 | No Resit 81:61/HM0408202512533-0067-TIEY', 'TIEY', 0),
(542, '2025-08-04', '1:25:11 PM', 'Klik butang Trade In', 'TIEY', 0),
(543, '2025-08-04', '1:27:10 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(544, '2025-08-04', '1:31:25 PM', 'Scan No Siri : HM2A0244', 'TIEY', 0),
(545, '2025-08-04', '1:32:01 PM', 'Klik Bayar/Paid : RM1552.60 | No Resit 81:61/HM0408202512303-0068-TIEY', 'TIEY', 0),
(546, '2025-08-04', '1:32:40 PM', 'Resit Jualan : 81:61/HM0408202512303-0068-TIEY', 'TIEY', 0),
(547, '2025-08-04', '1:32:40 PM', 'No Siri Jual : HM2A0244 | No Resit 81:61/HM0408202512303-0068-TIEY', 'TIEY', 0),
(548, '2025-08-04', '1:32:40 PM', 'Cetak Resit : RM1500 | No Resit 81:61/HM0408202512303-0068-TIEY', 'TIEY', 0),
(549, '2025-08-04', '1:40:47 PM', 'Klik butang Denominasi', 'TIEY', 0),
(550, '2025-08-04', '1:42:24 PM', 'Klik butang Trade In', 'TIEY', 0),
(551, '2025-08-04', '1:44:16 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(552, '2025-08-04', '1:53:39 PM', 'Klik butang Trade In', 'TIEY', 0),
(553, '2025-08-04', '1:53:45 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(554, '2025-08-04', '1:55:49 PM', 'Klik butang Trade In', 'TIEY', 0),
(555, '2025-08-04', '1:55:54 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(556, '2025-08-04', '1:57:30 PM', 'Klik butang Trade In', 'TIEY', 0),
(557, '2025-08-04', '1:59:57 PM', 'Klik butang Trade In', 'TIEY', 0),
(558, '2025-08-04', '2:00:02 PM', 'Klik butang Trade In', 'TIEY', 0),
(559, '2025-08-04', '2:38:13 PM', 'Scan No Siri : HM2A0153', 'TIEY', 0),
(560, '2025-08-04', '2:38:55 PM', 'Klik Bayar/Paid : RM676.70 | No Resit 81:61/HM0408202513244-0069-TIEY', 'TIEY', 0),
(561, '2025-08-04', '2:40:03 PM', 'Resit Jualan : 81:61/HM0408202513244-0069-TIEY', 'TIEY', 0),
(562, '2025-08-04', '2:40:03 PM', 'No Siri Jual : HM2A0153 | No Resit 81:61/HM0408202513244-0069-TIEY', 'TIEY', 0),
(563, '2025-08-04', '2:40:03 PM', 'Cetak Resit : RM670 | No Resit 81:61/HM0408202513244-0069-TIEY', 'TIEY', 0),
(564, '2025-08-04', '2:43:41 PM', 'Scan No Siri : HM2A0182', 'TIEY', 0),
(565, '2025-08-04', '2:43:54 PM', 'Klik butang Ubah Berat No Siri : HM2A0182', 'TIEY', 0),
(566, '2025-08-04', '2:44:09 PM', 'Terima Ubah Berat : 2.75 gm | No Siri : HM2A0182', 'TIEY', 0),
(567, '2025-08-04', '2:45:00 PM', 'Klik Bayar/Paid : RM1386.03 | No Resit 81:61/HM0408202524006-0070-TIEY', 'TIEY', 0),
(568, '2025-08-04', '2:47:21 PM', 'Resit Jualan : 81:61/HM0408202524006-0070-TIEY', 'TIEY', 0),
(569, '2025-08-04', '2:47:21 PM', 'No Siri Jual : HM2A0182 | No Resit 81:61/HM0408202524006-0070-TIEY', 'TIEY', 0),
(570, '2025-08-04', '2:47:22 PM', 'Cetak Resit : RM1336 | No Resit 81:61/HM0408202524006-0070-TIEY', 'TIEY', 0),
(571, '2025-08-04', '3:32:01 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(572, '2025-08-04', '3:37:05 PM', 'Klik butang Semak Stok', 'TIEY', 0),
(573, '2025-08-04', '3:37:06 PM', 'Klik butang Semak Stok', 'TIEY', 0),
(574, '2025-08-04', '3:37:26 PM', 'Klik butang Display Emas', 'TIEY', 0),
(575, '2025-08-04', '3:37:51 PM', 'Klik butang Semak Stok', 'TIEY', 0),
(576, '2025-08-04', '3:45:02 PM', 'Klik butang Trade In', 'TIEY', 0),
(577, '2025-08-04', '3:47:12 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(578, '2025-08-04', '3:49:37 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(579, '2025-08-04', '3:51:28 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(580, '2025-08-04', '3:54:37 PM', 'Scan No Siri : HM2A0243', 'TIEY', 0),
(581, '2025-08-04', '3:54:49 PM', 'Klik Bayar/Paid : RM589.71 | No Resit 81:61/HM0408202535127-0072-TIEY', 'TIEY', 0),
(582, '2025-08-04', '3:55:25 PM', 'Resit Jualan : 81:61/HM0408202535127-0072-TIEY', 'TIEY', 0),
(583, '2025-08-04', '3:55:25 PM', 'No Siri Jual : HM2A0243 | No Resit 81:61/HM0408202535127-0072-TIEY', 'TIEY', 0),
(584, '2025-08-04', '3:55:26 PM', 'Cetak Resit : RM580 | No Resit 81:61/HM0408202535127-0072-TIEY', 'TIEY', 0),
(585, '2025-08-04', '4:17:43 PM', 'Daftar Produk CS HIJAU | SKU4154', 'hafiz4117', 0),
(586, '2025-08-04', '4:19:16 PM', 'Daftar Produk CS HIJAU | SKU9399', 'hafiz4117', 0),
(587, '2025-08-04', '4:22:45 PM', 'Daftar Produk CS HIJAU | SKU8762', 'hafiz4117', 0),
(588, '2025-08-04', '4:23:49 PM', 'Daftar Produk CS HIJAU | SKU6308', 'hafiz4117', 0),
(589, '2025-08-04', '4:26:27 PM', 'Daftar Produk CS HIJAU | SKU1337', 'hafiz4117', 0),
(590, '2025-08-04', '4:27:04 PM', 'Daftar Produk CS HIJAU | SKU7136', 'hafiz4117', 0),
(591, '2025-08-04', '4:27:30 PM', 'Daftar Produk CS HIJAU | SKU6631', 'hafiz4117', 0),
(592, '2025-08-04', '4:28:43 PM', 'Daftar Produk CS HIJAU | SKU4974', 'hafiz4117', 0),
(593, '2025-08-04', '4:29:20 PM', 'Daftar Produk CS HIJAU | SKU7021', 'hafiz4117', 0),
(594, '2025-08-04', '4:31:23 PM', 'Daftar Produk CS HIJAU | SKU6948', 'hafiz4117', 0),
(595, '2025-08-04', '4:32:54 PM', 'Daftar Produk CS HIJAU  | SKU6573', 'hafiz4117', 0),
(596, '2025-08-04', '4:33:11 PM', 'Daftar Produk CS HIJAU | SKU9407', 'hafiz4117', 0),
(597, '2025-08-04', '4:34:05 PM', 'Daftar Produk CS HIJAU | SKU622', 'hafiz4117', 0),
(598, '2025-08-04', '4:39:44 PM', 'Klik butang Denominasi', 'TIEY', 0),
(599, '2025-08-04', '4:47:42 PM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(600, '2025-08-04', '4:48:45 PM', 'Klik Bayar/Paid : RM25.00 | No Resit 81:61/HM0408202535528-0073-TIEY', 'TIEY', 0),
(601, '2025-08-04', '4:49:08 PM', 'Resit Jualan : 81:61/HM0408202535528-0073-TIEY', 'TIEY', 0),
(602, '2025-08-04', '4:49:08 PM', 'No Siri Jual : Add On-60356/TIEY/81:61 | No Resit 81:61/HM0408202535528-0073-TIEY', 'TIEY', 0),
(603, '2025-08-04', '4:49:08 PM', 'Cetak Resit : RM25 | No Resit 81:61/HM0408202535528-0073-TIEY', 'TIEY', 0),
(604, '2025-08-04', '4:51:54 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(605, '2025-08-04', '4:52:55 PM', 'Daftar Produk CS HIJAU | SKU2203', 'hafiz4117', 0),
(606, '2025-08-04', '4:53:44 PM', 'Daftar Produk CS HIJAU | SKU8533', 'hafiz4117', 0),
(607, '2025-08-04', '4:54:09 PM', 'Daftar Produk CS HIJAU | SKU6044', 'hafiz4117', 0),
(608, '2025-08-04', '4:54:38 PM', 'Daftar Produk CS HIJAU | SKU772', 'hafiz4117', 0),
(609, '2025-08-04', '4:55:05 PM', 'Daftar Produk CS HIJAU | SKU2254', 'hafiz4117', 0),
(610, '2025-08-04', '4:55:46 PM', 'Daftar Produk CS HIJAU | SKU563', 'hafiz4117', 0),
(611, '2025-08-04', '4:56:07 PM', 'Daftar Produk CS HIJAU | SKU4583', 'hafiz4117', 0),
(612, '2025-08-04', '4:56:33 PM', 'Daftar Produk CS HIJAU | SKU9343', 'hafiz4117', 0),
(613, '2025-08-04', '4:57:32 PM', 'Daftar Produk CS HIJAU | SKU4715', 'hafiz4117', 0),
(614, '2025-08-04', '4:59:06 PM', 'Daftar Produk CS BIRU | SKU8052', 'hafiz4117', 0),
(615, '2025-08-04', '4:59:35 PM', 'Daftar Produk CS BIRU | SKU7390', 'hafiz4117', 0),
(616, '2025-08-04', '5:00:13 PM', 'Daftar Produk CS BIRU | SKU688', 'hafiz4117', 0),
(617, '2025-08-04', '5:00:42 PM', 'Daftar Produk CS BIRU | SKU8068', 'hafiz4117', 0),
(618, '2025-08-04', '5:01:12 PM', 'Daftar Produk CS BIRU | SKU10000', 'hafiz4117', 0),
(619, '2025-08-04', '5:02:10 PM', 'Daftar Produk CS BIRU | SKU8685', 'hafiz4117', 0),
(620, '2025-08-04', '5:02:41 PM', 'Daftar Produk CS BIRU | SKU7331', 'hafiz4117', 0),
(621, '2025-08-04', '5:03:12 PM', 'Daftar Produk CS BIRU | SKU9857', 'hafiz4117', 0),
(622, '2025-08-04', '5:03:37 PM', 'Daftar Produk CS BIRU | SKU4831', 'hafiz4117', 0),
(623, '2025-08-04', '5:04:02 PM', 'Daftar Produk CS BIRU | SKU6279', 'hafiz4117', 0),
(624, '2025-08-04', '5:04:41 PM', 'Daftar Produk CS BIRU | SKU5930', 'hafiz4117', 0),
(625, '2025-08-04', '5:05:07 PM', 'Daftar Produk CS BIRU | SKU3909', 'hafiz4117', 0),
(626, '2025-08-04', '5:05:35 PM', 'Daftar Produk CS BIRU | SKU3839', 'hafiz4117', 0),
(627, '2025-08-04', '5:05:55 PM', 'Daftar Produk CS BIRU | SKU2242', 'hafiz4117', 0),
(628, '2025-08-04', '5:06:16 PM', 'Daftar Produk CS BIRU | SKU4914', 'hafiz4117', 0),
(629, '2025-08-04', '5:07:25 PM', 'Daftar Produk CS HIJAU | SKU793', 'hafiz4117', 0),
(630, '2025-08-04', '5:07:51 PM', 'Daftar Produk CS PUTIH | SKU1111', 'hafiz4117', 0),
(631, '2025-08-04', '5:08:20 PM', 'Daftar Produk CS PUTIH | SKU390', 'hafiz4117', 0),
(632, '2025-08-04', '5:08:46 PM', 'Daftar Produk CS PUTIH | SKU8979', 'hafiz4117', 0),
(633, '2025-08-04', '5:09:35 PM', 'Daftar Produk CS PUTIH | SKU4347', 'hafiz4117', 0),
(634, '2025-08-04', '5:10:08 PM', 'Daftar Produk CS PUTIH | SKU1874', 'hafiz4117', 0),
(635, '2025-08-04', '5:10:42 PM', 'Daftar Produk CS PUTIH | SKU261', 'hafiz4117', 0),
(636, '2025-08-04', '5:11:04 PM', 'Daftar Produk CS PUTIH | SKU9359', 'hafiz4117', 0),
(637, '2025-08-04', '5:11:28 PM', 'Daftar Produk CS PUTIH | SKU206', 'hafiz4117', 0),
(638, '2025-08-04', '5:11:57 PM', 'Daftar Produk CS PUTIH | SKU8976', 'hafiz4117', 0),
(639, '2025-08-04', '5:12:27 PM', 'Daftar Produk CS PUTIH  | SKU1690', 'hafiz4117', 0),
(640, '2025-08-04', '5:12:58 PM', 'Daftar Produk CS PUTIH | SKU3653', 'hafiz4117', 0),
(641, '2025-08-04', '5:13:25 PM', 'Daftar Produk CS PUTIH | SKU9956', 'hafiz4117', 0),
(642, '2025-08-04', '5:13:48 PM', 'Daftar Produk CS PUTIH  | SKU3014', 'hafiz4117', 0),
(643, '2025-08-04', '5:14:45 PM', 'Daftar Produk CS HERMES | SKU1899', 'hafiz4117', 0),
(644, '2025-08-04', '5:15:14 PM', 'Daftar Produk C.LV | SKU6901', 'hafiz4117', 0),
(645, '2025-08-04', '5:15:45 PM', 'Daftar Produk CS $ | SKU6188', 'hafiz4117', 0),
(646, '2025-08-04', '5:16:14 PM', 'Daftar Produk CS $ | SKU6314', 'hafiz4117', 0),
(647, '2025-08-04', '5:16:36 PM', 'Daftar Produk C.LV | SKU5554', 'hafiz4117', 0),
(648, '2025-08-04', '5:17:03 PM', 'Daftar Produk CS GUCCI | SKU3265', 'hafiz4117', 0),
(649, '2025-08-04', '5:17:57 PM', 'Daftar Produk CS KUNING | SKU5366', 'hafiz4117', 0),
(650, '2025-08-04', '5:18:29 PM', 'Daftar Produk CS KUNING | SKU4535', 'hafiz4117', 0),
(651, '2025-08-04', '5:18:51 PM', 'Daftar Produk CS KUNING | SKU2021', 'hafiz4117', 0),
(652, '2025-08-04', '5:19:16 PM', 'Daftar Produk CS KUNING | SKU1793', 'hafiz4117', 0),
(653, '2025-08-04', '5:20:04 PM', 'Daftar Produk CS PURPLE | SKU628', 'hafiz4117', 0),
(654, '2025-08-04', '5:20:25 PM', 'Daftar Produk CS HITAM | SKU590', 'hafiz4117', 0),
(655, '2025-08-04', '5:21:12 PM', 'Pengurus hafiz4117 Hapus Produk SKU : SKU590', 'hafiz4117', 0),
(656, '2025-08-04', '5:21:52 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(657, '2025-08-04', '5:22:49 PM', 'Daftar Produk CS HITAM | SKU5691', 'hafiz4117', 0),
(658, '2025-08-04', '5:23:15 PM', 'Daftar Produk CS BIRU | SKU1654', 'hafiz4117', 0),
(659, '2025-08-04', '5:23:47 PM', 'Daftar Produk CS HITAM | SKU1069', 'hafiz4117', 0),
(660, '2025-08-04', '5:25:17 PM', 'Daftar Produk CS MERAH | SKU2865', 'hafiz4117', 0),
(661, '2025-08-04', '5:25:39 PM', 'Daftar Produk CS MERAH | SKU8534', 'hafiz4117', 0),
(662, '2025-08-04', '5:26:07 PM', 'Daftar Produk CS MERAH | SKU4968', 'hafiz4117', 0),
(663, '2025-08-04', '5:26:28 PM', 'Daftar Produk CS MERAH | SKU4199', 'hafiz4117', 0),
(664, '2025-08-04', '5:26:57 PM', 'Daftar Produk CS MERAH | SKU4414', 'hafiz4117', 0),
(665, '2025-08-04', '5:27:18 PM', 'Daftar Produk CS MERAH | SKU8556', 'hafiz4117', 0),
(666, '2025-08-04', '5:27:42 PM', 'Daftar Produk CS MERAH | SKU6383', 'hafiz4117', 0),
(667, '2025-08-04', '5:28:07 PM', 'Pengurus hafiz4117 Hapus Produk SKU : SKU6383', 'hafiz4117', 0),
(668, '2025-08-04', '5:28:28 PM', 'Daftar Produk CS MERAH | SKU7591', 'hafiz4117', 0),
(669, '2025-08-04', '5:28:48 PM', 'Daftar Produk CS MERAH | SKU6101', 'hafiz4117', 0),
(670, '2025-08-04', '5:29:19 PM', 'Daftar Produk CS MERAH | SKU6138', 'hafiz4117', 0),
(671, '2025-08-04', '5:29:37 PM', 'Daftar Produk CS MERAH | SKU8455', 'hafiz4117', 0),
(672, '2025-08-04', '5:30:04 PM', 'Daftar Produk CS HITAM | SKU7414', 'hafiz4117', 0),
(673, '2025-08-04', '5:30:29 PM', 'Daftar Produk CS MERAH | SKU8983', 'hafiz4117', 0),
(674, '2025-08-04', '5:30:49 PM', 'Daftar Produk CS MERAH  | SKU5310', 'hafiz4117', 0),
(675, '2025-08-04', '5:31:06 PM', 'Daftar Produk CS MERAH | SKU3206', 'hafiz4117', 0),
(676, '2025-08-04', '5:31:25 PM', 'Daftar Produk CS MERAH | SKU4311', 'hafiz4117', 0),
(677, '2025-08-04', '5:31:52 PM', 'Daftar Produk CS MERAH | SKU9758', 'hafiz4117', 0),
(678, '2025-08-04', '5:32:21 PM', 'Daftar Produk CS MERAH | SKU3153', 'hafiz4117', 0),
(679, '2025-08-04', '5:32:43 PM', 'Daftar Produk CS MERAH | SKU6706', 'hafiz4117', 0),
(680, '2025-08-04', '5:33:03 PM', 'Daftar Produk CS MERAH | SKU3212', 'hafiz4117', 0),
(681, '2025-08-04', '5:33:22 PM', 'Daftar Produk CS MERAH | SKU9598', 'hafiz4117', 0),
(682, '2025-08-04', '5:33:42 PM', 'Daftar Produk CS MERAH | SKU9695', 'hafiz4117', 0),
(683, '2025-08-04', '5:47:22 PM', 'Klik butang Denominasi', 'TIEY', 0),
(684, '2025-08-04', '5:52:24 PM', 'Cashier klik butang Log Out', 'TIEY', 0),
(685, '2025-08-05', '10:27:57 AM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(686, '2025-08-05', '11:19:48 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(687, '2025-08-05', '11:33:41 AM', 'Klik butang Trade In', 'hanim', 0),
(688, '2025-08-05', '11:33:44 AM', 'Klik butang Trade In', 'hanim', 0),
(689, '2025-08-05', '11:34:49 AM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(690, '2025-08-05', '11:35:11 AM', 'Klik butang Trade In', 'hanim', 0),
(691, '2025-08-05', '11:35:15 AM', 'Klik butang Trade In', 'hanim', 0),
(692, '2025-08-05', '11:35:47 AM', 'Klik butang Buy Back : ', 'hanim', 0),
(693, '2025-08-05', '11:37:35 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 9,455.00 | Tunai Masuk RM 0.00  pada tarikh 05-08-2025', 'hafiz4117', 0),
(694, '2025-08-05', '11:37:47 AM', 'Pengurus hapus rekod peti besi Pendahuluan Dari HQ Tunai Keluar RM 0.00 | Tunai Masuk RM 11,973.00  pada tarikh 05-08-2025', 'hafiz4117', 0),
(695, '2025-08-05', '11:39:27 AM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(696, '2025-08-05', '11:39:41 AM', 'Klik butang Trade In', 'hanim', 0),
(697, '2025-08-05', '11:39:54 AM', 'Pengurus hapus rekod peti besi Pendahuluan Dari HQ Tunai Keluar RM 0.00 | Tunai Masuk RM 9,455.00  pada tarikh 05-08-2025', 'hafiz4117', 0),
(698, '2025-08-05', '11:40:12 AM', 'Pengurus hapus rekod peti besi Pendahuluan Dari HQ Tunai Keluar RM 0.00 | Tunai Masuk RM 9,455.00  pada tarikh 05-08-2025', 'hafiz4117', 0),
(699, '2025-08-05', '11:48:00 AM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(700, '2025-08-05', '11:48:03 AM', 'Klik butang Denominasi', 'CASHIER', 0),
(701, '2025-08-04', '11:52:03 AM', 'Pengurus hapus rekod peti besi SERAHAN  Tunai Keluar RM 0.00 | Tunai Masuk RM 9,455.00  pada tarikh 04-08-2025', 'hafiz4117', 0),
(702, '2025-08-05', '12:02:10 PM', 'Klik butang Add On Bayaran', 'hanim', 0),
(703, '2025-08-05', '12:02:47 PM', 'Klik Bayar/Paid : RM25.00 | No Resit 81:61/HM0508202511392-0077-hanim', 'hanim', 0),
(704, '2025-08-05', '12:03:20 PM', 'Hapus Cart No Siri Add On-60357/hanim/81:61', 'hanim', 0),
(705, '2025-08-05', '12:03:25 PM', 'Klik butang Add On Bayaran', 'hanim', 0),
(706, '2025-08-05', '12:03:54 PM', 'Klik Bayar/Paid : RM15.00 | No Resit 81:61/HM0508202511392-0077-hanim', 'hanim', 0),
(707, '2025-08-05', '12:04:04 PM', 'Resit Jualan : 81:61/HM0508202511392-0077-hanim', 'hanim', 0),
(708, '2025-08-05', '12:04:04 PM', 'No Siri Jual : Add On-60358/hanim/81:61 | No Resit 81:61/HM0508202511392-0077-hanim', 'hanim', 0),
(709, '2025-08-05', '12:04:04 PM', 'Cetak Resit : RM15 | No Resit 81:61/HM0508202511392-0077-hanim', 'hanim', 0),
(710, '2025-08-05', '12:04:43 PM', 'Klik butang Trade In', 'hanim', 0),
(711, '2025-08-05', '12:29:04 PM', 'Klik butang Denominasi', 'hanim', 0),
(712, '2025-08-05', '12:33:09 PM', 'Klik butang Denominasi', 'hanim', 0),
(713, '2025-08-05', '12:45:18 PM', 'Klik butang Add On Bayaran', 'hanim', 0),
(714, '2025-08-05', '12:46:25 PM', 'Klik Bayar/Paid : RM30.00 | No Resit 81:61/HM0508202512040-0079-hanim', 'hanim', 0),
(715, '2025-08-05', '12:46:59 PM', 'Resit Jualan : 81:61/HM0508202512040-0079-hanim', 'hanim', 0),
(716, '2025-08-05', '12:47:37 PM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(717, '2025-08-05', '12:47:41 PM', 'Klik butang Add On Bayaran', 'hanim', 0),
(718, '2025-08-05', '12:50:16 PM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(719, '2025-08-05', '12:50:35 PM', 'Klik butang Add On Bayaran', 'hanim', 0),
(720, '2025-08-05', '12:53:03 PM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(721, '2025-08-05', '12:53:21 PM', 'Klik Bayar/Paid : RM30.00 | No Resit 81:61/HM0508202512473-0080-hanim', 'hanim', 0),
(722, '2025-08-05', '12:53:32 PM', 'Resit Jualan : 81:61/HM0508202512473-0080-hanim', 'hanim', 0),
(723, '2025-08-05', '12:53:33 PM', 'No Siri Jual : Add On-60360/hanim/81:61 | No Resit 81:61/HM0508202512473-0080-hanim', 'hanim', 0),
(724, '2025-08-05', '12:53:33 PM', 'Cetak Resit : RM30 | No Resit 81:61/HM0508202512473-0080-hanim', 'hanim', 0),
(725, '2025-08-05', '1:12:05 PM', 'Klik butang Sistem Tabung', 'hanim', 0),
(726, '2025-08-05', '1:21:50 PM', 'Klik butang Sistem Tabung', 'hanim', 0),
(727, '2025-08-05', '1:23:56 PM', 'Scan No Siri : HM2A0174', 'hanim', 0),
(728, '2025-08-05', '1:24:16 PM', 'Klik Bayar/Paid : RM1125.78 | No Resit 81:61/HM0508202512533-0081-hanim', 'hanim', 0),
(729, '2025-08-05', '1:24:58 PM', 'Resit Jualan : 81:61/HM0508202512533-0081-hanim', 'hanim', 0),
(730, '2025-08-05', '1:25:00 PM', 'No Siri Jual : HM2A0174 | No Resit 81:61/HM0508202512533-0081-hanim', 'hanim', 0),
(731, '2025-08-05', '1:25:00 PM', 'Cetak Resit : RM1070 | No Resit 81:61/HM0508202512533-0081-hanim', 'hanim', 0),
(732, '2025-08-05', '1:33:30 PM', 'Klik butang Denominasi', 'hanim', 0),
(733, '2025-08-05', '1:34:27 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(734, '2025-08-05', '1:36:13 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(735, '2025-08-05', '3:15:34 PM', 'Klik butang Trade In', 'hanim', 0),
(736, '2025-08-05', '3:17:45 PM', 'Klik butang Buy Back : ', 'hanim', 0),
(737, '2025-08-05', '3:42:54 PM', 'Klik butang Sistem Tabung', 'hanim', 0),
(738, '2025-08-05', '3:43:01 PM', 'Klik butang Denominasi', 'hanim', 0),
(739, '2025-08-05', '3:43:22 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(740, '2025-08-05', '3:43:23 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(741, '2025-08-05', '3:43:27 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(742, '2025-08-05', '3:46:26 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(743, '2025-08-05', '3:46:35 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(744, '2025-08-05', '3:46:35 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(745, '2025-08-05', '3:56:09 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(746, '2025-08-05', '3:57:37 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(747, '2025-08-05', '4:01:01 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(748, '2025-08-05', '4:02:13 PM', 'Klik butang Denominasi', 'hanim', 0),
(749, '2025-08-05', '4:03:39 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(750, '2025-08-05', '4:04:11 PM', 'Klik butang Display Emas', 'hanim', 0),
(751, '2025-08-05', '4:13:59 PM', 'Scan No Siri : HM2A0239', 'hanim', 0),
(752, '2025-08-05', '4:14:26 PM', 'Klik butang Ubah Berat No Siri : HM2A0239', 'hanim', 0),
(753, '2025-08-05', '4:16:05 PM', 'Terima Ubah Berat : 0.65 gm | No Siri : HM2A0239', 'hanim', 0),
(754, '2025-08-05', '4:16:17 PM', 'Klik Bayar/Paid : RM405.96 | No Resit 81:61/HM0508202512506-0083-hanim', 'hanim', 0),
(755, '2025-08-05', '4:16:50 PM', 'Resit Jualan : 81:61/HM0508202512506-0083-hanim', 'hanim', 0),
(756, '2025-08-05', '4:16:50 PM', 'No Siri Jual : HM2A0239 | No Resit 81:61/HM0508202512506-0083-hanim', 'hanim', 0),
(757, '2025-08-05', '4:16:50 PM', 'Cetak Resit : RM405 | No Resit 81:61/HM0508202512506-0083-hanim', 'hanim', 0),
(758, '2025-08-05', '4:21:44 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(759, '2025-08-05', '4:30:35 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(760, '2025-08-05', '4:35:04 PM', 'Klik butang Display Emas', 'hanim', 0),
(761, '2025-08-05', '4:38:40 PM', 'Hapus Resit 81:61/HM0508202512473-0080-hanim', 'hafiz4117', 0),
(762, '2025-08-05', '5:24:49 PM', 'Klik butang Denominasi', 'hanim', 0),
(763, '2025-08-05', '5:46:06 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(764, '2025-08-05', '5:46:29 PM', 'Cashier klik butang Log Out', 'hanim', 0),
(765, '2025-08-06', '10:06:34 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(766, '2025-08-06', '10:11:06 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(767, '2025-08-06', '10:12:26 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(768, '2025-08-06', '10:23:07 AM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(769, '2025-08-06', '10:24:01 AM', 'Klik Bayar/Paid : RM10.00 | No Resit 81:61/HM0608202510063-0085-TIEY', 'TIEY', 0),
(770, '2025-08-06', '10:24:03 AM', 'Klik Bayar/Paid : RM10.00 | No Resit 81:61/HM0608202510063-0085-TIEY', 'TIEY', 0),
(771, '2025-08-06', '10:24:29 AM', 'Resit Jualan : 81:61/HM0608202510063-0085-TIEY', 'TIEY', 0),
(772, '2025-08-06', '10:24:29 AM', 'No Siri Jual : Add On-60361/TIEY/81:61 | No Resit 81:61/HM0608202510063-0085-TIEY', 'TIEY', 0),
(773, '2025-08-06', '10:24:29 AM', 'Cetak Resit : RM10 | No Resit 81:61/HM0608202510063-0085-TIEY', 'TIEY', 0),
(774, '2025-08-06', '11:23:39 AM', 'Klik butang Baki Tunai', 'TIEY', 0),
(775, '2025-08-06', '11:38:14 AM', 'Scan No Siri : HM2A0114', 'TIEY', 0),
(776, '2025-08-06', '11:38:42 AM', 'Klik butang Ubah Berat No Siri : HM2A0114', 'TIEY', 0),
(777, '2025-08-06', '11:57:25 AM', 'Terima Ubah Berat : 6.91 gm | No Siri : HM2A0114', 'TIEY', 0),
(778, '2025-08-06', '11:57:35 AM', 'Klik Bayar/Paid : RM3395.05 | No Resit 81:61/HM0608202510243-0086-TIEY', 'TIEY', 0),
(779, '2025-08-06', '11:59:52 AM', 'Log masuk Cashier ID : hanim', 'hanim', 0),
(780, '2025-08-06', '12:00:03 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(781, '2025-08-06', '12:00:59 PM', 'Scan No Siri : HM2A0114', 'hanim', 0),
(782, '2025-08-06', '12:01:26 PM', 'Klik butang Display Emas', 'hanim', 0),
(783, '2025-08-06', '12:03:18 PM', 'Scan No Siri : HM2A0114', 'hanim', 0),
(784, '2025-08-06', '12:03:57 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(785, '2025-08-06', '12:04:27 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(786, '2025-08-06', '12:04:41 PM', 'Klik butang Trade In', 'hanim', 0),
(787, '2025-08-06', '12:05:45 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(788, '2025-08-06', '12:06:07 PM', 'Klik butang Trade In', 'hanim', 0),
(789, '2025-08-06', '12:06:34 PM', 'Klik butang Trade In', 'hanim', 0),
(790, '2025-08-06', '12:07:42 PM', 'Scan No Siri : HM2A0114', 'hanim', 0),
(791, '2025-08-06', '12:08:27 PM', 'Klik butang Ubah Berat No Siri : HM2A0114', 'hanim', 0),
(792, '2025-08-06', '12:09:24 PM', 'Terima Ubah Berat : 6.85 gm | No Siri : HM2A0114', 'hanim', 0),
(793, '2025-08-06', '12:09:35 PM', 'Klik Bayar/Paid : RM3370.63 | No Resit 81:61/HM0608202511595-0087-hanim', 'hanim', 0),
(794, '2025-08-06', '12:10:20 PM', 'Resit Jualan : 81:61/HM0608202511595-0087-hanim', 'hanim', 0),
(795, '2025-08-06', '12:10:21 PM', 'No Siri Jual : HM2A0114 | No Resit 81:61/HM0608202511595-0087-hanim', 'hanim', 0),
(796, '2025-08-06', '12:10:21 PM', 'Cetak Resit : RM3370 | No Resit 81:61/HM0608202511595-0087-hanim', 'hanim', 0),
(797, '2025-08-06', '2:45:24 PM', 'Klik butang Add On Bayaran', 'hanim', 0),
(798, '2025-08-06', '2:45:34 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(799, '2025-08-06', '2:46:12 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(800, '2025-08-06', '2:46:15 PM', 'Klik butang Cetak Resit', 'hanim', 0),
(801, '2025-08-06', '2:46:47 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(802, '2025-08-06', '2:47:39 PM', 'Klik butang Denominasi', 'hanim', 0),
(803, '2025-08-06', '2:49:17 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(804, '2025-08-06', '2:50:36 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(805, '2025-08-06', '2:50:43 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(806, '2025-08-06', '2:52:08 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(807, '2025-08-06', '2:52:43 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(808, '2025-08-06', '2:58:26 PM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(809, '2025-08-06', '2:58:59 PM', 'Klik Bayar/Paid : RM25.00 | No Resit 81:61/HM0608202525028-0089-TIEY', 'TIEY', 0),
(810, '2025-08-06', '2:59:13 PM', 'Resit Jualan : 81:61/HM0608202525028-0089-TIEY', 'TIEY', 0),
(811, '2025-08-06', '2:59:14 PM', 'No Siri Jual : Add On-60362/TIEY/81:61 | No Resit 81:61/HM0608202525028-0089-TIEY', 'TIEY', 0),
(812, '2025-08-06', '2:59:14 PM', 'Cetak Resit : RM25 | No Resit 81:61/HM0608202525028-0089-TIEY', 'TIEY', 0),
(813, '2025-08-06', '3:32:54 PM', 'Daftar No Siri HM2A0245 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(814, '2025-08-06', '3:33:58 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0245', 'hafiz4117', 0),
(815, '2025-08-06', '3:34:08 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0245 Berat : 1.00 gm', 'hafiz4117', 0),
(816, '2025-08-06', '3:34:28 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0245', 'hafiz4117', 0),
(817, '2025-08-06', '3:34:40 PM', 'Pengurus hafiz4117 Hapus No Siri : SKU622', 'hafiz4117', 0),
(818, '2025-08-06', '3:35:00 PM', 'Daftar No Siri HM2A0246 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(819, '2025-08-06', '3:35:06 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0246', 'hafiz4117', 0),
(820, '2025-08-06', '3:35:56 PM', 'Daftar No Siri HM2A0247 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(821, '2025-08-06', '3:36:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0247', 'hafiz4117', 0),
(822, '2025-08-06', '3:36:22 PM', 'Daftar No Siri HM2A0248 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(823, '2025-08-06', '3:36:27 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0248', 'hafiz4117', 0),
(824, '2025-08-06', '3:36:52 PM', 'Daftar No Siri HM2A0249 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(825, '2025-08-06', '3:37:06 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0249', 'hafiz4117', 0),
(826, '2025-08-06', '3:37:13 PM', 'Daftar No Siri HM2A0250 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(827, '2025-08-06', '3:37:17 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0250', 'hafiz4117', 0),
(828, '2025-08-06', '3:37:37 PM', 'Daftar No Siri HM2A0251 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(829, '2025-08-06', '3:37:40 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0251', 'hafiz4117', 0),
(830, '2025-08-06', '3:37:52 PM', 'Daftar No Siri HM2A0252 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(831, '2025-08-06', '3:37:56 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0252', 'hafiz4117', 0),
(832, '2025-08-06', '3:39:09 PM', 'Daftar No Siri HM2A0253 | Gold Bar | Berat : 1 gm', 'hafiz4117', 0),
(833, '2025-08-06', '3:39:15 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0253', 'hafiz4117', 0),
(834, '2025-08-06', '3:39:37 PM', 'Scan No Siri : HM2A0253', 'TIEY', 0),
(835, '2025-08-06', '3:40:32 PM', 'Daftar No Siri HM2A0254 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(836, '2025-08-06', '3:40:38 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0254', 'hafiz4117', 0),
(837, '2025-08-06', '3:40:52 PM', 'Daftar No Siri HM2A0255 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(838, '2025-08-06', '3:41:14 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0255', 'hafiz4117', 0),
(839, '2025-08-06', '3:41:26 PM', 'Daftar No Siri HM2A0256 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(840, '2025-08-06', '3:41:30 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0256', 'hafiz4117', 0),
(841, '2025-08-06', '3:41:36 PM', 'Daftar No Siri HM2A0257 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(842, '2025-08-06', '3:41:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0257', 'hafiz4117', 0),
(843, '2025-08-06', '3:41:47 PM', 'Daftar No Siri HM2A0258 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(844, '2025-08-06', '3:41:53 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0258', 'hafiz4117', 0),
(845, '2025-08-06', '3:41:58 PM', 'Daftar No Siri HM2A0259 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(846, '2025-08-06', '3:42:02 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0259', 'hafiz4117', 0),
(847, '2025-08-06', '3:42:08 PM', 'Daftar No Siri HM2A0260 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(848, '2025-08-06', '3:42:11 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0260', 'hafiz4117', 0),
(849, '2025-08-06', '3:42:17 PM', 'Daftar No Siri HM2A0261 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(850, '2025-08-06', '3:42:21 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0261', 'hafiz4117', 0),
(851, '2025-08-06', '3:42:42 PM', 'Daftar No Siri HM2A0262 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(852, '2025-08-06', '3:42:51 PM', 'Daftar No Siri HM2A0263 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(853, '2025-08-06', '3:42:58 PM', 'Daftar No Siri HM2A0264 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(854, '2025-08-06', '3:43:05 PM', 'Daftar No Siri HM2A0265 | Gold Bar | Berat : 0.25 gm', 'hafiz4117', 0),
(855, '2025-08-06', '3:43:12 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0265', 'hafiz4117', 0),
(856, '2025-08-06', '3:43:12 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0264', 'hafiz4117', 0),
(857, '2025-08-06', '3:43:12 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0263', 'hafiz4117', 0),
(858, '2025-08-06', '3:43:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0262', 'hafiz4117', 0),
(859, '2025-08-06', '3:44:17 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0253', 'hafiz4117', 0),
(860, '2025-08-06', '3:53:20 PM', 'Daftar No Siri HM2A0266 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(861, '2025-08-06', '3:53:35 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0266', 'hafiz4117', 0),
(862, '2025-08-06', '3:53:46 PM', 'Daftar No Siri HM2A0267 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(863, '2025-08-06', '3:53:53 PM', 'Daftar No Siri HM2A0268 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(864, '2025-08-06', '3:53:59 PM', 'Daftar No Siri HM2A0269 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(865, '2025-08-06', '3:54:05 PM', 'Daftar No Siri HM2A0270 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(866, '2025-08-06', '3:54:10 PM', 'Daftar No Siri HM2A0271 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(867, '2025-08-06', '3:54:16 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0271', 'hafiz4117', 0),
(868, '2025-08-06', '3:54:23 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0270', 'hafiz4117', 0),
(869, '2025-08-06', '3:54:25 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0269', 'hafiz4117', 0),
(870, '2025-08-06', '3:54:28 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0268', 'hafiz4117', 0),
(871, '2025-08-06', '3:54:31 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0267', 'hafiz4117', 0),
(872, '2025-08-06', '3:54:54 PM', 'Daftar No Siri HM2A0272 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(873, '2025-08-06', '3:54:57 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0272', 'hafiz4117', 0),
(874, '2025-08-06', '4:01:18 PM', 'Daftar No Siri HM2A0273 | Gold Bar | Berat : 20 gm', 'hafiz4117', 0),
(875, '2025-08-06', '4:01:22 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0273', 'hafiz4117', 0),
(876, '2025-08-06', '4:01:37 PM', 'Scan No Siri : HM2A0273', 'TIEY', 0),
(877, '2025-08-06', '4:02:27 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(878, '2025-08-06', '4:05:06 PM', 'Daftar No Siri HM2A0274 | Wafer | Berat : 1 gm', 'hafiz4117', 0),
(879, '2025-08-06', '4:05:21 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0272', 'hafiz4117', 0),
(880, '2025-08-06', '4:05:32 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(881, '2025-08-06', '4:05:51 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(882, '2025-08-06', '4:06:12 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(883, '2025-08-06', '4:06:27 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(884, '2025-08-06', '4:06:45 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0246', 'hafiz4117', 0),
(885, '2025-08-06', '4:06:58 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(886, '2025-08-06', '4:07:06 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(887, '2025-08-06', '4:07:16 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(888, '2025-08-06', '4:07:24 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(889, '2025-08-06', '4:07:46 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0267', 'hafiz4117', 0),
(890, '2025-08-06', '4:07:54 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(891, '2025-08-06', '4:08:05 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0274', 'hafiz4117', 0),
(892, '2025-08-06', '4:08:13 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(893, '2025-08-06', '4:08:24 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(894, '2025-08-06', '4:08:34 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(895, '2025-08-06', '4:08:44 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(896, '2025-08-06', '4:08:52 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(897, '2025-08-06', '4:14:50 PM', 'Scan No Siri : HM2A0252', 'TIEY', 0),
(898, '2025-08-06', '4:15:56 PM', 'Scan No Siri : HM2A0251', 'TIEY', 0),
(899, '2025-08-06', '4:16:55 PM', 'Scan No Siri : HM2A0251', 'TIEY', 0),
(900, '2025-08-06', '4:17:58 PM', 'Daftar No Siri HM2A0275 | Gold Bar | Berat : 20 gm', 'hafiz4117', 0),
(901, '2025-08-06', '4:18:05 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0275', 'hafiz4117', 0),
(902, '2025-08-06', '4:18:33 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(903, '2025-08-06', '4:18:53 PM', 'Pengurus hafiz4117 Hapus No Siri : HM2A0273', 'hafiz4117', 0),
(904, '2025-08-06', '4:19:23 PM', 'Pengurus : hafiz4117 klik edit No Siri : HM2A0275', 'hafiz4117', 0),
(905, '2025-08-06', '4:19:53 PM', 'Pengurus : hafiz4117 Edit No Siri : HM2A0275 Berat : 0.50 gm', 'hafiz4117', 0),
(906, '2025-08-06', '4:20:04 PM', 'Klik Bayar/Paid : RM540.00 | No Resit 81:61/HM0608202525917-0090-TIEY', 'TIEY', 0),
(907, '2025-08-06', '4:20:31 PM', 'Resit Jualan : 81:61/HM0608202525917-0090-TIEY', 'TIEY', 0),
(908, '2025-08-06', '4:20:31 PM', 'No Siri Jual : HM2A0251 | No Resit 81:61/HM0608202525917-0090-TIEY', 'TIEY', 0),
(909, '2025-08-06', '4:20:31 PM', 'Cetak Resit : RM540 | No Resit 81:61/HM0608202525917-0090-TIEY', 'TIEY', 0),
(910, '2025-08-06', '4:22:55 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(911, '2025-08-06', '4:24:09 PM', 'Daftar No Siri HM2A0276 | Gold Bar | Berat : 20 gm', 'hafiz4117', 0),
(912, '2025-08-06', '4:24:15 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0276', 'hafiz4117', 0),
(913, '2025-08-06', '4:29:20 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(914, '2025-08-06', '4:30:00 PM', 'Daftar No Siri HM2A0277 | Dinar | Berat : 4.25 gm', 'hafiz4117', 0),
(915, '2025-08-06', '4:30:41 PM', 'Daftar No Siri HM2A0278 | Dinar | Berat : 4.25 gm', 'hafiz4117', 0),
(916, '2025-08-06', '4:30:59 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0278', 'hafiz4117', 0),
(917, '2025-08-06', '4:31:04 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0277', 'hafiz4117', 0),
(918, '2025-08-06', '4:31:49 PM', 'Klik butang Trade In', 'TIEY', 0),
(919, '2025-08-06', '4:34:01 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(920, '2025-08-06', '4:37:56 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(921, '2025-08-06', '4:38:02 PM', 'Klik butang Trade In', 'TIEY', 0),
(922, '2025-08-06', '4:38:48 PM', 'Klik butang Trade In', 'TIEY', 0),
(923, '2025-08-06', '4:44:10 PM', 'Daftar No Siri HM2A0279 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(924, '2025-08-06', '4:44:22 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0279', 'hafiz4117', 0),
(925, '2025-08-06', '4:44:26 PM', 'Daftar No Siri HM2A0280 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(926, '2025-08-06', '4:44:33 PM', 'Daftar No Siri HM2A0281 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(927, '2025-08-06', '4:44:41 PM', 'Daftar No Siri HM2A0282 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(928, '2025-08-06', '4:44:51 PM', 'Daftar No Siri HM2A0283 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(929, '2025-08-06', '4:44:57 PM', 'Daftar No Siri HM2A0284 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(930, '2025-08-06', '4:45:01 PM', 'Daftar No Siri HM2A0285 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(931, '2025-08-06', '4:45:06 PM', 'Daftar No Siri HM2A0286 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(932, '2025-08-06', '4:45:11 PM', 'Daftar No Siri HM2A0287 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(933, '2025-08-06', '4:45:15 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0287', 'hafiz4117', 0),
(934, '2025-08-06', '4:45:16 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0286', 'hafiz4117', 0),
(935, '2025-08-06', '4:45:16 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0285', 'hafiz4117', 0),
(936, '2025-08-06', '4:45:17 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0284', 'hafiz4117', 0),
(937, '2025-08-06', '4:45:17 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0283', 'hafiz4117', 0),
(938, '2025-08-06', '4:45:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0282', 'hafiz4117', 0),
(939, '2025-08-06', '4:45:18 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0281', 'hafiz4117', 0),
(940, '2025-08-06', '4:45:19 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0280', 'hafiz4117', 0),
(941, '2025-08-06', '4:48:19 PM', 'Daftar No Siri HM2A0288 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(942, '2025-08-06', '4:48:24 PM', 'Daftar No Siri HM2A0289 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(943, '2025-08-06', '4:48:29 PM', 'Daftar No Siri HM2A0290 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(944, '2025-08-06', '4:48:35 PM', 'Daftar No Siri HM2A0291 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(945, '2025-08-06', '4:48:38 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0291', 'hafiz4117', 0),
(946, '2025-08-06', '4:48:39 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0290', 'hafiz4117', 0),
(947, '2025-08-06', '4:48:39 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0289', 'hafiz4117', 0),
(948, '2025-08-06', '4:48:40 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0288', 'hafiz4117', 0),
(949, '2025-08-06', '4:54:15 PM', 'Daftar No Siri HM2A0292 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(950, '2025-08-06', '4:54:23 PM', 'Daftar No Siri HM2A0293 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(951, '2025-08-06', '4:54:27 PM', 'Daftar No Siri HM2A0294 | Gold Bar | Berat : 0.1 gm', 'hafiz4117', 0),
(952, '2025-08-06', '4:54:29 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0294', 'hafiz4117', 0),
(953, '2025-08-06', '4:54:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0293', 'hafiz4117', 0),
(954, '2025-08-06', '4:54:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : HM2A0292', 'hafiz4117', 0),
(955, '2025-08-06', '5:05:29 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(956, '2025-08-06', '5:06:26 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(957, '2025-08-06', '5:07:33 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(958, '2025-08-06', '5:09:02 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(959, '2025-08-06', '5:12:34 PM', 'Klik butang Denominasi', 'hanim', 0),
(960, '2025-08-06', '5:18:52 PM', 'Klik butang Baki Tunai', 'hanim', 0),
(961, '2025-08-06', '5:25:50 PM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(962, '2025-08-06', '5:28:59 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(963, '2025-08-06', '5:29:11 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(964, '2025-08-06', '5:31:21 PM', 'Klik butang Denominasi', 'TIEY', 0),
(965, '2025-08-06', '5:48:57 PM', 'Cashier klik butang Log Out', 'TIEY', 0),
(966, '2025-08-07', '10:08:25 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(967, '2025-08-07', '10:14:22 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(968, '2025-08-07', '12:16:07 PM', 'Klik butang Trade In', 'TIEY', 0),
(969, '2025-08-07', '12:16:16 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(970, '2025-08-07', '12:45:47 PM', 'Klik butang Trade In', 'TIEY', 0),
(971, '2025-08-07', '12:45:52 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(972, '2025-08-07', '12:48:09 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(973, '2025-08-07', '12:48:21 PM', 'Klik butang Trade In', 'TIEY', 0),
(974, '2025-08-07', '2:21:58 PM', 'Klik butang Trade In', 'TIEY', 0),
(975, '2025-08-07', '2:24:12 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(976, '2025-08-07', '2:26:12 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(977, '2025-08-07', '2:26:17 PM', 'Klik butang Trade In', 'TIEY', 0),
(978, '2025-08-07', '2:26:41 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(979, '2025-08-07', '3:53:03 PM', 'Klik butang Trade In', 'TIEY', 0),
(980, '2025-08-07', '3:53:06 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(981, '2025-08-07', '4:03:51 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(982, '2025-08-07', '4:10:16 PM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(983, '2025-08-07', '4:10:58 PM', 'Klik Bayar/Paid : RM30.00 | No Resit 81:61/HM0708202522612-0101-TIEY', 'TIEY', 0),
(984, '2025-08-07', '4:11:09 PM', 'Resit Jualan : 81:61/HM0708202522612-0101-TIEY', 'TIEY', 0),
(985, '2025-08-07', '4:11:09 PM', 'No Siri Jual : Add On-60363/TIEY/81:61 | No Resit 81:61/HM0708202522612-0101-TIEY', 'TIEY', 0),
(986, '2025-08-07', '4:11:10 PM', 'Cetak Resit : RM30 | No Resit 81:61/HM0708202522612-0101-TIEY', 'TIEY', 0),
(987, '2025-08-07', '4:21:35 PM', 'Klik butang Trade In', 'TIEY', 0),
(988, '2025-08-07', '4:24:06 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(989, '2025-08-07', '5:01:47 PM', 'Scan No Siri : HM2A0226', 'TIEY', 0),
(990, '2025-08-07', '5:02:10 PM', 'Klik Bayar/Paid : RM452.22 | No Resit 81:61/HM0708202541112-0102-TIEY', 'TIEY', 0),
(991, '2025-08-07', '5:02:33 PM', 'Resit Jualan : 81:61/HM0708202541112-0102-TIEY', 'TIEY', 0),
(992, '2025-08-07', '5:02:33 PM', 'No Siri Jual : HM2A0226 | No Resit 81:61/HM0708202541112-0102-TIEY', 'TIEY', 0),
(993, '2025-08-07', '5:02:34 PM', 'Cetak Resit : RM450 | No Resit 81:61/HM0708202541112-0102-TIEY', 'TIEY', 0),
(994, '2025-08-07', '5:07:55 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(995, '2025-08-07', '5:08:06 PM', 'Klik butang Denominasi', 'TIEY', 0),
(996, '2025-08-07', '5:09:00 PM', 'Klik butang Denominasi', 'TIEY', 0),
(997, '2025-08-07', '5:09:27 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(998, '2025-08-07', '5:09:39 PM', 'Klik butang Trade In', 'TIEY', 0),
(999, '2025-08-07', '5:12:06 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1000, '2025-08-07', '5:12:46 PM', 'Klik butang Trade In', 'TIEY', 0),
(1001, '2025-08-07', '5:27:09 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1002, '2025-08-07', '5:41:11 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1003, '2025-08-07', '5:43:49 PM', 'Klik butang Trade In', 'TIEY', 0),
(1004, '2025-08-07', '5:44:14 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1005, '2025-08-07', '5:46:35 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1006, '2025-08-07', '5:46:39 PM', 'Klik butang Trade In', 'TIEY', 0),
(1007, '2025-08-07', '5:47:25 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1008, '2025-08-07', '5:49:01 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1009, '2025-08-07', '5:50:17 PM', 'Klik butang Trade In', 'TIEY', 0),
(1010, '2025-08-07', '5:53:12 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1011, '2025-08-07', '5:57:21 PM', 'Klik butang Trade In', 'TIEY', 0),
(1012, '2025-08-07', '5:59:15 PM', 'Klik butang Trade In', 'TIEY', 0),
(1013, '2025-08-07', '5:59:27 PM', 'Klik butang Trade In', 'TIEY', 0),
(1014, '2025-08-07', '6:05:04 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1015, '2025-08-07', '6:05:26 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1016, '2025-08-07', '6:21:29 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1017, '2025-08-07', '6:23:33 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1018, '2025-08-07', '6:25:33 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1019, '2025-08-07', '6:31:11 PM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 1,498.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1020, '2025-08-07', '6:31:58 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1021, '2025-08-07', '6:33:09 PM', 'Pengurus hapus rekod peti besi BELI EMAS BURUK Tunai Keluar RM 1,498.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1022, '2025-08-07', '6:36:37 PM', 'Pengurus hapus rekod peti besi Serahan Kepada HQ Tunai Keluar RM 1,498.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1023, '2025-08-07', '6:39:23 PM', 'Pengurus hapus rekod peti besi Serahan Kepada HQ Tunai Keluar RM 2,518.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1024, '2025-08-07', '6:40:06 PM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 5,800.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1025, '2025-08-07', '6:45:54 PM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 2,518.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1026, '2025-08-07', '6:54:57 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1027, '2025-08-07', '6:57:20 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1028, '2025-08-07', '6:57:30 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1029, '2025-08-07', '7:01:22 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1030, '2025-08-07', '7:05:29 PM', 'Scan No Siri : HM2A0163', 'TIEY', 0),
(1031, '2025-08-07', '7:05:58 PM', 'Klik Bayar/Paid : RM1084.86 | No Resit 81:61/HM0708202554635-0104-TIEY', 'TIEY', 0),
(1032, '2025-08-07', '7:06:27 PM', 'Resit Jualan : 81:61/HM0708202554635-0104-TIEY', 'TIEY', 0),
(1033, '2025-08-07', '7:06:27 PM', 'No Siri Jual : HM2A0163 | No Resit 81:61/HM0708202554635-0104-TIEY', 'TIEY', 0),
(1034, '2025-08-07', '7:06:27 PM', 'Cetak Resit : RM1050 | No Resit 81:61/HM0708202554635-0104-TIEY', 'TIEY', 0),
(1035, '2025-08-07', '7:07:03 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1036, '2025-08-07', '7:07:53 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1037, '2025-08-07', '7:08:54 PM', 'Klik butang Denominasi', 'TIEY', 0);
INSERT INTO `audit_trail` (`recno`, `tarikh`, `masa`, `logs_trail`, `idstaff`, `jana`) VALUES
(1038, '2025-08-07', '7:15:15 PM', 'Cashier klik butang Log Out', 'TIEY', 0),
(1039, '2025-08-09', '10:38:18 AM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(1040, '2025-08-07', '10:49:08 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 1,498.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'ADMIN', 0),
(1041, '2025-08-07', '11:42:24 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 2,000.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'ADMIN', 0),
(1042, '2025-08-07', '11:47:38 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 5,800.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'ADMIN', 0),
(1043, '2025-08-10', '11:07:38 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1044, '2025-08-10', '11:09:35 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1045, '2025-08-10', '11:09:43 AM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1046, '2025-08-10', '11:09:52 AM', 'Klik butang Denominasi', 'TIEY', 0),
(1047, '2025-08-10', '11:10:42 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1048, '2025-08-10', '11:10:46 AM', 'Klik butang Denominasi', 'TIEY', 0),
(1049, '2025-08-10', '12:23:26 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1050, '2025-08-11', '10:45:03 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1051, '2025-08-07', '11:13:22 AM', 'Pengurus hapus rekod peti besi Closing Tunai Keluar RM 8,248.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1052, '2025-08-07', '11:13:38 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 5,800.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1053, '2025-08-07', '11:13:54 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 2,000.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1054, '2025-08-07', '11:14:10 AM', 'Pengurus hapus rekod peti besi BELI EMAS BURUK Tunai Keluar RM 0.00 | Tunai Masuk RM 5,800.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1055, '2025-08-07', '11:14:26 AM', 'Pengurus hapus rekod peti besi TAMBAH MODAL BELI EMAS BURUK Tunai Keluar RM 0.00 | Tunai Masuk RM 2,000.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1056, '2025-08-07', '11:21:02 AM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 2,070.00 | Tunai Masuk RM 0.00  pada tarikh 07-08-2025', 'hafiz4117', 0),
(1057, '2025-08-09', '11:28:40 AM', 'Pengurus hapus rekod peti besi BAIKI Tunai Keluar RM 25.00 | Tunai Masuk RM 0.00  pada tarikh 09-08-2025', 'hafiz4117', 0),
(1058, '2025-08-11', '11:33:56 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1059, '2025-08-11', '11:36:58 AM', 'Scan No Siri : HM2A0060', 'TIEY', 0),
(1060, '2025-08-11', '11:37:42 AM', 'Scan No Siri : HM2A0192', 'TIEY', 0),
(1061, '2025-08-11', '11:42:19 AM', 'Hapus Cart No Siri HM2A0060', 'TIEY', 0),
(1062, '2025-08-11', '11:42:28 AM', 'Hapus Cart No Siri HM2A0192', 'TIEY', 0),
(1063, '2025-08-11', '11:43:25 AM', 'Scan No Siri : HM2A0192', 'TIEY', 0),
(1064, '2025-08-11', '11:43:40 AM', 'Scan No Siri : HM2A0060', 'TIEY', 0),
(1065, '2025-08-11', '11:44:27 AM', 'Resit Jualan : 81:61/HM1108202511335-0108-TIEY', 'TIEY', 0),
(1066, '2025-08-11', '11:44:27 AM', 'No Siri Jual : HM2A0192 | No Resit 81:61/HM1108202511335-0108-TIEY', 'TIEY', 0),
(1067, '2025-08-11', '11:44:27 AM', 'No Siri Jual : HM2A0060 | No Resit 81:61/HM1108202511335-0108-TIEY', 'TIEY', 0),
(1068, '2025-08-11', '11:44:27 AM', 'Cetak Resit : RM10300 | No Resit 81:61/HM1108202511335-0108-TIEY', 'TIEY', 0),
(1069, '2025-08-11', '11:44:54 AM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(1070, '2025-08-11', '11:45:20 AM', 'Klik Bayar/Paid : RM25.00 | No Resit 81:61/HM1108202511443-0109-TIEY', 'TIEY', 0),
(1071, '2025-08-11', '11:45:34 AM', 'Resit Jualan : 81:61/HM1108202511443-0109-TIEY', 'TIEY', 0),
(1072, '2025-08-11', '11:45:34 AM', 'No Siri Jual : Add On-60364/TIEY/81:61 | No Resit 81:61/HM1108202511443-0109-TIEY', 'TIEY', 0),
(1073, '2025-08-11', '11:45:34 AM', 'Cetak Resit : RM25 | No Resit 81:61/HM1108202511443-0109-TIEY', 'TIEY', 0),
(1074, '2025-08-10', '11:47:09 AM', 'Daftar No Siri PH2A0001 | Loket | Berat : 3.19 gm', 'hafiz4117', 0),
(1075, '2025-08-10', '11:47:16 AM', 'Pengurus : hafiz4117 Cetak No Siri : PH2A0001', 'hafiz4117', 0),
(1076, '2025-08-11', '11:48:38 AM', 'Scan No Siri : PH2A0001', 'TIEY', 0),
(1077, '2025-08-11', '11:49:02 AM', 'Klik Bayar/Paid : RM1712.02 | No Resit 81:61/HM1108202511453-0110-TIEY', 'TIEY', 0),
(1078, '2025-08-11', '11:49:53 AM', 'Resit Jualan : 81:61/HM1108202511453-0110-TIEY', 'TIEY', 0),
(1079, '2025-08-11', '11:49:53 AM', 'No Siri Jual : PH2A0001 | No Resit 81:61/HM1108202511453-0110-TIEY', 'TIEY', 0),
(1080, '2025-08-11', '11:49:53 AM', 'No Siri Jual : PH2A0001 | No Resit 81:61/HM1108202511453-0110-TIEY', 'TIEY', 0),
(1081, '2025-08-11', '11:49:54 AM', 'Cetak Resit : RM1700 | No Resit 81:61/HM1108202511453-0110-TIEY', 'TIEY', 0),
(1082, '2025-08-11', '11:50:50 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1083, '2025-08-11', '11:51:23 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1084, '2025-08-11', '11:51:27 AM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1085, '2025-08-11', '11:52:03 AM', 'Pelarasan Resit Jualan 81:61/HM1108202511453-0110-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1086, '2025-08-11', '11:52:25 AM', 'Pelarasan Resit Jualan 81:61/HM1108202511443-0109-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1087, '2025-08-11', '11:52:50 AM', 'Pelarasan Resit Jualan 81:61/HM1108202511335-0108-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1088, '2025-08-11', '11:53:10 AM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1089, '2025-08-11', '12:00:28 PM', 'Klik butang Trade In', 'TIEY', 0),
(1090, '2025-08-11', '12:02:39 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1091, '2025-08-11', '12:02:43 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1092, '2025-08-11', '12:02:45 PM', 'Klik butang Trade In', 'TIEY', 0),
(1093, '2025-08-11', '12:02:46 PM', 'Klik butang Trade In', 'TIEY', 0),
(1094, '2025-08-11', '12:02:49 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1095, '2025-08-11', '12:04:07 PM', 'Klik butang Trade In', 'TIEY', 0),
(1096, '2025-08-11', '12:05:31 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1097, '2025-08-11', '12:06:28 PM', 'Klik butang Trade In', 'TIEY', 0),
(1098, '2025-08-11', '12:07:36 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1099, '2025-08-11', '12:08:43 PM', 'Klik butang Trade In', 'TIEY', 0),
(1100, '2025-08-11', '12:09:30 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1101, '2025-08-11', '12:11:01 PM', 'Klik butang Trade In', 'TIEY', 0),
(1102, '2025-08-10', '12:11:44 PM', 'Pelarasan Resit Trade In HM11082025-0024-TIEY dari tarikh 11-08-2025 kepada 09-08-2025', 'hafiz4117', 0),
(1103, '2025-08-10', '12:12:07 PM', 'Pelarasan Resit Trade In HM11082025-0025-TIEY dari tarikh 11-08-2025 kepada 09-08-2025', 'hafiz4117', 0),
(1104, '2025-08-10', '12:12:48 PM', 'Pelarasan Resit Trade In HM11082025-0027-TIEY dari tarikh 11-08-2025 kepada 09-08-2025', 'hafiz4117', 0),
(1105, '2025-08-10', '12:13:09 PM', 'Pelarasan Resit Trade In HM11082025-0026-TIEY dari tarikh 11-08-2025 kepada 09-08-2025', 'hafiz4117', 0),
(1106, '2025-08-11', '12:15:03 PM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(1107, '2025-08-11', '12:15:30 PM', 'Klik Bayar/Paid : RM25.00 | No Resit 81:61/HM1108202511495-0111-TIEY', 'TIEY', 0),
(1108, '2025-08-11', '12:15:40 PM', 'Resit Jualan : 81:61/HM1108202511495-0111-TIEY', 'TIEY', 0),
(1109, '2025-08-11', '12:15:40 PM', 'No Siri Jual : Add On-60365/TIEY/81:61 | No Resit 81:61/HM1108202511495-0111-TIEY', 'TIEY', 0),
(1110, '2025-08-11', '12:15:40 PM', 'Cetak Resit : RM25 | No Resit 81:61/HM1108202511495-0111-TIEY', 'TIEY', 0),
(1111, '2025-08-09', '12:16:10 PM', 'Pengurus hapus rekod peti besi CLOSING Tunai Keluar RM 0.00 | Tunai Masuk RM 9,720.00  pada tarikh 09-08-2025', 'hafiz4117', 0),
(1112, '2025-08-09', '12:16:23 PM', 'Pengurus hapus rekod peti besi BAIKI Tunai Keluar RM 0.00 | Tunai Masuk RM 25.00  pada tarikh 09-08-2025', 'hafiz4117', 0),
(1113, '2025-08-11', '12:16:30 PM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1114, '2025-08-11', '12:17:00 PM', 'Pelarasan Resit Jualan 81:61/HM1108202511495-0111-TIEY dari tarikh 11-08-2025 kepada 09-08-2025', 'hafiz4117', 0),
(1115, '2025-08-10', '12:20:57 PM', 'Pengurus hapus rekod peti besi CLOSING Tunai Keluar RM 0.00 | Tunai Masuk RM 11,270.00  pada tarikh 10-08-2025', 'hafiz4117', 0),
(1116, '2025-08-10', '12:21:48 PM', 'Pengurus hapus rekod peti besi Pendahuluan Cashier Tunai Keluar RM 9,495.00 | Tunai Masuk RM 0.00  pada tarikh 10-08-2025', 'hafiz4117', 0),
(1117, '2025-08-11', '12:21:50 PM', 'Klik butang Trade In', 'TIEY', 0),
(1118, '2025-08-11', '12:23:58 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1119, '2025-08-11', '12:29:33 PM', 'Klik butang Trade In', 'TIEY', 0),
(1120, '2025-08-11', '12:31:05 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1121, '2025-08-11', '12:32:11 PM', 'Klik butang Trade In', 'TIEY', 0),
(1122, '2025-08-11', '12:33:33 PM', 'Klik butang Trade In', 'TIEY', 0),
(1123, '2025-08-11', '12:33:36 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1124, '2025-08-11', '12:34:54 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1125, '2025-08-11', '12:35:02 PM', 'Klik butang Trade In', 'TIEY', 0),
(1126, '2025-08-11', '12:35:37 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1127, '2025-08-11', '12:37:37 PM', 'Klik butang Trade In : ', 'TIEY', 0),
(1128, '2025-08-11', '12:37:36 PM', 'Klik butang Trade In', 'TIEY', 0),
(1129, '2025-08-11', '12:39:05 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1130, '2025-08-11', '12:39:09 PM', 'Klik butang Trade In', 'TIEY', 0),
(1131, '2025-08-11', '12:39:32 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1132, '2025-08-11', '12:40:51 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1133, '2025-08-11', '12:40:54 PM', 'Klik butang Trade In', 'TIEY', 0),
(1134, '2025-08-11', '12:41:04 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1135, '2025-08-11', '12:42:35 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1136, '2025-08-11', '12:43:06 PM', 'Klik butang Trade In', 'TIEY', 0),
(1137, '2025-08-11', '12:43:12 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1138, '2025-08-11', '12:44:30 PM', 'Klik butang Trade In', 'TIEY', 0),
(1139, '2025-08-11', '12:44:32 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1140, '2025-08-11', '12:45:50 PM', 'Klik butang Trade In', 'TIEY', 0),
(1141, '2025-08-11', '12:46:11 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1142, '2025-08-11', '12:46:36 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1143, '2025-08-11', '12:46:39 PM', 'Klik butang Trade In', 'TIEY', 0),
(1144, '2025-08-11', '12:47:47 PM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(1145, '2025-08-11', '12:47:48 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1146, '2025-08-11', '12:48:10 PM', 'Klik butang Trade In', 'TIEY', 0),
(1147, '2025-08-11', '12:48:13 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1148, '2025-08-11', '12:48:58 PM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(1149, '2025-08-11', '12:48:59 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1150, '2025-08-11', '12:49:27 PM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(1151, '2025-08-11', '12:50:09 PM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(1152, '2025-08-11', '12:50:11 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1153, '2025-08-11', '12:50:47 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1154, '2025-08-11', '12:51:17 PM', 'Pelarasan Resit Trade In HM11082025-0028-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1155, '2025-08-11', '12:51:34 PM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(1156, '2025-08-11', '12:51:35 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1157, '2025-08-11', '12:53:51 PM', 'Klik butang Trade In', 'TIEY', 0),
(1158, '2025-08-11', '12:53:55 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1159, '2025-08-11', '12:54:02 PM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(1160, '2025-08-11', '12:54:04 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1161, '2025-08-11', '12:56:06 PM', 'Log masuk Cashier ID : CASHIER', 'CASHIER', 0),
(1162, '2025-08-11', '12:56:07 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1163, '2025-08-11', '1:00:31 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1164, '2025-08-11', '1:02:11 PM', 'Pelarasan Resit Trade In HM11082025-0031-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1165, '2025-08-11', '1:02:30 PM', 'Pelarasan Resit Trade In HM11082025-0035-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1166, '2025-08-11', '1:02:50 PM', 'Pelarasan Resit Trade In HM11082025-0036-TIEY dari tarikh 11-08-2025 kepada 10-08-2025', 'hafiz4117', 0),
(1167, '2025-08-11', '1:02:57 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1168, '2025-08-11', '1:05:33 PM', 'Klik butang Cetak Resit', 'CASHIER', 0),
(1169, '2025-08-11', '1:09:37 PM', 'Pengurus hapus rekod peti besi BAYAR LOKET N Tunai Keluar RM 1,700.00 | Tunai Masuk RM 0.00  pada tarikh 11-08-2025', 'hafiz4117', 0),
(1170, '2025-08-11', '1:10:46 PM', 'Klik butang Trade In', 'CASHIER', 0),
(1171, '2025-08-11', '1:12:31 PM', 'Klik butang Trade In', 'TIEY', 0),
(1172, '2025-08-11', '1:12:39 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1173, '2025-08-11', '1:14:06 PM', 'Klik butang Baki Tunai', 'CASHIER', 0),
(1174, '2025-08-11', '1:41:05 PM', 'Scan No Siri : HM2A0097', 'TIEY', 0),
(1175, '2025-08-11', '1:41:25 PM', 'Klik Bayar/Paid : RM7129.00 | No Resit 81:61/HM1108202512423-0117-TIEY', 'TIEY', 0),
(1176, '2025-08-11', '1:42:50 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1177, '2025-08-11', '1:43:06 PM', 'Klik Bayar/Paid : RM7129.00 | No Resit 81:61/HM1108202512423-0117-TIEY', 'TIEY', 0),
(1178, '2025-08-11', '1:43:31 PM', 'Resit Jualan : 81:61/HM1108202512423-0117-TIEY', 'TIEY', 0),
(1179, '2025-08-11', '1:43:32 PM', 'No Siri Jual : HM2A0097 | No Resit 81:61/HM1108202512423-0117-TIEY', 'TIEY', 0),
(1180, '2025-08-11', '1:43:32 PM', 'Cetak Resit : RM7079 | No Resit 81:61/HM1108202512423-0117-TIEY', 'TIEY', 0),
(1181, '2025-08-11', '1:44:04 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1182, '2025-08-11', '3:58:11 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1183, '2025-08-11', '4:17:54 PM', 'Klik butang Trade In', 'TIEY', 0),
(1184, '2025-08-11', '4:18:01 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1185, '2025-08-11', '5:45:42 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1186, '2025-08-11', '5:46:40 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1187, '2025-08-11', '5:48:02 PM', 'Cashier klik butang Log Out', 'TIEY', 0),
(1188, '2025-08-11', '5:48:32 PM', 'Cashier klik butang Log Out', 'CASHIER', 0),
(1189, '2025-08-12', '10:19:06 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1190, '2025-08-12', '11:51:21 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1191, '2025-08-12', '11:53:58 AM', 'Klik butang Trade In', 'TIEY', 0),
(1192, '2025-08-12', '11:54:06 AM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1193, '2025-08-12', '1:54:33 PM', 'Daftar No Siri LG2A0001 | Rantai Leher Kanak-Kanak | Berat : 3.08 gm', 'hafiz4117', 0),
(1194, '2025-08-12', '1:54:37 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0001', 'hafiz4117', 0),
(1195, '2025-08-12', '1:55:59 PM', 'Daftar No Siri LG2A0002 | Rantai Leher Kanak-Kanak | Berat : 7.85 gm', 'hafiz4117', 0),
(1196, '2025-08-12', '1:56:02 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0002', 'hafiz4117', 0),
(1197, '2025-08-12', '1:57:05 PM', 'Daftar No Siri LG2A0003 | Rantai Leher | Berat : 1.91 gm', 'hafiz4117', 0),
(1198, '2025-08-12', '1:57:08 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0003', 'hafiz4117', 0),
(1199, '2025-08-12', '1:57:59 PM', 'Daftar No Siri LG2A0004 | Rantai Leher | Berat : 2.17 gm', 'hafiz4117', 0),
(1200, '2025-08-12', '1:58:01 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0004', 'hafiz4117', 0),
(1201, '2025-08-12', '2:00:45 PM', 'Daftar No Siri LG2A0005 | Rantai Leher | Berat : 8.18 gm', 'hafiz4117', 0),
(1202, '2025-08-12', '2:00:49 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0005', 'hafiz4117', 0),
(1203, '2025-08-12', '2:02:49 PM', 'Daftar No Siri LG2A0006 | Rantai Tangan | Berat : 2.53 gm', 'hafiz4117', 0),
(1204, '2025-08-12', '2:03:18 PM', 'Pengurus hafiz4117 Hapus No Siri : LG2A0006', 'hafiz4117', 0),
(1205, '2025-08-12', '2:03:56 PM', 'Daftar No Siri LG2A0007 | Rantai Tangan | Berat : 2.53 gm', 'hafiz4117', 0),
(1206, '2025-08-12', '2:03:58 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0007', 'hafiz4117', 0),
(1207, '2025-08-12', '2:04:37 PM', 'Daftar No Siri LG2A0008 | Rantai Tangan | Berat : 2.33 gm', 'hafiz4117', 0),
(1208, '2025-08-12', '2:04:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0008', 'hafiz4117', 0),
(1209, '2025-08-12', '2:06:43 PM', 'Daftar No Siri LG2A0009 | Rantai Tangan | Berat : 11.81 gm', 'hafiz4117', 0),
(1210, '2025-08-12', '2:06:46 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0009', 'hafiz4117', 0),
(1211, '2025-08-12', '2:07:37 PM', 'Daftar No Siri LG2A0010 | Rantai Tangan | Berat : 6.06 gm', 'hafiz4117', 0),
(1212, '2025-08-12', '2:07:40 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0010', 'hafiz4117', 0),
(1213, '2025-08-12', '2:08:46 PM', 'Daftar No Siri LG2A0011 | Rantai Tangan | Berat : 6.10 gm', 'hafiz4117', 0),
(1214, '2025-08-12', '2:08:49 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0011', 'hafiz4117', 0),
(1215, '2025-08-12', '2:09:40 PM', 'Daftar No Siri LG2A0012 | Rantai Tangan | Berat : 5.12 gm', 'hafiz4117', 0),
(1216, '2025-08-12', '2:09:45 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0012', 'hafiz4117', 0),
(1217, '2025-08-12', '2:12:30 PM', 'Daftar No Siri LG2A0013 | Rantai Tangan | Berat : 23.25 gm', 'hafiz4117', 0),
(1218, '2025-08-12', '2:12:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0013', 'hafiz4117', 0),
(1219, '2025-08-12', '2:13:22 PM', 'Daftar No Siri LG2A0014 | Rantai Tangan | Berat : 5.32 gm', 'hafiz4117', 0),
(1220, '2025-08-12', '2:13:26 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0014', 'hafiz4117', 0),
(1221, '2025-08-12', '2:14:24 PM', 'Daftar No Siri LG2A0015 | Rantai Tangan | Berat : 9.29 gm', 'hafiz4117', 0),
(1222, '2025-08-12', '2:14:26 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0015', 'hafiz4117', 0),
(1223, '2025-08-12', '2:15:39 PM', 'Daftar No Siri LG2A0016 | Cincin | Berat : 0.54 gm', 'hafiz4117', 0),
(1224, '2025-08-12', '2:15:42 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0016', 'hafiz4117', 0),
(1225, '2025-08-12', '2:16:40 PM', 'Daftar No Siri LG2A0017 | Cincin | Berat : 6.41 gm', 'hafiz4117', 0),
(1226, '2025-08-12', '2:16:42 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0017', 'hafiz4117', 0),
(1227, '2025-08-12', '2:17:28 PM', 'Daftar No Siri LG2A0018 | Cincin | Berat : 2.78 gm', 'hafiz4117', 0),
(1228, '2025-08-12', '2:17:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0018', 'hafiz4117', 0),
(1229, '2025-08-12', '2:18:10 PM', 'Daftar No Siri LG2A0019 | Cincin | Berat : 2.03 gm', 'hafiz4117', 0),
(1230, '2025-08-12', '2:18:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0019', 'hafiz4117', 0),
(1231, '2025-08-12', '2:18:51 PM', 'Daftar No Siri LG2A0020 | Cincin | Berat : 2.31 gm', 'hafiz4117', 0),
(1232, '2025-08-12', '2:18:55 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0020', 'hafiz4117', 0),
(1233, '2025-08-12', '2:19:29 PM', 'Daftar No Siri LG2A0021 | Cincin | Berat : 2.85 gm', 'hafiz4117', 0),
(1234, '2025-08-12', '2:19:32 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0021', 'hafiz4117', 0),
(1235, '2025-08-12', '2:20:21 PM', 'Daftar No Siri LG2A0022 | Cincin | Berat : 3.22 gm', 'hafiz4117', 0),
(1236, '2025-08-12', '2:20:25 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0022', 'hafiz4117', 0),
(1237, '2025-08-12', '2:23:10 PM', 'Daftar No Siri LG2A0023 | Loket | Berat : 0.44 gm', 'hafiz4117', 0),
(1238, '2025-08-12', '2:23:13 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0023', 'hafiz4117', 0),
(1239, '2025-08-12', '2:23:38 PM', 'Daftar No Siri LG2A0024 | Loket | Berat : 0.48 gm', 'hafiz4117', 0),
(1240, '2025-08-12', '2:23:41 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0024', 'hafiz4117', 0),
(1241, '2025-08-12', '2:24:21 PM', 'Daftar No Siri LG2A0025 | Subang | Berat : 0.90 gm', 'hafiz4117', 0),
(1242, '2025-08-12', '2:24:24 PM', 'Pengurus : hafiz4117 Cetak No Siri : LG2A0025', 'hafiz4117', 0),
(1243, '2025-08-12', '2:39:00 PM', 'Pengurus hafiz4117 Hapus No Siri : LG2A0016', 'hafiz4117', 0),
(1244, '2025-08-12', '2:39:33 PM', 'Pengurus hafiz4117 Hapus No Siri : LG2A0016', 'hafiz4117', 0),
(1245, '2025-08-12', '2:40:17 PM', 'Pengurus hafiz4117 Hapus No Siri : LG2A0016', 'hafiz4117', 0),
(1246, '2025-08-12', '2:42:18 PM', 'Pengurus hafiz4117 Hapus No Siri : LG2A0016', 'hafiz4117', 0),
(1247, '2025-08-12', '2:57:21 PM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(1248, '2025-08-12', '2:58:24 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1249, '2025-08-12', '3:07:23 PM', 'Cashier klik butang Log Out', 'TIEY', 0),
(1250, '2025-08-12', '3:07:48 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1251, '2025-08-12', '3:08:31 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1252, '2025-08-12', '3:09:50 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1253, '2025-08-12', '3:26:49 PM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(1254, '2025-08-12', '3:29:55 PM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(1255, '2025-08-12', '5:25:00 PM', 'Klik butang Trade In', 'TIEY', 0),
(1256, '2025-08-12', '5:25:06 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1257, '2025-08-12', '5:31:28 PM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1258, '2025-08-12', '5:47:14 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1259, '2025-08-12', '5:56:56 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1260, '2025-08-12', '5:57:55 PM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1261, '2025-08-12', '5:57:58 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1262, '2025-08-12', '5:58:10 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1263, '2025-08-12', '5:58:45 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1264, '2025-08-12', '5:59:45 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1265, '2025-08-12', '6:00:01 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1266, '2025-08-12', '6:00:01 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1267, '2025-08-13', '10:43:14 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1268, '2025-08-13', '11:13:18 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1269, '2025-08-13', '11:14:57 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1270, '2025-08-13', '11:16:26 AM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1271, '2025-08-13', '11:31:46 AM', 'Klik butang Trade In', 'TIEY', 0),
(1272, '2025-08-13', '11:31:59 AM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1273, '2025-08-13', '12:27:27 PM', 'Scan No Siri : HM2A0106', 'TIEY', 0),
(1274, '2025-08-13', '12:27:57 PM', 'Klik Bayar/Paid : RM2022.68 | No Resit 81:61/HM1308202511145-0129-TIEY', 'TIEY', 0),
(1275, '2025-08-13', '12:30:21 PM', 'Resit Jualan : 81:61/HM1308202511145-0129-TIEY', 'TIEY', 0),
(1276, '2025-08-13', '12:30:21 PM', 'No Siri Jual : HM2A0106 | No Resit 81:61/HM1308202511145-0129-TIEY', 'TIEY', 0),
(1277, '2025-08-13', '12:30:21 PM', 'Cetak Resit : RM1970 | No Resit 81:61/HM1308202511145-0129-TIEY', 'TIEY', 0),
(1278, '2025-08-13', '1:26:09 PM', 'Scan No Siri : LG2A0011', 'TIEY', 0),
(1279, '2025-08-13', '1:26:25 PM', 'Klik Bayar/Paid : RM2901.85 | No Resit 81:61/HM1308202512302-0130-TIEY', 'TIEY', 0),
(1280, '2025-08-13', '1:27:31 PM', 'Resit Jualan : 81:61/HM1308202512302-0130-TIEY', 'TIEY', 0),
(1281, '2025-08-13', '1:27:31 PM', 'No Siri Jual : LG2A0011 | No Resit 81:61/HM1308202512302-0130-TIEY', 'TIEY', 0),
(1282, '2025-08-13', '1:27:31 PM', 'Cetak Resit : RM2880 | No Resit 81:61/HM1308202512302-0130-TIEY', 'TIEY', 0),
(1283, '2025-08-13', '1:36:57 PM', 'Klik butang Trade In', 'TIEY', 0),
(1284, '2025-08-13', '1:37:06 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1285, '2025-08-13', '2:07:01 PM', 'Klik butang Trade In', 'TIEY', 0),
(1286, '2025-08-13', '2:07:10 PM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1287, '2025-08-13', '2:33:07 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1288, '2025-08-13', '2:45:25 PM', 'Scan No Siri : HM2A0181', 'TIEY', 0),
(1289, '2025-08-13', '2:45:44 PM', 'Klik butang Ubah Berat No Siri : HM2A0181', 'TIEY', 0),
(1290, '2025-08-13', '2:46:09 PM', 'Terima Ubah Berat : 2.97 gm | No Siri : HM2A0181', 'TIEY', 0),
(1291, '2025-08-13', '2:46:22 PM', 'Klik Bayar/Paid : RM1478.08 | No Resit 81:61/HM1308202512734-0131-TIEY', 'TIEY', 0),
(1292, '2025-08-13', '2:46:53 PM', 'Resit Jualan : 81:61/HM1308202512734-0131-TIEY', 'TIEY', 0),
(1293, '2025-08-13', '2:46:54 PM', 'No Siri Jual : HM2A0181 | No Resit 81:61/HM1308202512734-0131-TIEY', 'TIEY', 0),
(1294, '2025-08-13', '2:46:54 PM', 'Cetak Resit : RM1470 | No Resit 81:61/HM1308202512734-0131-TIEY', 'TIEY', 0),
(1295, '2025-08-13', '2:55:56 PM', 'Scan No Siri : HM2A0035', 'TIEY', 0),
(1296, '2025-08-13', '2:56:11 PM', 'Klik Bayar/Paid : RM679.71 | No Resit 81:61/HM1308202524658-0132-TIEY', 'TIEY', 0),
(1297, '2025-08-13', '2:56:34 PM', 'Resit Jualan : 81:61/HM1308202524658-0132-TIEY', 'TIEY', 0),
(1298, '2025-08-13', '2:56:36 PM', 'No Siri Jual : HM2A0035 | No Resit 81:61/HM1308202524658-0132-TIEY', 'TIEY', 0),
(1299, '2025-08-13', '2:56:36 PM', 'Cetak Resit : RM670 | No Resit 81:61/HM1308202524658-0132-TIEY', 'TIEY', 0),
(1300, '2025-08-13', '4:34:28 PM', 'Klik butang Trade In', 'TIEY', 0),
(1301, '2025-08-13', '4:34:42 PM', 'Klik butang Trade In : ', 'TIEY', 0),
(1302, '2025-08-13', '4:41:51 PM', 'Scan No Siri : LG2A0015', 'TIEY', 0),
(1303, '2025-08-13', '4:42:09 PM', 'Scan No Siri : LG2A0018', 'TIEY', 0),
(1304, '2025-08-13', '4:42:25 PM', 'Klik butang Ubah Berat No Siri : LG2A0018', 'TIEY', 0),
(1305, '2025-08-13', '4:43:45 PM', 'Klik butang Ubah Berat No Siri : LG2A0018', 'TIEY', 0),
(1306, '2025-08-13', '4:46:46 PM', 'Klik butang Trade In', 'TIEY', 0),
(1307, '2025-08-13', '4:46:56 PM', 'Klik butang Trade In : ', 'TIEY', 0),
(1308, '2025-08-13', '4:51:46 PM', 'Resit Jualan : 81:61/HM1308202525643-0133-TIEY', 'TIEY', 0),
(1309, '2025-08-13', '4:51:46 PM', 'No Siri Jual : LG2A0015 | No Resit 81:61/HM1308202525643-0133-TIEY', 'TIEY', 0),
(1310, '2025-08-13', '4:51:47 PM', 'No Siri Jual : LG2A0018 | No Resit 81:61/HM1308202525643-0133-TIEY', 'TIEY', 0),
(1311, '2025-08-13', '4:51:47 PM', 'Cetak Resit : RM5759 | No Resit 81:61/HM1308202525643-0133-TIEY', 'TIEY', 0),
(1312, '2025-08-13', '5:01:00 PM', 'Klik butang Baki Tunai', 'TIEY', 0),
(1313, '2025-08-13', '5:41:04 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1314, '2025-08-13', '5:41:22 PM', 'Klik butang Denominasi', 'TIEY', 0),
(1315, '2025-08-14', '10:49:41 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1316, '2025-08-14', '10:49:59 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1317, '2025-08-14', '10:50:36 AM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(1318, '2025-08-14', '10:52:29 AM', 'Klik butang Cetak Resit', 'TIEY', 0),
(1319, '2025-08-14', '10:53:40 AM', 'Scan No Siri : HM2A0190', 'TIEY', 0),
(1320, '2025-08-14', '10:54:21 AM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(1321, '2025-08-14', '11:09:15 AM', 'Hapus Cart No Siri Add On-60366/TIEY/81:61', 'TIEY', 0),
(1322, '2025-08-14', '11:09:22 AM', 'Hapus Cart No Siri HM2A0190', 'TIEY', 0),
(1323, '2025-08-14', '11:10:45 AM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0),
(1324, '2025-08-14', '11:29:01 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1325, '2025-08-14', '11:29:49 AM', 'Cashier klik butang Log Out', 'TIEY', 0),
(1326, '2025-08-14', '11:30:15 AM', 'Log masuk Cashier ID : TIEY', 'TIEY', 0),
(1327, '2025-08-14', '11:30:23 AM', 'Klik butang Trade In', 'TIEY', 0),
(1328, '2025-08-14', '11:31:08 AM', 'Klik butang Buy Back : ', 'TIEY', 0),
(1329, '2025-08-14', '11:32:56 AM', 'Klik butang Add On Bayaran', 'TIEY', 0),
(1330, '2025-08-14', '11:33:30 AM', 'Klik Bayar/Paid : RM25.00 | No Resit 81:61/HM1408202511301-0136-TIEY', 'TIEY', 0),
(1331, '2025-08-14', '11:33:51 AM', 'Resit Jualan : 81:61/HM1408202511301-0136-TIEY', 'TIEY', 0),
(1332, '2025-08-14', '11:33:51 AM', 'No Siri Jual : Add On-60367/TIEY/81:61 | No Resit 81:61/HM1408202511301-0136-TIEY', 'TIEY', 0),
(1333, '2025-08-14', '11:33:51 AM', 'Cetak Resit : RM25 | No Resit 81:61/HM1408202511301-0136-TIEY', 'TIEY', 0),
(1334, '2025-08-14', '11:37:26 AM', 'Scan No Siri : HM2A0250', 'TIEY', 0),
(1335, '2025-08-14', '11:37:42 AM', 'Klik Bayar/Paid : RM470.00 | No Resit 81:61/HM1408202511335-0137-TIEY', 'TIEY', 0),
(1336, '2025-08-14', '11:37:53 AM', 'Resit Jualan : 81:61/HM1408202511335-0137-TIEY', 'TIEY', 0),
(1337, '2025-08-14', '11:37:54 AM', 'No Siri Jual : HM2A0250 | No Resit 81:61/HM1408202511335-0137-TIEY', 'TIEY', 0),
(1338, '2025-08-14', '11:37:54 AM', 'Cetak Resit : RM470 | No Resit 81:61/HM1408202511335-0137-TIEY', 'TIEY', 0),
(1339, '2025-08-14', '11:39:08 AM', 'Log masuk Manager ID : hafiz4117', 'hafiz4117', 0),
(1340, '2025-08-14', '11:55:40 AM', 'Log masuk Manager ID : ADMIN', 'ADMIN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `a_updatesystem`
--

DROP TABLE IF EXISTS `a_updatesystem`;
CREATE TABLE IF NOT EXISTS `a_updatesystem` (
  `recno` int NOT NULL,
  `taraf` varchar(100) NOT NULL DEFAULT '-',
  `tarikh` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_updatesystem`
--

INSERT INTO `a_updatesystem` (`recno`, `taraf`, `tarikh`) VALUES
(1, 'A', '2022-05-11'),
(2, 'AKAUN', '2022-05-31'),
(3, 'C', '2022-06-02'),
(4, 'T', '2022-05-11'),
(1, 'A', '2022-05-11'),
(2, 'AKAUN', '2022-05-31'),
(3, 'C', '2022-06-02'),
(4, 'T', '2022-05-11'),
(1, 'A', '2022-05-11'),
(2, 'AKAUN', '2022-05-31'),
(3, 'C', '2022-06-02'),
(4, 'T', '2022-05-11'),
(1, 'A', '2022-05-11'),
(2, 'AKAUN', '2022-05-31'),
(3, 'C', '2022-06-02'),
(4, 'T', '2022-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nama_akaun` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `no_akaun` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `bank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `baki_akaun` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tarikh_update` date DEFAULT NULL,
  `masa_update` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `detail` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `setdefault` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`recno`, `nama_akaun`, `no_akaun`, `bank`, `baki_akaun`, `tarikh_update`, `masa_update`, `detail`, `setdefault`) VALUES
(7, 'Hafiz Muhamad Jewel', '03010007149711', 'BANK MUAMALAT', '0.00', '2025-07-28', '2:41:36 PM', 'Hafiz Muhamad Jewel-03010007149711[BANK MUAMALAT]', 0),
(9, 'PERTUKANGAN EMAS PERAK & PERMATA', '106150009923', 'AFFIN BANK', '0.00', '2025-07-31', '11:08:40 AM', 'PERTUKANGAN EMAS PERAK & PERMATA-106150009923[AFFIN BANK]', 0),
(8, 'Hafiz Muhamad Jewel', '553010662942', 'MAYBANK', '13721.00', '2025-07-28', '2:45:07 PM', 'Hafiz Muhamad Jewel-553010662942[MAYBANK]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `baucerdiskaun`
--

DROP TABLE IF EXISTS `baucerdiskaun`;
CREATE TABLE IF NOT EXISTS `baucerdiskaun` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `nobaucer` varchar(100) DEFAULT NULL,
  `jumlah_baucer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `belian` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tebus_baucer` decimal(11,2) NOT NULL,
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baucerdiskaun`
--

INSERT INTO `baucerdiskaun` (`recno`, `tarikh`, `nobaucer`, `jumlah_baucer`, `belian`, `tebus_baucer`, `idstaff`) VALUES
(1, '2024-02-04', 'VC0012', '50.00', '8000.00', '5000.00', 'TEST');

-- --------------------------------------------------------

--
-- Table structure for table `bayaranansuran`
--

DROP TABLE IF EXISTS `bayaranansuran`;
CREATE TABLE IF NOT EXISTS `bayaranansuran` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `kodansuran` varchar(150) NOT NULL DEFAULT '0',
  `transaksi` varchar(100) NOT NULL DEFAULT '0',
  `recbayar` int NOT NULL DEFAULT '0',
  `jumlahbayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(100) NOT NULL DEFAULT '0',
  `jenisbayaran` varchar(300) NOT NULL DEFAULT '0',
  `cawangan` varchar(200) NOT NULL DEFAULT '0',
  `negeri` varchar(300) NOT NULL DEFAULT '0',
  `idtransaksi` varchar(300) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bayaranbaiki`
--

DROP TABLE IF EXISTS `bayaranbaiki`;
CREATE TABLE IF NOT EXISTS `bayaranbaiki` (
  `recno` int NOT NULL,
  `tarikh` date DEFAULT NULL,
  `noresitbaiki` varchar(100) NOT NULL DEFAULT '0.00',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaf` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bayaranbook`
--

DROP TABLE IF EXISTS `bayaranbook`;
CREATE TABLE IF NOT EXISTS `bayaranbook` (
  `recno` int NOT NULL,
  `tarikh` date DEFAULT NULL,
  `nama` longtext,
  `nokp` varchar(50) DEFAULT NULL,
  `nosiri` varchar(100) DEFAULT NULL,
  `marhun` varchar(150) DEFAULT NULL,
  `berat` decimal(11,2) DEFAULT NULL,
  `bayaran` decimal(11,2) DEFAULT NULL,
  `jenisbayar` varchar(50) DEFAULT NULL,
  `nota` longtext,
  `idstaff` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cawangan` varchar(200) DEFAULT NULL,
  `negeri` varchar(200) DEFAULT NULL,
  `jenisbook` varchar(50) NOT NULL DEFAULT '-',
  `tarikhakhir` date DEFAULT NULL,
  `durasilock` varchar(100) NOT NULL DEFAULT '-',
  `noresitbook` varchar(200) NOT NULL DEFAULT '-',
  `tarikhclear` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bayarancustomer`
--

DROP TABLE IF EXISTS `bayarancustomer`;
CREATE TABLE IF NOT EXISTS `bayarancustomer` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noresit` varchar(100) NOT NULL DEFAULT '0',
  `bayaran` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskauncust` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaf` varchar(100) NOT NULL DEFAULT '0',
  `cawangan` varchar(100) NOT NULL DEFAULT '0',
  `jualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `t_update` date DEFAULT NULL,
  `idstaff_update` varchar(100) NOT NULL DEFAULT '0',
  `diskaunplatinum` decimal(11,2) NOT NULL DEFAULT '0.00',
  `modal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayaranonline` decimal(11,2) NOT NULL DEFAULT '0.00',
  `negeri` varchar(200) NOT NULL DEFAULT '0',
  `statuspelanggan` varchar(150) NOT NULL DEFAULT '0',
  `nokp` varchar(25) NOT NULL DEFAULT '0',
  `nama` varchar(150) NOT NULL DEFAULT '-',
  `diskaungoldbar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kodcaw` varchar(10) NOT NULL DEFAULT 'MG',
  `creditkoop` int NOT NULL DEFAULT '0',
  `namacredit` varchar(100) NOT NULL DEFAULT '-',
  `nokpcredit` varchar(50) NOT NULL DEFAULT '-',
  `debitpay` int NOT NULL DEFAULT '0',
  `notracking` varchar(200) NOT NULL DEFAULT '-',
  `masa` varchar(150) NOT NULL DEFAULT '-',
  `nosirikupon` varchar(100) NOT NULL DEFAULT '-',
  `diskaunbaucer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nogeneratebaucer` varchar(200) NOT NULL DEFAULT '-',
  `salesnew` decimal(11,2) NOT NULL DEFAULT '0.00',
  `salespreloved` decimal(11,2) NOT NULL DEFAULT '0.00',
  `saleswafer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `untung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `onlineshop` int NOT NULL DEFAULT '0',
  `daftaragen` int NOT NULL DEFAULT '0',
  `berat22` decimal(11,3) NOT NULL DEFAULT '0.000',
  `berat24` decimal(11,3) NOT NULL DEFAULT '0.000',
  `idcashier_komisyen` varchar(100) NOT NULL DEFAULT '-',
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `bayaranpv` decimal(11,2) NOT NULL DEFAULT '0.00',
  `pv` varchar(150) NOT NULL DEFAULT '-',
  `beratpv` decimal(11,2) NOT NULL DEFAULT '0.00',
  `pbaki` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `jenisbayaran` varchar(100) NOT NULL DEFAULT 'Online Transfer',
  `caj` decimal(11,2) NOT NULL DEFAULT '0.00',
  `peratuscaj` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bank_id` varchar(150) NOT NULL DEFAULT '-',
  `jana` int NOT NULL DEFAULT '1',
  `ref_id` varchar(150) NOT NULL DEFAULT '-',
  `tabung` int NOT NULL DEFAULT '0',
  `tin` varchar(100) NOT NULL DEFAULT '-',
  `overallStatus` varchar(150) NOT NULL DEFAULT '-',
  `lhdn_document_status` varchar(150) NOT NULL DEFAULT '-',
  `dateTimeValidated` varchar(150) NOT NULL DEFAULT '-',
  `lhdn_document_submissionUid` varchar(150) NOT NULL DEFAULT '-',
  `validate` varchar(300) NOT NULL DEFAULT '-',
  `kom_peratus` int NOT NULL DEFAULT '0',
  `submissionUid` varchar(200) NOT NULL DEFAULT '-',
  `submit_invoice` varchar(150) NOT NULL DEFAULT '-',
  `noinvois_backup` varchar(150) NOT NULL DEFAULT '-',
  `bayaranonline2` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jenisbayaran2` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`),
  KEY `noresit` (`noresit`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayarancustomer`
--

INSERT INTO `bayarancustomer` (`recno`, `tarikh`, `noresit`, `bayaran`, `diskauncust`, `baki`, `idstaf`, `cawangan`, `jualan`, `t_update`, `idstaff_update`, `diskaunplatinum`, `modal`, `bayaranonline`, `negeri`, `statuspelanggan`, `nokp`, `nama`, `diskaungoldbar`, `kodcaw`, `creditkoop`, `namacredit`, `nokpcredit`, `debitpay`, `notracking`, `masa`, `nosirikupon`, `diskaunbaucer`, `nogeneratebaucer`, `salesnew`, `salespreloved`, `saleswafer`, `untung`, `onlineshop`, `daftaragen`, `berat22`, `berat24`, `idcashier_komisyen`, `noinvois`, `bayaranpv`, `pv`, `beratpv`, `pbaki`, `jenisbayaran`, `caj`, `peratuscaj`, `bank_id`, `jana`, `ref_id`, `tabung`, `tin`, `overallStatus`, `lhdn_document_status`, `dateTimeValidated`, `lhdn_document_submissionUid`, `validate`, `kom_peratus`, `submissionUid`, `submit_invoice`, `noinvois_backup`, `bayaranonline2`, `jenisbayaran2`) VALUES
(1, '2025-08-04', '81:61/HM0408202512533-0067-TIEY', '0.00', '0.42', '0.00', 'TIEY', 'HMPASIRTUMBOH', '2890.00', NULL, '0', '0.00', '2724.01', '2890.00', 'Kelantan', '-', '920302035987', 'SYASYA', '0.00', '-', 0, '-', '-', 0, '-', '1:22:57 PM', '-', '0.00', '-', '2890.42', '0.00', '0.00', '148.55', 0, 0, '0.000', '0.000', 'TIEY', 'R0287', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(2, '2025-08-04', '81:61/HM0408202512303-0068-TIEY', '1500.00', '52.60', '0.00', 'TIEY', 'HMPASIRTUMBOH', '1500.00', NULL, '0', '0.00', '1434.34', '0.00', 'Kelantan', '-', '571017035584', 'KHADIJAH BINTI MAMAT', '0.00', '-', 0, '-', '-', 0, '-', '1:32:39 PM', '-', '0.00', '-', '1552.60', '0.00', '0.00', '65.66', 0, 0, '0.000', '0.000', 'TIEY', 'R0288', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(3, '2025-08-04', '81:61/HM0408202513244-0069-TIEY', '0.00', '6.70', '0.00', 'TIEY', 'HMPASIRTUMBOH', '670.00', NULL, '0', '0.00', '585.64', '670.00', 'Kelantan', '-', '920326035425', 'MAZWAN FIRDAUS BIN MUHAMAD', '0.00', '-', 0, '-', '-', 0, '-', '2:40:00 PM', '-', '0.00', '-', '676.70', '0.00', '0.00', '84.36', 0, 0, '0.000', '0.000', 'TIEY', 'R0289', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(4, '2025-08-04', '81:61/HM0408202524006-0070-TIEY', '0.00', '50.03', '0.00', 'TIEY', 'HMPASIRTUMBOH', '1336.00', NULL, '0', '0.00', '1255.25', '1336.00', 'Kelantan', '-', '920326035425', 'MAZWAN FIRDAUS BIN MUHAMAD', '0.00', '-', 0, '-', '-', 0, '-', '2:47:20 PM', '-', '0.00', '-', '1386.03', '0.00', '0.00', '80.75', 0, 0, '0.000', '0.000', 'TIEY', 'R0290', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(5, '2025-08-04', '81:61/HM0408202535127-0072-TIEY', '580.00', '9.71', '0.00', 'TIEY', 'HMPASIRTUMBOH', '580.00', NULL, '0', '0.00', '497.26', '0.00', 'Kelantan', '-', 'C8722738', 'RIYANTO', '0.00', '-', 0, '-', '-', 0, '-', '3:55:22 PM', '-', '0.00', '-', '589.71', '0.00', '0.00', '82.74', 0, 0, '0.000', '0.000', 'TIEY', 'R0291', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(6, '2025-08-04', '81:61/HM0408202535528-0073-TIEY', '0.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '25.00', NULL, '0', '0.00', '0.00', '25.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '4:49:08 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0292', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(7, '2025-08-05', '81:61/HM0508202511392-0077-hanim', '15.00', '0.00', '0.00', 'hanim', 'HMPASIRTUMBOH', '15.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '12:04:03 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'hanim', 'R0293', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(8, '2025-08-05', '81:61/HM0508202512040-0079-hanim', '30.00', '0.00', '0.00', 'hanim', 'HMPASIRTUMBOH', '30.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '12:46:59 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'hanim', 'R0294', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(10, '2025-08-05', 'T/050820250082-hanim', '250.00', '0.00', '0.00', 'hanim', 'HMPASIRTUMBOH', '250.00', NULL, '0', '0.00', '250.00', '0.00', 'Kelantan', '-', '061012031066', 'NUR AKILA QISTINA BINTI MOHD LUKMAN', '0.00', '-', 0, '-', '-', 0, '-', '1:19:12 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'hanim', 'T/050820250082-hanim', '0.00', '0', '0.00', '-', '-', '0.00', '0.00', '-', 0, '-', 1, '-', '-', '-', '-', '-', '-', 0, '-', '-', '-', '0.00', '-'),
(11, '2025-08-05', '81:61/HM0508202512533-0081-hanim', '1070.00', '55.78', '0.00', 'hanim', 'HMPASIRTUMBOH', '1070.00', NULL, '0', '0.00', '994.53', '0.00', 'Kelantan', '-', '061012031066', 'NUR AKILA QISTINA BINTI MOHD LUKMAN', '0.00', '-', 0, '-', '-', 0, '-', '1:24:57 PM', '-', '0.00', '-', '1125.78', '0.00', '0.00', '75.47', 0, 0, '0.000', '0.000', 'hanim', 'R0296', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(12, '2025-08-05', '81:61/HM0508202512506-0083-hanim', '405.00', '0.96', '0.00', 'hanim', 'HMPASIRTUMBOH', '405.00', NULL, '0', '0.00', '307.24', '0.00', 'Kelantan', '-', '030402030948', 'NOR SUHAINI BINTI MAMAT', '0.00', '-', 0, '-', '-', 0, '-', '4:16:49 PM', '-', '0.00', '-', '405.96', '0.00', '0.00', '96.41', 0, 0, '0.000', '0.000', 'hanim', 'R0297', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(13, '2025-08-06', '81:61/HM0608202510063-0085-TIEY', '0.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '10.00', NULL, '0', '0.00', '0.00', '10.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '10:24:26 AM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0298', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(14, '2025-08-06', '81:61/HM0608202511595-0087-hanim', '3370.00', '0.63', '0.00', 'hanim', 'HMPASIRTUMBOH', '3370.00', NULL, '0', '0.00', '3147.08', '0.00', 'Kelantan', '-', '850508036006', 'NORAINI HAZIRA BINTI CHE SOH', '0.00', '-', 0, '-', '-', 0, '-', '12:10:19 PM', '-', '0.00', '-', '3370.63', '0.00', '0.00', '201.63', 0, 0, '0.000', '0.000', 'hanim', 'R0300', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(15, '2025-08-06', '81:61/HM0608202525028-0089-TIEY', '25.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '25.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '2:59:11 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0301', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(16, '2025-08-06', '81:61/HM0608202525917-0090-TIEY', '0.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '540.00', NULL, '0', '0.00', '441.91', '540.00', 'Kelantan', '-', '930529035508', 'WAN MOHD DHINI', '0.00', '-', 0, '-', '-', 0, '-', '4:20:27 PM', '-', '0.00', '-', '0.00', '0.00', '540.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0302', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(17, '2025-08-07', '81:61/HM0708202522612-0101-TIEY', '30.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '30.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '4:11:08 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0303', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(18, '2025-08-07', '81:61/HM0708202541112-0102-TIEY', '450.00', '2.22', '0.00', 'TIEY', 'HMPASIRTUMBOH', '450.00', NULL, '0', '0.00', '355.85', '0.00', 'Kelantan', '-', '870308035664', 'SITI FILZAH BINTI AB AZIZ', '0.00', '-', 0, '-', '-', 0, '-', '5:02:30 PM', '-', '0.00', '-', '452.22', '0.00', '0.00', '94.15', 0, 0, '0.000', '0.000', 'TIEY', 'R0304', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(19, '2025-08-07', '81:61/HM0708202554635-0104-TIEY', '1050.00', '34.86', '0.00', 'TIEY', 'HMPASIRTUMBOH', '1050.00', NULL, '0', '0.00', '944.75', '0.00', 'Kelantan', '-', '900222035142', 'FARIS', '0.00', '-', 0, '-', '-', 0, '-', '7:06:25 PM', '-', '0.00', '-', '1084.86', '0.00', '0.00', '105.25', 0, 0, '0.000', '0.000', 'TIEY', 'R0305', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(20, '2025-08-10', '81:61/HM1108202511335-0108-TIEY', '300.00', '3.81', '0.00', 'TIEY', 'HMPASIRTUMBOH', '10300.00', NULL, '0', '0.00', '9778.12', '10000.00', 'Kelantan', '-', '860703295264', 'MARIAM BINTI ABDUL HALIM', '0.00', '-', 0, '-', '-', 0, '-', '11:44:24 AM', '-', '0.00', '-', '10303.81', '0.00', '0.00', '521.88', 0, 0, '0.000', '0.000', 'TIEY', 'R0306', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(21, '2025-08-10', '81:61/HM1108202511443-0109-TIEY', '25.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '25.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '11:45:33 AM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0307', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(22, '2025-08-10', '81:61/HM1108202511453-0110-TIEY', '1450.00', '12.02', '0.00', 'TIEY', 'HMPASIRTUMBOH', '1700.00', NULL, '0', '0.00', '1912.01', '0.00', 'Kelantan', '-', '061012031066', 'NUR AKILA QISTINA BINTI MOHD LUKMAN', '0.00', '-', 0, '-', '-', 0, '-', '11:49:50 AM', '-', '0.00', '-', '1712.02', '0.00', '0.00', '-212.01', 0, 0, '0.000', '0.000', 'TIEY', 'R0308', '250.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(23, '2025-08-09', '81:61/HM1108202511495-0111-TIEY', '25.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '25.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', '-', '-', '0.00', '-', 0, '-', '-', 0, '-', '12:15:40 PM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0309', '0.00', '-', '0.00', 'Tunai', '-', '0.00', '0.00', '-', 0, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(24, '2025-08-11', '81:61/HM1108202512423-0117-TIEY', '0.00', '50.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '7079.00', NULL, '0', '0.00', '6848.65', '7079.00', 'Kelantan', '-', '900213035594', 'NUR FATIHAH BINTI CHE LAH', '0.00', '-', 0, '-', '-', 0, '-', '1:43:30 PM', '-', '0.00', '-', '7129.00', '0.00', '0.00', '230.35', 0, 0, '0.000', '0.000', 'TIEY', 'R0310', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 0, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(25, '2025-08-13', '81:61/HM1308202511145-0129-TIEY', '1970.00', '52.68', '0.00', 'TIEY', 'HMPASIRTUMBOH', '1970.00', NULL, '0', '0.00', '1868.57', '0.00', 'Kelantan', '-', '720313035358 ', 'ZANARIAH BINTI MAT RUSOK@HASSAN ', '0.00', '-', 0, '-', '-', 0, '-', '12:30:19 PM', '-', '0.00', '-', '2022.68', '0.00', '0.00', '101.43', 0, 0, '0.000', '0.000', 'TIEY', 'R0311', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(26, '2025-08-13', '81:61/HM1308202512302-0130-TIEY', '0.00', '21.85', '0.00', 'TIEY', 'HMPASIRTUMBOH', '2880.00', NULL, '0', '0.00', '2910.26', '2880.00', 'Kelantan', '-', '890731036056', 'SITI NOORAIN BINTI AB AZIS', '0.00', '-', 0, '-', '-', 0, '-', '1:27:30 PM', '-', '0.00', '-', '2901.85', '0.00', '0.00', '-30.26', 0, 0, '0.000', '0.000', 'TIEY', 'R0312', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(27, '2025-08-13', '81:61/HM1308202512734-0131-TIEY', '0.00', '8.08', '0.00', 'TIEY', 'HMPASIRTUMBOH', '1470.00', NULL, '0', '0.00', '1352.47', '1470.00', 'Kelantan', '-', '980816035836', 'NUR IRDAWATIE BINTI NAZREE', '0.00', '-', 0, '-', '-', 0, '-', '2:46:52 PM', '-', '0.00', '-', '1478.08', '0.00', '0.00', '115.73', 0, 0, '0.000', '0.000', 'TIEY', 'R0313', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(28, '2025-08-13', '81:61/HM1308202524658-0132-TIEY', '670.00', '9.71', '0.00', 'TIEY', 'HMPASIRTUMBOH', '670.00', NULL, '0', '0.00', '560.28', '0.00', 'Kelantan', '-', '730701035674', 'JAMILAH BINTI RAHMAN ', '0.00', '-', 0, '-', '-', 0, '-', '2:56:32 PM', '-', '0.00', '-', '679.71', '0.00', '0.00', '109.72', 0, 0, '0.000', '0.000', 'TIEY', 'R0314', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', '-', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(29, '2025-08-13', '81:61/HM1308202525643-0133-TIEY', '100.00', '48.40', '0.00', 'TIEY', 'HMPASIRTUMBOH', '5759.00', NULL, '0', '0.00', '5681.09', '0.00', 'Kelantan', '-', '720607035708', 'HASMAH BINTI ISMAIL', '0.00', '-', 0, '-', '-', 0, '-', '4:51:43 PM', '-', '0.00', '-', '5807.40', '0.00', '0.00', '77.91', 0, 0, '0.000', '0.000', 'TIEY', 'R0315', '5659.00', '-', '31.69', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(30, '2025-08-14', '81:61/HM1408202511301-0136-TIEY', '25.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '25.00', NULL, '0', '0.00', '0.00', '0.00', 'Kelantan', '-', 'N 0419975', '-', '0.00', '-', 0, '-', '-', 0, '-', '11:33:51 AM', '-', '0.00', '-', '0.00', '0.00', '0.00', '0.00', 0, 0, '0.000', '0.000', 'TIEY', 'R0316', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', ''),
(31, '2025-08-14', '81:61/HM1408202511335-0137-TIEY', '470.00', '0.00', '0.00', 'TIEY', 'HMPASIRTUMBOH', '470.00', NULL, '0', '0.00', '441.91', '0.00', 'Kelantan', '-', '920326035425', '-', '0.00', '-', 0, '-', '-', 0, '-', '11:37:53 AM', '-', '0.00', '-', '0.00', '0.00', '470.00', '28.09', 0, 0, '0.000', '0.000', 'TIEY', 'R0317', '0.00', '-', '0.00', 'Tunai', 'Online Transfer', '0.00', '0.00', '-', 1, '-', 0, '', '-', 'Waiting', '-', '-', '-', 0, '-', 'QR E-Invois Submission', '-', '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `bayaran_credit`
--

DROP TABLE IF EXISTS `bayaran_credit`;
CREATE TABLE IF NOT EXISTS `bayaran_credit` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noinvois` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `beratasalgm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `creditgm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayarangm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bakicreditgm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `invois_update` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `bakiasalrm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayarcreditrm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bakicreditrm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bayaran_hutangsuplier`
--

DROP TABLE IF EXISTS `bayaran_hutangsuplier`;
CREATE TABLE IF NOT EXISTS `bayaran_hutangsuplier` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `supplier` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `notransaksi` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `beratasalgm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayaranscrap` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayaranrm` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bakihutang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `jenisbayaran` varchar(150) NOT NULL DEFAULT '-',
  `noinvois` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayaran_hutangsuplier`
--

INSERT INTO `bayaran_hutangsuplier` (`recno`, `tarikh`, `supplier`, `notransaksi`, `beratasalgm`, `bayaranscrap`, `bayaranrm`, `bakihutang`, `remark`, `jenisbayaran`, `noinvois`) VALUES
(5, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0008', '1044.67', '0.00', '-25000.00', '980.45', 'BAYARAN 1', 'Online Transfer', '-'),
(6, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0010', '980.45', '0.00', '-15000.00', '900.22', 'BAYARAN 2', 'Online Transfer', '-'),
(9, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0021', '900.22', '-56.25', '0.00', '856.48', 'BAYARAN 3', 'Bayar Scrap', '-'),
(10, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0022', '856.48', '-35.45', '0.00', '826.45', 'BAYARAN 4', 'Bayar Scrap', '-'),
(11, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0027', '826.45', '-10.00', '0.00', '822.00', 'BAYARAN 5', 'Bayar Scrap', '-'),
(12, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0028', '822.00', '-10.00', '0.00', '800.00', 'BAYARAN 6', 'Bayar Scrap', '-'),
(13, '2025-07-19', 'SENTRAL MINT', 'RL19072025-0031', '800.00', '-15.00', '0.00', '780.00', 'BAYARAN 7', 'Bayar Scrap', '-'),
(14, '2025-07-20', 'KENG HENG', 'RL20072025-0033', '2.05', '-3.00', '0.00', '0.00', 'SETTELMENT', 'Bayar Scrap', '-');

-- --------------------------------------------------------

--
-- Table structure for table `bayarhutang`
--

DROP TABLE IF EXISTS `bayarhutang`;
CREATE TABLE IF NOT EXISTS `bayarhutang` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noresit` varchar(100) NOT NULL DEFAULT '-',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `detail` varchar(150) NOT NULL DEFAULT '-',
  `jenis` varchar(150) DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `belitrade`
--

DROP TABLE IF EXISTS `belitrade`;
CREATE TABLE IF NOT EXISTS `belitrade` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikhtrade` date DEFAULT NULL,
  `tarikhbeli` date DEFAULT NULL,
  `karat` varchar(20) NOT NULL DEFAULT '-',
  `mutu` decimal(11,1) NOT NULL DEFAULT '0.0',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargajual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaljual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `pembeli` varchar(100) NOT NULL DEFAULT '-',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bindciriemas`
--

DROP TABLE IF EXISTS `bindciriemas`;
CREATE TABLE IF NOT EXISTS `bindciriemas` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `jenisemas` varchar(150) NOT NULL DEFAULT '-',
  `subdesign` varchar(150) NOT NULL DEFAULT '-',
  `ciri` varchar(100) NOT NULL DEFAULT '-',
  `datatype` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bindciriemas`
--

INSERT INTO `bindciriemas` (`recno`, `jenisemas`, `subdesign`, `ciri`, `datatype`) VALUES
(68, 'Cincin', 'Fancy (2)', 'gemstone', 'List Box'),
(67, 'Cincin', 'Fancy (2)', 'Theme', 'List Box'),
(66, 'Cincin', 'Fancy (2)', 'occasion', 'List Box'),
(65, 'Cincin', 'Fancy (1)', 'gemstone', 'List Box'),
(63, 'Cincin', 'Fancy (1)', 'gender', 'List Box'),
(61, 'Cincin', 'Fancy (1)', 'berat', 'Text Box'),
(64, 'Cincin', 'Fancy (1)', 'occasion', 'List Box'),
(69, 'Cincin', 'Fancy (2)', 'berat', 'Number'),
(70, 'Cincin', 'Fancy (3)', 'gender', 'List Box'),
(71, 'Cincin', 'Fancy (2)', 'gender', 'List Box'),
(72, 'Cincin', 'Pasir (1)', 'berat', 'Number'),
(73, 'Cincin', 'Pasir (1)', 'lebar', 'Number'),
(74, 'Cincin', 'Pasir (1)', 'panjang', 'Number'),
(75, 'Cincin', 'Pasir (1)', 'saiz', 'Number'),
(76, 'Cincin', 'Pasir (1)', 'Huruf', 'List Box'),
(77, 'Cincin', 'Fancy (3)', 'Huruf', 'List Box'),
(82, 'Cincin', 'Pasir (2)', 'Theme', 'List Box'),
(79, 'Cincin', 'Pasir (2)', 'Huruf', 'List Box'),
(80, 'Cincin', 'Pasir (2)', 'berat', 'Number'),
(81, 'Cincin', 'Pasir (1)', 'gemstone', 'List Box'),
(83, 'Cincin', 'Pasir (2)', 'occasion', 'List Box'),
(84, 'Cincin', 'Pasir (2)', 'gender', 'List Box');

-- --------------------------------------------------------

--
-- Table structure for table `carrier`
--

DROP TABLE IF EXISTS `carrier`;
CREATE TABLE IF NOT EXISTS `carrier` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `nokp` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `jawatan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carumansocso`
--

DROP TABLE IF EXISTS `carumansocso`;
CREATE TABLE IF NOT EXISTS `carumansocso` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `dari` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hingga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `syerpekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `syermajikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahcaruman` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahcaruman_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carumansocso`
--

INSERT INTO `carumansocso` (`recno`, `dari`, `hingga`, `syerpekerja`, `syermajikan`, `jumlahcaruman`, `jumlahcaruman_majikan`) VALUES
(1, '0.00', '30.00', '0.10', '0.40', '0.50', '0.30'),
(2, '30.00', '50.00', '0.20', '0.70', '0.90', '0.50'),
(3, '50.00', '70.00', '0.30', '1.10', '1.40', '0.80'),
(4, '70.00', '100.00', '0.40', '1.50', '1.90', '1.10'),
(5, '100.00', '140.00', '0.60', '2.10', '2.70', '1.50'),
(6, '140.00', '200.00', '0.85', '2.95', '3.80', '2.10'),
(7, '200.00', '300.00', '1.25', '4.35', '5.60', '3.10'),
(8, '300.00', '400.00', '1.75', '6.15', '7.90', '4.40'),
(9, '400.00', '500.00', '2.25', '7.85', '10.10', '5.60'),
(10, '500.00', '600.00', '2.75', '9.65', '12.40', '6.90'),
(11, '600.00', '700.00', '3.25', '11.35', '14.60', '8.10'),
(12, '700.00', '800.00', '3.75', '13.15', '16.90', '9.40'),
(13, '800.00', '900.00', '4.25', '14.85', '19.10', '10.60'),
(14, '900.00', '1000.00', '4.75', '16.65', '21.40', '11.90'),
(15, '1000.00', '1100.00', '5.25', '18.35', '23.60', '13.10'),
(16, '1100.00', '1200.00', '5.75', '23.65', '25.90', '14.40'),
(17, '1200.00', '1300.00', '6.25', '21.85', '28.10', '15.60'),
(18, '1300.00', '1400.00', '6.75', '23.65', '30.40', '16.90'),
(19, '1400.00', '1500.00', '7.25', '25.35', '32.60', '18.10'),
(20, '1500.00', '1600.00', '7.75', '27.15', '34.90', '19.40'),
(21, '1600.00', '1700.00', '8.25', '28.85', '37.10', '20.60'),
(22, '1700.00', '1800.00', '8.75', '30.65', '39.40', '21.90'),
(23, '1800.00', '1900.00', '9.25', '32.35', '41.60', '23.10'),
(24, '1900.00', '2000.00', '9.75', '34.15', '43.90', '24.40'),
(25, '2000.00', '2100.00', '10.25', '35.85', '46.10', '25.60'),
(26, '2100.00', '2200.00', '10.75', '37.65', '48.40', '26.90'),
(27, '2200.00', '2300.00', '11.25', '39.35', '50.60', '28.10'),
(28, '2300.00', '2400.00', '11.75', '41.15', '52.90', '29.40'),
(29, '2400.00', '2500.00', '12.25', '42.85', '55.10', '30.60'),
(30, '2500.00', '2600.00', '12.75', '44.65', '57.40', '31.90'),
(31, '2600.00', '2700.00', '13.25', '46.35', '59.60', '33.10'),
(32, '2700.00', '2800.00', '13.75', '48.15', '61.90', '34.40'),
(33, '2800.00', '2900.00', '14.25', '49.85', '64.10', '35.60'),
(34, '2900.00', '3000.00', '14.75', '51.65', '66.40', '36.90'),
(35, '3000.00', '3100.00', '15.25', '53.35', '68.60', '38.10'),
(36, '3100.00', '3200.00', '15.75', '55.15', '70.90', '39.40'),
(37, '3200.00', '3300.00', '16.25', '56.85', '73.10', '40.60'),
(38, '3300.00', '3400.00', '16.75', '58.65', '75.40', '41.90'),
(39, '3400.00', '3500.00', '17.25', '60.35', '77.60', '43.10'),
(40, '3500.00', '3600.00', '17.75', '62.15', '79.90', '44.40'),
(41, '3600.00', '3700.00', '18.25', '63.85', '82.10', '45.60'),
(42, '3700.00', '3800.00', '18.75', '65.65', '84.40', '46.90'),
(43, '3800.00', '3900.00', '19.25', '67.35', '86.60', '48.10'),
(44, '3900.00', '4000.00', '19.75', '69.05', '88.80', '49.40'),
(45, '4000.00', '4100.00', '20.25', '70.85', '0.00', '0.00'),
(46, '4100.00', '4200.00', '20.75', '72.65', '0.00', '0.00'),
(47, '4200.00', '4300.00', '21.25', '74.35', '0.00', '0.00'),
(48, '4300.00', '4400.00', '21.75', '76.15', '0.00', '0.00'),
(49, '4400.00', '4500.00', '22.25', '77.85', '0.00', '0.00'),
(50, '4500.00', '4600.00', '22.75', '79.65', '0.00', '0.00'),
(51, '4600.00', '4700.00', '23.25', '81.35', '104.60', '58.10'),
(52, '4700.00', '4800.00', '23.75', '83.15', '106.90', '59.40'),
(53, '4800.00', '4900.00', '24.25', '84.85', '109.10', '60.60'),
(54, '4900.00', '5000.00', '24.75', '86.65', '111.40', '61.90'),
(55, '5000.00', '5100.00', '25.25', '88.35', '113.60', '63.10'),
(56, '5100.00', '5200.00', '25.75', '90.15', '115.90', '64.40'),
(57, '5200.00', '5300.00', '26.25', '91.85', '118.10', '65.60'),
(58, '5300.00', '5400.00', '26.75', '93.65', '120.40', '66.90'),
(59, '5400.00', '5500.00', '27.25', '95.35', '122.60', '68.10'),
(60, '5500.00', '5600.00', '27.75', '97.15', '124.90', '69.40'),
(61, '5600.00', '5700.00', '28.25', '98.85', '127.10', '70.60'),
(62, '5700.00', '5800.00', '28.75', '100.65', '129.40', '71.90'),
(63, '5800.00', '5900.00', '29.25', '102.35', '131.60', '73.10'),
(64, '5900.00', '6000.00', '29.75', '104.15', '133.90', '74.40'),
(65, '6000.00', '0.00', '29.75', '104.15', '133.90', '74.40');

-- --------------------------------------------------------

--
-- Table structure for table `cashbox`
--

DROP TABLE IF EXISTS `cashbox`;
CREATE TABLE IF NOT EXISTS `cashbox` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `namateller` varchar(100) NOT NULL DEFAULT '0.00',
  `cashcawangan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cashonline` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tradein` decimal(11,2) NOT NULL DEFAULT '0.00',
  `ansurancash` decimal(11,2) NOT NULL DEFAULT '0.00',
  `ansuranonline` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalcash` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalonline` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalsales` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idteller` varchar(100) NOT NULL DEFAULT '0',
  `cawangan` varchar(100) NOT NULL DEFAULT '0.00',
  `negeri` varchar(200) NOT NULL DEFAULT '0',
  `pendahuluan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `serahan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tradeincash` decimal(11,2) NOT NULL DEFAULT '0.00',
  `terimatunai` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tradeinonly` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashbox`
--

INSERT INTO `cashbox` (`recno`, `tarikh`, `namateller`, `cashcawangan`, `cashonline`, `tradein`, `ansurancash`, `ansuranonline`, `totalcash`, `totalonline`, `totalsales`, `idteller`, `cawangan`, `negeri`, `pendahuluan`, `serahan`, `baki`, `tradeincash`, `terimatunai`, `tradeinonly`) VALUES
(1, '2025-08-04', 'TIEY', '2080.00', '4921.00', '8018.78', '0.00', '0.00', '9458.84', '4921.00', '7001.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '15000.00', '9455.80', '3.04', '7621.16', '17080.00', '0.00'),
(2, '2025-08-04', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(3, '2025-08-04', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(4, '2025-08-05', 'TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(5, '2025-08-05', 'hanim', '1770.00', '0.00', '7042.16', '0.00', '0.00', '4199.00', '0.00', '1770.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '9455.00', '4199.00', '0.00', '7026.00', '11225.00', '0.00'),
(6, '2025-08-05', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(7, '2025-08-06', 'TIEY', '25.00', '550.00', '1777.83', '0.00', '0.00', '2727.00', '550.00', '575.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '4199.00', '2727.00', '0.00', '1497.00', '4224.00', '0.00'),
(8, '2025-08-06', 'hanim', '3370.00', '0.00', '0.00', '0.00', '0.00', '3370.00', '0.00', '3370.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '3370.00', '0.00', '0.00', '3370.00', '0.00'),
(9, '2025-08-06', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(10, '2025-08-07', 'TIEY', '1530.00', '0.00', '15875.00', '0.00', '0.00', '2070.00', '0.00', '1530.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '16415.00', '0.00', '2070.00', '15875.00', '17945.00', '0.00'),
(11, '2025-08-07', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(12, '2025-08-07', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(13, '2025-08-09', 'TIEY', '25.00', '0.00', '9495.00', '0.00', '0.00', '250.00', '0.00', '25.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '9720.00', '0.00', '250.00', '9495.00', '9745.00', '0.00'),
(14, '2025-08-09', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(15, '2025-08-09', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(16, '2025-08-10', 'TIEY', '1775.00', '10000.00', '6853.00', '0.00', '0.00', '2223.00', '10000.00', '11775.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '7301.00', '0.00', '2223.00', '6853.00', '9076.00', '0.00'),
(17, '2025-08-10', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(18, '2025-08-10', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(19, '2025-08-11', 'TIEY', '0.00', '7079.00', '15493.00', '0.00', '0.00', '523.00', '7079.00', '7079.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '523.00', '523.00', '0.00', '0.00', '523.00', '0.00'),
(20, '2025-08-11', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(21, '2025-08-11', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(22, '2025-08-12', 'TIEY', '0.00', '0.00', '1830.00', '0.00', '0.00', '158.00', '0.00', '0.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '523.00', '158.00', '0.00', '365.00', '523.00', '0.00'),
(23, '2025-08-12', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(24, '2025-08-12', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(25, '2025-08-13', 'TIEY', '2740.00', '4350.00', '8763.18', '0.00', '0.00', '836.00', '4350.00', '7090.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '158.00', '836.00', '0.00', '2062.00', '2898.00', '5659.00'),
(26, '2025-08-13', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(27, '2025-08-13', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(28, '2025-08-14', 'TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '836.00', '0.00', '0.00', '1', 'HMPASIRTUMBOH', 'Kelantan', '836.00', '0.00', '836.00', '0.00', '836.00', '0.00'),
(29, '2025-08-14', 'hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(30, '2025-08-14', 'CASHIER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3', 'HMPASIRTUMBOH', 'Kelantan', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `checkacc`
--

DROP TABLE IF EXISTS `checkacc`;
CREATE TABLE IF NOT EXISTS `checkacc` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `noresit` varchar(200) NOT NULL DEFAULT '-',
  `nokp` varchar(50) NOT NULL DEFAULT '-',
  `nama` varchar(200) NOT NULL DEFAULT '-',
  `status` varchar(50) NOT NULL DEFAULT '-',
  `noakaun` varchar(100) NOT NULL DEFAULT '-',
  `namabank` varchar(200) NOT NULL DEFAULT '-',
  `jumlahbayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `detail` varchar(100) NOT NULL DEFAULT '-',
  `semak` varchar(100) NOT NULL DEFAULT 'Not Verified',
  `idstaffsemak` varchar(100) NOT NULL DEFAULT '-',
  `tarikhsemak` date DEFAULT NULL,
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(100) NOT NULL DEFAULT '-',
  `backdated` int NOT NULL DEFAULT '0',
  `splitpay` int NOT NULL DEFAULT '0',
  `debitpay` int NOT NULL DEFAULT '0',
  `paidtype` varchar(100) NOT NULL DEFAULT 'Online Banking',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clearbook`
--

DROP TABLE IF EXISTS `clearbook`;
CREATE TABLE IF NOT EXISTS `clearbook` (
  `recno` int NOT NULL,
  `tarikh` text,
  `nokp` varchar(50) DEFAULT NULL,
  `nama` longtext,
  `nosiri` varchar(50) DEFAULT NULL,
  `marhun` varchar(150) DEFAULT NULL,
  `jumlahclear` decimal(11,2) DEFAULT NULL,
  `idstaff` varchar(100) DEFAULT NULL,
  `cawangan` varchar(200) DEFAULT NULL,
  `negeri` varchar(200) DEFAULT NULL,
  `jenisbayaran` varchar(100) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `closingakaun`
--

DROP TABLE IF EXISTS `closingakaun`;
CREATE TABLE IF NOT EXISTS `closingakaun` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `detail` varchar(150) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(150) NOT NULL DEFAULT '-',
  `jana` int NOT NULL DEFAULT '0',
  `onlinetransfer` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cuciemas`
--

DROP TABLE IF EXISTS `cuciemas`;
CREATE TABLE IF NOT EXISTS `cuciemas` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `nama` varchar(150) NOT NULL DEFAULT '-',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idteller` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customertrade`
--

DROP TABLE IF EXISTS `customertrade`;
CREATE TABLE IF NOT EXISTS `customertrade` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nokp` varchar(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL DEFAULT '-',
  `nama` longtext,
  `alamat` longtext,
  `nofon` varchar(30) DEFAULT NULL,
  `cawangan` varchar(100) DEFAULT NULL,
  `negeri` varchar(100) DEFAULT NULL,
  `tarikhdaftar` date DEFAULT NULL,
  `totalbelian` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tarikhupdate` date DEFAULT NULL,
  `totaltabung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `akaun` varchar(50) NOT NULL DEFAULT 'Customer',
  `totalansuran` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalhutang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratbeli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahansur` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tin` varchar(100) NOT NULL DEFAULT '-',
  `alamat1` varchar(150) NOT NULL DEFAULT '-',
  `alamat2` varchar(150) NOT NULL DEFAULT '-',
  `poskod` varchar(100) NOT NULL DEFAULT '-',
  `bandar` varchar(150) NOT NULL DEFAULT '-',
  `kodnegeri` varchar(10) NOT NULL DEFAULT '-',
  `account_type` varchar(50) NOT NULL DEFAULT '-',
  `company_name` varchar(150) NOT NULL DEFAULT '-',
  `brn` varchar(150) NOT NULL DEFAULT '-',
  `sst` varchar(150) NOT NULL DEFAULT '-',
  `company_tin` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertrade`
--

INSERT INTO `customertrade` (`recno`, `nokp`, `email`, `nama`, `alamat`, `nofon`, `cawangan`, `negeri`, `tarikhdaftar`, `totalbelian`, `tarikhupdate`, `totaltabung`, `akaun`, `totalansuran`, `totalhutang`, `beratbeli`, `jumlahansur`, `tin`, `alamat1`, `alamat2`, `poskod`, `bandar`, `kodnegeri`, `account_type`, `company_name`, `brn`, `sst`, `company_tin`) VALUES
(1, '960907035286', '', 'NORSYAHIRA BINTI JUSOH', 'NO 378 KG RASAL TOK UBAN,,17050,PASIR MAS,Kelantan', '01112964909', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'NO 378 KG RASAL TOK UBAN', '', '17050', 'PASIR MAS', '03', 'Individual', 'NORSYAHIRA BINTI JUSOH', '960907035286', '-', ''),
(2, '780506035252', '', 'NORHASLINA BINTI HUSSIN', 'LOT 660 JALAN KAMPUNG TOK KHALID ,KG PADANG MENGKALI PERINGAT,16010 KOTA BHARU', '0142120305', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'LOT 660 JALAN KAMPUNG TOK KHALID ', 'KG PADANG MENGKALI PERINGAT', '16010', 'KOTA BHARU', '03', 'Individual', 'NORHASLINA BINTI HUSSIN', '780506035252', '-', ''),
(3, '920302035987', '', 'SYASYA', '0', '0179723696', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '03', 'Individual', 'SYASYA', '920302035987', '-', ''),
(4, '571017035584', '', 'KHADIJAH BINTI MAMAT', ',,16150 KOTA BHARU', '0139461360', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '16150', 'KOTA BHARU', '03', 'Individual', 'KHADIJAH BINTI MAMAT', '571017035584', '-', ''),
(5, '880311295132', '', 'NUR IMANINA BINTI SUKARDIR', 'KG DERDAP LIMBAT,,16150,KOTA BHARU,Kelantan', '0148228187', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'KG DERDAP LIMBAT', '', '16150', 'KOTA BHARU', '03', 'Individual', 'NUR IMANINA BINTI SUKARDIR', '880311295132', '-', ''),
(6, '900516035559', '', 'MUHAMAD AZRULNASHRUDDIN BIN JISAMANI ', ',,15100 KOTA BHARU', '01135135400', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '15100', 'KOTA BHARU', '03', 'Individual', 'MUHAMAD AZRULNASHRUDDIN BIN JISAMANI ', '900516035559', '-', ''),
(7, '920326035425', 'marwanfirdaus992@gmail.com', 'MAZWAN FIRDAUS BIN MUHAMAD', 'KG PALOH,,16040 TUMPAT', '0179850539', 'HMPASIRTUMBOH', '', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'KG PALOH', '', '16040', 'TUMPAT', '', 'Individual', 'MAZWAN FIRDAUS BIN MUHAMAD', '920326035425', '-', ''),
(8, '841201036226', '', 'ROHANI BINTI JUSOH', 'KG PADANG MOKAN,PERINGAT,16400,KOTA BHARU,Kelantan', '0102763484', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'KG PADANG MOKAN', 'PERINGAT', '16400', 'KOTA BHARU', '03', 'Individual', 'ROHANI BINTI JUSOH', '841201036226', '-', ''),
(9, 'C8722738', '', 'RIYANTO', 'MASJID GONG DEMIN,PASIR TUMBOH,16050 KOTA BHARU', '0134994996', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'MASJID GONG DEMIN', 'PASIR TUMBOH', '16050', 'KOTA BHARU', '03', 'Individual', 'RIYANTO', 'C8722738', '-', ''),
(10, '940728035936', '', 'SITI NURSAADAH BINTI ROSLY MOHAMMED', 'KAMPUNG SETERPA,,16400 KOTA BHARU', '0179139462', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'KAMPUNG SETERPA', '', '16400', 'KOTA BHARU', '03', 'Individual', 'SITI NURSAADAH BINTI ROSLY MOHAMMED', '940728035936', '-', ''),
(11, '061012031066', '', 'NUR AKILA QISTINA BINTI MOHD LUKMAN', 'KAMPUNG BELIMBING LIMBAT,,16150,KOTA BHARU,Kelantan', '01125453213', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'KAMPUNG BELIMBING LIMBAT', '', '16150', 'KOTA BHARU', '03', 'Individual', 'NUR AKILA QISTINA BINTI MOHD LUKMAN', '061012031066', '-', ''),
(12, '861201295218', '', 'HARDIANA BINTI HUSAIN', 'KG KUBANG KACHANG,JALAN PASIR TUMBOH,15100,KOTA BHARU,Kelantan', '01121161801', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'KG KUBANG KACHANG', 'JALAN PASIR TUMBOH', '15100', 'KOTA BHARU', '03', 'Individual', 'HARDIANA BINTI HUSAIN', '861201295218', '-', ''),
(13, '030402030948', '', 'NOR SUHAINI BINTI MAMAT', 'KAMPUNG BANGGOL JENERIH,,16800 PASIR PUTEH', '01125741875', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'KAMPUNG BANGGOL JENERIH', '', '16800', 'PASIR PUTEH', '03', 'Individual', 'NOR SUHAINI BINTI MAMAT', '030402030948', '-', ''),
(14, '850508036006', '', 'NORAINI HAZIRA BINTI CHE SOH', 'DEPAN MASJID PERINGAT,,16400 KOTA BHARU', '0179367051', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'DEPAN MASJID PERINGAT', '', '16400', 'KOTA BHARU', '03', 'Individual', 'NORAINI HAZIRA BINTI CHE SOH', '850508036006', '-', ''),
(15, '930529035508', '', 'WAN MOHD DHINI', '0', '01116178417', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '03', 'Individual', 'WAN MOHD DHINI', '930529035508', '-', ''),
(16, '961214035878', '', 'NOORFATIN FATONAH BINTI MOHD NOOR', 'KG SETERPA ,PERINGAT,16400,KOTA BHARU,Kelantan', '01118501922', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'KG SETERPA ', 'PERINGAT', '16400', 'KOTA BHARU', '03', 'Individual', 'NOORFATIN FATONAH BINTI MOHD NOOR', '961214035878', '-', ''),
(17, '620729035054', '', 'NORAINI BINTI DAUD', 'LOT 1347 KAMPUNG GUNTONG LIMBAT,,16150,KOTA BHARU,Kelantan', '0178921515', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'LOT 1347 KAMPUNG GUNTONG LIMBAT', '', '16150', 'KOTA BHARU', '03', 'Individual', 'NORAINI BINTI DAUD', '620729035054', '-', ''),
(18, '860604295576', '', 'SITI MUNYATI AMIRAH BINTI ZAHARI', 'KAMPUNG BINJAL,', '0192935808', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'KAMPUNG BINJAL', 'BATU 11 KETEREH', '16450', 'KOTA BHARU', '03', 'Individual', 'SITI MUNYATI AMIRAH BINTI ZAHARI', '860604295576', '-', ''),
(19, '810506115222', '', 'ROSNANI BINTI SALLEH', 'NO23 KG KELING JALAN MULONG,PASIR TUMBOH,16150,KOTA BHARU,Kelantan', '01121834023', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'NO23 KG KELING JALAN MULONG', 'PASIR TUMBOH', '16150', 'KOTA BHARU', '03', 'Individual', 'ROSNANI BINTI SALLEH', '810506115222', '-', ''),
(20, '001128030124', '', 'NURUL HIDAYAH BINTI AFANDI', 'PT2979,TAMAN SRI NILAM,JALAN LIMBAT MULONG,16150 KOTA BHARU', '0139226842', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'PT2979,TAMAN SRI NILAM', 'JALAN LIMBAT MULONG', '16150', 'KOTA BHARU', '03', 'Individual', 'NURUL HIDAYAH BINTI AFANDI', '001128030124', '-', ''),
(21, '610204035386', '', 'REHANI BINTI SULAIMAN', 'LOT3137,KAMPUNG PADANG DURIAN,BANGGU BUKIT MARAK,16150 BACHOK', '0197729287', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'LOT3137,KAMPUNG PADANG DURIAN', 'BANGGU BUKIT MARAK', '16150', 'BACHOK', '03', 'Individual', 'REHANI BINTI SULAIMAN', '610204035386', '-', ''),
(22, '070923030659', '', 'MOHAMAD ADAM MUQRIEZ BIN ANUA', 'S47/2317 TAMAN PERADANG ,JALAN HOSPITAL,15200,KOTA BHARU,Kelantan', '01153959109', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', 'S47/2317 TAMAN PERADANG ', 'JALAN HOSPITAL', '15200', 'KOTA BHARU', '03', 'Individual', 'MOHAMAD ADAM MUQRIEZ BIN ANUA', '070923030659', '-', ''),
(23, '870308035664', '', 'SITI FILZAH BINTI AB AZIZ', 'PT 1264 KG TEMESU LIMBAT,,16150,KOTA BHARU,Kelantan', '0148402589', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'PT 1264 KG TEMESU LIMBAT', '', '16150', 'KOTA BHARU', '03', 'Individual', 'SITI FILZAH BINTI AB AZIZ', '870308035664', '-', ''),
(24, '900222035142', '', 'FARIS', 'KG BERANGAN,,16250,WAKAF BHARU,Kelantan', '0136257893', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'KG BERANGAN', '', '16250', 'WAKAF BHARU', '03', 'Individual', 'FARIS', '900222035142', '-', ''),
(25, '860703295264', '', 'MARIAM BINTI ABDUL HALIM', 'C 30 FELDA KAMPUNG AWAH,,28030,TEMERLOH,Pahang', '0139555332', 'HMPASIRTUMBOH', 'Pahang', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'C 30 FELDA KAMPUNG AWAH', '', '28030', 'TEMERLOH', '06', 'Individual', 'MARIAM BINTI ABDUL HALIM', '860703295264', '-', ''),
(26, '970825035820', '', 'NOR ATHIRAH BINTI RAZALI', ',,16150,KOTA BHARU,Kelantan', '0179042243', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '16150', 'KOTA BHARU', '03', 'Individual', 'NOR ATHIRAH BINTI RAZALI', '970825035820', '-', ''),
(27, '820429035470', '', 'SURIANI BINTI MAHMOD', ',,16800,PASIR PUTEH,Kelantan', '0179645171', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '16800', 'PASIR PUTEH', '03', 'Individual', 'SURIANI BINTI MAHMOD', '820429035470', '-', ''),
(28, '510307035364', '', 'SITI FATIMAH BINTI ISMAIL', ',,16150,KOTA BHARU,Kelantan', '01160612933', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '16150', 'KOTA BHARU', '03', 'Individual', 'SITI FATIMAH BINTI ISMAIL', '510307035364', '-', ''),
(29, '870821035016', '', 'NIK ERNISUZANA BINTI ABDULLAH', ',,16150,KOTA BHARU,Kelantan', '0139642246', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '16150', 'KOTA BHARU', '03', 'Individual', 'NIK ERNISUZANA BINTI ABDULLAH', '870821035016', '-', ''),
(30, '000202080062', '', 'SITI ZULAIKHA BINTI JOHARI', 'BLOCK DD 324,TAMAN SERI SEMARAK,34200,PARIT BUNTAR,Perak', '0148235066', 'HMPASIRTUMBOH', 'Perak', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'BLOCK DD 324', 'TAMAN SERI SEMARAK', '34200', 'PARIT BUNTAR', '08', 'Individual', 'SITI ZULAIKHA BINTI JOHARI', '000202080062', '-', ''),
(31, '930502106034', '', 'WAN NORATIQAH HANUM BINTI W.M.MOKHTAR', ',,17500,TANAH MERAH,Kelantan', '0182821953', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', '', '', '17500', 'TANAH MERAH', '03', 'Individual', 'WAN NORATIQAH HANUM BINTI W.M.MOKHTAR', '930502106034', '-', ''),
(32, '990629035450', '', 'NURHIDAYANIS BINTI EZAINI', ',,16090,KOTA BHARU,Kelantan', '0104442720', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', 'Customer', '0.00', '0.00', '0.00', '0.00', '', '', '', '16090', 'KOTA BHARU', '03', 'Individual', 'NURHIDAYANIS BINTI EZAINI', '990629035450', '-', ''),
(33, '890722035502', '', 'NURZETY EMIZA BINTI MOHD NOOR', 'KG BECHAH MULONG ,PERINGAT,16400,MELOR,Kelantan', '0145080781', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'KG BECHAH MULONG ', 'PERINGAT', '16400', 'MELOR', '03', 'Individual', 'NURZETY EMIZA BINTI MOHD NOOR', '890722035502', '-', ''),
(34, '730427035304', '', 'WAN ZALEHA BINTI W.M. ZAIN', '1701 KAMPUNG AMAN,JLN MASJID LUNDANG,15150,KOTA BHARU,Kelantan', '0199399596', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', '1701 KAMPUNG AMAN', 'JLN MASJID LUNDANG', '15150', 'KOTA BHARU', '03', 'Individual', 'WAN ZALEHA BINTI W.M. ZAIN', '730427035304', '-', ''),
(35, '900213035594', '', 'NUR FATIHAH BINTI CHE LAH', 'NO 1673 KAMPUNG NILAMPURI,,16010,KOTA BHARU,Kelantan', '0135916272', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'NO 1673 KAMPUNG NILAMPURI', '', '16010', 'KOTA BHARU', '03', 'Individual', 'NUR FATIHAH BINTI CHE LAH', '900213035594', '-', ''),
(36, '980801036166', '', 'FARAH NABILA BINTI ISMAIL@ABDUL RAOF', 'LOT 2073 BELAKANG MASJID KAMPUNG PARIT,PASIR TUMBOH,16150,KOTA BHARU,Kelantan', '0142529890', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'LOT 2073 BELAKANG MASJID KAMPUNG PARIT', 'PASIR TUMBOH', '16150', 'KOTA BHARU', '03', 'Individual', 'FARAH NABILA BINTI ISMAIL@ABDUL RAOF', '980801036166', '-', ''),
(37, '960807035836', '', 'SURI BAIDURI AYU BINTI MOHD YATIM PUTRA', 'LOT 2376 KAMPUNG PADANG BONGOR BINJAI,,16150,KOTA BHARU,Kelantan', '0145291275', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'LOT 2376 KAMPUNG PADANG BONGOR BINJAI', '', '16150', 'KOTA BHARU', '03', 'Individual', 'SURI BAIDURI AYU BINTI MOHD YATIM PUTRA', '960807035836', '-', ''),
(38, '770502036048', '', 'NORMIRA BINTI ABDULLAH PAKRI', 'LOT 27 A KAMPUNG DERDAP LIMBAT,,16150,KOTA BHARU,Kelantan', '0148478173', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'LOT 27 A KAMPUNG DERDAP LIMBAT', '', '16150', 'KOTA BHARU', '03', 'Individual', 'NORMIRA BINTI ABDULLAH PAKRI', '770502036048', '-', ''),
(39, '840607036360 ', '', 'HAFSAH BINTI OTHMAN', 'NO33 JALAN HIJAU 12/3 BTP16 BANDAR TASEK PUTERI,,48020 RAWANG', '0136023935', 'HMPASIRTUMBOH', 'Selangor', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', 'IG25791298030', 'NO33 JALAN HIJAU 12/3 BTP16 BANDAR TASEK PUTERI', '', '48020', 'RAWANG', '10', 'Individual', 'HAFSAH BINTI OTHMAN', '840607036360 ', '-', ''),
(40, '720313035358 ', '', 'ZANARIAH BINTI MAT RUSOK@HASSAN ', 'NO55 CABANG TIGA MELAWI,,16310,BACHOK,Kelantan', '0199419951', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'NO55 CABANG TIGA MELAWI', '', '16310', 'BACHOK', '03', 'Individual', 'ZANARIAH BINTI MAT RUSOK@HASSAN ', '720313035358 ', '-', ''),
(41, '890731036056', '', 'SITI NOORAIN BINTI AB AZIS', 'LOT 815LORONG 7 ,MANAL SATU,17500,TANAH MERAH,Kelantan', '0179482468', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'LOT 815LORONG 7 ', 'MANAL SATU', '17500', 'TANAH MERAH', '03', 'Individual', 'SITI NOORAIN BINTI AB AZIS', '890731036056', '-', ''),
(42, '710807035236', '', 'ROSLIDA BINTI OSMAN', 'TAMAN PATEK BATU 11 ,,16450,KETEREH,Kelantan', '01155587237', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'TAMAN PATEK BATU 11 ', '', '16450', 'KETEREH', '03', 'Individual', 'ROSLIDA BINTI OSMAN', '710807035236', '-', ''),
(43, 'N02434404', '', 'ARY', '0', '0108970321', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'PASIR PEKAN', '', '', 'KOTA BHARU', '03', 'Individual', 'ARY', 'N02434404', '-', ''),
(44, '980816035836', '', 'NUR IRDAWATIE BINTI NAZREE', 'BLOK F 3U PERUMAHAN POLIS ,WAKAF MEK ZAINAB,15300,KOTA BHARU,Kelantan', '0195997533', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'BLOK F 3U PERUMAHAN POLIS ', 'WAKAF MEK ZAINAB', '15300', 'KOTA BHARU', '03', 'Individual', 'NUR IRDAWATIE BINTI NAZREE', '980816035836', '-', ''),
(45, '730701035674', '', 'JAMILAH BINTI RAHMAN ', 'KG PANTAI KUNDOR BADANG,,15350 KOTA BHARU', '01111939987', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'KG PANTAI KUNDOR BADANG', '', '15350', 'KOTA BHARU', '03', 'Individual', 'JAMILAH BINTI RAHMAN ', '730701035674', '-', ''),
(46, '720607035708', '', 'HASMAH BINTI ISMAIL', 'LOT PT 4018 KAMPUNG BINJAI LIMBAT,,16150,KOTA BHARU,Kelantan', '0139178226', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', 'IG11471071061', 'LOT PT 4018 KAMPUNG BINJAI LIMBAT', '', '16150', 'KOTA BHARU', '03', 'Individual', 'HASMAH BINTI ISMAIL', '720607035708', '-', ''),
(47, 'N 0419975', '', 'CHHOEUY LEAP', 'PONDOK PASIR TUMBUH,,16010 KOTA BHARU', '0136534789', 'HMPASIRTUMBOH', 'Kelantan', NULL, '0.00', NULL, '0.00', '-', '0.00', '0.00', '0.00', '0.00', '', 'PONDOK PASIR TUMBUH', '', '16010', 'KOTA BHARU', '03', 'Individual', 'CHHOEUY LEAP', 'N 0419975', '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
CREATE TABLE IF NOT EXISTS `dashboard` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date NOT NULL,
  `24K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `23K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `22K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `21K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `20K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `18K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `14K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `9K` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalberat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `24K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `23K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `22K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `21K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `20K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `18K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `14K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `9K_RM` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nilai` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`recno`, `tarikh`, `24K`, `23K`, `22K`, `21K`, `20K`, `18K`, `14K`, `9K`, `totalberat`, `24K_RM`, `23K_RM`, `22K_RM`, `21K_RM`, `20K_RM`, `18K_RM`, `14K_RM`, `9K_RM`, `nilai`, `cawangan`, `negeri`) VALUES
(1, '2025-08-14', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan');

-- --------------------------------------------------------

--
-- Table structure for table `dashboardharian`
--

DROP TABLE IF EXISTS `dashboardharian`;
CREATE TABLE IF NOT EXISTS `dashboardharian` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `cawangan` varchar(100) NOT NULL DEFAULT '-',
  `salespreloved` decimal(11,2) NOT NULL DEFAULT '0.00',
  `salesemasnew` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaluntung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalsales` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskauncust` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `masaupdate` varchar(150) NOT NULL DEFAULT '-',
  `beratnew` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratpre` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataciri`
--

DROP TABLE IF EXISTS `dataciri`;
CREATE TABLE IF NOT EXISTS `dataciri` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `ciri` varchar(150) NOT NULL DEFAULT '-',
  `dataciri` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataciri`
--

INSERT INTO `dataciri` (`recno`, `ciri`, `dataciri`) VALUES
(12, 'gender', 'Women'),
(3, 'Warna', 'C1'),
(4, 'Warna', 'C2'),
(5, 'Warna', 'C3'),
(6, 'stone color', 'white'),
(7, 'stone color', 'red'),
(8, 'stone color', 'yellow'),
(9, 'stone color', 'blue'),
(11, 'gender', 'Men'),
(14, 'occasion', 'Wedding'),
(15, 'occasion', 'Birthday'),
(16, 'occasion', 'Party'),
(17, 'occasion', 'Formal'),
(32, 'Theme', 'Contemporary'),
(31, 'gemstone', 'Emerald'),
(30, 'gemstone', 'Citrine'),
(29, 'gemstone', 'Topaz'),
(28, 'gemstone', 'Ruby'),
(27, 'gemstone', 'Synthetic Ruby'),
(26, 'gemstone', 'Pearl'),
(33, 'Theme', 'Clasic'),
(34, 'Theme', 'Designer'),
(35, 'Huruf', 'A'),
(36, 'Huruf', 'B'),
(37, 'Huruf', 'C'),
(38, 'Huruf', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryorder`
--

DROP TABLE IF EXISTS `deliveryorder`;
CREATE TABLE IF NOT EXISTS `deliveryorder` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `nodelivery` varchar(200) NOT NULL DEFAULT '-',
  `bil` int NOT NULL DEFAULT '0',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `dari` varchar(150) NOT NULL DEFAULT '-',
  `kepada` varchar(150) NOT NULL DEFAULT '-',
  `carrier` varchar(150) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(150) NOT NULL DEFAULT '-',
  `approvecawangan` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `denominasi`
--

DROP TABLE IF EXISTS `denominasi`;
CREATE TABLE IF NOT EXISTS `denominasi` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(200) NOT NULL DEFAULT '0',
  `idstaff` varchar(200) NOT NULL DEFAULT '0',
  `BIL010` int NOT NULL DEFAULT '0',
  `RM010` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL020` int NOT NULL DEFAULT '0',
  `RM020` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL050` int NOT NULL DEFAULT '0',
  `RM050` decimal(11,2) DEFAULT '0.00',
  `BIL1` int NOT NULL DEFAULT '0',
  `RM1` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL5` int NOT NULL DEFAULT '0',
  `RM5` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL10` int NOT NULL DEFAULT '0',
  `RM10` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL20` int NOT NULL DEFAULT '0',
  `RM20` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL50` int NOT NULL DEFAULT '0',
  `RM50` decimal(11,2) NOT NULL DEFAULT '0.00',
  `BIL100` int NOT NULL DEFAULT '0',
  `RM100` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaldeno` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(150) NOT NULL DEFAULT '0',
  `negeri` varchar(200) NOT NULL DEFAULT '0',
  `act` varchar(50) NOT NULL DEFAULT '0',
  `serahan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `denominasi`
--

INSERT INTO `denominasi` (`recno`, `tarikh`, `masa`, `idstaff`, `BIL010`, `RM010`, `BIL020`, `RM020`, `BIL050`, `RM050`, `BIL1`, `RM1`, `BIL5`, `RM5`, `BIL10`, `RM10`, `BIL20`, `RM20`, `BIL50`, `RM50`, `BIL100`, `RM100`, `totaldeno`, `cawangan`, `negeri`, `act`, `serahan`, `baki`) VALUES
(1, '2025-08-04', '5:50:45 PM', 'TIEY', 1, '0.10', 1, '0.20', 1, '0.50', 3, '3.00', 1, '5.00', 0, '0.00', 0, '0.00', 9, '450.00', 90, '9000.00', '9458.80', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '9458.80', '0.04'),
(2, '2025-08-05', '5:44:32 PM', 'hanim', 0, '0.00', 0, '0.00', 0, '0.00', 4, '4.00', 1, '5.00', 0, '0.00', 2, '40.00', 3, '150.00', 40, '4000.00', '4199.00', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '4199.00', '0.00'),
(3, '2025-08-06', '5:15:03 PM', 'hanim', 0, '0.00', 0, '0.00', 0, '0.00', 0, '0.00', 0, '0.00', 0, '0.00', 1, '20.00', 1, '50.00', 33, '3300.00', '3370.00', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '3370.00', '0.00'),
(4, '2025-08-06', '5:32:15 PM', 'TIEY', 0, '0.00', 0, '0.00', 0, '0.00', 2, '2.00', 1, '5.00', 0, '0.00', 1, '20.00', 0, '0.00', 27, '2700.00', '2727.00', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '2727.00', '0.00'),
(5, '2025-08-11', '5:47:46 PM', 'TIEY', 0, '0.00', 0, '0.00', 0, '0.00', 3, '3.00', 0, '0.00', 0, '0.00', 1, '20.00', 0, '0.00', 5, '500.00', '523.00', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '523.00', '0.00'),
(6, '2025-08-12', '6:00:35 PM', 'TIEY', 0, '0.00', 0, '0.00', 0, '0.00', 3, '3.00', 1, '5.00', 0, '0.00', 0, '0.00', 1, '50.00', 1, '100.00', '158.00', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '158.00', '0.00'),
(7, '2025-08-13', '5:42:42 PM', 'TIEY', 0, '0.00', 0, '0.00', 0, '0.00', 1, '1.00', 1, '5.00', 3, '30.00', 0, '0.00', 0, '0.00', 8, '800.00', '836.00', 'HMPASIRTUMBOH', 'Kelantan', 'Closing', '836.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `design`
--

DROP TABLE IF EXISTS `design`;
CREATE TABLE IF NOT EXISTS `design` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `subcategory` varchar(150) NOT NULL DEFAULT '-',
  `namadesign` varchar(200) NOT NULL DEFAULT '-',
  `jenisemas` varchar(50) NOT NULL DEFAULT '-',
  `img` varchar(200) NOT NULL DEFAULT 'noimage.jpg',
  `img2` varchar(200) NOT NULL DEFAULT 'noimage.jpg',
  `img3` varchar(200) NOT NULL DEFAULT 'noimage.jpg',
  `img4` varchar(200) NOT NULL DEFAULT 'noimage.jpg',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=465 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `design`
--

INSERT INTO `design` (`recno`, `subcategory`, `namadesign`, `jenisemas`, `img`, `img2`, `img3`, `img4`) VALUES
(3, '-', 'Cincin KLCC', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(5, '-', 'Wafer 1 Gram', 'WAFER', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(6, '-', 'Wafer 5 Gram', 'WAFER', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(7, '-', 'Wafer 10 Gram', 'WAFER', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(8, '-', 'Cincin Keladi', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(9, '-', 'Cincin Audi', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(10, '-', 'Cincin Belah Rotan (1)', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(11, '-', 'Cincin Boba', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(12, '-', 'Cincin Bulatan', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(13, '-', 'Cincin Kelopak', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(14, '-', 'Cincin Klcc B Layer', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(15, '-', 'Cincin Fesyen (1)', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(104, '-', 'Gelang Padu', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(55, '-', 'Cincin Ketum (2)', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(18, '-', 'Cincin Pulut Dakap (full Gold)', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(33, '-', 'Gelang Bangle', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(28, '-', 'Gelang Pulut Dakap', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(76, '-', 'Cincin Sempoa', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(54, '-', 'Cincin Ketum (1)', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(31, '-', 'Gelang Apam Balik', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(77, '-', 'Cincin Lv (exclusive)', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(75, '-', 'Cincin Pulut Dakap', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(32, '-', 'Gelang Ular', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(34, '-', 'Gelang Belut Fesyen', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(35, '-', 'Gelang Coco Kendi', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(36, '-', 'Gelang Coco Petai', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(37, '-', 'Gelang Coco Lipan', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(38, '-', 'Gelang Gajah', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(39, '-', 'Gelang Mesin', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(40, '-', 'Gelang Putera', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(41, '-', 'Gelang Puteri', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(42, '-', 'Gelang Panadol', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(43, '-', 'Gelang Gantung Love', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(44, '-', 'Gelang Tiffany 1', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(45, '-', 'Gelang Pintal', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(46, '-', 'Gelang Sauh', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(47, '-', 'Gelang Rama Rama', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(48, '-', 'Gelang Roti Bun', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(50, '-', 'Gelang Pandora', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(51, '-', 'Gelang Ketum', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(52, '-', 'Gelang Bangle Cartier', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(53, '-', 'Gelang Bangle Lv', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(56, '-', 'Gelang Coco', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(57, '-', 'Gelang Italian', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(58, '-', 'Gelang Dunhill', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(59, '-', 'Gelang Jagung', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(60, '-', 'Gelang Biskut Tawar', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(61, '-', 'Rantai Choker', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(62, '-', 'Rantai Gajah', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(63, '-', 'Rantai Belut', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(64, '-', 'Rantai Pandora', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(65, '-', 'Rantai Mesin', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(66, '-', 'Rantai Pintal', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(67, '-', 'Subang Chanel', 'SUBANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(68, '-', 'Rantai Coco', 'RANTAI', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(69, '-', 'Gelang Gelang Padu', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(71, '-', 'Subang Lolipop', 'SUBANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(72, '-', 'Subang Katup', 'SUBANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(78, '-', 'Gelang Tiffany 2', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(79, '-', 'Gelang Tiffany 3', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(80, '-', 'Gelang Siput Love', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(81, '-', 'Gelang Siput Buluh', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(82, '-', 'Gelang Fesyen 1', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(83, '-', 'Gelang Fesyen 2', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(84, '-', 'Gelang Lipan', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(85, '-', 'Gelang Petai', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(86, '-', 'Gelang Roti Bun (padu)', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(87, '-', 'Gelang Perut Ular (apam)', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(88, '-', 'Gelang Kendi Love 1', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(89, '-', 'Gelang Kendi Love 2', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(90, '-', 'Gelang Kendi Love 3', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(91, '-', 'Gelang Kendi Love 4', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(92, '-', 'Gelang Kendi Love 5', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(93, '-', 'Gelang Kendi Love 6', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(94, '-', 'Gelang 88', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(95, '-', 'Gelang Love', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(96, '-', 'Gelang Dakap Telur', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(97, '-', 'Gelang Dakap Lintah', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(98, '-', 'Gelang Dakap Lintah 2', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(99, '-', 'Gelang Dakap (padu)', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(100, '-', 'Gelang Belut Love Gantung', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(102, '-', 'Gelang Bangle Kosong', 'GELANG', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(105, '-', 'Cincin Belah Rotan', 'CINCIN', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(106, '-', 'Cincin Bunga Raya', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(107, '-', 'CINCIN LV', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(109, '-', 'TALI TANGAN CANDY LOVE GANTUNG', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(110, '-', 'MESIN', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(111, '-', 'Cincin Bunga Lawang', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(112, '-', 'BANGLE DONUT LICIN', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(113, '-', 'BANGLE DONUT KERAWANG', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(114, '-', 'BANGLE BISKUT TAWAR', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(115, '-', 'BANGLE BISKUT TAWAR 2', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(116, '-', 'BANGLE TIFFANY', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(117, '-', 'RL SAUH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(118, '-', 'RL GAJAH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(119, '-', 'RL BOBA', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(120, '-', 'RL LOVE', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(121, '-', 'RL GAJAH PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(122, '-', 'RL GAJAH PASIR', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(123, '-', 'TT COCO KING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(124, '-', 'TT SAUH GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(125, '-', 'TT BOBA 2 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(126, '-', 'Cincin Dedaun', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(127, '-', 'TT BOBA MANIK', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(128, '-', 'Cincin Love', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(129, '-', 'Cincin Tiffany', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(130, '-', 'Cincin Cartier', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(131, '-', 'Cincin Matahari', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(132, '-', 'Cincin Paku', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(133, '-', 'Cincin Pasir', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(134, '-', 'Cincin Silang', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(135, '-', 'Lintah', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(136, '-', 'Cincin Lintah', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(137, '-', 'Cincin V', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(138, '-', 'Cincin Ribbon', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(139, '-', 'Cincin Huruf', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(140, '-', 'Cincin Bunga', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(141, '-', 'Cincin Channel', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(142, '-', 'Cincin Rama-Rama', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(143, '-', 'Cincin Lipan', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(144, '-', 'Cincin Coco', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(145, '-', 'Cincin Lintah Silang', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(147, '-', 'PUTRI SARAH', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(148, '-', 'Cincin Roti Bun', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(149, '-', 'Cincin Biskut Tawar', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(150, '-', 'Cincin Roman', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(151, '-', 'Cincin Donut', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(152, '-', 'PAPER CLIP BOBA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(153, '-', 'BOBA DOUBLE MESIN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(154, '-', 'R/L COCO', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(155, '-', 'R/L BOBA FASHION', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(156, '-', 'R/L SIPUT', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(157, '-', 'Cincin Permata', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(158, '-', 'R/L PAPER CLIP GANTUNG LOVE', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(159, '-', 'R/L BOBA 2C', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(160, '-', 'Loket Bunga', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(161, '-', 'Loket Biskut Tawar', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(162, '-', 'Loket Bunga Raya', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(163, '-', 'Loket Sempoa', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(164, '-', 'Loket Fesyen', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(165, '-', 'Loket Batik', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(166, '-', 'T/T PAPER CLIP GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(167, '-', 'T/T PAPER CLIP GANTUNG LOVE / CHANNEL', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(168, '-', 'Loket Permata', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(169, '-', 'T/T SYILING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(170, '-', 'Loket Love', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(171, '-', 'Loket Nama', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(172, '-', 'Charm', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(173, '-', 'Bead', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(174, '-', 'Bangle Channel', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(175, '-', 'Bangle Plain', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(176, '-', 'Bangle Love', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(177, '-', 'Bangle Cartier', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(178, '-', 'Bangle Itali', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(179, '-', 'Bangle Donut', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(180, '-', 'Bangle Pintal', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(181, '-', 'Bangle Matahari', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(182, '-', 'Bangle Ribbon', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(183, '-', 'Bangle Fesyen', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(184, '-', 'T/T Gajah', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(185, '-', 'T/T Lipan', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(186, '-', 'T/T Polo Double', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(187, '-', 'T/T SAUH LICIN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(188, '-', 'T/T SAUH PAHAT', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(189, '-', 'T/T Belut', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(190, '-', 'T/T Cartier', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(191, '-', 'T/T Tiffany', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(192, '-', 'T/T Pintal', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(193, '-', 'T/T Topi', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(194, '-', 'T/T Roman', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(195, '-', 'T/T Fesyen', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(196, '-', 'T/T Love', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(197, '-', 'T/T Bunga', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(198, '-', 'T/T Jagung', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(199, '-', 'T/T Pandora', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(200, '-', 'T/T Matahari', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(201, '-', 'T/T CANDY DOUBLE GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(202, '-', 'CINCIN COCO DATIN', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(203, '-', 'T/T Boba Gantung Love', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(204, '-', 'T/T Boba', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(205, '-', 'T/T COCO KAIT KING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(206, '-', 'T/T LIPAN KAIT TIGA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(207, '-', 'MELUR PASIR', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(208, '-', 'T/T LIPAN KAIT DUA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(209, '-', 'T/T COCO KAIT', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(211, '-', 'T/T COCO', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(212, '-', 'R/L PANDORA', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(213, '-', 'R/L GAJAH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(214, '-', 'R/L CHOKER', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(215, '-', 'Cincin Merak Mix', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(216, '-', 'R/L MESIN', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(217, '-', 'R/L LIPAN PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(218, '-', 'R/L GILA GILA', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(219, '-', 'R/L PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(220, '-', 'R/L GAJAH PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(221, '-', 'R/L GAJAH BAJET', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(222, '-', 'RL BELIMBING', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(223, '-', 'T/T BOBA PERUT ULAR DUA LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(224, '-', 'RL FASHION', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(225, '-', 'T/T PAPER CLIP KANAK2 PAPAN BANGLE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(226, '-', 'RL JAGUNG', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(227, '-', 'RL MELUR', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(228, '-', 'RL PINTAL', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(229, '-', 'LOKET LV', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(230, '-', 'LOKET SILING', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(231, '-', 'T/T BOBA 10 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(232, '-', 'T/T BOBA 3 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(233, '-', 'BANGLE H', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(234, '-', 'BANGLE BUNGA', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(235, '-', 'LIPAN KAIT BABY', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(236, '-', 'T/T PADU GANTUNG LOVE ', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(238, '-', 'GAJAH BABY', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(239, '-', 'SNAKE SKIN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(240, '-', 'ANGGUR ', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(241, '-', 'KENDI GANTUNG BOBA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(242, '-', 'KENDI LOVE GANTUNG', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(243, '-', 'ORO ITALIAN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(244, '-', 'BOBA 5 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(245, '-', 'BOBA 7 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(246, '-', 'T/T LIPAN KAIT 2', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(247, '-', 'MELUR PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(248, '-', 'PUTERA PUTERI PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(249, '-', 'COCO LIPAN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(250, '-', 'GAJAH LICIN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(251, '-', 'T/T LIPAN KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(252, '-', 'GAJAH PASIR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(253, '-', 'T/T MELOR PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(254, '-', 'T/T PUTERI PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(255, '-', 'T/T KIKIR PADU PASIR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(256, '-', 'T/T KIKIR PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(257, '-', 'T/T KIKIR PADU GANTUNG LOVE ', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(258, '-', 'T/T PUTERI PADU GANTUNG LOVE KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(259, '-', 'T/T KIKIR PADU GANTUNG LOVE KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(260, '-', 'T/T LIPAN PADU GANTUNG LOVE KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(261, '-', 'T/T PUTERI PADU KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(262, '-', 'T/T DUNHILL PADU LICIN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(263, '-', 'T/T LIPAN PADU KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(264, '-', 'T/T KIKIR PADU KANAK2', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(265, '-', 'COCO KENDI', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(266, '-', 'TT PANADOL', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(267, '-', 'TT ROTI BUN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(268, '-', 'TT DINAR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(269, '-', 'TT DISCO', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(270, '-', 'PULUT DAKAP', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(271, '-', 'T/T KACANG', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(272, '-', 'KENDI LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(273, '-', 'LOKET TOPI', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(274, '-', 'T/T MESIN PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(275, '-', 'BRACELET', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(276, '-', 'LOKET RAMA-RAMA', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(277, '-', 'COCO PASIR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(278, '-', 'CHARM LV', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(279, '-', 'CHARM PARIS', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(280, '-', 'R/L TULANG BELUT', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(281, '-', 'R/L PINTAL PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(282, '-', 'R/L MELUR PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(283, '-', 'TT MESIN GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(284, '-', 'R/L PUTERA PUTERI', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(285, '-', 'PAPER KLIP', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(286, '-', 'R/L LIPAN', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(287, '-', 'TT BENSON PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(288, '-', 'TT ROTI BUN STAMPING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(289, '-', 'MELUR PASIR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(290, '-', 'SUBANG GANTUNG', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(291, '-', 'SUBANG RING', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(292, '-', 'BANGLE HONEY COMB', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(293, '-', 'BANGLE BOBA LOVE', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(294, '-', 'BANGLE DAUN', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(295, '-', 'BANGLE COCO', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(296, '-', 'T/T BOBA 5 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(297, '-', 'LOKET HURUF', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(298, '-', 'T/T SAUH CD', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(299, '-', 'T/T DONAT', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(300, '-', 'SUBANG DONUT', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(301, '-', 'SUBANG PAKU', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(302, '-', 'PINTAL BULUH', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(303, '-', 'CINCIN TOPI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(304, '-', 'CINCIN BVLGARI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(305, '-', 'CINCIN LOVE CHROME', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(306, '-', 'CINCIN APAM BALIK', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(307, '-', 'CINCIN LOVE BINGKAI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(308, '-', 'CINCIN MELOR', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(309, '-', 'CINCIN DOUBLE LOVE', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(310, '-', 'CINCIN PAKU', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(311, '-', 'CINCIN LOVE GEMUK CHROME', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(312, '-', 'CINCIN LOVE GEMUK', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(313, '-', 'CINCIN PANADOL', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(314, '-', 'CINCIN ILOVEYOU', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(315, '-', 'LOVE TIGA', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(316, '-', 'INFINITY', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(317, '-', 'LOVE GANTUNG', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(318, '-', 'LOVE LAYER', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(319, '-', 'ORO ITALI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(320, '-', 'BUNGA ROS', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(321, '-', 'CINCIN PENADOL', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(322, '-', 'T/T KLCC', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(323, '-', 'BOBA GANTUNG', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(324, '-', 'CINCIN COCO KING', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(325, '-', 'Bangle Boba ', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(326, '-', 'Bangle Oro Italy', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(327, '-', 'Bangle Oro Italy 2', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(328, '-', 'CINCIN KUNCI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(329, '-', 'LOVE BINTANG', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(330, '-', 'CINCIN OMBAK', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(331, '-', 'CINCIN KERAWANG', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(332, '-', 'CINCIN TIFFANY CHROME', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(333, '-', 'T/T BOBA GANTUNG BOBA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(334, '-', 'T/T BENSON PAHAT STAMPING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(335, '-', 'R/K MESIN PADU', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(336, '-', 'T/T LIPAN PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(337, '-', 'R/K KIKIR PADU', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(338, '-', 'R/K DOUBLE MESIN', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(339, '-', 'LOKET HATI', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(340, '-', 'SUBANG PAKU CARTIER', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(341, '-', 'SUBANG PAKU HERMES', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(342, '-', 'T/T STAMPING SEPARUH PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(343, '-', 'T/T GAJAH PADU', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(344, '-', 'R/K BOBA ', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(345, '-', 'R/K POLO', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(346, '-', 'R/K BELUT', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(347, '-', 'BANGLE MINGGU', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(348, '-', 'LOKET DONUT', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(349, '-', 'SUBANG LOVE', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(350, '-', 'LOKET SEMPOA', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(351, '-', 'T/T BOBA PERUT ULAR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(352, '-', 'T/T CANDY', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(353, '-', 'T/T BOBA KERAWANG', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(355, '-', 'CINCIN HERMES', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(356, '-', 'R/K PUTERI PADU', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(357, '-', 'R/K GAJAH', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(358, '-', 'R/K FESYEN', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(359, '-', 'R/K SAUH', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(360, '-', 'SUBANG FESYEN', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(361, '-', 'R/L BELUT', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(362, '-', 'R/L BULUH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(363, '-', 'R/L TIFFANY', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(364, '-', 'R/L MELUR PERUT ULAR', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(365, '-', 'R/L BENSON', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(366, '-', 'R/L DUNHILL PAHAT', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(367, '-', 'R/L KIKIR PASIR', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(368, '-', 'R/L BIJI SAWI', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(369, '-', 'R/L EKOR KUCING ', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(370, '-', 'CINCIN ITALI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(371, '-', 'CINCIN X', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(372, '-', 'CINCIN MERAK', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(373, '-', 'TT SAUH GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(374, '-', 'FESYEN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(375, '-', 'TALI TANGAN DONUT', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(376, '-', 'INFINITY', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(377, '-', 'BANGLE BUDAK', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(379, '-', ' CHANCEL', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(380, '-', 'LOKET CHANEL', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(381, '-', 'LOKET LEBAH', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(382, '-', 'R/K BIJI SAWI', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(383, '-', 'R/K GILA-GILA', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(384, '-', 'R/K KIKIR PADU GANTUNG LOVE', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(385, '-', 'T/T GAJAH BUDAK', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(386, '-', 'KERONGSANG', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(387, '-', 'HURUF B', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(388, '-', 'DIOR', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(389, '-', 'FASHION', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(390, '-', 'KACANG', 'Loket', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(391, '-', 'DIOR', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(392, '-', 'HURUF', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(393, '-', 'CD', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(394, '-', 'LOVE', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(395, '-', 'KIKIR', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(396, '-', 'T/T GAJAH PASIR', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(397, '-', 'T/T DUNHILL HOLLOW', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(398, '-', 'T/T LIPAN DOUBLE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(399, '-', 'T/T LIPAN KAIT EMPAT', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(400, '-', 'TULANG BELUT', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(401, '-', 'T/T COCO KING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(402, '-', 'T/T ITALI', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(403, '-', 'T/T CANDY GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(404, '-', 'T/T DUNHILL STAMPING', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(405, '-', 'T/T PAPER CLIP DOUBLE GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(406, '-', 'T/T BOBA PERUT ULAR 3 LAYER', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(407, '-', 'T/T VITARA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(408, '-', 'R/L SAUH GANTUNG LOVE', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(409, '-', 'CINCIN KLCC BUNGA', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(410, '-', 'LIPAN PADU', 'Rantai Kaki', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(411, '-', 'LIPAN LOVE BUDAK', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(412, '-', 'HARDWARE LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(413, '-', 'R/L MESIN PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(414, '-', 'BENSON FESYEN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(415, '-', 'MELUR GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(416, '-', 'CARTIER', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(417, '-', 'LOVE DAWAI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(418, '-', 'TRIPLE LOVE', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(419, '-', 'FESYEN  DATIN', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(420, '-', 'FESYEN FENDI', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(421, '-', 'RT.BISKUT TAWAR LICIN', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(422, '-', 'MINIMALIST', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(423, '-', 'RL PANDORA', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(425, '-', 'Wafer Hari Malaysia Wafer 1 Gram ', 'Wafer', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(426, '-', 'CINCIN DIOR', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(427, '-', 'BOBA MANIK', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(428, '-', 'BOBA PADU', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(429, '-', 'PINTAL BULUH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(430, '-', 'PINTAL PADU', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(431, '-', 'RAMA- RAMA', 'Charm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(432, '-', 'SAUH PETAK LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(433, '-', 'LIPAN DUNHILL', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(434, '-', 'GANTUNG LOVE', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(435, '-', 'COCO KAIT TIGA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(436, '-', 'COCO PETAI', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(437, '-', 'BEADS', 'Lain-Lain', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(438, '-', 'SUBANG LV', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(439, '-', 'BANGLE PUNTIANAK', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(440, '-', 'BANGLE KLCC', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(441, '-', 'CHOKER LOVE GEMOK', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(443, '-', 'CINCIN CLOVER', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(444, '-', 'SAUH CHROME', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(445, '-', 'LIPAN BARA', 'Tali Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(446, '-', 'TEST', 'Subang', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(451, '-', 'BOBA', 'Rantai Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(452, '-', 'COCO KING', 'Gelang Tangan', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(453, 'PADU', 'MESIN', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(454, 'PADU', 'GAJAH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(456, 'PADU', 'SAUH', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(457, 'PADU', 'CARTIER', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(458, 'PADU', 'BOMBAY', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(459, 'Belah Rotan', 'Fancy', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(460, 'Huruf', 'Pasir', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(463, '-', 'BUNGA RAYA', 'Cincin', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg'),
(464, '-', 'FASHION 3C', 'Rantai Leher', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `domz`
--

DROP TABLE IF EXISTS `domz`;
CREATE TABLE IF NOT EXISTS `domz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `nodo` varchar(100) NOT NULL DEFAULT '-',
  `dari` varchar(100) NOT NULL DEFAULT '-',
  `ke` varchar(100) NOT NULL DEFAULT '-',
  `status` varchar(100) NOT NULL DEFAULT 'BELUM TERIMA',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `multi` int NOT NULL DEFAULT '0',
  `carrier` varchar(100) NOT NULL DEFAULT '-',
  `supplier` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`),
  UNIQUE KEY `nodo` (`nodo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emasjualmz`
--

DROP TABLE IF EXISTS `emasjualmz`;
CREATE TABLE IF NOT EXISTS `emasjualmz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nosiri` varchar(50) DEFAULT NULL,
  `marhun` varchar(100) DEFAULT NULL,
  `kod` varchar(40) DEFAULT NULL,
  `karat` varchar(40) DEFAULT NULL,
  `berat` decimal(11,3) DEFAULT NULL,
  `panjang` decimal(11,2) DEFAULT NULL,
  `lebar` decimal(11,2) DEFAULT NULL,
  `saiz` decimal(11,2) DEFAULT NULL,
  `t_daftar` date DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `hargaemasmodal` decimal(11,2) DEFAULT NULL,
  `hargamodal` decimal(11,2) DEFAULT NULL,
  `jualanbiasa` decimal(11,2) DEFAULT NULL,
  `untungbiasa` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mutu` varchar(40) DEFAULT NULL,
  `status` int DEFAULT '0',
  `hargaupah` decimal(11,2) DEFAULT NULL,
  `tiadarekod` int DEFAULT NULL,
  `nota` longtext,
  `daftaroleh` varchar(50) DEFAULT NULL,
  `cawangan` varchar(150) DEFAULT NULL,
  `negeri` varchar(100) DEFAULT NULL,
  `noresit` varchar(200) DEFAULT '0',
  `notag` int NOT NULL DEFAULT '0',
  `statustag` int NOT NULL DEFAULT '0',
  `cetak` int NOT NULL DEFAULT '0',
  `jenis` varchar(50) NOT NULL DEFAULT '-',
  `upah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kodupah` varchar(10) NOT NULL DEFAULT '-',
  `sebab` varchar(300) NOT NULL DEFAULT '-',
  `idhapus` varchar(100) NOT NULL DEFAULT '-',
  `statusjual` varchar(50) NOT NULL DEFAULT '-',
  `hargajual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `untung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tradein` int NOT NULL DEFAULT '0',
  `dari` varchar(200) NOT NULL DEFAULT '-',
  `nodo` varchar(200) NOT NULL DEFAULT '-',
  `tarikhhapus` date DEFAULT NULL,
  `nosiridefect` varchar(100) NOT NULL DEFAULT '-',
  `transfer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'PENDING',
  `transferdefect` varchar(200) NOT NULL DEFAULT '-',
  `nosiribaru` varchar(100) NOT NULL DEFAULT '-',
  `tarikhtray` date DEFAULT NULL,
  `masascan` varchar(200) NOT NULL DEFAULT '-',
  `tray` varchar(100) NOT NULL DEFAULT '-',
  `soldstatus` varchar(100) NOT NULL DEFAULT '-',
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `nodokilang` varchar(200) NOT NULL DEFAULT '-',
  `approvecawangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `createdo` int NOT NULL DEFAULT '0',
  `split` int NOT NULL DEFAULT '0',
  `tukar` int NOT NULL DEFAULT '0',
  `jenisasal` varchar(100) NOT NULL DEFAULT '-',
  `actkilang` varchar(200) NOT NULL DEFAULT '-',
  `t_update` date DEFAULT NULL,
  `totalmodalwafer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaljualanwafer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaluntungwafer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaffwafer` varchar(100) NOT NULL DEFAULT '-',
  `masawafer` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `statuscart` int NOT NULL DEFAULT '0',
  `noresitwafer` varchar(200) NOT NULL DEFAULT '-',
  `nokpansur` varchar(30) NOT NULL DEFAULT '-',
  `kodansuran` varchar(200) NOT NULL DEFAULT '-',
  `tarikhansur` date DEFAULT NULL,
  `uploadonline` int NOT NULL DEFAULT '0',
  `semak` int NOT NULL DEFAULT '0',
  `minupah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tarikh_beli` date DEFAULT NULL,
  `minkodupah` varchar(10) NOT NULL DEFAULT '-',
  `design` varchar(150) NOT NULL DEFAULT '-',
  `tabung` int NOT NULL DEFAULT '0',
  `nokptabung` varchar(20) NOT NULL DEFAULT '-',
  `manualkodnew` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `stokaudit` int NOT NULL DEFAULT '0',
  `tarikhaudit` date DEFAULT NULL,
  `pagi` date DEFAULT NULL,
  `petang` date DEFAULT NULL,
  `notray` int NOT NULL DEFAULT '0',
  `nama` varchar(150) NOT NULL DEFAULT '-',
  `nofon` varchar(20) NOT NULL DEFAULT '-',
  `deposit` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '0',
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `s_purity` decimal(11,2) NOT NULL DEFAULT '91.60',
  `a_purity` decimal(11,2) NOT NULL DEFAULT '0.00',
  `occasion` varchar(255) NOT NULL DEFAULT '-',
  `gemstone` varchar(255) NOT NULL DEFAULT '-',
  `Theme` varchar(255) NOT NULL DEFAULT '-',
  `Huruf` varchar(255) NOT NULL DEFAULT '-',
  `keratan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `pilihtrade` varchar(50) NOT NULL DEFAULT '-',
  `upahvip` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baiki` int NOT NULL DEFAULT '0',
  `tag` int NOT NULL DEFAULT '0',
  `beratjual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargamodalupdate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `auditqr` int NOT NULL DEFAULT '0',
  `tarikh_auditqr` date DEFAULT NULL,
  `masa_auditqr` varchar(150) NOT NULL DEFAULT '-',
  `jumlah_ansur` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargaemas_ansur` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tag_lebur` int NOT NULL DEFAULT '0',
  `id_lebur` varchar(100) NOT NULL DEFAULT '-',
  `tarikh_lebur` date DEFAULT NULL,
  `jualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tag_scrap` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`),
  UNIQUE KEY `nosiri_2` (`nosiri`),
  KEY `nosiri` (`nosiri`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emasjualmz`
--

INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(0, 'SKU9695', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '27.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '600.00', '510.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(1, 'HM2A0001', 'Bangle', 'B/G', '22.0K', '4.390', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1939.98', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'B.Getah Rambut', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(2, 'HM2A0002', 'Bangle', 'B/G', '22.0K', '9.710', '0.00', '5.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '4290.94', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '480.00', 'DHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '190.00', NULL, 'AIZ', 'B.Italy', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(3, 'HM2A0003', 'Bangle', 'B/G', '22.0K', '7.110', '0.00', '5.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '3141.98', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'B.Italy 3c', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(4, 'HM2A0004', 'Bangle', 'B/G', '22.0K', '15.570', '0.00', '5.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '6880.54', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '570.00', 'EGZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '270.00', NULL, 'BGZ', 'B.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(5, 'HM2A0005', 'Bangle', 'B/G', '22.0K', '16.640', '0.00', '5.20', '0.00', '2025-08-03', 'hafiz4117', '441.91', '7353.38', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '500.00', 'EZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '250.00', NULL, 'BEZ', 'B.Buluh', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(6, 'HM2A0006', 'Bangle', 'B/G', '22.0K', '2.740', '0.00', '4.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1210.83', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'B.Budak', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(7, 'HM2A0007', 'Rantai Leher', 'R/L', '22.0K', '18.200', '59.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '8042.76', '0.00', '0.00', '916', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '680.00', 'FHZ', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-03', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '340.00', NULL, 'CDZ', 'RL 3C', 0, '-', '', 0, NULL, NULL, NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(8, 'HM2A0008', 'Rantai Leher', 'R/L', '22.0K', '19.830', '58.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '8763.08', '0.00', '0.00', '916', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'NEW', '680.00', 'FHZ', '-', 'hafiz4117', 'Belum Jual', '0.00', '0.00', 0, '-', '-', '2025-08-03', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '390.00', NULL, 'CIZ', '', 0, '-', '', 0, NULL, NULL, NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(9, 'HM2A0009', 'Rantai Leher', 'R/L', '22.0K', '19.830', '58.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '8763.08', '0.00', '0.00', '916', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '780.00', 'GHZ', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-03', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '390.00', NULL, 'CIZ', 'RL 3C', 0, '-', '', 0, NULL, NULL, NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(10, 'HM2A0010', 'Loket', 'LKT', '22.0K', '3.240', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1431.79', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'Loket Petak', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(11, 'HM2A0011', 'Loket', 'LKT', '22.0K', '2.870', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1268.28', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'Loket Petak', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(12, 'HM2A0012', 'Loket', 'LKT', '22.0K', '3.790', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1674.84', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'L.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(13, 'HM2A0013', 'Loket', 'LKT', '22.0K', '4.430', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1957.66', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'L.Berry', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(14, 'HM2A0014', 'Loket', 'LKT', '22.0K', '4.200', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1856.02', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'L.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(15, 'HM2A0015', 'Loket', 'LKT', '22.0K', '2.540', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1122.45', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '170.00', 'AGZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'L.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(16, 'HM2A0016', 'Loket', 'LKT', '22.0K', '2.250', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '994.30', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'L.Dinar', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(17, 'HM2A0017', 'Loket', 'LKT', '22.0K', '1.850', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '817.53', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'L.Fatin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(18, 'HM2A0018', 'Loket', 'LKT', '22.0K', '0.510', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.92', '225.38', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'L.A', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(19, 'HM2A0019', 'Loket', 'LKT', '22.0K', '0.500', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.92', '220.96', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'L.H', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(20, 'HM2A0020', 'Loket', 'LKT', '22.0K', '0.420', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '185.60', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'L.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(21, 'HM2A0021', 'Subang', 'SB', '22.0K', '2.010', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '888.22', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '25.00', NULL, 'BE', 'S.Katup', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(22, 'HM2A0022', 'Subang', 'SB', '22.0K', '2.000', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '883.80', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Katup', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(23, 'HM2A0023', 'Subang', 'SB', '22.0K', '2.190', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '967.76', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'S.Katup', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(24, 'HM2A0024', 'Subang', 'SB', '22.0K', '2.190', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '967.76', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Katup', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(25, 'HM2A0025', 'Subang', 'SB', '22.0K', '2.650', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1171.04', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Lv', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(26, 'HM2A0026', 'Subang', 'SB', '22.0K', '2.630', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1162.20', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Lv', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(27, 'HM2A0027', 'Subang', 'SB', '22.0K', '2.290', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1011.95', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.H', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(28, 'HM2A0028', 'Subang', 'SB', '22.0K', '2.210', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '976.60', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'S.Clover', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(29, 'HM2A0029', 'Subang', 'SB', '22.0K', '4.050', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1789.70', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'S.Clover', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(30, 'HM2A0030', 'Subang', 'SB', '22.0K', '1.410', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '623.08', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'S.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(31, 'HM2A0031', 'Subang', 'SB', '22.0K', '1.410', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '623.08', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'S.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(32, 'HM2A0032', 'Subang', 'SB', '22.0K', '2.630', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1162.20', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Lv', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(33, 'HM2A0033', 'Subang', 'SB', '22.0K', '1.150', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '508.19', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(34, 'HM2A0034', 'Subang', 'SB', '22.0K', '1.210', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '534.70', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Ring', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(35, 'HM2A0035', 'Subang', 'SB', '22.0K', '1.200', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '530.28', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1308202524658-0132-TIEY', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', '2025-08-13', 'CZ', 'S.Ring', 0, '-', '', 0, NULL, '2025-08-13', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '1.20', '530.28', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(36, 'HM2A0036', 'Subang', 'SB', '22.0K', '1.380', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '609.82', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'S.Ring', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(37, 'HM2A0037', 'Subang', 'SB', '22.0K', '1.090', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '481.67', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'S.Ring', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(38, 'HM2A0038', 'Subang', 'SB', '22.0K', '1.420', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '627.50', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Paku', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(39, 'HM2A0039', 'Subang', 'SB', '22.0K', '1.700', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '751.23', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(40, 'HM2A0040', 'Subang', 'SB', '22.0K', '1.710', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '755.65', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(41, 'HM2A0041', 'Subang', 'SB', '22.0K', '1.180', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '521.44', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', '', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(42, 'HM2A0042', 'Subang', 'SB', '22.0K', '1.220', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '539.12', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Ring', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(43, 'HM2A0043', 'Subang', 'SB', '22.0K', '1.040', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '459.58', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'S.Paku', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(44, 'HM2A0044', 'Subang', 'SB', '22.0K', '1.500', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '662.85', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(45, 'HM2A0045', 'Subang', 'SB', '22.0K', '1.220', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '539.12', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', '', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(46, 'HM2A0046', 'Subang', 'SB', '22.0K', '1.460', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '645.17', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(47, 'HM2A0047', 'Rantai Leher', 'R/L', '22.0K', '36.640', '88.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '16191.22', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '1200.00', 'ABZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '700.00', NULL, 'GZZ', '', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(48, 'HM2A0048', 'Rantai Leher', 'R/L', '22.0K', '4.600', '60.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2032.74', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'RL Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(49, 'HM2A0049', 'Rantai Leher', 'R/L', '22.0K', '5.950', '0.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2629.31', '0.00', '0.00', '916', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'NEW', '200.00', 'BZZ', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-03', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'RL Mesin', 0, '-', '', 0, NULL, NULL, NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(50, 'HM2A0050', 'Rantai Leher', 'R/L', '22.0K', '5.950', '60.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2629.31', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'RL Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(51, 'HM2A0051', 'Rantai Leher', 'R/L', '22.0K', '3.450', '60.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1524.56', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'RL.Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(52, 'HM2A0052', 'Rantai Leher', 'R/L', '22.0K', '2.950', '53.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1303.61', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '220.00', 'BBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'RL.Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(53, 'HM2A0053', 'Rantai Leher', 'R/L', '22.0K', '2.940', '53.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1299.19', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '220.00', 'BBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', '', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(54, 'HM2A0054', 'Rantai Leher', 'R/L', '22.0K', '4.580', '45.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2023.90', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RL.Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(55, 'HM2A0055', 'Rantai Leher', 'R/L', '22.0K', '4.550', '45.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2010.65', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', '', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(56, 'HM2A0056', 'Rantai Leher', 'R/L', '22.0K', '2.250', '46.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '994.28', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'RL.Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(57, 'HM2A0057', 'Rantai Leher', 'R/L', '22.0K', '2.310', '46.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1020.79', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'RL.Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(58, 'HM2A0058', 'Rantai Leher', 'R/L', '22.0K', '1.970', '45.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '870.54', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RL Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(59, 'HM2A0059', 'Rantai Leher', 'R/L', '22.0K', '3.930', '45.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '1736.67', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RL.Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(60, 'HM2A0060', 'Rantai Leher', 'R/L', '22.0K', '13.900', '65.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '6142.41', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1108202511335-0108-TIEY', 0, 0, 1, 'NEW', '580.00', 'EHZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '260.00', '2025-08-10', 'BFZ', 'RL.Boba', 0, '-', '', 0, NULL, '2025-08-10', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '13.90', '6142.41', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(61, 'HM2A0061', 'Rantai Leher', 'R/L', '22.0K', '13.000', '66.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '5744.70', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '600.00', 'FZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '240.00', NULL, 'BDZ', 'RL.Riben', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(62, 'HM2A0062', 'Rantai Leher', 'R/L', '22.0K', '14.110', '70.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '6235.21', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '600.00', 'FZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '270.00', NULL, 'BGZ', 'RL.Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(63, 'HM2A0063', 'Rantai Leher', 'R/L', '22.0K', '5.320', '66.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2350.91', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '270.00', 'BGZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'RL.Paper Clip', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(64, 'HM2A0064', 'Rantai Leher', 'R/L', '22.0K', '5.320', '65.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '2350.91', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'RL.Paper Clip', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(65, 'HM2A0065', 'Rantai Leher', 'R/L', '22.0K', '12.710', '68.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.90', '5616.55', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '500.00', 'EZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '200.00', NULL, 'BZZ', 'RL Rama', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);
INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(66, 'HM2A0066', 'Rantai Tangan', 'R/T', '22.0K', '5.030', '12.50', '0.40', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2222.81', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '110.00', NULL, 'AAZ', 'RT Padu', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(67, 'HM2A0067', 'Rantai Tangan', 'R/T', '22.0K', '6.430', '13.50', '0.90', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2841.48', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'RT Lipan(K)', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(68, 'HM2A0068', 'Rantai Tangan', 'R/T', '22.0K', '0.760', '15.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '335.85', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'RT Sauh(K)', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(69, 'HM2A0069', 'Rantai Tangan', 'R/T', '22.0K', '5.360', '19.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2368.64', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '35.00', NULL, 'CE', 'RT Kendi', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(70, 'HM2A0070', 'Rantai Tangan', 'R/T', '22.0K', '2.050', '19.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '905.92', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'RT Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(71, 'HM2A0071', 'Rantai Tangan', 'R/T', '22.0K', '4.030', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1780.90', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Clover', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(72, 'HM2A0072', 'Rantai Tangan', 'R/T', '22.0K', '3.940', '16.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1741.13', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Rama', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(73, 'HM2A0073', 'Rantai Tangan', 'R/T', '22.0K', '5.330', '19.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2355.38', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'RT Clover', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(74, 'HM2A0074', 'Rantai Tangan', 'R/T', '22.0K', '6.210', '16.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2744.26', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '110.00', NULL, 'AAZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(75, 'HM2A0075', 'Rantai Tangan', 'R/T', '22.0K', '7.540', '19.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '3332.00', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '390.00', 'CIZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Clover', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(76, 'HM2A0076', 'Rantai Tangan', 'R/T', '22.0K', '6.450', '16.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2850.32', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '96.00', NULL, 'IF', 'RT Sauh', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(77, 'HM2A0077', 'Rantai Tangan', 'R/T', '22.0K', '9.220', '20.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '4074.41', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT CD', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(78, 'HM2A0078', 'Rantai Tangan', 'R/T', '22.0K', '6.700', '18.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2960.80', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Sauh', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(79, 'HM2A0079', 'Rantai Tangan', 'R/T', '22.0K', '5.740', '18.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2536.56', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'RT Clover', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(80, 'HM2A0080', 'Rantai Tangan', 'R/T', '22.0K', '3.500', '16.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1546.69', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '66.00', NULL, 'FF', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(81, 'HM2A0081', 'Rantai Tangan', 'R/T', '22.0K', '2.500', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1104.78', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(82, 'HM2A0082', 'Rantai Tangan', 'R/T', '22.0K', '2.670', '18.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1179.90', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(83, 'HM2A0083', 'Rantai Tangan', 'R/T', '22.0K', '5.490', '16.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2426.09', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '82.00', NULL, 'HB', 'RT Hardware', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(84, 'HM2A0084', 'Rantai Tangan', 'R/T', '22.0K', '14.370', '17.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '6350.25', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'RT Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(85, 'HM2A0085', 'Rantai Tangan', 'R/T', '22.0K', '10.210', '17.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '4511.90', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '360.00', 'CFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(86, 'HM2A0086', 'Rantai Tangan', 'R/T', '22.0K', '8.970', '16.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '3963.93', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '140.00', NULL, 'ADZ', 'RT Sauh', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(87, 'HM2A0087', 'Rantai Tangan', 'R/T', '22.0K', '9.610', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '4246.76', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '430.00', 'DCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'RT Sauh', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(88, 'HM2A0088', 'Rantai Tangan', 'R/T', '22.0K', '9.560', '19.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '4224.66', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '450.00', 'DEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'RT Sauh Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(89, 'HM2A0089', 'Rantai Tangan', 'R/T', '22.0K', '6.110', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2700.07', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'RT Sauh Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(90, 'HM2A0090', 'Rantai Tangan', 'R/T', '22.0K', '6.330', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2797.29', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0408202512533-0067-TIEY', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '130.00', '2025-08-04', 'ACZ', 'RT Padu Love', 0, '-', '', 0, NULL, '2025-08-04', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '5.87', '2594.01', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(91, 'HM2A0091', 'Rantai Tangan', 'R/T', '22.0K', '4.510', '18.50', '0.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1993.01', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'RT Lipan Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(92, 'HM2A0092', 'Rantai Tangan', 'R/T', '22.0K', '3.250', '18.50', '0.40', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1436.21', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'RT Padu Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(93, 'HM2A0093', 'Rantai Tangan', 'R/T', '22.0K', '3.110', '17.50', '0.40', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1374.34', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '260.00', 'BFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'RT Lipan Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(94, 'HM2A0094', 'Rantai Tangan', 'R/T', '22.0K', '3.740', '18.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1652.74', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'RT Dinar', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(95, 'HM2A0095', 'Rantai Tangan', 'R/T', '22.0K', '16.760', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '7406.41', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '240.00', NULL, 'BDZ', 'RT Berry', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(96, 'HM2A0096', 'Rantai Tangan', 'R/T', '22.0K', '16.990', '17.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '7508.05', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '240.00', NULL, 'BDZ', 'RT Berry', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(97, 'HM2A0097', 'Rantai Tangan', 'R/T', '22.0K', '15.000', '18.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '6628.65', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1108202512423-0117-TIEY', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '220.00', '2025-08-11', 'BBZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-11', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '15.00', '6628.65', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(98, 'HM2A0098', 'Rantai Tangan', 'R/T', '22.0K', '16.020', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '7079.40', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '500.00', 'EZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '200.00', NULL, 'BZZ', 'RT Love 3c', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(99, 'HM2A0099', 'Rantai Tangan', 'R/T', '22.0K', '8.040', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '3552.96', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Sauh Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(100, 'HM2A0100', 'Rantai Tangan', 'R/T', '22.0K', '6.150', '18.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2717.75', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'RT Sauh Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(101, 'HM2A0101', 'Rantai Tangan', 'R/T', '22.0K', '5.180', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2289.09', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(102, 'HM2A0102', 'Rantai Tangan', 'R/T', '22.0K', '5.670', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2505.63', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'RT Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(103, 'HM2A0103', 'Rantai Tangan', 'R/T', '22.0K', '4.230', '19.00', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1869.28', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'RT Fashion Lv ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(104, 'HM2A0104', 'Rantai Tangan', 'R/T', '22.0K', '5.220', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2306.77', '0.00', '0.00', '916', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'NEW', '350.00', 'CEZ', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-03', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'RT Boba', 0, '-', '', 0, NULL, NULL, NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(105, 'HM2A0105', 'Rantai Tangan', 'R/T', '22.0K', '5.220', '17.50', '0.00', '0.00', '2025-08-03', 'hafiz4117', '441.91', '2306.77', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'RT Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(106, 'HM2A0106', 'Rantai Tangan', 'R/T', '22.0K', '4.070', '17.00', '0.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1798.57', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1308202511145-0129-TIEY', 0, 0, 1, 'NEW', '260.00', 'BFZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', '2025-08-13', 'GZ', 'RT Gajah', 0, '-', '', 0, NULL, '2025-08-13', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '4.07', '1798.57', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(107, 'HM2A0107', 'Rantai Tangan', 'R/T', '22.0K', '7.670', '17.00', '0.80', '0.00', '2025-08-03', 'hafiz4117', '441.91', '3389.45', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '110.00', NULL, 'AAZ', 'RT Gajah ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(108, 'HM2A0108', 'Rantai Tangan', 'R/T', '22.0K', '2.100', '16.50', '0.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '928.01', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(109, 'HM2A0109', 'Rantai Tangan', 'R/T', '22.0K', '3.030', '16.00', '0.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1338.99', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '220.00', 'BBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(110, 'HM2A0110', 'Rantai Tangan', 'R/T', '22.0K', '3.330', '16.50', '0.50', '0.00', '2025-08-03', 'hafiz4117', '441.91', '1471.56', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(111, 'HM2A0111', 'Rantai Tangan', 'R/T', '22.0K', '3.270', '17.50', '0.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '1445.05', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(112, 'HM2A0112', 'Rantai Tangan', 'R/T', '22.0K', '4.310', '17.50', '0.60', '0.00', '2025-08-04', 'hafiz4117', '441.91', '1904.63', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(113, 'HM2A0113', 'Rantai Tangan', 'R/T', '22.0K', '5.960', '18.00', '0.80', '0.00', '2025-08-04', 'hafiz4117', '441.91', '2633.78', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '110.00', NULL, 'AAZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(114, 'HM2A0114', 'Rantai Tangan', 'R/T', '22.0K', '7.540', '18.00', '0.90', '0.00', '2025-08-04', 'hafiz4117', '441.91', '3332.00', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0608202511595-0087-hanim', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', '2025-08-06', 'ABZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-06', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '6.85', '3027.08', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(115, 'HM2A0115', 'Rantai Tangan', 'R/T', '22.0K', '8.130', '16.50', '1.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '3592.73', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '130.00', NULL, 'ACZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(116, 'HM2A0116', 'Rantai Tangan', 'R/T', '22.0K', '9.580', '18.50', '1.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '4233.50', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '130.00', NULL, 'ACZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(117, 'HM2A0117', 'Rantai Tangan', 'R/T', '22.0K', '9.560', '17.00', '1.30', '0.00', '2025-08-04', 'hafiz4117', '441.91', '4224.66', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(118, 'HM2A0118', 'Rantai Tangan', 'R/T', '22.0K', '27.460', '18.50', '2.20', '0.00', '2025-08-04', 'hafiz4117', '441.91', '12134.85', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '750.00', 'GEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '320.00', NULL, 'CBZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(119, 'HM2A0119', 'Rantai Tangan', 'R/T', '22.0K', '24.770', '19.50', '1.80', '0.00', '2025-08-04', 'hafiz4117', '441.91', '10946.11', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '700.00', 'GZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '250.00', NULL, 'BEZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(120, 'HM2A0120', 'Rantai Tangan', 'R/T', '22.0K', '11.260', '18.00', '1.30', '0.00', '2025-08-04', 'hafiz4117', '441.91', '4975.91', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '130.00', NULL, 'ACZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(121, 'HM2A0121', 'Rantai Tangan', 'R/T', '22.0K', '10.300', '17.50', '0.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '4551.67', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '160.00', NULL, 'AFZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(122, 'HM2A0122', 'Rantai Tangan', 'R/T', '22.0K', '11.810', '18.50', '1.30', '0.00', '2025-08-04', 'hafiz4117', '441.91', '5218.96', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '150.00', NULL, 'AEZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(123, 'HM2A0123', 'Rantai Tangan', 'R/T', '22.0K', '12.750', '17.00', '1.30', '0.00', '2025-08-04', 'hafiz4117', '441.91', '5634.35', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '160.00', NULL, 'AFZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(124, 'HM2A0124', 'Rantai Tangan', 'R/T', '22.0K', '14.410', '18.00', '1.40', '0.00', '2025-08-04', 'hafiz4117', '441.91', '6367.92', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '170.00', NULL, 'AGZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(125, 'HM2A0125', 'Rantai Tangan', 'R/T', '22.0K', '17.700', '18.50', '1.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '7821.81', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '600.00', 'FZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '200.00', NULL, 'BZZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(126, 'HM2A0126', 'Rantai Tangan', 'R/T', '22.0K', '19.040', '18.00', '1.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '8413.97', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '650.00', 'FEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '210.00', NULL, 'BAZ', 'RT Lipan ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(127, 'HM2A0127', 'Rantai Tangan', 'R/T', '22.0K', '22.980', '18.50', '1.80', '0.00', '2025-08-04', 'hafiz4117', '441.91', '10155.09', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '230.00', NULL, 'BCZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(128, 'HM2A0128', 'Rantai Tangan', 'R/T', '22.0K', '17.060', '17.80', '1.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '7538.98', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '220.00', NULL, 'BBZ', 'RT  Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(129, 'HM2A0129', 'Rantai Tangan', 'R/T', '22.0K', '16.460', '17.00', '1.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '7273.84', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '550.00', 'EEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '210.00', NULL, 'BAZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(130, 'HM2A0130', 'Rantai Tangan', 'R/T', '22.0K', '19.260', '17.50', '0.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '8511.19', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '650.00', 'FEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '250.00', NULL, 'BEZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);
INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(131, 'HM2A0131', 'Rantai Tangan', 'R/T', '22.0K', '41.560', '18.00', '2.40', '0.00', '2025-08-04', 'hafiz4117', '441.91', '18365.78', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '1000.00', 'AZZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '400.00', NULL, 'DZZ', 'RT Lipan', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(132, 'HM2A0132', 'Gelang Kaki', 'G/K', '22.0K', '2.180', '27.00', '0.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '963.36', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'RT Kaki', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(133, 'HM2A0133', 'Gelang Kaki', 'G/K', '22.0K', '2.210', '27.00', '0.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '976.62', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'RT Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(134, 'HM2A0134', 'Rantai Tangan', 'G/K', '22.0K', '5.700', '17.50', '0.40', '0.00', '2025-08-04', 'hafiz4117', '441.91', '2518.89', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'RT Padu', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(135, 'HM2A0135', 'Rantai Tangan', 'R/T', '22.0K', '3.550', '19.50', '0.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '1568.78', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(136, 'HM2A0136', 'Rantai Tangan', 'R/T', '22.0K', '1.350', '16.50', '0.40', '0.00', '2025-08-04', 'hafiz4117', '441.91', '596.58', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(137, 'HM2A0137', 'Rantai Tangan', 'R/T', '22.0K', '10.420', '18.00', '1.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '4604.70', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '100.00', NULL, 'AZZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(138, 'HM2A0138', 'Rantai Tangan', 'R/T', '22.0K', '2.770', '16.50', '1.60', '0.00', '2025-08-04', 'hafiz4117', '441.91', '1224.09', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(139, 'HM2A0139', 'Rantai Tangan', 'R/T', '22.0K', '14.550', '19.50', '1.20', '0.00', '2025-08-04', 'hafiz4117', '441.91', '6429.79', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '380.00', 'CHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(140, 'HM2A0140', 'Rantai Tangan', 'R/T', '22.0K', '26.620', '18.50', '1.70', '0.00', '2025-08-04', 'hafiz4117', '441.91', '11763.64', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '620.00', 'FBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '300.00', NULL, 'CZZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(141, 'HM2A0141', 'Rantai Tangan', 'R/T', '22.0K', '25.650', '19.00', '1.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '11334.99', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '680.00', 'FHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '250.00', NULL, 'BEZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(142, 'HM2A0142', 'Rantai Tangan', 'R/T', '22.0K', '2.540', '19.50', '0.40', '0.00', '2025-08-04', 'hafiz4117', '441.91', '1122.45', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(143, 'HM2A0143', 'Rantai Tangan', 'R/T', '22.0K', '2.610', '18.00', '0.60', '0.00', '2025-08-04', 'hafiz4117', '441.91', '1153.39', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '260.00', 'BFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(144, 'HM2A0144', 'Rantai Tangan', 'R/T', '22.0K', '10.630', '17.00', '1.00', '0.00', '2025-08-04', 'hafiz4117', '441.91', '4697.50', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'RT Dunhill', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(145, 'HM2A0145', 'Rantai Tangan', 'R/T', '22.0K', '28.060', '20.00', '1.80', '0.00', '2025-08-04', 'hafiz4117', '441.91', '12399.99', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '700.00', 'GZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '270.00', NULL, 'BGZ', 'RT Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(146, 'HM2A0146', 'Rantai Tangan', 'R/T', '22.0K', '37.860', '19.00', '2.80', '0.00', '2025-08-04', 'hafiz4117', '441.91', '16730.71', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '1000.00', 'AZZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '520.00', NULL, 'EBZ', 'RT Dubai 3c', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(147, 'HM2A0147', 'Rantai Tangan', 'R/T', '22.0K', '35.240', '18.50', '2.30', '0.00', '2025-08-04', 'hafiz4117', '441.91', '15572.91', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '900.00', 'IZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '480.00', NULL, 'DHZ', 'RT Dubai 3c', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(148, 'HM2A0148', 'Rantai Tangan', 'R/T', '22.0K', '54.460', '19.50', '4.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '24066.42', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '1500.00', 'AEZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '770.00', NULL, 'GGZ', 'RT Rolex', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(149, 'HM2A0149', 'Rantai Tangan', 'R/T', '22.0K', '31.970', '18.50', '2.50', '0.00', '2025-08-04', 'hafiz4117', '441.91', '14127.86', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '1000.00', 'AZZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '480.00', NULL, 'DHZ', 'RT Rolex', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(150, 'HM2A0150', 'Cincin', 'C/N', '22.0K', '2.640', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '1166.64', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.HD', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(151, 'HM2A0151', 'Cincin', 'C/N', '22.0K', '1.370', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '441.91', '605.42', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(152, 'HM2A0152', 'Cincin', 'C/N', '22.0K', '2.080', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.91', '919.17', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(153, 'HM2A0153', 'Cincin', 'C/N', '22.0K', '1.280', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '565.64', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0408202513244-0069-TIEY', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', '2025-08-04', 'BZ', 'C.Silang', 0, '-', '', 0, NULL, NULL, NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '1.28', '565.64', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(154, 'HM2A0154', 'Cincin', 'C/N', '22.0K', '1.430', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '631.93', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(155, 'HM2A0155', 'Cincin', 'C/N', '22.0K', '3.240', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '1431.79', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '210.00', 'BAZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.X', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(156, 'HM2A0156', 'Cincin', 'C/N', '22.0K', '2.500', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '1104.78', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Crome', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(157, 'HM2A0157', 'Cincin', 'C/N', '22.0K', '2.490', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '1100.36', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Crome', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(158, 'HM2A0158', 'Cincin', 'C/N', '22.0K', '2.360', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '1042.91', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '140.00', 'ADZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(159, 'HM2A0159', 'Cincin', 'C/N', '22.0K', '2.440', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '1078.26', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.GR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(160, 'HM2A0160', 'Cincin', 'C/N', '22.0K', '2.520', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '1113.61', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.GR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(161, 'HM2A0161', 'Cincin', 'C/N', '22.0K', '2.100', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '441.91', '928.01', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.X', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(162, 'HM2A0162', 'Cincin', 'C/N', '22.0K', '2.160', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '954.53', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '35.00', NULL, 'CE', 'C.X', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(163, 'HM2A0163', 'Cincin', 'C/N', '22.0K', '2.070', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '914.75', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0708202554635-0104-TIEY', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', '2025-08-07', 'CZ', 'C.X', 0, '-', '', 0, NULL, '2025-08-07', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '2.07', '914.75', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(164, 'HM2A0164', 'Cincin', 'C/N', '22.0K', '1.280', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '441.91', '565.64', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(165, 'HM2A0165', 'Cincin', 'C/N', '22.0K', '1.340', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '592.16', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(166, 'HM2A0166', 'Cincin', 'C/N', '22.0K', '2.160', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '441.91', '954.53', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(167, 'HM2A0167', 'Cincin', 'C/N', '22.0K', '1.290', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '441.91', '570.06', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '140.00', 'ADZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(168, 'HM2A0168', 'Cincin', 'C/N', '22.0K', '3.120', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.91', '1378.76', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(169, 'HM2A0169', 'Cincin', 'C/N', '22.0K', '3.410', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '1506.91', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '220.00', 'BBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(170, 'HM2A0170', 'Cincin', 'C/N', '22.0K', '3.180', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.91', '1405.27', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(171, 'HM2A0171', 'Cincin', 'C/N', '22.0K', '2.140', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '441.91', '945.69', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.KLCC', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(172, 'HM2A0172', 'Cincin', 'C/N', '22.0K', '1.420', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '627.51', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '140.00', 'ADZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Stamping', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(173, 'HM2A0173', 'Cincin', 'C/N', '22.0K', '2.290', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '441.91', '1011.97', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Stamping', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(174, 'HM2A0174', 'Cincin', 'C/N', '22.0K', '2.160', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '954.53', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0508202512533-0081-hanim', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', '2025-08-05', 'DZ', 'C.Stamping', 0, '-', '', 0, NULL, '2025-08-05', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '2.16', '954.53', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(175, 'HM2A0175', 'Cincin', 'C/N', '22.0K', '3.680', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '1626.23', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'C.Rolex', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(176, 'HM2A0176', 'Cincin', 'C/N', '22.0K', '1.880', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '830.79', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Rolex', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(177, 'HM2A0177', 'Cincin', 'C/N', '22.0K', '2.680', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '1184.32', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '190.00', 'AIZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '45.00', NULL, 'DE', 'C.Coco', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(178, 'HM2A0178', 'Cincin', 'C/N', '22.0K', '3.340', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '1475.98', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '220.00', 'BBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(179, 'HM2A0179', 'Cincin', 'C/N', '22.0K', '4.160', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '1838.35', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(180, 'HM2A0180', 'Cincin', 'C/N', '22.0K', '4.260', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '1882.54', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '240.00', 'BDZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(181, 'HM2A0181', 'Cincin', 'C/N', '22.0K', '3.030', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '441.91', '1338.99', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1308202512734-0131-TIEY', 0, 0, 1, 'NEW', '190.00', 'AIZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', '2025-08-13', 'DZ', 'C.Silang', 0, '-', '', 0, NULL, '2025-08-13', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '2.97', '1312.47', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(182, 'HM2A0182', 'Cincin', 'C/N', '22.0K', '2.810', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.91', '1241.77', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0408202524006-0070-TIEY', 0, 0, 1, 'NEW', '190.00', 'AIZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', '2025-08-04', 'DZ', 'C.Silang', 0, '-', '', 0, NULL, NULL, NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '2.75', '1215.25', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(183, 'HM2A0183', 'Cincin', 'C/N', '22.0K', '3.230', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '1427.37', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '190.00', 'AIZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '45.00', NULL, 'DE', 'C.Buluh', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(184, 'HM2A0184', 'Cincin', 'C/N', '22.0K', '2.840', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '1255.02', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '190.00', 'AIZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Love (c)', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(185, 'HM2A0185', 'Cincin', 'C/N', '22.0K', '4.130', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '1825.09', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '240.00', 'BDZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'C.Love(c)', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(186, 'HM2A0186', 'Cincin', 'C/N', '22.0K', '4.880', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '2156.52', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'C.Love(L)', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(187, 'HM2A0187', 'Cincin', 'C/N', '22.0K', '6.810', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.91', '3009.41', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'C.Mickey', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(188, 'HM2A0188', 'Cincin', 'C/N', '22.0K', '3.580', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '1582.04', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '240.00', 'BDZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Mickey', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(189, 'HM2A0189', 'Cincin', 'C/N', '22.0K', '4.980', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '2200.71', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'C.Mickey', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(190, 'HM2A0190', 'Cincin', 'C/N', '22.0K', '5.740', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '441.91', '2536.56', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'C.Nabila', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(191, 'HM2A0191', 'Cincin', 'C/N', '22.0K', '5.520', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '2439.34', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'C.Fashion 3c', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(192, 'HM2A0192', 'Cincin', 'C/N', '22.0K', '7.390', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '3265.71', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1108202511335-0108-TIEY', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '110.00', '2025-08-10', 'AAZ', 'C.Diamond', 0, '-', '', 0, NULL, '2025-08-10', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '7.39', '3265.71', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(193, 'HM2A0193', 'Cincin', 'C/N', '22.0K', '4.120', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '1820.67', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'C.Diamond', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(194, 'HM2A0194', 'Cincin', 'C/N', '22.0K', '7.150', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '3159.66', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '80.00', NULL, 'HZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(195, 'HM2A0195', 'Cincin', 'C/N', '22.0K', '4.760', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '2103.49', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '250.00', 'BEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(196, 'HM2A0196', 'Cincin', 'C/N', '22.0K', '3.830', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '1692.52', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'C.Diamond', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);
INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(197, 'HM2A0197', 'Cincin', 'C/N', '22.0K', '0.740', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '441.91', '327.01', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.KLCC', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(198, 'HM2A0198', 'Cincin', 'C/N', '22.0K', '1.630', '0.00', '0.00', '14.50', '2025-08-04', 'hafiz4117', '441.91', '720.31', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '25.00', NULL, 'BE', 'C.KLCC', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(199, 'HM2A0199', 'Cincin', 'C/N', '22.0K', '0.780', '0.00', '0.00', '18.50', '2025-08-04', 'hafiz4117', '441.91', '344.69', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.KLCC', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(200, 'HM2A0200', 'Cincin', 'C/N', '22.0K', '0.840', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.90', '371.20', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '140.00', 'ADZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.KLCC', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(201, 'HM2A0201', 'Cincin', 'C/N', '22.0K', '0.350', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '154.67', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '14.00', NULL, 'AD', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(202, 'HM2A0202', 'Cincin', 'C/N', '22.0K', '0.570', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '251.89', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '14.00', NULL, 'AD', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(203, 'HM2A0203', 'Cincin', 'C/N', '22.0K', '0.470', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '441.89', '207.69', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '18.00', NULL, 'AH', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(204, 'HM2A0204', 'Cincin', 'C/N', '22.0K', '0.440', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '194.44', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '18.00', NULL, 'AH', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(205, 'HM2A0205', 'Cincin', 'C/N', '22.0K', '0.630', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.92', '278.41', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '14.00', NULL, 'AD', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(206, 'HM2A0206', 'Cincin', 'C/N', '22.0K', '0.340', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.91', '150.25', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '17.00', NULL, 'AG', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(207, 'HM2A0207', 'Cincin', 'C/N', '22.0K', '0.560', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.93', '247.48', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '15.00', NULL, 'AE', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(208, 'HM2A0208', 'Cincin', 'C/N', '22.0K', '0.380', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '441.89', '167.92', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '14.00', NULL, 'AD', 'C.Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(209, 'HM2A0209', 'Cincin', 'C/N', '22.0K', '0.350', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '154.67', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(210, 'HM2A0210', 'Cincin', 'C/N', '22.0K', '0.310', '0.00', '0.00', '11.00', '2025-08-04', 'hafiz4117', '441.90', '136.99', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(211, 'HM2A0211', 'Cincin', 'C/N', '22.0K', '0.270', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.89', '119.31', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '12.00', NULL, 'AB', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(212, 'HM2A0212', 'Cincin', 'C/N', '22.0K', '0.370', '0.00', '0.00', '11.00', '2025-08-04', 'hafiz4117', '441.89', '163.50', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(213, 'HM2A0213', 'Cincin', 'C/N', '22.0K', '0.380', '0.00', '0.00', '9.00', '2025-08-04', 'hafiz4117', '441.89', '167.92', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(214, 'HM2A0214', 'Cincin', 'C/N', '22.0K', '0.280', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.89', '123.73', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Love Bajet', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(215, 'HM2A0215', 'Cincin', 'C/N', '22.0K', '0.300', '0.00', '0.00', '11.00', '2025-08-04', 'hafiz4117', '441.90', '132.57', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(216, 'HM2A0216', 'Cincin', 'C/N', '22.0K', '0.290', '0.00', '0.00', '10.50', '2025-08-04', 'hafiz4117', '441.90', '128.15', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(217, 'HM2A0217', 'Cincin', 'C/N', '22.0K', '0.310', '0.00', '0.00', '11.00', '2025-08-04', 'hafiz4117', '441.90', '136.99', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(218, 'HM2A0218', 'Cincin', 'C/N', '22.0K', '0.270', '0.00', '0.00', '9.00', '2025-08-04', 'hafiz4117', '441.89', '119.31', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(219, 'HM2A0219', 'Cincin', 'C/N', '22.0K', '0.270', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.89', '119.31', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(220, 'HM2A0220', 'Cincin', 'C/N', '22.0K', '0.380', '0.00', '0.00', '9.00', '2025-08-04', 'hafiz4117', '441.89', '167.92', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(221, 'HM2A0221', 'Cincin', 'C/N', '22.0K', '0.340', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '150.25', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(222, 'HM2A0222', 'Cincin', 'C/N', '22.0K', '0.380', '0.00', '0.00', '9.00', '2025-08-04', 'hafiz4117', '441.89', '167.92', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(223, 'HM2A0223', 'Cincin', 'C/N', '22.0K', '0.370', '0.00', '0.00', '9.00', '2025-08-04', 'hafiz4117', '441.89', '163.50', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '10.00', NULL, 'AZ', 'C.Bajet Love', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(224, 'HM2A0224', 'Cincin', 'C/N', '22.0K', '0.700', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '441.93', '309.35', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.CD', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(225, 'HM2A0225', 'Cincin', 'C/N', '22.0K', '0.630', '0.00', '0.00', '11.00', '2025-08-04', 'hafiz4117', '441.92', '278.41', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.CD', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(226, 'HM2A0226', 'Cincin', 'C/N', '22.0K', '0.760', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '335.85', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0708202541112-0102-TIEY', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', '2025-08-07', 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-07', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.76', '335.85', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(227, 'HM2A0227', 'Cincin', 'C/N', '22.0K', '0.810', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '357.95', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(228, 'HM2A0228', 'Cincin', 'C/N', '22.0K', '0.780', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '441.91', '344.69', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(229, 'HM2A0229', 'Cincin', 'C/N', '22.0K', '0.650', '0.00', '0.00', '0.00', '2025-08-04', 'hafiz4117', '441.92', '287.25', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(230, 'HM2A0230', 'Cincin', 'C/N', '22.0K', '0.510', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '441.92', '225.38', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(231, 'HM2A0231', 'Cincin', 'C/N', '22.0K', '0.650', '0.00', '0.00', '11.00', '2025-08-04', 'hafiz4117', '441.92', '287.25', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(232, 'HM2A0232', 'Cincin', 'C/N', '22.0K', '0.600', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.92', '265.15', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(233, 'HM2A0233', 'Cincin', 'C/N', '22.0K', '0.740', '0.00', '0.00', '10.50', '2025-08-04', 'hafiz4117', '441.91', '327.01', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.BR', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(234, 'HM2A0234', 'Cincin', 'C/N', '22.0K', '0.760', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '335.85', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.PNADOL', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(235, 'HM2A0235', 'Cincin', 'C/N', '22.0K', '0.810', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '357.95', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.PNADOL', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(236, 'HM2A0236', 'Cincin', 'C/N', '22.0K', '1.260', '0.00', '0.00', '13.00', '2025-08-04', 'hafiz4117', '441.91', '556.81', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Bunga', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(237, 'HM2A0237', 'Cincin', 'C/N', '22.0K', '1.070', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '441.91', '472.84', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Bunga', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(238, 'HM2A0238', 'Cincin', 'C/N', '22.0K', '1.310', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '441.91', '578.90', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(239, 'HM2A0239', 'Cincin', 'C/N', '22.0K', '0.690', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '304.92', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0508202512506-0083-hanim', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', '2025-08-05', 'BZ', 'C.Fashion', 0, '-', '', 0, NULL, '2025-08-05', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.65', '287.24', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(240, 'HM2A0240', 'Cincin', 'C/N', '22.0K', '0.480', '0.00', '0.00', '10.00', '2025-08-04', 'hafiz4117', '441.90', '212.11', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Hermes', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(241, 'HM2A0241', 'Cincin', 'C/N', '22.0K', '0.960', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '441.91', '424.23', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Bunga', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(242, 'HM2A0242', 'Cincin', 'C/N', '22.0K', '1.030', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '441.91', '455.17', '0.00', '0.00', '916', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Stamping', 0, '-', '', 0, NULL, '2025-08-14', NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(243, 'HM2A0243', 'Cincin', 'C/N', '22.0K', '1.080', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '441.91', '477.26', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0408202535127-0072-TIEY', 0, 0, 1, 'NEW', '120.00', 'ABZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', '2025-08-04', 'BZ', 'C.Fashion', 0, '-', '', 0, NULL, NULL, NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '1.08', '477.26', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(244, 'HM2A0244', 'Cincin', 'C/N', '22.0K', '3.110', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '441.91', '1374.34', '0.00', '0.00', '916', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0408202512303-0068-TIEY', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', '2025-08-04', 'FZ', 'C.Fashion', 0, '-', '', 0, NULL, NULL, NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '3.11', '1374.34', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(245, 'SKU4154', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(246, 'SKU9399', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '22.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '300.00', '240.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '240.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(247, 'SKU8762', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '300.00', '250.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '250.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(248, 'SKU6308', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(249, 'SKU1337', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '300.00', '250.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '250.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(250, 'SKU7136', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(251, 'SKU6631', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(252, 'SKU4974', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(253, 'SKU7021', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '24.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(254, 'SKU6948', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(255, 'SKU6573', 'CS HIJAU ', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(256, 'SKU9407', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(257, 'SKU622', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 2, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'PRODUK', '0.00', '-', '-', 'hafiz4117', 'Belum Jual', '0.00', '300.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-06', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(259, 'SKU2203', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '80.00', '400.00', '320.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '320.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(260, 'SKU8533', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '100.00', '400.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(261, 'SKU6044', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '0.00', '70.00', '500.00', '430.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '430.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(262, 'SKU772', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '80.00', '500.00', '420.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '420.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(263, 'SKU2254', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '400.00', '350.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '350.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);
INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(264, 'SKU563', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '380.00', '330.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '330.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(265, 'SKU4583', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '21.00', '2025-08-04', 'hafiz4117', '0.00', '80.00', '400.00', '320.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '320.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(266, 'SKU9343', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '0.00', '70.00', '400.00', '330.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '330.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(267, 'SKU4715', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '0.00', '91.00', '550.00', '459.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '459.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(268, 'SKU8052', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '15.50', '2025-08-04', 'hafiz4117', '0.00', '50.00', '550.00', '500.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '500.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(269, 'SKU7390', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(270, 'SKU688', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '380.00', '320.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '320.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(271, 'SKU8068', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '400.00', '350.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '350.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(272, 'SKU10000', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '21.00', '2025-08-04', 'hafiz4117', '0.00', '120.00', '800.00', '680.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '680.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(273, 'SKU8685', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '27.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '300.00', '250.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '250.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(274, 'SKU7331', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(275, 'SKU9857', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '400.00', '340.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '340.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(276, 'SKU4831', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '400.00', '310.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '310.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(277, 'SKU6279', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '45.00', '350.00', '305.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '305.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(278, 'SKU5930', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '16.50', '2025-08-04', 'hafiz4117', '0.00', '110.00', '600.00', '490.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '490.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(279, 'SKU3909', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '70.00', '400.00', '330.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '330.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(280, 'SKU3839', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '280.00', '230.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '230.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(281, 'SKU2242', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '70.00', '450.00', '380.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '380.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(282, 'SKU4914', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '380.00', '330.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '330.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(283, 'SKU793', 'CS HIJAU', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(284, 'SKU1111', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(285, 'SKU390', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(286, 'SKU8979', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '65.00', '400.00', '335.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '335.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(287, 'SKU4347', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(288, 'SKU1874', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '9.50', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(289, 'SKU261', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(290, 'SKU9359', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '380.00', '320.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '320.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(291, 'SKU206', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '22.00', '2025-08-04', 'hafiz4117', '0.00', '70.00', '400.00', '330.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '330.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(292, 'SKU8976', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '21.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '600.00', '540.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '540.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(293, 'SKU1690', 'CS PUTIH ', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '45.00', '350.00', '305.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '305.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(294, 'SKU3653', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '300.00', '240.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '240.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(295, 'SKU9956', 'CS PUTIH', '-', '-', '0.000', '0.00', '0.00', '21.00', '2025-08-04', 'hafiz4117', '0.00', '87.00', '350.00', '263.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '263.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(296, 'SKU3014', 'CS PUTIH ', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '450.00', '360.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '360.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(297, 'SKU1899', 'CS HERMES', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '300.00', '250.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '250.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(298, 'SKU6901', 'C.LV', '-', '-', '0.000', '0.00', '0.00', '23.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(299, 'SKU6188', 'CS $', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '100.00', '380.00', '280.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '280.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(300, 'SKU6314', 'CS $', '-', '-', '0.000', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '0.00', '100.00', '380.00', '280.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '280.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(301, 'SKU5554', 'C.LV', '-', '-', '0.000', '0.00', '0.00', '17.50', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '270.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(302, 'SKU3265', 'CS GUCCI', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(303, 'SKU5366', 'CS KUNING', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '300.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(304, 'SKU4535', 'CS KUNING', '-', '-', '0.000', '0.00', '0.00', '27.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '550.00', '460.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '460.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(305, 'SKU2021', 'CS KUNING', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '120.00', '400.00', '280.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '280.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(306, 'SKU1793', 'CS KUNING', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '110.00', '400.00', '290.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '290.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(307, 'SKU628', 'CS PURPLE', '-', '-', '0.000', '0.00', '0.00', '23.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '550.00', '490.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '490.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(308, 'SKU590', 'CS HITAM', '-', '-', '0.000', '0.00', '0.00', '0.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '400.00', '310.00', NULL, 2, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'PRODUK', '0.00', '-', 'HAPUS', 'hafiz4117', '-', '0.00', '310.00', 0, '-', '-', '2025-08-04', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, NULL, NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(310, 'SKU5691', 'CS HITAM', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '400.00', '310.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(311, 'SKU1654', 'CS BIRU', '-', '-', '0.000', '0.00', '0.00', '24.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '400.00', '310.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(312, 'SKU1069', 'CS HITAM', '-', '-', '0.000', '0.00', '0.00', '15.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '380.00', '330.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(313, 'SKU2865', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '10.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '480.00', '390.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(314, 'SKU8534', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '90.00', '500.00', '410.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(315, 'SKU4968', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '19.00', '2025-08-04', 'hafiz4117', '0.00', '200.00', '900.00', '700.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(316, 'SKU4199', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '300.00', '250.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(317, 'SKU4414', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '15.50', '2025-08-04', 'hafiz4117', '0.00', '120.00', '550.00', '430.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(318, 'SKU8556', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(319, 'SKU6383', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '0.00', '2025-08-04', 'hafiz4117', '0.00', '110.00', '600.00', '490.00', NULL, 2, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'PRODUK', '0.00', '-', 'HAPUS', 'hafiz4117', '-', '0.00', '490.00', 0, '-', '-', '2025-08-04', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '-', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, NULL, NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(320, 'SKU7591', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '100.00', '600.00', '500.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(321, 'SKU6101', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '17.00', '2025-08-04', 'hafiz4117', '0.00', '40.00', '350.00', '310.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(322, 'SKU6138', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(323, 'SKU8455', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(324, 'SKU7414', 'CS HITAM', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '400.00', '340.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(325, 'SKU8983', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '300.00', '250.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(326, 'SKU5310', 'CS MERAH ', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '400.00', '340.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(327, 'SKU3206', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '14.00', '2025-08-04', 'hafiz4117', '0.00', '60.00', '400.00', '340.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(328, 'SKU4311', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(329, 'SKU9758', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '18.00', '2025-08-04', 'hafiz4117', '0.00', '120.00', '600.00', '480.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(330, 'SKU3153', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '16.00', '2025-08-04', 'hafiz4117', '0.00', '100.00', '450.00', '350.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(331, 'SKU6706', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '350.00', '300.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);
INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(332, 'SKU3212', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '20.00', '2025-08-04', 'hafiz4117', '0.00', '80.00', '400.00', '320.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(333, 'SKU9598', 'CS MERAH', '-', '-', '0.000', '0.00', '0.00', '12.00', '2025-08-04', 'hafiz4117', '0.00', '50.00', '320.00', '270.00', NULL, 0, NULL, NULL, 'HM JEWELS SILVER', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'PRODUK', '0.00', '-', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 11', '', 'INV20250804-1080', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, '0', '-', 0, '-', '-', 0, NULL, '2025-08-14', NULL, 11, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(335, 'HM2A0245', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(336, 'HM2A0246', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', 'Belum Jual', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(337, 'HM2A0247', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(338, 'HM2A0248', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(339, 'HM2A0249', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(340, 'HM2A0250', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1408202511335-0137-TIEY', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', '2025-08-14', 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(341, 'HM2A0251', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 1, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM0608202525917-0090-TIEY', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', 'SOLD', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', '2025-08-06', 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(342, 'HM2A0252', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(343, 'HM2A0253', 'Gold Bar', 'GB', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(344, 'HM2A0254', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(345, 'HM2A0255', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(346, 'HM2A0256', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(347, 'HM2A0257', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(348, 'HM2A0258', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(349, 'HM2A0259', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(350, 'HM2A0260', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(351, 'HM2A0261', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(352, 'HM2A0262', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(353, 'HM2A0263', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(354, 'HM2A0264', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(355, 'HM2A0265', 'Gold Bar', 'GB', '24.0K', '0.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.92', '110.48', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.25 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(356, 'HM2A0266', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(357, 'HM2A0267', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', 'Belum Jual', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(358, 'HM2A0268', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(359, 'HM2A0269', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(360, 'HM2A0270', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(361, 'HM2A0271', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(362, 'HM2A0272', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', 'Belum Jual', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(363, 'HM2A0273', 'Gold Bar', 'GB', '24.0K', '20.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '8838.20', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 20 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(364, 'HM2A0274', 'Wafer', 'WF', '24.0K', '1.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '441.91', '0.00', '0.00', '999.9', 2, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'WAFER', '0.00', 'Z', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-06', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 1 Gm', 0, '-', '', 0, NULL, NULL, NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(365, 'HM2A0275', 'Gold Bar', 'GB', '24.0K', '0.500', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '220.96', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 20 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(366, 'HM2A0276', 'Gold Bar', 'GB', '24.0K', '20.000', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '8838.20', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 20 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(367, 'HM2A0277', 'Dinar', 'D/R', '24.0K', '4.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '1878.12', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', '1 Dinar ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(368, 'HM2A0278', 'Dinar', 'D/R', '24.0K', '4.250', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.91', '1878.12', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 10', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', '1 Dinar ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 10, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(369, 'HM2A0279', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(370, 'HM2A0280', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(371, 'HM2A0281', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(372, 'HM2A0282', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(373, 'HM2A0283', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(374, 'HM2A0284', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(375, 'HM2A0285', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(376, 'HM2A0286', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(377, 'HM2A0287', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(378, 'HM2A0288', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(379, 'HM2A0289', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(380, 'HM2A0290', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(381, 'HM2A0291', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(382, 'HM2A0292', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(383, 'HM2A0293', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(384, 'HM2A0294', 'Gold Bar', 'GB', '24.0K', '0.100', '0.00', '0.00', '0.00', '2025-08-06', 'hafiz4117', '441.90', '44.19', '0.00', '0.00', '999.9', 0, NULL, NULL, 'HM JEWEL', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'WAFER', '0.00', 'Z', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 12', '-', 'INV20250803-1073', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '0.00', NULL, 'Z', 'Wafer 0.10 Gm', 0, '-', '', 0, NULL, '2025-08-14', NULL, 12, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(385, 'PH2A0001', 'Loket', 'LKT', '22.0K', '3.190', '0.00', '0.00', '0.00', '2025-08-11', 'hafiz4117', '536.68', '1712.01', '0.00', '0.00', '916', 1, NULL, NULL, 'PERTUKANGAN HM', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1108202511453-0110-TIEY', 0, 0, 1, 'NEW', '300.00', 'CZZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 14', 'SOLD', 'INV20250811-1100', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '200.00', '2025-08-10', 'BZZ', '', 1, '061012031066', '', 0, NULL, NULL, NULL, 14, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '3.19', '1712.01', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(386, 'LG2A0001', 'Rantai Leher Kanak-Kanak', 'R/L K', '22.0K', '3.080', '45.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '1408.85', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '56.00', NULL, 'EF', 'RL Fashion KIds', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(387, 'LG2A0002', 'Rantai Leher Kanak-Kanak', 'R/L K', '22.0K', '7.850', '45.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '3590.75', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 1', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'RL Love Boba', 0, '-', '', 0, NULL, '2025-08-14', NULL, 1, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(388, 'LG2A0003', 'Rantai Leher', 'R/L', '22.0K', '1.910', '52.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '873.67', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'RL Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(389, 'LG2A0004', 'Rantai Leher', 'R/L', '22.0K', '2.170', '60.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '992.60', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'RL Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(390, 'LG2A0005', 'Rantai Leher', 'R/L', '22.0K', '8.180', '52.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '3741.70', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '320.00', 'CBZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RL Mesin', 0, '-', '', 0, NULL, '2025-08-14', NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(391, 'LG2A0006', 'Rantai Tangan', 'R/T', '22.0K', '2.530', '17.50', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '1157.27', '0.00', '0.00', '916', 2, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 0, 'NEW', '130.00', 'ACZ', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-12', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 2', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Ifinity', 0, '-', '', 0, NULL, NULL, NULL, 2, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(392, 'LG2A0007', 'Rantai Tangan', 'R/T', '22.0K', '2.530', '17.50', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '1157.27', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '60.00', NULL, 'FZ', 'RT Ifinity', 0, '-', '', 0, NULL, '2025-08-14', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(393, 'LG2A0008', 'Rantai Tangan', 'R/T', '22.0K', '2.330', '17.50', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '1065.79', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 7', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'RT Lv ', 0, '-', '', 0, NULL, '2025-08-14', NULL, 7, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(394, 'LG2A0009', 'Rantai Tangan', 'R/T', '22.0K', '11.810', '16.50', '0.50', '0.00', '2025-08-12', 'hafiz4117', '457.42', '5402.13', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '350.00', 'CEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '130.00', NULL, 'ACZ', 'RT Padu Gtg', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(395, 'LG2A0010', 'Rantai Tangan', 'R/T', '22.0K', '6.060', '16.00', '0.30', '0.00', '2025-08-12', 'hafiz4117', '457.42', '2771.97', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '260.00', 'BFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 6', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '130.00', NULL, 'ACZ', 'RT Pady Gtg', 0, '-', '', 0, NULL, '2025-08-14', NULL, 6, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(396, 'LG2A0011', 'Rantai Tangan', 'R/T', '22.0K', '6.100', '18.00', '0.50', '0.00', '2025-08-12', 'hafiz4117', '457.42', '2790.26', '0.00', '0.00', '916', 1, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1308202512302-0130-TIEY', 0, 0, 1, 'NEW', '260.00', 'BFZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 5', 'SOLD', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', '2025-08-13', 'ABZ', 'RT Sauh Love', 0, '-', '', 0, NULL, '2025-08-13', NULL, 5, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '6.10', '2790.26', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(397, 'LG2A0012', 'Rantai Tangan', 'R/T', '22.0K', '5.120', '16.50', '0.40', '0.00', '2025-08-12', 'hafiz4117', '457.42', '2341.99', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'RT Padu', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);
INSERT INTO `emasjualmz` (`recno`, `nosiri`, `marhun`, `kod`, `karat`, `berat`, `panjang`, `lebar`, `saiz`, `t_daftar`, `id`, `hargaemasmodal`, `hargamodal`, `jualanbiasa`, `untungbiasa`, `mutu`, `status`, `hargaupah`, `tiadarekod`, `nota`, `daftaroleh`, `cawangan`, `negeri`, `noresit`, `notag`, `statustag`, `cetak`, `jenis`, `upah`, `kodupah`, `sebab`, `idhapus`, `statusjual`, `hargajual`, `untung`, `tradein`, `dari`, `nodo`, `tarikhhapus`, `nosiridefect`, `transfer`, `transferdefect`, `nosiribaru`, `tarikhtray`, `masascan`, `tray`, `soldstatus`, `noinvois`, `nodokilang`, `approvecawangan`, `createdo`, `split`, `tukar`, `jenisasal`, `actkilang`, `t_update`, `totalmodalwafer`, `totaljualanwafer`, `totaluntungwafer`, `idstaffwafer`, `masawafer`, `statuscart`, `noresitwafer`, `nokpansur`, `kodansuran`, `tarikhansur`, `uploadonline`, `semak`, `minupah`, `tarikh_beli`, `minkodupah`, `design`, `tabung`, `nokptabung`, `manualkodnew`, `stokaudit`, `tarikhaudit`, `pagi`, `petang`, `notray`, `nama`, `nofon`, `deposit`, `jana`, `gender`, `s_purity`, `a_purity`, `occasion`, `gemstone`, `Theme`, `Huruf`, `keratan`, `pilihtrade`, `upahvip`, `baiki`, `tag`, `beratjual`, `hargamodalupdate`, `auditqr`, `tarikh_auditqr`, `masa_auditqr`, `jumlah_ansur`, `hargaemas_ansur`, `tag_lebur`, `id_lebur`, `tarikh_lebur`, `jualan`, `tag_scrap`) VALUES
(398, 'LG2A0013', 'Rantai Tangan', 'R/T', '22.0K', '23.250', '17.50', '0.80', '0.00', '2025-08-12', 'hafiz4117', '457.42', '10635.02', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '380.00', 'CHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', NULL, 'ABZ', 'RT Padu(box)', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(399, 'LG2A0014', 'Rantai Tangan', 'R/T', '22.0K', '5.320', '17.50', '0.40', '0.00', '2025-08-12', 'hafiz4117', '457.42', '2433.47', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '230.00', 'BCZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '70.00', NULL, 'GZ', 'RT Padu', 0, '-', '', 0, NULL, '2025-08-14', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(400, 'LG2A0015', 'Rantai Tangan', 'R/T', '22.0K', '9.290', '17.50', '0.70', '0.00', '2025-08-12', 'hafiz4117', '457.42', '4249.43', '0.00', '0.00', '916', 1, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1308202525643-0133-TIEY', 0, 0, 1, 'NEW', '400.00', 'DZZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 8', 'SOLD', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '120.00', '2025-08-13', 'ABZ', 'RT Padu Kait3', 0, '-', '', 0, NULL, '2025-08-13', NULL, 8, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '9.29', '4249.43', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(401, 'LG2A0016', 'Cincin', 'C/N', '22.0K', '0.540', '0.00', '0.00', '18.00', '2025-08-12', 'hafiz4117', '457.43', '247.01', '0.00', '0.00', '916', 2, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', 'hafiz4117', '-', '0.00', '0.00', 0, '-', '-', '2025-08-12', '-', 'PENDING', '-', '-', NULL, '-', 'Tray 4', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'C.Ifinity', 0, '-', '', 0, NULL, NULL, NULL, 4, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(402, 'LG2A0017', 'Cincin', 'C/N', '22.0K', '6.410', '0.00', '0.00', '12.00', '2025-08-12', 'hafiz4117', '457.43', '2932.13', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '280.00', 'BHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '90.00', NULL, 'IZ', 'C.Diamond Cut 3L', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(403, 'LG2A0018', 'Cincin', 'C/N', '22.0K', '2.780', '0.00', '0.00', '17.00', '2025-08-12', 'hafiz4117', '457.43', '1271.66', '0.00', '0.00', '916', 1, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '81:61/HM1308202525643-0133-TIEY', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Telah Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', 'SOLD', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', '2025-08-13', 'DZ', 'C.Fashion Petak', 0, '-', '', 0, NULL, '2025-08-13', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '2.78', '1271.66', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(404, 'LG2A0019', 'Cincin', 'C/N', '22.0K', '2.030', '0.00', '0.00', '19.50', '2025-08-12', 'hafiz4117', '457.43', '928.58', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '150.00', 'AEZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'C.Silang Crome', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(405, 'LG2A0020', 'Cincin', 'C/N', '22.0K', '2.310', '0.00', '0.00', '17.00', '2025-08-12', 'hafiz4117', '457.43', '1056.66', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '160.00', 'AFZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Benson', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(406, 'LG2A0021', 'Cincin', 'C/N', '22.0K', '2.850', '0.00', '0.00', '14.00', '2025-08-12', 'hafiz4117', '457.43', '1303.68', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '180.00', 'AHZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '40.00', NULL, 'DZ', 'C.Kitty', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(407, 'LG2A0022', 'Cincin', 'C/N', '22.0K', '3.220', '0.00', '0.00', '15.00', '2025-08-12', 'hafiz4117', '457.43', '1472.92', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '200.00', 'BZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 3', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '50.00', NULL, 'EZ', 'C.Riben', 0, '-', '', 0, NULL, '2025-08-14', NULL, 3, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(408, 'LG2A0023', 'Loket', 'LKT', '22.0K', '0.440', '0.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.43', '201.27', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'L.Minnie', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(409, 'LG2A0024', 'Loket', 'LKT', '22.0K', '0.480', '0.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.44', '219.57', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '100.00', 'AZZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '20.00', NULL, 'BZ', 'L.Minnie', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0),
(410, 'LG2A0025', 'Subang', 'SB', '22.0K', '0.900', '0.00', '0.00', '0.00', '2025-08-12', 'hafiz4117', '457.42', '411.68', '0.00', '0.00', '916', 0, NULL, NULL, 'LILY GOLD JEWELLERY SDN BHD', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', '0', 0, 0, 1, 'NEW', '130.00', 'ACZ', '-', '-', 'Belum Jual', '0.00', '0.00', 0, '-', '-', NULL, '-', 'PENDING', '-', '-', NULL, '-', 'Tray 9', '-', 'IV008546', '-', 'APPROVE', 0, 0, 0, '-', '-', NULL, '0.00', '0.00', '0.00', '-', '-', 0, '-', '-', '-', NULL, 0, 0, '30.00', NULL, 'CZ', 'S.Rama-Rama', 0, '-', '', 0, NULL, '2025-08-14', NULL, 9, '-', '-', '0.00', 0, '-', '91.60', '0.00', '-', '-', '-', '-', '0.00', '-', '0.00', 0, 0, '0.00', '0.00', 0, NULL, '-', '0.00', '0.00', 0, '-', NULL, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `esupport_data`
--

DROP TABLE IF EXISTS `esupport_data`;
CREATE TABLE IF NOT EXISTS `esupport_data` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(150) NOT NULL DEFAULT '-',
  `username` varchar(50) NOT NULL DEFAULT '-',
  `nofon` varchar(50) NOT NULL DEFAULT '-',
  `tajuk` varchar(150) NOT NULL DEFAULT '-',
  `keterangan` varchar(150) NOT NULL DEFAULT '-',
  `cawangan` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `esupport_data`
--

INSERT INTO `esupport_data` (`recno`, `tarikh`, `masa`, `username`, `nofon`, `tajuk`, `keterangan`, `cawangan`) VALUES
(1, '2025-01-11', '4:50:06 PM', 'ADMIN', '0155658987', 'Masalah Jualan', 'Hapus 3E:BA/RL0501202534920-1746-AINI', 'ROYAL-SHAH ALAM');

-- --------------------------------------------------------

--
-- Table structure for table `finishproduct`
--

DROP TABLE IF EXISTS `finishproduct`;
CREATE TABLE IF NOT EXISTS `finishproduct` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `finalproduct` varchar(150) NOT NULL DEFAULT '-',
  `purity` varchar(50) NOT NULL DEFAULT '-',
  `beratuse` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `untungrugi` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gadaipinjaman`
--

DROP TABLE IF EXISTS `gadaipinjaman`;
CREATE TABLE IF NOT EXISTS `gadaipinjaman` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `nama` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `detail` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `idstaff` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.00',
  `transaksi` varchar(50) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(50) NOT NULL DEFAULT 'Hutang',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hapuskira`
--

DROP TABLE IF EXISTS `hapuskira`;
CREATE TABLE IF NOT EXISTS `hapuskira` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `sebab` varchar(150) NOT NULL DEFAULT '-',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hargaemasbeli`
--

DROP TABLE IF EXISTS `hargaemasbeli`;
CREATE TABLE IF NOT EXISTS `hargaemasbeli` (
  `recno` int NOT NULL,
  `mutu` varchar(40) NOT NULL DEFAULT '0',
  `karat` varchar(10) DEFAULT NULL,
  `harga` decimal(5,2) DEFAULT NULL,
  `hargarial` decimal(11,2) NOT NULL DEFAULT '0.00',
  `masaupdate` varchar(40) NOT NULL,
  `hargacash` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idupdate` varchar(50) NOT NULL DEFAULT '0',
  `t_update` date DEFAULT NULL,
  `hargaahli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargacashahli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargapajak` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargapajakahli` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hargaemasbelimz`
--

DROP TABLE IF EXISTS `hargaemasbelimz`;
CREATE TABLE IF NOT EXISTS `hargaemasbelimz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `mutu` decimal(11,1) NOT NULL DEFAULT '0.0',
  `karat` varchar(10) DEFAULT NULL,
  `hargarial` decimal(11,2) NOT NULL DEFAULT '0.00',
  `harga` decimal(5,2) DEFAULT NULL,
  `hargacash` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargapajak` decimal(11,2) NOT NULL DEFAULT '0.00',
  `masaupdate` varchar(40) NOT NULL,
  `idupdate` varchar(50) NOT NULL DEFAULT '0',
  `t_update` date DEFAULT NULL,
  PRIMARY KEY (`recno`),
  UNIQUE KEY `mutu` (`mutu`),
  UNIQUE KEY `mutu_2` (`mutu`),
  UNIQUE KEY `mutu_3` (`mutu`),
  UNIQUE KEY `mutu_4` (`mutu`),
  UNIQUE KEY `mutu_5` (`mutu`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hargaemasbelimz`
--

INSERT INTO `hargaemasbelimz` (`recno`, `mutu`, `karat`, `hargarial`, `harga`, `hargacash`, `hargapajak`, `masaupdate`, `idupdate`, `t_update`) VALUES
(6, '916.0', '22.0K', '431.00', '407.00', '403.00', '250.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(5, '900.0', '21.0K', '416.00', '325.00', '329.00', '229.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(7, '950.0', '23.0K', '433.00', '345.00', '349.00', '257.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(4, '835.0', '20.0K', '394.00', '290.00', '229.00', '228.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(3, '750.0', '18.0K', '345.00', '110.00', '110.00', '196.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(8, '999.0', '24.0Kb', '471.00', '355.00', '430.00', '280.00', '12:10:32 PM', 'hafiz4117', '2025-08-06'),
(2, '585.0', '14.0K', '257.00', '390.00', '390.00', '142.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(1, '375.0', '9.0K', '169.00', '25.00', '25.00', '77.00', '12:10:32 PM', 'hafiz4117', '2025-08-14'),
(95, '999.9', '24.0K', '471.00', '435.00', '430.00', '0.00', '12:10:32 PM', 'hafiz4117', '2025-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `hargaemasjualmz`
--

DROP TABLE IF EXISTS `hargaemasjualmz`;
CREATE TABLE IF NOT EXISTS `hargaemasjualmz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `mutu` varchar(40) NOT NULL DEFAULT '0',
  `karat` varchar(30) NOT NULL DEFAULT '0',
  `hargamodal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargabiasa` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tarikh` date DEFAULT NULL,
  `idupdate` varchar(100) NOT NULL DEFAULT '0',
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `hargamodalsp` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargahot_tray` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargajualeks` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargasemasa` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskaunmax` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hargaemasjualmz`
--

INSERT INTO `hargaemasjualmz` (`recno`, `mutu`, `karat`, `hargamodal`, `hargabiasa`, `tarikh`, `idupdate`, `masa`, `hargamodalsp`, `hargahot_tray`, `hargajualeks`, `hargasemasa`, `diskaunmax`) VALUES
(2, '585', '14.0K', '0.00', '250.00', '2025-08-14', 'ADMIN', '11:52:09 AM', '0.00', '0.00', '0.00', '0.00', '0.00'),
(3, '375', '9.0K', '0.00', '0.00', '2025-08-14', '0', '-', '0.00', '0.00', '0.00', '0.00', '0.00'),
(4, '916', '22.0K', '391.00', '433.08', '2025-08-14', 'hafiz4117', '2023-07-29 10:07:03', '238.00', '287.00', '312.00', '0.00', '0.00'),
(5, '999', '24.0K', '290.00', '540.00', '2025-08-14', 'hafiz4117', '2023-07-29 10:07:03', '238.00', '287.00', '312.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `hargaemastrade`
--

DROP TABLE IF EXISTS `hargaemastrade`;
CREATE TABLE IF NOT EXISTS `hargaemastrade` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `mutu` varchar(40) NOT NULL DEFAULT '0',
  `karat` varchar(10) DEFAULT NULL,
  `harga` decimal(5,2) DEFAULT NULL,
  `hargarial` decimal(11,2) NOT NULL DEFAULT '0.00',
  `masaupdate` varchar(40) NOT NULL,
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hargaemastrade`
--

INSERT INTO `hargaemastrade` (`recno`, `mutu`, `karat`, `harga`, `hargarial`, `masaupdate`) VALUES
(3, '916', '22.0K', '154.78', '421.00', '12:10:32 PM'),
(4, '900', '21.0K', '149.26', '406.00', '12:10:32 PM'),
(2, '950', '23.0K', '155.51', '423.00', '12:10:32 PM'),
(5, '835', '20.0K', '141.18', '384.00', '12:10:32 PM'),
(6, '750', '18.0K', '123.16', '335.00', '12:10:32 PM'),
(1, '999', '24.0K', '169.49', '461.00', '12:10:32 PM'),
(7, '585', '14.0K', '90.81', '247.00', '12:10:32 PM'),
(8, '375', '9.0K', '58.46', '159.00', '12:10:32 PM');

-- --------------------------------------------------------

--
-- Table structure for table `hargaemasusemz`
--

DROP TABLE IF EXISTS `hargaemasusemz`;
CREATE TABLE IF NOT EXISTS `hargaemasusemz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `mutu` varchar(40) NOT NULL DEFAULT '0',
  `hargamodal` decimal(11,2) NOT NULL DEFAULT '185.00',
  `hargabiasa` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idupdate` varchar(100) NOT NULL DEFAULT '0',
  `tarikh` date DEFAULT NULL,
  `karat` varchar(10) NOT NULL DEFAULT '22.0K',
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `hargamodalsp` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskaunmax` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hargaemasusemz`
--

INSERT INTO `hargaemasusemz` (`recno`, `mutu`, `hargamodal`, `hargabiasa`, `idupdate`, `tarikh`, `karat`, `masa`, `hargamodalsp`, `diskaunmax`) VALUES
(2, '999', '287.00', '350.00', 'ADMIN', '2025-06-17', '24.0K', '2023-07-29 10:07:15', '254.00', '0.00'),
(4, '916', '287.00', '429.41', 'hafiz4117', '2025-08-14', '22.0K', '2023-07-29 10:07:15', '254.00', '370.00'),
(6, '375', '185.00', '290.00', '0', '2024-09-28', '9.0K', '-', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `hargawafermz`
--

DROP TABLE IF EXISTS `hargawafermz`;
CREATE TABLE IF NOT EXISTS `hargawafermz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `namawafer` varchar(100) NOT NULL DEFAULT '0',
  `berat` decimal(11,3) NOT NULL DEFAULT '0.000',
  `hargamodal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargabiasa` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idupdate` varchar(100) NOT NULL DEFAULT '-',
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `kod` varchar(50) NOT NULL DEFAULT '-',
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `supplier` varchar(100) NOT NULL DEFAULT '-',
  `premium_customer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `premium_vip` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hargawafermz`
--

INSERT INTO `hargawafermz` (`recno`, `namawafer`, `berat`, `hargamodal`, `hargabiasa`, `idupdate`, `tarikh`, `masa`, `kod`, `noinvois`, `supplier`, `premium_customer`, `premium_vip`) VALUES
(1, 'Wafer 0.25 Gm', '0.250', '82.50', '275.00', 'hafiz4117', '2025-08-14', '2023-05-20 17:21:47', '-', 'WF17072023-MZ BULLION-486', 'MZ BULLION', '0.00', '0.00'),
(2, 'Wafer 1 Gm', '1.000', '330.00', '490.00', 'ADMIN', '2025-08-14', '2023-06-19 12:13:50', '-', 'WF17072023-MZ BULLION-486', 'MZ BULLION', '0.00', '0.00'),
(3, 'Wafer 5 Gm', '5.000', '1650.00', '1900.00', 'ADMIN', '2025-08-14', '-', '-', 'WF17072023-MZ BULLION-486', 'MZ BULLION', '0.00', '0.00'),
(4, 'Wafer 10 Gm', '10.000', '3300.00', '3500.00', 'ADMIN', '2025-08-14', '-', '-', 'WF17072023-MZ BULLION-486', 'MZ BULLION', '0.00', '0.00'),
(7, 'Wafer 50 Gm', '50.000', '3300.00', '24300.00', 'ADMIN', '2024-11-26', '-', '-', 'WF17072023-MZ BULLION-486', 'MZ BULLION', '0.00', '0.00'),
(1003, 'Wafer 0.10 Gm', '0.100', '0.00', '70.00', 'hafiz4117', '2025-08-14', '3:51:44 PM', '-', '-', '-', '0.00', '0.00'),
(1004, 'Wafer 20 Gm', '20.000', '0.00', '11000.00', 'hafiz4117', '2025-08-14', '3:56:58 PM', '-', '-', '-', '0.00', '0.00'),
(1005, '1 Dinar ', '4.250', '0.00', '437.86', 'hafiz4117', '2025-08-14', '4:27:59 PM', '-', '-', '-', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

DROP TABLE IF EXISTS `hutang`;
CREATE TABLE IF NOT EXISTS `hutang` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `nokp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `noresit` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `status_bayaran` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Tunai',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `sumber` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `detail` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `idstaff` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indexpage`
--

DROP TABLE IF EXISTS `indexpage`;
CREATE TABLE IF NOT EXISTS `indexpage` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tajuk1` varchar(200) NOT NULL DEFAULT '-',
  `tajuk2` varchar(200) NOT NULL DEFAULT '-',
  `tajuk3` varchar(200) NOT NULL DEFAULT '-',
  `t4` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `t5` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `t6` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `t7` varchar(50) NOT NULL DEFAULT '-',
  `t8` varchar(50) NOT NULL DEFAULT '-',
  `t9` varchar(50) NOT NULL DEFAULT '-',
  `t10` varchar(50) NOT NULL DEFAULT '-',
  `t11` varchar(50) NOT NULL DEFAULT '-',
  `t12` varchar(50) NOT NULL DEFAULT '-',
  `t13` varchar(50) NOT NULL DEFAULT '-',
  `t14` varchar(50) NOT NULL DEFAULT '-',
  `t15` text,
  `t16` text,
  `t17` text,
  `t18` text,
  `t19` text,
  `t20` text,
  `t21` text,
  `t22` text,
  `t23` text,
  `t24` text,
  `t25` text,
  `t26` text,
  `t27` text,
  `t28` text,
  `t29` text,
  `t30` text,
  `t31` text,
  `t32` text,
  `t33` text,
  `t34` text,
  `t35` text,
  `t36` text,
  `t37` text,
  `t38` text,
  `t39` text,
  `t40` text,
  `t41` text,
  `t42` text,
  `t43` text,
  `t44` text,
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invois`
--

DROP TABLE IF EXISTS `invois`;
CREATE TABLE IF NOT EXISTS `invois` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `batch` int NOT NULL DEFAULT '0',
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berat_semasa` decimal(11,2) NOT NULL,
  `bilitem` int NOT NULL DEFAULT '0',
  `bayarankilang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahkenaikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `modalkilang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `modaltagging` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahinvois` decimal(11,2) NOT NULL DEFAULT '0.00',
  `statusbayaran` varchar(50) NOT NULL DEFAULT 'Unpaid',
  `untung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `noakaun` varchar(100) NOT NULL DEFAULT '-',
  `bank` varchar(100) NOT NULL DEFAULT '-',
  `idstaff` varchar(150) NOT NULL DEFAULT '-',
  `statustag` varchar(50) NOT NULL DEFAULT 'Tidak Aktif',
  `supplier` varchar(50) NOT NULL DEFAULT '-',
  `approvetag` int NOT NULL DEFAULT '0',
  `hargamks` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kosminting` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kospackaging` decimal(11,2) NOT NULL DEFAULT '0.00',
  `upah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berat_trade` decimal(11,2) NOT NULL DEFAULT '0.00',
  `harga_jual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlah_trade` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '0',
  `jenis` int NOT NULL DEFAULT '0',
  `bayaremas` decimal(11,2) NOT NULL DEFAULT '0.00',
  `telahbayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bakicredit` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invois`
--

INSERT INTO `invois` (`recno`, `tarikh`, `batch`, `noinvois`, `berat`, `berat_semasa`, `bilitem`, `bayarankilang`, `jumlahkenaikan`, `modalkilang`, `modaltagging`, `jumlahinvois`, `statusbayaran`, `untung`, `noakaun`, `bank`, `idstaff`, `statustag`, `supplier`, `approvetag`, `hargamks`, `kosminting`, `kospackaging`, `upah`, `berat_trade`, `harga_jual`, `jumlah_trade`, `jana`, `jenis`, `bayaremas`, `telahbayar`, `bakicredit`) VALUES
(1, '2025-08-03', 1, 'INV20250803-1073', '1327.37', '0.00', 0, '0.00', '0.00', '0.00', '441.91', '0.00', 'Tunai', '0.00', '-', '-', '-', 'Tidak Aktif', 'HM JEWEL', 0, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 1, '0.00', '0.00', '0.00'),
(2, '2025-08-04', 1, 'INV20250804-1080', '0.00', '0.00', 30, '0.00', '0.00', '0.00', '0.00', '0.00', 'Tunai', '0.00', '-', '-', '-', 'Tidak Aktif', 'HM JEWELS SILVER', 0, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 2, '0.00', '0.00', '0.00'),
(3, '2025-08-10', 1, 'INV20250811-1100', '3.19', '0.00', 1, '1412.00', '0.00', '0.00', '536.68', '1712.00', 'Tunai', '0.00', '-', '-', '-', 'Tidak Aktif', 'PERTUKANGAN HM', 0, '0.00', '0.00', '0.00', '300.00', '0.00', '0.00', '0.00', 0, 1, '0.00', '0.00', '0.00'),
(4, '2025-08-12', 1, 'IV008546', '109.36', '109.36', 24, '50023.45', '0.00', '0.00', '457.42', '51390.25', 'Credit', '0.00', '-', '-', '-', 'Tidak Aktif', 'LILY GOLD JEWELLERY SDN BHD', 0, '0.00', '0.00', '0.00', '1366.80', '0.00', '0.00', '0.00', 0, 1, '0.00', '0.00', '51390.25');

-- --------------------------------------------------------

--
-- Table structure for table `jadualansuran`
--

DROP TABLE IF EXISTS `jadualansuran`;
CREATE TABLE IF NOT EXISTS `jadualansuran` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nokp` varchar(50) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `tarikh` date DEFAULT NULL,
  `kodansuran` varchar(150) NOT NULL DEFAULT '0',
  `bulan` varchar(40) NOT NULL DEFAULT '0',
  `transaksi` varchar(40) NOT NULL DEFAULT '0',
  `bayaran` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(40) NOT NULL DEFAULT '0',
  `telahbayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `nofon` varchar(50) NOT NULL DEFAULT '-',
  `upahsimpan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `ansuran` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenisbayaran_online`
--

DROP TABLE IF EXISTS `jenisbayaran_online`;
CREATE TABLE IF NOT EXISTS `jenisbayaran_online` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `jenis` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `nilaicaj` decimal(11,2) NOT NULL DEFAULT '0.00',
  `caj` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`),
  UNIQUE KEY `jenis` (`jenis`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenisbayaran_online`
--

INSERT INTO `jenisbayaran_online` (`recno`, `jenis`, `nilaicaj`, `caj`) VALUES
(5, 'QR Pay', '0.00', '0.00'),
(2, 'Debit Card', '1000.00', '0.50'),
(3, 'Credit Card', '1000.00', '1.30'),
(4, 'E-Wallet', '0.00', '0.00'),
(1, 'Online Transfer', '0.00', '0.00'),
(11, 'Hutang', '0.00', '0.00'),
(10, 'Cheque', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `jualanharian`
--

DROP TABLE IF EXISTS `jualanharian`;
CREATE TABLE IF NOT EXISTS `jualanharian` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date NOT NULL,
  `nosiri` varchar(40) NOT NULL DEFAULT '0',
  `marhun` varchar(100) NOT NULL DEFAULT '0',
  `berat` decimal(11,3) NOT NULL DEFAULT '0.000',
  `harga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `upah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `ahlikoperasi` varchar(50) NOT NULL DEFAULT '0',
  `nokpahli` varchar(40) NOT NULL DEFAULT '0',
  `hargamodal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `terima` int NOT NULL DEFAULT '0',
  `idstaf` varchar(40) NOT NULL DEFAULT '0',
  `totaljualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kod` varchar(40) NOT NULL DEFAULT '0.00',
  `mutu` varchar(40) NOT NULL DEFAULT '-',
  `noresit` varchar(150) NOT NULL DEFAULT '0',
  `modal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `untung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskaun` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargabiasa` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargaahli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalbelian` decimal(11,2) NOT NULL DEFAULT '0.00',
  `vjualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `vbelian` decimal(11,2) NOT NULL DEFAULT '0.00',
  `vuntung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `namacust` varchar(150) NOT NULL DEFAULT '0',
  `nokpcust` varchar(40) NOT NULL DEFAULT '0',
  `nama_agen` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `nokp_agen` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `panjang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `lebar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `saiz` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nofoncust` varchar(80) NOT NULL DEFAULT '0',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `komisyenstaff` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(100) NOT NULL DEFAULT '0',
  `negeri` varchar(100) NOT NULL DEFAULT '0',
  `jenis` varchar(10) NOT NULL DEFAULT '0',
  `komisyenwafer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tagwafer` int NOT NULL DEFAULT '0',
  `kuantiti` int NOT NULL DEFAULT '1',
  `ad` int NOT NULL DEFAULT '0',
  `tagukir` int NOT NULL DEFAULT '0',
  `komisyenukir` decimal(11,2) NOT NULL DEFAULT '0.00',
  `komisyencl` decimal(11,2) NOT NULL DEFAULT '0.00',
  `upahukir` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskaunwafer` decimal(11,2) NOT NULL DEFAULT '0.00',
  `komisyengoldbar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baikikomisyen` int NOT NULL DEFAULT '0',
  `beratscrap` decimal(11,2) NOT NULL DEFAULT '0.00',
  `blockupdate` int NOT NULL DEFAULT '0',
  `kodcaw` varchar(10) NOT NULL DEFAULT 'MG',
  `baiki` int NOT NULL DEFAULT '0',
  `creditkoop` int NOT NULL DEFAULT '0',
  `checkcashier` int NOT NULL DEFAULT '0',
  `komisyen` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargaasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalhargaasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nama_platinum` varchar(150) NOT NULL DEFAULT '-',
  `nokp_platinum` varchar(20) NOT NULL DEFAULT '-',
  `komisyenspecial` decimal(11,2) NOT NULL DEFAULT '0.00',
  `unik_id` varchar(50) NOT NULL DEFAULT '-',
  `idcashier_komisyen` varchar(100) NOT NULL DEFAULT '-',
  `keratan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `showkeratan` int NOT NULL DEFAULT '0',
  `berat_baru` decimal(11,2) NOT NULL DEFAULT '0.00',
  `maxdisupah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tag` int NOT NULL DEFAULT '0',
  `untungemas` decimal(11,2) NOT NULL DEFAULT '0.00',
  `modalemas` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`),
  KEY `noresit` (`noresit`),
  KEY `noresit_2` (`noresit`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jualanharian`
--

INSERT INTO `jualanharian` (`recno`, `tarikh`, `nosiri`, `marhun`, `berat`, `harga`, `jualan`, `upah`, `ahlikoperasi`, `nokpahli`, `hargamodal`, `terima`, `idstaf`, `totaljualan`, `kod`, `mutu`, `noresit`, `modal`, `untung`, `diskaun`, `hargabiasa`, `hargaahli`, `totalbelian`, `vjualan`, `vbelian`, `vuntung`, `namacust`, `nokpcust`, `nama_agen`, `nokp_agen`, `panjang`, `lebar`, `saiz`, `nofoncust`, `beratasal`, `komisyenstaff`, `cawangan`, `negeri`, `jenis`, `komisyenwafer`, `tagwafer`, `kuantiti`, `ad`, `tagukir`, `komisyenukir`, `komisyencl`, `upahukir`, `diskaunwafer`, `komisyengoldbar`, `baikikomisyen`, `beratscrap`, `blockupdate`, `kodcaw`, `baiki`, `creditkoop`, `checkcashier`, `komisyen`, `hargaasal`, `totalhargaasal`, `nama_platinum`, `nokp_platinum`, `komisyenspecial`, `unik_id`, `idcashier_komisyen`, `keratan`, `showkeratan`, `berat_baru`, `maxdisupah`, `tag`, `untungemas`, `modalemas`) VALUES
(1, '2025-08-04', 'HM2A0090', 'Rantai Tangan RT Padu Love', '6.330', '434.92', '2570.42', '320.00', '', '0', '441.91', 1, 'TIEY', '2890.42', 'R/T', '916', '81:61/HM0408202512533-0067-TIEY', '2724.01', '148.97', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'SYASYA', '920302035987', '', '', '17.50', '0.00', '0.00', '0', '6.33', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.46', 1, 'MZ', 0, 0, 0, '31.65', '434.92', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '182.62', 1, '5.87', '281.60', 0, '0.00', '0.00'),
(2, '2025-08-04', 'HM2A0244', 'Cincin C.Fashion', '3.110', '434.92', '1352.60', '200.00', '', '0', '441.91', 1, 'TIEY', '1552.60', 'C/N', '916', '81:61/HM0408202512303-0068-TIEY', '1434.34', '118.26', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'KHADIJAH BINTI MAMAT', '571017035584', '', '', '0.00', '0.00', '14.00', '0', '3.11', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '15.55', '434.92', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '180.00', 0, '0.00', '0.00'),
(3, '2025-08-04', 'HM2A0153', 'Cincin C.Silang', '1.280', '434.92', '556.70', '120.00', '', '0', '441.91', 1, 'TIEY', '676.70', 'C/N', '916', '81:61/HM0408202513244-0069-TIEY', '585.64', '91.06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'MAZWAN FIRDAUS BIN MUHAMAD', '920326035425', '', '', '0.00', '0.00', '12.00', '0', '1.28', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '6.40', '434.92', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '108.00', 0, '0.00', '0.00'),
(4, '2025-08-04', 'HM2A0182', 'Cincin C.Silang', '2.810', '434.92', '1196.03', '190.00', '', '0', '441.91', 1, 'TIEY', '1386.03', 'C/N', '916', '81:61/HM0408202524006-0070-TIEY', '1255.25', '130.78', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'MAZWAN FIRDAUS BIN MUHAMAD', '920326035425', '', '', '0.00', '0.00', '17.00', '0', '2.81', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.06', 1, 'MZ', 0, 0, 0, '14.05', '434.92', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 1, '2.75', '171.00', 0, '0.00', '0.00'),
(5, '2025-08-04', 'HM2A0243', 'Cincin C.Fashion', '1.080', '434.92', '469.71', '120.00', '', '0', '441.91', 1, 'TIEY', '589.71', 'C/N', '916', '81:61/HM0408202535127-0072-TIEY', '497.26', '92.45', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'RIYANTO', 'C8722738', '', '', '0.00', '0.00', '15.00', '0', '1.08', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '5.40', '434.92', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '108.00', 0, '0.00', '0.00'),
(6, '2025-08-04', 'Add On-60356/TIEY/81:61', 'Baiki', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '25.00', 'BAIKI', '-', '81:61/HM0408202535528-0073-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(8, '2025-08-05', 'Add On-60358/hanim/81:61', 'subang cucuk', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'hanim', '15.00', 'BAIKI', '-', '81:61/HM0508202511392-0077-hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'hanim', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(9, '2025-08-05', 'Add On-60359/hanim/81:61', 'Cucuk Subang', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'hanim', '30.00', 'BAIKI', '-', '81:61/HM0508202512040-0079-hanim', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'hanim', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(11, '2025-08-05', 'HM2A0174', 'Cincin C.Stamping', '2.160', '437.86', '945.78', '180.00', '', '0', '441.91', 1, 'hanim', '1125.78', 'C/N', '916', '81:61/HM0508202512533-0081-hanim', '994.53', '131.25', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NUR AKILA QIATINA BINTI MOHD LUKMAN', '061012031066', '', '', '0.00', '0.00', '16.00', '0', '2.16', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '10.80', '437.86', '0.00', '-', '-', '0.00', '81:61', 'hanim', '0.00', 0, '0.00', '162.00', 0, '0.00', '0.00'),
(12, '2025-08-05', 'HM2A0239', 'Cincin C.Fashion', '0.690', '437.86', '285.96', '120.00', '', '0', '441.91', 1, 'hanim', '405.96', 'C/N', '916', '81:61/HM0508202512506-0083-hanim', '307.24', '97.37', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NOR SUHAINI BINTI MAMAT', '030402030948', '', '', '0.00', '0.00', '16.00', '0', '0.69', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.04', 1, 'MZ', 0, 0, 0, '3.45', '437.86', '0.00', '-', '-', '0.00', '81:61', 'hanim', '16.16', 1, '0.65', '108.00', 0, '0.00', '0.00'),
(13, '2025-08-06', 'Add On-60361/TIEY/81:61', 'Baiki', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '10.00', 'BAIKI', '-', '81:61/HM0608202510063-0085-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(15, '2025-08-06', 'HM2A0114', 'Rantai Tangan RT Lipan', '7.540', '437.86', '3020.63', '350.00', '', '0', '441.91', 1, 'hanim', '3370.63', 'R/T', '916', '81:61/HM0608202511595-0087-hanim', '3147.08', '202.26', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NORAINI HAZIRA BINTI CHE SOH', '850508036006', '', '', '18.00', '0.90', '0.00', '0', '7.54', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.69', 1, 'MZ', 0, 0, 0, '37.70', '437.86', '0.00', '-', '-', '0.00', '81:61', 'hanim', '280.83', 1, '6.85', '308.00', 0, '0.00', '0.00'),
(16, '2025-08-06', 'Add On-60362/TIEY/81:61', 'pateri', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '25.00', 'BAIKI', '-', '81:61/HM0608202525028-0089-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(21, '2025-08-06', 'HM2A0251', 'Gold Bar', '1.000', '540.00', '540.00', '0.00', '', '0', '441.91', 1, 'TIEY', '540.00', 'GB', '999.9', '81:61/HM0608202525917-0090-TIEY', '441.91', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '1.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'WAFER', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 1, 'MZ', 0, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(22, '2025-08-07', 'Add On-60363/TIEY/81:61', 'CUCUK SUBANG', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '30.00', 'BAIKI', '-', '81:61/HM0708202522612-0101-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(23, '2025-08-07', 'HM2A0226', 'Cincin C.BR', '0.760', '437.13', '332.22', '120.00', '', '0', '441.91', 1, 'TIEY', '452.22', 'C/N', '916', '81:61/HM0708202541112-0102-TIEY', '355.85', '96.37', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'SITI FILZAH BINTI AB AZIZ', '870308035664', '', '', '0.00', '0.00', '12.00', '0', '0.76', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '3.80', '437.13', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '108.00', 0, '0.00', '0.00'),
(24, '2025-08-07', 'HM2A0163', 'Cincin C.X', '2.070', '437.13', '904.86', '180.00', '', '0', '441.91', 1, 'TIEY', '1084.86', 'C/N', '916', '81:61/HM0708202554635-0104-TIEY', '944.75', '140.11', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'FARIS', '900222035142', '', '', '0.00', '0.00', '16.00', '0', '2.07', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '10.35', '437.13', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '162.00', 0, '0.00', '0.00'),
(27, '2025-08-10', 'HM2A0192', 'Cincin C.Diamond', '7.390', '442.64', '3271.11', '300.00', '', '0', '441.91', 1, 'TIEY', '3571.11', 'C/N', '916', '81:61/HM1108202511335-0108-TIEY', '3375.71', '195.40', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'MARIAM BINTI ABDUL HALIM', '860703295264', '', '', '0.00', '0.00', '15.00', '0', '7.39', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '36.95', '442.64', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '264.00', 0, '0.00', '0.00'),
(28, '2025-08-10', 'HM2A0060', 'Rantai Leher RL.Boba', '13.900', '442.64', '6152.70', '580.00', '', '0', '441.90', 1, 'TIEY', '6732.70', 'R/L', '916', '81:61/HM1108202511335-0108-TIEY', '6402.41', '330.29', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'MARIAM BINTI ABDUL HALIM', '860703295264', '', '', '65.00', '0.00', '0.00', '0', '13.90', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '69.50', '442.64', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '435.00', 0, '0.00', '0.00'),
(29, '2025-08-10', 'Add On-60364/TIEY/81:61', 'Baiki', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '25.00', 'BAIKI', '-', '81:61/HM1108202511443-0109-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(30, '2025-08-10', 'PH2A0001', 'Loket ', '3.190', '442.64', '1412.02', '300.00', '', '0', '536.68', 1, 'TIEY', '1712.02', 'LKT', '916', '81:61/HM1108202511453-0110-TIEY', '1912.01', '-199.99', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NUR AKILA QISTINA BINTI MOHD LUKMAN', '061012031066', '', '', '0.00', '0.00', '0.00', '0', '3.19', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '15.95', '442.64', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '270.00', 0, '0.00', '0.00'),
(31, '2025-08-09', 'Add On-60365/TIEY/81:61', 'PATERI', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '25.00', 'BAIKI', '-', '81:61/HM1108202511495-0111-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(32, '2025-08-11', 'HM2A0097', 'Rantai Tangan RT Love', '15.000', '438.60', '6579.00', '550.00', '', '0', '441.91', 1, 'TIEY', '7129.00', 'R/T', '916', '81:61/HM1108202512423-0117-TIEY', '6848.65', '280.35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NUR FATIHAH BINTI CHE LAH', '900213035594', '', '', '18.00', '0.00', '0.00', '0', '15.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '75.00', '438.60', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '412.50', 0, '0.00', '0.00'),
(33, '2025-08-13', 'HM2A0106', 'Rantai Tangan RT Gajah', '4.070', '433.09', '1762.68', '260.00', '', '0', '441.91', 1, 'TIEY', '2022.68', 'R/T', '916', '81:61/HM1308202511145-0129-TIEY', '1868.57', '154.11', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'ZANARIAH BINTI MAT RUSOK@HASSAN ', '720313035358 ', '', '', '17.00', '0.50', '0.00', '0', '4.07', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '20.35', '433.09', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '234.00', 0, '0.00', '0.00'),
(34, '2025-08-13', 'LG2A0011', 'Rantai Tangan RT Sauh Love', '6.100', '433.09', '2641.85', '260.00', '', '0', '457.42', 1, 'TIEY', '2901.85', 'R/T', '916', '81:61/HM1308202512302-0130-TIEY', '2910.26', '-8.41', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'SITI NOORAIN BINTI AB AZIS', '890731036056', '', '', '18.00', '0.50', '0.00', '0', '6.10', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '30.50', '433.09', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '228.80', 0, '0.00', '0.00'),
(35, '2025-08-13', 'HM2A0181', 'Cincin C.Silang', '3.030', '433.09', '1288.08', '190.00', '', '0', '441.91', 1, 'TIEY', '1478.08', 'C/N', '916', '81:61/HM1308202512734-0131-TIEY', '1352.47', '123.81', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NUR IRDAWATIE BINTI NAZREE', '980816035836', '', '', '0.00', '0.00', '19.00', '0', '3.03', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.06', 1, 'MZ', 0, 0, 0, '15.15', '433.09', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '24.18', 1, '2.97', '171.00', 0, '0.00', '0.00'),
(36, '2025-08-13', 'HM2A0035', 'Subang S.Ring', '1.200', '433.09', '519.71', '160.00', '', '0', '441.90', 1, 'TIEY', '679.71', 'SB', '916', '81:61/HM1308202524658-0132-TIEY', '560.28', '119.43', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'JAMILAH BINTI RAHMAN ', '730701035674', '', '', '0.00', '0.00', '0.00', '0', '1.20', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '6.00', '433.09', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '144.00', 0, '0.00', '0.00'),
(37, '2025-08-13', 'LG2A0015', 'Rantai Tangan RT Padu Kait3', '9.290', '433.09', '4023.41', '400.00', '', '0', '457.42', 1, 'TIEY', '4423.41', 'R/T', '916', '81:61/HM1308202525643-0133-TIEY', '4369.43', '53.98', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'HASMAH BINTI ISMAIL', '720607035708', '', '', '17.50', '0.70', '0.00', '0', '9.29', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '46.45', '433.09', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '352.00', 0, '0.00', '0.00'),
(38, '2025-08-13', 'LG2A0018', 'Cincin C.Fashion Petak', '2.780', '433.09', '1203.99', '180.00', '', '0', '457.43', 1, 'TIEY', '1383.99', 'C/N', '916', '81:61/HM1308202525643-0133-TIEY', '1311.66', '72.33', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'HASMAH BINTI ISMAIL', '720607035708', '', '', '0.00', '0.00', '17.00', '0', '2.78', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'NEW', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 0, 0, 0, '13.90', '433.09', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '162.00', 0, '0.00', '0.00'),
(41, '2025-08-14', 'Add On-60367/TIEY/81:61', 'Baiki', '0.000', '0.00', '0.00', '0.00', '0', '0', '0.00', 1, 'TIEY', '25.00', 'BAIKI', '-', '81:61/HM1408202511301-0136-TIEY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '0', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, 'MZ', 1, 0, 0, '0.00', '0.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00'),
(42, '2025-08-14', 'HM2A0250', 'Gold Bar', '1.000', '0.00', '470.00', '0.00', '', '0', '441.91', 1, 'TIEY', '470.00', 'GB', '999.9', '81:61/HM1408202511335-0137-TIEY', '441.91', '28.09', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'MAZWAN FIRDAUS BIN MUHAMAD', '920326035425', '', '', '0.00', '0.00', '0.00', '0', '1.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', 'WAFER', '0.00', 0, 1, 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 1, 'MZ', 0, 0, 0, '0.00', '470.00', '0.00', '-', '-', '0.00', '81:61', 'TIEY', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `jualscrap`
--

DROP TABLE IF EXISTS `jualscrap`;
CREATE TABLE IF NOT EXISTS `jualscrap` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `karat` varchar(10) NOT NULL,
  `mutu` decimal(11,1) NOT NULL DEFAULT '0.0',
  `jualkepada` varchar(200) NOT NULL DEFAULT '-',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratjual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `harga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaljual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  `statusbayaran` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Cash',
  `nota` varchar(300) NOT NULL DEFAULT '-',
  `detail` varchar(100) NOT NULL DEFAULT '-',
  `uploadserver` int NOT NULL DEFAULT '0',
  `invois` varchar(150) NOT NULL DEFAULT '-',
  `hargamodal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `modal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `untung` decimal(11,2) NOT NULL DEFAULT '0.00',
  `finishproduct` int NOT NULL DEFAULT '0',
  `pid` varchar(150) NOT NULL DEFAULT '-',
  `jana` int NOT NULL DEFAULT '0',
  `nama` varchar(150) NOT NULL DEFAULT '-',
  `nofon` varchar(50) NOT NULL DEFAULT '-',
  `alamat` varchar(300) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jualscrapdefect`
--

DROP TABLE IF EXISTS `jualscrapdefect`;
CREATE TABLE IF NOT EXISTS `jualscrapdefect` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `karat` varchar(10) NOT NULL,
  `jualkepada` varchar(200) NOT NULL DEFAULT '-',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratjual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `harga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaljual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  `statusbayaran` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Cash',
  `nota` varchar(300) NOT NULL DEFAULT '-',
  `detail` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jualtrade`
--

DROP TABLE IF EXISTS `jualtrade`;
CREATE TABLE IF NOT EXISTS `jualtrade` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikhtrade` date DEFAULT NULL,
  `tarikhjual` date DEFAULT NULL,
  `karat` varchar(20) NOT NULL DEFAULT '-',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargajual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totaljual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jualkepada` varchar(100) NOT NULL DEFAULT '-',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keluartukang`
--

DROP TABLE IF EXISTS `keluartukang`;
CREATE TABLE IF NOT EXISTS `keluartukang` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kemaskiniharga`
--

DROP TABLE IF EXISTS `kemaskiniharga`;
CREATE TABLE IF NOT EXISTS `kemaskiniharga` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `penurunan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kenaikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  `idupdate` varchar(100) NOT NULL DEFAULT '0',
  `masa` varchar(100) NOT NULL DEFAULT '0',
  `tarikhnaik` date DEFAULT NULL,
  `tarikhturun` date DEFAULT NULL,
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komisyen`
--

DROP TABLE IF EXISTS `komisyen`;
CREATE TABLE IF NOT EXISTS `komisyen` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `noresit` varchar(150) NOT NULL DEFAULT '-',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `daftaroleh` varchar(20) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `status` varchar(50) NOT NULL DEFAULT 'Unpaid',
  `cawangan` varchar(100) NOT NULL DEFAULT '-',
  `transaction_code` varchar(150) NOT NULL DEFAULT '-',
  `dropship` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komisyen_cashier`
--

DROP TABLE IF EXISTS `komisyen_cashier`;
CREATE TABLE IF NOT EXISTS `komisyen_cashier` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `noresit` varchar(150) NOT NULL DEFAULT '-',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `daftaroleh` varchar(20) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `status` varchar(50) NOT NULL DEFAULT 'Unpaid',
  `cawangan` varchar(100) NOT NULL DEFAULT '-',
  `transaction_code` varchar(150) NOT NULL DEFAULT '-',
  `dummy_data` int NOT NULL DEFAULT '0',
  `bulan` varchar(50) NOT NULL DEFAULT '-',
  `tahun` varchar(50) NOT NULL DEFAULT '-',
  `jualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(11,3) NOT NULL DEFAULT '0.000',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `dari` date DEFAULT NULL,
  `hingga` date DEFAULT NULL,
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komisyen_dropship`
--

DROP TABLE IF EXISTS `komisyen_dropship`;
CREATE TABLE IF NOT EXISTS `komisyen_dropship` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) NOT NULL DEFAULT '-',
  `noresit` varchar(150) NOT NULL DEFAULT '-',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `daftaroleh` varchar(20) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `status` varchar(50) NOT NULL DEFAULT 'Unpaid',
  `cawangan` varchar(100) NOT NULL DEFAULT '-',
  `transaction_code` varchar(150) NOT NULL DEFAULT '-',
  `dummy_data` int NOT NULL DEFAULT '0',
  `bulan` varchar(50) NOT NULL DEFAULT '-',
  `tahun` varchar(50) NOT NULL DEFAULT '-',
  `baiki` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_tray`
--

DROP TABLE IF EXISTS `list_tray`;
CREATE TABLE IF NOT EXISTS `list_tray` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tray` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tarikh` date DEFAULT NULL,
  `masa` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `namatray` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `bil_tray` int NOT NULL DEFAULT '0',
  `displaytag` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`),
  UNIQUE KEY `tray` (`tray`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_tray`
--

INSERT INTO `list_tray` (`recno`, `tray`, `berat`, `tarikh`, `masa`, `namatray`, `bil_tray`, `displaytag`) VALUES
(1, 'Tray 1', '80.98', '2025-08-12', '1:35:54 PM', 'Tray 1 RL', 13, '1 RL'),
(2, 'Tray 2', '68.79', '2025-08-03', '5:10:30 PM', 'Tray 2 RL', 9, '2 RL'),
(3, 'Tray 3', '153.16', '2025-08-06', '12:01:47 PM', 'Tray 1 CINCIN', 48, 'Tray 1 CINCIN'),
(4, 'Tray 4', '26.35', NULL, '-', 'Tray 2 CINCIN', 44, 'Tray 2 CINCIN'),
(5, 'Tray 5', '111.95', '2025-07-31', '11:54:15 AM', 'Tray 1 RT', 21, '1 RT'),
(6, 'Tray 6', '161.20', '2025-08-12', '12:33:52 PM', 'Tray 2 RT', 20, '2 RT'),
(7, 'Tray 7', '330.16', '2025-08-06', '12:02:13 PM', 'Tray 3 RT', 26, '3 RT'),
(8, 'Tray 8', '341.35', '2025-07-29', '1:23:51 PM', 'Tray 4 RT', 22, '4 RT'),
(9, 'Tray 9', '74.57', '2025-08-03', '5:10:38 PM', 'Tray 5 (SL)', 40, '5 SUBANG & LOKET'),
(10, 'Tray 10', '93.66', '2025-08-04', '3:40:28 PM', 'Tray RT 6(B&GB)', 32, '6 (BANGLE)'),
(11, 'Tray 11', '0.00', '2025-08-04', '3:40:28 PM', 'Tray 11-SILVER', 85, 'CS'),
(12, 'Tray 12', '1.60', '2025-08-04', '3:40:28 PM', 'Tray 12', 16, '-'),
(13, 'Tray 13', '0.00', '2025-08-04', '3:40:28 PM', 'Tray 13', 0, '-'),
(14, 'Tray 14', '0.00', '2025-08-04', '3:40:28 PM', 'Tray 14', 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `marhun`
--

DROP TABLE IF EXISTS `marhun`;
CREATE TABLE IF NOT EXISTS `marhun` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `marhun` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL DEFAULT '0.00',
  `bil` int NOT NULL DEFAULT '0',
  `totalstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bil_sold` int NOT NULL DEFAULT '0',
  `totalstok_sold` decimal(11,2) NOT NULL DEFAULT '0.00',
  `24K` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marhun`
--

INSERT INTO `marhun` (`recno`, `marhun`, `keterangan`, `bil`, `totalstok`, `bil_sold`, `totalstok_sold`, `24K`) VALUES
(1, 'R/L', 'Rantai Leher', 20, '138.84', 1, '13.90', 0),
(2, 'G/T', 'Gelang Tangan', 0, '0.00', 0, '0.00', 0),
(3, 'C/N', 'Cincin', 92, '179.51', 9, '21.35', 0),
(4, 'LKT', 'Loket', 13, '27.52', 1, '3.19', 0),
(5, 'R/K', 'Rantai Kaki', 0, '0.00', 0, '0.00', 0),
(6, 'SB', 'Subang', 27, '47.05', 0, '0.00', 0),
(7, 'R/T', 'Rantai Tangan', 87, '940.27', 3, '28.87', 0),
(8, 'G/K', 'Gelang Kaki', 2, '4.39', 0, '0.00', 0),
(11, 'C/N PMT', 'Cincin Permata', 0, '0.00', 0, '0.00', 0),
(12, 'T/T', 'Tali Tangan', 0, '0.00', 0, '0.00', 0),
(13, 'CM', 'Charm', 0, '0.00', 0, '0.00', 0),
(14, 'WF', 'Wafer', 0, '0.00', 0, '0.00', 1),
(15, 'B/G', 'Bangle', 6, '56.16', 0, '0.00', 0),
(16, 'R/T KK', 'Rantai Tangan Kanak-Kanak', 0, '0.00', 0, '0.00', 0),
(17, 'G/T K', 'Gelang Tangan Kanak-Kanak', 0, '0.00', 0, '0.00', 0),
(18, 'G/K K', 'Gelang Kaki Kanak-Kanak', 0, '0.00', 0, '0.00', 0),
(19, 'R/L K', 'Rantai Leher Kanak-Kanak', 2, '10.93', 0, '0.00', 0),
(20, 'B/D', 'Bead', 0, '0.00', 0, '0.00', 0),
(21, 'SP', 'Spare Part', 0, '0.00', 0, '0.00', 0),
(22, 'S/C', 'Safety Chain', 0, '0.00', 0, '0.00', 0),
(23, 'GB', 'Gold Bar', 40, '30.60', 1, '1.00', 1),
(24, 'S/T', 'Stopper', 0, '0.00', 0, '0.00', 0),
(25, 'Lain2', 'Lain-Lain', 0, '0.00', 0, '0.00', 0),
(26, 'C/N L', 'Cincin Lelaki', 0, '0.00', 0, '0.00', 0),
(303, 'D/R', 'Dinar', 2, '8.50', 0, '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `marhunharian`
--

DROP TABLE IF EXISTS `marhunharian`;
CREATE TABLE IF NOT EXISTS `marhunharian` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `cawangan` varchar(150) NOT NULL DEFAULT '-',
  `marhun` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL DEFAULT '0.00',
  `totalstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `openingstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `closingstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bilopening` int NOT NULL DEFAULT '0',
  `bilclosing` int NOT NULL DEFAULT '0',
  `newstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bilnewstok` int NOT NULL DEFAULT '0',
  `deletestok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bildelete` int NOT NULL DEFAULT '0',
  `soldstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bilsold` int NOT NULL DEFAULT '0',
  `jana` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marhuntradein`
--

DROP TABLE IF EXISTS `marhuntradein`;
CREATE TABLE IF NOT EXISTS `marhuntradein` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noresit` varchar(100) NOT NULL DEFAULT '0',
  `marhun` varchar(100) NOT NULL DEFAULT '0',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mutu` varchar(50) NOT NULL DEFAULT '0',
  `karat` varchar(50) NOT NULL DEFAULT '0',
  `hargakarat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hargabelian` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nokpcust` varchar(100) NOT NULL DEFAULT '0',
  `idstaff` varchar(100) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'Belum Bayar',
  `cawangan` varchar(100) NOT NULL DEFAULT '0',
  `negeri` varchar(100) NOT NULL DEFAULT '0',
  `nota` varchar(200) NOT NULL DEFAULT '-',
  `statusdaftar` varchar(100) NOT NULL DEFAULT 'Belum Daftar',
  `split_tradein` decimal(11,2) NOT NULL DEFAULT '0.00',
  `split_buyback` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marhuntradein`
--

INSERT INTO `marhuntradein` (`recno`, `tarikh`, `noresit`, `marhun`, `berat`, `mutu`, `karat`, `hargakarat`, `hargabelian`, `nokpcust`, `idstaff`, `status`, `cawangan`, `negeri`, `nota`, `statusdaftar`, `split_tradein`, `split_buyback`) VALUES
(1, '2025-08-04', 'HM04082025-0004-TIEY', 'Gelang Tangan', '4.09', '916', '22.0K', '404.00', '1652.36', '960907035286', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(2, '2025-08-04', 'HM04082025-0005-TIEY', 'Subang', '2.80', '916', '22.0K', '400.00', '1120.00', '780506035252', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(3, '2025-08-04', 'HM04082025-0006-TIEY', 'Subang', '1.25', '750', '18.0K', '32.00', '40.00', '780506035252', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(4, '2025-08-04', 'HM2A0090', 'KERATAN', '0.46', '916', '22.0K', '397.00', '182.62', '920302035987', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'HM2A0090', 'Belum Daftar', '182.62', '0.00'),
(5, '2025-08-04', 'HM04082025-0007-TIEY', 'Gelang Tangan', '9.41', '916', '22.0K', '404.00', '3801.64', '571017035584', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(6, '2025-08-04', 'HM04082025-0008-TIEY', 'Subang', '0.38', '916', '22.0K', '404.00', '153.52', '880311295132', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(7, '2025-08-04', 'HM04082025-0009-TIEY', 'Wafer', '0.50', '999', '24.0Kb', '430.00', '215.00', '900516035559', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(9, '2025-08-04', 'HM2A0182', 'KERATAN', '0.06', '916', '22.0K', '404.00', '0.00', '920326035425', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'HM2A0182', 'Belum Daftar', '0.00', '0.00'),
(10, '2025-08-04', 'HM04082025-0011-TIEY', 'Cincin', '2.12', '916', '22.0K', '404.00', '856.48', '841201036226', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(11, '2025-08-05', 'HM05082025-0012-hanim', 'Rantai Kaki', '4.51', '916', '22.0K', '407.00', '1835.57', '940728035936', 'hanim', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(12, '2025-08-05', 'HM05082025-0013-hanim', 'Rantai Leher', '12.85', '916', '22.0K', '404.00', '5191.40', '861201295218', 'hanim', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(13, '2025-08-05', 'HM2A0239', 'KERATAN', '0.04', '916', '22.0K', '404.00', '16.16', '030402030948', 'hanim', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'HM2A0239', 'Belum Daftar', '16.16', '0.00'),
(14, '2025-08-06', 'HM2A0114', 'KERATAN', '0.69', '916', '22.0K', '407.00', '280.83', '850508036006', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'HM2A0114', 'Belum Daftar', '256.41', '0.00'),
(15, '2025-08-06', 'HM06082025-0014-TIEY', 'Cincin', '1.00', '916', '22.0K', '407.00', '407.00', '961214035878', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(16, '2025-08-06', 'HM06082025-0014-TIEY', 'Gelang Tangan', '2.12', '916', '22.0K', '407.00', '862.84', '961214035878', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(17, '2025-08-06', 'HM06082025-0014-TIEY', 'Rantai Tangan', '0.56', '916', '22.0K', '407.00', '227.92', '961214035878', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(18, '2025-08-07', 'HM07082025-0015-TIEY', 'Cincin', '1.02', '916', '22.0K', '409.00', '417.18', '620729035054', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(19, '2025-08-07', 'HM07082025-0016-TIEY', 'Rantai Tangan', '6.18', '916', '22.0K', '409.00', '2527.62', '620729035054', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(20, '2025-08-07', 'HM07082025-0018-TIEY', 'Lain-Lain', '2.77', '916', '22.0K', '409.00', '1132.93', '810506115222', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(21, '2025-08-07', 'HM07082025-0019-TIEY', 'Lain-Lain', '13.76', '916', '22.0K', '409.00', '5627.84', '001128030124', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(22, '2025-08-07', 'HM07082025-0020-TIEY', 'Subang', '1.42', '916', '22.0K', '409.00', '580.78', '610204035386', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(23, '2025-08-07', 'HM07082025-0020-TIEY', 'Subang', '0.17', '750', '18.0K', '32.00', '5.44', '610204035386', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(24, '2025-08-07', 'HM07082025-0021-TIEY', 'Lain-Lain', '2.25', '916', '22.0K', '409.00', '920.25', '070923030659', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(25, '2025-08-07', 'HM07082025-0023-TIEY', 'Rantai Leher', '11.41', '916', '22.0K', '409.00', '4666.69', '870308035664', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(26, '2025-08-09', 'HM11082025-0024-TIEY', 'Rantai Tangan', '10.26', '916', '22.0K', '412.00', '4227.12', '970825035820', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(27, '2025-08-09', 'HM11082025-0025-TIEY', 'Subang', '1.77', '916', '22.0K', '412.00', '729.24', '820429035470', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(28, '2025-08-09', 'HM11082025-0026-TIEY', 'Cincin', '2.71', '916', '22.0K', '412.00', '1116.52', '510307035364', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(29, '2025-08-09', 'HM11082025-0027-TIEY', 'Cincin', '5.69', '916', '22.0K', '412.00', '2344.28', '870821035016', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(30, '2025-08-09', 'HM11082025-0027-TIEY', 'Subang', '2.62', '916', '22.0K', '412.00', '1079.44', '870821035016', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(32, '2025-08-10', 'HM11082025-0028-TIEY', 'Rantai Tangan', '4.74', '916', '22.0K', '408.00', '1933.92', '000202080062', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(33, '2025-08-11', 'HM11082025-0030-TIEY', 'Lain-Lain', '0.54', '916', '22.0K', '412.00', '222.48', '990629035450', 'TIEY', 'Belum Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(34, '2025-08-10', 'HM11082025-0031-TIEY', 'Lain-Lain', '0.54', '916', '22.0K', '412.00', '222.48', '990629035450', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(35, '2025-08-10', 'HM11082025-0031-TIEY', 'Rantai Tangan', '2.63', '916', '22.0K', '412.00', '1083.56', '990629035450', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(36, '2025-08-11', 'HM11082025-0032-TIEY', 'Rantai Tangan', '7.42', '916', '22.0K', '415.00', '3079.30', '930502106034', 'TIEY', 'Belum Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(37, '2025-08-11', 'HM11082025-0033-TIEY', 'Rantai Tangan', '7.42', '916', '22.0K', '400.00', '2968.00', '930502106034', 'TIEY', 'Belum Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(39, '2025-08-10', 'HM11082025-0035-TIEY', 'Rantai Tangan', '7.42', '916', '22.0K', '400.00', '2968.00', '930502106034', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(40, '2025-08-10', 'HM11082025-0036-TIEY', 'Rantai Tangan', '6.29', '916', '22.0K', '411.00', '2585.19', '000202080062', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(41, '2025-08-11', 'HM11082025-0037-TIEY', 'Rantai Tangan', '2.92', '916', '22.0K', '408.00', '1191.36', '890722035502', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(42, '2025-08-11', 'HM11082025-0038-TIEY', 'Rantai Tangan', '23.74', '916', '22.0K', '408.00', '9685.92', '730427035304', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(43, '2025-08-11', 'HM11082025-0039-TIEY', 'Rantai Tangan', '4.74', '916', '22.0K', '408.00', '1933.92', '000202080062', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(44, '2025-08-11', 'HM11082025-0040-TIEY', 'Rantai Tangan', '6.58', '916', '22.0K', '408.00', '2684.64', '980801036166', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(45, '2025-08-12', 'HM12082025-0041-TIEY', 'Cincin', '0.90', '916', '22.0K', '406.00', '365.40', '960807035836', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(46, '2025-08-12', 'HM12082025-0042-TIEY', 'Rantai Tangan', '3.61', '916', '22.0K', '406.00', '1465.66', '770502036048', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(47, '2025-08-13', 'HM13082025-0043-TIEY', 'Subang', '2.52', '916', '22.0K', '404.00', '1018.08', '840607036360', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(48, '2025-08-13', 'HM13082025-0044-TIEY', 'Cincin', '1.85', '916', '22.0K', '403.00', '745.55', '710807035236', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(49, '2025-08-13', 'HM13082025-0045-TIEY', 'Cincin', '3.27', '916', '22.0K', '403.00', '1317.81', 'N02434404', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(50, '2025-08-13', 'HM2A0181', 'KERATAN', '0.06', '916', '22.0K', '403.00', '24.18', '980816035836', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'HM2A0181', 'Belum Daftar', '24.18', '0.00'),
(54, '2025-08-13', 'HM13082025-0047-TIEY', 'Lain-Lain', '8.50', '916', '22.0K', '403.00', '3425.50', '720607035708', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(55, '2025-08-13', 'HM13082025-0047-TIEY', 'Lain-Lain', '19.46', '750', '18.0K', '110.00', '2140.60', '720607035708', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(56, '2025-08-13', 'HM13082025-0047-TIEY', 'Subang', '3.73', '375', '9.0K', '25.00', '93.25', '720607035708', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00'),
(57, '2025-08-14', 'HM14082025-0048-TIEY', 'Rantai Tangan', '3.67', '916', '22.0K', '403.00', '1479.01', 'N 0419975', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', '', 'Belum Daftar', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mulatrade`
--

DROP TABLE IF EXISTS `mulatrade`;
CREATE TABLE IF NOT EXISTS `mulatrade` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikhstart` date DEFAULT NULL,
  `cawangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mulatrade`
--

INSERT INTO `mulatrade` (`recno`, `tarikhstart`, `cawangan`) VALUES
(20, '2024-01-04', 'ROYAL-SHAH ALAM'),
(21, '2025-07-28', 'HMPASIRTUMBOH');

-- --------------------------------------------------------

--
-- Table structure for table `noresit`
--

DROP TABLE IF EXISTS `noresit`;
CREATE TABLE IF NOT EXISTS `noresit` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noresit` varchar(200) NOT NULL DEFAULT '0.00',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(100) NOT NULL DEFAULT '-',
  `alamat` varchar(200) NOT NULL DEFAULT '-',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `nama` varchar(300) NOT NULL DEFAULT '-',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `kodanggota` varchar(100) NOT NULL DEFAULT '-',
  `idstaff` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `onlinereq`
--

DROP TABLE IF EXISTS `onlinereq`;
CREATE TABLE IF NOT EXISTS `onlinereq` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `onlineid` varchar(100) DEFAULT NULL,
  `statusreq` varchar(50) DEFAULT NULL,
  `hargaasal` decimal(11,2) DEFAULT NULL,
  `hargamohon` decimal(11,2) DEFAULT NULL,
  `totalberat` decimal(11,2) DEFAULT NULL,
  `noresit` varchar(200) DEFAULT NULL,
  `statusmohon` varchar(50) DEFAULT NULL,
  `staffid` varchar(150) DEFAULT NULL,
  `komenstaff` longtext,
  `komenpengurus` longtext,
  `cawangan` varchar(150) DEFAULT NULL,
  `negeri` varchar(150) DEFAULT NULL,
  `reqdetails` varchar(150) DEFAULT NULL,
  `idupdate` varchar(150) DEFAULT NULL,
  `totalbayaran` decimal(11,2) DEFAULT NULL,
  `kodcaw` varchar(50) NOT NULL DEFAULT 'MG',
  `alk` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

DROP TABLE IF EXISTS `parameter`;
CREATE TABLE IF NOT EXISTS `parameter` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `idstaf` varchar(40) NOT NULL DEFAULT '0',
  `nosiriemas` varchar(40) NOT NULL DEFAULT '0.00',
  `noresit` varchar(40) NOT NULL,
  `nosaham` varchar(40) NOT NULL DEFAULT '1',
  `nosimpanan` varchar(10) NOT NULL DEFAULT '0',
  `dividen` decimal(11,2) NOT NULL DEFAULT '0.00',
  `dividenjangka` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kemaskini` varchar(40) NOT NULL DEFAULT '40',
  `versi` varchar(50) NOT NULL DEFAULT '0',
  `kodbayaransimpanan` int NOT NULL DEFAULT '0',
  `kodbayaranplt` int NOT NULL DEFAULT '1',
  `kodansuran` int NOT NULL DEFAULT '0',
  `sirimula` varchar(20) NOT NULL DEFAULT '0',
  `siritrade` int NOT NULL DEFAULT '10',
  `nosiriemaspre` varchar(40) NOT NULL DEFAULT '0',
  `sirimulapre` varchar(40) NOT NULL DEFAULT 'PR',
  `nosiriwafer` varchar(40) NOT NULL DEFAULT '0',
  `sirionline` varchar(40) NOT NULL DEFAULT '0',
  `nosiriadd` varchar(40) NOT NULL DEFAULT '0',
  `sirikoperasi` varchar(40) NOT NULL DEFAULT '0',
  `bilcetaksijil` int NOT NULL DEFAULT '0',
  `bilresit` int NOT NULL DEFAULT '0',
  `bilbaucer` int NOT NULL DEFAULT '0',
  `nosiriemaspremz` varchar(40) NOT NULL DEFAULT '0',
  `noresitmz` varchar(40) NOT NULL DEFAULT '0',
  `nosiriemasnewmz` varchar(40) NOT NULL DEFAULT '0',
  `siritrademz` varchar(40) NOT NULL DEFAULT '1',
  `nosiriemasis` varchar(40) NOT NULL DEFAULT '1',
  `nosiribaikimz` varchar(100) NOT NULL DEFAULT '-',
  `noresitredeem` varchar(40) NOT NULL DEFAULT '1',
  `nosiriansuran` varchar(40) NOT NULL DEFAULT '0',
  `passmat` varchar(50) NOT NULL DEFAULT '-',
  `nosiriwaferonline` varchar(40) NOT NULL DEFAULT '0',
  `tarikhversimznew` date DEFAULT NULL,
  `nodo` int NOT NULL DEFAULT '0',
  `nodomz` int NOT NULL DEFAULT '0',
  `nobaucer` int NOT NULL DEFAULT '0',
  `noidkupon` int NOT NULL DEFAULT '0',
  `siri_invois` int NOT NULL DEFAULT '0',
  `pelarasan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nojualwafer` int NOT NULL DEFAULT '1',
  `tarikhversimz_old` date DEFAULT NULL,
  `cawangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `kodresit` varchar(50) NOT NULL DEFAULT '-',
  `comnew` decimal(11,2) NOT NULL DEFAULT '5.00',
  `compre` decimal(11,2) NOT NULL DEFAULT '2.00',
  `comans` decimal(11,2) NOT NULL DEFAULT '5.00',
  `point` decimal(11,2) NOT NULL DEFAULT '10.00',
  `akaun_sistem` varchar(20) NOT NULL DEFAULT 'Standard',
  `parameter_pts` int NOT NULL DEFAULT '0',
  `inventori_system` varchar(50) NOT NULL DEFAULT '-',
  `nosiri_invois` int NOT NULL DEFAULT '0',
  `peratus_cukai` decimal(11,2) NOT NULL DEFAULT '0.00',
  `permohonan_diskaun` decimal(11,2) NOT NULL DEFAULT '0.00',
  `k0` varchar(2) NOT NULL DEFAULT '-',
  `k1` varchar(2) NOT NULL DEFAULT '-',
  `k2` varchar(2) NOT NULL DEFAULT '-',
  `k3` varchar(2) NOT NULL DEFAULT '-',
  `k4` varchar(2) NOT NULL DEFAULT '-',
  `k5` varchar(2) NOT NULL DEFAULT '-',
  `k6` varchar(2) NOT NULL DEFAULT '-',
  `k7` varchar(2) NOT NULL DEFAULT '-',
  `k8` varchar(2) NOT NULL DEFAULT '-',
  `k9` varchar(2) NOT NULL DEFAULT '-',
  `kodnew` varchar(3) NOT NULL DEFAULT '-',
  `kodpre` varchar(3) NOT NULL DEFAULT '-',
  `kodeks` varchar(3) NOT NULL DEFAULT '-',
  `genap_trade` varchar(50) NOT NULL DEFAULT 'Ascending',
  `permohonan_trade` decimal(11,2) NOT NULL DEFAULT '0.00',
  `onlineapprovaltrade` varchar(50) NOT NULL DEFAULT 'Enabled',
  `ls_data` varchar(50) NOT NULL DEFAULT 'UNPAID',
  `bundarjualan` varchar(50) NOT NULL DEFAULT 'Disabled',
  `printertag` varchar(100) NOT NULL DEFAULT '-',
  `showupah` varchar(50) NOT NULL DEFAULT 'Show',
  `autoprint` varchar(50) NOT NULL DEFAULT 'Enabled',
  `biltray` int NOT NULL DEFAULT '0',
  `syarat1` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1. Pelanggan perlu mengesahkan barangan yang dibeli ini diterima dalam keadaan baik ',
  `syarat2` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '2. Barangan yang dijual tidak boleh dikembalikan untuk tunai',
  `syarat3` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '3. Apabila perlu, untuk tujuan keselamatan peralatan halus seperti skru, cangkuk, spring dan lain lain peralatan sepertinya mungkin diperbuat daripada emas berbeza mutu atau lain-lain bahan',
  `syarat4` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '4. Berkemungkinan ada ralat antara 0.01g - 0.02g berat barang kemas dari resit belian asal',
  `syarat5` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '-',
  `bank` varchar(100) DEFAULT '-',
  `noakaun` varchar(100) NOT NULL DEFAULT '-',
  `namaakaun` varchar(100) NOT NULL DEFAULT '-',
  `autotukartrade` varchar(50) NOT NULL DEFAULT 'Disabled',
  `timersystem` int NOT NULL DEFAULT '300',
  `comcashier` decimal(11,2) NOT NULL DEFAULT '0.50',
  `hargamks` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahzakat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `para_modaltag` varchar(50) NOT NULL DEFAULT 'Manual',
  `defaultkeratan` varchar(50) NOT NULL DEFAULT 'Tiada',
  `kodsup` varchar(50) NOT NULL DEFAULT 'Disabled',
  `digitupah` varchar(10) NOT NULL DEFAULT 'A',
  `riyalberat` varchar(15) NOT NULL DEFAULT 'Enabled',
  `saizresit` varchar(50) NOT NULL DEFAULT 'A4',
  `typetag` varchar(50) NOT NULL DEFAULT 'Type 1',
  `digitupahbelakang` varchar(10) NOT NULL DEFAULT '0',
  `domain` varchar(200) NOT NULL DEFAULT '-',
  `qrsize` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '5',
  `facebook` varchar(200) NOT NULL DEFAULT '-',
  `instagram` varchar(200) NOT NULL DEFAULT '-',
  `tiktok` varchar(200) NOT NULL DEFAULT '-',
  `telegram` varchar(200) NOT NULL DEFAULT '-',
  `showtradein` varchar(50) NOT NULL DEFAULT 'Disabled',
  `qrecommerce` int NOT NULL DEFAULT '1',
  `qrtelegram` int NOT NULL DEFAULT '1',
  `qrsizeresit` varchar(10) NOT NULL DEFAULT '5',
  `rec_invois` int NOT NULL DEFAULT '0',
  `rec_trade` int NOT NULL DEFAULT '0',
  `syarat1trade` varchar(150) NOT NULL DEFAULT '-',
  `syarat2trade` varchar(150) NOT NULL DEFAULT '-',
  `syarat3trade` varchar(150) NOT NULL DEFAULT '-',
  `syarat4trade` varchar(150) NOT NULL DEFAULT '-',
  `syarat5trade` varchar(150) NOT NULL DEFAULT '-',
  `einvoice_api` varchar(10) NOT NULL DEFAULT 'Disabled',
  `combased` varchar(30) NOT NULL DEFAULT '-',
  `update_kodcaw_trade` int NOT NULL DEFAULT '0',
  `update_kodcaw_jualan` int NOT NULL DEFAULT '0',
  `notransaksi` int NOT NULL DEFAULT '0',
  `modalupah` varchar(50) NOT NULL DEFAULT 'Show',
  `ubah_harga` varchar(50) NOT NULL DEFAULT 'Disabled',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`recno`, `idstaf`, `nosiriemas`, `noresit`, `nosaham`, `nosimpanan`, `dividen`, `dividenjangka`, `kemaskini`, `versi`, `kodbayaransimpanan`, `kodbayaranplt`, `kodansuran`, `sirimula`, `siritrade`, `nosiriemaspre`, `sirimulapre`, `nosiriwafer`, `sirionline`, `nosiriadd`, `sirikoperasi`, `bilcetaksijil`, `bilresit`, `bilbaucer`, `nosiriemaspremz`, `noresitmz`, `nosiriemasnewmz`, `siritrademz`, `nosiriemasis`, `nosiribaikimz`, `noresitredeem`, `nosiriansuran`, `passmat`, `nosiriwaferonline`, `tarikhversimznew`, `nodo`, `nodomz`, `nobaucer`, `noidkupon`, `siri_invois`, `pelarasan`, `nojualwafer`, `tarikhversimz_old`, `cawangan`, `kodresit`, `comnew`, `compre`, `comans`, `point`, `akaun_sistem`, `parameter_pts`, `inventori_system`, `nosiri_invois`, `peratus_cukai`, `permohonan_diskaun`, `k0`, `k1`, `k2`, `k3`, `k4`, `k5`, `k6`, `k7`, `k8`, `k9`, `kodnew`, `kodpre`, `kodeks`, `genap_trade`, `permohonan_trade`, `onlineapprovaltrade`, `ls_data`, `bundarjualan`, `printertag`, `showupah`, `autoprint`, `biltray`, `syarat1`, `syarat2`, `syarat3`, `syarat4`, `syarat5`, `bank`, `noakaun`, `namaakaun`, `autotukartrade`, `timersystem`, `comcashier`, `hargamks`, `jumlahzakat`, `para_modaltag`, `defaultkeratan`, `kodsup`, `digitupah`, `riyalberat`, `saizresit`, `typetag`, `digitupahbelakang`, `domain`, `qrsize`, `facebook`, `instagram`, `tiktok`, `telegram`, `showtradein`, `qrecommerce`, `qrtelegram`, `qrsizeresit`, `rec_invois`, `rec_trade`, `syarat1trade`, `syarat2trade`, `syarat3trade`, `syarat4trade`, `syarat5trade`, `einvoice_api`, `combased`, `update_kodcaw_trade`, `update_kodcaw_jualan`, `notransaksi`, `modalupah`, `ubah_harga`) VALUES
(2, '47', 'M', '2750', '0', '81', '12.00', '12.00', '1', 'Ver 4.6.4', 7, 50, 7361, 'C', 0, '556', 'P', '20340', '17229', '60368', '13101', 0, 154, 62, '40529', '139', '6791', '49', '8686', '1', '349', '1', 'MAT2021', '29827', '2025-08-04', 1752, 265, 12, 100, 507, '37168332.66', 1511, '2023-11-22', 'HMPASIRTUMBOH', 'HM', '5.00', '2.00', '5.00', '1.00', 'Standard', 0, 'Disable', 1107, '6.00', '60.00', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'G', 'P', 'E', 'Disabled', '10.00', 'Enabled', 'PAID', 'Disabled', 'AIS-9920 80x60mm', 'Show', 'Enabled', 10, '1. Pelanggan perlu mengesahkan barangan yang dibeli ini diterima dalam keadaan baik', '2. Barangan yang dijual tidak boleh dikembalikan untuk tunai', '3. Berkemungkinan ada ralat antara 0.01g - 0.02g berat barang kemas dari resit belian asal', '4. Apabila perlu, Untuk item seperti gelang bangle, subang, penyakut lobster, charm & beads pandora, skru, cangkuk, spring dan lain lain peralatan untuk tujuan keselamatan peralatan halus seperti sepertinya mungkin diperbuat daripada emas berbeza mutu atau lain-lain bahan', '\"Saya beli emas ini dengan harga yang tersebut tunai\"', 'MAYBANK', '553010662942', 'HM JEWELS', 'Disabled', 600, '0.80', '13563.00', '0.00', 'Invois', 'Tiada', 'Enabled', 'w8', 'Enabled', 'A5', 'Type 2', 'y9', '-', '1.5', 'HM JEWELS', 'hmjewels', 'hmjewelspasirtumboh_\n', 'HM JEWELS', 'Disabled', 3, 1, 'FIT', 317, 205, '1. Pelanggan perlu mengesahkan tunai yang diterima.', '2. Emas trade ini tidak boleh dikembalikan.', '3. Berkemungkinan ada ralat antara 0.01g - 0.02g berat barang kemas.', '4. Emas yang dibeli akan dileburkan selepas transaksi belian ini selesai.', '\"Saya jual emas ini dengan harga yang tersebut tunai\"', 'Enabled', 'Peratus Jualan', 1, 1, 36, 'Show', 'Disabled');

-- --------------------------------------------------------

--
-- Table structure for table `parameterbatch`
--

DROP TABLE IF EXISTS `parameterbatch`;
CREATE TABLE IF NOT EXISTS `parameterbatch` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `batch` int NOT NULL DEFAULT '0',
  `percentdari` decimal(11,2) NOT NULL DEFAULT '0.00',
  `percenthingga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameterbatch`
--

INSERT INTO `parameterbatch` (`recno`, `batch`, `percentdari`, `percenthingga`, `detail`) VALUES
(1, 1, '10.00', '11.00', '10% - 11%'),
(2, 2, '3.00', '7.00', '3% - 7%'),
(3, 3, '2.00', '5.00', '2% - 5%'),
(4, 4, '2.00', '3.00', '2% - 3%');

-- --------------------------------------------------------

--
-- Table structure for table `parameterupah`
--

DROP TABLE IF EXISTS `parameterupah`;
CREATE TABLE IF NOT EXISTS `parameterupah` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `beratdari` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berathingga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `peratus` decimal(11,2) NOT NULL DEFAULT '0.00',
  `keterangan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameterupah`
--

INSERT INTO `parameterupah` (`recno`, `beratdari`, `berathingga`, `peratus`, `keterangan`) VALUES
(1, '0.00', '5.00', '10.00', 'RANGE 1'),
(2, '5.00', '10.00', '12.00', 'RANGE 2'),
(3, '10.00', '20.00', '25.00', 'RANGE 3'),
(4, '20.00', '50.00', '35.00', 'RANGE 4'),
(5, '50.00', '200.00', '40.00', 'RANGE 5');

-- --------------------------------------------------------

--
-- Table structure for table `parameter_komisyen`
--

DROP TABLE IF EXISTS `parameter_komisyen`;
CREATE TABLE IF NOT EXISTS `parameter_komisyen` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `dari` decimal(11,2) NOT NULL DEFAULT '0.00',
  `hingga` decimal(11,2) NOT NULL DEFAULT '0.00',
  `peratus` decimal(11,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter_komisyen`
--

INSERT INTO `parameter_komisyen` (`recno`, `dari`, `hingga`, `peratus`) VALUES
(3, '1.00', '900000.00', '0.003'),
(4, '900001.00', '1300000.00', '0.004'),
(6, '1300000.00', '50000000.00', '0.005');

-- --------------------------------------------------------

--
-- Table structure for table `pendahuluanpetibesi`
--

DROP TABLE IF EXISTS `pendahuluanpetibesi`;
CREATE TABLE IF NOT EXISTS `pendahuluanpetibesi` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(150) NOT NULL DEFAULT '0',
  `pendahuluanpeti` decimal(11,2) NOT NULL DEFAULT '0.00',
  `serahanpeti` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(150) NOT NULL DEFAULT '-',
  `idstaff` varchar(200) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendahuluanpetibesi`
--

INSERT INTO `pendahuluanpetibesi` (`recno`, `tarikh`, `masa`, `pendahuluanpeti`, `serahanpeti`, `detail`, `idstaff`, `cawangan`, `negeri`) VALUES
(1, '2025-08-04', '12:29:25 PM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(2, '2025-08-04', '12:29:26 PM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(3, '2025-08-04', '12:29:26 PM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(4, '2025-08-04', '12:29:26 PM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(5, '2025-08-04', '12:29:26 PM', '9455.80', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(6, '2025-08-04', '12:29:26 PM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(7, '2025-08-04', '12:29:26 PM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(9, '2025-08-04', '12:39:20 PM', '17518.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(11, '2025-08-04', '12:40:36 PM', '0.00', '15000.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(12, '2025-08-05', '11:19:58 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(13, '2025-08-05', '11:19:58 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(14, '2025-08-05', '11:19:58 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(15, '2025-08-05', '11:19:58 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(16, '2025-08-05', '11:19:58 AM', '0.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(17, '2025-08-05', '11:19:58 AM', '4199.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(18, '2025-08-05', '11:19:58 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(24, '2025-08-05', '12:13:48 PM', '0.00', '9455.00', 'Pendahuluan Cashier', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(25, '2025-08-06', '10:11:30 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(26, '2025-08-06', '10:11:30 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(27, '2025-08-06', '10:11:30 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(28, '2025-08-06', '10:11:30 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(29, '2025-08-06', '10:11:30 AM', '2727.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(30, '2025-08-06', '10:11:30 AM', '3370.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(31, '2025-08-06', '10:11:30 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(32, '2025-08-06', '10:13:25 AM', '0.00', '4199.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(33, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(34, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(35, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(36, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(37, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(38, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(39, '2025-08-07', '10:08:36 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(40, '2025-08-07', '10:09:20 AM', '0.00', '6097.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(52, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Beli Trade In', 'ADMIN', 'HMPASIRTUMBOH', 'Kelantan'),
(53, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Jual Trade In', 'ADMIN', 'HMPASIRTUMBOH', 'Kelantan'),
(54, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'ADMIN', 'HMPASIRTUMBOH', 'Kelantan'),
(55, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Jual Defect', 'ADMIN', 'HMPASIRTUMBOH', 'Kelantan'),
(56, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(57, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(58, '2025-08-09', '10:38:25 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(62, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(63, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(64, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(65, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(66, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(67, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(68, '2025-08-10', '11:07:47 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(69, '2025-08-11', '10:45:32 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(70, '2025-08-11', '10:45:32 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(71, '2025-08-11', '10:45:32 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(72, '2025-08-11', '10:45:32 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(73, '2025-08-11', '10:45:33 AM', '523.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(74, '2025-08-11', '10:45:33 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(75, '2025-08-11', '10:45:33 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(76, '2025-08-07', '11:15:03 AM', '0.00', '2518.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(77, '2025-08-07', '11:17:06 AM', '2000.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(78, '2025-08-07', '11:17:29 AM', '5800.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(79, '2025-08-07', '11:18:05 AM', '0.00', '7800.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(80, '2025-08-07', '11:18:56 AM', '2070.00', '0.00', 'CLOSING', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(82, '2025-08-09', '11:21:28 AM', '0.00', '2070.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(83, '2025-08-09', '11:22:38 AM', '4227.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(84, '2025-08-09', '11:22:56 AM', '2344.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(85, '2025-08-09', '11:23:14 AM', '1079.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(86, '2025-08-09', '11:23:46 AM', '0.00', '4227.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(87, '2025-08-09', '11:24:03 AM', '0.00', '2344.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(88, '2025-08-09', '11:24:15 AM', '0.00', '1079.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(94, '2025-08-09', '12:17:55 PM', '250.00', '0.00', 'CLOSING', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(95, '2025-08-10', '12:19:53 PM', '2968.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(96, '2025-08-10', '12:20:15 PM', '3000.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(97, '2025-08-10', '12:20:31 PM', '1083.00', '0.00', 'Pendahuluan Dari HQ', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(98, '2025-08-10', '12:22:21 PM', '0.00', '250.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(99, '2025-08-10', '12:22:35 PM', '0.00', '2968.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(100, '2025-08-10', '12:22:46 PM', '0.00', '3000.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(101, '2025-08-10', '12:22:57 PM', '0.00', '1083.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(103, '2025-08-10', '1:08:25 PM', '0.00', '1700.00', 'BAYAR LOKET N', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(104, '2025-08-10', '1:09:12 PM', '2223.00', '0.00', 'CLOSING', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(105, '2025-08-11', '1:16:01 PM', '0.00', '523.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(106, '2025-08-12', '10:19:31 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(107, '2025-08-12', '10:19:31 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(108, '2025-08-12', '10:19:31 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(109, '2025-08-12', '10:19:31 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(110, '2025-08-12', '10:19:31 AM', '158.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(111, '2025-08-12', '10:19:31 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(112, '2025-08-12', '10:19:31 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(113, '2025-08-12', '11:20:10 AM', '0.00', '523.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(114, '2025-08-13', '11:12:36 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(115, '2025-08-13', '11:12:36 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(116, '2025-08-13', '11:12:36 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(117, '2025-08-13', '11:12:36 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(118, '2025-08-13', '11:12:37 AM', '836.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(119, '2025-08-13', '11:12:37 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(120, '2025-08-13', '11:12:38 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(121, '2025-08-13', '11:13:40 AM', '0.00', '158.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(122, '2025-08-14', '10:50:07 AM', '0.00', '0.00', 'Beli Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(123, '2025-08-14', '10:50:07 AM', '0.00', '0.00', 'Jual Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(124, '2025-08-14', '10:50:07 AM', '0.00', '0.00', 'Jual Scrap Trade In', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(125, '2025-08-14', '10:50:07 AM', '0.00', '0.00', 'Jual Defect', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan'),
(126, '2025-08-14', '10:50:08 AM', '0.00', '0.00', 'Serahan Akhir', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(127, '2025-08-14', '10:50:08 AM', '0.00', '0.00', 'Serahan Akhir', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(128, '2025-08-14', '10:50:08 AM', '0.00', '0.00', 'Serahan Akhir', 'CASHIER', 'HMPASIRTUMBOH', 'Kelantan'),
(129, '2025-08-14', '10:50:19 AM', '0.00', '836.00', 'Pendahuluan Cashier', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan');

-- --------------------------------------------------------

--
-- Table structure for table `pendapatan`
--

DROP TABLE IF EXISTS `pendapatan`;
CREATE TABLE IF NOT EXISTS `pendapatan` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `pilihan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `keterangan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

DROP TABLE IF EXISTS `pengeluaran`;
CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `recno` int NOT NULL,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(150) NOT NULL DEFAULT '-',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `nama_akaun` varchar(150) NOT NULL DEFAULT '-',
  `bank` varchar(150) NOT NULL DEFAULT '-',
  `noakaun` varchar(150) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tarikhbayar` date DEFAULT NULL,
  `masabayar` varchar(150) NOT NULL DEFAULT '-',
  `bayaroleh` varchar(150) NOT NULL DEFAULT '-',
  `detail` varchar(50) NOT NULL DEFAULT '-',
  `status` varchar(50) NOT NULL DEFAULT '-',
  `transaction_code` varchar(150) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE IF NOT EXISTS `pengguna` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `kodcaw` varchar(10) DEFAULT '0',
  `KodLaluannew` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `katalaluan` varchar(100) DEFAULT '0',
  `Taraf` varchar(15) DEFAULT '0',
  `Nama` varchar(100) DEFAULT '0',
  `KpBaru` varchar(12) DEFAULT '0',
  `PinjMax` decimal(5,2) DEFAULT '70.00',
  `Status` varchar(1) DEFAULT '0',
  `cawangan` varchar(100) NOT NULL DEFAULT '0',
  `negeri` varchar(50) NOT NULL DEFAULT '0',
  `khazanah` int NOT NULL DEFAULT '0',
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `idteller` int NOT NULL DEFAULT '0',
  `kaunter` int NOT NULL DEFAULT '0',
  `scanpass` varchar(50) NOT NULL DEFAULT '-',
  `katalaluanbaru` varchar(100) NOT NULL DEFAULT '123456',
  `alk` int NOT NULL DEFAULT '0',
  `akaunhq` int NOT NULL DEFAULT '0',
  `masalog` varchar(50) NOT NULL DEFAULT '-',
  `idtag` int NOT NULL DEFAULT '0',
  `nosiritag` varchar(1000) NOT NULL DEFAULT '0',
  `nofon` varchar(50) NOT NULL DEFAULT '-',
  `nosiritagwafer` int NOT NULL DEFAULT '0',
  `HQ` int NOT NULL DEFAULT '0',
  `kod_depan` varchar(100) NOT NULL DEFAULT '-',
  `nosiritagpre` int NOT NULL DEFAULT '0',
  `nosiritageks` int NOT NULL DEFAULT '0',
  `consolekey` varchar(20) NOT NULL DEFAULT '-',
  `gaji` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kwsp_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kwsp_pekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `socso_pekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `socso_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `eis_pekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `eis_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `noakaun` varchar(50) NOT NULL DEFAULT '-',
  `bank` varchar(50) NOT NULL DEFAULT '-',
  `maklumatpekerja` int NOT NULL DEFAULT '0',
  `elaun` decimal(11,2) NOT NULL DEFAULT '0.00',
  `lainlain` decimal(11,2) NOT NULL DEFAULT '0.00',
  `permissiondeposit` int NOT NULL DEFAULT '0',
  `approvaldeposit` int NOT NULL DEFAULT '0',
  `permissionansuran` int NOT NULL DEFAULT '0',
  `permissiontray` int NOT NULL DEFAULT '0',
  `idtag_nosiri` int NOT NULL DEFAULT '0',
  `permissiondaftaremas` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`recno`, `kodcaw`, `KodLaluannew`, `katalaluan`, `Taraf`, `Nama`, `KpBaru`, `PinjMax`, `Status`, `cawangan`, `negeri`, `khazanah`, `nokp`, `idteller`, `kaunter`, `scanpass`, `katalaluanbaru`, `alk`, `akaunhq`, `masalog`, `idtag`, `nosiritag`, `nofon`, `nosiritagwafer`, `HQ`, `kod_depan`, `nosiritagpre`, `nosiritageks`, `consolekey`, `gaji`, `kwsp_majikan`, `kwsp_pekerja`, `socso_pekerja`, `socso_majikan`, `eis_pekerja`, `eis_majikan`, `noakaun`, `bank`, `maklumatpekerja`, `elaun`, `lainlain`, `permissiondeposit`, `approvaldeposit`, `permissionansuran`, `permissiontray`, `idtag_nosiri`, `permissiondaftaremas`) VALUES
(2, '0', 'ADMIN', '123', 'A', 'ADMIN', '0', '70.00', '0', 'HMPASIRTUMBOH', 'Kelantan', 0, '0001', 0, 0, '-', '123456', 0, 0, '-', 0, '320', '0148279126', 0, 1, '-', 4, 0, '-', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '-', 0, '0.00', '0.00', 0, 0, 0, 0, 1, 0),
(343, '0', 'TIEY', 'tiey85', 'C', 'MARYANTI BINTI MUHAMAD', '0', '70.00', '0', 'HMPASIRTUMBOH', 'Kelantan', 0, '851205295048', 1, 1, '-', '123456', 0, 0, '-', 0, '0', '0139360068', 0, 0, '-', 0, 0, '-', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '-', 1, '0.00', '0.00', 0, 0, 0, 0, 0, 0),
(342, '0', 'hanim', 'hanim83', 'C', 'MAIZATUL HANIM BINTI MUHAMAD8', '0', '70.00', '0', 'HMPASIRTUMBOH', 'Kelantan', 0, '830923035838', 2, 1, '-', '123456', 0, 0, '-', 0, '0', '01117848875', 0, 0, '-', 0, 0, '-', '1700.00', '221.00', '187.00', '8.25', '28.85', '3.30', '3.30', '-', '-', 1, '0.00', '0.00', 0, 0, 0, 0, 0, 0),
(1, '0', 'hafiz4117', 'hafiz1994', 'A', 'MUHAMMAD HAFIZUDDIN BIN MUHAMAD', '0', '70.00', '0', 'HMPASIRTUMBOH', 'Kelantan', 0, '940303035615', 0, 0, '-', '123456', 0, 0, '-', 0, '346', '01117819389', 0, 1, '-', 0, 0, '-', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '-', 0, '0.00', '0.00', 0, 0, 0, 0, 2, 0),
(340, '0', 'CASHIER', '123', 'C', 'CASHIER', '0', '70.00', '0', 'HMPASIRTUMBOH', 'Kelantan', 0, '0004', 3, 1, '-', '123456', 0, 0, '-', 0, '0', '012345789', 0, 0, '-', 0, 0, '-', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-', '-', 0, '0.00', '0.00', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perbelanjaan`
--

DROP TABLE IF EXISTS `perbelanjaan`;
CREATE TABLE IF NOT EXISTS `perbelanjaan` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `pilihan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `keterangan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `jana` int NOT NULL DEFAULT '0',
  `cawangan` varchar(150) NOT NULL DEFAULT '-',
  `nokp` varchar(50) NOT NULL DEFAULT '-',
  `lhdn_document_status` varchar(150) NOT NULL DEFAULT '-',
  `tin` varchar(150) NOT NULL DEFAULT '-',
  `dateTimeValidated` varchar(150) NOT NULL DEFAULT '-',
  `lhdn_document_submissionUid` varchar(150) NOT NULL DEFAULT '-',
  `submissionUid` varchar(150) NOT NULL DEFAULT '-',
  `ItemClassificationCode` varchar(150) NOT NULL DEFAULT '-',
  `noresit` varchar(150) NOT NULL DEFAULT '-',
  `validate` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perbelanjaan`
--

INSERT INTO `perbelanjaan` (`recno`, `tarikh`, `masa`, `pilihan`, `keterangan`, `jumlah`, `idstaff`, `jana`, `cawangan`, `nokp`, `lhdn_document_status`, `tin`, `dateTimeValidated`, `lhdn_document_submissionUid`, `submissionUid`, `ItemClassificationCode`, `noresit`, `validate`) VALUES
(1, '2025-08-07', '6:22:55 PM', 'Lain Lain', 'BELI EMAS BURUK', '1498.00', 'hafiz4117', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(2, '2025-08-07', '11:43:32 AM', 'Lain Lain', 'Pendahuluan Cashier', '2000.00', 'ADMIN', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(3, '2025-08-07', '11:51:58 AM', 'Lain Lain', 'Pendahuluan Cashier', '5800.00', 'ADMIN', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(4, '2025-08-07', '12:02:21 PM', 'Lain Lain', 'Closing', '8248.00', 'ADMIN', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(5, '2025-08-09', '11:25:05 AM', 'Lain Lain', 'BAIKI', '25.00', 'hafiz4117', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(6, '2025-08-11', '1:07:59 PM', 'Lain Lain', 'BAYAR LOKET N', '1700.00', 'hafiz4117', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(7, '2025-08-10', '1:08:25 PM', 'Lain Lain', 'BAYAR LOKET N', '1700.00', 'hafiz4117', 0, 'HMPASIRTUMBOH', '-', '-', '-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `petibesi`
--

DROP TABLE IF EXISTS `petibesi`;
CREATE TABLE IF NOT EXISTS `petibesi` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `bakiawal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `keluar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `masuk` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `bakiakhir` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(200) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '0.00',
  `negeri` varchar(200) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petibesi`
--

INSERT INTO `petibesi` (`recno`, `tarikh`, `bakiawal`, `keluar`, `masuk`, `detail`, `bakiakhir`, `idstaff`, `cawangan`, `negeri`, `jana`) VALUES
(1, '2025-08-04', '0.00', '15000.00', '26973.80', '-', '11973.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(2, '2025-08-05', '11973.80', '9455.00', '4199.00', '-', '6717.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(3, '2025-08-06', '6717.80', '4199.00', '6097.00', '-', '8615.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(4, '2025-08-07', '8615.80', '16415.00', '9870.00', '-', '2070.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(5, '2025-08-09', '2070.80', '9720.00', '7900.00', '-', '250.80', 'ADMIN', 'HMPASIRTUMBOH', 'Kelantan', 0),
(6, '2025-08-10', '250.80', '9001.00', '9274.00', '-', '523.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(7, '2025-08-11', '523.80', '523.00', '523.00', '-', '523.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(8, '2025-08-12', '523.80', '523.00', '158.00', '-', '158.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(9, '2025-08-13', '158.80', '158.00', '836.00', '-', '836.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0),
(10, '2025-08-14', '836.80', '836.00', '0.00', '-', '0.80', 'hafiz4117', 'HMPASIRTUMBOH', 'Kelantan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prosestradein`
--

DROP TABLE IF EXISTS `prosestradein`;
CREATE TABLE IF NOT EXISTS `prosestradein` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `karat` varchar(20) NOT NULL DEFAULT '-',
  `mutu` decimal(11,1) NOT NULL DEFAULT '0.0',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratjual` decimal(11,2) NOT NULL DEFAULT '0.00',
  `beratbeli` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prosestradein`
--

INSERT INTO `prosestradein` (`recno`, `tarikh`, `karat`, `mutu`, `berat`, `beratjual`, `beratbeli`, `baki`, `cawangan`, `negeri`) VALUES
(1, '2025-08-14', '22.0K', '916.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(2, '2025-08-14', '21.0K', '900.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(3, '2025-08-14', '23.0K', '950.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(4, '2025-08-14', '20.0K', '835.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(5, '2025-08-14', '18.0K', '750.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(6, '2025-08-14', '24.0Kb', '999.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(7, '2025-08-14', '14.0K', '585.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(8, '2025-08-14', '9.0K', '375.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(9, '2025-08-14', '24.0K', '999.9', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(10, '2025-08-13', '22.0K', '916.0', '16.20', '0.00', '0.00', '16.20', 'HMPASIRTUMBOH', 'Kelantan'),
(11, '2025-08-13', '21.0K', '900.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(12, '2025-08-13', '23.0K', '950.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(13, '2025-08-13', '20.0K', '835.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(14, '2025-08-13', '18.0K', '750.0', '19.46', '0.00', '0.00', '19.46', 'HMPASIRTUMBOH', 'Kelantan'),
(15, '2025-08-13', '24.0Kb', '999.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(16, '2025-08-13', '14.0K', '585.0', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan'),
(17, '2025-08-13', '9.0K', '375.0', '3.73', '0.00', '0.00', '3.73', 'HMPASIRTUMBOH', 'Kelantan'),
(18, '2025-08-13', '24.0K', '999.9', '0.00', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
CREATE TABLE IF NOT EXISTS `purchaseorder` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `no_purchase` varchar(200) NOT NULL DEFAULT '-',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ralatsp`
--

DROP TABLE IF EXISTS `ralatsp`;
CREATE TABLE IF NOT EXISTS `ralatsp` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `karat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `cawangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `tag` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `idstaff` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rankbulanan`
--

DROP TABLE IF EXISTS `rankbulanan`;
CREATE TABLE IF NOT EXISTS `rankbulanan` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(150) NOT NULL DEFAULT '-',
  `nokp` varchar(50) NOT NULL DEFAULT '-',
  `nofon` varchar(50) NOT NULL DEFAULT '-',
  `email` varchar(150) NOT NULL DEFAULT '-',
  `bulan` varchar(50) NOT NULL DEFAULT '-',
  `tahun` varchar(50) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekodbayarcredit`
--

DROP TABLE IF EXISTS `rekodbayarcredit`;
CREATE TABLE IF NOT EXISTS `rekodbayarcredit` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(200) NOT NULL DEFAULT '-',
  `supplier` varchar(200) NOT NULL DEFAULT '-',
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `beratbayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `finishpaid` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekodbayar_kom`
--

DROP TABLE IF EXISTS `rekodbayar_kom`;
CREATE TABLE IF NOT EXISTS `rekodbayar_kom` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `t_bayar` date DEFAULT NULL,
  `detail` varchar(150) NOT NULL DEFAULT '-',
  `idstaff` varchar(50) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekodciriemas`
--

DROP TABLE IF EXISTS `rekodciriemas`;
CREATE TABLE IF NOT EXISTS `rekodciriemas` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `ciri` varchar(50) NOT NULL DEFAULT '-',
  `datatype` varchar(50) DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekodciriemas`
--

INSERT INTO `rekodciriemas` (`recno`, `ciri`, `datatype`) VALUES
(31, 'occasion', 'List Box'),
(30, 'gender', 'List Box'),
(29, 'saiz', 'Number'),
(28, 'lebar', 'Number'),
(27, 'panjang', 'Number'),
(26, 'berat', 'Number'),
(33, 'gemstone', 'List Box'),
(34, 'Theme', 'List Box'),
(35, 'Huruf', 'List Box');

-- --------------------------------------------------------

--
-- Table structure for table `rekodhapusresit`
--

DROP TABLE IF EXISTS `rekodhapusresit`;
CREATE TABLE IF NOT EXISTS `rekodhapusresit` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `statuscustomer` varchar(50) DEFAULT NULL,
  `nokpcust` varchar(50) DEFAULT NULL,
  `namacust` longtext,
  `daftaroleh` varchar(50) DEFAULT NULL,
  `namaplatinum` longtext,
  `noresit` varchar(100) DEFAULT NULL,
  `berat` decimal(11,2) DEFAULT NULL,
  `totalbayaran` decimal(11,2) DEFAULT NULL,
  `jumlahkomisyen` decimal(11,2) DEFAULT NULL,
  `komenstaff` varchar(200) DEFAULT NULL,
  `idstaff` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cawangan` varchar(200) DEFAULT NULL,
  `negeri` varchar(200) DEFAULT NULL,
  `semak` varchar(50) NOT NULL DEFAULT 'Not Verified',
  `semakoleh` varchar(100) NOT NULL DEFAULT '-',
  `tarikhsemak` date DEFAULT NULL,
  `status_check` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekodhapusresit`
--

INSERT INTO `rekodhapusresit` (`recno`, `tarikh`, `statuscustomer`, `nokpcust`, `namacust`, `daftaroleh`, `namaplatinum`, `noresit`, `berat`, `totalbayaran`, `jumlahkomisyen`, `komenstaff`, `idstaff`, `status`, `cawangan`, `negeri`, `semak`, `semakoleh`, `tarikhsemak`, `status_check`) VALUES
(1, '2025-08-04', 'Customer', '900516035559', 'MUHAMAD AZRULNASHRUDDIN BIN JISAMANI ', NULL, NULL, 'HM04082025-0010-TIEY', '0.50', '0.00', NULL, '', 'TIEY', 'Hapus Trade In', 'HMPASIRTUMBOH', 'Kelantan', 'Not Verified', '-', NULL, 1),
(2, '2025-08-05', '0', '0', '0', '0', '0', '81:61/HM0508202512473-0080-hanim', '0.00', '0.00', '0.00', '-', 'hafiz4117', 'Hapus Resit', 'HMPASIRTUMBOH', 'Kelantan', 'Not Verified', '-', NULL, 1),
(3, '2025-08-11', 'Customer', '000202080062', 'SITI ZULAIKHA BINTI JOHARI', NULL, NULL, 'HM11082025-0028-TIEY', '4.74', '0.00', NULL, '', 'TIEY', 'Hapus Trade In', 'HMPASIRTUMBOH', 'Kelantan', 'Not Verified', '-', NULL, 1),
(4, '2025-08-13', 'Customer', '720607035708', 'HASMAH BINTI ISMAIL', NULL, NULL, 'HM13082025-0046-TIEY', '31.69', '0.00', NULL, '', 'TIEY', 'Hapus Trade In', 'HMPASIRTUMBOH', 'Kelantan', 'Not Verified', '-', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rekodpelarasan`
--

DROP TABLE IF EXISTS `rekodpelarasan`;
CREATE TABLE IF NOT EXISTS `rekodpelarasan` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `bakiasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `pelarasan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bakibaru` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(100) NOT NULL,
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekodtradein`
--

DROP TABLE IF EXISTS `rekodtradein`;
CREATE TABLE IF NOT EXISTS `rekodtradein` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noresit` varchar(100) NOT NULL DEFAULT '0',
  `totalberat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalbayaran` decimal(11,2) NOT NULL DEFAULT '0.00',
  `namacust` varchar(100) NOT NULL DEFAULT '0',
  `nokpcust` varchar(100) NOT NULL DEFAULT '0',
  `nofoncust` varchar(50) NOT NULL DEFAULT '0',
  `namapl` varchar(100) NOT NULL DEFAULT '0',
  `nokppl` varchar(100) NOT NULL DEFAULT '0',
  `idstaff` varchar(100) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'Belum Bayar',
  `cawangan` varchar(100) NOT NULL DEFAULT '0',
  `negeri` varchar(100) NOT NULL DEFAULT '0',
  `datatrade` varchar(50) NOT NULL DEFAULT '0',
  `jumlahtrade` decimal(11,2) NOT NULL DEFAULT '0.00',
  `statuspelanggan` varchar(100) NOT NULL DEFAULT '-',
  `jenisbayaran` varchar(50) NOT NULL DEFAULT 'TUNAI',
  `bank` varchar(100) NOT NULL DEFAULT '-',
  `noakaun` varchar(200) NOT NULL DEFAULT '-',
  `insertserver` int NOT NULL DEFAULT '0',
  `usepv` int NOT NULL DEFAULT '0',
  `adjust_trade` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status_check` int NOT NULL DEFAULT '0',
  `pbaki` varchar(50) NOT NULL DEFAULT '-',
  `bayarantunai` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayaranonline` decimal(11,2) NOT NULL DEFAULT '0.00',
  `noresitpv` varchar(150) NOT NULL DEFAULT '-',
  `masa` varchar(150) NOT NULL DEFAULT '-',
  `split_tradein` decimal(11,2) NOT NULL DEFAULT '0.00',
  `split_buyback` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '1',
  `keratan` int NOT NULL DEFAULT '0',
  `detailakaun` varchar(150) NOT NULL DEFAULT '-',
  `noinvois` varchar(200) NOT NULL DEFAULT '-',
  `validate` varchar(300) NOT NULL DEFAULT '-',
  `overallStatus` varchar(150) NOT NULL DEFAULT '-',
  `dateTimeValidated` varchar(150) NOT NULL DEFAULT '-',
  `lhdn_document_submissionUid` varchar(150) NOT NULL DEFAULT '-',
  `no_consolidated` varchar(150) NOT NULL DEFAULT '-',
  `ItemClassificationCode` varchar(150) NOT NULL DEFAULT '-',
  `submissionUid` varchar(200) NOT NULL DEFAULT '-',
  `noinvois_backup` varchar(150) NOT NULL DEFAULT '-',
  `tin` varchar(100) NOT NULL DEFAULT '-',
  `lhdn_document_status` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekodtradein`
--

INSERT INTO `rekodtradein` (`recno`, `tarikh`, `noresit`, `totalberat`, `totalbayaran`, `namacust`, `nokpcust`, `nofoncust`, `namapl`, `nokppl`, `idstaff`, `status`, `cawangan`, `negeri`, `datatrade`, `jumlahtrade`, `statuspelanggan`, `jenisbayaran`, `bank`, `noakaun`, `insertserver`, `usepv`, `adjust_trade`, `status_check`, `pbaki`, `bayarantunai`, `bayaranonline`, `noresitpv`, `masa`, `split_tradein`, `split_buyback`, `jana`, `keratan`, `detailakaun`, `noinvois`, `validate`, `overallStatus`, `dateTimeValidated`, `lhdn_document_submissionUid`, `no_consolidated`, `ItemClassificationCode`, `submissionUid`, `noinvois_backup`, `tin`, `lhdn_document_status`) VALUES
(1, '2025-08-04', 'HM04082025-0004-TIEY', '4.09', '1652.36', 'NORSYAHIRA BINTI JUSOH', '960907035286', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1650.00', '-', 'TUNAI', '-', '-', 1, 0, '-2.36', 0, '-', '1650.00', '0.00', '-', '1:01:34 PM', '0.00', '0.00', 0, 0, '-', 'R0168', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(2, '2025-08-04', 'HM04082025-0005-TIEY', '2.80', '1120.00', 'NORHASLINA BINTI HUSSIN', '780506035252', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1120.00', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '1120.00', '0.00', '-', '1:10:51 PM', '0.00', '0.00', 0, 0, '-', 'R0169', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(3, '2025-08-04', 'HM04082025-0006-TIEY', '1.25', '40.00', 'NORHASLINA BINTI HUSSIN', '780506035252', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '40.00', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '40.00', '0.00', '-', '1:14:59 PM', '0.00', '0.00', 0, 0, '-', 'R0170', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(4, '2025-08-04', 'HM2A0090', '0.46', '182.62', 'SYASYA', '920302035987', '0', '-', '-', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Buy Back', '182.62', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '0.00', '0.00', '-', '-', '182.62', '0.00', 0, 1, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(5, '2025-08-04', 'HM04082025-0007-TIEY', '9.41', '3801.64', 'KHADIJAH BINTI MAMAT', '571017035584', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '3801.64', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '3801.64', '0.00', '-', '1:28:06 PM', '0.00', '0.00', 0, 0, '-', 'R0171', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(6, '2025-08-04', 'HM04082025-0008-TIEY', '0.38', '153.52', 'NUR IMANINA BINTI SUKARDIR', '880311295132', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '153.52', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '153.52', '0.00', '-', '1:44:42 PM', '0.00', '0.00', 0, 0, '-', 'R0172', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(7, '2025-08-04', 'HM04082025-0009-TIEY', '0.50', '215.00', 'MUHAMAD AZRULNASHRUDDIN BIN JISAMANI ', '900516035559', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '215.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '0.00', 0, '-', '0.00', '215.00', '-', '1:54:46 PM', '0.00', '0.00', 0, 0, '-', 'R0173', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(9, '2025-08-04', 'HM2A0182', '0.06', '0.00', 'MAZWAN FIRDAUS BIN MUHAMAD', '920326035425', '0', '-', '-', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Keratan', '0.00', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '0.00', '0.00', '-', '-', '0.00', '0.00', 0, 1, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(10, '2025-08-04', 'HM04082025-0011-TIEY', '2.12', '856.48', 'ROHANI BINTI JUSOH', '841201036226', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '856.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.48', 0, '-', '856.00', '0.00', '-', '3:47:50 PM', '0.00', '0.00', 0, 0, '-', 'R0174', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(11, '2025-08-05', 'HM05082025-0012-hanim', '4.51', '1835.57', 'SITI NURSAADAH BINTI ROSLY MOHAMMED', '940728035936', '0', '', '', 'hanim', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1835.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.57', 0, '-', '1835.00', '0.00', '-', '11:36:23 AM', '0.00', '0.00', 0, 0, '-', 'R0175', '-', '-', '-', '-', '-', '-', '-', '-', 'EI00000000010', '-'),
(12, '2025-08-05', 'HM05082025-0013-hanim', '12.85', '5191.40', 'HARDIANA BINTI HUSAIN', '861201295218', '0', '', '', 'hanim', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '5191.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.40', 0, '-', '5191.00', '0.00', '-', '3:20:26 PM', '0.00', '0.00', 0, 0, '-', 'R0176', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(13, '2025-08-05', 'HM2A0239', '0.04', '16.16', 'NOR SUHAINI BINTI MAMAT', '030402030948', '0', '-', '-', 'hanim', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Buy Back', '16.16', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '0.00', '0.00', '-', '-', '16.16', '0.00', 0, 1, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(14, '2025-08-06', 'HM2A0114', '0.69', '280.83', 'NORAINI HAZIRA BINTI CHE SOH', '850508036006', '0', '-', '-', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Buy Back', '280.83', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '0.00', '0.00', '-', '-', '256.41', '0.00', 0, 1, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(15, '2025-08-06', 'HM06082025-0014-TIEY', '3.68', '1497.76', 'NOORFATIN FATONAH BINTI MOHD NOOR', '961214035878', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1497.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.76', 0, '-', '1497.00', '0.00', '-', '', '0.00', '0.00', 0, 0, '-', 'R0177', '-', '-', '-', '-', '-', '-', '-', '-', 'EI00000000010', '-'),
(16, '2025-08-07', 'HM07082025-0015-TIEY', '1.02', '417.18', 'NORAINI BINTI DAUD', '620729035054', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '417.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.18', 0, '-', '417.00', '0.00', '-', '12:16:55 PM', '0.00', '0.00', 1, 0, '-', 'R0178', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(17, '2025-08-07', 'HM07082025-0016-TIEY', '6.18', '2527.62', 'NORAINI BINTI DAUD', '620729035054', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '2527.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.62', 0, '-', '2527.00', '0.00', '-', '12:46:27 PM', '0.00', '0.00', 1, 0, '-', 'R0179', '-', '-', '-', '-', '-', '-', '-', '-', 'EI00000000010', '-'),
(18, '2025-08-07', 'HM07082025-0018-TIEY', '2.77', '1132.93', 'ROSNANI BINTI SALLEH', '810506115222', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1132.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.93', 0, '-', '1132.00', '0.00', '-', '2:27:07 PM', '0.00', '0.00', 1, 0, '-', 'R0180', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(19, '2025-08-07', 'HM07082025-0019-TIEY', '13.76', '5627.84', 'NURUL HIDAYAH BINTI AFANDI', '001128030124', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '5627.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.84', 0, '-', '5627.00', '0.00', '-', '3:53:54 PM', '0.00', '0.00', 1, 0, '-', 'R0181', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(20, '2025-08-07', 'HM07082025-0020-TIEY', '1.59', '586.22', 'REHANI BINTI SULAIMAN', '610204035386', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '586.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.22', 0, '-', '586.00', '0.00', '-', '', '0.00', '0.00', 1, 0, '-', 'R0182', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(21, '2025-08-07', 'HM07082025-0021-TIEY', '2.25', '920.25', 'MOHAMAD ADAM MUQRIEZ BIN ANUA', '070923030659', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '920.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.25', 0, '-', '920.00', '0.00', '-', '4:24:32 PM', '0.00', '0.00', 1, 0, '-', 'R0183', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(22, '2025-08-07', 'HM07082025-0023-TIEY', '11.41', '4666.69', 'SITI FILZAH BINTI AB AZIZ', '870308035664', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '4666.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.69', 0, '-', '4666.00', '0.00', '-', '5:47:56 PM', '0.00', '0.00', 1, 0, '-', 'R0184', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(23, '2025-08-09', 'HM11082025-0024-TIEY', '10.26', '4227.12', 'NOR ATHIRAH BINTI RAZALI', '970825035820', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '4227.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.12', 0, '-', '4227.00', '0.00', '-', '12:03:22 PM', '0.00', '0.00', 1, 0, '-', 'R0185', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(24, '2025-08-09', 'HM11082025-0025-TIEY', '1.77', '729.24', 'SURIANI BINTI MAHMOD', '820429035470', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '729.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.24', 0, '-', '729.00', '0.00', '-', '12:05:54 PM', '0.00', '0.00', 1, 0, '-', 'R0186', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(25, '2025-08-09', 'HM11082025-0026-TIEY', '2.71', '1116.52', 'SITI FATIMAH BINTI ISMAIL', '510307035364', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1116.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.52', 0, '-', '1116.00', '0.00', '-', '12:07:55 PM', '0.00', '0.00', 1, 0, '-', 'R0187', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(26, '2025-08-09', 'HM11082025-0027-TIEY', '8.31', '3423.72', 'NIK ERNISUZANA BINTI ABDULLAH', '870821035016', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '3423.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.72', 0, '-', '3423.00', '0.00', '-', '', '0.00', '0.00', 1, 0, '-', 'R0188', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(29, '2025-08-10', 'HM11082025-0031-TIEY', '3.17', '1306.04', 'NURHIDAYANIS BINTI EZAINI', '990629035450', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1305.00', '-', 'TUNAI', '-', '-', 1, 0, '-1.04', 0, '-', '1305.00', '0.00', '-', '', '0.00', '0.00', 1, 0, '-', 'R0190', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(31, '2025-08-10', 'HM11082025-0035-TIEY', '7.42', '2968.00', 'WAN NORATIQAH HANUM BINTI W.M.MOKHTAR', '930502106034', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '2968.00', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '2968.00', '0.00', '-', '12:43:32 PM', '0.00', '0.00', 1, 0, '-', 'R0192', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(32, '2025-08-10', 'HM11082025-0036-TIEY', '6.29', '2585.19', 'SITI ZULAIKHA BINTI JOHARI', '000202080062', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '2580.00', '-', 'TUNAI', '-', '-', 1, 0, '-5.19', 0, '-', '2580.00', '0.00', '-', '12:44:53 PM', '0.00', '0.00', 1, 0, '-', 'R0193', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(33, '2025-08-11', 'HM11082025-0037-TIEY', '2.92', '1191.36', 'NURZETY EMIZA BINTI MOHD NOOR', '890722035502', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1191.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '-0.36', 0, '-', '0.00', '1191.00', '-', '12:48:33 PM', '0.00', '0.00', 1, 0, '-', 'R0194', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(34, '2025-08-11', 'HM11082025-0038-TIEY', '23.74', '9685.92', 'WAN ZALEHA BINTI W.M. ZAIN', '730427035304', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '9685.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '-0.92', 0, '-', '0.00', '9685.00', '-', '12:54:17 PM', '0.00', '0.00', 1, 0, '-', 'R0195', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(35, '2025-08-11', 'HM11082025-0039-TIEY', '4.74', '1933.92', 'SITI ZULAIKHA BINTI JOHARI', '000202080062', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1933.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '-0.92', 0, '-', '0.00', '1933.00', '-', '1:12:56 PM', '0.00', '0.00', 1, 0, '-', 'R0197', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(36, '2025-08-11', 'HM11082025-0040-TIEY', '6.58', '2684.64', 'FARAH NABILA BINTI ISMAIL@ABDUL RAOF', '980801036166', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '2684.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '-0.64', 0, '-', '0.00', '2684.00', '-', '4:18:26 PM', '0.00', '0.00', 1, 0, '-', 'R0198', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(37, '2025-08-12', 'HM12082025-0041-TIEY', '0.90', '365.40', 'SURI BAIDURI AYU BINTI MOHD YATIM PUTRA', '960807035836', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '365.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.40', 0, '-', '365.00', '0.00', '-', '11:54:31 AM', '0.00', '0.00', 1, 0, '-', 'R0199', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(38, '2025-08-12', 'HM12082025-0042-TIEY', '3.61', '1465.66', 'NORMIRA BINTI ABDULLAH PAKRI', '770502036048', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1465.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '-0.66', 0, '-', '0.00', '1465.00', '-', '5:25:30 PM', '0.00', '0.00', 1, 0, '-', 'R0200', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(39, '2025-08-13', 'HM13082025-0043-TIEY', '2.52', '1018.08', 'HAFSAH BINTI OTHMAN', '840607036360', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1018.00', '-', 'TUNAI', 'MAYBANK', '553010662942', 1, 0, '-0.08', 0, '-', '0.00', '1018.00', '-', '11:32:53 AM', '0.00', '0.00', 1, 0, '-', 'R0201', '', '-', '', '', '-', '-', '', '-', 'IG25791298030', 'Submitted'),
(40, '2025-08-13', 'HM13082025-0044-TIEY', '1.85', '745.55', 'ROSLIDA BINTI OSMAN', '710807035236', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '745.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.55', 0, '-', '745.00', '0.00', '-', '1:37:30 PM', '0.00', '0.00', 1, 0, '-', 'R0202', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(41, '2025-08-13', 'HM13082025-0045-TIEY', '3.27', '1317.81', 'ARY', 'N02434404', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1317.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.81', 0, '-', '1317.00', '0.00', '-', '2:07:49 PM', '0.00', '0.00', 1, 0, '-', 'R0203', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted'),
(42, '2025-08-13', 'HM2A0181', '0.06', '24.18', 'NUR IRDAWATIE BINTI NAZREE', '980816035836', '0', '-', '-', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Buy Back', '24.18', '-', 'TUNAI', '-', '-', 1, 0, '0.00', 0, '-', '0.00', '0.00', '-', '-', '24.18', '0.00', 1, 1, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-'),
(44, '2025-08-13', 'HM13082025-0047-TIEY', '31.69', '5659.35', 'HASMAH BINTI ISMAIL', '720607035708', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Trade In', '5659.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.35', 0, '-', '0.00', '0.00', '81:61/HM1308202525643-0133-TIEY', '', '0.00', '0.00', 1, 0, '-', 'R0204', '', '-', '', '', '-', '-', '', '-', 'IG11471071061', 'Submitted'),
(45, '2025-08-14', 'HM14082025-0048-TIEY', '3.67', '1479.01', 'CHHOEUY LEAP', 'N 0419975', '0', '', '', 'TIEY', 'Telah Bayar', 'HMPASIRTUMBOH', 'Kelantan', 'Cash', '1479.00', '-', 'TUNAI', '-', '-', 1, 0, '-0.01', 0, '-', '1479.00', '0.00', '-', '11:31:35 AM', '0.00', '0.00', 1, 0, '-', 'R0205', '', '-', '', '', '-', '-', '', '-', 'EI00000000010', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `rekodubahmodal`
--

DROP TABLE IF EXISTS `rekodubahmodal`;
CREATE TABLE IF NOT EXISTS `rekodubahmodal` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `noinvois` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `hargamodal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaf` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekod_bayar_ansuran`
--

DROP TABLE IF EXISTS `rekod_bayar_ansuran`;
CREATE TABLE IF NOT EXISTS `rekod_bayar_ansuran` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `nokp` varchar(20) NOT NULL,
  `bakiansuranasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahbayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bakiansuran` decimal(11,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(200) NOT NULL DEFAULT 'No Remark',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekod_bayar_ansuran`
--

INSERT INTO `rekod_bayar_ansuran` (`recno`, `tarikh`, `nokp`, `bakiansuranasal`, `jumlahbayar`, `bakiansuran`, `remark`) VALUES
(3, '2025-05-25', '911210035411', '7600.00', '600.00', '7000.00', 'BAYARAN 2'),
(4, '2025-05-25', '911210035411', '7000.00', '300.00', '6700.00', 'BAYARAN 3'),
(7, '2025-06-01', '911210035197', '140.00', '40.00', '100.00', 'BAYARAN 1');

-- --------------------------------------------------------

--
-- Table structure for table `rekod_stock_take`
--

DROP TABLE IF EXISTS `rekod_stock_take`;
CREATE TABLE IF NOT EXISTS `rekod_stock_take` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `bil_inventori` int NOT NULL DEFAULT '0',
  `bil_scan_fizikal` int NOT NULL DEFAULT '0',
  `rekod_hilang` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekod_stock_take`
--

INSERT INTO `rekod_stock_take` (`recno`, `tarikh`, `bil_inventori`, `bil_scan_fizikal`, `rekod_hilang`) VALUES
(1, '2025-06-30', 6, 3, 3),
(2, '2025-06-30', 6, 3, 3),
(3, '2025-06-30', 6, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `serahancashier`
--

DROP TABLE IF EXISTS `serahancashier`;
CREATE TABLE IF NOT EXISTS `serahancashier` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(200) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(200) NOT NULL DEFAULT '-',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serahancashier`
--

INSERT INTO `serahancashier` (`recno`, `tarikh`, `masa`, `jumlah`, `idstaff`, `cawangan`, `negeri`) VALUES
(1, '2025-08-04', '5:50:44 PM', '9455.80', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(2, '2025-08-05', '5:44:32 PM', '4199.00', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(3, '2025-08-06', '5:15:03 PM', '3370.00', 'hanim', 'HMPASIRTUMBOH', 'Kelantan'),
(4, '2025-08-06', '5:32:15 PM', '2727.00', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(5, '2025-08-11', '5:47:45 PM', '523.00', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(6, '2025-08-12', '6:00:34 PM', '158.00', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan'),
(7, '2025-08-13', '5:42:42 PM', '836.00', 'TIEY', 'HMPASIRTUMBOH', 'Kelantan');

-- --------------------------------------------------------

--
-- Table structure for table `slipgaji`
--

DROP TABLE IF EXISTS `slipgaji`;
CREATE TABLE IF NOT EXISTS `slipgaji` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `nokp` varchar(20) NOT NULL DEFAULT '-',
  `bulan` varchar(50) NOT NULL DEFAULT '-',
  `tahun` varchar(30) NOT NULL DEFAULT '-',
  `gajikasar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kwsp_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kwsp_pekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `socso_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `socso_pekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `eis_majikan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `eis_pekerja` decimal(11,2) NOT NULL DEFAULT '0.00',
  `elaun` decimal(11,2) NOT NULL DEFAULT '0.00',
  `lainlain` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '0',
  `nama` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `splitcawangan`
--

DROP TABLE IF EXISTS `splitcawangan`;
CREATE TABLE IF NOT EXISTS `splitcawangan` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `cawangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `bil` int NOT NULL DEFAULT '0',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `noinvois` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `split_invois`
--

DROP TABLE IF EXISTS `split_invois`;
CREATE TABLE IF NOT EXISTS `split_invois` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `noinvois` varchar(150) NOT NULL DEFAULT '-',
  `supplier` varchar(50) NOT NULL DEFAULT '-',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangansplit` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `jenisemas` varchar(100) NOT NULL DEFAULT '-',
  `subcategory_data` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`recno`, `jenisemas`, `subcategory_data`) VALUES
(1, 'Rantai Leher', 'PADU'),
(2, 'Rantai Leher', 'HOLLOW'),
(3, 'Gelang Tangan', 'PADU'),
(4, 'Gelang Tangan', 'HOLLOW'),
(5, 'Gelang Tangan', 'CASTING'),
(11, 'Cincin', 'Huruf'),
(10, 'Cincin', 'Belah Rotan');

-- --------------------------------------------------------

--
-- Table structure for table `subdesign`
--

DROP TABLE IF EXISTS `subdesign`;
CREATE TABLE IF NOT EXISTS `subdesign` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `jenisemas` varchar(150) NOT NULL DEFAULT '-',
  `design` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `subdesign` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `img` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subdesign`
--

INSERT INTO `subdesign` (`recno`, `jenisemas`, `design`, `subdesign`, `img`) VALUES
(38, 'Rantai Leher', 'RL SAUH', 'SAUH (L)', '-'),
(35, 'Rantai Leher', 'MESIN', 'MESIN (1)', '-'),
(36, 'Rantai Leher', 'MESIN', 'MESIN (2)', '-'),
(37, 'Rantai Leher', 'RL SAUH', 'SAUT T', '-'),
(40, 'Rantai Leher', 'GAJAH', 'LICIN STM', '-'),
(41, 'Rantai Leher', 'GAJAH', 'PETAK 3D EMAS', '-'),
(42, 'Rantai Leher', 'MESIN', 'PADU', '-'),
(43, 'Rantai Leher', 'SAUH', 'DIMENSI', '-'),
(44, 'Rantai Leher', 'SAUH', 'PADU', '-'),
(45, 'Cincin', 'Fancy', 'Fancy (1)', 'https://cdn.pixabay.com/photo/2014/11/01/22/33/gold-513062_640.jpg'),
(46, 'Cincin', 'Fancy', 'Fancy (2)', '-'),
(47, 'Cincin', 'Fancy', 'Fancy (3)', '-'),
(48, 'Cincin', 'Pasir', 'Pasir (1)', '-'),
(49, 'Cincin', 'Pasir', 'Pasir (2)', '-');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `supp_id` int NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(100) NOT NULL DEFAULT '0',
  `supp_kod` varchar(30) NOT NULL DEFAULT '-',
  `supp_address` varchar(200) NOT NULL DEFAULT '0',
  `supp_contact` varchar(50) NOT NULL DEFAULT '0',
  `supp_email` varchar(50) NOT NULL DEFAULT '0',
  `noakaun` varchar(200) NOT NULL DEFAULT '-',
  `bank` varchar(100) NOT NULL DEFAULT '-',
  `bakihutang` decimal(11,2) NOT NULL DEFAULT '0.00',
  `totalstok` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`supp_id`),
  UNIQUE KEY `supp_name` (`supp_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_kod`, `supp_address`, `supp_contact`, `supp_email`, `noakaun`, `bank`, `bakihutang`, `totalstok`) VALUES
(1, 'EVA GOLD', 'EG', 'N0 20,LEBUH RAMBAI 11,11060 PAYA TERUBONG,PULAU PINANG', '0124846300', '', '-', '-', '0.00', '0.00'),
(2, 'HM JEWEL', 'HM', 'KEDAI EMAS HM JEWEL,K6 JALAN PASIR PUTEH,BANDAR SATELIT PASIR TUMBUH,16150 KOTA BHARU.', '0116058846', '', '-', '-', '0.00', '0.00'),
(3, 'LILY GOLD JEWELLERY SDN BHD', 'LG', 'NO 5445-G TINGKAT BAWAH,JALAN BULUH KUBU SEK 7,15000 KOTA BHARU,KELANTAN', '018244200', '', '-', '-', '109.36', '0.00'),
(4, 'HM JEWELS SILVER', 'CS', '', '', '', '-', '-', '0.00', '0.00'),
(5, 'PERTUKANGAN HM', 'PH', '', '', '', '-', '-', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `suppliermz`
--

DROP TABLE IF EXISTS `suppliermz`;
CREATE TABLE IF NOT EXISTS `suppliermz` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `supplier` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabung`
--

DROP TABLE IF EXISTS `tabung`;
CREATE TABLE IF NOT EXISTS `tabung` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `nokp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `noresit` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `status_bayaran` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Tunai',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status_tebus` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Belum Tebus',
  `detail` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `idstaff` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `return_deposit` int NOT NULL DEFAULT '0',
  `tarikh_returndeposit` date DEFAULT NULL,
  `jana` int NOT NULL DEFAULT '0',
  `noresit_tebus` varchar(150) NOT NULL DEFAULT '-',
  `noresitpv` varchar(150) NOT NULL DEFAULT '-',
  `addon` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabung`
--

INSERT INTO `tabung` (`recno`, `tarikh`, `masa`, `nama`, `nokp`, `noresit`, `status_bayaran`, `jumlah`, `status_tebus`, `detail`, `idstaff`, `return_deposit`, `tarikh_returndeposit`, `jana`, `noresit_tebus`, `noresitpv`, `addon`) VALUES
(1, '2025-08-05', '1:19:12 PM', 'NUR AKILA QIATINA BINTI MOHD LUKMAN', '061012031066', 'T/050820250082-hanim', 'Tunai', '250.00', 'Telah Tebus', 'LOKET NAMA (N)\r\nBERAT:3G\r\nPAHAT DI NAMA&CROME\r\nTINGGI:3CM\r\nBAJET:RM1500\r\n\r\nARI KHAMIS', 'hanim', 0, NULL, 0, '81:61/HM1108202511453-0110-TIEY', '81:61/HM1108202511453-0110-TIEY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `taraf`
--

DROP TABLE IF EXISTS `taraf`;
CREATE TABLE IF NOT EXISTS `taraf` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `taraf` varchar(40) NOT NULL DEFAULT '0',
  `cawangan` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taraf`
--

INSERT INTO `taraf` (`recno`, `taraf`, `cawangan`) VALUES
(1, 'CEO', '0'),
(2, 'COO', '0'),
(3, 'Pengurus', '0'),
(4, 'Eksekutif', '0'),
(5, 'Kerani', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tradeinaudit`
--

DROP TABLE IF EXISTS `tradeinaudit`;
CREATE TABLE IF NOT EXISTS `tradeinaudit` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `karat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `mutu` decimal(11,1) NOT NULL DEFAULT '0.0',
  `cawangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `tag` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `detail` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `idstaff` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_bank`
--

DROP TABLE IF EXISTS `transaksi_bank`;
CREATE TABLE IF NOT EXISTS `transaksi_bank` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `jenis` varchar(150) NOT NULL DEFAULT '-',
  `peratus` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahperatus` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jana` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_bank`
--

INSERT INTO `transaksi_bank` (`recno`, `tarikh`, `jenis`, `peratus`, `jumlahperatus`, `jumlah`, `jana`) VALUES
(40, '2025-06-10', 'QR Pay', '0.00', '0.00', '0.00', 0),
(41, '2025-06-10', 'Debit Card', '0.50', '0.00', '0.00', 0),
(42, '2025-06-10', 'Credit Card', '1.30', '0.00', '0.00', 0),
(43, '2025-06-10', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(44, '2025-06-10', 'Online Transfer', '0.00', '0.00', '2000.00', 0),
(45, '2025-06-09', 'QR Pay', '0.00', '0.00', '0.00', 0),
(46, '2025-06-09', 'Debit Card', '0.50', '0.00', '0.00', 0),
(47, '2025-06-09', 'Credit Card', '1.30', '0.00', '0.00', 0),
(48, '2025-06-09', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(49, '2025-06-09', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(50, '2025-06-08', 'QR Pay', '0.00', '0.00', '0.00', 0),
(51, '2025-06-08', 'Debit Card', '0.50', '0.00', '0.00', 0),
(52, '2025-06-08', 'Credit Card', '1.30', '0.00', '0.00', 0),
(53, '2025-06-08', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(54, '2025-06-08', 'Online Transfer', '0.00', '0.00', '1000.00', 0),
(55, '2025-06-01', 'QR Pay', '0.00', '0.00', '0.00', 0),
(56, '2025-06-01', 'Debit Card', '0.50', '0.00', '0.00', 0),
(57, '2025-06-01', 'Credit Card', '1.30', '0.00', '0.00', 0),
(58, '2025-06-01', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(59, '2025-06-01', 'Online Transfer', '0.00', '0.00', '20887.00', 0),
(0, '2025-06-12', 'QR Pay', '0.00', '0.00', '0.00', 0),
(61, '2025-06-12', 'Debit Card', '0.50', '0.00', '0.00', 0),
(62, '2025-06-12', 'Credit Card', '1.30', '0.00', '0.00', 0),
(63, '2025-06-12', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(64, '2025-06-12', 'Online Transfer', '0.00', '0.00', '6000.00', 0),
(65, '2025-06-17', 'QR Pay', '0.00', '0.00', '0.00', 0),
(66, '2025-06-17', 'Debit Card', '0.50', '0.00', '0.00', 0),
(67, '2025-06-17', 'Credit Card', '1.30', '0.00', '0.00', 0),
(68, '2025-06-17', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(69, '2025-06-17', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(70, '2025-06-20', 'QR Pay', '0.00', '0.00', '0.00', 0),
(71, '2025-06-20', 'Debit Card', '0.50', '10.05', '2010.00', 0),
(72, '2025-06-20', 'Credit Card', '1.30', '0.00', '0.00', 0),
(73, '2025-06-20', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(74, '2025-06-20', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(75, '2025-07-17', 'QR Pay', '0.00', '0.00', '0.00', 0),
(76, '2025-07-17', 'Debit Card', '0.50', '0.00', '0.00', 0),
(77, '2025-07-17', 'Credit Card', '1.30', '0.00', '0.00', 0),
(78, '2025-07-17', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(79, '2025-07-17', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(80, '2025-07-16', 'QR Pay', '0.00', '0.00', '0.00', 1),
(81, '2025-07-16', 'Debit Card', '0.50', '0.00', '0.00', 1),
(82, '2025-07-16', 'Credit Card', '1.30', '0.00', '0.00', 1),
(83, '2025-07-16', 'E-Wallet', '0.00', '0.00', '0.00', 1),
(84, '2025-07-16', 'Online Transfer', '0.00', '0.00', '1873.00', 1),
(85, '2025-07-15', 'QR Pay', '0.00', '0.00', '0.00', 0),
(86, '2025-07-15', 'Debit Card', '0.50', '0.00', '0.00', 0),
(87, '2025-07-15', 'Credit Card', '1.30', '0.00', '0.00', 0),
(88, '2025-07-15', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(89, '2025-07-15', 'Online Transfer', '0.00', '0.00', '4928.00', 0),
(90, '2025-07-14', 'QR Pay', '0.00', '0.00', '0.00', 0),
(91, '2025-07-14', 'Debit Card', '0.50', '0.00', '0.00', 0),
(92, '2025-07-14', 'Credit Card', '1.30', '0.00', '0.00', 0),
(93, '2025-07-14', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(94, '2025-07-14', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(95, '2025-07-07', 'QR Pay', '0.00', '0.00', '0.00', 0),
(96, '2025-07-07', 'Debit Card', '0.50', '0.00', '0.00', 0),
(97, '2025-07-07', 'Credit Card', '1.30', '0.00', '0.00', 0),
(98, '2025-07-07', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(99, '2025-07-07', 'Online Transfer', '0.00', '0.00', '7316.00', 0),
(100, '2025-07-08', 'QR Pay', '0.00', '0.00', '0.00', 0),
(101, '2025-07-08', 'Debit Card', '0.50', '0.00', '0.00', 0),
(102, '2025-07-08', 'Credit Card', '1.30', '0.00', '0.00', 0),
(103, '2025-07-08', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(104, '2025-07-08', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(105, '2025-07-09', 'QR Pay', '0.00', '0.00', '0.00', 0),
(106, '2025-07-09', 'Debit Card', '0.50', '0.00', '0.00', 0),
(107, '2025-07-09', 'Credit Card', '1.30', '0.00', '0.00', 0),
(108, '2025-07-09', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(109, '2025-07-09', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(110, '2025-07-22', 'QR Pay', '0.00', '0.00', '0.00', 0),
(111, '2025-07-22', 'Debit Card', '0.50', '0.00', '0.00', 0),
(112, '2025-07-22', 'Credit Card', '1.30', '0.00', '0.00', 0),
(113, '2025-07-22', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(114, '2025-07-22', 'Online Transfer', '0.00', '0.00', '11000.00', 0),
(115, '2025-07-22', 'Cheque', '0.00', '0.00', '0.00', 0),
(116, '2025-07-28', 'QR Pay', '0.00', '0.00', '0.00', 0),
(117, '2025-07-28', 'Debit Card', '0.50', '0.00', '0.00', 0),
(118, '2025-07-28', 'Credit Card', '1.30', '0.00', '0.00', 0),
(119, '2025-07-28', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(120, '2025-07-28', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(121, '2025-07-28', 'Hutang', '0.00', '0.00', '0.00', 0),
(122, '2025-07-28', 'Cheque', '0.00', '0.00', '0.00', 0),
(123, '2025-08-05', 'QR Pay', '0.00', '0.00', '0.00', 0),
(124, '2025-08-05', 'Debit Card', '0.50', '0.00', '0.00', 0),
(125, '2025-08-05', 'Credit Card', '1.30', '0.00', '0.00', 0),
(126, '2025-08-05', 'E-Wallet', '0.00', '0.00', '0.00', 0),
(127, '2025-08-05', 'Online Transfer', '0.00', '0.00', '0.00', 0),
(128, '2025-08-05', 'Hutang', '0.00', '0.00', '0.00', 0),
(129, '2025-08-05', 'Cheque', '0.00', '0.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_online`
--

DROP TABLE IF EXISTS `transaksi_online`;
CREATE TABLE IF NOT EXISTS `transaksi_online` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `detail` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `noakaun` varchar(150) NOT NULL DEFAULT '-',
  `bank` varchar(50) NOT NULL DEFAULT '-',
  `noresit` varchar(200) NOT NULL DEFAULT '-',
  `idstaff` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.00',
  `jumlahmasuk` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlahkeluar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(200) NOT NULL DEFAULT '-',
  `negeri` varchar(200) NOT NULL DEFAULT '-',
  `jenisbayaran` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_online`
--

INSERT INTO `transaksi_online` (`recno`, `tarikh`, `masa`, `detail`, `noakaun`, `bank`, `noresit`, `idstaff`, `jumlahmasuk`, `jumlahkeluar`, `cawangan`, `negeri`, `jenisbayaran`) VALUES
(1, '2025-08-04', '1:23:00 PM', 'Bayaran Online Transfer berjumlah RM 2890 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202512533-0067-TIEY', 'TIEY', '2890.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(2, '2025-08-04', '1:23:00 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202512533-0067-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(3, '2025-08-04', '1:32:40 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0408202512303-0068-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(4, '2025-08-04', '1:55:54 PM', 'Pengeluaran Online Transfer  berjumlah RM 215 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM04082025-0009-TIEY', 'TIEY', '0.00', '215.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(5, '2025-08-04', '2:40:03 PM', 'Bayaran Online Transfer berjumlah RM 670 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202513244-0069-TIEY', 'TIEY', '670.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(6, '2025-08-04', '2:40:03 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202513244-0069-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(7, '2025-08-04', '2:47:22 PM', 'Bayaran Online Transfer berjumlah RM 1336 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202524006-0070-TIEY', 'TIEY', '1336.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(8, '2025-08-04', '2:47:22 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202524006-0070-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(9, '2025-08-04', '3:55:26 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0408202535127-0072-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(10, '2025-08-04', '4:49:08 PM', 'Bayaran Online Transfer berjumlah RM 25 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202535528-0073-TIEY', 'TIEY', '25.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(11, '2025-08-04', '4:49:08 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0408202535528-0073-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(12, '2025-08-05', '12:04:04 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0508202511392-0077-hanim', 'hanim', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(14, '2025-08-05', '1:25:00 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0508202512533-0081-hanim', 'hanim', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(15, '2025-08-05', '4:16:50 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0508202512506-0083-hanim', 'hanim', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(16, '2025-08-06', '10:24:29 AM', 'Bayaran Online Transfer berjumlah RM 10 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0608202510063-0085-TIEY', 'TIEY', '10.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(17, '2025-08-06', '10:24:29 AM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0608202510063-0085-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(18, '2025-08-06', '11:25:54 AM', 'PAYMENT SALESMAN ', '553010662942', 'MAYBANK', 'Tiada Ref ID', 'hafiz4117', '0.00', '786.92', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(19, '2025-08-06', '12:10:21 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0608202511595-0087-hanim', 'hanim', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(20, '2025-08-06', '2:59:14 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0608202525028-0089-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(21, '2025-08-06', '4:20:31 PM', 'Bayaran Online Transfer berjumlah RM 540 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0608202525917-0090-TIEY', 'TIEY', '540.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(22, '2025-08-06', '4:20:31 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM0608202525917-0090-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(23, '2025-08-07', '4:11:10 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0708202522612-0101-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(24, '2025-08-07', '5:02:34 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0708202541112-0102-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(25, '2025-08-07', '7:06:27 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM0708202554635-0104-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(26, '2025-08-11', '11:44:27 AM', 'Bayaran Online Transfer berjumlah RM 10000 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1108202511335-0108-TIEY', 'TIEY', '10000.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(27, '2025-08-11', '11:44:27 AM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1108202511335-0108-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(28, '2025-08-11', '11:45:34 AM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1108202511443-0109-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(29, '2025-08-11', '11:49:54 AM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1108202511453-0110-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(30, '2025-08-11', '12:15:40 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1108202511495-0111-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(31, '2025-08-11', '12:23:58 PM', 'Pengeluaran Online Transfer  berjumlah RM 1933 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM11082025-0028-TIEY', 'TIEY', '0.00', '1933.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(32, '2025-08-11', '12:48:13 PM', 'Pengeluaran Online Transfer  berjumlah RM 1191 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM11082025-0037-TIEY', 'TIEY', '0.00', '1191.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(33, '2025-08-11', '12:53:55 PM', 'Pengeluaran Online Transfer  berjumlah RM 9685 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM11082025-0038-TIEY', 'TIEY', '0.00', '9685.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(34, '2025-08-11', '1:12:39 PM', 'Pengeluaran Online Transfer  berjumlah RM 1933 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM11082025-0039-TIEY', 'TIEY', '0.00', '1933.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(35, '2025-08-11', '1:15:22 PM', 'TAMBAH MODAL EMAS', '553010662942', 'MAYBANK', 'Tiada Ref ID', 'hafiz4117', '3124.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(36, '2025-08-11', '1:43:32 PM', 'Bayaran Online Transfer berjumlah RM 7079 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1108202512423-0117-TIEY', 'TIEY', '7079.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(37, '2025-08-11', '1:43:32 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1108202512423-0117-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(38, '2025-08-11', '4:18:01 PM', 'Pengeluaran Online Transfer  berjumlah RM 2684 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM11082025-0040-TIEY', 'TIEY', '0.00', '2684.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(39, '2025-08-12', '10:49:35 AM', 'DUIT MASUK TOLAK EMAS', '553010662942', 'MAYBANK', 'Tiada Ref ID', 'hafiz4117', '4607.92', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(40, '2025-08-12', '5:25:06 PM', 'Pengeluaran Online Transfer  berjumlah RM 1465 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM12082025-0042-TIEY', 'TIEY', '0.00', '1465.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(41, '2025-08-13', '11:31:59 AM', 'Pengeluaran Online Transfer  berjumlah RM 1018 dari akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', 'HM13082025-0043-TIEY', 'TIEY', '0.00', '1018.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(42, '2025-08-13', '12:30:21 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1308202511145-0129-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(43, '2025-08-13', '1:27:31 PM', 'Bayaran Online Transfer berjumlah RM 2880 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1308202512302-0130-TIEY', 'TIEY', '2880.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(44, '2025-08-13', '1:27:31 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1308202512302-0130-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(45, '2025-08-13', '2:46:54 PM', 'Bayaran Online Transfer berjumlah RM 1470 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1308202512734-0131-TIEY', 'TIEY', '1470.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(46, '2025-08-13', '2:46:54 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank Hafiz Muhamad Jewel-553010662942[MAYBANK]', '553010662942', 'MAYBANK', '81:61/HM1308202512734-0131-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(47, '2025-08-13', '2:56:36 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1308202524658-0132-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(48, '2025-08-13', '4:51:47 PM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1308202525643-0133-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(49, '2025-08-14', '11:33:51 AM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1408202511301-0136-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-'),
(50, '2025-08-14', '11:37:54 AM', 'Add On Payment Online Transfer berjumlah RM 0.00 ke akaun bank -', '-', '-', '81:61/HM1408202511335-0137-TIEY', 'TIEY', '0.00', '0.00', 'HMPASIRTUMBOH', 'Kelantan', '-');

-- --------------------------------------------------------

--
-- Table structure for table `transferdefect`
--

DROP TABLE IF EXISTS `transferdefect`;
CREATE TABLE IF NOT EXISTS `transferdefect` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `transferdefect` varchar(200) NOT NULL DEFAULT '-',
  `dari` varchar(100) NOT NULL DEFAULT '-',
  `ke` varchar(100) NOT NULL DEFAULT '-',
  `karat` varchar(50) NOT NULL DEFAULT '-',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `status` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transferhq`
--

DROP TABLE IF EXISTS `transferhq`;
CREATE TABLE IF NOT EXISTS `transferhq` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `notransaksi` varchar(100) NOT NULL DEFAULT '-',
  `bank` varchar(100) NOT NULL DEFAULT '-',
  `noakaun` varchar(100) NOT NULL DEFAULT '-',
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `bayar` decimal(11,2) NOT NULL DEFAULT '0.00',
  `transfermz` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `cawangan` varchar(100) NOT NULL DEFAULT '-',
  `negeri` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transferscrap`
--

DROP TABLE IF EXISTS `transferscrap`;
CREATE TABLE IF NOT EXISTS `transferscrap` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `dari` varchar(100) NOT NULL DEFAULT '-',
  `ke` varchar(100) NOT NULL DEFAULT '-',
  `karat` varchar(50) NOT NULL DEFAULT '-',
  `beratasal` decimal(11,2) NOT NULL DEFAULT '0.00',
  `berat` decimal(11,2) NOT NULL DEFAULT '0.00',
  `baki` decimal(11,2) NOT NULL DEFAULT '0.00',
  `idstaff` varchar(100) NOT NULL DEFAULT '-',
  `nama` varchar(200) NOT NULL DEFAULT '-',
  `status` varchar(100) NOT NULL DEFAULT 'Belum Terima',
  `idstaffterima` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `untungrugi`
--

DROP TABLE IF EXISTS `untungrugi`;
CREATE TABLE IF NOT EXISTS `untungrugi` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `tarikh` date DEFAULT NULL,
  `detail` varchar(200) NOT NULL DEFAULT '-',
  `jualan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `kos` decimal(11,2) NOT NULL DEFAULT '0.00',
  `jumlah` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cawangan` varchar(150) NOT NULL DEFAULT '-',
  `noresit` varchar(150) NOT NULL DEFAULT '-',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `untungrugi`
--

INSERT INTO `untungrugi` (`recno`, `tarikh`, `detail`, `jualan`, `kos`, `jumlah`, `cawangan`, `noresit`) VALUES
(1, '2025-08-03', 'Untung Harga Emas New', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(2, '2025-08-03', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(3, '2025-08-03', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(4, '2025-08-03', 'Untung Upah', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(5, '2025-08-03', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(6, '2025-08-03', 'Untung Lain-Lain Produk', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(7, '2025-08-03', 'Pelarasan Diskaun', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(8, '2025-08-04', 'Untung Harga Emas New', '6145.46', '6226.50', '-81.04', 'HMPASIRTUMBOH', '-'),
(9, '2025-08-04', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(10, '2025-08-04', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(11, '2025-08-04', 'Untung Upah', '950.00', '270.00', '680.00', 'HMPASIRTUMBOH', '-'),
(12, '2025-08-04', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(13, '2025-08-04', 'Untung Lain-Lain Produk', '25.00', '0.00', '25.00', 'HMPASIRTUMBOH', '-'),
(14, '2025-08-04', 'Pelarasan Diskaun', '-119.46', '0.00', '-119.46', 'HMPASIRTUMBOH', '-'),
(15, '2025-08-05', 'Untung Harga Emas New', '1231.74', '1241.77', '-10.03', 'HMPASIRTUMBOH', '-'),
(16, '2025-08-05', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(17, '2025-08-05', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(18, '2025-08-05', 'Untung Upah', '300.00', '60.00', '240.00', 'HMPASIRTUMBOH', '-'),
(19, '2025-08-05', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(20, '2025-08-05', 'Untung Lain-Lain Produk', '45.00', '0.00', '45.00', 'HMPASIRTUMBOH', '-'),
(21, '2025-08-05', 'Pelarasan Diskaun', '-56.74', '0.00', '-56.74', 'HMPASIRTUMBOH', '-'),
(22, '2025-08-06', 'Untung Harga Emas New', '3020.63', '3027.08', '-6.45', 'HMPASIRTUMBOH', '-'),
(23, '2025-08-06', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(24, '2025-08-06', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(25, '2025-08-06', 'Untung Upah', '350.00', '120.00', '230.00', 'HMPASIRTUMBOH', '-'),
(26, '2025-08-06', 'Untung Gold Bar/Wafer Gold', '540.00', '441.91', '98.09', 'HMPASIRTUMBOH', '-'),
(27, '2025-08-06', 'Untung Lain-Lain Produk', '35.00', '0.00', '35.00', 'HMPASIRTUMBOH', '-'),
(28, '2025-08-06', 'Pelarasan Diskaun', '-0.63', '0.00', '-0.63', 'HMPASIRTUMBOH', '-'),
(29, '2025-08-07', 'Untung Harga Emas New', '1237.08', '1250.60', '-13.52', 'HMPASIRTUMBOH', '-'),
(30, '2025-08-07', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(31, '2025-08-07', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(32, '2025-08-07', 'Untung Upah', '300.00', '50.00', '250.00', 'HMPASIRTUMBOH', '-'),
(33, '2025-08-07', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(34, '2025-08-07', 'Untung Lain-Lain Produk', '30.00', '0.00', '30.00', 'HMPASIRTUMBOH', '-'),
(35, '2025-08-07', 'Pelarasan Diskaun', '-37.08', '0.00', '-37.08', 'HMPASIRTUMBOH', '-'),
(36, '2025-08-09', 'Untung Harga Emas New', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(37, '2025-08-09', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(38, '2025-08-09', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(39, '2025-08-09', 'Untung Upah', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(40, '2025-08-09', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(41, '2025-08-09', 'Untung Lain-Lain Produk', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(42, '2025-08-09', 'Pelarasan Diskaun', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(43, '2025-08-10', 'Untung Harga Emas New', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(44, '2025-08-10', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(45, '2025-08-10', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(46, '2025-08-10', 'Untung Upah', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(47, '2025-08-10', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(48, '2025-08-10', 'Untung Lain-Lain Produk', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(49, '2025-08-10', 'Pelarasan Diskaun', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(50, '2025-08-11', 'Untung Harga Emas New', '6579.00', '6628.65', '-49.65', 'HMPASIRTUMBOH', '-'),
(51, '2025-08-11', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(52, '2025-08-11', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(53, '2025-08-11', 'Untung Upah', '550.00', '220.00', '330.00', 'HMPASIRTUMBOH', '-'),
(54, '2025-08-11', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(55, '2025-08-11', 'Untung Lain-Lain Produk', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(56, '2025-08-11', 'Pelarasan Diskaun', '-50.00', '0.00', '-50.00', 'HMPASIRTUMBOH', '-'),
(57, '2025-08-12', 'Untung Harga Emas New', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(58, '2025-08-12', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(59, '2025-08-12', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(60, '2025-08-12', 'Untung Upah', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(61, '2025-08-12', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(62, '2025-08-12', 'Untung Lain-Lain Produk', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(63, '2025-08-12', 'Pelarasan Diskaun', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(64, '2025-08-13', 'Untung Harga Emas New', '11439.72', '11952.67', '-512.95', 'HMPASIRTUMBOH', '-'),
(65, '2025-08-13', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(66, '2025-08-13', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(67, '2025-08-13', 'Untung Upah', '1450.00', '420.00', '1030.00', 'HMPASIRTUMBOH', '-'),
(68, '2025-08-13', 'Untung Gold Bar/Wafer Gold', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(69, '2025-08-13', 'Untung Lain-Lain Produk', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(70, '2025-08-13', 'Pelarasan Diskaun', '-140.72', '0.00', '-140.72', 'HMPASIRTUMBOH', '-'),
(71, '2025-08-14', 'Untung Harga Emas New', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(72, '2025-08-14', 'Untung Harga Emas Preloved', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(73, '2025-08-14', 'Untung Trade In', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(74, '2025-08-14', 'Untung Upah', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-'),
(75, '2025-08-14', 'Untung Gold Bar/Wafer Gold', '470.00', '441.91', '28.09', 'HMPASIRTUMBOH', '-'),
(76, '2025-08-14', 'Untung Lain-Lain Produk', '25.00', '0.00', '25.00', 'HMPASIRTUMBOH', '-'),
(77, '2025-08-14', 'Pelarasan Diskaun', '0.00', '0.00', '0.00', 'HMPASIRTUMBOH', '-');

-- --------------------------------------------------------

--
-- Table structure for table `vip_setting`
--

DROP TABLE IF EXISTS `vip_setting`;
CREATE TABLE IF NOT EXISTS `vip_setting` (
  `recno` int NOT NULL AUTO_INCREMENT,
  `diskaun_new` decimal(11,2) NOT NULL DEFAULT '0.00',
  `diskaun_pre` decimal(11,2) NOT NULL DEFAULT '0.00',
  `vip_harga` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`recno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vip_setting`
--

INSERT INTO `vip_setting` (`recno`, `diskaun_new`, `diskaun_pre`, `vip_harga`) VALUES
(1, '2.00', '1.00', '50.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
