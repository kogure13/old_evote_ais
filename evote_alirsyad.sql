-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2015 at 11:58 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evote_alirsyad`
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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemilih`
--

INSERT INTO `data_pemilih` (`id`, `no_reg`, `nama_peserta`, `kelas`, `status_vote`) VALUES
(26, 'b6d494', 'a gunawan triwijaya', 'guru ', 1),
(27, 'baf23c', 'dendi', 'guru ', 0),
(28, 'ab4302', 'yetti', 'guru ', 0),
(29, 'd9ac1f', 'firda', 'guru ', 1),
(30, '389225', 'rudi', 'guru ', 0),
(31, '122c2c', 'idan', 'guru ', 0),
(32, 'a47993', 'fikri', 'guru ', 0),
(33, '9f05c7', 'wiwik', 'guru ', 0),
(34, 'dc080d', 'winny', 'guru ', 0),
(35, 'f6109e', 'heri', 'guru ', 0),
(59, '4d7e53', 'ALIFIA PUTRI AZZAHRA', 'S1 Utsman', 0),
(60, '3f896c', 'ALVIN ANDRIANTO', 'S1 Utsman', 0),
(61, '839dfe', 'ANGGITA RIZKIKA ANGGRAENI P', 'S1 Utsman', 0),
(62, '00f980', 'ANJELITA RAHMANIAR SYAH', 'S1 Utsman', 0),
(63, 'c2e68d', 'ARIMBI CHANDRA OKTAVIA', 'S1 Utsman', 0),
(64, '2336be', 'ATHA RIADI BISMA', 'S1 Utsman', 0),
(65, '211394', 'AURYN ADHWA TERTIA', 'S1 Utsman', 0),
(66, '89460f', 'DAFFA MUJAHID', 'S1 Utsman', 0),
(67, 'f3886f', 'DEA ALVINDHA', 'S1 Utsman', 0),
(68, '89ebf4', 'DESTIA NUR FITRIANI', 'S1 Utsman', 0),
(69, 'c8ca16', 'DEVITA BELINDA SHATRANI', 'S1 Utsman', 0),
(70, '963ac7', 'DHAFIN FARD AFIF YANFADINU', 'S1 Utsman', 0),
(71, '2977ff', 'M. IZZA RAMADHAN ARRAYYAN', 'S1 Utsman', 0),
(72, 'c74bdf', 'M. SALMAN AL-FARISI DZAKY', 'S1 Utsman', 0),
(73, '2f1770', 'M. ZAKI BARRIDIEN', 'S1 Utsman', 0),
(74, '4de20e', 'MUHAMMAD SATURA TIRTAATMADJA', 'S1 Utsman', 0),
(75, 'db2455', 'NAILA PUTRI ANDINI', 'S1 Utsman', 0),
(76, '18649f', 'NAJMA ZAHIRA LAYALIA MARSYAFATHANYA', 'S1 Utsman', 0),
(77, 'fa4377', 'ZAKIYYA ZAHRA KAMILA', 'S1 Utsman', 0),
(78, 'b721c8', 'AISHA NAJLA SAFINA', 'S1 Ali', 0),
(79, 'e9d04a', 'ALETA ZAFIRA SHAFIQ', 'S1 Ali', 0),
(80, 'a4f4bd', 'ANGELA PUTRIRURI', 'S1 Ali', 0),
(81, '28fd39', 'ARNETTA ZAHRA ZAFIRA', 'S1 Ali', 0),
(82, '80b986', 'AZKA GHISYANI', 'S1 Ali', 0),
(83, 'e04102', 'DAFFA RIFQI FARGHANI', 'S1 Ali', 0),
(84, 'd5789a', 'DEWI NAZWA ANDINI', 'S1 Ali', 0),
(85, '817274', 'FARIZY RAFI HERIYANTO', 'S1 Ali', 0),
(86, '5bf611', 'FAURIZA AKBAR', 'S1 Ali', 0),
(87, 'd1d0d1', 'KALYA DIVA MARSHANDA', 'S1 Ali', 0),
(88, '4d4c88', 'KARIM HABIBI', 'S1 Ali', 0),
(89, 'b4c950', 'LISHA ADZANTA FIRMANSYAH', 'S1 Ali', 0),
(90, 'cdb54b', 'MOCH. NAUFAL AL FARRA', 'S1 Ali', 0),
(91, '9430e2', 'MOHAMMAD AGIEL ABRAARI', 'S1 Ali', 0),
(92, 'eab40b', 'MUHAMMAD FARREL RAJA AGUNG', 'S1 Ali', 0),
(93, '811492', 'NADIRA GHITA SUDARYANTO', 'S1 Ali', 0),
(94, '38cb91', 'PUTRA SANDY WASISTHA ALBY', 'S1 Ali', 0),
(95, '6fe179', 'RAFLI RISMANSYAH STIAWAN', 'S1 Ali', 0),
(96, '3eeab7', 'SITI FATIMAH ALIYA SUNARTO', 'S1 Ali', 0),
(97, '9b0f91', 'ZAHRA SHAFURA KHALIQOH', 'S1 Ali', 0),
(98, 'c197ac', 'ADRIEEL ARTHUR RIZKY WIJAYA', 'S2 Thalhah', 0),
(99, 'f34097', 'ADZKA AHMADETYA ZAIDAN', 'S2 Thalhah', 0),
(100, 'd935a1', 'AGHNIYA AURELIE ZAHRA NISYA', 'S2 Thalhah', 0),
(101, 'cf3f07', 'ANGGITA FATIHA RAHMA', 'S2 Thalhah', 0),
(102, 'd6f52d', 'ANINDITA ZHAFIRA PUTRI IRWANSYAH', 'S2 Thalhah', 0),
(103, '40bb73', 'BRYAN MAULANA WIDI AKBAR', 'S2 Thalhah', 0),
(104, '583322', 'FAWAZ MUHAMMAD', 'S2 Thalhah', 0),
(105, '7e4e71', 'JASMINE BTARI PRAMESTHI', 'S2 Thalhah', 0),
(106, '363104', 'KAKA SATRIYA BIJAKSANA', 'S2 Thalhah', 0),
(107, '41cb24', 'MUHAMMAD HANIEF FAUZAN', 'S2 Thalhah', 0),
(108, 'b7d7b3', 'MUHAMMAD NAUFAL ANSHORI ABDUSYAHID', 'S2 Thalhah', 0),
(109, '7d9641', 'MUHAMMAD RAZAN AL-KHAWARIZMI', 'S2 Thalhah', 0),
(110, '379b78', 'MUHAMMAD SAVIO QALBY VANIDA PUTRA', 'S2 Thalhah', 0),
(111, 'aeca1c', 'MUHAMMAD ZAYNAL AMRU', 'S2 Thalhah', 0),
(112, 'fd8fe1', 'MURSYIDA KAMILAH', 'S2 Thalhah', 0),
(113, 'a40c95', 'NABEL RIZQI OURFALY', 'S2 Thalhah', 0),
(114, 'd2c1f7', 'NASWA DHIYA PRAMESWARI', 'S2 Thalhah', 0),
(115, 'a37f19', 'QUINNASYA ALOVENDA', 'S2 Thalhah', 0),
(116, 'f27473', 'R SALMAA AULIFYA SALSABIIL', 'S2 Thalhah', 0),
(117, 'aa2f9f', 'RADEN SJORA OKALANI', 'S2 Thalhah', 0),
(118, 'f00d2c', 'RAIHAN ATSAL HAFIZH', 'S2 Thalhah', 0),
(119, 'e8441e', 'RATU ADELINE', 'S2 Thalhah', 0),
(120, 'd1a329', 'SYAFIQA SALMA HANINDYARI', 'S2 Thalhah', 0),
(121, '5ac4a2', 'ADITYA RAMADHANI', 'S2 Zubair', 0),
(122, '8bea09', 'ALIYYA DIVANIA', 'S2 Zubair', 0),
(123, '754465', 'ATHAR AL-GHIFARY', 'S2 Zubair', 0),
(124, '225faf', 'AULIA AZMI MUSYAFFA', 'S2 Zubair', 0),
(125, '86847c', 'AZELLA GANIA MUTYARA', 'S2 Zubair', 0),
(126, '81992f', 'DHANESWARA ARDRA NAYANATAMA', 'S2 Zubair', 0),
(127, 'b0f12b', 'EMMYR FA''IQ FATHURACHMAN', 'S2 Zubair', 0),
(128, 'efd860', 'ERVITA TRIANI RAHMAWATI', 'S2 Zubair', 0),
(129, '9e6631', 'GHIFAR NAZHIF MUMTAZ', 'S2 Zubair', 0),
(130, 'c25884', 'HAPPY ANDROMEDA KRIDA', 'S2 Zubair', 0),
(131, '666656', 'KEVIN AZHAR SYAUTA', 'S2 Zubair', 0),
(132, '7d6330', 'KHAIRUNNISA TYAS UTAMI', 'S2 Zubair', 0),
(133, 'da5d73', 'KHALYLAH SALWA NAFISAH', 'S2 Zubair', 0),
(134, 'f1e65c', 'NADHIRA NURUL AZKA', 'S2 Zubair', 0),
(135, 'c21a71', 'RADEN DONNY BERBUDI WIBOWO', 'S2 Zubair', 0),
(136, '32d620', 'RAFI AKBAR SURYANA', 'S2 Zubair', 0),
(137, 'aed14b', 'RAIHAN ANWAR WIDJAJA', 'S2 Zubair', 0),
(138, '7bd6cb', 'RAVELINO DAISUKE PUTRA', 'S2 Zubair', 0),
(139, '857d86', 'RIZALDY FAISAL FAHMI', 'S2 Zubair', 0),
(140, '33a258', 'SALIKHA TSAMRATUL QALBI', 'S2 Zubair', 0),
(141, '46c997', 'SYAHAZNA BALQIS RENZAPUTRI', 'S2 Zubair', 0),
(142, 'bbb826', 'THAUFAN ZULFA HIRAWAN', 'S2 Zubair', 0),
(143, '03a996', 'WAHYU RIFKI ADITAMA', 'S2 Zubair', 0),
(144, '5b5133', 'ZAHRA AYUNINGTYAS', 'S2 Zubair', 0),
(145, 'a8e086', 'ALYA ZAKIYYAH', 'S2 Saad', 0),
(146, 'b4034b', 'ANNISA ZAHRA SAFARANI', 'S2 Saad', 0),
(147, '1825fc', 'ATHAYA NATASYA RUAIDA UNO', 'S2 Saad', 0),
(148, 'd1eb98', 'BIMA AADIYATMAJA BENTAL JEMUR', 'S2 Saad', 0),
(149, 'ac9c14', 'DEVANO SYAFA ADRIAN', 'S2 Saad', 0),
(150, 'ca5768', 'FADIL FAITHUL AZHAN', 'S2 Saad', 0),
(151, '660c8a', 'FASYA NUR AINI AGUSTIN', 'S2 Saad', 0),
(152, 'ae652e', 'FAVIAN REZKI ADITYA', 'S2 Saad', 0),
(153, '0ecb7c', 'GHAFIKI KEYSHA FIRDAUS', 'S2 Saad', 0),
(154, '4e6ea6', 'JASMINE NUR MAHARANI', 'S2 Saad', 0),
(155, '5fe233', 'KARINI AYU FATIMAH SABRINA', 'S2 Saad', 0),
(156, '4dea7d', 'M FARIS GHIYATS BUNGARAN HUTAGALUNG', 'S2 Saad', 0),
(157, '73c12e', 'MUHAMMAD RASYAD PUTRA MAHESA', 'S2 Saad', 0),
(158, 'e70103', 'MUHAMMAD SHIDDIQ AL-FATHURY', 'S2 Saad', 0),
(159, '4132ca', 'NAUFAL IQBAL', 'S2 Saad', 0),
(160, '71eb69', 'RAIHANA JASMINE SULE', 'S2 Saad', 0),
(161, '8bbbaa', 'RAJENDRA AKMALULFATIR KUSMAYADI', 'S2 Saad', 0),
(162, '3af05b', 'RHENALDY DWIKY FIKRIANSYAH', 'S2 Saad', 0),
(163, 'd53893', 'SALMA RISANTI', 'S2 Saad', 0),
(164, '0a1dd7', 'SAVANNA FRANSISCA SYLVIA MANUEL', 'S2 Saad', 0),
(165, '68f417', 'SHAQUILLE JAVIER JA''AFAR', 'S2 Saad', 0),
(166, '5c701f', 'SHARLEEN WILONA', 'S2 Saad', 0),
(167, 'b8a1ff', 'SUHAIL KHALID ASSHIDDIQ', 'S2 Saad', 0),
(168, 'cb3546', 'TRAFATONI DIO RIVALDI', 'S2 Saad', 0),
(169, '60c128', 'AAQILA DHIYAANISAFA GOENAWAN', 'S3 Said', 0),
(170, '195d3a', 'ALIF FAJAR RAMADHAN', 'S3 Said', 0),
(171, 'e9b882', 'ANDINI SABRINA SYAH', 'S3 Said', 0),
(172, '489d48', 'ARFANDI PARASATYA SANTOSA', 'S3 Said', 0),
(173, '4de0c7', 'ARYADIEPA SAHADEWA SIKKEN', 'S3 Said', 0),
(174, '2f76c7', 'AULIA MARISSA', 'S3 Said', 0),
(175, '4f3df1', 'AZKA AGHNIYA', 'S3 Said', 0),
(176, 'd4d237', 'CLEMENT PUTRARURI', 'S3 Said', 0),
(177, '0acdbd', 'CUT FAHRANI DHANIA', 'S3 Said', 0),
(178, '6cbc1f', 'INDIRA AMARA MAHARANI', 'S3 Said', 0),
(179, '695ae5', 'KAUTSAR MARCHEL TOAR SUGIYARNO', 'S3 Said', 0),
(180, '1642a8', 'MUHAMMAD FADHIL MUHARRAM', 'S3 Said', 0),
(181, 'ab8737', 'NAUVAL FADDLURAHMAN PRANANTA', 'S3 Said', 0),
(182, 'bd2ac4', 'NAWWAF BIN AHMAD HAIRUDDIN MURTANI', 'S3 Said', 0),
(183, 'b73355', 'PRETTY RACHMAWATI', 'S3 Said', 0),
(184, '962d11', 'RAFI AQILA DARMAWAN ', 'S3 Said', 0),
(185, '092459', 'RAISHA NUR SEPTIANI', 'S3 Said', 0),
(186, '4d602b', 'TRISHA FAUZIAH ZAHRA', 'S3 Said', 0),
(187, 'b1da48', 'ALFRI ILHAM IRMADHI', 'S3 Abdurrahman', 0),
(188, 'c2a353', 'ALIFIA TEDY', 'S3 Abdurrahman', 0),
(189, 'c966fe', 'ANDREA SALSABILA SAPTADJI', 'S3 Abdurrahman', 0),
(190, 'f0aa90', 'ASRIFA ZAHRAH RAMADHANTI KUSUMAH', 'S3 Abdurrahman', 0),
(191, '66fdcd', 'ESTRELLA BELLA SURASETJA', 'S3 Abdurrahman', 0),
(192, '1960c5', 'FAHMI ADYAN ABDURRAHMAN', 'S3 Abdurrahman', 0),
(193, 'bd1558', 'HAIKAL YUSUF HAKIM', 'S3 Abdurrahman', 0),
(194, 'df2364', 'HANZHA AULIYA ARYASTYA', 'S3 Abdurrahman', 0),
(195, '8f8bbf', 'HASNA KAMILA', 'S3 Abdurrahman', 0),
(196, '623411', 'HITOMI ALEXANDRA', 'S3 Abdurrahman', 0),
(197, '4daae7', 'LIONNANDA DHEDI WIRANTO', 'S3 Abdurrahman', 0),
(198, '105f8b', 'MOCHAMAD ARDAN GUNAWAN', 'S3 Abdurrahman', 0),
(199, 'e2a029', 'MUHAMAD ADAM PALMALEO', 'S3 Abdurrahman', 0),
(200, '12c88d', 'MUHAMAD FAZA BILHAQ', 'S3 Abdurrahman', 0),
(201, '704d00', 'MUHAMMAD SAKTI HERIYADI', 'S3 Abdurrahman', 0),
(202, '58d950', 'MUHAMMAD ZAKI FAHLEVI', 'S3 Abdurrahman', 0),
(203, '962f4f', 'NURUL RAHMI MELIA PUTRI', 'S3 Abdurrahman', 0),
(204, 'c01de6', 'RADEN NAUFAL NURSATRIA KUSUMAWARDANA', 'S3 Abdurrahman', 0),
(205, '4dc75e', 'TASYA APRILIA EFFENDY', 'S3 Abdurrahman', 0),
(206, '56b364', 'AMIRA ATMARIANI', 'S3 Abu Ubaidah', 0),
(207, 'a6de56', 'FAUZAN AHMAD KURNIA PRAKOSO', 'S3 Abu Ubaidah', 0),
(208, '2dc1c0', 'HASNA KAMILIA', 'S3 Abu Ubaidah', 0),
(209, 'f8c66e', 'HAURA ATHA ZHAFIRA', 'S3 Abu Ubaidah', 0),
(210, '87ea8f', 'MAHIZAR RIZKI BAKTI SUNDARA', 'S3 Abu Ubaidah', 0),
(211, '8ac1b2', 'MUHAMMAD AGUNG LAKSANA', 'S3 Abu Ubaidah', 0),
(212, '8c1a91', 'MUHAMMAD DANDY ARDIANSYAH', 'S3 Abu Ubaidah', 0),
(213, 'bd2f41', 'NABILA ALIVIA YASMIN', 'S3 Abu Ubaidah', 0),
(214, 'bbdbaa', 'RADHITYO DAFFA RASENDRIYA', 'S3 Abu Ubaidah', 0),
(215, '8a250b', 'RICO ANTHONY MANUEL', 'S3 Abu Ubaidah', 0),
(216, '5a0a13', 'SARAH AZAHRA', 'S3 Abu Ubaidah', 0),
(217, 'b2ac5d', 'SATRIA ADHY NAYOGA', 'S3 Abu Ubaidah', 0),
(218, 'ec9182', 'SEFIYA SERBEENA', 'S3 Abu Ubaidah', 0),
(219, '247559', 'SIFA AULIA ZAHRA BURHANUDIN', 'S3 Abu Ubaidah', 0),
(220, 'abcede', 'STEPHEN DICKINSON', 'S3 Abu Ubaidah', 0),
(221, '1085fc', 'SYAUQI AQIL MUKAARIM', 'S3 Abu Ubaidah', 0),
(222, 'b2e0f0', 'TRI CAHYO DARWANTO', 'S3 Abu Ubaidah', 0),
(225, '30dd91', '', '', 1),
(226, '8dbb21', 'ANNEIRA AUDREY', 'S1 umar', 0),
(227, '0bce24', 'ASHIFA NURUL ILMI', 'S1 umar', 0),
(228, 'f07a6d', 'BAGEA ALIFA', 'S1 umar', 0),
(229, '451913', 'GIVENDA VALENDRA SIDIQ', 'S1 umar', 0),
(230, 'e92b40', 'HAFIDZ AKBAR PRATAMA', 'S1 umar', 0),
(231, '95b279', 'HANA NADIA ISKANDAR', 'S1 umar', 0),
(232, '031f0a', 'LAURA LATIFA', 'S1 umar', 0),
(233, '06d077', 'M. ZAIDAN MAJID DARAJAT', 'S1 umar', 0),
(234, '50130d', 'MARCO ALEXANDER', 'S1 umar', 0),
(235, '9dfdef', 'MAZAYA SHAFA ALYKA RACHMAWAN', 'S1 umar', 0),
(236, 'c67e8a', 'MOCHAMMAD FARHAN PUTRA ANDRA', 'S1 umar', 0),
(237, 'ccbdba', 'NAIRA CINDY WIDI HAMIDAH', 'S1 umar', 0),
(238, 'b05680', 'NUR ALIIFA BINTI MUHAMAD RANI', 'S1 umar', 0),
(239, '29b2b8', 'PRIMA MADA SALSABILLA', 'S1 umar', 0),
(240, 'edf8e1', 'PUTRI AZZAHRA HARYANTO', 'S1 umar', 0),
(241, '6fa04a', 'RADITHYA FATHI DANADYAKSA', 'S1 umar', 0),
(242, '9f5545', 'RASYA ANIDA SABILA HASTUTI', 'S1 umar', 0),
(243, 'f5af6b', 'RENDY GUNAWAN', 'S1 umar', 0),
(244, '2b7505', 'SEPTIANSYAH NADWI ADLI NASUTION', 'S1 umar', 0),
(245, '4e9a51', 'YASMIN NABILAH NITISARA', 'S1 umar', 0),
(246, '5324e0', 'ZAHRA ALIYYA RIANTRI', 'S1 umar', 0),
(247, 'f22b52', 'ADIIBAH JUSITA AMUDYANI', 'S1 utsman', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_kandidat`
--

CREATE TABLE IF NOT EXISTS `master_kandidat` (
  `id` int(11) NOT NULL,
  `nama_kandidat` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kandidat`
--

INSERT INTO `master_kandidat` (`id`, `nama_kandidat`, `foto`) VALUES
(1, 'kandidat 1', 'upload/dd350f.png'),
(2, 'kandidat 2', 'upload/89c98d.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_vote`
--

INSERT INTO `master_vote` (`id`, `id_kandidat`, `hasil_vote`) VALUES
(1, 1, 6),
(2, 2, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `master_kandidat`
--
ALTER TABLE `master_kandidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_vote`
--
ALTER TABLE `master_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
