-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Feb 2021 pada 09.52
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `hadir` int(100) NOT NULL,
  `izin` int(100) NOT NULL,
  `tidak_hadir` int(100) NOT NULL,
  `bulan` int(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id_absen`, `id_pegawai`, `hadir`, `izin`, `tidak_hadir`, `bulan`, `tanggal`) VALUES
(13, 10, 20, 0, 0, 1, '2020-05-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `level`, `log`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2018-03-30 02:51:21'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 'user', '2018-04-02 18:27:39'),
(4, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'admin1', 'admin', '2020-12-07 13:21:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `tunjangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `golongan`, `tunjangan`) VALUES
(5, 'Frontend Developer', 'Junior', 2500000),
(6, 'Backend Developer', 'Junior', 2800000),
(7, 'Database Admin', 'Senior', 5700000),
(8, 'Frontend Developer', 'Middle', 5200000),
(9, 'Backend Developer', 'Middle', 5500000),
(10, 'Frontend Developer', 'Senior', 8550000),
(11, 'Backend Developer', 'Senior', 9325700),
(12, 'Staff IT', 'Senior', 3500000),
(13, 'General Manager', '-', 12750000),
(14, 'Network Engineer', 'Senior', 8500000),
(15, 'Admin Server', 'Senior', 8750000),
(16, 'Graphic Designer', 'Senior', 7500000),
(17, 'Graphic Designer', 'Junior', 2200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarga`
--

CREATE TABLE `keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_keluarga` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `sebagai` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `menikah` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keluarga`
--

INSERT INTO `keluarga` (`id_keluarga`, `id_pegawai`, `nama`, `nama_keluarga`, `tanggal_lahir`, `tempat_lahir`, `jk`, `sebagai`, `keterangan`, `menikah`, `pekerjaan`) VALUES
(9, 16, 'Nadia Rheta Fitriani', 'Fahmi Fauzi Kadarmanto', '1999-06-30', 'Kota Bandung', 'L', 'Suami', 'Hidup', 'sudah', 'Project Manager Google'),
(10, 15, 'Fahmi Fauzi Kadarmanto', 'Nadia Rheta Fitriani', '1999-04-11', 'Kota Bandung', 'P', 'Istri', 'Hidup', 'sudah', 'Product Designer'),
(11, 13, 'Akbar Hidayatullah Harahap', 'Melani NM', '1996-01-17', 'Kota Bandung', 'P', 'Istri', 'Hidup', 'sudah', 'Selebgram');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepangkatan`
--

CREATE TABLE `kepangkatan` (
  `id_pegawai` int(11) NOT NULL,
  `id_kepangkatan` int(11) NOT NULL,
  `nama` varchar(265) NOT NULL,
  `pdf_sk` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_pegawai` int(255) NOT NULL,
  `id_kunjungan` int(255) NOT NULL,
  `pdf_sk_kunjungan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengajar`
--

CREATE TABLE `mengajar` (
  `id_pegawai` int(255) NOT NULL,
  `id_mengajar` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `institusi` varchar(255) NOT NULL,
  `pdf_sk_mengajar` varchar(255) NOT NULL,
  `tahun_awal` date NOT NULL,
  `tahun_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_jabatan` int(110) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gelar` varchar(255) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `nikah` varchar(255) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `status_peg` varchar(255) NOT NULL,
  `jenis_peg` varchar(255) NOT NULL,
  `satuan_kerja` varchar(255) NOT NULL,
  `jabatan_akhir` varchar(255) NOT NULL,
  `didik_akhir` varchar(255) NOT NULL,
  `gol_ruang` varchar(255) NOT NULL,
  `satuan_org` varchar(255) NOT NULL,
  `kgb` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `kapreg` varchar(255) NOT NULL,
  `karis` varchar(255) NOT NULL,
  `kpe` varchar(255) NOT NULL,
  `taspen` varchar(255) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `nidn` varchar(255) NOT NULL,
  `wajah` varchar(255) NOT NULL,
  `kulit` varchar(255) NOT NULL,
  `ciri` varchar(255) NOT NULL,
  `cacat` varchar(255) NOT NULL,
  `kegemaran` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_jabatan`, `nip`, `nama`, `gelar`, `jk`, `foto`, `agama`, `pendidikan`, `nikah`, `alamat`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `username`, `password`, `tempat_lahir`, `tanggal_lahir`, `status_peg`, `jenis_peg`, `satuan_kerja`, `jabatan_akhir`, `didik_akhir`, `gol_ruang`, `satuan_org`, `kgb`, `pangkat`, `kapreg`, `karis`, `kpe`, `taspen`, `npwp`, `nidn`, `wajah`, `kulit`, `ciri`, `cacat`, `kegemaran`, `jurusan`, `telp`) VALUES
(13, 0, '1987391734917432', 'Akbar Hidayatullah Harahap', '', 'L', 'foto_1607428712.jpg', 'islam', '', 'sudah', 'Permata Biru ', 'Cinunuk', 'Cibiru', 'Kota Bandung', 'Jawa Barat', 'akbarhahay', 'e10adc3949ba59abbe56e057f20f883e', 'Kota Bandung', '1999-01-11', 'aktif', 'pns', 'UIN SGD Bandung', 'pembina', 'S3', '4a', 'Fakultas Ushuluddin', '2020-12-02', 'pang4', '', '', '', '', '', '', '', '', '', '', '', 'tasawuf', '081345621987'),
(15, 11, '12313141', 'Fahmi Fauzi Kadarmanto', 'S.T.', '', 'foto_1608989514.jpg', 'islam', '', 'belum', 'JL. Cibangkong No.41/120', 'Cibangkong', 'Batununggal', 'Kota Bandung', 'Jawa Barat', 'fkadarmanto', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Kota Bandung', '2021-01-27', 'Aktif', 'Capeg', 'UIN SGD Bandung', 'Asisten', 'S3', 'IIIA', 'UIN Sunan Gunung Djati Bandung', '2019-10-25', 'Penata Muda', '1214141', '2315253454331414', '141242343534', '32434767698769878757', '3654', '', '', '', '', '', '', '', '081345621987'),
(16, 5, '1241414', 'Nadia Rheta Fitriani', 'S.T., M.T.', 'P', 'foto_1608989540.jpg', 'islam', '', 'sudah', 'JL. Pahlawan N0. 53', 'PasirKoja', 'Andir', 'Kota Bandung', 'Jawa Barat', 'nanad21', 'eb89f40da6a539dd1b1776e522459763', 'Kota Bandung', '2003-11-25', 'aktif', 'pengajar', 'Fakultas Ushuluddin', 'pembina', 'S2', '3d', 'Fakultas Ushuluddin', '2018-10-25', 'pang1', '1214141', '72984729843792', '92874982749827492', '8658578646354', '3654765653436', '764653658766587969', 'Bulat', 'Putih', 'pendek, kecil', 'tidak ada', 'Membaca', 'hadis', '081345621987'),
(18, 0, '124242', 'Ujang', '', 'L', 'foto_1609171880.jpg', 'islam', '', 'sudah', 'JL. Cibangkong No.41/120', 'PasirKoja', 'Andir', 'Asakusa', 'Nagano', 'jangsiujang21', 'a152e841783914146e4bcd4f39100686', 'Kota Bandung', '2019-11-27', 'aktif', 'capeg', 'Fakultas Ushuluddin', 'ast', 'sma', '3a', 'UIN Sunan Gunung Djati Bandung', '2019-10-27', 'pang1', '14141412', '142342452525', '1241415 v', '', '', '', '', '', '', '', '', 'hadis', '19832018401'),
(19, 0, '196505161993031002', 'Ahmad Gibson Albustomi', 'M.Ag', 'L', 'foto_1610101827.jpg', 'islam', '', 'sudah', 'Cimekar', 'Cimekar', 'Cileunyi', 'Kota Bandung', 'Jawa Barat', 'ahmad.gibson65@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Garut', '1965-05-16', 'aktif', 'pengajar', 'Aqidah Filsafat Islam', 'pembina', 'S2', '4a', 'Universitas Islam Negeri Sunan Gunung Djati Bandung', '2008-03-01', 'pang5', 'F. 005291', '', '', '', '262108350429000', '2016056501', '', '', '', '', '', 'filsafat', '082321512222'),
(20, 0, '113333555555', 'Masdim', 'S.Pg. , M.Sg', 'L', 'foto_1613622844.png', 'islam', '', 'belum', 'komplek GBI', 'Bojongsoang', 'Bojongsoang', 'kab bandung', 'Jawa Barat', 'masdimas', 'bb9e63fa9a84d3979e9ee0e746ca88a6', 'Sleman', '1999-01-19', 'aktif', 'pengajar', 'OmBud', 'asta', 'S2', '4e', 'OmBud', '2021-02-18', 'pang4', '123123', '123123', '123123', '123123', '123123', '123123', 'normal', 'sawo matang', 'tangannya dua', 'normal', 'Menghilang', 'hadis', '085580085580');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_sertif` varchar(255) NOT NULL,
  `pdf_sertif_pelatihan` varchar(255) NOT NULL,
  `tanggal_sertif` date NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id_pelatihan`, `id_pegawai`, `nama`, `nama_sertif`, `pdf_sertif_pelatihan`, `tanggal_sertif`, `keterangan`) VALUES
(11, 21, 'kris', 'sertif ahay', 'sertif_1614234910.pdf', '2021-02-10', 'itulah biasalah'),
(21, 22, 'Fahmi Fauzi Kadarmanto', 'Sertifikat Pelatihan Tenaga Kerja', 'sertif_1615274731.pdf', '2021-03-10', 'Ini adalah SK Pelatihan Olahraga bagi Fahmi Fauzi Kadarmanto');

-- 
-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(255) NOT NULL,
  `id_pegawai` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tk` varchar(255) NOT NULL,
  `tahun_tk` date NOT NULL,
  `sd` varchar(255) NOT NULL,
  `tahun_sd` date NOT NULL,
  `smp` varchar(255) NOT NULL,
  `tahun_smp` date NOT NULL,
  `sma` varchar(255) NOT NULL,
  `tahun_sma` date NOT NULL,
  `s1` varchar(255) NOT NULL,
  `jurusan_s1` varchar(255) NOT NULL,
  `tahun_s1` date NOT NULL,
  `s2` varchar(255) NOT NULL,
  `jurusan_s2` varchar(255) NOT NULL,
  `tahun_s2` date NOT NULL,
  `s3` varchar(255) NOT NULL,
  `jurusan_s3` varchar(255) NOT NULL,
  `tahun_s3` date NOT NULL,
  `ijazah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `id_pegawai`, `nama`, `tk`, `tahun_tk`, `sd`, `tahun_sd`, `smp`, `tahun_smp`, `sma`, `tahun_sma`, `s1`, `jurusan_s1`, `tahun_s1`, `s2`, `jurusan_s2`, `tahun_s2`, `s3`, `jurusan_s3`, `tahun_s3`, `ijazah`) VALUES
(10, 22, 'Fahmi Fauzi Kadarmanto', 'TK Al-Manar', '2020-02-02', 'SD Assalaam', '2019-02-02', 'SMP Negeri 4 Bandung', '2018-12-01', 'SMA Negeri 22 Bandung', '2022-02-02', 'UIN Sunan Gunung Djati Bandung', 'Teknik Informatika', '2020-02-02', 'Institut Teknologi Bandung', 'Teknik Informatika', '2021-03-10', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpp`
--

CREATE TABLE `tpp` (
  `id_tpp` int(11) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `jumlah_tpp` varchar(100) NOT NULL,
  `jumlah_potongan` varchar(100) NOT NULL,
  `bulan_t` int(100) NOT NULL,
  `tahun` int(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tpp`
--

INSERT INTO `tpp` (`id_tpp`, `id_pegawai`, `jumlah_tpp`, `jumlah_potongan`, `bulan_t`, `tahun`, `tgl`) VALUES
(7, 8, '300000', '0%', 1, 2018, '2018-04-02'),
(9, 9, '12750000', '0%', 5, 2020, '2020-05-01'),
(10, 10, '8749970', '30%', 1, 2020, '2020-05-17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`id_keluarga`),
  ADD KEY `fk_profil_keluarga` (`id_pegawai`);

--
-- Indeks untuk tabel `kepangkatan`
--
ALTER TABLE `kepangkatan`
  ADD PRIMARY KEY (`id_kepangkatan`),
  ADD KEY `fk_kepangkatan` (`id_pegawai`);

--
-- Indeks untuk tabel `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`);

--
-- Indeks untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `mengajar` (`id_pegawai`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);
--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`),
  ADD KEY `fk_pelatihan_sk` (`id_pegawai`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`),
  ADD KEY `fk_pendidikan_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tpp`
--
ALTER TABLE `tpp`
  ADD PRIMARY KEY (`id_tpp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kepangkatan`
--
ALTER TABLE `kepangkatan`
  MODIFY `id_kepangkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `id_kunjungan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id_mengajar` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tpp`
--
ALTER TABLE `tpp`
  MODIFY `id_tpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD CONSTRAINT `fk_profil_keluarga` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kepangkatan`
--
ALTER TABLE `kepangkatan`
  ADD CONSTRAINT `fk_kepangkatan` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `mengajar` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD CONSTRAINT `fk_pelatihan_sk` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `fk_pendidikan_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
