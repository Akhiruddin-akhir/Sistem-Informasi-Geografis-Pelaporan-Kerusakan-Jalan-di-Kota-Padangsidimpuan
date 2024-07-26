-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 07:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelaporan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '1'),
(2, '1', 'c4ca4238a0b923820dcc509a6f75849b'),
(3, 'adminn', 'adminn');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cluster`
--

CREATE TABLE `tb_cluster` (
  `id_cluster` int(100) NOT NULL,
  `cluster` varchar(100) NOT NULL,
  `marker` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cluster`
--

INSERT INTO `tb_cluster` (`id_cluster`, `cluster`, `marker`) VALUES
(1, 'Rusak Ringan', 'kuning.png'),
(2, 'Rusak Sedang', 'hijau.png'),
(3, 'Rusak Berat', 'merah.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `id_kecamatan` int(100) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`id_kecamatan`, `kode`, `nama_kecamatan`) VALUES
(1, '35.07.25', 'Padangsidimpuan Angkola Julu'),
(2, '35.07.24', 'Padangsidimpuan Batunadua'),
(3, '35.07.23', 'Padangsidimpuan Hutaimbaru'),
(4, '35.07.22', 'Padangsidimpuan Selatan'),
(5, '35.07.26', 'Padangsidimpuan Tenggara'),
(6, '35.07.27', 'Padangsidimpuan Utara');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerusakan`
--

CREATE TABLE `tb_kerusakan` (
  `id_kerusakan` int(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `id_cluster` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kerusakan`
--

INSERT INTO `tb_kerusakan` (`id_kerusakan`, `jenis`, `id_cluster`) VALUES
(1, 'Retak Memanjang', 1),
(2, 'Retak Melintang', 1),
(3, 'Retak Tepi', 2),
(4, 'Retak Buaya', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lap`
--

CREATE TABLE `tb_lap` (
  `id_laporan` int(100) NOT NULL,
  `pelapor` varchar(100) NOT NULL,
  `nik` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `id_kecamatan` int(100) NOT NULL,
  `id_kerusakan` int(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'BELUM DIPROSES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_lap`
--

INSERT INTO `tb_lap` (`id_laporan`, `pelapor`, `nik`, `email`, `telepon`, `lokasi`, `id_kecamatan`, `id_kerusakan`, `keterangan`, `tanggal`, `latitude`, `longitude`, `gambar`, `status`) VALUES
(42, 'Akhiruddin Hasibuan', 1247, 'dada@gmainodaj', '0873129837198', 'jalan simpang rimbasoping', 1, 1, 'retak panjang sekali', '2023-11-24 08:33:39', '1.4466596475412334', '99.26680684089662', 'retak_buaya111.jpg', 'VALID'),
(43, 'amri', 21131231, 'akhiruddinhasibuan17@gmail.com', '+6285362260429', 'jalan baru', 1, 3, 'dqdqdqdq', '2023-11-24 08:37:33', '1.4425233199182566', '99.2664957046509', 'retak_buayaa11.jpg', 'VALID'),
(45, 'alwi hasibuan', 2147483647, 'author@author.com', '064926426942', 'jalan kenanga wek 1', 6, 2, 'jalan retak bertambah', '2023-11-24 09:23:22', '1.3700182374005694', '99.27336215972902', 'retak_buaya_(1)12.jpg', 'SUDAH DIPERBAIKI'),
(46, 'alwi hasibuan', 2147483647, 'dada@gmainodaj', '0873129837198', 'jln. aek tampang', 4, 1, 'retaknya bertambah', '2023-11-24 09:28:08', '1.3735362870770598', '99.27610874176027', 'retak_buaya_(1)14.jpg', 'BELUM DIPROSES'),
(47, 'akmal ', 34763628, 'dada@gmainodaj', '0873129837198', 'jalan baruas', 2, 2, 'retak bertambah terus akan amblas', '2023-11-24 09:31:14', '1.4107758098069048', '99.29447650909424', 'retak_buaya_(1)31.jpg', 'VALID'),
(49, 'akhir', 23617263, 'akhiruddinhb1@gmail.com', '082183580394', 'jl. palopat maria', 3, 2, 'retak memanjang', '2023-11-24 09:37:44', '1.401508886898803', '99.23817157745363', 'retak_buaya_(1)15.jpg', 'VALID'),
(50, 'Abdi', 78, 'abdi@gmail.com', '89', 'jl.munawwarah', 2, 3, 'waw', '2023-11-25 16:18:58', '1.40569656994183', '99.29981946945192', 'retak_buaya_(1)141.jpg', 'SUDAH DIPERBAIKI'),
(51, 'andre', 2147483647, 'author@author.com', '064926426942', 'jalan hutaimbaru', 3, 2, 'rusak berair', '2023-11-27 02:25:46', '1.401766301920311', '99.23842906951906', 'retak_buaya9.jpg', 'TIDAK VALID'),
(52, 'akhiruddin hasibuan', 2147483647, 'akhiruddinhb1@gmail.com', '082183580394', 'jalan Imam bonjol', 4, 1, 'retak memanjang', '2023-12-20 03:47:37', '1.3616092197057128', '99.28640842437746', 'retak_buaya_(1)51.jpg', 'SURVEY');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruas`
--

CREATE TABLE `tb_ruas` (
  `id_ruas` int(100) NOT NULL,
  `id_kecamatan_ruas` int(100) NOT NULL,
  `nama_ruas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ruas`
--

INSERT INTO `tb_ruas` (`id_ruas`, `id_kecamatan_ruas`, `nama_ruas`) VALUES
(1, 1, 'Joring Natobang - Joring Lombang'),
(2, 1, 'Joring Natobang - Rimba Soping'),
(3, 1, 'Batu Layan - Joring Lombang'),
(4, 1, 'Pintu Langit - Joring Natobang'),
(5, 1, 'Poken Jior - Mompang'),
(6, 1, 'Mompang - Rimba Soping'),
(7, 2, 'Batunadua Julu'),
(8, 2, 'Batunadua Jae'),
(9, 2, 'Purwodadi - Baruas'),
(10, 2, 'Ujung Gurap'),
(11, 2, 'Pudun Julu'),
(12, 2, 'Pudun Jae'),
(13, 3, 'Palopat Maria'),
(14, 3, 'Batu Layang - Sabungan'),
(15, 3, 'Siharang Karang'),
(16, 3, 'Lubuk Raya'),
(17, 4, 'Wek V'),
(18, 4, 'Aek Tampang'),
(19, 4, 'Padang Matinggi'),
(20, 4, 'Wek VI'),
(21, 4, 'Losung Batu'),
(22, 4, 'Silandit'),
(23, 5, 'Padangmatinggi - sihitang'),
(24, 5, 'sihitang'),
(25, 5, 'Palopat Pijor Koling\r\n'),
(26, 5, 'Salambue'),
(27, 5, 'Manunggang'),
(28, 5, 'Manegen'),
(29, 5, 'Labuhan Labo'),
(30, 5, 'Labuhan Rasoki\r\n'),
(31, 6, 'Panyanggar'),
(32, 6, 'Kayu Ombun'),
(33, 6, 'Bincar'),
(34, 6, 'Tanobato - Tobat'),
(35, 6, 'Wek I'),
(36, 6, 'Sadabuan - Sitataring'),
(37, 6, 'Simarsayang'),
(38, 6, 'Batang Ayumi '),
(39, 6, 'Wek II'),
(40, 6, 'Wek III'),
(41, 6, 'Wek IV'),
(42, 3, 'partihaman saroha\r\n'),
(43, 6, 'Sadabuan'),
(44, 6, 'Sitataring'),
(45, 6, 'Bonan Dolok');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `status`) VALUES
(0, 'BELUM DIPROSES'),
(1, 'VALID'),
(2, 'SURVEY'),
(3, 'TIDAK VALID'),
(4, 'SUDAH DIPERBAIKI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_valid`
--

CREATE TABLE `tb_valid` (
  `id_valid` int(100) NOT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  `id_ruas` int(100) DEFAULT NULL,
  `dari` varchar(100) NOT NULL,
  `ke` varchar(100) NOT NULL,
  `lebar` int(100) NOT NULL,
  `luas` int(100) NOT NULL,
  `id_kerusakan` int(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `id_cluster` int(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'VALID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_valid`
--

INSERT INTO `tb_valid` (`id_valid`, `id_kecamatan`, `id_ruas`, `dari`, `ke`, `lebar`, `luas`, `id_kerusakan`, `latitude`, `longitude`, `id_cluster`, `status`) VALUES
(343, 1, 6, '200', '300', 3, 3, 2, '1.4466596475412334', '99.26680684089662', 0, 'VALID'),
(344, 1, 1, '500', '800', 4, 4, 3, '1.4425233199182566', '99.2664957046509', 0, 'VALID'),
(345, 4, 17, '500', '800', 4, 4, 3, '1.3703876060451603', '99.27857637405397', 0, 'VALID'),
(347, 4, 17, '400', '600', 3, 3, 3, '1.3700182374005694', '99.27336215972902', 0, 'SUDAH DIPERBAIKI'),
(348, 4, 17, '400', '600', 2, 2, 3, '1.3735362870770598', '99.27610874176027', 0, 'SUDAH DIPERBAIKI'),
(349, 2, 7, '400', '600', 3, 2, 3, '1.4107758098069048', '99.29447650909424', 0, 'VALID'),
(350, 2, 7, '400', '600', 3, 3, 2, '1.4103729300266779', '99.29458379745485', 0, 'SUDAH DIPERBAIKI'),
(351, 2, 7, '400', '600', 2, 3, 3, '1.4103729300266779', '99.29458379745485', 0, 'SUDAH DIPERBAIKI'),
(352, 2, 7, '400', '600', 3, 3, 4, '1.4103729300266779', '99.29458379745485', 0, 'SUDAH DIPERBAIKI'),
(353, 3, 13, '400', '600', 2, 3, 2, '1.401508886898803', '99.23817157745363', 0, 'SUDAH DIPERBAIKI'),
(354, 2, 7, '400', '600', 2, 1, 3, '1.40569656994183', '99.29981946945192', 0, 'SUDAH DIPERBAIKI'),
(355, 6, 33, '0', '200', 2, 2, 2, '1.3881830123425811', '99.26956951618195', 0, 'VALID'),
(356, 6, 33, '200', '400', 2, 2, 2, '1.3867441777222997', '99.27055120468141', 0, 'VALID'),
(357, 6, 34, '200', '400', 1, 1, 2, '1.390375325035981', '99.26747202873231', 0, 'VALID'),
(364, 6, 34, '400', '600', 1, 1, 2, '1.3930104883995102', '99.26686048507692', 0, 'VALID'),
(365, 6, 34, '600', '800', 2, 2, 3, '1.3951056791464087', '99.26598072052003', 0, 'VALID'),
(366, 6, 34, '800', '1000', 2, 2, 2, '1.3965000139799038', '99.26469326019289', 0, 'VALID'),
(367, 6, 34, '1000', '1200', 2, 2, 2, '1.397920156564556', '99.26351308822633', 0, 'VALID'),
(368, 6, 43, '0', '200', 1, 1, 2, '1.3919566915492019', '99.25293445587158', 0, 'VALID'),
(369, 6, 45, '200', '400', 2, 2, 2, '1.3980974648420705', '99.26549792289734', 0, 'VALID'),
(370, 6, 45, '600', '800', 2, 2, 3, '1.398193995618886', '99.26639914512636', 0, 'VALID'),
(371, 6, 35, '200', '400', 1, 1, 1, '1.3870014267693733', '99.26715552806856', 0, 'VALID'),
(372, 6, 35, '200', '340', 2, 3, 2, '1.3828809137544082', '99.26502048969269', 0, 'VALID'),
(373, 6, 43, '0', '200', 2, 2, 2, '1.3976573782987864', '99.25117492675781', 0, 'VALID'),
(374, 6, 43, '200', '300', 2, 2, 2, '1.396981662623224', '99.25111055374147', 0, 'VALID'),
(375, 6, 45, '0', '200', 1, 1, 2, '1.3981088608367567', '99.26647424697877', 0, 'VALID'),
(376, 6, 45, '200', '400', 1, 1, 2, '1.397089254269106', '99.26735401153566', 0, 'VALID'),
(377, 6, 45, '400', '600', 2, 2, 3, '1.3960810432634716', '99.26782608032228', 0, 'VALID'),
(378, 4, 17, '0', '200', 2, 2, 3, '1.3811612799603246', '99.27401661872865', 0, 'VALID'),
(379, 4, 17, '200', '300', 2, 2, 2, '1.3811451913817627', '99.27282571792603', 0, 'VALID'),
(380, 4, 17, '0', '200', 2, 3, 2, '1.3773053808544728', '99.2734318971634', 0, 'VALID'),
(381, 2, 10, '0', '200', 2, 2, 3, '1.403041980632567', '99.30416464805604', 0, 'VALID'),
(382, 1, 1, '0', '200', 2, 2, 3, '1.4507111699530524', '99.2529720067978', 0, 'VALID'),
(383, 1, 1, '200', '400', 2, 2, 4, '1.449300779783453', '99.25244629383087', 0, 'VALID'),
(384, 1, 1, '400', '600', 2, 2, 1, '1.4475203620414216', '99.25202786922456', 0, 'VALID'),
(385, 1, 1, '600', '800', 2, 2, 2, '1.4463522973076302', '99.25132513046266', 0, 'VALID'),
(386, 1, 1, '800', '1000', 2, 2, 3, '1.4446191361601377', '99.25065457820892', 0, 'VALID'),
(387, 3, 13, '600', '800', 1, 2, 2, '1.401766301920311', '99.23842906951906', 0, 'VALID'),
(388, 4, 17, '200', '300', 2, 2, 2, '1.3616092197057128', '99.28640842437746', 0, 'SUDAH DIPERBAIKI'),
(389, 2, 7, '400', '600', 2, 3, 1, '1.4125777072045522', '99.29001331329347', 0, 'VALID');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_cluster`
--
ALTER TABLE `tb_cluster`
  ADD PRIMARY KEY (`id_cluster`);

--
-- Indexes for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  ADD PRIMARY KEY (`id_kerusakan`),
  ADD KEY `id_cluster` (`id_cluster`);

--
-- Indexes for table `tb_lap`
--
ALTER TABLE `tb_lap`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tb_ruas`
--
ALTER TABLE `tb_ruas`
  ADD PRIMARY KEY (`id_ruas`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tb_valid`
--
ALTER TABLE `tb_valid`
  ADD PRIMARY KEY (`id_valid`),
  ADD KEY `id_kerusakan` (`id_kerusakan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_cluster`
--
ALTER TABLE `tb_cluster`
  MODIFY `id_cluster` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `id_kecamatan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  MODIFY `id_kerusakan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_lap`
--
ALTER TABLE `tb_lap`
  MODIFY `id_laporan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tb_ruas`
--
ALTER TABLE `tb_ruas`
  MODIFY `id_ruas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_valid`
--
ALTER TABLE `tb_valid`
  MODIFY `id_valid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  ADD CONSTRAINT `tb_kerusakan_ibfk_1` FOREIGN KEY (`id_cluster`) REFERENCES `tb_cluster` (`id_cluster`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
