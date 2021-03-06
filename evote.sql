-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 04:45 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evote`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pemilih`
--

CREATE TABLE IF NOT EXISTS `data_pemilih` (
  `id` int(11) NOT NULL,
  `no_reg` varchar(25) NOT NULL,
  `nama_peserta` varchar(100) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `status_vote` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemilih`
--

INSERT INTO `data_pemilih` (`id`, `no_reg`, `nama_peserta`, `kelas`, `status_vote`) VALUES
(1, '4814da', 'ADAM M.MIFTAH', 'S1 SAAD', 0),
(2, '40e5b1', 'ADELIA RAHMADINA', 'S1 SAAD', 0),
(3, '2e03ea', 'ADRIAN IZZA MUHAMMAD', 'S1 SAAD', 0),
(4, 'd9655a', 'ANDI NAURAH FIRYAL IKLILIA', 'S1 SAAD', 0),
(5, 'bb362b', 'BADI RADISAMALIK', 'S1 SAAD', 0),
(6, '1a67dd', 'DEAN SATRIA ZIANUR FADLI', 'S1 SAAD', 0),
(7, '4e0dbe', 'FAIQ ATHALLAH MAJDI', 'S1 SAAD', 0),
(8, '0544ad', 'GHINA FATHIYYAH', 'S1 SAAD', 0),
(9, 'd4b500', 'HANEIRA SHOFIADEITA', 'S1 SAAD', 0),
(10, '779ed4', 'HANIF MUKHLISH HIBATULLAH WIDODO', 'S1 SAAD', 0),
(11, 'f5cb24', 'JORDAN ALEXANDER', 'S1 SAAD', 0),
(12, '236c4c', 'KAYSA MARWA ASFARI', 'S1 SAAD', 0),
(13, 'bc1270', 'MARSYA NAMIRA DEMA PUTRI', 'S1 SAAD', 0),
(14, '8c3bf4', 'MEDIKA ALFIAN', 'S1 SAAD', 0),
(15, '4e527e', 'MUHAMMAD MUFID TABRANI ASRADYA', 'S1 SAAD', 0),
(16, '06a8c0', 'NABEL MIFTAH IMANTARA', 'S1 SAAD', 0),
(17, '5bc292', 'NAYLA FATIHA SALSABILA', 'S1 SAAD', 0),
(18, 'a2e30a', 'NIDA INSANI FIRDAUS', 'S1 SAAD', 0),
(19, '899f8d', 'NILAM ATIKASARI', 'S1 SAAD', 0),
(20, 'aa6524', 'RADEN ELFAIZIR KRISNA SYAHRAKA', 'S1 SAAD', 0),
(21, 'ce6629', 'RAFA NAILA AZHAR', 'S1 SAAD', 0),
(22, '249a90', 'RAFANI SALSABILA FIRMANSYAH', 'S1 SAAD', 0),
(23, 'abe16a', 'RAKA ADHITYA NUGRAHA', 'S1 SAAD', 0),
(24, 'a39eb5', 'TAZAKKA IBRAHIM ADIE', 'S1 SAAD', 0),
(25, '7b2bef', 'ZEDKA YASWA AHMADETYA', 'S1 SAAD', 0),
(26, '95a1a9', 'ZUFAR ARIEF MUHAMMAD DZAKWAAN', 'S1 SAAD', 0),
(27, '43c589', 'ADITYA DANIEL SILABAN', 'S1 THALHAH', 0),
(28, 'd2fdb8', 'AISYAH BEBI SABRINA', 'S1 THALHAH', 0),
(29, '1b24c7', 'AKBAR SURYA PRATAMA', 'S1 THALHAH', 0),
(30, 'e969a5', 'ANGELINE PUTRI UDJIANTO', 'S1 THALHAH', 0),
(31, '114559', 'ATHALIA PUTRI RURI', 'S1 THALHAH', 0),
(32, '331b1d', 'BIMO SATRIO UTOMO', 'S1 THALHAH', 0),
(33, 'f3a6d9', 'CLAUDIA FITRI AYU KINANTI', 'S1 THALHAH', 0),
(34, '299138', 'DELLYA ALLYSHA JULIAWAN', 'S1 THALHAH', 0),
(35, '3a748b', 'DHAFIN NEDRIAN PRASETIA', 'S1 THALHAH', 0),
(36, '6eae2e', 'DHIA TSURAYA SUWANDI', 'S1 THALHAH', 0),
(37, '653842', 'ELMOE NUGUNA', 'S1 THALHAH', 0),
(38, '850994', 'EMYREINO MOHAMMAD', 'S1 THALHAH', 0),
(39, '4d4cfc', 'GIZHA FAHRIZAL NUR AKBAR', 'S1 THALHAH', 0),
(40, 'de2097', 'INTAN NISA BANI', 'S1 THALHAH', 0),
(41, '8063fa', 'KAYLA ATHAYA SHAISTA', 'S1 THALHAH', 0),
(42, '9843ce', 'MUHAMMAD ILHAM ASH SHIDDIQ', 'S1 THALHAH', 0),
(43, 'e62ec9', 'MUHAMMAD RIFQI HAKIM', 'S1 THALHAH', 0),
(44, 'c473f0', 'NOVRIZ NADWI ZAHRAN NASUTION', 'S1 THALHAH', 0),
(45, 'd8dc0c', 'RAFI NASHWAN FIANDRI', 'S1 THALHAH', 0),
(46, '7c7cb1', 'RAKA IMAM FADILAH', 'S1 THALHAH', 0),
(47, 'd0baa6', 'REHAN SUDIRA', 'S1 THALHAH', 0),
(48, 'c563f6', 'SAYYIDATUNNISA SHAFIYAH NAZIFAH', 'S1 THALHAH', 0),
(49, '5e057f', 'SYAGHIFA NAURA HIJRINA', 'S1 THALHAH', 0),
(50, '1b8279', 'VANNIA TEDY', 'S1 THALHAH', 0),
(51, 'adb3e1', 'ZAKIY MUHAMAD RIDWAN', 'S1 THALHAH', 0),
(52, '232d8b', 'ZHELDA SHAFIRA AGNITAMI', 'S1 THALHAH', 0),
(53, '951bdc', 'ADIKA ELIAN BAGASKARA', 'S1 ZUBAIR', 0),
(54, '54be7b', 'AHMAD ABDULLAH RASYIF HANAFIAH', 'S1 ZUBAIR', 0),
(55, '862551', 'ALVAR MUHAMMAD ADAM', 'S1 ZUBAIR', 0),
(56, '7e0c90', 'AMIRAH ALFI MARWAH AZ ZAHRA', 'S1 ZUBAIR', 0),
(57, 'bb84a4', 'ANGGA SATRIACAESARIO BUDIARTO', 'S1 ZUBAIR', 0),
(58, '9d0fcd', 'ATHIF RABBANI VINANTA HADI', 'S1 ZUBAIR', 0),
(59, '40743a', 'DAVID NALBANDIAN', 'S1 ZUBAIR', 0),
(60, '5a9eb0', 'GAVIN FIELO RIZA', 'S1 ZUBAIR', 0),
(61, '2326c2', 'JAISY CETTA AROXA', 'S1 ZUBAIR', 0),
(62, '24d1dc', 'KEVIN RENALDI BAHARI', 'S1 ZUBAIR', 0),
(63, '675bcf', 'KHAALISHAH NAJWA NADHIIFAH', 'S1 ZUBAIR', 0),
(64, 'cf9a2e', 'MUHAMMAD FATHI FIKRI RAMADHANI', 'S1 ZUBAIR', 0),
(65, '03e21c', 'MUHAMMAD IHSAN PRATAMA', 'S1 ZUBAIR', 0),
(66, '9d79f0', 'NAURA ZAYYANI', 'S1 ZUBAIR', 0),
(67, 'a94798', 'NAZLA MAISYA NABILAH', 'S1 ZUBAIR', 0),
(68, '4b27ac', 'NAZWA AF''IDAH', 'S1 ZUBAIR', 0),
(69, '85ed27', 'PUTRI AZZIZAH HARYANTO', 'S1 ZUBAIR', 0),
(70, '66f751', 'RAHMADISSA PUTRI NUGROHO', 'S1 ZUBAIR', 0),
(71, '2a0c6c', 'RAQINNAJA AXSALI', 'S1 ZUBAIR', 0),
(72, '1c4d71', 'SASKA AMANDA SHALIHA', 'S1 ZUBAIR', 0),
(73, 'f1463f', 'SHEEREN ALISHA SAYYIDINA', 'S1 ZUBAIR', 0),
(74, 'fdc931', 'SULTAN PASHA', 'S1 ZUBAIR', 0),
(75, '6ae0ec', 'SYABANI LATHIFATUL HASNA', 'S1 ZUBAIR', 0),
(76, '61ebd8', 'SYAHIDAH ATHARI ', 'S1 ZUBAIR', 0),
(77, '5ae3a3', 'THEO ALVARO LOEBIS', 'S1 ZUBAIR', 0),
(78, 'c67055', 'ADRYANOV ABDELHAKIM KALIMULLAH', 'S2 ABDURAHMAN', 0),
(79, '70636e', 'AKBAR MOCHAMAD GIBRAN', 'S2 ABDURAHMAN', 0),
(80, '6ff675', 'ALDILLA DEVYANA NUR AZIZAH', 'S2 ABDURAHMAN', 0),
(81, '04e339', 'ARGI RISTYAN OLII', 'S2 ABDURAHMAN', 0),
(82, '5ce9f0', 'AZKA FAIHAA', 'S2 ABDURAHMAN', 0),
(83, '86cb43', 'BEVAN BRIAN', 'S2 ABDURAHMAN', 0),
(84, '84633c', 'BISMA ANDIKA PRAMUDYA', 'S2 ABDURAHMAN', 0),
(85, 'b13f37', 'HANIEF AMMIZANY PERDANA', 'S2 ABDURAHMAN', 0),
(86, 'd5dbec', 'IRGI MAJIID ALFAREZI SIREGAR', 'S2 ABDURAHMAN', 0),
(87, '0b073d', 'KLARINTA RASYA PUTRI PERMADI', 'S2 ABDURAHMAN', 0),
(88, '967bbc', 'MUHAMMAD DAFFA IBRAHIM', 'S2 ABDURAHMAN', 0),
(89, '414d30', 'MUHAMMAD RAIHAN', 'S2 ABDURAHMAN', 0),
(90, 'ba216b', 'MUHAMMAD ZIDANE SUGIANDI', 'S2 ABDURAHMAN', 0),
(91, '9e6f6e', 'MUTHIA AULIA RAHMA', 'S2 ABDURAHMAN', 0),
(92, '5827d8', 'NADHIIRA ZAHRANI', 'S2 ABDURAHMAN', 0),
(93, '0f0b81', 'POETRI SYALSABILLA SOFYAN', 'S2 ABDURAHMAN', 0),
(94, 'c5581d', 'RAFEL RAILY KURNIA RAZIF', 'S2 ABDURAHMAN', 0),
(95, 'cd3ab5', 'RENDA NUR VALENTINA LAMIN', 'S2 ABDURAHMAN', 0),
(96, '21a466', 'RIZKY NURUL FALIHAH', 'S2 ABDURAHMAN', 0),
(97, '3508ce', 'SYAFIRA FAWWAZ NAZARA', 'S2 ABDURAHMAN', 0),
(98, '24b99a', 'SYLVIA PUTRI TJAHJADI', 'S2 ABDURAHMAN', 0),
(99, '7937d3', 'WILLIE PUTRA ANGKASA', 'S2 ABDURAHMAN', 0),
(100, '1b5e4d', 'ZAHRAN PRIMA ABDULLAH SS', 'S2 ABDURAHMAN', 0),
(101, 'cc60a2', 'ZHARFAN MAULANA Y.N', 'S2 ABDURAHMAN', 0),
(102, '59f120', 'AISYA NOVENIA PUTRI', 'S2 ABU UBAIDAH', 0),
(103, '4bc33b', 'ALAYA FARHA RAHMAN', 'S2 ABU UBAIDAH', 0),
(104, 'e4c41c', 'ALIFIO FIRDAUS', 'S2 ABU UBAIDAH', 0),
(105, 'b2470b', 'ANDIKA KRESNA PERMADI', 'S2 ABU UBAIDAH', 0),
(106, 'f34c33', 'AZHAR PRATAMA', 'S2 ABU UBAIDAH', 0),
(107, '867ae5', 'AZKIA ADNIN', 'S2 ABU UBAIDAH', 0),
(108, '2f193d', 'BIANGLALA AISKA RAHMANNINA', 'S2 ABU UBAIDAH', 0),
(109, 'f0271e', 'DAMA FAUZAN AZHARYA', 'S2 ABU UBAIDAH', 0),
(110, '207816', 'DEANA ANDHINI PUTRI', 'S2 ABU UBAIDAH', 0),
(111, '12ae29', 'DEANARA ALISYA AKBARI', 'S2 ABU UBAIDAH', 0),
(112, '2445e2', 'EGA ANARGYA', 'S2 ABU UBAIDAH', 0),
(113, '749ea5', 'FAUZYA DHIYA SALSABILA', 'S2 ABU UBAIDAH', 0),
(114, 'bf858f', 'M. TITAN ANUGRAH SANTOSA', 'S2 ABU UBAIDAH', 0),
(115, '9bdad6', 'MALIKA MUHARANI AKBAR', 'S2 ABU UBAIDAH', 0),
(116, '6608e6', 'MARSHA RASYIDA AL-FARABI', 'S2 ABU UBAIDAH', 0),
(117, 'b04c67', 'MUHAMMAD FARID PRAYATA', 'S2 ABU UBAIDAH', 0),
(118, '568440', 'MUHAMMAD IHSAN HAEKAL', 'S2 ABU UBAIDAH', 0),
(119, '8167ed', 'MUHAMMAD NAUFAL IMAN', 'S2 ABU UBAIDAH', 0),
(120, 'ae8f02', 'MUHAMMAD RADHITYA  JHONLIN SAPUTRA', 'S2 ABU UBAIDAH', 0),
(121, '5542d8', 'NURAULIA AZZAHRA ANDRIAN SYAH', 'S2 ABU UBAIDAH', 0),
(122, 'dbd4bd', 'PUTRI SHIFRA ZAKIRA', 'S2 ABU UBAIDAH', 0),
(123, '1fa40e', 'RAFI ANANTA ALDEN', 'S2 ABU UBAIDAH', 0),
(124, '78058f', 'RUMAISHA AFRINA ', 'S2 ABU UBAIDAH', 0),
(125, '7ae44e', 'SEKAR NABILA INSPIRANA', 'S2 ABU UBAIDAH', 0),
(126, '448563', 'SARA MAGDY MAMDOUH SALAMA', 'S2 ABU UBAIDAH', 0),
(127, '119c76', 'AULIA YUSUF MAULANA', 'S2 SAID', 0),
(128, '35a29a', 'AULYA SAFFIRA', 'S2 SAID', 0),
(129, 'df94c2', 'BUMI HIJAU MADANI', 'S2 SAID', 0),
(130, '3d5ff0', 'DARA DINANTI ABENG', 'S2 SAID', 0),
(131, '53ab09', 'DIMA REYNARA NOOR', 'S2 SAID', 0),
(132, 'fef884', 'FIKRAN FATTAH', 'S2 SAID', 0),
(133, 'ad8ed0', 'IRFAN FAJAR PRAMANSU', 'S2 SAID', 0),
(134, '714a99', 'KAYLA ASHILA KURNIAWAN', 'S2 SAID', 0),
(135, 'c54721', 'MALIK ABDUL AZIZ RIAWAN', 'S2 SAID', 0),
(136, '2f571c', 'MUHAMMAD HAIKAL RAMADHANI', 'S2 SAID', 0),
(137, '104a3d', 'MUHAMMAD RIFQI RABBANI W', 'S2 SAID', 0),
(138, '6dc40e', 'MUHAMMAD ZHARFAN MARSYAFADHLAN', 'S2 SAID', 0),
(139, '7747c7', 'NABIEL SURYOPANDU HARTONO', 'S2 SAID', 0),
(140, '557932', 'NADYA LIANDRE SYAUTA', 'S2 SAID', 0),
(141, '810143', 'PUTRI SHAKILA SANTANG', 'S2 SAID', 0),
(142, 'c60189', 'QUEENA CASMIRA FASYA HAKEEM', 'S2 SAID', 0),
(143, 'a81ce4', 'RAKEYAN AVICEENA SYARIF HIDAYATULLAH MUHAMMAD', 'S2 SAID', 0),
(144, '3b0da7', 'SALMAN INDRAJAYA', 'S2 SAID', 0),
(145, '8c31fc', 'SANDRA SALWA AFIFAH', 'S2 SAID', 0),
(146, 'd4ec24', 'SYALBIA NOOR RAHMAH', 'S2 SAID', 0),
(147, '11eeca', 'THIO FIFEL FADYLAN PRANA', 'S2 SAID', 0),
(148, 'b94d23', 'TRIANA APRILIA ALFATIHANI', 'S2 SAID', 0),
(149, '163fba', 'WIDYA ISTAPRAYA PARAMAHITA', 'S2 SAID', 0),
(150, '66a2f3', 'YASYA AZALIA PUTRI WIBOWO', 'S2 SAID', 0),
(151, '48b9ff', 'ZUFFAR RAKHI ABYAN', 'S2 SAID', 0),
(152, '48519b', 'RHEYNA ARYA RACANA', 'S2 SAID', 0),
(153, 'b00575', 'AISHA NAJLA SAFINA', 'S3 ALI', 0),
(154, '9dba74', 'ALETA ZAFIRA SHAFIQ', 'S3 ALI', 0),
(155, '81a58f', 'ANGELA PUTRIRURI', 'S3 ALI', 0),
(156, '6c0619', 'AZKA GHISYANI', 'S3 ALI', 0),
(157, '77ce75', 'DAFFA RIFQI FARGHANI', 'S3 ALI', 0),
(158, '96d243', 'FARIZY RAFI HERIYANTO', 'S3 ALI', 0),
(159, '23b166', 'FAURIZA AKBAR', 'S3 ALI', 0),
(160, 'd2fbfc', 'KALYA DIVA MARSHANDA', 'S3 ALI', 0),
(161, '1c30d5', 'KARIM HABIBI', 'S3 ALI', 0),
(162, '1cfd04', 'LISHA ADZANTA F.', 'S3 ALI', 0),
(163, '199dc8', 'MOCH. NAUFAL AL FARRA', 'S3 ALI', 0),
(164, '651405', 'MOHAMMAD AGIEL ABRAARI', 'S3 ALI', 0),
(165, '3e45ae', 'MUHAMMAD FARREL RAJA AGUNG', 'S3 ALI', 0),
(166, 'c90bb6', 'NADHIF ANNABYL PERDANA', 'S3 ALI', 0),
(167, '0a420b', 'NADIRA GHITA SUDARYANTO', 'S3 ALI', 0),
(168, '8d3174', 'PUTRA SANDY WASISTHA ALBY', 'S3 ALI', 0),
(169, '3763eb', 'RAFLI RISMANSYAH STIAWAN', 'S3 ALI', 0),
(170, '6a8231', 'SITI FATIMAH ALIYA SUNARTO', 'S3 ALI', 0),
(171, '2ae861', 'ZAHRA SHAFURA KHALIQAH', 'S3 ALI', 0),
(172, '94f0a8', 'DESNANDA', 'S3 ALI', 0),
(173, '335c39', 'M. IHZA NUGRAHA', 'S3 ALI', 0),
(174, '87b9dd', 'ANDI NAJLA K.S.', 'S3 ALI', 0),
(175, '097bd5', 'ANNEIRA AUDREY', 'S3 UMAR', 0),
(176, '3cc256', 'ASHIFA NURUL ILMI', 'S3 UMAR', 0),
(177, '0edbda', 'BAGEA ALIFA', 'S3 UMAR', 0),
(178, 'cc45b6', 'CHANEL PUTRI ALICIA', 'S3 UMAR', 0),
(179, 'b30533', 'GIVENDA VALENDRA SIDIQ', 'S3 UMAR', 0),
(180, 'c114fc', 'HAFIDZ AKBAR PRATAMA', 'S3 UMAR', 0),
(181, 'ebc5a7', 'HANA NADIA ISKANDAR', 'S3 UMAR', 0),
(182, '2071a8', 'M. ZAIDAN MAJID DARAJAT', 'S3 UMAR', 0),
(183, '667d77', 'MARCO ALEXANDER', 'S3 UMAR', 0),
(184, '57c065', 'MAZAYA SHAFA ALYKA RACHMAWAN', 'S3 UMAR', 0),
(185, 'c99bf6', 'MOCHAMMAD FARHAN PUTRA ANDRA', 'S3 UMAR', 0),
(186, 'b54c95', 'NAIRA CINDY WIDI HAMIDAH', 'S3 UMAR', 0),
(187, '87a6d0', 'NUR ALIIFA BINTI MUHAMAD RANI', 'S3 UMAR', 0),
(188, '7fa462', 'PRIMA MADA SALSABILLA', 'S3 UMAR', 0),
(189, '392594', 'PUTRI AZZAHRA HARYANTO', 'S3 UMAR', 0),
(190, '1bd5f3', 'RADITHYA FATHI DANADYAKSA', 'S3 UMAR', 0),
(191, '17152a', 'RASYA ANIDA SABILA HASTUTI', 'S3 UMAR', 0),
(192, '1305c3', 'RENDY GUNAWAN', 'S3 UMAR', 0),
(193, '54b76a', 'SEPTIANSYAH NADWI ADLI NASUTION', 'S3 UMAR', 0),
(194, '6c2967', 'YASMIN NABILAH NITISARA', 'S3 UMAR', 0),
(195, 'de9b2a', 'ZAHRA ALIYYA RIANTRI', 'S3 UMAR', 0),
(196, '5100b1', 'ADIIBAH JUSITA AMUDYANI', 'S3 USTMAN', 0),
(197, '0fc93b', 'ALIFIA PUTRI AZZAHRA', 'S3 USTMAN', 0),
(198, 'a1c042', 'ALMER DONATO EDYA', 'S3 USTMAN', 0),
(199, 'c0e7d1', 'ALVIN ANDRIANTO', 'S3 USTMAN', 0),
(200, '42a664', 'ANGGITA RIZKIKA ANGGRAENI P', 'S3 USTMAN', 0),
(201, '7ff994', 'ANJELITA RAHMANIAR SYAH', 'S3 USTMAN', 0),
(202, 'cf9796', 'ARIMBI CHANDRA OKTAVIA', 'S3 USTMAN', 0),
(203, 'ac8512', 'ATHA RIADI BISMA', 'S3 USTMAN', 0),
(204, '5e85c1', 'AURYN ADHWA TERTIA', 'S3 USTMAN', 0),
(205, 'b75d0f', 'DAFFA MUJAHID', 'S3 USTMAN', 0),
(206, '3459a7', 'DEA ALVINDHA', 'S3 USTMAN', 0),
(207, '42ca6a', 'DESTIA NUR FITRIANI', 'S3 USTMAN', 0),
(208, 'f0ec1f', 'DEVITA BELINDA SHATRANI', 'S3 USTMAN', 0),
(209, '6059ea', 'DHAFIN FARD AFIF YANFADINU', 'S3 USTMAN', 0),
(210, '5a526f', 'HANA FEBRIANI EFFENDY', 'S3 USTMAN', 0),
(211, '222580', 'M. IZZA RAMADHAN ARRAYYAN', 'S3 USTMAN', 0),
(212, '117794', 'M. SALMAN AL-FARISI DZAKY', 'S3 USTMAN', 0),
(213, 'b2e340', 'M. ZAKI BARRIDIEN', 'S3 USTMAN', 0),
(214, '7e70a7', 'MUHAMMAD SATURA TIRTAATMADJA', 'S3 USTMAN', 0),
(215, 'f01949', 'NAJMA ZAHIRA LAYALIA MARSYAFATHANYA', 'S3 USTMAN', 0),
(216, 'c01f94', 'RAISYA YULIA TRIANANDA', 'S3 USTMAN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_kandidat`
--

CREATE TABLE IF NOT EXISTS `master_kandidat` (
  `id` int(11) NOT NULL,
  `nama_kandidat` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE IF NOT EXISTS `master_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 1),
(2, 'root', 'root', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_vote`
--

CREATE TABLE IF NOT EXISTS `master_vote` (
  `id` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `hasil_vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pemilih`
--
ALTER TABLE `data_pemilih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kandidat`
--
ALTER TABLE `master_kandidat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_vote`
--
ALTER TABLE `master_vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pemilih`
--
ALTER TABLE `data_pemilih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `master_kandidat`
--
ALTER TABLE `master_kandidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_vote`
--
ALTER TABLE `master_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
