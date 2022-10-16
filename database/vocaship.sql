-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2022 pada 15.17
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vocaship`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa_nasional`
--

CREATE TABLE `beasiswa_nasional` (
  `id` int(10) NOT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `Nama_Beasiswa` varchar(50) NOT NULL,
  `Deskripsi_Beasiswa` varchar(500) NOT NULL,
  `Syarat_Beasiswa` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa_nasional`
--

INSERT INTO `beasiswa_nasional` (`id`, `tanggal_upload`, `Nama_Beasiswa`, `Deskripsi_Beasiswa`, `Syarat_Beasiswa`) VALUES
(1, '2022-03-17', 'Beasiswa Pendidikan Indonesia', 'Beasiswa Pendidikan Indonesia adalah beasiswa yang diadakan oleh Catatan Pena dengan target siswa SMA//SMK/MA Sederajat. Gap Year, dan Mahasiswa D1 - S2. Ada begitu banyak benefit yang akan didapatkan diantaranya adalah uang tunjangan pendidikan. Beasiswa Pendidikan Indonesia memiliki dua kategori beasiswa yaitu beasiswa prestasi dan beasiswa ekonomi.', 'Tanpa Minimal Nilai IPK dan Raport'),
(2, '2022-03-24', 'Beasiswa LiniMuda', 'Beasiswa LiniMuda 2022 adalah beasiswa yang didukung oleh website pengembangan skill untuk mahasiswa dan freshgraduate dalam menyiapkan karir dan studi impiannya di masa depan. Beasiswa ini berlaku untuk seluruh pelajar di Indonesia mulai jenjang SMA 12, Vokasi dan Sarjana.', 'Mahasiswa Vokasi dan Sarjana dari dalam maupun luar negeri. Gapyear diperbolehkan untuk mendaftar.'),
(3, '2022-05-11', 'Beasiswa PPA', 'Beasiswa PPA diselenggarakan di PTN (Universitas, Institut, Politeknik dan Akademik) serta PTS. Informasi dan pendaftaran beasiswa bisa melalui bagian kemahasiswaan di Perguruan Tinggi masing-masing. Sebagai informasi, tidak semua PTS mendapatkan kuota Beasiswa PPA dari LLDIKTI. Oleh karena itu, mahasiswa yang berminat mendaftar beasiswa ini dapat menanyakan ke bagian kemahasiswaan kampus masing-masing, apakah menyediakan Beasiswa PPA atau tidak.', 'Diperbolehkan untuk Pelajar/Mahasiswa dari Institusi Negeri, Swasta, Keagamaan maupun Kedinasan.'),
(4, '2022-06-07', 'Beasiswa BSI Inspirasi', 'Benefit: Bantuan UKT sebesar Rp 3.000.000,- selama 4 semester, Pembinaan kepemimpinan diri dan pembangunan karakter, Pelatihan ekonomi keuangan syariah, Program Social Project, Berkesempatan magang di Bank Syariah Indonesia.', 'Termasuk pada kategori mahasiswa prasejahtera yang dibuktikan dengan SKTM'),
(5, '2022-06-15', 'Beasiswa BSI Prestasi', 'Benefit : Bantuan Uang Kuliah Tunggal (UKT) sebesar Rp 3.000.000,- dan uang saku bulanan sebesar Rp 500.000,- selama 4 semester, Pembinaan kepemimpinan diri dan pembangunan karakter, Pelatihan ekonomi keuangan syariah, Program Social Project, Berkesempatan magang di Bank Syariah Indonesia, Berkesempatan untuk mentorship dengan pimpinan Bank Syariah Indonesia.', 'Memiliki prestasi bidang akademik atau non-akademik'),
(6, '2022-10-16', 'Beasiswa Aktivis Salman', 'Benefit : Apresiasi Uang Saku sebesar Rp 800.000,00/bulan selama 1 periode (12 bulan), Pertemuan eksklusif dengan tokoh inspiratif nasional, Networking yang luas dari berbagai kampus, Pembinaan rutin tiap bulan (pematerian, outbond dan coaching ), Pengalaman membangun kegiatan sosial.', 'Tidak sedang menerima/mendaftar program beasiswa sejenis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fusion`
--

CREATE TABLE `fusion` (
  `id` int(11) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fusion`
--

INSERT INTO `fusion` (`id`, `bulan`, `jumlah`) VALUES
(1, 'Mar', 2),
(2, 'Mei', 1),
(3, 'Jun', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_vocaship`
--

CREATE TABLE `login_vocaship` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login_vocaship`
--

INSERT INTO `login_vocaship` (`id`, `username`, `password`, `created`) VALUES
(1, 'fatinnabilah', 'fatin2002', 0),
(2, 'fatinnabilah', '8d30ce754009550e055c', 0),
(3, 'fatinnabilah', '8d30ce754009550e055c', 0),
(4, 'fatinnabilah', 'fatin2002', 0),
(5, 'fatinnabilahu', 'ZmF0aW4yMDAy', 2022);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(4, 'fatinnabilah', 'fatin.n.u@gmail.com', '8d30ce754009550e055c4ea617153c3f'),
(5, 'admin', 'abc@gmail.com', '9fcca8a6f2920f02c0b7b49b140b1d36'),
(6, 'admin1', 'admin@gmail.com', 'e00cf25ad42683b3df678c61f42c6bda');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beasiswa_nasional`
--
ALTER TABLE `beasiswa_nasional`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fusion`
--
ALTER TABLE `fusion`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_vocaship`
--
ALTER TABLE `login_vocaship`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beasiswa_nasional`
--
ALTER TABLE `beasiswa_nasional`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `fusion`
--
ALTER TABLE `fusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `login_vocaship`
--
ALTER TABLE `login_vocaship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
