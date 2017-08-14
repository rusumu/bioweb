-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2017 at 09:51 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biologi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bab`
--

CREATE TABLE `bab` (
  `nomor` int(2) NOT NULL,
  `pembahasan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bab`
--

INSERT INTO `bab` (`nomor`, `pembahasan`) VALUES
(1, 'metode dan perilaku ilmiah'),
(2, 'ciri-ciri makhluk hidup'),
(3, 'klasifikasi makhluk hidup'),
(4, 'organisasi kehidupan'),
(5, 'energi dan transformasi energi'),
(6, 'ekosistem dan peranan manusia dalam lingkungan'),
(7, 'interaksi antara makhluk hidup dan lingkungannya'),
(8, 'Pencemaran lingkungan'),
(9, 'Lingkungan Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `biouser`
--

CREATE TABLE `biouser` (
  `nis` int(4) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `kelas` varchar(6) NOT NULL DEFAULT 'VII-A',
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biouser`
--

INSERT INTO `biouser` (`nis`, `nama`, `kelas`, `password`) VALUES
(1001, 'Ahsanul Amal Al- Fatih', 'VII', '6c944747d2851b71a74c1bfe993a8c6a'),
(1002, 'Aqil Buldan Bachtiar', 'VII', '62dd3ac24a12aaf123eda93c87e5aaea'),
(1003, 'Ardihan Abrar', 'VII', 'ff7363e44d4ab3cadc7dfc7defb2007a'),
(1004, 'Bakti Surya Atmaja', 'VII', '39a04048c247357bbc1cac79c82bb38e'),
(1005, 'Defta Setiawan', 'VII', '222c52b485fcffc90af23396ef8fc11e'),
(1006, 'Faris Abid Hidayat', 'VII', 'fe03ca8549bc04dd0030a75990cecf12'),
(1007, 'Gilar Yuma Risqulloh', 'VII', '708437ccb5844894a0c92430a981b04f'),
(1008, 'Iftikhar Arnantya Ramadhan', 'VII', 'cd07f7179e52390ef52af208a11d00d1'),
(1009, 'Iqbaludz Dzihni Assagaf', 'VII', '7a2e10b958f23a7e8456c2e8438f5140'),
(1010, 'Mohammad Nazam Hamid', 'VII', 'd823c2c7f74a4a1d86cc5efdc890debd'),
(1011, 'Rivqi Maulana ', 'VII', '957ddec4249d503309751a129df2a68c'),
(1012, 'Syarif Tahmid Musyafa`', 'VII', '93be100adfcc5fef1b9a94292ebcfdfc'),
(1013, 'Yoga wahyu Prayoga', 'VII', '70a3d103131460f55cc997afea9b5830'),
(1014, 'Zidan Muhammad Fatkhi', 'VII', '9361c49c78a114a9346a959333ada648'),
(1015, 'Akila Hineno Progresa', 'VII', 'e62ec2866033c7a6ed6ff4f0eee8f5fc'),
(1016, 'Daffa Yoga Aqiptya', 'VII', '01dfcf517831992fd98e5786485448a4'),
(1017, 'Faiq  Zufar Aufa', 'VII', '3cff312d3c211b2caccf3f63b2928d2a'),
(1018, 'Langkas Azza Kirana', 'VII', '1f44dceb2a5e0abec3553d71806b343e'),
(1019, 'Mohammad Syahrun Naiim', 'VII', 'b4da0a99b73fa87ba7fd4c54b683f27a'),
(1020, 'Nasa`i Tegar Pandu Samasta', 'VII', '909b3cceb3bfd91ebef5f0ec70ea3bac'),
(1021, 'Nur Rasyid Afifudin', 'VII', '2f2cfcaa168e03da18bcf681c4dd2db1'),
(1022, 'Ramdani Nurhadid', 'VII', '59ad310b270d45fbfbf9dff9e93a16aa'),
(1023, 'Rio Alfandhi', 'VII', '21f534c0379673318a57b7f260081999'),
(1024, 'Rifal Febriantoro', 'VII', '977633d4f37a19053c5bb8c4744f9856'),
(1025, 'Amanda Ramadhan', 'VII', 'b2e0eacf2aed8774c48f31752289ee3c'),
(1026, 'Aminatul Faizah', 'VII', 'f1bfced6001e124f7b1102103f959c66'),
(1027, 'Atha Nur Kharimah', 'VII', 'ef82a88aa37b41b655462742cf14c692'),
(1028, 'Bernika Ifada', 'VII', 'e2727253c8a675c5175d0655d37728cc'),
(1029, 'Egi Alya Rahma', 'VII', '88dec005f2888edba9ca7586b2765379'),
(1030, 'Latifah Tri Nurulita', 'VII', 'a1e3346331ae8651f243eb1880c025cb'),
(1031, 'Novika Khusnul Chotimah', 'VII', 'b804b721064d5013c5667be2a75cbc9b'),
(1032, 'Nurdiana Palupi Herawati', 'VII', 'f765b91211fdd23132d30e71b12724f7'),
(1033, 'Putri Agustin Sri Pamungkas', 'VII', '1d4aa0379a0bdf20f0c60c60ef19bcdc'),
(1034, 'Qonita Amelia Fawwas', 'VII', '4e32766f261c1412872a977fda55681f'),
(1035, 'Rizka Prajaning Arum', 'VII', 'c538a7a4fb9b4ae94fa2122812ad4099'),
(1036, 'Salsabiila Chasna ', 'VII', '17b7d808990be3f093ad831fddba85b3'),
(1037, 'Sukma Ayu Wiranti', 'VII', '66bbb065358fe8d3219134cedf8405c0'),
(1038, 'TabinaCetta Inas Sadya', 'VII', '274e4e68b6aef20ee3dce9d4edec036f'),
(1039, 'Yolanda Putri Larasati', 'VII', '53598d618928528fcdf806845bda0a83'),
(1040, 'Zahra Syakira Budi Hanafi', 'VII', 'd1b0f9d9115a0ebedd109336035dc929');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `idHistory` varchar(7) DEFAULT NULL,
  `noBab` int(2) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nomorRandom` varchar(20) NOT NULL,
  `nilai` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`idHistory`, `noBab`, `tanggal`, `nomorRandom`, `nilai`) VALUES
('1234-01', 2, '2017-05-10 03:29:03', '5,8,7,6,1,3,2,9,10,4', 0),
('1234-02', 2, '2017-05-10 03:34:54', '2,1,9,4,5,10,7,3,6,8', 0),
('1002-01', 2, '2017-05-10 04:20:06', '3,7,8,10,6,2,4,5,1,9', 0),
('1002-02', 2, '2017-05-10 04:20:51', '6,4,1,8,5,10,3,7,9,2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `idxsoal` int(2) NOT NULL,
  `bab` int(2) NOT NULL,
  `nomor` int(2) NOT NULL,
  `pertanyaan` text,
  `a` text,
  `b` text,
  `c` text,
  `d` text,
  `kunci` enum('a','b','c','d') DEFAULT NULL,
  `gambar` tinytext NOT NULL,
  `audio` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`idxsoal`, `bab`, `nomor`, `pertanyaan`, `a`, `b`, `c`, `d`, `kunci`, `gambar`, `audio`) VALUES
(1, 1, 1, 'Mikroskop yang telah memiliki dua lensa okuler disebut mikroskop...', 'monokoler', 'binokoler', 'elektron', 'sederhana', 'b', '', ''),
(2, 1, 2, 'Cermin atau reflektor pada mikroskop berfungsi untuk...', 'mengatur cahaya', 'memperbesar objek', 'membentuk bayangan objek', 'memfokuskan bayangan objek', 'a', '', ''),
(3, 1, 3, 'Alat untuk mengangkat objek yang dikhawatirkan rusak jika dijepit adalah...', 'spatula', 'pipet', 'klem', 'skalpel', 'a', '', ''),
(4, 1, 4, 'Berikut ini merupakan cara penggunaan mikroskop, 1. meletakan preparat, 2. mengatur agar diperoleh cahaya yang kuat, 3. mengatur lensa objektif pada perbesaran lemah, 4. menentukan tempat yang cukup cahaya Urutan penggunaan mikroskop yang benar agar objek dapat terlihat dengan jelas adalah...', '1-2-3-4-5', '1-3-4-2-5', '5-3-2-1-4', '5-1-4-2-3', 'b', '', ''),
(5, 1, 5, 'Alat yang dapat digunakan untuk memperbesar objek hingga perbesaran 10x atau 40x adalah...', 'lup', 'teleskop', 'periskop', 'mikroskop', 'd', '', ''),
(6, 1, 6, 'Alat yang digunakan untuk membuat sayatan tipis saat melakukan pembedahan adalah...', 'spatula', 'pipet', 'klem', 'skalpel', 'c', '', ''),
(7, 1, 7, 'Alat yang digunakan untuk mengukur laju reaksi adalah...', 'barometer', 'stopwatch', 'penggaris', 'neraca', 'b', '', ''),
(8, 1, 8, 'Asam sulfat termasuk dalam bahan yang berbahaya karena bersifat...', 'beracun', 'korosif', 'mudah terbakar', 'mudah meledak', 'b', '', ''),
(9, 1, 9, 'Biologi berasal dari kata bos dan logos, kata bios dan logos berarti...', 'ilmu dan hidup', 'budaya dan hidup', 'hidup dan ilmu pengetahuan', 'pengetahuan dan ilmu hidup', 'a', '', ''),
(10, 1, 10, 'Berbagai macam jaringan hewan dan tumbuhan dapat dipelajari dalam cabang ilmu...', 'fisiologi', 'histologi', 'higiene ', 'anatomi', 'd', '', ''),
(11, 2, 1, 'Peristiwa pengambilan oksigen dan pengeluaran karbondioksida pada makhluk hidup disebut...', 'ekskresi', 'pernapasan', 'transpirasi', 'transportasi', 'a', '', ''),
(12, 2, 2, 'Manusia dan hewan mampu menerima dan menanggapi rangsang karena memiliki...', 'mata dan otot', 'otak dan otot', 'indra dan syaraf', 'otak dan syaraf', 'b', '', ''),
(13, 2, 3, 'tumbuhan yang terletak didalam ruangan akan tumbuh bergerak ke arah datangnya sinar, gerakan tumbuhan itu disebut...', 'tropisme', 'kemotaksis', 'geotropisme', 'fototropisme', 'c', '', ''),
(14, 2, 4, 'Paus dan lumba-lumba bernapas dengan...', 'insang, mengambil oksigen dari air', 'insang, mengambil oksigen dari udara', 'paru-paru, mengambil oksigen dari air', 'paru-paru, mengambil oksigen dari udara', 'd', '', ''),
(15, 2, 5, 'Salah satu ciri yang membedakan makhluk hidup dengan benda tak hidup adalah...', 'menempati ruang', 'memiliki bentuk', 'dapat berkembang biak', 'dapat berpindah tempat', 'a', '', ''),
(16, 2, 6, 'Oksidasi biologi yang terjadi di dalam tubuh makhluk hidup, merupakan proses...', 'pengeluaran zat sisa', 'pencernaan makanan untuk mendapatkan energi', 'pembakaran zat-zat sisa sebelum pengeluaran', 'pembakaran zat makanan untuk memperoleh energi', 'd', '', ''),
(17, 2, 7, 'Zat sisa dalam tubuh makhluk hidup dapat meracuni tubuh. Untuk menghindari keracunan, makhluk hidup dapat mengadakan...', 'sekresi', 'ekskresi', 'evolusi', 'asimilasi', 'b', '', ''),
(18, 2, 8, 'Tumbuhan mengeluarkan zat sisa. Peristiwa pengeluaran cairan yang berupa tetes-tetes air lewat ujung dan tepi daun disebut...', 'gutasi', 'osmosis', 'respirasi', 'transpirasi', 'c', '', ''),
(19, 2, 9, 'Oksidasi biologi merupakan proses pembakaran dalam tubuh organisme sehingga terjadi...', 'penyusunan zat makanan', 'penyusunan zat anorganik menjadi energi', 'pembongkaran sisa makanan', 'pembongkaran zat untuk menghasilkan energi', 'c', '', ''),
(20, 2, 10, 'Mineral-mineral yang diperlukan tumbuhan untuk pertumbuhan serta pertumbuhan bunga dan buah antara lain...', 'nitrogen (N), Fosforus (P), Kalium (K)', 'nitrogen (N), Fosforus (P),ferum (Fe)', 'kalsium (Ca), ferum (Fe), iodin(I)', 'nitrogen (N), Sulfur (S), kalium (K)', 'a', '', ''),
(21, 3, 1, 'Ilmu yang mempelajari tentang pengelompokkan klasifikasi makhluk hidup adalah...', 'anatomi', 'patologi', 'taksonomi', 'mikrobiologi', 'd', '', ''),
(22, 3, 2, 'tujuan pengelompokkan atau klasifikasi makhluk hidup adalah...', 'memberi nama makhluk hidup', 'mengetahu asal usul makhluk hidup', 'mempermudah pengenalan makhluk hiduo', 'mengetahui manfaat makhluk hidup bagi manusia ', 'b', '', ''),
(23, 3, 3, 'Kupu-kupu dan belalang berada pada satu subfilum insekta atau hersapoda, hal tersebut berdasarkan...', 'ruas kaki, keadaan sayap dan mulutnya', 'bagian tubuh, tiga pasang kaki dan jumlah sayap', 'bagian kepala, jbentuk mulut dan jumlah kaki', 'keadaan sayap, bentuk tubuh dan 4 pasang kaki', 'a', '', ''),
(24, 3, 4, 'Urutan takson yang paling tepat untuk klasifikasi hewan adalah...', 'divisi-kelas-ordo-famil-genus-spesies', 'divisi-ordo-famili-kelas-genus-spesies', 'filum-kelas-ordo-famili-genus-spesies', 'filum-ordo-kelas-genus-famili-spesies', 'c', '', ''),
(25, 3, 5, 'Pada pengalaman dilapangan diketemukan organisme dengan ciri-ciri berikut: tidak berklorofil, bersel banyak, memiliki rizoid. Organisme tersebut termasuk dalam kingdom...', 'plantae', 'fungi', 'protista', 'monera', 'd', '', ''),
(26, 3, 6, 'Suatu organisme memilki ciri-ciri sebagai berikut :eukariot,uniseluler, berambut getar. Organisem tersebut kedalam sekelompok...', 'monera', 'rhizopoda', 'ciliata', 'flagellata', 'b', '', ''),
(27, 3, 7, 'Jamur yang bukan termasuk kelompok basidiomycota adalah...', 'jamur padi', 'jamur merang', 'jamur kuping', 'jamur oncom', 'a', '', ''),
(28, 3, 8, 'Rhizopus yang bermanfaat dalam pembuatan tempe termasuk dalam kelompok kingdom...', 'palntae', 'monera', 'animalia', 'fungi', 'b', '', ''),
(29, 3, 9, 'Penggolongan hewan menjadi dua kelompok vertebrata dan invertebrata berdasarkan...', 'cara gerak', 'bentuk tubuh', 'ada tidaknya rangka', 'ada tidaknya tulang belakang', 'c', '', ''),
(30, 3, 10, 'Lalat, capung, kupu-kupu dan belalang berada dalam satu kelompok karena memiliki persamaan...', 'alat gerak', 'jenis makanan', 'cara berkembang biak', 'ciri-ciri morfologi tubuh', 'd', '', ''),
(31, 4, 1, 'Bagian sel terluar tumbuhan berupa...', 'nukleus', 'mitokondria', 'membran sel', 'dinding sel', 'a', '', ''),
(32, 4, 2, 'Satuan struktural dan fungsional terkecil makhluk hidup disebut...', 'gen', 'sel', 'organ', 'jaringan', 'd', '', ''),
(33, 4, 3, 'Berdasarkan sel tubuhnya, tubuh makhluk hidup dibedakan menjadi dua kelompok, yaitu...', 'uniseluler dan multiseluler', 'bersel satu dan protozoa', 'protozoa dan uniseluler', 'metazoa dan multiseluler', 'b', '', ''),
(34, 4, 4, 'Makhluk hidup uniseluler adalah makhluk hidup yang...', 'mengandung selulosa', 'tubuhnya terdiri atas satu sel', 'tubuhnya terdiri atas banyak sel', 'sel-sel tubuhnya berdinding selulosa', 'c', '', ''),
(35, 4, 5, 'Bagian sel tumbuhan yang mengandung zat selulosa adalah...', 'kloroplas ', 'nukleolus', 'neoroplas', 'dinding sel', 'c', '', ''),
(36, 4, 6, 'Sitoplasma yang berupa cairan kental yang terdapat didalam sel mengandung...', 'air dan lemak', 'vitamin dan mineral', 'air dan zat-zat organik', 'protein, gula dan kalsium', 'a', '', ''),
(37, 4, 7, 'Yang bukan merupakan bentuk sel-sel penyusun jaringan epitelium adalah...', 'pipih', 'kuboid (kubus)', 'kokus (bola)', 'kolumnar (balok)', 'd', '', ''),
(38, 4, 8, 'Gen yang merupakan faktor keturunan terdapat dalam kromosom terdapat dalam...', 'vakuola', 'nukleus', 'plastisida', 'sitoplasma', 'b', '', ''),
(39, 4, 9, 'Keterangan yang tidak benar tentang sel eukariot adalah...', 'bersifat sejati', 'bukan primitif', 'berselubung inti', 'tanpa selubung inti', 'a', '', ''),
(40, 4, 10, 'Jaringan penyokong bersifat kuat dan berfungsi sebagai...', 'pemberi bentuk dan pelindung', 'pelindung dan penggerak pasif', 'penghubung dan penggerak pasif', 'penerima rangsang dan penggerak', 'c', '', ''),
(41, 5, 1, 'Energi gerak dan panas pada tubuh makhluk hidup diperoleh dari...', 'cahaya matahari', 'proses fotosintesis', 'penyusunan makanan', 'proses oksidasi makanan', 'd', '', ''),
(42, 5, 2, 'Energi yang tersimpan dalam tubuh tumbuhan hijau menjadi sumber makanan bagi...', 'karnivora', 'herbivora', 'parasit', 'jamur', 'b', '', ''),
(43, 5, 3, 'Makhluk hidup memerlukan energi untuk melakukan berbagai aktivitas, antara lain bergerak, tumbuh dan berkembang diperlukan makanan yang banyak mengandung zat...', 'lemak', 'glukosa', 'protein', 'karbohidrat', 'a', '', ''),
(44, 5, 4, 'Berikut yang merupakan proses katabolisme adalah...', 'sintesis lemak', 'sintesis protein', 'fotosintesis', 'respirasi', 'b', '', ''),
(45, 5, 5, 'Tumbuhan hijau menyerap energi matahari melalui...', 'stomata', 'lentisel', 'klorofil', 'epidermis', 'c', '', ''),
(46, 5, 6, 'Pada proses respirasi berlangsung transformasi energi...', 'energi gerak --> energi kimia', 'energi kimia --> energi gerak & energi panas', 'energi kimia --> energi cahaya & energi panas', 'energi cahaya --> energi kimia', 'd', '', ''),
(47, 5, 7, 'Organisme yang dapat melakukan fotosintesis antara lain...', 'lumut & jamur', 'protozoa & virus', 'bakteri & arthropoda', 'tumbuhan paku & lumut', 'a', '', ''),
(48, 5, 8, 'Proses sintesis zat makanan merupakan proses...', 'pembakaran zat makanan', 'penyusunan zat makanan', 'oksidasi biologi', 'pembakaran zat makanan menjadi energi', 'd', '', ''),
(49, 5, 9, 'Karbondioksida sampai ke sel fotosintesis pada daun melalui proses...', 'difusi melewati sel penjaga', 'difusi melewati epidermis', 'difusi melewati stomata', 'difusi melewati kutikula', 'b', '', ''),
(50, 5, 10, 'Bagian daun yang memliki paling banyak butir-butir kloroplas adalah...', 'jaringan palisade', 'jaringan spons', 'epidermis', 'kutikula', 'c', '', ''),
(51, 6, 1, 'Ekosistem adalah satu kesatuan fungsional yang terjadi interaksi timbal balik antara...', 'semua makhluk hidup didaerah tersebut', 'makhluk hidup satu spesies didaerah tersebut', 'semua makhluk hidup dengan lingkungannya', 'semua penyusun lingkungan dengan makhluk hidup', 'c', '', ''),
(52, 6, 2, 'sesuai dengan cara terbentuknya, ekosistem dikelompokkan menjadi ekosistem...', 'darat dan air', 'alam dan buatan', 'air laut dan air tawar', 'pegunungan dan padang pasir', 'a', '', ''),
(53, 6, 3, 'ekosistem tersusun atas empat komponen yaitu...', 'tumbuhan,manusia,hewan dan bakteri', 'produser,konsumer,reduser dan abiotik', 'tumbuhan,konsumer,biotik dan pengurai', 'tanah,air,biotik dan abiotik', 'd', '', ''),
(54, 6, 4, 'berikut yang merupakan lingkungan abiotik dalam suatu ekosistem antara lain...', 'tumbuhan,pupuk,kambing dan bakteri', 'bakteri,tumbuhan hijau, kelinci dan ikan', 'cahaya matahari,air, tanah dan udara', 'tanah,air,udara,bakteri dan tumbuhan', 'b', '', ''),
(55, 6, 5, 'Hal yang tidak menjelaskan tentang tumbuhan hijau adalah...', 'merupakan organisme heterotrof', 'mampu menyusun makanan sendiri', 'berperan sebagai produsen dalam suatu ekosistem', 'dapat menurunkan polusi udara dari karbondioksida', 'a', '', ''),
(56, 6, 6, 'Keuntungan apabila kita mengetahui habitat suatu jenis makhluk hidup adalah mempermudah penemuan...', 'spesies yang akan diamati', 'kekhususan spesiesnya', 'hewan langka', 'tumbuhan langka', 'c', '', ''),
(57, 6, 7, 'Organisme berikut yang mampu mengubah energi cahaya matahari menjadi energi kimia adalah...', 'jamur kuping, jamur merang, jamur mutiara', 'kunang-kunang, bakteri,mikro organisme', 'ganggang,rumput,tebu', 'lebah madu,kutu buah,sapi perah', 'd', '', ''),
(58, 6, 8, 'konsumer tingkat I disebut juga konsumer primer yang terdiri atas hewan-hewan...', 'karnivor', 'herbivor', 'omnivor', 'insektor', 'b', '', ''),
(59, 6, 9, 'Hewan berikut yang memiliki ketergantungan secara langsung dengan tumbuhan adalah...', 'ayam, itik dan kerbau', 'rusa, zarafah, dan kerbau', 'tikus, babi hutan, dan beruang', 'burung pipit, burung bangau, dan burung jalak', 'a', '', ''),
(60, 6, 10, 'Suatu ekosistem dapat bertahan lama, berkesinambungan dan berlangsung dengan wajar apabila terdapat keseimbangan antara...', 'produser,konsumer,reduser, dan lingkungan antibiotinya', 'produser, konsumer, dan jamur saprofitnya', 'pengurai,konsumer,dan lingkungan biotiknya', 'pengurai, konsumer, pengurai dan lingkungan biotiknya', 'b', '', ''),
(61, 7, 1, 'Hubungan yang erat antara dua organisme tidak terjadi pada bentuk hubungan...', 'mutualisme', 'komensalisme', 'predasi', 'parasitisme', 'c', '', ''),
(62, 7, 2, 'Interaksi antara kelompok hewan zebra dengan rusa disuatu padang rumput merupakan hubungan...', 'predasi', 'kompetisi', 'adaptasi', 'simbiosis', 'd', '', ''),
(63, 7, 3, 'Interaksi berikut yang merupakan contoh interaksi komponen biotik dengan abiotik adalah...', 'tanah dengan air', 'rusa dengan rumput', 'rumput dengan tanah', 'rumput dengan domba', 'a', '', ''),
(64, 7, 4, 'Didalam hutan dapat kita jumpai interaksi antara karnivor dengan herbivor yang kita sebut dengan hubungan...', 'koloni', 'migrasi', 'predasi', 'kompetesi', 'd', '', ''),
(65, 7, 5, 'Prinsip interaksi antarmakhluk hdup yang dimanfaatkan untuk pengobatan dalam dunia kedokteran adalah...', 'predasi', 'kompetisi', 'simbiosis', 'antibiosis', 'b', '', ''),
(66, 7, 6, 'Diantara organisme yang terdapat dalam suatu ekosistem, yaitu produsen, konsumen dan pengurai selalu terjadi interaksi, yaitu terjadi...', 'hubungan predaksi', 'hubungan makan dan dimakan', 'saling merugikan atau saling menguntungkan', 'saling ketergantungan atau saling memengaruhi', 'c', '', ''),
(67, 7, 7, 'Pola interaksi yang melibatkan organisme yang berbeda dalam hubungan erat disebut...', 'taksis', 'mitosis', 'simbiosis', 'antibiosis', 'c', '', ''),
(68, 7, 8, 'Tumbuhan yang memiliki haustoria meruoakan termasuk jenis tumbuhan...', 'epifit', 'parasit', 'saprofit', 'higrofit', 'a', '', ''),
(69, 7, 9, 'Contoh tumbuhan yang memiliki haustoria adalah...', 'lumut', 'teratai', 'tali putri', 'jamur merang', 'd', '', ''),
(70, 7, 10, 'Mikoriza berhubungan erat dalm kehidupan...', 'fungi yang hidup pada akar pinus', 'bakteri yang hidup pada tubuh lumut', 'fungi yang hidup dalam tubuh ganggang', 'bakteri yang hidup pada tubuh azoll pinnata', 'b', '', ''),
(71, 8, 1, 'Manusia selalu mendambakan lingkungan yang...', 'ramai,menyenangkan dan ekonomis', 'menguntungkan, ramai, dan tinggi polusi', 'bernilai ekonomi, modern, dan ramai', 'bernilai ekonomi, nyaman dan rendah polusi', 'a', '', ''),
(72, 8, 2, 'Jenis tanaman pangan berikut ini yang tidak dimanfaatkan untuk mengembalikan dan meningkatkan kesuburan tanah adalah...', 'tebu', 'buncis', 'kedelai', 'kacang tanah', 'c', '', ''),
(73, 8, 3, 'Penggunaan pupuk ZA secara berlebihan akan menyebabkan...', 'tanaman tumbuh subur', 'bunga dan buah tumbuh baik', 'keadaan tanah menjadi terlalu asam', 'tanah akan kekurangan unsur nitrogen', 'd', '', ''),
(74, 8, 4, 'Untuk mengatasi sampah dari bahan plastik, sebaiknya sampah tersebut...', 'dibakar', 'ditimbun tanah', 'dibuang kesungai', 'dibuang dalam bak sampah', 'b', '', ''),
(75, 8, 5, 'Pengairan yang berlebihan kurang menguntungkan karena...', 'tanah menjadi lebih lunak', 'kelembaban tanah terganggu', 'pertumbuhan akar akan terganggu', 'tanah menjadi padat dan tidak berongga', 'a', '', ''),
(76, 8, 6, 'Gas karbon monoksida (CO) berbahaya bagi kesehatan karena..', 'merusak sistem saraf', 'menyebabkan gangguan pernapasan', 'mengganggu pengikatan oksigen dan hemoglobin', 'mengganggu pelepasan karbondioksida oleh paru-paru', 'b', '', ''),
(77, 8, 7, 'Tujuan utama pegawetan tanah adalah...', 'melindungi tanah dari bahaya alam', 'melindungi tanah dari penggunaan secara liar', 'mengurangi kerusakan tanah dan pengikisan tanah dan mengembalikan kesuburan', 'menjaga agar tanah dapat menyerap air sebanyak-banyaknya', 'c', '', ''),
(78, 8, 8, 'Faktor penyebab terjadinya polusi air sungai antara lain...', 'sisa pembakaran sampah', 'gas sisa pembakaran BBM', 'gas buangan dari pabrik perindustrian', 'air buangan dari pabrik perindustrian', 'd', '', ''),
(79, 8, 9, 'Penghargaan kalpataru diberikan kepada daerah atau individu yang berhasil dalam usaha...', 'meningkatkan kebersihan', 'menyukseskan program KB', 'melestarikan lingkungan hidup', 'meningkatkan produksi pangan dan kesehatan', 'a', '', ''),
(80, 8, 10, 'Perubahan suhu PH, warna, bau dan rasa dapat terjadi pada polusi..', 'air', 'tanah', 'udara', 'tanah dan air', 'd', '', ''),
(81, 9, 1, 'Atmosfer di bumi berperan hampir seperti rumah kaca karena...', 'melindungi masuknya panas matahari', 'menyerap dan mengembalikan panas matahari', 'membiarkan panas cahaya matahari masuk dan menahannya', 'tanpa atmosfer suhu bumi akan menjadi sangat tinggi', 'b', '', ''),
(82, 9, 2, 'Efek rumah kaca alami dapat menguntungkan bagi kehidupan karena...', 'dapat menurunkan pemanasan global', 'menjaga tidak terjadi pemanasan global', 'memperkecil terbentuknya karbondioksida', 'memberi kehangatan cukup bagi makhluk hidup', 'c', '', ''),
(83, 9, 3, 'Diantara gas-gas rumah kaca berikut yang mempunyai peran penting dalam kehidupan tumbuhan hijau adalah gas...', 'metana (CH4)', 'karbondioksida (CO2)', 'nitrat oksida (N2O)', 'klorofluorocarbon (CFC)', 'c', '', ''),
(84, 9, 4, 'Salah satu gas rumah kaca dulu digunakan anestesi ringan, disebut juga gas tertawa dan pemakaian pupuk nitrogen dapat meningkatkan kadarnya. Gas tersebut adalah gas...', 'CO (karbonmonoksida)', 'CO2 {karbon dioksida)', 'N2O (nitrat oksida)', 'O3 (ozon)', 'a', '', ''),
(85, 9, 5, 'Apabila kadar atau konsentrasi gas rumah kaca di atmosfer makin tinggi, pemanasan global meningkat karena...', 'terjadi ledakan gas diatmosfer', 'gas rumah kaca menghasilkan panas', 'terjadi peruraian gas rumah kaca', 'pantulan panas cahaya matahari terhalang dan tertahan', 'd', '', ''),
(86, 9, 6, 'Lapisan ozon berfungsi untuk...', 'meredam panas', 'menyerap radiasi ultraviolet', 'menurunkan pemanasan global', 'mencegah terjadi hujan asam', 'b', '', ''),
(87, 9, 7, 'Peristiwa yang tidak meningkatkan kadar karbondioksida (CO2) di atmosfer adalah...', 'pembakaran bahan bakar fosil', 'pemakaian kendaraan bermotor berbahan bakar bensin', 'meletusnya gunung berapi', 'penggunaan freon pada pendingin ruangan', 'a', '', ''),
(88, 9, 8, 'Pemanasan global meningkat akibat kegiatan industri dan penggunaan bahan fosil adalah...', 'efek rumah kaca alami', 'efek rumah kaca buatan', 'efek rumah kaca antropologi', 'efek rumah kaca astropogenik', 'c', '', ''),
(89, 9, 9, 'Peristiwa yang tidak diakibatkan oleh peningkatan CO2 di atmosfer adalah...', 'peningkatan energi di bumi', 'peingkatan suhu bumi', 'perubahan iklim global', 'pencairan es di kutub', 'd', '', ''),
(90, 9, 10, 'Penggunaan sumber energi berikut yang tidak melepaskan karbon dioksida ke udara adalah...', 'gas alam dan batu bara', 'batu bara dan nuklir', 'minyak dan tenaga air', 'tenaga air dan tenaga surya', 'b', '', ''),
(91, 1, 11, 'yang manakah ?', 'adad', 'adadsa', 'a', '', '', 'mdkamd', 'adakld');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bab`
--
ALTER TABLE `bab`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `biouser`
--
ALTER TABLE `biouser`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD UNIQUE KEY `idHistory` (`idHistory`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`idxsoal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bab`
--
ALTER TABLE `bab`
  MODIFY `nomor` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `idxsoal` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
