-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 05:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weshopdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'Apple Iphone 6', 'banner1.png', 'index.php?page=detail&barang_id=5', 'on'),
(2, 'Samsung A3 A300H', 'banner2.png', 'index.php?page=detail&barang_id=6', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `event_id` int(10) NOT NULL,
  `nama_event` varchar(250) NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('on','off') NOT NULL,
  `deskripsi_singkat` text NOT NULL,
  `tanggal_event` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`event_id`, `nama_event`, `deskripsi`, `gambar`, `status`, `deskripsi_singkat`, `tanggal_event`) VALUES
(21, 'Seminar \"Peduli\"', '<p>Peduli lingkungan merupakan hal yang sangat penting bagi keberlangsungan hidup manusia dan juga alam. Lingkungan memegang peran yang sangat besar dalam keberlangsungan hidup manusia, seperti membekali kita dengan sumber daya alam, seperti air, makanan, dan bahan baku industri. Oleh karena itu, penting bagi setiap orang untuk memahami pentingnya peduli lingkungan dan melakukan tindakan yang positif untuk melestarikan lingkungan.</p><p>Salah satu cara untuk peduli lingkungan adalah dengan melakukan aktivitas yang ramah lingkungan. Misalnya, mengurangi penggunaan plastik, menggunakan bahan baku yang ramah lingkungan, dan mengurangi pemakaian energi. Dengan melakukan aktivitas ini, kita bisa membantu mengurangi dampak negatif terhadap lingkungan dan memberikan kontribusi positif bagi lingkungan.</p><p>Lingkungan juga dapat terancam oleh aktivitas manusia, seperti penebangan hutan, polusi udara dan air, dan perburuan liar. Oleh karena itu, penting bagi setiap orang untuk memahami dampak dari aktivitas mereka terhadap lingkungan dan melakukan tindakan untuk mengurangi dampak negatif tersebut. Misalnya, dengan mengurangi pemakaian bahan bakar fosil, mengadopsi gaya hidup hijau, dan berpartisipasi dalam kegiatan lingkungan.</p><p>Dalam jangka panjang, peduli lingkungan akan memberikan manfaat yang besar bagi lingkungan, manusia, dan juga hewan. Oleh karena itu, penting bagi setiap orang untuk peduli lingkungan dan melakukan tindakan yang positif untuk melestarikan lingkungan. Jika setiap orang berkontribusi, kita dapat menciptakan lingkungan yang lebih baik untuk masa depan generasi yang akan datang.</p>', 'http://lh6.ggpht.com/AgNB7gqrTcasUyRvoixc67FfUYT6jsnepE7oue7XoVzZxgsESlLhQEp2G517kHIq8ajy8Jvf7NtFxt7Vziq6KUaw=s1500', 'on', 'Peduli terhadap lingkungan merupakan sikap dan tindakan yang berupaya untuk mencegah kerusakan pada lingkungan alam di sekitarnya, dan juga berupaya untuk memperbaiki kerusakan- kerusakan alam yang sudah terjadi.', '2023-02-08'),
(33, 'Upacara Bendera', '<p>Upacara Bendera adalah sebuah acara yang dilaksanakan secara rutin setiap hari Senin pagi di sekolah-sekolah, kantor, dan institusi lainnya di seluruh Indonesia. Upacara ini dilakukan untuk menunjukkan rasa nasionalisme dan cinta tanah air kepada negara Indonesia.</p><p>Upacara Bendera dilakukan dengan memasang Bendera Merah Putih yang menjadi lambang negara Indonesia. Bendera tersebut diterbangkan dalam posisi riang dan meriah sambil didengarkan lagu kebangsaan Indonesia Raya dan membaca sumpah pemuda.</p><p>Upacara Bendera dilakukan secara berjenjang, mulai dari pelajar sekolah dasar hingga pegawai negeri. Setiap tahap upacara memiliki peran dan tugas masing-masing, seperti memimpin doa, memimpin lagu kebangsaan, dan memimpin membaca sumpah pemuda.</p><p>Upacara Bendera bukan hanya sekadar acara formalitas saja, namun juga merupakan wujud rasa nasionalisme dan cinta tanah air yang harus diterapkan oleh setiap warga negara Indonesia. Upacara ini memberikan kesempatan bagi setiap individu untuk menunjukkan rasa cinta dan memperkuat semangat nasionalisme.</p>', 'http://lh4.ggpht.com/kiz6jcKyTbPDZTGLXP-ginLBPmgWodyb_uqQQ5YYy43Dc2QOFu_HqGtYtcRTlwjHmGe3n9K2L3WnIrWBoyX_Ya-aoGs=s1500', 'on', 'Hari kemerdekaan', '2023-09-17'),
(34, 'Kunjungan Industri', '<p>Menjalin hubungan industri adalah suatu proses penting bagi perusahaan untuk memperluas jaringan bisnis, memperkuat posisi di pasar, dan membangun kemitraan yang baik dengan para mitra industri. Hal ini sangat penting karena industri saat ini membutuhkan kemitraan dan kerja sama yang baik untuk mencapai sukses dan memenuhi kebutuhan pasar.</p><p>Berikut adalah beberapa tips untuk menjalin hubungan industri yang baik:</p><ol>	<li>	<p>Kualitas produk dan layanan Kualitas produk dan layanan adalah faktor utama yang mempengaruhi hubungan industri. Perusahaan harus memastikan bahwa produk dan layanannya memenuhi standar dan harus menjaga kualitas produk dan layanannya agar tetap konsisten.</p>	</li>	<li>	<p>Komunikasi yang efektif Komunikasi yang efektif adalah salah satu faktor penting dalam menjalin hubungan industri. Perusahaan harus memastikan bahwa komunikasi yang dilakukan dengan mitra industrinya jelas, transparan, dan terbuka.</p>	</li>	<li>	<p>Kemampuan menyesuaikan diri Perusahaan harus mampu menyesuaikan diri dengan perubahan lingkungan bisnis dan pasar. Kemampuan untuk beradaptasi dengan perubahan dan menyesuaikan diri dengan kebutuhan mitra industri sangat penting untuk mempertahankan hubungan industri yang baik.</p>	</li></ol>', 'https://media-exp1.licdn.com/dms/image/C5605AQFgO5o6gZJS3w/videocover-low/0/1641125952229?e=2147483647&v=beta&t=gCJYgbV4VY03AZqYoRUNnuZmL6Ws53Y-dXq5MUf1pDg', 'on', 'Menjalin kerja sama dengan perusahaan A', '2023-03-08'),
(35, 'Rapat seluruh divisi', '<p>Rapat sekolah adalah salah satu cara penting bagi sekolah untuk membahas dan mengatasi masalah yang ada serta menentukan arah tujuan dan strategi untuk mencapainya. Rapat sekolah juga memungkinkan para pihak terkait seperti guru, staf, orang tua siswa, dan siswa untuk berpartisipasi dan berbicara tentang hal-hal penting yang terkait dengan sekolah.</p>\r\n\r\n<p>Berikut adalah beberapa hal yang harus diperhatikan dalam melaksanakan rapat sekolah:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Agenda rapat Agenda rapat harus disiapkan sebelum rapat dimulai. Agenda ini harus memuat topik yang akan dibahas dan waktu yang ditentukan untuk setiap topik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Partisipasi Partisipasi dari semua pihak yang terkait sangat penting dalam rapat sekolah. Para guru, staf, orang tua siswa, dan siswa harus diperbolehkan untuk berbicara dan berpartisipasi dalam diskusi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Konstruktif dan profesional Rapat sekolah harus dilaksanakan dengan konstruktif dan profesional. Semua pihak harus memastikan bahwa diskusi dilakukan dengan baik dan bahwa solusi ditemukan untuk masalah yang ada.</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n</ol>', 'https://eljabar.com/wp-content/uploads/2022/04/SMK-PI-Gelar-Fashion-Show-Kebudayaan-dalam-Peringati-Hari-Kartini--300x200.jpg', 'on', 'Membahas tentang kegiatan sekolah', '2023-04-20'),
(36, 'Rapat kelulusan', '<p>Kelulusan SMK adalah momen penting bagi siswa yang mengakhiri masa pendidikan mereka di sekolah menengah kejuruan (SMK). Ini adalah tahap penting dalam hidup siswa karena mereka harus mempersiapkan diri untuk memasuki dunia kerja atau melanjutkan pendidikan ke jenjang yang lebih tinggi.</p>\r\n\r\n<p>Berikut adalah beberapa hal yang harus diperhatikan saat mempersiapkan kelulusan SMK:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Mempersiapkan diri untuk dunia kerja Kelulusan SMK adalah momen penting bagi siswa untuk mempersiapkan diri untuk dunia kerja. Mereka harus memastikan bahwa mereka memiliki kemampuan dan pengetahuan yang diperlukan untuk bekerja di bidang yang mereka minati.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mencari informasi tentang karier Siswa harus memastikan bahwa mereka memiliki informasi yang cukup tentang karier yang ingin mereka jalani. Ini bisa dilakukan dengan mencari informasi tentang karier yang sesuai dengan bidang minat dan kemampuan mereka.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mengembangkan kemampuan Siswa harus terus mengembangkan kemampuan dan pengetahuan mereka selama masa pendidikan dan setelah kelulusan. Ini bisa dilakukan dengan mengikuti kursus atau pelatihan tambahan untuk meningkatkan kemampuan dan pengetahuan mereka.</p>\r\n	</li>\r\n</ol>', 'http://lh5.ggpht.com/Dk455d8oIg5oURnAji18lOlKsDq_lYLJrwvH17e0BbiZQ-0wCSCEWwU9GRtXVMXN09l0ZpmaqcHj36Ltfifo2VGI9Pg=s1500', 'on', 'Acara kelulusan dan hubungan mitra industri', '2023-05-05'),
(37, 'Kunjungan ke SMP 21', '<p>Mempromosikan sekolah adalah hal penting yang dilakukan untuk menarik perhatian calon siswa dan orang tua. Promosi sekolah bertujuan untuk menunjukkan bahwa sekolah memiliki fasilitas dan sumber daya yang memadai untuk mendukung proses belajar mengajar. Dalam artikel ini, kita akan membahas beberapa cara efektif untuk mempromosikan sekolah.</p><ol>	<li>	<p>Membuat website sekolah Website sekolah adalah salah satu cara efektif untuk mempromosikan sekolah. Website sekolah harus memberikan informasi yang detail tentang sekolah, fasilitas, kegiatan, dan prestasi sekolah. Orang tua dan calon siswa dapat mengunjungi website sekolah untuk mengetahui informasi yang lebih lengkap tentang sekolah.</p>	</li>	<li>	<p>Menggunakan media sosial Media sosial adalah salah satu cara efektif untuk mempromosikan sekolah. Sekolah dapat membuat akun media sosial dan mengupdate informasi tentang sekolah, fasilitas, kegiatan, dan prestasi sekolah. Ini akan membantu menarik perhatian orang tua dan calon siswa.</p>	</li>	<li>	<p>Menjalankan kegiatan ekstrakurikuler Kegiatan ekstrakurikuler adalah cara yang baik untuk mempromosikan sekolah. Kegiatan ini akan membantu menunjukkan keahlian dan bakat siswa dan membuat sekolah terlihat lebih menarik bagi orang tua dan calon siswa.</p>	</li></ol>', 'http://lh4.ggpht.com/sSHArjucHofd8VM2vXAZW16VzomGjur5sUWXmLpYgPrElFpfUj5VZLgRwE7tSlU96fQWqUKKP23PtO85PDWmguXH=s1500', 'on', 'Mempromosikan SMK PI', '2023-12-05'),
(45, 'Meet our alumni BERSAMA SMP 10', '<p>hoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohjhoieahuioasoidhbjiosdiohj</p>', 'https://th.bing.com/th/id/R.8541061872aceb815d6f9380f142f9b3?rik=tr3PS1cDN6lcFA&riu=http%3a%2f%2fnusakini.com%2fupload%2fimage%2fmedia%2fL7SlbhjF1h_1481669870.jpg&ehk=r483jX37DzOJurZ%2fsXCJV61DnglHaSUtzQbiOPp%2fiVM%3d&risl=&pid=ImgRaw&r=0', 'on', 'Pertemuan bersama alumni dari universitas', '2023-02-22'),
(48, 'Kunjjungan SMP 10 EXPO 2023', '<p>;OWJDV;OJO;4GGPOIUERAOPH76I35IKI;OAj;ogujioJUHWEIUFGIOU</p>', 'https://cdn.medcom.id/dynamic/content/2020/06/11/1152933/RXDwxfdYOq.jpg?w=1024', 'on', 'EWGUVPOIWUQILDVUJ;OJU4G4', '2023-02-25'),
(49, 'KUNJUNGAN SMP', '<p>A</p>', 'https://th.bing.com/th/id/R.8541061872aceb815d6f9380f142f9b3?rik=tr3PS1cDN6lcFA&riu=http%3a%2f%2fnusakini.com%2fupload%2fimage%2fmedia%2fL7SlbhjF1h_1481669870.jpg&ehk=r483jX37DzOJurZ%2fsXCJV61DnglHaSUtzQbiOPp%2fiVM%3d&risl=&pid=ImgRaw&r=0', 'on', 'KUNJUNGAN EXPO CODING', '2023-02-15'),
(50, 'kUNJUNGAN', '<p>KUNJUNGAN SMP 10 BANDUNG KE SMK PRAKARYA INTERNASINAL</p>', 'https://nuranipermata.files.wordpress.com/2018/02/img_20180208_1215012065941015.jpg?w=1472', 'on', 'KUNJUNGAN SMP 10', '2023-02-15'),
(51, 'GETRING ALUMNI RPL', '<p>BERTEMUNYA ALUMNI RPL SELURUH ANGKATAN, ANGKATAN 2023</p>', 'https://3.bp.blogspot.com/-169a2C2C6nw/VFnznoC0VUI/AAAAAAAAACQ/OqcSSF85Bww/s1600/KI.JPG', 'on', 'BERTEMUNYA ALUMNI RPL SELURUH ANGKATAN', '2023-02-15'),
(52, 'KUJUNGAN MTS BAABUSALAM KE SMK PRAKARYA INTERNASIONAL', '<p>KUJUNGAN MTS BAABUSALAM KE SMK PRAKARYA INTERNASIONAL PADA TANGGAL 15 FEB 2023</p>', 'https://www.mtsn30-jakarta.sch.id/wp-content/uploads/2020/07/WhatsApp-Image-2020-07-10-at-13.34.291.jpeg', 'on', 'KUJUNGAN MTS BAABUSALAM KE SMK PRAKARYA INTERNASIONAL PADA TANGGAL 15 FEB 2023', '2023-02-15'),
(53, 'KUNJUNGAN DARI SMPN 1 DAYEUHKOLOT', '<p>KUNJUNGAN DARI <strong>SMPN </strong>1 DAYEUHKOLOT KE SMK PRAKARYA INTERNASIONAL</p>', 'https://th.bing.com/th/id/R.435723d6d5c5e5ef32794e5dcda71320?rik=OcPsnMAY9aV7Ig&riu=http%3a%2f%2f3.bp.blogspot.com%2f-5juTAVfDmIs%2fV6Mf89DigUI%2fAAAAAAAAGco%2fWNfE1U0gL8o4Rx8yO5jEIglYVr4KEUNOACK4B%2fs1600%2flogo_smpn_1_dyk.png&ehk=Zea7fSJdU3R4PchXdvvq%2f', 'on', 'KUNJUNGAN DARI SMPN 1 DAYEUHKOLOT KE SMK PRAKARYA INTERNASIONAL', '2023-02-15'),
(54, 'mts baabusalam ke smk prakarya internasional', '<p>kunjungan mts baabusalam ke smk prakarya internasional pada tanggal 15</p>', 'https://i.ytimg.com/vi/mvTB2-QAMRg/maxresdefault.jpg', 'on', 'kunjungan mts baabusalam ke smk prakarya internasional', '2023-02-15'),
(55, 'kunjungan smpn 60 bandung ke smk prakarya internasional', '<p>kunjungan smpn 60 bandung ke smk prakarya internasional pada tanggal 15</p>', 'https://smpn60bandung.sch.id/images/image.php?id=F1t1a0L7F1E0M8d5', 'on', 'kunjungan smpn 60 bandung ke smk prakarya internasional', '2023-02-15'),
(56, 'kunjungan smp 25 bandung ke prakarya internasional', '<p>kunjungan smp 25 bandung ke prakarya internasional</p>', 'https://th.bing.com/th/id/OIP.ip-ZuayaJ90Wp9-pVh8UMwHaDF?pid=ImgDet&rs=1', 'on', 'kunjungan smp 25 bandung ke prakarya internasional', '2023-02-15'),
(57, 'mobile legend mts baabusalam', '<p>lombaa ml menang dapat hadiah 1 rb</p>', 'https://usercontent1.hubstatic.com/13802326_f520.jpg', 'on', 'lombaa ml', '2023-02-15'),
(58, 'kunjungan smp kartika x1 bandung ke smk prakarya internasional', '<p>kunjungan smp kartika x1 bandung ke smk prakarya internasion<strong>al pada tanggal 15</strong></p>', 'https://th.bing.com/th/id/OIP.bnir9kaXZ3RYgeOzm2cXCAAAAA?pid=ImgDet&rs=1', 'on', 'kunjungan smp kartika x1 bandung ke smk prakarya internasional', '2023-02-15'),
(59, 'kunjungan smp bhayangkari ke smk prakarya internasional', '<p>kunjungan smp bhayangkari ke smk prakarya internasional pada tanggal 15</p>', 'https://smpkbhybdg.sch.id/wp-content/uploads/2022/03/Logo128px.png', 'on', 'kunjungan smp bhayangkari ke smk prakarya internasional', '2023-02-15'),
(61, 'kunjungan smp ganesha ke smk prakarya internasional', '<p>kunjungan smp ganesha ke smk prakarya internasional&nbsp;</p>', 'https://th.bing.com/th/id/OIP.6Vs2jq-tttqv9CIHaxkeHwAAAA?pid=ImgDet&rs=1', 'on', 'kunjungan smp ganesha ke smk prakarya internasional', '2023-02-15'),
(62, 'Kunjungan Smp Dewi Sartika ke SMK Prakarya Internasionl', '<p>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em>smp dewi sartika ke smk prakar<em><strong>ya internasionl</strong></em></p>', 'https://i1.wp.com/www.serbabandung.com/wp-content/uploads/2015/03/sekolah-dewi-sartika.jpg', 'on', 'smp dewi sartika ke smk prakarya internasionl', '2023-02-15'),
(63, 'generasi muda', '<p>dilaksa2nkn pada hri ini dn detik inj</p>', 'https://th.bing.com/th/id/OIP.oEKtibpMi9kwJp2mazMb2AHaDm?pid=ImgDet&rs=1', 'on', 'miramirryann remja jompo', '2023-02-15'),
(68, 'Kunjungan SMP 38 BANDUNG', '<p>ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;ASYIIIKKKKK!!!!&nbsp;</p>', 'https://pasjabar.com/wp-content/uploads/2022/07/IMG-20220718-WA0010-350x250.jpeg', 'on', 'ASYIIIKKKKK!!!!', '2023-02-17'),
(69, 'KUNJUNGAN SMP 11 KE SMK PRAKARYA INTERNASIONAL', '<p>YAAHAHHAAHAYUK!</p>', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe7R353JBVKdLK7CNPcqccArUSYQqbAlbFDg&usqp=CAU', 'on', 'SLEBEWW', '2023-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Smartphone', 'on'),
(2, 'Televisi', 'on'),
(3, 'Kamera', 'on'),
(4, 'Radio', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Giwan', 'Giwan24april@gmail.com', NULL, '$2y$10$Q2zO738hsdi5JjaGTWDwWuAIa.7.PFHw0XcKpwv.1lvSohquZYna2', NULL, '2023-02-01 19:25:02', '2023-02-01 19:25:02'),
(4, 'admin', 'admin@gmail.com', NULL, '$2y$10$bkprDVCOAHVOfkEDidTswuf7T8qYkB04VNbJ0lxfmiS9jdYSFDjQm', NULL, '2023-02-04 04:22:32', '2023-02-04 04:22:32'),
(6, 'alfat', 'alfathul1717@gmail.com', NULL, '$2y$10$qGWu.2PQDGaoTtPffdJIhevoY5Ac.n5lkODvCayTfrwEKF2VdhpDG', NULL, '2023-02-04 05:11:31', '2023-02-04 05:11:31'),
(7, 'John', 'Jflix194@gmail.com', NULL, '$2y$10$LIjXaZPfHoDXL9cwzpCJ.u6ypW9L1DTAQQwuc179nrtBrC3NOL5Vi', NULL, '2023-02-05 16:56:03', '2023-02-05 16:56:03'),
(8, 'Anita', 'Anitatasyara14@gmail.com', NULL, '$2y$10$2BOmtwLYbCVOoDpMOAnlguPHxcZq5EELsUsZVGvm.z6EKk6W3R2fG', NULL, '2023-02-07 00:59:07', '2023-02-07 00:59:07'),
(9, 'giwan123', 'giwan123@gmail.com', NULL, '$2y$10$eHhzxmymaF7TP.qFDz4oyOrTt.R0/aAFOXGKeQy5EGIqRk1wI9.3K', NULL, '2023-02-13 01:57:04', '2023-02-13 01:57:04'),
(10, 'smkpi', 'smkpi@gmail.com', NULL, '$2y$10$NyH0nE4Eqh02z53Fv.7KvuoR1mrqgine.c63DTC8JpZWCN4xSiBGm', NULL, '2023-02-15 19:09:17', '2023-02-15 19:09:17'),
(11, 'Giwan', 'Giwan@gmail.com', NULL, '$2y$10$7.K6i.q5EtZ6P0dloOiwHujlYdHcZLXTuUrH.R3fefvkwhwr0E7wu', NULL, '2023-03-08 19:27:49', '2023-03-08 19:27:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
