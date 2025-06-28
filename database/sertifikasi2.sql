-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 02:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sertifikasi2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `trans_id` int(11) NOT NULL,
  `email` varchar(69) DEFAULT NULL,
  `tgl_order` date DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `ongkir` double DEFAULT NULL,
  `total_bayar` double DEFAULT NULL,
  `alamat_kirim` varchar(100) DEFAULT NULL,
  `telp_kirim` varchar(15) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `lamakirim` varchar(20) NOT NULL,
  `kodepos` varchar(20) DEFAULT NULL,
  `metodebayar` int(11) DEFAULT NULL,
  `buktibayar` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`trans_id`, `email`, `tgl_order`, `subtotal`, `ongkir`, `total_bayar`, `alamat_kirim`, `telp_kirim`, `kota`, `provinsi`, `lamakirim`, `kodepos`, `metodebayar`, `buktibayar`, `status`) VALUES
(2, 'daniel@gmail.com', '2025-06-27', 479900, 95000, 574900, 'Jl. Bima II No.51, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', '089754342212', 'Kabupaten Bangli', 'Bali', '7-8', '50131', 1, '', 0),
(3, 'daniel@gmail.com', '2025-06-28', 479900, 120000, 599900, 'Jl. Bima II No.51, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', '089754342212', 'Kabupaten Belitung', 'Bangka Belitung', '15-21', '50131', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `trans_id` int(11) NOT NULL,
  `kode_brg` varchar(10) NOT NULL,
  `harga_jual` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `bayar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`trans_id`, `kode_brg`, `harga_jual`, `qty`, `bayar`) VALUES
(2, 'B01', 479900, 1, 479900),
(3, 'B01', 479900, 1, 479900);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` char(100) DEFAULT NULL,
  `kodepos` char(20) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `kodepos`, `telp`, `status`, `email`, `PASSWORD`, `foto`) VALUES
(2, 'candra tri', 'K', 'K', 'JT', '9999', '08999999', 1, 'candra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(3, 'user4', NULL, NULL, NULL, NULL, NULL, 1, 'user4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(4, 'faiznur1', 'tegal', 'kota tegal', 'jawa', '8947', '0893736', 1, 'faiz@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(5, 'indratanujaya', 'null', 'null', 'null', 'null', 'null', 1, 'indra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(6, 'ihsan', NULL, NULL, NULL, NULL, NULL, 1, 'ihsan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(8, 'rizqi', 'Karangdowo', 'Kendal', 'Jawatengah', '53553', '0894749345', 1, 'rizqi@gmail.com', '04467003e9364a2110ee786352d096c1', ''),
(9, 'Dani', 'Semarang', 'Semarang', 'Jawatengah', '52132l', '089778700', 1, 'dani@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(10, 'kipli j', 'Weleri', 'Kondal', 'Jawa', '53489', '023934', 1, 'kipli@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(11, 'pen', NULL, NULL, NULL, NULL, NULL, 1, 'pen@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(13, 'daniel', 'Jl. Bima II No.51, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', 'Semarang', 'Jawa Tengah', '50131', '089754342212', 1, 'daniel@gmail.com', '202cb962ac59075b964b07152d234b70', '6852c81f43ab2_20250618160727.jpg'),
(14, 'ridwan', NULL, NULL, NULL, NULL, NULL, 1, 'ridwa@gmail.com', '202cb962ac59075b964b07152d234b70', '685d771b1b0ac_20250626183643.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `kode` char(10) NOT NULL,
  `merk` varchar(200) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `satuan` char(20) DEFAULT NULL,
  `hargabeli` double DEFAULT NULL,
  `diskonbeli` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `hargajual` double DEFAULT NULL,
  `diskonjual` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `view_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`kode`, `merk`, `kategori`, `satuan`, `hargabeli`, `diskonbeli`, `hargapokok`, `hargajual`, `diskonjual`, `stok`, `foto`, `deskripsi`, `view_count`) VALUES
('B01', 'Rianty Batik Hem Slimfit Pria Lengan Pendek Rionaldo Black Pakaian Print - Atasan', 'Pakaian Batik', 'unit', 479900, 0, 479900, 479900, 0, 20, 'Rianty Batik Hem Slimfit Pria Lengan Pendek Rionaldo Black Pakaian Print - Atasan.png', '• Kemeja pendek untuk formal look dengan motif batik print klasik\n• Warna Black\n• Detail kerah\n• Unlined\n• Regular fit\n• Kancing depan\n• 1 kantong depan\n• Material katun tidak transparan, ringan dan tidak stretch\n• Tinggi model 180cm, lingkar dada 91cm, mengenakan ukuran L', 12),
('B02', 'IKAT KEPALA DESTAR UDENG BALI BATIK DENGAN TALI AKSESORIS KEPALA PRIA', 'Aksesoris Batik', 'unit', 28500, 0, 28500, 28500, 0, 12, 'IKAT KEPALA DESTAR UDENG BALI BATIK DENGAN TALI AKSESORIS KEPALA PRIA.png', '• Ikat kepala / destar / udeng Batik dengan Tali Merupakan salah satu kerajinan tangan yg dibuat secara hand made oleh pengrajin Jogja\n• Dipakai dengan cara dilingkarkan di kepala kemudian disimpul dibagian depan\n• bahan : kain saten dan batik \n• Cocok digunakan untuk anak2 maupun dewasa\n• Cocok digunakan saat berwisata atau untuk event tertentu\n• Cocok untuk hiasan kepala\n• Cocok untuk dijual kembali', 0),
('B03', 'Taplak Batik Motif Peta Indonesia Ori Danar Hadi  Hiasan Dinding Batik Peta Indonesia  Taplak Persegi Panjang Ukuran 65x110', 'Produk Interior', 'unit', 75000, 0, 75000, 75000, 0, 0, 'Taplak Batik Motif Peta Indonesia Ori Danar Hadi  Hiasan Dinding Batik Peta Indonesia  Taplak Persegi Panjang Ukuran 65x110.png', '• Taplak batik motif peta Indonesia size 110x65\n• Taplak persegi panjang dengan motif peta Indonesia\n• Bahan katun halus ,gambar jelas dan ada keterangan nama nama kota\n• Produk Ori Danar Hadi\n• Bisa untuk\n• Taplak meja tamu\n• Oleh-oleh\n• Hiasan dinding\n• Souvenir', 2),
('B04', 'Central Kerajinan Tempat Tisu Batik Kayu Ekstra 26.5X15X10 Cm', 'Kerajinan Batik', 'unit', 60500, 0, 60500, 60500, 0, 9, 'Central Kerajinan Tempat Tisu Batik Kayu Ekstra 26.5X15X10 Cm.png', '• atik tulis khas Jogja\n• Bahan kayu ukuran 26.5x15x10 cm\n• 100% Handmade, rapi dan mengkilat\n• Bahan berkualitas\n• Aman untuk Lingkungan', 1),
('B06', 'Blangkon Jogja Mataram Lipat Motif Batik Aksesoris Tradisional Adat Jawa Among Tamu Pria Dewasa & Anak Laki-laki TKSDSMP Modhang Orange 1', 'Aksesoris Batik', 'unit', 85000, 0, 85000, 85000, 0, 0, 'Blangkon Jogja Mataram Lipat Bisa Dicuci Motif Batik Aksesoris Pakaian Tradisional Adat Jawa Among Tamu Pria Dewasa & Anak Laki-laki TKSDSMP Modhang Orange 1.png', '• Foto yg dipajang 100% asli foto sendiri\n• Warna kemungkinan ada sedikit perbedaan karena efek kamera dan cahaya\n• Blangkon adalah produksi kerajinan Tangan/Manual. Beda tangan bisa berbeda hasilnya. Jadi harap maklum jika terkadang hasilnya berbeda 1 dengan lainnya. Karena diproduksi oleh beberapa pengrajin.', 1),
('B07', 'Wallpaper Dinding Klasik Batik Eropa Gold Abu Kerajaan mewah', 'Produk Interior', 'unit', 110000, 0, 110000, 110000, 0, 9, 'Wallpaper Dinding Klasik Batik Eropa Gold Abu Kerajaan mewah.png', '• Ukuran 1 roll (produk dijual per roll)\n• Lebar 53 CM x panjang 10 M\n• Bahan: Vinyl \n• Permukaan Bertekstur\n• motif Timbul\n• Tidak mudah robek\n• Mudah dibersihkan', 1),
('B08', 'Keprak Kepak Marawis Motif Batik Satuan (beli 4pcs BONUS TAS)', 'Kerajinan Batik', 'unit', 68900, 0, 68900, 68900, 0, 4, 'Keprak Kepak Marawis Motif Batik Satuan (beli 4pcs BONUS TAS).png', '• Bahan: kayu mahoni/ kulit kambing\n• Ukuran: diameter 18cm/ tinggi 11cm\n• Warna: emas/hitam motif batik.', 0),
('B09', 'Baju Batik Kemeja Lengan Panjang Pria Batik Ori Solo Katun (Wisma Aji) - M', 'Pakaian Batik', 'unit', 135000, 0, 135000, 135000, 0, 4, 'Baju Batik Kemeja Lengan Panjang Pria Batik Ori Solo Katun (Wisma Aji) - M.png', '• Bahan terbuat dari 100% KATUN. Halus, adem, sejuk, nyaman di kulit dan menyerap keringat.\n• Batik Berlapis FURING Full Badan, jahitan RAPI, Bahan Kain tidak Licin, sehingga sangat nyaman di pakai.\n• Teknik PRINTING berkualitas untuk mengkasilkan Batik yang awet, motif tidak luntur, tidak menciut ketika berulang kali dicuci, dan tidak transparant.\n• Desain Potongan kemeja REGULER sehingga memberikan kesan BERWIBAWA ketika di pakai.', 0),
('B10', 'KALUNG RUMBAI BATIK  AKSESORIS BLOUSE POLOS COKELAT  AKSESORIS DRESS PESTA', 'Aksesoris Batik', 'unit', 31900, 0, 31900, 31900, 0, 10, 'KALUNG RUMBAI BATIK  AKSESORIS BLOUSE POLOS COKELAT  AKSESORIS DRESS PESTA.png', 'Bahan: \n• Kain Batik \n• Kayu\n• Metal', 1),
('B11', 'Wallpaper Dinding Batik Ungu Bunga', 'Produk Interior', 'unit', 205000, 0, 205000, 205000, 0, 7, 'Wallpaper Dinding Batik Ungu Bunga.png', '• Ukuran : 53 cm x 10 mtr = 5m2 / Roll\n• Bahan : Vinyl bertekstur\n• Berat : 1.5kg/roll\n• Permukaan tidak tembus air ( anti air )\n• Mudah dibersihkan\n• Mudah dalam pemasangan\n• Bahan yang BERTEXTURE, BERSERAT, TIMBUL DAN TEBAL, Membuat hasil pemasangan wallpaper sangat mewah, luxury, elegan sangat nyaman.', 0),
('B12', 'ENTIK BAG (M)Tas Batik Jinjing Kecil Tenteng Murah Oleh - oleh Kerajinan Jogja Handle Bag Souvenir Grosir Custom', 'Kerajinan Batik', 'unit', 19500, 0, 19500, 19500, 0, 5, 'ENTIK BAG (M)  Tas Batik Jinjing Kecil Tenteng Murah Oleh - oleh Kerajinan Jogja Handle Bag Souvenir Grosir Custom.png', '• Bahan Batik dengan busa tipis didalam. \n• Berkualitas pastinya karena melewati proses quality control kami.\n• Cocok dijadikan souvenir maupun dipakai sehari-hari.\n• Pembelian dalam jumlah banyak harap chat. Terdapat harga khusus', 1),
('B13', 'BATIK RIZQINA Pesisir Lengan Pendek - Green - Pria Batik Pria - Atasan', 'Pakaian Batik', 'unit', 389000, 0, 389000, 389000, 0, 7, 'BATIK RIZQINA Pesisir Lengan Pendek - Green - Pria Batik Pria - Atasan.png', '• Kemeja batik semi tulis bernuansa etnik untuk formal look yang elegan\n• Warna hijau\n• Detail kerah\n• Lined\n• Regular fit\n• Kancing depan\n• 1 kantong depan\n• Material katun tidak transparan, ringan, dan tidak stretch\n• Tinggi model 184cm, lingkar dada 97cm, mengenakan ukuran L', 0),
('B14', 'Belt Wanita - Bhatara Batik Obi Belt 5323 Hitam', 'Aksesoris Batik', 'unit', 80000, 0, 80000, 80000, 0, 0, 'Belt Wanita - Bhatara Batik Obi Belt 5323 Hitam.png', '• belt motif batik bernuansa modern\n• cocok untuk acara formal atau non-formal\n• two tone warna hitam dan merah', 1),
('B15', 'Wallpaper Dinding Batik klasik Coklat Gold Cream Abu Silver Mewah Luxury', 'Produk Interior', 'unit', 108000, 0, 108000, 108000, 0, 18, 'Wallpaper Dinding Batik klasik Coklat Gold Cream Abu Silver Mewah Luxury.png', '• Permukaan tidak tembus air\n• Permukaan Bertekstur\n• Motif Timbul\n• Tidak mudah robek\n• Mudah dibersihkan\n• Menciptakan suasana ruangan yang berbeda dalam sekejap jadi lebih Mewah, elegan dan nyaman', 0),
('B16', 'Pajangan Wayang - Kerajinan Khas Jogja', 'Kerajinan Batik', 'unit', 170000, 0, 170000, 170000, 0, 6, 'Pajangan Wayang - Kerajinan Khas Jogja.png', '• Bahan Logam: Aluminium\n• Bahan Kayu: Mahoni\n• Dimensi Kayu+Wayang  PxLxT: 9 x 4 x 19 cm.', 0),
('B17', 'Batik Krisna Wahyu [Krisna Wahyu] Batik Pria Katun Prada Lengan Pendek - Black&brown Pakaian Print - Atasan', 'Pakaian Batik', 'unit', 408000, 0, 408000, 408000, 0, 21, 'Batik Krisna Wahyu [Krisna Wahyu] Batik Pria Katun Prada Lengan Pendek - Black&brown Pakaian Print - Atasan.png', '• Model: GN-G222SLCB\r\n• Kapasitas:\r\n• Total: 225 Liter (Bruto) / 209 Liter (Neto)\r\n• Freezer: 44 Liter\r\n• Refrigerator: 165 Liter\r\n• Dimensi (P x L x T): 555 x 1.520 x 585 mm\r\n• Berat: 42 kg\r\n• Konsumsi Energi: 346,2 kWh/tahun\r\n• Warna: Platinum Silver\r\n• Material Pintu: PET\r\n• Tipe Kompresor: Smart Inverter Compressor\r\n• Handle: Horizontal Pocket\r\n', 0),
('B18', 'SYAL BATIK CAP PREMIUM RUMBAI-SCARF LEHER', 'Aksesoris Batik', 'unit', 33900, 0, 33900, 33900, 0, 2, 'SYAL BATIK CAP PREMIUM RUMBAI-SCARF LEHER.png', '• Bahan Katun Rayon\n• Halus Batik Cap\n• Ujung ada rumbai \n• Berfungsi u scarf leher atau u aksesoris lainnya . \n• Ukuran Panjang 142 cm Ukuran Lebar 37cm', 0),
('B19', 'WALLPAPER DINDING MOTIF BATIK MEEAH BIRU COKLAT CREAM PRIVATE', 'Produk Interior', 'unit', 148000, 0, 148000, 148000, 0, 13, 'WALLPAPER DINDING MOTIF BATIK MEEAH BIRU COKLAT CREAM PRIVATE.png', '• Ukuran : 50 cm x 10 Meter = 5 M2 / Roll\n• Berat : 1,7Kg/ Roll\n• Permukaan : Bertekstur (Timbul)\n• Bahan : Vinyl Pada permukaan Wallpaper, Tahan lebih dari 5 tahun, mudah dibersihkan dengan kain lap basah (lembab). Import', 1),
('B20', 'Wayang Rama Sinta Batik Kayu Wayang Oleh-oleh Jogja Wayang Box Hampers Tradisional', 'Kerajinan Batik', 'unit', 125000, 0, 125000, 125000, 0, 4, 'Wayang Rama Sinta Batik Kayu Wayang Oleh-oleh Jogja Wayang Box Hampers Tradisional.png', '• Panjang/tinggi dengan stand 30cm, \n• Bahan kayu sengon yang dibatik secara manual. \n• Tekstur kayu asli/raw\n• Termasuk deskripsi wayang dalam bahasa inggris. \n• Include BOX batik tebal tutup mika bening', 1),
('K05', 'Laskala Batik Premium Pusaka Kemeja Batik Pria Slimfit Lengan Panjang', 'Pakaian Batik', 'unit', 485000, 0, 485000, 485000, 0, 4, 'Laskala Batik Premium Pusaka Kemeja Batik Pria Slimfit Lengan Panjang.png', '• Warna Dasar : Dominan Hitam (Aksen/Highlight Ungu, Putih)\n• Bahan Dasar : Katun Satin Jepang membuat efek kilau pada permukaan, dan juga memiliki tekstur yg halus dan lembut.\n• Bahan Lapisan (interlining) : Bahan tricot sutra 100% cotton yang membuat bahan tidak mudah kusut, tekstur yang lembut dan nyaman digunakan walaupun di udara yang panas.\n• Motif : Gurda, Burung Nuri\n• Motif Pada Lengan : Sambung (memiliki motif lengan yang sama)\n• Ukuran : S, M, L, XL & XXL\n• Exclusive packaging (reusable travel bag)', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`trans_id`,`kode_brg`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `nama_2` (`nama`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
