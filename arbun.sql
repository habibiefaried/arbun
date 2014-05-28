-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2013 at 11:01 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arbun`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

DROP TABLE IF EXISTS `akun`;
CREATE TABLE IF NOT EXISTS `akun` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `nim` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `fakultas_id` int(10) NOT NULL,
  `jurusan_id` int(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `jen_kelamin` int(2) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `approved` int(1) DEFAULT '0',
  `forget` varchar(100) DEFAULT NULL,
  `view` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `test16` (`fakultas_id`),
  KEY `test17` (`jurusan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `nama`, `email`, `password`, `salt`, `nim`, `tgl_lahir`, `fakultas_id`, `jurusan_id`, `status`, `jen_kelamin`, `angkatan`, `picture`, `approved`, `forget`, `view`) VALUES
(2, 'test', 'sonnylazuardi@gmail.com', 'cab31c8fe524dd518694edde46b8c04f9c413513', '7573ad73013de450ab5d1d4bf1badd2e', '123', '0123-01-01', 1, 1, 1, 0, 123, '', 1, '', 3),
(3, 'Thea Olivia', '13511001@std.stei.itb.ac.id', '', '', '13511001', '0124-01-01', 1, 1, 1, 1, 2011, '', 1, '', 2),
(4, 'Muhammad Furqan Habibi', '13511002@std.stei.itb.ac.id', '', '', '13511002', '0125-01-01', 1, 1, 1, 0, 2011, '', 1, '', 1),
(5, 'David Setyanugraha', '13511003@std.stei.itb.ac.id', '', '', '13511003', '0126-01-01', 1, 1, 1, 0, 2011, '', 1, '', 1),
(6, 'Lukman Hakim', '13511004@std.stei.itb.ac.id', '', '', '13511004', '0127-01-01', 1, 1, 1, 0, 2011, '', 1, '', 2),
(7, 'Ridho Akbarisanto', '13511005@std.stei.itb.ac.id', '', '', '13511005', '0128-01-01', 1, 1, 1, 0, 2011, '', 1, '', 1),
(8, 'Krisna Fathurahman', '13511006@std.stei.itb.ac.id', '', '', '13511006', '0129-01-01', 1, 1, 1, 0, 2011, '', 1, '', 3),
(9, 'Salvian Reynaldi', '13511007@std.stei.itb.ac.id', '', '', '13511007', '0130-01-01', 1, 1, 1, 0, 2011, '', 1, '', 1),
(10, 'Muhammad Rian Fakhrusy', '13511008@std.stei.itb.ac.id', '', '', '13511008', '0131-01-01', 1, 1, 1, 0, 2011, '', 1, '', 2),
(11, 'Kelvin Valensius', '13511009@std.stei.itb.ac.id', '', '', '13511009', '0132-01-01', 1, 1, 1, 0, 2011, '', 1, '', 2),
(12, 'Bintang Rahmatullah', '13511011@std.stei.itb.ac.id', '', '', '13511011', '0133-01-01', 1, 1, 1, 0, 2011, '', 1, '', 1),
(13, 'Dyah Rahmawati', '13511012@std.stei.itb.ac.id', '', '', '13511012', '0134-01-01', 1, 1, 1, 1, 2011, '', 1, '', 1),
(14, 'Alif Raditya Rochman', '13511013@std.stei.itb.ac.id', '', '', '13511013', '0135-01-01', 1, 1, 1, 0, 2011, 'alif.jpg', 1, '', 4),
(15, 'Riandy Rahman Nugraha', '13511014@std.stei.itb.ac.id', '', '', '13511014', '0136-01-01', 1, 1, 1, 0, 2011, '', 1, '', 3),
(16, 'Fransiskus Xaverius Christian', '13511016@std.stei.itb.ac.id', '', '', '13511016', '0137-01-01', 1, 1, 1, 0, 2011, '', 1, '', 4),
(17, 'Rangga Yustian M', '13511017@std.stei.itb.ac.id', '', '', '13511017', '0138-01-01', 1, 1, 1, 0, 2011, '', 1, '', 3),
(18, 'Tito D Kesumo Siregar', '13511018@std.stei.itb.ac.id', '', '', '13511018', '0139-01-01', 1, 1, 1, 0, 2011, '', 1, '', 6),
(19, 'Ignatius Evan Daryanto', '13511019@std.stei.itb.ac.id', '', '', '13511019', '1993-01-01', 1, 1, 1, 0, 2011, '384642_197522190334580_1930107461_n.jpg', 1, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buku_id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test3` (`buku_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`id`, `buku_id`, `nama`) VALUES
(14, 22, 'assad'),
(16, 22, '[removed]alert&#40;''hello''&#41;;[removed]');

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

DROP TABLE IF EXISTS `bidang`;
CREATE TABLE IF NOT EXISTS `bidang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`id`, `nama`) VALUES
(12, 'Huffman'),
(13, 'Pohon'),
(15, 'Graf'),
(16, 'Kriptografi'),
(17, 'Teori Himpunan');

-- --------------------------------------------------------

--
-- Table structure for table `bidang_buku`
--

DROP TABLE IF EXISTS `bidang_buku`;
CREATE TABLE IF NOT EXISTS `bidang_buku` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buku_id` int(10) NOT NULL,
  `bidang_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idMatkulku` (`bidang_id`),
  KEY `idBukuk` (`buku_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bidang_buku`
--

INSERT INTO `bidang_buku` (`id`, `buku_id`, `bidang_id`) VALUES
(1, 17, 13),
(2, 7, 15),
(3, 20, 13),
(4, 22, 16),
(5, 19, 13),
(6, 21, 15),
(7, 18, 17);

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

DROP TABLE IF EXISTS `bookmark`;
CREATE TABLE IF NOT EXISTS `bookmark` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buku_id` int(10) NOT NULL,
  `akun_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test8` (`buku_id`),
  KEY `test12` (`akun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`id`, `buku_id`, `akun_id`) VALUES
(1, 6, 2),
(4, 22, 19),
(6, 22, 14);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
CREATE TABLE IF NOT EXISTS `buku` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `akun_id` int(10) NOT NULL,
  `jilid` int(5) DEFAULT NULL,
  `penerbit` varchar(80) DEFAULT NULL,
  `ISBN` varchar(12) DEFAULT NULL,
  `abstrak` text,
  `link` varchar(150) NOT NULL,
  `cover` varchar(150) DEFAULT NULL,
  `view` int(10) DEFAULT '0',
  `tgl_terbit` date DEFAULT NULL,
  `status` int(5) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `tes1` (`akun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `akun_id`, `jilid`, `penerbit`, `ISBN`, `abstrak`, `link`, `cover`, `view`, `tgl_terbit`, `status`, `created`, `updated`) VALUES
(4, 'lorem ipsum', 2, 0, '', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non', '', '', 5, '2013-01-20', 1, '2013-01-20 00:49:14', '2013-01-25 10:12:49'),
(5, 'consectetur adipisicing', 2, 0, '', '', 'Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'http://localhost/arbun/public/pdf/IF2030_Proc_11_ListRekursif.pdf', '', 6, '2013-01-20', 1, '2013-01-20 00:49:47', '2013-01-23 10:06:54'),
(6, 'Aplikasi Graf dalam Diagnosis Penyakit Dalam', 2, 0, '', '', 'Pada umumnya penyakit dalam sudah merabah ke seluruh kalangan masyrakat dan tidak menutup kemungkinan kita sendiri dapat terkena penyakit tersebut. Penyakit dalam memiliki jenis yang sangat beragam, seperti contoh yang bisa kita lihat dalam lingkungan sekitar yakni demam berdarah, malaria, dan lainnya. Penyakit – penyakit tersebut dapat dengan mudah menular ke masyarakat, maka dari itu diperlukan diagnosis yang sangat cepat dan tepat untuk mengklasifikasi penyakit tersebut untuk menetukan tindakan penanganan yang tepat dalam menangani penyakit tersebut seperti pengobatan dan tindakan lainnya yang dibutuhkan. Dokter penyakit dalam dilatih untuk memecahkan teka-teki masalah diagnosis dan menangani penyakit dan keadaan kronis parah dimana beberapa penyakit yang berbeda dapat bersimpangan di saat yang sama. Diagnosa penyakit dalam dapat dilakukan dengan menggunakan tenik metode penelusuran, dimana metode penelusuran dapat dilakukan dengan graf untuk memudahkan diagnosa dan penanganan yang harus dilakukan seperti obat dan tindakan yang harus dilakukan.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-003.pdf', '', 4, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-21 16:57:15'),
(7, 'Graph Theory Applications in Electrical Networks ', 3, 0, '', '', 'The graph is a traditional way to solve problems with\r\na primitive step-by-step system. So far we have learned\r\nthat graph theory have solved many problems, one of\r\nthem is electrical circuits. In electrical circuits, there are\r\nmany aspects using the graph theory, such as in basic\r\nelectric circuits into digital computers to Printed Circuit\r\nBoard (PCB) layout problems.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-006.pdf', 'Graph_Theory_Applications_in_Electrical_Networks.jpg', 5, '2013-01-21', 1, '2013-01-20 01:32:21', '2013-01-25 10:15:23'),
(8, 'Bilangan Prima, Uji Keprimaan, dan Berbagai Aplikasi Bilangan Prima ', 4, 0, '', '', 'Pada makalah ini akan dibahas mengenai salah\nsatu obyek studi yang sangat penting di bidang teori\nbilangan, yaitu bilangan prima. Sebagai bilangan yang\nmemiliki sifat keterbagian yang unik, bilangan prima\nmemiliki aplikasi yang luas baik dalam ilmu matematika\nmurni maupun terapan dalam dunia informatika. Oleh\nkarena itu banyak usaha yang dilakukan oleh\nmatematikawan / ilmuan komputer untuk mempelajari\nsifat-sifat bilangan ini dan pemanfaatan dari sifat-sfat\ntersebut. Di antara usaha tersebut adalah pengembangan\nteorema / algoritma baru yang dapat menentukan dengan\npasti keprimaan suatu bilangan.\nDi sini akan dibahas mengenai definisi dan sifat bilangn\nprima, berbagai teori maupun algoritma pengujian\nkeprimaan, serta berbagai aplikasinya di dalam maupun\nluar informatika.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-053.pdf', '', 6, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-25 10:12:43'),
(9, 'Aplikasi Graf Bipartite dalam Hash Sistem Music Recognition (Aplikasi Shazam) ', 5, 0, '', '', 'Dewasa ini, banyaknya jumlah musik yang\nbermunculan telah menimbulkan suatu kesulitan bagi\nmanusia untuk mengidentifikasi suatu judul musik ketika\nberada di suatu tempat yang memutarkan lagu yang asing\nbaginya. Dengan suatu aplikasi bernama “Shazam”, kini\nmasalah tersebut dapat diselesaikan. Setiap orang dapat\nlangsung mengetahui judul lagu sampai nama penyanyi dari\nsebuah musik yang didengarnya tanpa harus pergi ke toko\nmusik.\nKonsep utama dari aplikasi Shazam ini memanfaatkan\nidentitas unik yang dimiliki oleh setiap lagu dan\nmencocokkannya dengan basis data yang dimilikinya.\nIdentitas unik musik tersebut dikenal dengan nama\nSpectogram. Sistem penyimpanan identitas unik yang\ndimiliki oleh musik tersebut ternyata memanfaatkan prinsip\ndari salah satu jenis graf,yaitu graf bipartite.\nMakalah ini akan membahas penerapan konsep graf\nbipartite dalam pencarian identitas music tersebut terutama\ndengan aplikasi “Shazam”.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-100.pdf', '', 1, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-20 05:11:55'),
(10, 'Kriptografi Unsur Kimia dalam Tabel Periodik ', 6, 0, '', '', 'Makalah ini membahas tentang teknik\nkriptogra? unsur kimia dalam tabel periodik.\nTabel periodik terdiri atas 118 unsur dapat\ndigunakan sebagai chiperteks dalam suatu\nplainteks menggunakan algoritma enkripsi\ntertentu. Hal ini merupakan hal yang baru\ndigunakan. Penggunaan unsur kimia dida-\nsarkan pada banyaknya jumlah unsur kimia\nyang disertai sifat keperiodikannya sehing-\nga dapat dijadikan sebuah kode dalam me-\nnyimpan sebuah pesan. Selain itu, bentuk\ntabel periodik yang unik juga membuat algo-\nritma ini terlihat berbeda dari yang lain.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-097.pdf', '', 1, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-23 16:45:14'),
(11, 'Analisis Mengenai Paradoks Permasalahan Monty Hall ', 7, 0, '', '', 'Matematika diskrit adalah cabang matematika\nyang mengkaji benda-benda diskrit. Definisi diskrit adalah\nterdiri atas sejumlah elemen berbeda yang berhingga dan\ntidak berkesinambungan. Yang termasuk bahasan dari\nmatematika diskrit ini antara lain yaitu logika.\nLogika berarti hasil pertimbangan akal pikiran yang\ndiutarakan lewat kata dan dinyatakan dalam bahasa.\nLogika ini sebenarnya adalah bagian dari filsafat, yang\nmenggunakan studi penalaran. Terkadang, penalaran ini\nbertentangan dengan intuisi manusia. Pertentangan ini\nsering disebut dengan paradoks.\nSalah satu contoh paradoks diawali pada sebuah acara di\nAmerika berjudul “Let’s Make a Deal”. Permasalahan ini,\nyaitu diberikan 3 pintu di mana salah satu berisi mobil dan\nsisanya kambing. Pilih 1 pintu, lalu pembawa acara yang\nsudah tahu isi dibalik semua pintu akan membuka pintu\nyang di baliknya terdapat kambing. Lalu pembawa acara\nmenawarkan apakah ingin berganti menjadi pintu lainnya?\nDan apakah berganti pintu ini lebih menguntungkan?\nMakalah ini akan membahas lebih lanjut mengenai\npermasalahan ini yang kemudian sering dikenal dengan\nMonty Hall Problem.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-043.pdf', '', 1, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-21 17:55:36'),
(12, 'Enskripsi Chiperteks Lord Bacon’s Biliteral Alphabets Menggunakan Pohon ', 8, 0, '', '', 'Lord Bacon’s Biliteral Alphabets merupakan salah satu\nteknik enskripsi plaintext yang terkenal dalam Kriptografi\nselain Caesar’s Chiper dan Skema Shamir’s and Blakley’s.\nDengan menggunakan konsep pohon, chipertext yang\nmenggunakan enskripsi Lord Bacon’s Biliteral Alphabet\ndapat dideskripsikan dengan lebih mudah. Metode-metode\nyang berkaitan dengan prinsip pohon mampu\nmerepresentasikan proses enskripsi dengan lebih mudah.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-073.pdf', '', 3, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-21 04:45:00'),
(13, 'Algoritma Pengurutan Data Kompleksitas dan Penerapannya', 9, 0, '', '', 'Algoritma-algoritma pengurutan data dalam kajian ilmu\ninformatika, seringkali digunakan untuk menyelesaikan\nberbagai macam persoalan informatika. Dengan semakin\nbervariasinya permasalahan-permasalahan tadi, efisiensi dari\nalgoritma-algoritma pengurutan menjadi amat penting, karena\nalgoritma pengurutan biasanya merupakan sebagian saja dari\nsolusi total sebuah permasalahan di dunia informatika,\nsehingga alangkah baiknya jika proses pengurutan data tidak\nmenjadi batu sandungan dalam proses penyelesaian masalah\nsecara keseluruhan. Algoritma-algoritma pengurutan data\nyang ada saat ini dapat dikelompokkan menjadi 2, yaitu\nmenurut berbasis perbandingan atau tidaknya, atau juga\nmenurut stabil atau tidaknya.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-066.pdf', '', 0, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-20 01:45:45'),
(14, 'Application of Erdos–Gallai Theorem to Validate Degree Sequence of A Simple Graph ', 11, 0, '', '', 'In Computer Science, we often meet problems\nthat contain graph theory. This paper will give a sample\nproblem of graph theory and how to solve it. This paper is\ndivided into several sections. Section I will introduce the paper.\nSection II will present the problem. Section III is divided into 5\nsection. Section A will talk about some false approaches to\nsolve the problem. Section B will talk about Erd?s–Gallai\nTheorem statement. Section C will discuss about the proof of\nthe theorem. Section D will discuss about how to implement\nthe theorem. Section E will discuss about the complexity of the\nalgorithm. Section IV will show the implementation of the\nalgorithm in the form of code in C++. Section V will conclude\nthe paper.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-011.pdf', '', 1, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-20 06:25:35'),
(15, 'Aplikasi Penggunaan Graf Pada Sistem Website Video Streaming Youtube ', 12, 0, '', '', 'Makalah ini membahas tentang penaplikasian\ngraf pada jaringan server youtube juga sistem penyebaran\ndan keamanannya', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-087.pdf', '', 1, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-23 03:31:19'),
(16, 'Graph Theory for Representing the Connection among Users of Social Networks : Facebook, Twitter and Plurk ', 13, 0, '', '', 'This paper is about the graph theory which is\nused in analyzing and describing connection among users of\nsocial networks. Basic theories which is used is the types of\ngraph that consist of simple and unsimple graph, then\ndirected and undirected graph. We discuss several social\nnetworks, they are Facebook, Twitter, and Plurk. The\nconnection among Facebook users can be represented as\nundirected graph, while among Twitter users as directed\ngraph, and among Plurk users we use both, directed and\nundirected graph.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-075.pdf', '', 3, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-23 12:54:53'),
(17, 'Pengelompokan Organisme Dengan Menggunakan Algoritma Kruskal ', 14, 0, '', '', 'Dengan banyaknya jumlah organisme yang\r\nmencapai puluhan juta, kita memerlukan suatu cara yang\r\nmangkus untuk mengelompokkan keseluruhan organisme.\r\nUntuk menyeselesaikan masalah ini, kita akan mencoba\r\nmemodelkan permasalahan ini sebagai permasalahan graf.\r\nPermasalahan\r\nberubah\r\nmenjadi\r\nmodifikasi\r\ndari\r\npermasalahan minimum spanning tree. Dengan begitu kita\r\ndapat menyelesaikan permasalahan dengan algoritma yang\r\nserupa dengan minimum spanning tree dan kompleksitas\r\nwaktu yang relatif sama.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-091.pdf', '', 4, '2013-01-20', 1, '2013-01-20 01:32:21', '2013-01-25 01:57:13'),
(18, 'Penerapan Logika Fuzzy untuk Menghitung Uang Saku Perhari ', 15, 0, '', '', 'Pada makalah ini penulis akan membahas\r\nmengenai penerapan logika fuzzy. Logika fuzzy berdasar\r\npada teori himpunan fuzzy yang memetakan fungsi\r\nkeanggotaan suatu elemen dalam himpunan dalam rentang\r\n[0,1]. Logika fuzzy ini akan penulis gunakan untuk\r\nmenaksir uang saku yang sebaiknya penulis sediakan\r\nbergantung pada perkiraan konsumsi hari ini (dalam\r\nrupiah) dan lamanya aktivitas perhari penulis.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-047.pdf', 'Penerapan_Logika_Fuzzy_untuk_Menghitung_Uang_Saku_Perhari.jpg', 1, '2013-01-21', 1, '2013-01-20 01:32:21', '2013-01-25 10:54:41'),
(19, 'Diagnosa Ringan dengan Pohon Keputusan', 16, 0, '', '', 'Pohon sebagai cabang ilmu Struktur Diskrit,\r\nmemiliki keterkaitan dengan ilmu-ilmu lain dalam\r\nkehidupan kita. Seperti ilmu kedokteran misalnya. Dalam\r\nmenganalisis penyakit seorang pasien, secara tidak langsung\r\ndokter menggunakan ‘pola pikir’ pohon keputusan dalam\r\nmendiagnosa pasiennya. Dengan memperoleh kondisi pasien\r\nsebagai keputusan (simpul pohon sebagai keadaan) sampai\r\nakhirnya dapat mengerucut pada sebuah konklusi penyakit\r\ntertentu yang diderita pasien (daun pohon sebagai solusi).\r\nSehingga penyakit tersebut dapat diobati dengan cara\r\npengobatan yang tepat.\r\nMakalah ini akan membahas masalah kesehatan umum,\r\ndengan menggunakan aplikasi pohon keputusan dan ilmu\r\nkedokteran, sehingga kita sebagai orang awam mengenai\r\nilmu medis, dapat segera ‘mendiagnosa’ apa penyakit yang\r\nkita derita harus segera mendapat penanganan pihak medis,\r\natau dapat diobati sendiri.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-080.pdf', 'Diagnosa_Ringan_dengan_Pohon_Keputusan.jpg', 2, '2013-01-21', 1, '2013-01-20 01:32:21', '2013-01-25 10:45:41'),
(20, 'Aplikasi Pohon Keputusan dalam Rekrutmen Karyawan ', 17, 0, '', '', 'Rekrutmen karyawan baru bukan hal yang\r\nmudah untuk dilakukan. Berbagai kriteria diciptakan untuk\r\nmenentukan kualifikasi karyawan yang diinginkan Namun,\r\nsering kali perekrut kurang memahami dan menjalankan\r\nstandard oprational procedure (SOP) rekrutmen karyawan\r\nbaru sehingga rekrutmen tidak beralan dengan baik. Oleh\r\nkarena itu, dibutuhkan suatu metode untuk memudahkan\r\neksekusi SOP yaitu dengan pohon keputusan.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-001.pdf', 'Aplikasi_Pohon_Keputusan_dalam_Rekrutmen_Karyawan.jpg', 1, '2013-01-21', 1, '2013-01-20 01:32:21', '2013-01-25 10:42:01'),
(21, 'Directed Graph for Finite-State Machine ', 18, 0, '', '', 'Abstract–Finite-state machine is a widely used logic\r\nabstraction for a system in which the output depends\r\non the current state of the machine. It turns out that a\r\nsubset of finite-state machine with certain state table is\r\nconveniently expressed as simple state diagram, which\r\nis a directed graph. The state diagram is able to be\r\nrecognized as input by various algorithms. One\r\ncommonly and quite important process is to simulate\r\nthe finite-state machine, whose speed is in linear\r\ngrowth, but can be reduced to a constant time by pre-\r\ncomputation and pre-analyze. From the paper, it is\r\ndeduced that it might be possible that all finite state\r\nmachine is expressed in a simple state diagram, thus\r\nallowing a vast number of finite-state machine to be\r\nsimulated, analyzed, and processed using various\r\nstandard graph algorithms.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-094.pdf', 'Directed_Graph_for_Finite-State_Machine.jpg', 5, '2013-01-21', 1, '2013-01-20 01:32:21', '2013-01-25 10:53:04'),
(22, 'Kriptografi Visual Sederhana Berbasis Nilai Modulo pada Intensitas Warna Gambar RGB', 19, 0, '', '', 'Pada makalah ini akan dijelaskan mengenai\r\nimplementasi Kriptografi Visual berdasarkan nilai Modulo\r\nmasing-masing intensitas warna pada gambar RGB.\r\nKombinasi nilai modulo ini kemudian dikonversi dalam\r\nheksadesimal yang kemudian diterjemahkan berdasarkan\r\ntable ASCII. Metode ini tidak akan menjadikan seseorang\r\ncuriga terhadap gambar yang kita kirim karena perubahan\r\nwarna yang dilakukan tidak signifikan, sehingga tidak\r\nterlihat sebagai noise.', 'http://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2012-2013/Makalah2012/Makalah-IF2091-2012-038.pdf', 'Kriptografi_Visual_Sederhana_Berbasis_Nilai_Modulo_pada_Intensitas_Warna_Gambar_RGB.jpg', 11, '2013-01-21', 1, '2013-01-20 01:32:21', '2013-01-25 10:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `buku_kategori`
--

DROP TABLE IF EXISTS `buku_kategori`;
CREATE TABLE IF NOT EXISTS `buku_kategori` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buku_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test7` (`buku_id`),
  KEY `test14` (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `buku_kategori`
--

INSERT INTO `buku_kategori` (`id`, `buku_id`, `kategori_id`) VALUES
(1, 4, 15),
(3, 5, 15),
(4, 6, 15),
(5, 7, 15),
(6, 8, 15),
(7, 9, 15),
(8, 10, 15),
(9, 11, 15),
(10, 12, 15),
(11, 13, 15),
(12, 14, 15),
(13, 15, 15),
(14, 16, 15),
(15, 17, 15),
(16, 18, 15),
(17, 19, 15),
(18, 20, 15),
(19, 21, 15),
(20, 22, 15),
(21, 17, 16);

-- --------------------------------------------------------

--
-- Table structure for table `buku_matkul`
--

DROP TABLE IF EXISTS `buku_matkul`;
CREATE TABLE IF NOT EXISTS `buku_matkul` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buku_id` int(10) NOT NULL,
  `matkul_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test9` (`buku_id`),
  KEY `test18` (`matkul_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `buku_matkul`
--

INSERT INTO `buku_matkul` (`id`, `buku_id`, `matkul_id`) VALUES
(1, 4, 1),
(2, 5, 1),
(3, 6, 1),
(4, 7, 1),
(5, 8, 1),
(6, 9, 1),
(7, 10, 1),
(8, 11, 1),
(9, 12, 1),
(10, 13, 1),
(12, 14, 1),
(13, 15, 1),
(14, 16, 1),
(15, 17, 1),
(16, 18, 1),
(17, 19, 1),
(18, 20, 1),
(20, 21, 1),
(22, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
CREATE TABLE IF NOT EXISTS `fakultas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `singkat` varchar(5) DEFAULT NULL,
  `nama` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `singkat`, `nama`) VALUES
(1, 'STEI', 'Sekolah Teknik Elektro dan Informatika'),
(2, 'SITH', 'Sekolah Ilmu dan Teknologi Hayati'),
(3, 'FTI', 'Fakultas Teknologi Industri'),
(4, 'FTMD', 'Fakultas Teknik Mesin dan Dirgantara'),
(5, 'FTSL', 'Fakultas Teknik Sipil dan Lingkungan'),
(6, 'SBM', 'Sekolah Bisnis Manajemen'),
(7, 'FTTM', 'Fakultas Teknik Pertambangan dan Perminyakan'),
(8, 'FSRD', 'Fakultas Seni Rupa dan Desain'),
(9, 'SF', 'Sekolah Farmasi'),
(10, 'FMIPA', 'Fakultas Matematika dan Ilmu Pengetahuan Alam'),
(11, 'SAPPK', 'Sekolah Arsitektur, Perencanaan dan Pengembangan Kebijakan'),
(12, 'FITB', 'Fakultas Ilmu dan Teknologi Kebumian'),
(13, 'SPS', 'Sekolah Pasca Sarjana');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fakultas_id` int(10) NOT NULL,
  `singkat` varchar(10) DEFAULT NULL,
  `nama` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test19` (`fakultas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `fakultas_id`, `singkat`, `nama`) VALUES
(1, 1, 'IF', 'Teknik Informatika'),
(2, 1, 'STI', 'Sistem dan Teknologi Informasi'),
(3, 1, 'EL', 'Teknik Elektro'),
(4, 1, 'EP', 'Teknik Tenaga Listrik'),
(5, 1, 'ET', 'Teknik Telekomunikasi'),
(6, 1, '', 'Magister Teknik Elektro'),
(7, 1, '', 'Magister Informatika'),
(8, 1, '', 'Magister Teknologi Elektro dan Informatika'),
(9, 2, 'BI', 'Biologi'),
(10, 2, 'MIKRO', 'Mikrobiologi'),
(11, 2, 'RH', 'Rekayasa Hayati'),
(12, 2, 'RK', 'Rekayasa Kehutanan'),
(13, 2, 'RP', 'Rekayasa Pertanian'),
(14, 3, 'TK', 'Teknik Kimia'),
(15, 3, 'FT', 'Teknik Fisika'),
(16, 3, 'TI', 'Teknik Industri'),
(17, 3, 'MRI', 'Manajemen Rekayasa'),
(18, 4, 'TM', 'Teknik Mesin'),
(19, 4, 'MATERIAL', 'Teknik Material'),
(20, 4, 'AA', 'Aeronotika dan Astronotika'),
(21, 5, 'SI', 'Teknik Sipil'),
(22, 5, 'TL', 'Teknik Lingkungan'),
(23, 5, 'LAUT', 'Teknik Kelautan'),
(24, 6, '', 'Bisnis dan Manajemen'),
(25, 6, '', 'Kewirausahaan'),
(26, 7, '', 'Teknik Metalurgi'),
(27, 7, '', 'Teknik Pertambangan'),
(28, 7, '', 'Teknik Perminyakan'),
(29, 7, '', 'Teknik Geofisika'),
(30, 8, '', 'Seni Rupa'),
(31, 8, '', 'Kriya'),
(32, 8, 'DKV', 'Desain Komunikasi Visual'),
(33, 8, '', 'Desain Interior'),
(34, 8, 'DP', 'Desain Produk'),
(35, 9, '', 'Farmasi Klinik dan Komunitas'),
(36, 9, '', 'Sains dan Teknologi Farmasi'),
(37, 10, '', 'Astronomi'),
(38, 10, 'MA ', 'Matematika'),
(39, 10, 'FI', 'Fisika'),
(40, 10, 'KI', 'Kimia'),
(41, 11, 'AR', 'Arstiketur'),
(42, 11, 'PL', 'Perencanaan Wilayah dan Kota'),
(43, 11, 'PMSP', 'Studi Pembangunan'),
(44, 11, 'TR', 'Transportasi'),
(45, 11, '', 'Studi Pertahanan'),
(46, 11, 'RK', 'Rancang Kota'),
(47, 11, '', 'Kepariwisataan'),
(48, 11, '', 'Arsitektur Lanskap'),
(49, 12, '', 'Teknik Geologi'),
(50, 12, '', 'Meterologi'),
(51, 12, '', 'Oseanografi'),
(52, 12, '', 'Teknik Geodesi dan Geomatika'),
(53, 12, '', 'Teknik Air Tanah'),
(54, 12, '', 'Sains Kebumian'),
(55, 13, '', 'Program Magister'),
(56, 13, '', 'Program Doktor');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(15, 'Makalah'),
(16, 'Tugas Akhir');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

DROP TABLE IF EXISTS `komentar`;
CREATE TABLE IF NOT EXISTS `komentar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `akun_id` int(10) NOT NULL,
  `buku_id` int(10) NOT NULL,
  `status` int(2) DEFAULT '0',
  `isi` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test4` (`buku_id`),
  KEY `test13` (`akun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `akun_id`, `buku_id`, `status`, `isi`, `created`) VALUES
(15, 14, 22, 1, 'hello [removed]alert&#40;''halo''&#41;;[removed]', '2013-01-23 01:41:02'),
(16, 14, 21, 0, 'hello\r\n', '2013-01-23 02:11:45'),
(17, 14, 21, 1, 'appan sih\r\n', '2013-01-23 02:11:50'),
(18, 14, 21, 1, 'takut gak?\r\n', '2013-01-23 02:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `lapor`
--

DROP TABLE IF EXISTS `lapor`;
CREATE TABLE IF NOT EXISTS `lapor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `akun_id` int(10) NOT NULL,
  `buku_id` int(10) NOT NULL,
  `isi` varchar(500) NOT NULL,
  `is_read` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `test5` (`buku_id`),
  KEY `test11` (`akun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `lapor`
--

INSERT INTO `lapor` (`id`, `akun_id`, `buku_id`, `isi`, `is_read`) VALUES
(17, 14, 22, '[removed]alert&#40;''hello''&#41;;[removed]\r\n<img  />', 0);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

DROP TABLE IF EXISTS `matkul`;
CREATE TABLE IF NOT EXISTS `matkul` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `nama`) VALUES
(1, 'Struktur Diskrit');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `akun_id` int(10) NOT NULL,
  `buku_id` int(10) NOT NULL,
  `rating` int(5) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test2` (`buku_id`),
  KEY `test10` (`akun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `akun_id`, `buku_id`, `rating`, `created`) VALUES
(24, 14, 22, 4, '2013-01-23 01:40:45'),
(25, 14, 16, 3, '2013-01-23 03:23:26');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `test16` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test17` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `test3` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bidang_buku`
--
ALTER TABLE `bidang_buku`
  ADD CONSTRAINT `test15` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test6` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD CONSTRAINT `test12` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test8` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `tes1` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buku_kategori`
--
ALTER TABLE `buku_kategori`
  ADD CONSTRAINT `test14` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test7` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buku_matkul`
--
ALTER TABLE `buku_matkul`
  ADD CONSTRAINT `test18` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test9` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `test19` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `test13` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test4` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lapor`
--
ALTER TABLE `lapor`
  ADD CONSTRAINT `test11` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test5` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `test10` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test2` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
