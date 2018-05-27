-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Bulan Mei 2018 pada 07.18
-- Versi server: 5.7.19
-- Versi PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cod`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(30) NOT NULL,
  `judul` varchar(400) NOT NULL,
  `isi` varchar(5000) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` varchar(200) NOT NULL,
  `id_kategori` int(30) NOT NULL,
  `hitung` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `waktu`, `gambar`, `id_kategori`, `hitung`) VALUES
(1, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '2018-05-27 06:59:23', '01_1527404363.jpg', 1, 6),
(2, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '2018-05-27 07:09:51', '1b643f0aa8efcfbc84e294f9beec150133f66d6241406878fe46d2d4c0c1ddc7_1527404991.jpg', 1, 0),
(3, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '2018-05-27 07:10:07', '39870b0bcd7bb79419a8bdc2bd3105e6a033f956428834c9c0c6bf97981a9124_1527405007.jpg', 3, 0),
(4, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '2018-05-27 07:10:23', '2815331742697a5ca1aefa8fec6afe396f13246f23135638c9e975643d0a71a4_1527405023.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(1500) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` varchar(200) NOT NULL,
  `count` int(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id_blog`, `judul`, `isi`, `waktu`, `gambar`, `count`) VALUES
(40, '1212', '<p>1212</p>\r\n', '2018-02-28 14:57:13', '01_1519829833.jpg', 3),
(41, 'cek', '<p>cek</p>\r\n', '2018-02-28 14:57:23', '01_1519829843.jpg', 1),
(42, 'cek', '<p>cek</p>\r\n', '2018-02-28 14:58:23', '01_1519829903.jpg', 1),
(43, 'as', '<p>as</p>\r\n', '2018-02-28 14:58:30', '01_1519829910.jpg', 1),
(44, 'as', '<p>as</p>\r\n', '2018-02-28 14:59:28', '01_1519829968.jpg', 1),
(45, 'qwert', '<p>q</p>\r\n', '2018-02-28 14:59:41', '01_1519829981.jpg', 1),
(46, 'qwert', '<p>q</p>\r\n', '2018-02-28 15:00:48', '01_1519830048.jpg', 1),
(47, 'qwert', '<p>q</p>\r\n', '2018-02-28 15:02:08', '01_1519830128.jpg', 1),
(48, 'koko', '<p>koko</p>\r\n', '2018-02-28 15:02:30', '01_1519830150.jpg', 1),
(49, '2', '<p>2</p>\r\n', '2018-02-28 15:03:43', '01_1519830223.jpg', 1),
(50, '2', '          2                 ', '2018-02-28 15:04:01', 'Asset 1_1519830241png', 1),
(51, '1', '       1                    ', '2018-02-28 15:05:20', 'Asset 1_1519830320png', 1),
(52, '1', '<p>12</p>\r\n', '2018-02-28 15:06:37', '01_1519830397.jpg', 1),
(53, '14', '<p>1</p>\r\n', '2018-02-28 15:07:08', '01_1519830428.jpg', 1),
(54, '41', '<p>2</p>\r\n', '2018-02-28 15:07:44', '01_1519830464.jpg', 1),
(55, '2', '<p>2</p>\r\n', '2018-02-28 15:09:36', '01_1519830576.jpg', 1),
(56, 'q', '          q                 ', '2018-03-01 10:36:18', '01_1519900578.jpg', 1),
(57, '1', '<p>1</p>\r\n', '2018-03-01 10:42:44', '01_1519900964.jpg', 1),
(58, '1', '<p>1</p>\r\n', '2018-03-01 10:45:58', '01_1519901158.jpg', 1),
(59, 'qw', '<p>qw</p>\r\n', '2018-03-01 10:56:14', '01_1519901774.jpg', 1),
(60, '1', '<p>1</p>\r\n', '2018-03-01 10:56:42', '01_1519901802.jpg', 1),
(61, 'qq', '<p>q</p>\r\n', '2018-03-01 11:03:19', '01_1519902199.jpg', 1),
(62, '1', '<p>1</p>\r\n', '2018-03-01 11:03:28', '01_1519902208.jpg', 1),
(63, '1121212', '<p>1</p>\r\n', '2018-03-01 11:05:22', '01_1519902322.jpg', 1),
(64, '12kokokokokokokokoko', '<p>12</p>\r\n', '2018-03-01 11:05:40', '01_1519902340.jpg', 1),
(65, '1', '<p>1</p>\r\n', '2018-03-01 11:08:02', '01_1519902482.jpg', 1),
(66, 'q', '<p>q</p>\r\n', '2018-03-01 11:08:25', '01_1519902505.jpg', 1),
(67, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:11:52', '01_1519902712.jpg', 1),
(68, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:12:19', '01_1519902739.jpg', 1),
(69, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:14:21', '01_1519902861.jpg', 1),
(70, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:15:24', '01_1519902924.jpg', 1),
(71, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:18:29', '01_1519903109.jpg', 1),
(72, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:18:46', '01_1519903126.jpg', 1),
(73, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:19:16', '01_1519903156.jpg', 1),
(74, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:20:35', '01_1519903235.jpg', 1),
(75, 'qw', '<p>qw</p>\r\n', '2018-03-01 11:20:58', '01_1519903258.jpg', 1),
(76, 'a', '<p>a</p>\r\n', '2018-03-01 11:21:11', '8d76d739735ef83bc369f46fcc715cc8854b1bba17760f0553be1a2b4cb3329c_1519903271.jpg', 1),
(77, 'a', '<p>a</p>\r\n', '2018-03-01 11:22:41', '8d76d739735ef83bc369f46fcc715cc8854b1bba17760f0553be1a2b4cb3329c_1519903361.jpg', 1),
(78, '12', '<p>12</p>\r\n', '2018-03-01 11:23:02', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903382.jpg', 1),
(79, '12', '<p>12</p>\r\n', '2018-03-01 11:23:44', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903424.jpg', 1),
(80, '12', '<p>12</p>\r\n', '2018-03-01 11:24:41', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903481.jpg', 1),
(81, '12', '<p>12</p>\r\n', '2018-03-01 11:26:22', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903582.jpg', 1),
(82, '12', '<p>12</p>\r\n', '2018-03-01 11:27:44', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903664.jpg', 1),
(83, '12', '<p>12</p>\r\n', '2018-03-01 11:28:07', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903687.jpg', 1),
(84, '12', '<p>12</p>\r\n', '2018-03-01 11:28:15', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903695.jpg', 1),
(85, '12', '<p>12</p>\r\n', '2018-03-01 11:28:59', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903739.jpg', 1),
(86, '12', '<p>12</p>\r\n', '2018-03-01 11:33:05', '9fbee1ae8f9bf82f4d0cdb92c36288805e70fea96051a76aa30b4b684dd2e3d8_1519903985.jpg', 1),
(87, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:33:34', '01_1519904014.jpg', 1),
(88, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:36:23', '01_1519904183.jpg', 1),
(89, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:37:33', '01_1519904253.jpg', 1),
(90, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:45:31', '01_1519904731.jpg', 1),
(91, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:45:58', '01_1519904758.jpg', 1),
(92, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:46:47', '01_1519904807.jpg', 1),
(93, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:55:36', '01_1519905335.jpg', 1),
(94, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:56:51', '01_1519905411.jpg', 1),
(95, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:57:07', '01_1519905427.jpg', 1),
(96, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:57:22', '01_1519905442.jpg', 1),
(97, 'qwerty', '<p>12</p>\r\n', '2018-03-01 11:57:47', '01_1519905467.jpg', 1),
(98, 'koko', '<p>koko</p>\r\n', '2018-03-01 12:37:07', '01_1519907827.jpg', 1),
(99, 'henhen lukmana', '<p>koko</p>\r\n', '2018-03-01 13:30:52', '01_1519911052.jpg', 1),
(100, '1', '<p>1</p>\r\n', '2018-03-01 14:53:41', '01_1519916021.jpg', 1),
(101, 'sex', '<p>sex</p>\r\n', '2018-03-01 14:55:38', '01_1519916138.jpg', 1),
(102, 'w', '<p>w</p>\r\n', '2018-03-01 15:05:52', '01_1519916752.jpg', 1),
(103, 'as', '<p>as</p>\r\n', '2018-03-01 15:06:03', '01_1519916763.jpg', 1),
(104, 'zx', '<p>zx</p>\r\n', '2018-03-01 15:06:50', '01_1519916810.jpg', 1),
(105, 'zinah', '<p>zinah</p>\r\n', '2018-03-01 15:10:18', '01_1519917018.jpg', 1),
(106, '90', '<p>90</p>\r\n', '2018-03-01 15:12:13', '01_1519917133.jpg', 1),
(107, 'k', '<p>k</p>\r\n', '2018-03-01 15:14:24', '01_1519917264.jpg', 1),
(108, 'cek', '<p>cek</p>\r\n', '2018-03-01 15:25:41', '01_1519917941.jpg', 1),
(109, 've', '<p>ve</p>\r\n', '2018-03-01 15:30:18', '01_1519918218.jpg', 1),
(110, 'as', '<p>as</p>\r\n', '2018-03-01 15:31:43', '01_1519918303.jpg', 1),
(111, 'as', '<p>as</p>\r\n', '2018-03-01 15:32:30', '01_1519918350.jpg', 1),
(112, 'as', '<p>as</p>\r\n', '2018-03-01 15:39:54', '01_1519918794.jpg', 1),
(113, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:40:09', '01_1519918809.jpg', 1),
(114, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:40:42', '01_1519918842.jpg', 1),
(115, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:41:52', '01_1519918912.jpg', 1),
(116, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:44:20', '01_1519919060.jpg', 1),
(117, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:44:43', '01_1519919083.jpg', 1),
(118, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:45:18', '01_1519919118.jpg', 1),
(119, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:46:05', '01_1519919165.jpg', 1),
(120, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:46:28', '01_1519919188.jpg', 1),
(121, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:46:30', '01_1519919190.jpg', 1),
(122, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:46:54', '01_1519919214.jpg', 1),
(123, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:47:57', '01_1519919277.jpg', 1),
(124, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:47:59', '01_1519919279.jpg', 1),
(125, 'koko', '<p>koko</p>\r\n', '2018-03-01 15:48:18', '01_1519919298.jpg', 1),
(126, 'a', '<p>1212</p>\r\n', '2018-03-01 15:48:37', '01_1519919317.jpg', 1),
(127, '1', '<p>1</p>\r\n', '2018-03-01 15:48:58', '01_1519919338.jpg', 1),
(128, '1', '<p>1</p>\r\n', '2018-03-01 15:51:12', '01_1519919472.jpg', 1),
(129, '1212', '<p>1</p>\r\n', '2018-03-01 15:51:39', '01_1519919499.jpg', 1),
(130, '1212', '<p>1</p>\r\n', '2018-03-01 15:52:14', '01_1519919534.jpg', 1),
(131, '1212', '<p>1</p>\r\n', '2018-03-01 15:57:20', '01_1519919840.jpg', 1),
(132, '1212', '<p>1</p>\r\n', '2018-03-01 16:01:31', '01_1519920091.jpg', 1),
(133, '1212', '<p>1</p>\r\n', '2018-03-01 16:03:16', '01_1519920196.jpg', 1),
(134, 'as', '<p>as</p>\r\n', '2018-03-01 16:03:28', '01_1519920208.jpg', 1),
(135, 'sex', '<p>a</p>\r\n', '2018-03-01 16:04:22', '01_1519920262.jpg', 1),
(136, 'dkqwodqowm', '<p>a</p>\r\n', '2018-03-01 16:06:26', '8d76d739735ef83bc369f46fcc715cc8854b1bba17760f0553be1a2b4cb3329c_1519920386.jpg', 1),
(137, '1212', '<p>1</p>\r\n', '2018-03-01 16:07:41', '01_1519920461.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `komentar` varchar(250) NOT NULL,
  `id_artikel` varchar(250) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_admin`
--

CREATE TABLE `level_admin` (
  `id` int(200) NOT NULL,
  `jenis_admin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level_admin`
--

INSERT INTO `level_admin` (`id`, `jenis_admin`) VALUES
(1, 'super admin'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosial_media`
--

CREATE TABLE `sosial_media` (
  `id_sosmed` int(100) NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `linkedin` varchar(300) NOT NULL,
  `instagram` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sosial_media`
--

INSERT INTO `sosial_media` (`id_sosmed`, `facebook`, `linkedin`, `instagram`) VALUES
(1, 'www.facebook.com/Henzs', 'www.linkedin.com/in/hen-hen-lukmana-310934a7', 'www.instagram.com/koko.dwikaputra/?hl=id'),
(2, 'koko', 'gan', 'teng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `judul_tag` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id_tag`, `judul_tag`) VALUES
(1, 'Cinta'),
(4, 'Hiburan'),
(3, 'Karir'),
(2, 'Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `email`, `status`) VALUES
(1, 'admin', 'admin123', '$2y$10$/SbktbzD9bf8gph9TiaRoOEf7UDqLTWtldLQ3vuRBuogZYkg1QaBy', 'admin@admin.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `level_admin`
--
ALTER TABLE `level_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sosial_media`
--
ALTER TABLE `sosial_media`
  ADD PRIMARY KEY (`id_sosmed`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`),
  ADD UNIQUE KEY `judul_tag` (`judul_tag`) USING BTREE,
  ADD UNIQUE KEY `id_tag` (`id_tag`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sosial_media`
--
ALTER TABLE `sosial_media`
  MODIFY `id_sosmed` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
