-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 02:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kedungjati`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'rizki hanif', 'password', 'Rizki Hanif'),
(7, 'anto', 'password', 'alifianto '),
(10, 'zainuddin', 'kedungjati', 'muhammad zainuddin');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_desa`
--

CREATE TABLE `galeri_desa` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri_desa`
--

INSERT INTO `galeri_desa` (`id`, `gambar`) VALUES
(1, 'img1.jpg'),
(2, 'img2.jpg'),
(3, 'img3.jpg'),
(4, 'img4.jpg'),
(5, 'img5.jpg'),
(6, 'img6.jpg'),
(7, 'img7.jpg'),
(8, 'img8.jpg'),
(9, 'img9.jpg'),
(10, 'img10.jpg'),
(11, 'img11.jpg'),
(12, 'img12.jpeg'),
(13, 'img13.jpeg'),
(14, 'img14.jpeg'),
(15, 'img15.jpeg'),
(16, 'img16.jpeg'),
(17, 'img17.jpeg'),
(18, 'img18.jpeg'),
(19, 'img19.jpeg'),
(20, 'img20.jpeg'),
(21, 'img21.jpeg'),
(22, 'img22.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kepaladesa`
--

CREATE TABLE `kepaladesa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ttl` varchar(255) NOT NULL,
  `jeniskelamin` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kepaladesa`
--

INSERT INTO `kepaladesa` (`id`, `nama`, `ttl`, `jeniskelamin`, `agama`, `alamat`, `deskripsi`, `photo`, `pendidikan`) VALUES
(1, 'Muhammad Zaenudin,S.Kom', 'Tegal, 15 Februari 1987', 'Laki-laki', 'Islam', 'RT 01 / RW 03, Desa Kedungjati, Kecamatan Warureja, Kabupaten Tegal', 'Kepala Desa adalah jabatan pemerintahan di tingkat desa yang bertanggung jawab untuk mengatur dan mengelola administrasi serta pelayanan publik di desa tersebut. Kepala Desa sering juga disebut sebagai \"Pamong Desa\" atau \"Kepala Pemerintahan Desa.\"', '1690475127294-cb0i6e.jpeg', 'Sarjana (UNIPDU Jombang)');

-- --------------------------------------------------------

--
-- Table structure for table `misi`
--

CREATE TABLE `misi` (
  `id` int(11) NOT NULL,
  `misi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `misi`
--

INSERT INTO `misi` (`id`, `misi`) VALUES
(1, 'Memfasilitasi proses peningkatan kualitas, keimanan, dan ketaqwaan kepada Tuhan Yang Maha Esa serta meningkatkan persatuan, kesatuan, keamanan, dan keterampilan serta penanggulangan masalah sosial '),
(3, 'Penyelenggaraan pemerintah dan pelayanan masyarakat yang bersih'),
(4, 'Meningkatkan kapasitas dalam sektor pertanian dalam hal penanaman padi yang berkualitas da penanaman palawija sehingga masyarakat akan sejahtera.'),
(5, 'Mengingkatkan kualitas kehidupan masyarakat dengan membangun budaya sehat, budaya belajar, dan penguatan peran perempuan dalam pembangunan.'),
(6, 'Meningkatkan jumlah Pendapatan Asli Desa dan mengelolanya secara transparan, jujur, dan penguatan peran perempuan dalam pembangunan.'),
(7, 'Mewujudkan pemerintahan desa yang baik dan bersih melalui peningkatan pelayanan pemerintahan umum');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi_desa`
--

CREATE TABLE `organisasi_desa` (
  `id` int(11) NOT NULL,
  `organisasi` varchar(255) NOT NULL,
  `logo_organisasi` varchar(255) NOT NULL,
  `photo_kegiatan` varchar(255) NOT NULL,
  `paragraf1` varchar(1000) NOT NULL,
  `paragraf2` varchar(1000) NOT NULL,
  `paragraf3` varchar(1000) NOT NULL,
  `struktur` varchar(255) NOT NULL,
  `deskripsisingkat` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organisasi_desa`
--

INSERT INTO `organisasi_desa` (`id`, `organisasi`, `logo_organisasi`, `photo_kegiatan`, `paragraf1`, `paragraf2`, `paragraf3`, `struktur`, `deskripsisingkat`) VALUES
(1, 'Nahdalatul Ulama', 'NU.jpg', 'hadro1.jpeg', 'Nahdalatul Ulama atau biasa dikenal dengan NU merupakan sebuah organisasi keagamaan Islam yang didirikan oleh KH. Hasyim Asy’ari. Organisasi Nahdalatul Ulama salah satu organisasi yang aktif di Desa Kedungjati mulai tahun 1960-an. Organisasi ini diperjuangan oleh H. Muhidin yang merupakan salah satu tokoh agama di Desa Kedungjati. Nahdalatul Ulama memiliki struktur organisasi yang terdiri dari ketua, sekretaris, bendahara dan anggota. Ketua NU adalah orang yang dinilai mampu bertanggung jawab untuk segala keperluan atau kegiatan yang diadakan oleh NU. Pemilihan ketua ini dilakukan secara musyawarah desa yang diikuti oleh seluruh anggota NU. ', 'Organisasi Nahdalatul Ulama di Desa Kedungjati memiliki kegiatan rutin diantaranya, memperingati acara Maulid Nabi yang akan diadakan lomba karnaval keagamaan yang dilaksanakan oleh setiap RT, pawai obor untuk memperingati malam satu suro, doa bersama saat malam nifsu sya’ban dan peringatan hari santri. ', 'Organisasi Nahdalatul ulama memiliki program unggulan yang mereka laksanakan rutin setiap tahunnya yaitu, Lailatul Istimah yaitu pengajian yang dilaksanakan setelah Jumat Wage atau Senin Pahing. Kedua, Jamiah Yasin Tahlil yang dilaksanakan setiap malam Selasa Wage atau setelah Jumat Kliwon. Selain itu juga organisasi NU melakukan kegiatan pengumpulan dana melalui celengan koin NU. Celengan ini akan dibagikan keseluruh rumah anggota NU dan nantinya uang koin tersebut akan diberikan ke masyarakat miskin atau sumbangan masjid. ', 'nustruktur.jpg', 'Nahdalatul Ulama atau biasa dikenal dengan NU merupakan sebuah organisasi keagamaan Islam yang didirikan oleh KH. Hasyim Asy’ari. Organisasi Nahdalatul Ulama salah satu organisasi yang aktif di Desa Kedungjati mulai tahun 1960-an.'),
(2, 'Pemuda Anshor', 'anshorlogo.png', 'anshor.jpeg', 'Gerakan Pemuda Ansor atau lebih dikenal dengan GP Ansor merupakan sebuah organisasi kemasyarakatan pemuda yang berafiliasi dengan Nahdalatul Ulama (NU). Di Desa Kedungjati, GP Ansor mulai aktif pada tahun 2017, tetapi organisasi ini sempat vakum beberapa tahun dikarenakan kesibukan masing-masing anggota. ', 'Organisasi ini mulai aktif kembali pada 2020 hingga sekarang. Organisasi GP Ansor di Desa Kedungjati memiliki struktur organisasi yang terdiri dari ketua, wakil ketua, sekretaris, bendahara dan anggota. Selain itu, organisasi ini juga memiliki pembina yang bernama Pak Poniman. ', 'GP Ansor anggotanya memiliki rentang usia yaitu dimulai umur 26 hingga 40 tahun. Kegiatan rutin yang dilakukan oleh GP Ansor yaitu Maulid Nabi, tahlilan dan pembahasan internal. Uniknya, setiap sebelum melakukan kegiatan rutin tersebut, para anggota GP Ansor akan melakukan pembacaan perjanjian (sholawat) yang diiringi rabana. ', 'anshorstruktur.jpg', 'Gerakan Pemuda Ansor atau lebih dikenal dengan GP Ansor merupakan sebuah organisasi kemasyarakatan pemuda yang berafiliasi dengan Nahdalatul Ulama (NU).'),
(3, 'IPNU dan IPPNU', 'ipnulogo.png', 'hadro.png', 'Ikatan Pelajar NU dan Ikatan Pelajar Perempuan NU merupakan sebuah organisasi para pemuda untuk mengenal lebih dekat dengan Nahdalatul Ulama. Organisasi IPNU dan IPPNU mulai aktif di desa Kedungjati mulai pada tahun 1998 pada era ketua Pak Sasmito.', 'Organisasi IPNU dan IPPNU memiliki struktur organisasi yang terdiri dari ketua, wakil ketua, bendahara, sekretaris dan anggota.', 'Kegiatan rutin yang dilakukan oleh organisasi ini dominan untuk merangkul para pemuda desa untuk berpartisipasi dalam acara desa seperti acara 17 Agustus dan acara lainnya. IPNU dan IPPNU juga melakukan kegiatan malam keakraban (MAKRAB) dengan tujuan untuk mengakrabkan semua anggota pemuda IPNU dan IPPNU. ', 'ipnustruktur.jpg', 'Ikatan Pelajar NU dan Ikatan Pelajar Perempuan NU merupakan sebuah organisasi para pemuda untuk mengenal lebih dekat dengan Nahdalatul Ulama. '),
(4, 'Fatayat dan Muslimat', 'fatayatlogo.jpg', 'samproan.png', 'Fatayat Muslimah dan Muslimat merupakan organisasi Islam yang berada di lingkungan Nahdalatul Ulama (NU). Yang membedakan antara keduanya adalah pada keanggotaannya. Fatayat Muslimah beranggotakan pemudi Islam, sedangkan Muslimat beranggotakan ibu-ibu Islam di Desa Kedungjati. Fatayat mulai aktif pada tahun 2008 oleh kumpulan pemudi Islam NU. Fatayat dan Muslimat memiliki struktur organisasi yang sama yaitu terdiri dari ketua, wakil ketua, bedahara, sekretaris dan bidang dakwah. ', 'Bidang dakwah dibagi menjadi dua bagian yaitu dakwah pengajian kliwon dan dakwah pengajian yatim. Kegiatan rutinan yaitu dilaksanakannya pengajian Kliwon pada hari Jumat setiap satu bulan sekali dan kegiatan pengajian yatim yang dilaksanakan setiap satu tahun sekali. Tempat diadakannya pengajian adalah di rumah warga dengan sistem bergilir dari satu rumah ke rumah lainnya. ', 'Biasanya, setelah pengajian akan dilakukannya jagongan atau berkumpul sembari menikmati hidangan yang sudah disediakan oleh pemilik rumah. Fatayat dan Mulimat memiliki fungsi sebagai wadah memperat kekerabatan perempuan Islam di Desa Kedungjati. Selain itu, adanya organisasi ini juga dijakan sebagai tempat memperdalam kemampuan anggotanya dalam hal mengaji atau membaca Al-Quran.', 'fatayatstruktur.jpg', 'Fatayat Muslimah dan Muslimat merupakan organisasi Islam yang berada di lingkungan Nahdalatul Ulama (NU). Yang membedakan antara keduanya adalah pada keanggotaannya.'),
(5, 'Pemberdayaan Kesejahteraan Keluarga (PKK)', 'logopkk.jpg', 'pkk.png', 'Pemberdayaan Kesejahteraan Keluarga (PKK) merupakan sebuah organisasi kemasyarakatan yang bertujuan memberdayakan perempuan untuk aktif berpartisipasi dalam pembangunan Indonesia. Di Desa Kedungjati, PKK menghimpun sebagian besar anggotanya dari kalangan ibu-ibu yang berasal dari berbagai dukuh. Organisasi ini memiliki struktur organisasi yang terdiri dari ketua, wakil ketua, sekretaris, dan bendahara. PKK juga memiliki beberapa divisi pokja yang berfokus pada bidang tertentu.', 'Pokja I bertanggung jawab dalam bidang Ketuhanan Yang Maha Esa dengan program kerja berupa pengajian rutin. Pokja II bergerak di bidang Usaha Mikro Kecil dan Menengah (UMKM) dengan program kerja berupa pelatihan UMKM tingkat desa. Pokja III bergerak di bidang sandang pangan dengan program kreativitas dalam menciptakan masakan baru. Sementara itu, Pokja IV berfokus pada bidang kesehatan dengan program penyuluhan penyakit seperti stunting, corona, dan lain-lain.', 'Salah satu kegiatan rutin yang dilaksanakan oleh PKK adalah pertemuan bulanan, di mana anggota berkumpul untuk membahas topik-topik yang diberikan oleh PKK tingkat kecamatan. Pelaksanaan kegiatan PKK akan dilakukan berdasarkan perintah atau arahan yang diterima dari tingkat kecamatan. Dalam upaya mendukung tujuan pemberdayaan, PKK berkomitmen untuk melibatkan perempuan dalam berbagai aspek pembangunan dan memberikan kesempatan bagi mereka untuk berperan aktif dalam mencapai kesejahteraan keluarga serta kemajuan desa. Melalui kerja sama dan kolaborasi dengan instansi terkait, PKK terus berupaya mengoptimalkan peran perempuan dalam memajukan masyarakat Desa Kedungjati menuju kesejahteraan yang berkelanjutan.’', 'pkkstruktur.jpg', 'Pemberdayaan Kesejahteraan Keluarga (PKK) merupakan sebuah organisasi kemasyarakatan yang bertujuan memberdayakan perempuan untuk aktif berpartisipasi dalam pembangunan Indonesia.');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaankades`
--

CREATE TABLE `pekerjaankades` (
  `id` int(11) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaankades`
--

INSERT INTO `pekerjaankades` (`id`, `pekerjaan`) VALUES
(1, 'Asisten Manajer PT SSI (Saradharma Sarana Informatika)'),
(2, 'Manajer Produksi PT STK (2012 - 2014)'),
(3, 'Kepala cabang pemalang PT GIS (2016)'),
(4, 'Kepala Desa Kedungjati (2017-2023)');

-- --------------------------------------------------------

--
-- Table structure for table `perangkatdesa`
--

CREATE TABLE `perangkatdesa` (
  `id` int(11) NOT NULL,
  `nama_perangkat` varchar(255) NOT NULL,
  `ttl` varchar(255) NOT NULL,
  `jeniskelamin` varchar(50) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan_terakhir` varchar(100) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `detail_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perangkatdesa`
--

INSERT INTO `perangkatdesa` (`id`, `nama_perangkat`, `ttl`, `jeniskelamin`, `agama`, `pendidikan_terakhir`, `jabatan`, `photo`, `detail_jabatan`) VALUES
(1, 'Iwan Setiawan', 'Tegal, 3 Mei 1976', 'Laki-laki', 'Islam', 'Diploma', 'Sekretaris Desa', 'sekdes.jpeg', 'sekretaris'),
(2, 'Sobirin', 'Tegal, 5 Juli 1963', 'Laki-laki', 'Islam', 'SMA/SMK', 'Kasi Pemerintahan', 'kasipemerintahan.jpeg', 'kasi'),
(3, 'Teguh Setiawan', 'Tegal, 8 Oktober 1980', 'Laki-Laki', 'Islam', 'SMA/SMK', 'Kasi Kesra', 'kasikesra.jpeg', 'kasi'),
(4, 'Evi Sofiati, SE.', 'Tegal 8 Juni 1988', 'Perempuan', 'Islam', 'Sarjana', 'Kasi Pelayanan', 'kasipelayanan.jpeg', 'kasi'),
(5, 'Muamar Faizal Rizki ', 'Tegal, 27 September 1985', 'Laki-laki', 'Islam', 'SMA/SMK', 'Kepala Dusun I Kedungjati', 'kaduskedungjati.jpeg', 'kadus'),
(6, 'Rudi Hartono', 'Tegal 25 April 1975', 'Laki-Laki', 'Islam', 'SMA/SMK', 'Kepala Dusun II Macan Ucul', 'macanucul.jpeg', 'kadus'),
(7, 'Edi Mulyanto', '15 November 1988', 'Laki-laki', 'Islam', 'SMA/SMK', 'Kepala Dusun III Cipero', 'kadus3.jpeg', 'kadus'),
(8, 'Ade Kristiawan S.Pd', 'Tegal 29 Januari 1983', 'Laki-laki', 'Islam', 'Sarjana', 'Kepala Urusan Keuangan', 'kaurkeuangan.jpeg', 'kaur'),
(9, 'Kusnoto', '18 April 1969', 'Laki-Laki', 'Islam', 'SMA/SMK', 'Kepala Urusan Perencanaan', 'user.png', 'kaur'),
(10, 'Ade Kurniawan DMD', 'Tegal 17 Agustus 1982', 'Laki-laki', 'Islam', 'SMA/SMK', 'Kepala Urusan TU & Umum', 'user.png', 'kaur');

-- --------------------------------------------------------

--
-- Table structure for table `riwayatpendidikankades`
--

CREATE TABLE `riwayatpendidikankades` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayatpendidikankades`
--

INSERT INTO `riwayatpendidikankades` (`id`, `pendidikan`) VALUES
(1, 'SDN 2 Kedungjati'),
(2, 'SMPN 2 Warureja'),
(3, 'SMK YPT Tegal'),
(4, 'S1 Sistem Informasi UNIPDU Jombang');

-- --------------------------------------------------------

--
-- Table structure for table `visi`
--

CREATE TABLE `visi` (
  `id` int(11) NOT NULL,
  `visi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visi`
--

INSERT INTO `visi` (`id`, `visi`) VALUES
(1, '\"Visi Desa Kedungjati yaitu menjadi Desa Swasembada Berbasis Pertanian\"  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_desa`
--
ALTER TABLE `galeri_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kepaladesa`
--
ALTER TABLE `kepaladesa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisasi_desa`
--
ALTER TABLE `organisasi_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaankades`
--
ALTER TABLE `pekerjaankades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkatdesa`
--
ALTER TABLE `perangkatdesa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayatpendidikankades`
--
ALTER TABLE `riwayatpendidikankades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `galeri_desa`
--
ALTER TABLE `galeri_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kepaladesa`
--
ALTER TABLE `kepaladesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `misi`
--
ALTER TABLE `misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `organisasi_desa`
--
ALTER TABLE `organisasi_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pekerjaankades`
--
ALTER TABLE `pekerjaankades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `perangkatdesa`
--
ALTER TABLE `perangkatdesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `riwayatpendidikankades`
--
ALTER TABLE `riwayatpendidikankades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visi`
--
ALTER TABLE `visi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
