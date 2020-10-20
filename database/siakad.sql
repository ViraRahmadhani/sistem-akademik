-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 04:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id_admin` int(2) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_admin`, `nama`, `username`, `password`) VALUES
(1717, 'Admin', 'Admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `username` int(9) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `password`, `level`) VALUES
(1717, '12345', 4),
(5678, '123', 3),
(12312, '245245', 2),
(12355, '1234567', 3),
(82201, '123', 1),
(98117, '123', 2),
(98118, 'sdaf', 2),
(98119, 'adg', 2),
(98120, 'a', 2),
(98121, 'adf', 2),
(98123, '123', 2),
(98124, 'zz', 2),
(98125, 'pp', 2),
(123456, '2323', 1),
(1231233, '123134', 2),
(1705112026, '23232', 2),
(1705112027, '22323', 2),
(1705112033, '1231342222', 2),
(1705112036, '3323', 2),
(1705112059, '232', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` int(9) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `password`, `alamat`) VALUES
(82201, 'Pak Rahmat', '12332224', 'Medan'),
(82202, 'Pak Benny', '123', 'Medan'),
(82203, 'Bu Yulia', '123', 'Medan'),
(82204, 'Bu Hikma', '123', 'Medan'),
(123456, 'Pak Zakaria', '2323', 'medan');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `id_jadwal` int(4) NOT NULL,
  `kode_mp` int(9) NOT NULL,
  `jam` varchar(5) NOT NULL,
  `kode_kelas` varchar(5) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_pelajaran`
--

INSERT INTO `jadwal_pelajaran` (`id_jadwal`, `kode_mp`, `jam`, `kode_kelas`, `hari`) VALUES
(1, 126, '10.00', '2', 'Senin'),
(2, 127, '08.00', '3', 'Selasa'),
(3, 125, '08:00', '3', 'Selasa'),
(4, 125, '07.00', '1', 'Senin');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` int(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `jumlah_siswa` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`, `jumlah_siswa`) VALUES
(1, 'CE-6A', 16),
(2, 'CE-6B', 15),
(3, 'CE-6C', 12),
(4, 'CE-6D', 12),
(5, 'CE-5A', 23);

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mp` int(9) NOT NULL,
  `nama_mp` varchar(25) NOT NULL,
  `KKM` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mp`, `nama_mp`, `KKM`) VALUES
(125, 'Bahasa Inggris', 85),
(126, 'IPA', 75),
(127, 'IPS', 75),
(128, 'Penjaskes', 70),
(129, 'pkn', 90),
(130, 'ipaaa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `nip` int(9) NOT NULL,
  `kode_mp` int(9) NOT NULL,
  `kode_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`nip`, `kode_mp`, `kode_kelas`) VALUES
(82205, 125, 4),
(82201, 125, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `kode_nilai` int(9) NOT NULL,
  `nis` int(9) NOT NULL,
  `kode_mp` int(9) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL,
  `nilai_harian` int(3) NOT NULL,
  `nilai_uts` int(3) NOT NULL,
  `nilai_uas` int(3) NOT NULL,
  `rata` decimal(3,0) NOT NULL,
  `nilai_harian2` int(3) NOT NULL,
  `nilai_uts2` int(3) NOT NULL,
  `nilai_uas2` int(3) NOT NULL,
  `rata2` int(3) NOT NULL,
  `nilai_akhir` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`kode_nilai`, `nis`, `kode_mp`, `semester`, `tahun_ajaran`, `nilai_harian`, `nilai_uts`, `nilai_uas`, `rata`, `nilai_harian2`, `nilai_uts2`, `nilai_uas2`, `rata2`, `nilai_akhir`) VALUES
(1126, 98112, 125, 'Ganjil', '2019', 48, 48, 47, '2', 48, 47, 47, 2, 0),
(1127, 98113, 125, 'Ganjil', '2019', 47, 65, 47, '2', 47, 65, 48, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int(4) NOT NULL,
  `nis` int(9) NOT NULL,
  `kode_mp` int(9) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` varchar(7) NOT NULL,
  `Keterangan` varchar(10) NOT NULL,
  `thn_ajaran` varchar(9) NOT NULL,
  `kode_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `nis`, `kode_mp`, `tanggal`, `semester`, `Keterangan`, `thn_ajaran`, `kode_kelas`) VALUES
(3, 98112, 126, '2018-07-02', 'Ganjil', 'izin', '2011-2012', 1),
(4, 98113, 126, '2018-07-02', 'Ganjil', 'izin', '2011-2012', 1),
(5, 98111, 128, '2018-07-03', 'Ganjil', 'sakit', '2010-2011', 1),
(6, 98112, 128, '2018-07-03', 'Ganjil', 'hadir', '2010-2011', 1),
(7, 98113, 128, '2018-07-03', 'Ganjil', 'sakit', '2010-2011', 1),
(8, 98110, 128, '2018-07-03', 'Ganjil', 'hadir', '2009-2010', 2),
(9, 98114, 128, '2018-07-03', 'Ganjil', 'hadir', '2009-2010', 2),
(10, 98115, 128, '2018-07-03', 'Ganjil', 'hadir', '2009-2010', 2),
(11, 98126, 128, '2018-07-03', 'Ganjil', 'hadir', '2009-2010', 2),
(16, 98111, 125, '2018-07-03', 'Ganjil', 'izin', '2011-2012', 1),
(17, 98112, 125, '2018-07-03', 'Ganjil', 'izin', '2011-2012', 1),
(18, 98113, 125, '2018-07-03', 'Ganjil', 'izin', '2011-2012', 1),
(19, 98111, 129, '2018-07-03', 'Genap', 'alpa', '2011-2012', 1),
(20, 98112, 129, '2018-07-03', 'Genap', 'alpa', '2011-2012', 1),
(21, 98113, 129, '2018-07-03', 'Genap', 'alpa', '2011-2012', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nim` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_ortu` varchar(25) NOT NULL,
  `pkjr_ortu` varchar(15) NOT NULL,
  `kode_kelas` int(5) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `thn_ajaran` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nim`, `nama`, `alamat`, `password`, `nama_ortu`, `pkjr_ortu`, `kode_kelas`, `semester`, `thn_ajaran`) VALUES
(1705112026, 'sandy', 'jl pembangunan no 77', '23232', 'bp sandy', 'pekerja keras', 2, 'Ganjil', '2019-2020'),
(1705112027, 'gerald', 'jl bunga kencana no 75', '22323', 'bp gerald', 'pekerja keras', 2, 'Ganjil', '2020-2021'),
(1705112033, 'gery', 'Jl jamin ginting no 123 ', '1231342222', 'bp gery', 'pekerja keras', 3, 'Ganjil', '2020-2021'),
(1705112036, 'tedy', 'jl cempaka asri no 887', '3323', 'bp tedy', 'pekerja keras', 1, 'Ganjil', '2020-2021'),
(1705112059, 'adela yasmin', 'jl rebab no 765', '232', 'bp adela ', 'pekerja keras', 4, 'Ganjil', '2025-2026');

-- --------------------------------------------------------

--
-- Table structure for table `tata_usaha`
--

CREATE TABLE `tata_usaha` (
  `nip` int(9) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tata_usaha`
--

INSERT INTO `tata_usaha` (`nip`, `nama`, `password`) VALUES
(9999, 'susi', '123'),
(12355, 'rress', '');

-- --------------------------------------------------------

--
-- Table structure for table `transkip`
--

CREATE TABLE `transkip` (
  `kode_transkip` int(9) NOT NULL,
  `nis` int(9) NOT NULL,
  `kode_mp` int(9) NOT NULL,
  `kode_nilai` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transkip`
--

INSERT INTO `transkip` (`kode_transkip`, `nis`, `kode_mp`, `kode_nilai`) VALUES
(1, 98110, 124, 123),
(2, 98111, 125, 124);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mp`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kode_nilai`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tata_usaha`
--
ALTER TABLE `tata_usaha`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `transkip`
--
ALTER TABLE `transkip`
  ADD PRIMARY KEY (`kode_transkip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `username` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483649;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `nip` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111111112;

--
-- AUTO_INCREMENT for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  MODIFY `id_jadwal` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `kode_mp` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `kode_nilai` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1128;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `tata_usaha`
--
ALTER TABLE `tata_usaha`
  MODIFY `nip` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12356;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
