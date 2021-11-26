-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2021 pada 15.28
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_satu_november_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_kode` varchar(25) NOT NULL,
  `barang_nama` varchar(50) DEFAULT NULL,
  `barang_id_kemenkes` varchar(50) DEFAULT NULL,
  `barang_produsen` varchar(50) DEFAULT NULL,
  `barang_komposisi` text DEFAULT NULL,
  `barang_satuan_id` int(11) DEFAULT NULL,
  `barang_kemasan_id` int(11) DEFAULT NULL,
  `barang_kemasan_isi` int(11) DEFAULT NULL,
  `barang_golongan_id` int(11) DEFAULT NULL,
  `barang_jenis_id` int(11) DEFAULT NULL,
  `barang_stok_awal` int(11) NOT NULL,
  `barang_harga_awal` bigint(20) NOT NULL,
  `barang_disc_awal` bigint(20) NOT NULL,
  `barang_hbeli_awal` bigint(20) NOT NULL,
  `barang_batch_no` varchar(50) NOT NULL,
  `barang_exp` date NOT NULL,
  `barang_dibuat` datetime DEFAULT NULL,
  `barang_diperbaharui` datetime DEFAULT NULL,
  `userlogin_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_kode`, `barang_nama`, `barang_id_kemenkes`, `barang_produsen`, `barang_komposisi`, `barang_satuan_id`, `barang_kemasan_id`, `barang_kemasan_isi`, `barang_golongan_id`, `barang_jenis_id`, `barang_stok_awal`, `barang_harga_awal`, `barang_disc_awal`, `barang_hbeli_awal`, `barang_batch_no`, `barang_exp`, `barang_dibuat`, `barang_diperbaharui`, `userlogin_id`) VALUES
('BRG0320090001', 'Barang Test 2', 'Test2', 'Test Dev', 'Dev Test', 1, 1, 12500, 1, 3, 100, 14000, 0, 14000, 'B451231', '2021-03-09', '2020-03-09 10:50:52', NULL, 'usr-2018001'),
('BRG0320090002', 'Barang Test 1', 'Test 1', 'Test Dev', 'Dev Test', 2, 2, 100, 2, 4, 50, 10000, 0, 10000, 'B01', '2021-03-09', '2020-03-09 10:51:48', NULL, 'usr-2018001'),
('BRG0320300001', 'Amoxicillin Syr 125 mg 60 ml ', '12345', 'Novapharin ', 'Amoxicillin Syr ', 3, 2, 1, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:22:00', NULL, '2018002'),
('BRG0320300002', 'Asam Mefenamat 500 mg - Rama ', '12345', 'Rama Emerald ', 'Asam Mefenamat 500 mg ', 1, 1, 100, 1, 12, 4327, 19090, 0, 19090, 'T07061AJ', '2022-07-30', '2020-03-30 11:42:00', NULL, '2018002'),
('BRG0320300003', 'Boraks Gliserin 10% 8 ml ', '12345', 'Ciubros ', 'Boraks Gliserin ', 3, 2, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:43:08', NULL, '2018002'),
('BRG0320300004', 'Dexamethasone 0.5 mg tab ', '12345', 'Novapharin ', 'Dexametasone 0.5 mg', 1, 1, 100, 1, 10, 0, 5000, 0, 5000, '0', '0000-00-00', '2020-03-30 11:44:10', NULL, '2018002'),
('BRG0320300005', 'Eryra Forte Tablet ', '12345', 'Rama Emerald ', 'Erytromisin 500 mg ', 1, 1, 100, 1, 7, 70, 0, 0, 0, 'T02015BK', '2022-02-28', '2020-03-30 11:47:33', NULL, '2018002'),
('BRG0320300006', 'Phenol Gliserol Lucas', '12345', 'Lucas Djaja', 'Phenol Gliserol ', 3, 2, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:48:42', NULL, '2018002'),
('BRG0320300007', 'Guaifenesin Tab ', '12345', 'Novapharin ', 'Glyceril Guaiacolate 100 mg ', 1, 1, 100, 1, 18, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:50:12', NULL, '2018002'),
('BRG0320300008', 'Captopril 25 mg ', '12345', 'Errita ', 'Captopril 25 mg ', 1, 1, 100, 1, 21, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:50:57', NULL, '2018002'),
('BRG0320300009', 'Misoprostol Tab 200 mcg', '12345', 'Nulab', 'Misoprostol Tab 200 mcg', 1, 1, 30, 1, 47, 0, 150000, 0, 150000, '0', '0000-00-00', '2020-03-30 11:53:53', NULL, '2018002'),
('BRG0320300010', 'Minyak Kutus Kutus 100 ml ', '12345', 'Kutus Kutus ', 'Minyak kutus kutus terbuat dari 69 jenis tanaman herbal, 5 unsur pohon kehidupan (daun, batang, akar, bunga dan buah) ditambah 2 unsur yaitu air dan api (diwakili oleh minyak kelapa dan bermacam minyak esensial – minyak zaitun, minyak gaharu, minyak cendana, dll) disatukan secara khusus.', 3, 2, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:57:03', NULL, '2018002'),
('BRG0320300011', 'Lytacur Sirup ', '12345', 'Dexa medica ', 'Per 5 mL : L- lysine HCl 200 mg, beta-carotene 1000 iu, vitamin B1 3 mg, vitamin B2 2 mg, vitamin B6 1 mg, vitamin B12 10 mcg, vitamin C 50 mg, nicotinamide 20 mg, d-panthenol 3 mg, curcuminoid 2 mg', 3, 2, 1, 1, 5, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:58:19', NULL, '2018002'),
('BRG0320300012', 'OBH Jeruk Nipis (Partisi) Rama ', '12345', 'Rama Emerald ', 'OBH', 3, 2, 1, 1, 18, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 11:59:12', NULL, '2018002'),
('BRG0320300013', 'Oil Young Living Lemongrass 15 ml', '12345', 'Young Living ', 'Oil Essential ', 3, 2, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 12:00:12', NULL, '2018002'),
('BRG0320300014', 'Omeprazole 20 mg ', '12345', 'Novapharin ', 'Omeprazole 20 mg ', 1, 1, 30, 1, 4, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 13:40:14', NULL, '2018002'),
('BRG0320300015', 'Cefixime 200 mg Bernofarm ', '12345', 'Bernofarm ', 'Cefixime 200 mg ', 1, 1, 30, 1, 7, 0, 135000, 0, 135000, '0', '0000-00-00', '2020-03-30 13:41:05', NULL, '2018002'),
('BRG0320300016', 'TCA 80%', '12345', 'Lokal', 'TCA 80%', 3, 2, 1, 2, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 13:41:41', NULL, '2018002'),
('BRG0320300017', 'GP Care Antiseptic Gel 500 ml', '12345', 'Greet med ', 'Alkohol 70%', 3, 2, 1, 2, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-30 13:42:55', NULL, '2018002'),
('BRG0320310001', 'Vitalong C Tab ', '12345', 'Bernofarm', 'Ascorbic acid (Vitamin C) 500 mg', 1, 1, 100, 1, 5, 0, 0, 0, 0, '0', '0000-00-00', '2020-03-31 15:32:13', NULL, '2018002'),
('BRG0420060001', 'Parafilm 2 x 250ft', '12345', 'Parafilm', 'Parafilm', 14, 14, 1, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-06 14:08:21', NULL, '2018002'),
('BRG0420060002', 'Alat Cek GCU Easy Touch', '12345', 'Easy Touch', 'Alat cek GCU', 12, 9, 1, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-06 14:09:20', NULL, '2018002'),
('BRG0420060003', 'Stik Cholesterol Easy Touch', '12345', 'Easy Touch', 'Stik Cholesterol', 14, 1, 10, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-06 14:10:30', NULL, '2018002'),
('BRG0420070001', 'N95 masks 5 ply', '12345', 'Sinar mas', '3mm latex-free flat elastic earloop; plastic and wire (nosepiece); 45g/m2 PP white spunhound (outer layer); ES Thermobonded soft (inner layer); ISO,CE and FDA certified', 14, 14, 1, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-07 08:38:58', NULL, '2018002'),
('BRG0420070002', 'KN95 face mask', '12345', 'sinar', 'Standard: CE, FDA, ISO', 14, 14, 1, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-07 08:39:47', NULL, '2018002'),
('BRG0420070003', 'Shoe Cover ', '12345', 'Sinar Mas ', 'Non-woven, Bule, 100pcs/Box', 33, 34, 1, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-07 09:25:56', NULL, '2018002'),
('BRG0420080001', 'Curcuma Tab ', '12345', 'Soho', 'ekstrak curcuma xanthorrhiza 20 mg', 1, 1, 120, 1, 5, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-08 15:07:08', NULL, '2018002'),
('BRG0420080002', 'Breathy Nasal Drop ', '12345', 'Novell ', 'NaCl', 3, 2, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-08 15:10:12', NULL, '2018002'),
('BRG0420080003', 'Curcuma Plus Sirup', '12345', 'Soho', 'Per 5 mL: Vitamin B1 3 mg, vitamin B2 2 mg, vitamin B6 5 mg, vitamin B12 5 mcg, ?-carotene 10% 4 mg, dexpanthenol 3 mg, curcuminoid 2 mg', 3, 2, 1, 1, 5, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-08 15:11:18', NULL, '2018002'),
('BRG0420080004', 'Calporosis D500 mg', '12345', 'Mersifarma ', 'Ca carbonate 500mg dan vitamin D 100 IU', 1, 2, 30, 1, 5, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-08 15:12:44', NULL, '2018002'),
('BRG0420170001', 'Ambroxol Tab 30 mg Nova ', '12345', 'Novapharin ', 'Ambroxol 30 mg ', 1, 1, 100, 1, 18, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-17 10:20:12', NULL, '2018002'),
('BRG0420170002', 'Alkohol 70% 1 Liter ', '12345', 'Novapharin ', 'Alkohol 70% ', 3, 2, 1, 2, 44, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-17 10:24:56', NULL, '2018002'),
('BRG0420170003', 'Kapsul Kosong No.0', '12345', 'Brataco', 'Kapsul Kosong No 0', 14, 15, 1000, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-17 15:18:22', NULL, '2018002'),
('BRG0420170004', 'Kapsul Kosong No. 00', '12345', 'Brataco', 'Kapsul Kosong No.00', 14, 15, 1000, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-17 15:19:21', NULL, '2018002'),
('BRG0420170005', 'Kapsul Kosong no. 1', '12345', 'Brataco', 'Kapsul Kosong No 1', 14, 15, 1000, 2, 57, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-17 15:20:18', NULL, '2018002'),
('BRG0420200001', 'Bioplacenton Gel ', '12345', 'Kalbe ', 'Placenta extract 10% Neomycin sulfate 0,5%', 4, 3, 1, 1, 46, 0, 17000, 0, 17000, '0', '0000-00-00', '2020-04-20 10:26:02', NULL, '2018002'),
('BRG0420200002', 'Gentamisin Cream Fm ', '12345', 'First Medifarma', 'Gentamisin Cream ', 4, 3, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 10:28:52', NULL, '2018002'),
('BRG0420200003', 'Ibuprofen 400 mg Nova ', '12345', 'Novapharin ', 'Ibuprofen 400mg ', 1, 1, 100, 1, 12, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 10:30:10', NULL, '2018002'),
('BRG0420200004', 'Clindamisin 300 mg ', '12345', 'Promed', 'Clindamisin 300 mg ', 1, 1, 100, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 10:32:06', NULL, '2018002'),
('BRG0420200005', 'Neo Diaform tab ', '12345', 'Corsa ', 'Kaolin 550 mg, pectin 20 mg.', 1, 1, 500, 1, 30, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 10:39:51', NULL, '2018002'),
('BRG0420200006', 'Metronidazole 500 mg Novapharin', '12345', 'Novapharin ', 'Metronidazole 500 mg', 1, 1, 100, 1, 53, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 10:41:46', NULL, '2018002'),
('BRG0420200007', 'Univit Syr ', '12345', 'Universal ', ' vitamin A 3000 IU, vitamin D 400 IU, vitamin B1 3 mg, vitamin B2 1,25 mg, vitamin B6 1 mg, vitamin B12 4 mg, vitamin C 15 mg, nikotinamida 10 mg, d-pantenol 5 mg.', 3, 2, 1, 1, 5, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 10:46:19', NULL, '2018002'),
('BRG0420200008', 'Ternix Plus Syr ', '12345', 'Ifars', 'Per 5 ml Parasetamol 250 mg, pseudoefedrin 15 mg, chlorpheniramine maleate 1 mg, GG 100 mg', 3, 2, 1, 3, 33, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:02:15', NULL, '2018002'),
('BRG0420200009', 'Pamol Supp 125 mg ', '12345', 'Interbat ', 'Paracetamol Supp 125 mg ', 6, 11, 12, 1, 12, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:09:47', NULL, '2018002'),
('BRG0420200010', 'Nifedipin 10 mg ', '12345', 'Dexa medica ', 'Nifedipin 10 mg ', 1, 1, 100, 1, 86, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:11:27', NULL, '2018002'),
('BRG0420200011', 'Piroxicam 10 mg ', '12345', 'Novapharin ', 'Piroxicam 10 mg ', 1, 1, 100, 1, 51, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:12:56', NULL, '2018002'),
('BRG0420200012', 'Thiampenicol 500 mg ', '12345', 'Tropika / Bernofarm', 'Thiampenicol 500 mg ', 1, 1, 100, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:15:30', NULL, '2018002'),
('BRG0420200013', 'Thrombopop Gel 20 gr ', '12345', 'Tunggal Idaman Abadi ', 'Heparin sodium ', 4, 3, 1, 1, 62, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:17:48', NULL, '2018002'),
('BRG0420200014', 'Paracetamol 500 mg ', '12345', 'Novapharin / PIM ', 'Paracetamol 500 mg ', 1, 1, 100, 1, 12, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:22:36', NULL, '2018002'),
('BRG0420200015', 'Bedak Salycil 2% 60 gr PIM', '12345', 'PIM', 'Bedak Salycil 2%', 13, 12, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:23:33', NULL, '2018002'),
('BRG0420200016', 'Ciprofloxacin 500 mg Novapharin', '12345', 'Novapharin ', 'Ciprofloxacin 500 mg ', 1, 1, 100, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:24:27', NULL, '2018002'),
('BRG0420200017', 'Hexymer 2 mg ', '12345', 'Mersifarma ', 'Trihexypenidil 2 mg ', 1, 1, 100, 5, 42, 0, 35000, 0, 35000, '0', '0000-00-00', '2020-04-20 11:25:49', NULL, '2018002'),
('BRG0420200018', 'OBH Jeruk Nipis 100 ml CITO', '12345', 'Ciubros', 'Obat batuk hitam', 3, 2, 1, 1, 18, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 11:34:35', NULL, '2018002'),
('BRG0420200019', 'Simvastatin 10 mg ', '12345', 'Errita / Rama', 'Simvastatin 10 mg ', 1, 1, 100, 1, 28, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 13:15:03', NULL, '2018002'),
('BRG0420200020', 'Reco tetes telinga 3% 5 ml', '12345', 'Global Multi', 'kloramphenicol tetes telinga 3%', 3, 2, 1, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-20 13:16:15', NULL, '2018002'),
('BRG0420220001', 'Gentian Violet Larutan 1%', '12345', 'Afifarma / Ciubros', 'Gentian Violet 1% 10 ml ', 3, 2, 1, 1, 46, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:00:24', NULL, '2018002'),
('BRG0420220002', 'Antihemoroid Supp ', '12345', 'Kimia Farma', ' bismut subgalat heksaklorofen lidokain seng oksida', 6, 1, 10, 1, 17, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:02:10', NULL, '2018002'),
('BRG0420220003', 'Cepezet 100 mg ', '12345', 'Mersifarma ', 'Chlorpromazine 100 mg ', 1, 1, 100, 5, 103, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:07:09', NULL, '2018002'),
('BRG0420220004', 'Fasidol Drop 60mg/0.6 ml', '12345', 'Ifars', 'Paracetamol Drop 60mg/0.6 ml ', 3, 2, 1, 1, 12, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:08:24', NULL, '2018002'),
('BRG0420220005', 'Scopma Tab ', '12345', 'Ifars', 'Hyosine butilbromide 10 mg ', 1, 1, 100, 1, 4, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:12:04', NULL, '2018002'),
('BRG0420220006', 'Kloramphenicol salep mata 1% 5 gr', '12345', 'Kimia Farma ', 'Kloramphenicol salep mata 1% 5 gr', 4, 3, 1, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:53:59', NULL, '2018002'),
('BRG0420220007', 'Chlorpeniramin Maleat 4 mg ', '12345', 'Novapharin ', 'Chlorpeniramin Maleat 4 mg ', 1, 1, 100, 1, 8, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 11:55:10', NULL, '2018002'),
('BRG0420220008', 'Cefadroxil 500 mg Novapharin ', '12345', 'Novapharin ', 'Cefadroxil 500 mg', 1, 1, 100, 1, 7, 0, 0, 0, 0, '0', '0000-00-00', '2020-04-22 12:01:45', NULL, '2018002'),
('BRG0420220009', 'Ultra Vitamin C tablet', '0', 'Vitabiotik', 'Vitamin C', 1, 1, 30, 1, 92, 0, 108000, 0, 108000, '0', '0000-00-00', '2020-04-22 14:26:36', NULL, '2018003');

--
-- Trigger `barang`
--
DELIMITER $$
CREATE TRIGGER `auto_barang_stok` AFTER INSERT ON `barang` FOR EACH ROW BEGIN
DECLARE max_log_id_no BIGINT;
	INSERT INTO barang_stok (barang_kode, barang_stok_harga, barang_stok_disc, barang_stok_hbeli, barang_stok_batch,barang_stok_exp, barang_stok_jml, barang_stok_from) VALUES (NEW.barang_kode, NEW.barang_harga_awal, NEW.barang_disc_awal, NEW.barang_hbeli_awal, NEW.barang_batch_no, NEW.barang_exp , NEW.barang_stok_awal, 'Master');


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_golongan`
--

CREATE TABLE `barang_golongan` (
  `barang_golongan_id` int(11) NOT NULL,
  `barang_golongan_nama` varchar(30) DEFAULT NULL,
  `barang_golongan_dibuat` datetime DEFAULT NULL,
  `barang_golongan_diperbaharui` datetime DEFAULT NULL,
  `userlogin_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_golongan`
--

INSERT INTO `barang_golongan` (`barang_golongan_id`, `barang_golongan_nama`, `barang_golongan_dibuat`, `barang_golongan_diperbaharui`, `userlogin_id`) VALUES
(1, 'Obat umum', '2018-10-26 03:43:49', NULL, '2018004'),
(2, 'Alat Kesehatan', '2018-11-06 06:50:29', NULL, '2018004'),
(3, 'Prekursor', '2018-11-06 06:50:49', NULL, '2018004'),
(4, 'Psikotropika', '2018-11-06 06:51:11', NULL, '2018004'),
(5, 'Obat-obatan Tertentu', '2018-11-06 06:51:26', NULL, '2018004'),
(7, 'Dental', '2019-02-18 11:44:31', NULL, '2018002'),
(8, 'Laboratorium', '2019-04-22 08:16:50', NULL, '2018002'),
(9, 'Lain-Lain', '2019-06-12 08:49:40', NULL, '2018004'),
(10, 'KIT', '2019-07-08 17:46:01', NULL, '2018003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_jenis`
--

CREATE TABLE `barang_jenis` (
  `barang_jenis_id` int(11) NOT NULL,
  `barang_jenis_nama` varchar(30) DEFAULT NULL,
  `barang_jenis_dibuat` datetime DEFAULT NULL,
  `barang_jenis_diperbaharui` datetime DEFAULT NULL,
  `userlogin_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_jenis`
--

INSERT INTO `barang_jenis` (`barang_jenis_id`, `barang_jenis_nama`, `barang_jenis_dibuat`, `barang_jenis_diperbaharui`, `userlogin_id`) VALUES
(3, 'Hipertensi', '2018-10-26 03:45:23', NULL, '2018004'),
(4, 'Lambung', '2018-10-26 04:27:13', '2019-06-21 13:20:07', '2018008'),
(5, 'Multivitamin', '2018-10-26 04:27:27', NULL, '2018004'),
(6, 'Anti Gout', '2018-10-26 04:27:46', NULL, '2018004'),
(7, 'Antibiotik', '2018-10-26 04:27:55', NULL, '2018004'),
(8, 'Antihistamin', '2018-10-26 04:28:07', NULL, '2018004'),
(9, 'Anti Diabetes', '2018-10-26 06:02:56', NULL, '2018004'),
(10, 'Anti Kortikosteroid', '2018-10-26 06:03:12', NULL, '2018004'),
(11, 'Antivirus', '2018-11-08 04:52:55', NULL, '2018004'),
(12, 'Analgetik', '2018-11-08 07:19:33', NULL, '2018004'),
(13, 'Anti Inflamasi', '2018-11-08 07:23:48', NULL, '2018004'),
(14, 'Anti Bakteri', '2018-11-08 07:43:10', NULL, '2018004'),
(15, 'Obat Sariawan', '2018-11-09 04:38:25', NULL, '2018004'),
(16, 'Anti Decongestan', '2018-11-09 04:45:25', NULL, '2018004'),
(17, 'Anti Haemoroid', '2018-11-09 08:17:32', NULL, '2018004'),
(18, 'Obat Batuk', '2018-11-09 08:21:15', NULL, '2018004'),
(19, 'Anti Asthma', '2018-11-09 08:27:00', NULL, '2018004'),
(20, 'Obat Tradisional', '2018-11-13 07:33:00', NULL, '2018004'),
(21, 'Obat Jantung', '2018-11-13 07:56:37', NULL, '2018004'),
(22, 'Anti Vertigo', '2018-11-13 08:00:01', NULL, '2018004'),
(23, 'Antitusiv', '2018-11-13 08:08:28', NULL, '2018004'),
(24, 'Anti Expetorant', '2018-11-13 08:08:48', NULL, '2018004'),
(25, 'Obat Tetes Mata', '2018-11-15 07:27:28', NULL, '2018004'),
(27, 'Obat Tetes Telinga', '2018-11-15 08:06:56', '2019-06-21 13:24:56', '2018008'),
(28, 'Antikolesterol', '2018-11-16 07:53:47', NULL, '2018004'),
(29, 'Anti osteporosis', '2018-11-16 07:57:57', NULL, '2018004'),
(30, 'Anti Diare', '2018-11-21 08:19:42', NULL, '2018004'),
(31, 'Vitamin Neurotropik', '2018-11-22 01:23:12', NULL, '2018004'),
(32, 'Pure Oksigen', '2018-11-22 01:26:37', NULL, '2018004'),
(33, 'Obat Flu Batuk', '2018-11-22 01:30:21', NULL, '2018004'),
(34, 'Anti Alergi ', '2018-11-22 01:34:47', NULL, '2018004'),
(35, 'Obat Flu', '2018-11-22 03:06:41', NULL, '2018004'),
(36, 'Cairan Infus ', '2018-11-22 03:09:24', NULL, '2018004'),
(37, 'Pelarut', '2018-11-22 03:12:04', '2019-06-21 13:25:37', '2018008'),
(38, 'Alkes Lab ', '2018-11-22 03:38:15', NULL, '2018004'),
(39, 'Alat Kesehatan Tidak Habis Pak', '2018-11-22 07:18:15', '2019-06-21 13:26:00', '2018008'),
(41, 'Test Rapid', '2018-12-26 14:49:39', '2019-06-21 13:26:21', '2018008'),
(42, 'Anti Depresan', '2018-12-27 14:05:04', NULL, '2018002'),
(43, 'Coba', '2018-12-28 08:49:48', NULL, '2018004'),
(44, 'Antiseptik', '2019-01-07 10:39:19', NULL, '2018002'),
(45, 'Anastesi gigi', '2019-01-07 10:48:55', NULL, '2018002'),
(46, 'Obat Luar', '2019-01-08 09:49:21', NULL, '2018004'),
(47, 'Analog prostaglandin', '2019-01-30 09:25:52', NULL, '2018002'),
(48, 'Anti wasir', '2019-02-07 08:50:53', NULL, '2018002'),
(49, 'Antispasmodik', '2019-02-11 09:59:05', NULL, '2018002'),
(50, 'Anti tiroid', '2019-02-11 10:08:56', NULL, '2018002'),
(51, 'Antiinflamasi nonsteroid', '2019-02-11 10:24:28', NULL, '2018002'),
(52, 'Anti nyeri', '2019-02-15 08:59:43', NULL, '2018002'),
(53, 'Anti fungi', '2019-02-15 09:28:15', NULL, '2018002'),
(54, 'Bahan Tumpatan sementara', '2019-02-18 10:17:45', NULL, '2018002'),
(55, 'Obat Pencahar', '2019-02-18 10:21:08', NULL, '2018002'),
(56, 'Kontrasepsi', '2019-02-18 10:45:53', NULL, '2018002'),
(57, 'Alat Kesehatan', '2019-02-18 10:59:40', NULL, '2018002'),
(58, 'Anti Migrain', '2019-02-18 11:06:34', NULL, '2018002'),
(59, 'Dental', '2019-02-18 11:51:15', NULL, '2018002'),
(60, 'Antibiotik topikal', '2019-02-18 13:15:52', NULL, '2018002'),
(61, 'Vasodilator', '2019-02-18 13:32:26', NULL, '2018002'),
(62, 'Antikoagulan', '2019-02-18 13:46:07', NULL, '2018002'),
(63, 'Larutan pemanis', '2019-02-19 10:35:37', NULL, '2018002'),
(64, 'Antiinfeksi Topikal ', '2019-02-19 10:38:41', NULL, '2018002'),
(65, 'Anti serotonin', '2019-02-20 10:55:07', NULL, '2018002'),
(66, 'Diuretik', '2019-02-20 11:06:17', NULL, '2018002'),
(68, 'Obat Alzheimer', '2019-02-21 13:38:41', NULL, '2018004'),
(69, 'Obat Angina', '2019-02-27 13:44:57', NULL, '2018002'),
(70, 'Obat Pembuluh Darah', '2019-02-27 14:06:49', NULL, '2018004'),
(72, 'Obat induksi', '2019-03-05 09:08:12', NULL, '2018002'),
(73, 'Antiemetik', '2019-03-05 09:26:14', NULL, '2018002'),
(74, 'Antioksidan', '2019-03-06 16:29:37', NULL, '2018002'),
(75, 'Anastesi', '2019-03-13 08:32:53', '2019-06-21 13:28:07', '2018008'),
(76, 'Anti konvulsan', '2019-03-13 13:12:04', NULL, '2018002'),
(77, 'Anti anemia', '2019-03-13 13:36:48', NULL, '2018002'),
(78, 'Multivitamin Sendi', '2019-03-13 13:55:11', NULL, '2018002'),
(79, 'Suplemen', '2019-04-04 15:04:15', NULL, '2018002'),
(82, 'Bronkodilator', '2019-05-09 10:17:44', NULL, '2018002'),
(83, 'Antikolinergik', '2019-05-14 10:53:40', NULL, '2018002'),
(84, 'Antituberkolosis', '2019-05-14 11:45:27', NULL, '2018002'),
(85, 'Anti microba', '2019-05-14 12:07:14', NULL, '2018002'),
(86, 'Antagonis kalsium', '2019-05-14 12:26:44', NULL, '2018002'),
(87, 'Angiotensin', '2019-05-17 14:33:25', NULL, '2018002'),
(88, 'Progesteron sintesis', '2019-05-17 14:42:19', NULL, '2018002'),
(89, 'Lainnya', '2019-06-12 08:49:58', NULL, '2018004'),
(90, 'Antifribrinolitik/Hemostatik', '2019-06-12 08:50:50', NULL, '2018004'),
(91, 'Nootropik dan Neurotonik', '2019-06-12 08:51:43', NULL, '2018004'),
(92, 'Vitamin', '2019-06-12 08:51:52', NULL, '2018004'),
(93, 'Obat Kulit Lain', '2019-06-12 08:52:13', NULL, '2018004'),
(94, 'Vitamin Neurotopik & Analgetik', '2019-06-12 08:52:30', NULL, '2018004'),
(96, 'Antelmintik / Obat Cacing ', '2019-06-17 08:12:08', NULL, 'usr-2018001'),
(97, 'Tyroid', '2019-06-21 11:21:10', NULL, '2018008'),
(98, 'Obat TB', '2019-06-21 14:11:31', NULL, '2018008'),
(99, 'Vaksin', '2019-06-28 16:51:33', NULL, '2018004'),
(100, 'Obesitas/Diet', '2019-07-06 11:41:35', NULL, '2018003'),
(101, 'Anti Epilepsi', '2019-07-08 10:22:05', NULL, '2018003'),
(102, 'Insomnia', '2019-07-12 14:50:59', NULL, '2018003'),
(103, 'Antipsikotik', '2019-07-17 10:10:00', NULL, '2018002'),
(104, 'Anti pospartum', '2019-08-22 17:15:38', NULL, '2018002'),
(105, 'Reagen', '2019-08-28 16:28:53', NULL, '2018002'),
(106, 'Relaxan Otot', '2019-09-05 13:54:20', NULL, '2018002'),
(107, 'Infeksi Saluran Kemih', '2019-09-16 15:42:50', NULL, '2018003'),
(108, 'Analgetik Opioid', '2020-01-15 08:34:00', NULL, '2018002'),
(109, 'Anti Malaria', '2020-01-16 13:51:06', NULL, '2018003'),
(110, 'Rectal supp', '2020-01-17 14:05:07', NULL, '2018002'),
(111, 'Anafilaktik', '2020-01-20 13:55:06', NULL, '2018002'),
(112, 'Suplemen Mineral', '2020-01-20 14:00:34', NULL, '2018002'),
(113, 'Preparat Hormon', '2020-01-20 14:11:15', NULL, '2018002'),
(114, 'Anti Asma', '2020-01-20 14:14:25', NULL, '2018002'),
(115, 'Obat ginjal', '2020-01-20 14:57:56', NULL, '2018002'),
(116, 'Profilaksis', '2020-01-28 15:17:38', NULL, '2018002'),
(117, 'Alkaloid Ergot', '2020-01-30 09:26:24', NULL, '2018002'),
(118, 'Anti konstipasi', '2020-02-03 11:14:53', NULL, '2018002'),
(119, 'Mukolitik', '2020-02-04 11:17:50', NULL, '2018002'),
(120, 'Preparat Antimigren ', '2020-02-04 11:25:21', NULL, '2018002'),
(121, 'Preparat Mulut', '2020-02-04 11:30:36', NULL, '2018002'),
(122, 'Calsium', '2020-02-04 11:43:15', NULL, '2018002'),
(123, 'Anti refluks', '2020-02-04 14:56:43', NULL, '2018002'),
(124, 'Anti koagulan', '2020-04-20 11:17:18', NULL, '2018002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_kemasan`
--

CREATE TABLE `barang_kemasan` (
  `barang_kemasan_id` int(11) NOT NULL,
  `barang_kemasan_nama` varchar(30) DEFAULT NULL,
  `barang_kemasan_dibuat` datetime DEFAULT NULL,
  `barang_kemasan_diperbaharui` datetime DEFAULT NULL,
  `userlogin_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_kemasan`
--

INSERT INTO `barang_kemasan` (`barang_kemasan_id`, `barang_kemasan_nama`, `barang_kemasan_dibuat`, `barang_kemasan_diperbaharui`, `userlogin_id`) VALUES
(1, 'Box ', '2018-10-26 03:33:40', '2018-10-26 03:49:23', '2018004'),
(2, 'Botol', '2018-10-26 06:18:53', NULL, '2018004'),
(3, 'Tube', '2018-11-08 04:10:35', NULL, '2018004'),
(7, 'Kolf', '2018-11-08 07:03:30', NULL, '2018004'),
(8, 'Strip', '2018-11-16 04:51:49', NULL, '2018004'),
(9, 'Unit', '2018-11-22 07:22:56', NULL, '2018004'),
(10, 'Capsul', '2018-12-27 13:38:59', NULL, '2018002'),
(11, 'Supp', '2018-12-27 13:58:27', NULL, '2018002'),
(12, 'Pot', '2019-01-07 10:59:51', NULL, '2018002'),
(13, 'Ampul', '2019-01-07 14:51:53', NULL, '2018004'),
(14, 'PCS', '2019-01-07 14:52:13', NULL, '2018004'),
(15, 'PAK', '2019-01-07 14:55:03', NULL, '2018004'),
(16, 'Ball', '2019-01-08 10:59:47', NULL, '2018004'),
(17, 'Sak', '2019-02-11 13:33:06', NULL, '2018002'),
(18, 'Tablet', '2019-02-21 12:57:22', NULL, '2018004'),
(19, 'Kaplet', '2019-02-21 12:58:20', NULL, '2018004'),
(20, 'Vial', '2019-02-21 14:18:24', NULL, '2018004'),
(21, 'Sachet', '2019-02-21 14:22:49', NULL, '2018004'),
(22, 'Kontrasepsi', '2019-02-21 14:24:59', NULL, '2018004'),
(23, 'Pouch', '2019-06-12 08:49:18', NULL, '2018004'),
(24, 'Kaleng', '2019-06-17 08:10:23', NULL, 'usr-2018001'),
(25, 'Galon', '2019-06-17 08:10:30', NULL, 'usr-2018001'),
(26, 'Set', '2019-06-17 08:10:36', NULL, 'usr-2018001'),
(27, 'Lembar', '2019-06-17 08:10:51', NULL, 'usr-2018001'),
(28, 'KIT', '2019-07-08 17:46:54', NULL, '2018003'),
(29, 'Roll', '2019-08-27 08:59:32', NULL, '2018002'),
(30, 'Cassete', '2019-08-28 16:34:46', NULL, '2018002'),
(31, 'Syringe', '2019-08-29 16:34:03', NULL, '2018003'),
(32, 'Blitster', '2019-09-03 14:31:26', NULL, '2018002'),
(33, 'Lusin', '2019-09-03 15:34:11', NULL, '2018002'),
(34, 'Pairs', '2020-04-07 09:24:53', NULL, '2018002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_satuan`
--

CREATE TABLE `barang_satuan` (
  `barang_satuan_id` int(11) NOT NULL,
  `barang_satuan_nama` varchar(30) DEFAULT NULL,
  `barang_satuan_dibuat` datetime DEFAULT NULL,
  `barang_satuan_diperbaharui` datetime DEFAULT NULL,
  `userlogin_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_satuan`
--

INSERT INTO `barang_satuan` (`barang_satuan_id`, `barang_satuan_nama`, `barang_satuan_dibuat`, `barang_satuan_diperbaharui`, `userlogin_id`) VALUES
(1, 'Tablet', '2018-10-26 03:32:18', NULL, '2018004'),
(2, 'Kapsul', '2018-10-26 06:01:52', NULL, '2018004'),
(3, 'Botol', '2018-10-26 06:02:05', NULL, '2018004'),
(4, 'Tube', '2018-11-08 06:56:59', NULL, '2018004'),
(5, 'Vial', '2018-11-08 06:59:50', NULL, '2018004'),
(6, 'Supp', '2018-11-08 07:00:20', NULL, '2018004'),
(7, 'Kolf', '2018-11-08 07:02:56', NULL, '2018004'),
(8, 'Kaplet', '2018-11-08 07:17:35', NULL, '2018004'),
(9, 'Sachet', '2018-11-13 07:30:34', NULL, '2018004'),
(10, 'Ampul', '2018-11-15 07:41:48', NULL, '2018004'),
(11, 'Effervescent', '2018-11-15 08:13:06', NULL, '2018004'),
(12, 'Unit', '2018-11-22 07:19:45', NULL, '2018004'),
(13, 'Pot', '2019-01-07 11:02:28', NULL, '2018002'),
(14, 'Pcs', '2019-01-07 14:48:45', NULL, '2018004'),
(15, 'Syringe', '2019-01-07 14:54:48', NULL, '2018004'),
(16, 'Galon', '2019-01-07 14:58:05', NULL, '2018004'),
(17, 'ROLL', '2019-01-08 09:41:59', NULL, '2018004'),
(18, 'Box', '2019-01-08 10:43:56', NULL, '2018002'),
(19, 'Ball', '2019-01-08 10:59:11', NULL, '2018004'),
(20, 'Sak', '2019-02-11 13:31:58', NULL, '2018002'),
(21, 'Pasang', '2019-06-12 08:48:21', NULL, '2018004'),
(22, 'Pack', '2019-06-12 08:48:31', NULL, '2018004'),
(23, 'Pouch', '2019-06-12 08:48:42', NULL, '2018004'),
(24, 'Lembar', '2019-06-12 08:48:50', NULL, '2018004'),
(25, 'Kaleng', '2019-06-17 08:08:49', NULL, 'usr-2018001'),
(26, 'Strip', '2019-06-17 08:09:03', NULL, 'usr-2018001'),
(27, 'Set', '2019-06-17 08:09:11', NULL, 'usr-2018001'),
(28, 'Gummy', '2019-06-17 08:09:19', NULL, 'usr-2018001'),
(30, 'Cassete', '2019-08-28 16:34:29', NULL, '2018002'),
(31, 'Rectal Supp', '2020-01-17 14:07:40', NULL, '2018002'),
(32, 'Ovula', '2020-01-20 14:41:41', NULL, '2018002'),
(33, 'Pairs', '2020-04-07 09:25:32', NULL, '2018002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_stok`
--

CREATE TABLE `barang_stok` (
  `barang_stok_no` int(11) NOT NULL,
  `barang_kode` varchar(25) NOT NULL,
  `barang_stok_harga` bigint(20) NOT NULL,
  `barang_stok_disc` double NOT NULL,
  `barang_stok_hbeli` bigint(20) NOT NULL,
  `barang_stok_batch` varchar(50) NOT NULL,
  `barang_stok_exp` date NOT NULL,
  `barang_stok_jml` bigint(20) NOT NULL,
  `barang_stok_status` enum('Ok','Dimusnahkan') NOT NULL,
  `barang_stok_from` enum('Master','Penerimaan') NOT NULL DEFAULT 'Penerimaan',
  `barang_stok_dibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_stok`
--

INSERT INTO `barang_stok` (`barang_stok_no`, `barang_kode`, `barang_stok_harga`, `barang_stok_disc`, `barang_stok_hbeli`, `barang_stok_batch`, `barang_stok_exp`, `barang_stok_jml`, `barang_stok_status`, `barang_stok_from`, `barang_stok_dibuat`) VALUES
(1, 'BRG0320090001', 14000, 0, 14000, 'B451231', '2021-03-09', 0, 'Ok', 'Master', '2020-03-11 15:28:38'),
(2, 'BRG0320090002', 10000, 0, 10000, 'B01', '2021-03-09', 0, 'Ok', 'Master', '2020-03-09 04:14:45'),
(3, 'BRG0320300001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:22:00'),
(4, 'BRG0320300002', 19090, 0, 19090, 'T07061AJ', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:39:03'),
(5, 'BRG0320300002', 19090, 0, 19090, 'T07061AJ', '2022-07-30', 3727, 'Ok', 'Master', '2020-04-08 06:39:00'),
(6, 'BRG0320300003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:43:08'),
(7, 'BRG0320300004', 5000, 0, 5000, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:44:10'),
(8, 'BRG0320300005', 0, 0, 0, 'T02015BK', '2022-02-28', 20, 'Ok', 'Master', '2020-04-08 06:39:00'),
(9, 'BRG0320300006', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:48:42'),
(10, 'BRG0320300007', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:50:12'),
(11, 'BRG0320300008', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:50:57'),
(12, 'BRG0320300009', 150000, 0, 150000, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:53:53'),
(13, 'BRG0320300010', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:57:03'),
(14, 'BRG0320300011', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:58:19'),
(15, 'BRG0320300012', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 04:59:12'),
(16, 'BRG0320300013', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 05:00:12'),
(17, 'BRG0320300014', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 06:40:14'),
(18, 'BRG0320300015', 135000, 0, 135000, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 06:41:05'),
(19, 'BRG0320300016', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 06:41:41'),
(20, 'BRG0320300017', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-30 06:42:55'),
(21, 'BRG0320310001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-03-31 08:32:13'),
(22, 'BRG0420060001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-06 07:08:21'),
(23, 'BRG0420060002', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-06 07:09:20'),
(24, 'BRG0420060003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-06 07:10:30'),
(25, 'BRG0420070001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-07 01:38:58'),
(26, 'BRG0420070002', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-07 01:39:47'),
(27, 'BRG0420070003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-07 02:25:56'),
(28, 'BRG0320300012', 2955, 0, 2955, '123456', '2023-04-08', 6000, 'Ok', 'Penerimaan', '2020-04-08 06:30:35'),
(29, 'BRG0320300003', 2909, 12, 2545, '1SCF', '2023-04-08', 960, 'Ok', 'Penerimaan', '2020-04-08 06:30:42'),
(30, 'BRG0320300001', 2727, 0, 2727, '123456', '2022-04-08', 2490, 'Ok', 'Penerimaan', '2020-04-24 01:12:02'),
(31, 'BRG0320300004', 5000, 0, 5000, '13DESF', '2023-04-08', 800, 'Ok', 'Penerimaan', '2020-04-08 06:30:49'),
(32, 'BRG0320300014', 8202, 0, 8202, 'EDFGHIJ', '2023-04-08', 900, 'Ok', 'Penerimaan', '2020-04-08 06:30:49'),
(33, 'BRG0320300011', 12000, 20, 9600, '4100031', '2021-12-01', 828, 'Ok', 'Penerimaan', '2020-04-08 06:30:55'),
(34, 'BRG0320300011', 12000, 20, 9600, '4100029', '2021-12-01', -1172, 'Ok', 'Penerimaan', '2020-04-08 06:39:00'),
(35, 'BRG0320300006', 5025, 30, 3518, '123456', '2023-04-08', 960, 'Ok', 'Penerimaan', '2020-04-08 06:31:01'),
(36, 'BRG0320300008', 11101, 30, 7771, '123456', '2023-04-08', 190, 'Ok', 'Penerimaan', '2020-04-08 07:29:24'),
(37, 'BRG0320300009', 150000, 15, 127500, '12345', '2023-04-01', 5, 'Ok', 'Penerimaan', '2020-04-08 06:31:13'),
(38, 'BRG0420060001', 454545, 0, 454545, '12345', '2020-04-08', 0, 'Ok', 'Penerimaan', '2020-04-08 07:24:27'),
(39, 'BRG0420060002', 136364, 0, 136364, '123456', '2020-04-08', 0, 'Ok', 'Penerimaan', '2020-04-08 07:17:07'),
(40, 'BRG0420060003', 140909, 0, 140909, '10190524', '2020-04-08', 0, 'Ok', 'Penerimaan', '2020-04-08 07:17:07'),
(41, 'BRG0420080001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-08 08:07:08'),
(42, 'BRG0420080002', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-08 08:10:12'),
(43, 'BRG0420080003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-08 08:11:18'),
(44, 'BRG0420080004', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-08 08:12:44'),
(45, 'BRG0420170001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-17 03:20:12'),
(46, 'BRG0420170002', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-17 03:24:56'),
(47, 'BRG0420170003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-17 08:18:22'),
(48, 'BRG0420170004', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-17 08:19:21'),
(49, 'BRG0420170005', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-17 08:20:18'),
(50, 'BRG0420200001', 17000, 0, 17000, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:26:02'),
(51, 'BRG0420200002', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:28:52'),
(52, 'BRG0420200003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:30:10'),
(53, 'BRG0420200004', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:32:06'),
(54, 'BRG0420200005', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:39:51'),
(55, 'BRG0420200006', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:41:46'),
(56, 'BRG0420200007', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 03:46:19'),
(57, 'BRG0420200008', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:02:15'),
(58, 'BRG0420200009', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:09:47'),
(59, 'BRG0420200010', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:11:27'),
(60, 'BRG0420200011', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:12:56'),
(61, 'BRG0420200012', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:15:30'),
(62, 'BRG0420200013', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:17:48'),
(63, 'BRG0420200014', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:22:36'),
(64, 'BRG0420200015', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:23:33'),
(65, 'BRG0420200016', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:24:27'),
(66, 'BRG0420200017', 35000, 0, 35000, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:25:49'),
(67, 'BRG0420200018', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 04:34:35'),
(68, 'BRG0420200019', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 06:15:03'),
(69, 'BRG0420200020', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-20 06:16:15'),
(70, 'BRG0420220001', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:00:24'),
(71, 'BRG0420220002', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:02:10'),
(72, 'BRG0420220003', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:07:09'),
(73, 'BRG0420220004', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:08:24'),
(74, 'BRG0420220005', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:12:04'),
(75, 'BRG0420220006', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:53:59'),
(76, 'BRG0420220007', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 04:55:10'),
(77, 'BRG0420220008', 0, 0, 0, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 05:01:45'),
(78, 'BRG0420220009', 108000, 0, 108000, '0', '0000-00-00', 0, 'Ok', 'Master', '2020-04-22 07:26:36'),
(79, 'BRG0420060002', 136364, 0, 136364, '123', '2020-04-24', 10, 'Ok', 'Penerimaan', '2020-04-23 22:52:22'),
(80, 'BRG0420170002', 1000, 0, 1000, '33', '2020-04-24', 10, 'Ok', 'Penerimaan', '2020-04-23 22:52:22'),
(81, 'BRG0420170001', 1000, 0, 1000, 'k', '2020-04-24', 0, 'Ok', 'Penerimaan', '2020-04-23 23:02:28');

--
-- Trigger `barang_stok`
--
DELIMITER $$
CREATE TRIGGER `auto_log_barang` AFTER INSERT ON `barang_stok` FOR EACH ROW BEGIN
	DECLARE jml_log INT;
    SET jml_log = 0;
    IF (NEW.barang_stok_from = 'Master') THEN
    	BEGIN
    		INSERT INTO barang_log (barang_stok_no, barang_log_keterangan, barang_log_ref, barang_log_ref_id, barang_log_jml, barang_log_stok_awal, barang_log_status) VALUES (NEW.barang_stok_no, 'Pemasukan', 'Stok Awal', '', NEW.barang_stok_jml,0, 'Konfirm');	        
	    END;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_kode`);

--
-- Indeks untuk tabel `barang_golongan`
--
ALTER TABLE `barang_golongan`
  ADD PRIMARY KEY (`barang_golongan_id`);

--
-- Indeks untuk tabel `barang_jenis`
--
ALTER TABLE `barang_jenis`
  ADD PRIMARY KEY (`barang_jenis_id`);

--
-- Indeks untuk tabel `barang_kemasan`
--
ALTER TABLE `barang_kemasan`
  ADD PRIMARY KEY (`barang_kemasan_id`);

--
-- Indeks untuk tabel `barang_satuan`
--
ALTER TABLE `barang_satuan`
  ADD PRIMARY KEY (`barang_satuan_id`);

--
-- Indeks untuk tabel `barang_stok`
--
ALTER TABLE `barang_stok`
  ADD PRIMARY KEY (`barang_stok_no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang_golongan`
--
ALTER TABLE `barang_golongan`
  MODIFY `barang_golongan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `barang_jenis`
--
ALTER TABLE `barang_jenis`
  MODIFY `barang_jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `barang_kemasan`
--
ALTER TABLE `barang_kemasan`
  MODIFY `barang_kemasan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `barang_satuan`
--
ALTER TABLE `barang_satuan`
  MODIFY `barang_satuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `barang_stok`
--
ALTER TABLE `barang_stok`
  MODIFY `barang_stok_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
