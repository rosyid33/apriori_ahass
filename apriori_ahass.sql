/*
SQLyog Ultimate v12.4.0 (64 bit)
MySQL - 10.1.16-MariaDB : Database - apriori_ahass
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `confidence` */

DROP TABLE IF EXISTS `confidence`;

CREATE TABLE `confidence` (
  `kombinasi1` varchar(255) DEFAULT NULL,
  `kombinasi2` varchar(255) DEFAULT NULL,
  `support_xUy` double DEFAULT NULL,
  `support_x` double DEFAULT NULL,
  `confidence` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL,
  `nilai_uji_lift` double DEFAULT NULL,
  `korelasi_rule` varchar(100) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0',
  `jumlah_a` int(11) DEFAULT NULL,
  `jumlah_b` int(11) DEFAULT NULL,
  `jumlah_ab` int(11) DEFAULT NULL,
  `px` double DEFAULT NULL,
  `py` double DEFAULT NULL,
  `pxuy` double DEFAULT NULL,
  `from_itemset` int(11) DEFAULT NULL COMMENT 'dari itemset 2/3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `confidence` */

/*Table structure for table `itemset1` */

DROP TABLE IF EXISTS `itemset1`;

CREATE TABLE `itemset1` (
  `atribut` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemset1` */

/*Table structure for table `itemset2` */

DROP TABLE IF EXISTS `itemset2`;

CREATE TABLE `itemset2` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemset2` */

/*Table structure for table `itemset3` */

DROP TABLE IF EXISTS `itemset3`;

CREATE TABLE `itemset3` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `atribut3` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemset3` */

/*Table structure for table `process_log` */

DROP TABLE IF EXISTS `process_log`;

CREATE TABLE `process_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `process_log` */

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_date` date DEFAULT NULL,
  `produk` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id`,`transaction_date`,`produk`) values 
(1,'2017-01-02','Pad Set Kvb T-01,Oli Mpx 1 1L,Oli Spx 1 1.2L,Sekring Gepeng 10A,Filter Vario 125,V-Belt Kvy Set,V-Belt Beat FI Set,V Belt Vario 125 Set,Ban Dalam 275-17,Accu Kering Kph,Busi U27epr-N9,Busi Cpr9ea-9/Vario 125 FI,Busi U 24 Beat/Vario 125,Dop kfv,Dop Kph,Dop Sein,Dop Riting 12v 10w,Dop Stop,Dop kota,Horn/Klakson Ktm,Ban Luar Belakang Kvb,Kampas Kga,Kampas Kzl,Piece Slide,Oring Tutup Klep oval/Supra X 125,Kampas Kph'),
(2,'2017-01-03','Rantai Mesin Kit Revo,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Oli Spx1 1.2L,Oli Mpx 1 1.2L,Filter Beat FI,Filter Kph/ Supra X 125,Filter Vario 125,Piece Slide,Ban Dalam 225/250-17,Kampas Kopling Ganda Gn5,V-Belt Beat FI Set,V-Belt Vario 125 Set,Ban Dalam Kvb 275-14,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Dop Kfv,Dop Kph Dop Sein,Dop Stop,Dop Kota,Tombol Dimer Revo,Kampas Kga,Kampas Kzl,Spion Kanan Kww,Laker Crankcase,Roches Matic,Oring Tutup Klep Oval/Supra X125,Kampas Kph'),
(3,'2017-01-04','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Mpx 1 1L,Oli Mpx3 1L,Oli Spx1 1L,Oli Spx1 1.2L,Filter Beat FI,Piece Slide,V Belt Kzl,V-Belt Kvy Set,V-Belt Beat FI Set,V-Belt Vario 125 Set,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Tombol Dimer Supra X 125 (Lama),Horn/ Klakson Kph,Kampas Kzl,Laker Crankcase,Oring Tutup Klep Oval/Supra X125,Roller Vario,Baut Skrup'),
(4,'2017-01-05','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Oli Mpx 1 1.2L,Oli Mpx 1 1L,Filter Kvy,Piece Slide,Kampas Kopling Ganda Vario 150,V-Belt Beat FI Set,Busi U27epr-N9,Dop Kph,Dop Krs,Dop Stop,Klakson Kww,Kampas Kph,Spion Kiri Back,Oring Tutup Klep Oval/Supra X125'),
(5,'2017-01-06','Rantai Mesin Kit Revo,Gear Set Kev,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Oli Mpx3 1 L,Oli Spx1 1L,Oli Spx1 1.2L,Filter Beat FI,Ban Dalam Kvb 275-14,Busi U20 Epr9s/ Revo Abs,Dop Kph,Dop Stop,Dop Kota,Kampas Kga,Oring Tutup Klep Oval/Supra X125,Roller Vario,Piece Slide,V Belt Kzl,V-Belt Kvy Set,Dop Kfv'),
(6,'2017-01-07','Rantai Mesin Kit Revo,Pad Set Megapro New Belakang Pad Set Kpp 901 Cakram Depan,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Mpx3 1L,Oli Spx1  1L,Oli Spx 1 1.2L,Filter Beat FI,Filter Kph/ Supra X 125,Filter Kvb,Filter Vario 125 Roller Beat Esp,Piece Slide,V Belt Beat Esp,V-Belt Kvb Set,Cop Busi,Accu Kering Kph,Accu Kering Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Kfv,Dop Kph,Dop Krs,Dop Sein,Dop Kota,Pelampung Bensin/Fuel Unit,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(7,'2017-01-09','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Kones Gn5,Oli Mpx3 1L,Oli Spx1 1.2L,Filter Beat FI,V-Belt Vario 125 Set,Accu Kering Kph,Dop Depan Verza,Dop Stop,Dop Kota,Kaca Speedo Revo Abs,Kampas Kzl,Oring Tutup Klep Oval/Supra X125,Spion Kiri Back,Piston Kit (0.50),Gasket Water Pump,Baut Dek,Protector Muffler Kvb,Dop Kfv,Kampas Kph'),
(8,'2017-01-10','Pad Set Kwb 601,Oli Mpx3 1L,Oli Spx1 1.2L,Air Radiator/ Coolant,Sekring Gepeng 15A,Filter Kvb,Filter Vario 125,Boss Drive Face,Face Comp Moveable Drive,Piece Slide,V-Belt Kvb Set,Cop Busi Super,Busi U27epr-N9,Busi U20 Epr9s/ Revo Abs,Dop Kfv,Dop Kph,Dop Stop,Tombol Riting Revo FI,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125,Baut Skrup'),
(9,'2017-01-11','Pad Set Kvb - T01,Ube Drain Matic,Filter Beat FI,Filter Kph/ Supra X 125,Roller Vario 150,V Belt Vario 150 FI,V-Belt Beat FI Set,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Kph Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(10,'2017-01-12','Pad Set Kr 3,Pad Set Kwb 601,Pad Set Megapro New Depan,Rantai Mesin Kph,Filter Vario 125,Busi U27epr-N9,Dop Kfv,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(11,'2017-01-13','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Spx1 1L,Oli Mpx1 1.2L,Dop Kph,Dop Sein,Protector Muffler Beat Pop,Protector Muffler Beat FI,Protector Muffler Beat Esp,Lifter Assy Tensioner'),
(12,'2017-01-14','Pad Set Kvb - T01,Rantai Mesin Revo,Filter Beat FI,Filter Vario 125,Roller Vario 150,Kampas Kopling Ganda Beat,V-Belt Kvy Set,V-Belt Beat FI Set,V-Belt Vario 125 Set,Ban Dalam 275-17,Cop Busi Vario 125 FI,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Kampas Kzl,Baut Dek'),
(13,'2017-01-16','Rantai Mesin Kit Revo,Pad Set Kvb - T01,Pad Set Megapro New Depan,Gasket Head Cover Verza,Filter Beat FI,Filter Kvb,Filter Cb 150R,Kabel Choke Kfl,V-Belt Vario 125 Set,Accu Kering Kph,Busi U27epr-9,Busi U 24 Beat/ Vario 125,Headlight Unit Revo Abs/ Fit,Soket Lampu Kev,Dop Kfv,Dop Kph,Dop Stop,Dop Kota,Protector Muffler Kvy'),
(14,'2017-01-17','Gear Set Kwb,Pad Set Kvb - T01,Pad Set Kwb 601,Filter Beat FI,Filter Vario 125,Piece Slide,V-Belt Beat FI Set,Busi U27epr-N9,Busi U 24 Beat/ Vario 125,Dop Sein,Dop Kota,Oring Tutup Klep Bulat/ Grand'),
(15,'2017-01-18','Pad Set Kpp 901 Supra 125,Tube Drain Matic,Filter Beat FI,Bostel Stater Kww/Revo Abs,V-Belt Kvy Set,Harness Wire (Kabel Body),Tombol Dimer Revo,Kabel Comp,Baut Dek'),
(16,'2017-01-19','Gear Set Keh,Gear Set Kww,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Piston Comp Vacuum,Gasket Carb Insulator/Pak Manipol,V-Belt Vario 125 Set,Regulator Rec Comp/ Kyprox Tiger,Tombol Dimer Revo,Switch Rem Cakram Depan'),
(17,'2017-01-20','Tube Drain Matic,Protector Muffler Vario 125,Piece Slide,Spring Clutch (Pir Kopling),Kampas Kopling Ganda Beat,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Beat FI Set,Face Set Driven Beat FI,Pin Roller Guide Beat FI,Roller Guide Beat FI,Spring Driven Face,Busi Cpr9ea-9/ Vario 125 FI,Kaca Riting R Fr Vario 125 Assy,Dop Kph,Dop Stop,Tombol Dim Vario 150'),
(18,'2017-01-21','Rantai Mesin Kit Revo,Oli Mpx 1 1.2L,Filter Beat FI,Filter Kvy,Filter Spacy,Filter Vario 125,Face Comp Moveable Drive,Roller Beat Esp,Accu Kering Kph,Busi U 24 Beat/ Vario 125,Switch Rem Belakang,Oring Tutup Klep Oval/Supra X125'),
(19,'2017-01-23','Gear Set Kww,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Spx1 1L,Pak Blok Beat FI,Pak Cop Beat FI,Gasket Head Cover,Crankshaft Assy/ Bandol,Filter Sonic 150,Face Drive Beat,Fin Drive Face,V-Belt Beat FI Set,Cop Busi,Accu Kering Kph,Busi U20 Epr9s/ Revo Abs,Busi U27epr-9 Busi U 24 Beat/ Vario 125,Protector Muffler'),
(20,'2017-01-24','Pad Set Kpp 901 Supra 125,Oli Mpx 1 1L,Filter Kph/ Supra X 125,Ban Dalam Kvb 275-14,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Gear Box Spido Kvb,Busi Cpr6ea (Karisma,Supra X 125),Filter Cb 150R,Piston Kit (0.50),Gasket Water Pump Cove,Lifter Assy Tensioner'),
(21,'2017-01-25','Pad Set Kvb â€“ T01,Pad Set Kwb 601,Filter Vario 125,Filter Cb 150R,Cop Busi,Cop Busi Super,Busi U20 Epr9s/ Revo Abs,Dop Kph,Dop Sein,Baut Dek,Baut Skrup'),
(22,'2017-01-26','Pad Set Kvb - T01,Pad Set Kwb 601,V-Belt Kvy Set,V-Belt Beat FI Set,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Tombol Dim Vario 150,Horn/Klakson Ktm,Kabel Gas Cb 150r(A)'),
(23,'2017-01-27','Pad Set Kr 3,Pad Set Kvb - T01,Pak Blok Vario 125,Gasket Cyiinder Head (Pak Cop),Crankshaft Assy,Piston Kit Std,Gasket Water Pump Assy,Ban Dalam 225/250-17,Ban Dalam Kvb 275-14,Tombol Dim Vario 150,Pelampung Bensin Beat,Kampas Kzl'),
(24,'2017-01-30','Gear Set Supra X 125 FI,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Filter Cb 150R,Protector Muffler Beat FI,Piece Slide,Kampas Kopling Ganda Spacy,Kabel Kopling,V-Belt Kvy Set,V-Belt Beat FI Set,Ban Dalam Kvb 275-14,Accu Kering Kph,Busi U27epr-9,Busi U 24 Beat/ Vario 125,Soket Supra X 125 Mata 2,Kaca Lampu Belakang Beat FI,Tombol Dimer Revo,Tombol Dim Vario 125,Switch Rem Fr Stop,Oring Tutup Klep Oval/Supra X125'),
(25,'2017-01-31','Rantai Mesin Kit Revo,Pad Set Kr 3,Pad Set Kvb - T01,Busi Cpr9ea-9/ Vario 125 FI,Dop Depan Verza,Kampas Gl,Kampas Kzl,Spion Back,Spion Megapro New,Klakson Vario,Bosh Gear Kww,Spring Gear Shift Arm'),
(26,'2017-02-01','Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 11.2L,Gasket Carb Insulator/Pak Manipol,Filter Kvb,Filter Megapro New,Protector Muffler Kvb,Boss Drive,Boss Drive Face,Face Comp Moveable Drive Beat FI,Face Comp Moveable Drive,Piece Slide,Kampas Kopling Ganda Vario,Rubber Clutch Dumper Beat,V-Belt Beat FI Set,V-Belt Vario 125 Set,Ban Dalam 275-17,Accu Kering Kph,Regulator Rect. Comp/ Kyprox Vario,Busi U 24 Beat/ Vario 125,Tombol Dimer Revo,Switch Assy Fr Stop,Kampas Kzl,Laker Crankcase'),
(27,'2017-02-02','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Oli Spx 1 1L,Sekring Gepeng 15A,Sekring Gepeng 10A,Kampas Kopling Ganda,Rubber Clutch Dumper Beat,V-Belt Kvy Set,V-Belt Beat FI Set,Ban Dalam Kvb 275-14,Busi Cpr9ea-9/ Vario 125 F1,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl'),
(28,'2017-02-03','Gear Set Kww,Pad Set Kr 3,Oli Spx 1 1.2L,Filter Kph/ Supra X 125,Filter Vario 125,Boss Drive Face,Face Comp Moveable Drive,Roller Vario,Plate Comp Drive,Kampas Kopling Ganda Vario 125,Rubber Clutch Dumper,V-Belt Vario 125 Set,Cop Busi Vario 125 FI,Accu Kering Kph,Accu Kering Vario 125 FI,Regulator Rect. Comp/ Kyprox Vario,Busi U 24 Beat/ Vario 125,Tombol Dim Vario 125'),
(29,'2017-02-04','Rantai Mesin Kit Revo,Gear Set Ktl,Oli Mpx 1 1.2L,Spring Tensioner (Pir Stut Kamrat),Filter Beat FI,Kampas Kopling Ganda,Dop Depan Verza'),
(30,'2017-02-06','Pad Set Kpp 901 Supra 125,Pad Set Kwb 601,Oli Spx 1 1L,Gasket Head Cover,Gasket Head Cover Verza,Sekring Botol 15A,Filter Kwb Revo,Cop Busi,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Soket Lampu Supra Fit,Dop Kfv,Spion Beat FI,Laker Crankcase,Kampas Kph,Kampas Kzl'),
(31,'2017-02-07','Gear Set Keh,Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Megapro New Depan,Oli Spx 1 1.2L,Kabel Kopling,V-Belt Vario 125 Set,Accu Kering Vario 125 FI,Tombol Dim Vario 125,Switch Rem Fr Stop,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(32,'2017-02-08','Pad Set Kwc,Sekring Botol 15A,Kabel Choke Kfl,Ban Dalam 275-17,Busi U 24 Beat/ Vario 125,Dop Stop,Dop Kota,Kampas Kph,Tombol Dimer Supra X 125 (Lama),Kaca Speedo Beat FI'),
(33,'2017-02-09','Rubber Clutch Damper/ Karet Kopling,V Belt Vario 125 Esp,V-Belt Vario 125 Set,Busi Cpr9ea-9/ Vario 125 FI,Tombol Dimer Supra X 125 (Lama),Kaca Speedo Beat FI,Oring Tutup Klep Oval/Supra X125,Baut Skrup,Boss Drive,Face Comp Moveable Drive,Roller Vario 150'),
(34,'2017-02-10','Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Spx 1 1.2L,Gasket Cylinder Head,Pak Manipol Kph,Filter Beat FI,Ban Dalam Kvb 275-14,Busi U27epr-N9,Dop Kph,Dop Stop,Dop Kota,Kampas Kzl'),
(35,'2017-02-11','Gear Set Kww,Pad Set Kpp 901 Supra 125,Oli Spx1 1L,Oli Spx1 1.2L,Piston Comp Vacuum,Filter Vario 125,V-Belt Kvy Set,V-Belt Vario 125 Set,Ban Dalam Kvb 275-14,Ban Dalam 275-17,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Tombol Dim Vario 150,Tombol Klakson Supra X 125,Fleser Riting Gbg,Baut Dek,Baut Skrup'),
(36,'2017-02-13','Pad Set Kvb - T01,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Spx1 1L,Oli Spx1 1.2L,Kabel Gas Ktm Injeksi,Roller Beat,Accu Kering Kph,Accu Kering Vario 125 FI,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Kph,Dop Kzl (Scoopy),Dop Sein,Dop Kota,Switch Rem Fr Stop,Klakson Vario,Kampas Kga,Kampas Kph,Kampas Kzl'),
(37,'2017-02-14','Oli Mpx 1 1L,Oli Mpx 1 1.2L,Oli Spx1 1.2L,Piece Slide,V-Belt Kvy Set,Busi U20 Epr9s/ Revo Abs,Dop Kph,Dop Stop,Kabel Gas Cb 150R(A),Auto Cock Fuel'),
(38,'2017-02-15','Pad Set Kvb - T01,Air Radiator/ Coolant,Filter Udara Tige,Boss Drive,Face Comp Moveable Drive,Roller Vario 150,Roller Beat Esp,Piece Slide,Ban Dalam Kvb 275-14,Cop Busi Kvb,Accu Kering Kph,Dop Kph,Dop Stop,Dop Kota,Kampas Kzl'),
(39,'2017-02-16','Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Mpx 11L,Oli Spx 1 1L,Gasket Head Cover,Filter Beat FI,Face Comp Moveable Drive,Ban Dalam Kvb 275-14,Cop Busi Beat FI,Accu Kering Kph,Busi U27epr-N9,Busi U27epr-9,Soket Lampu Beat FI,Dop Kfv,Tombol Dim Vario 150,Spion Kiri Vario 125,Kampas Kph,Kampas Kz'),
(40,'2017-02-17','Rantai Mesin Kit Revo,Pad Set Kvb - T01,Pad Set Kwb 601,Crankshaft Assy Beat Esp,Crankshaft Assy/ Bandol,Filter Beat FI,Filter Vario 125,Fin Drive Face,Piece Slide,V-Belt Beat FI Set,Cop Busi Kwn,Accu Kering Vario 125 FI,Klakson Kww'),
(41,'2017-02-18','Rantai Mesin Kit,Rantai Mesin Kit Revo,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Tutup Klep Cub,Filter Kwb Revo,Cop Busi,Cop Busi Revo Fit,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Headlight Unit Beat FI,Dop Riting Kuning,Dop Kfv,Dop Kph,Dop Sein,Dop Kota,Spion Beat FI,Oring Tutup Klep Oval/Supra X125,Baut Skrup,Kampas Kph,Kampas Kzl'),
(42,'2017-02-19','swith winker/ tombol riting,Tombol dim karisma,dop depan gl max,soket lampu belakang kzr,kaca riting R fr vario 125 assy,pedal stater beat,kabel gas kph'),
(43,'2017-02-20','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Sekring Gepeng 10A,V-Belt Kvy Set,V-Belt Beat FI Set,Accu Kering Kph,Regulator Rec Comp/ Kyprox Tiger,Busi U27epr-N9,Tombol Dim Vario 150,Ban Luar Belakang Kvb,Kampas Kph'),
(44,'2017-02-21','Gear Set Ktl,Gear Set Kwb,Pad Set Kvb - T01,Oli Spx 1 1.2L,Roller Beat Esp,Piece Slide,Kampas Kopling Gn5,Kampas Ganda Gn5,V-Belt Beat FI Set,Accu Kering Kww,Busi U27epr-N9,Tombol Dimer Revo,Tombol Dim Vario 125,Kampas Kph,Kampas Kzl'),
(45,'2017-02-22','Gear Set Supra X 125 FI,Pad Set Kvb - T01,Pad Set Kwb 601,Filter Beat FI,Piece Slide,V-Belt Vario 125 Set,Ban Dalam 275-17,Busi U27epr-9,Dop Kfv,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Tombol Dimer Revo,Switch Rem Cakram Depan,Oring Tutup Klep Oval/Supra X125,Kampas Kph,Kampas Kzl'),
(46,'2017-02-23','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Oli Mpx 1 1.2L,Oli Mpx 1 1L,Oli Spx1 1L,Ban Dalam Kvb 275-14,Cop Busi,Accu Kering Vario 125 FI,Soket Lampu Revo Fit,Tombol Lampu,Kampas Kzl,Headlight Unit Beat FI'),
(47,'2017-02-24','Pad Set Kr 3,Pad Set Kvb - T01,V-Belt Beat FI Set,V-Belt Vario 125 Set,Busi U27epr-N9,Winker Assy R Fr,Dop Stop,Baut Tromol,Auto Cock Fuel,Kacaspeedo Vario 125,Kabel Comp'),
(48,'2017-02-25','Gear Set Kww,Pad Set Kpp 901 Supra 125,Gasket Carb Insulator/Pak Manipol,Filter Beat FI,Filter Vario 125,Piece Slide,V-Belt Kvb Set,V-Belt Kvy Set,Ban Dalam 275-17,Cop Busi Beat FI,Busi U27epr-N9,Soket Lampu Kev,Dop Kfv,Tombol Dimer Supra X 125 (Lama),Switch Rem Cakram Depan,Switch Rem Fr Stop,Klakson Kzl,Kampas Kph,Laker Crankcase,Kampas Kzl'),
(49,'2017-02-27','Gear Set Kww,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Mpx 1 1.2L,Air Radiator/ Coolant,Piston Comp Vacuum,Water Pump Assy,Ban Dalam 225/250-17,Ban Dalam 275-17,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Busi U27epr-9,Tombol Dimer Revo,Kampas Kzl,Valve Comp,Float(Ventilator Mpro),Baut Set Vario/Setelan Angin-Angin'),
(50,'2017-02-28','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb â€“ T01,Pad Set Kwb 601,Filter Kph/ Supra X 125,Protector Muffler Vario 110 FI,Ban Dalam 275-17,Accu Kering Kph,Dop Kota,Kampas Kzl,Baut Skrup'),
(51,'2017-03-01','Pad Set Megapro New Belakang,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Mpx 1 1L,Air Radiator/ Coolant,Filter Beat FI,Filter Vario 125,Piece Slide,V-Belt Beat FI Set,Dop Kfv,Dop Sein,Tombol Dimer Revo,Klakson Vario,Kampas Kzl,Kampas Kph'),
(52,'2017-03-02','Pad Set Kvb - T01,Pad Set Kwb 601,Oli Spx1 1.2L,Filter Beat FI,V-Belt Vario 125 Set,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Headlight Unit Vario 125,Dop Kota,Tombol Lampu,Horn/Klakson Ktm,Kampas Kzl'),
(53,'2017-03-03','Gear Set Kww,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Filter Kvy,Filter Vario 125,Protector Muffler Beat FI,Roller Beat Esp,Kampas Kopling Ganda Beat,Pedal Stater Beat,Lensa Comb Taillight (Supra X 125),Tombol Dimer Supra X 125 (Lama),Tombol Riting,Switch Rem Fr Stop,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(54,'2017-03-04','Pad Set Megapro New Belakang,Pad Set Kvb - T01,Pad Set Kwb 601,Filter Udara,Roller Vario 150 Tiger,Kampas Kopling Ganda Beat,Kabel Kopling,V Belt Vario 150 FI,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Beat FI Set,Accu Kering Kph,Key Set Beat FI,Kampas Kzl,Baut Skrup'),
(55,'2017-03-06','Pad Set Kpp 901 Supra 125,Pad Set Kvy â€“ 911,Rantai Mesin Kph,Filter Beat FI,Filter Kvy,Filter Vario 125,Kabel Gas A Verza,V-Belt Kvy Set,V-Belt Beat FI Set,Ban Dalam Kvb 275-14,Cop Busi Beat FI,Accu Kering Kph,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U27epr-9,Busi U 24 Beat/ Vario 125,Soket Lampu Supra Fit,Dop Kfv,Dop Kph,Switch Rem Fr Stop,Kampas Kzl,Oring Tutup Klep Oval/Supra X125,Kampas Kph'),
(56,'2017-03-07','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Filter Kvb,Roller Vario,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Beat FI Set,Face Set Driven Beat FI,Face Set Moveable Drive,Cop Busi Beat,Accu Kering Kph,Regulator Rect. Comp(Kyprox),Lensa Comb Taillight (Supra X 125),Dop Kfv,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(57,'2017-03-08','Pad Set Kvb - T01,Pad Set Kwb 601,Oli Spx1 1L,Piston Kit 0.50,Filter Beat FI,Filter Kvb,Piece Slide,Pir Kampas Ganda/Pir Kopling Kvy,Kampas Kopling Ganda Vario 125,V-Belt Beat FI Set,Face Set Driven Beat FI,Pin Roller Guide Beat FI,Roller Guide Beat FI,Pedal Persneleng,Pinion Assy Start,Cop Busi Beat FI,Accu Kering Kph,Busi U27epr-N9,Dop Kfv,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Switch Rem Cakram Depan'),
(58,'2017-03-09','Gear Set Kph,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1.2L,Rantai Mesin  Gl,Filter Beat FI,Filter Kph/ Supra X 125,Filter Vario 125,V Belt Vario 150 FI,V-Belt Beat FI Set,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Tombol Klakson,Switch Rem Fr Stop,Oring Tutup Klep Oval/Supra X125'),
(59,'2017-03-10','Pad Set Megapro New Belakang,Pad Set Kvb - T01,Pad Set Kwb 601,Filter Grand,Filter Kvy,Kampas Kopling Ganda Beat,Kampas Kopling Ganda Vario 125,Rubber Clutch Dumper Beat,V-Belt Kvb Set,V-Belt Beat FI Set,V-Belt Vario 125 Set,Accu Kering Kph,Regulator Rec Comp(Kyprox),Busi Cpr9ea-9/ Vario 125 FI,Dop Kph,Tombol Dim Vario 150,Klakson Vario,Laker Crankcase'),
(60,'2017-03-11','Pad Set Kvb - T01,Filter Beat FI,Filter Vario 125,Piece Slide,V-Belt Beat FI Set,Accu Kering Kww,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Dop Stop,Kampas Kph,Baut Tromol'),
(61,'2017-03-13','Gear Set Ktl,Gear Set Kwb,Pad Set Kvb - T01,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Mpx 1 1.2L,Oli Spx1 1L,Filter Beat FI,Protector Muffler Vario 125,Spring Clutch (Pir Ganda),Ban Dalam Kvb 275-14,Cop Busi Vario 125 FI,Accu Kering Kph,Regulator Rec Comp/ Kyprox Tiger,Dop Kfv,Switch Rem Cakram Depan,Kampas Kzl,Roches Matic'),
(62,'2017-03-14','Pad Set Kvb - T01,Kones Gn5,Air Radiator/ Coolant,Protector Muffler,Face Comp Moveable Drive,Piece Slide,V-Belt Kvy Set,V-Belt Beat FI Set,Ban Dalam 275-17,Accu Kering Kph (Ytz5-S),Busi U27epr-N9,Busi U20 Epr9s/ Revo Abs,Dop Kfv,Dop Kota,Tombol Dim Vario 150,Kampas Kph,Spion Vario'),
(63,'2017-03-15','Rantai Mesin Kit,Rantai Mesin Kit Revo,Oli Mpx 1 1.2L,Oli Spx1 1L,Kabel Gas Gn5,Roller Beat Esp,Piece Slide,Kampas Kopling Gn5,Cop Busi,Accu Kering Kph (Ytz5-S),Busi U27epr-N9,Dop Kph,Dop Sein,Dop Kota,Ban Luar Belakang Vario Tbl,Kampas Kzl,Handle Rem Kiri Beat,Vario Lama,Baut Dek'),
(64,'2017-03-16','Gear Set Kww,Pad Set Megapro New Belakang,Pad Set Kvb - T01,Filter Beat FI,V-Belt Beat FI Set,Dop Kfv,Tombol Dimer Revo,Auto Cock Fuel,Baut Skok Belakang Assy(Spx 125)'),
(65,'2017-03-17','Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Tube Breather,Piece Slide,V-Belt Vario 125 Set,Ban Dalam 275-17,Accu Kering Kph,Accu Kering Vario 125 FI,Busi Cpr9ea-9/ Vario 125 FI,Dop Kota,Kampas Kph,Auto Cock Fuel'),
(66,'2017-03-18','Gear Set Kww,Pad Set Kvb - T01,Pad Set Kwb 601,V-Belt Kvy Set,V-Belt Beat FI Set,Cop Busi Beat FI,Accu Kering Kph,Regulator Rec  Comp(Kyprox),Dop Kfv,Klakson Vario,Fleser Riting Gbg,Kampas Kph,Roches Matic,Oring Tutup Klep Oval/Supra X125'),
(67,'2017-03-20','Oli Mpx 1 1.2L,Roller Beat Esp,Accu Kering Vario 125 FI,Switch Assy Fr Stop,Kampas Kzl,Auto Cock Fuel,Baut Skok Belakang Assy(Spx 125)'),
(68,'2017-03-21','Pad Set Kvb - T01,Pad Set Kwb 601,Filter Vario 125,Ban Dalam 275-17,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Kzl (Scoopy),Tombol Dimer Revo,Oring Tutup Klep Oval/Supra X125'),
(69,'2017-03-22','Oli Spx1 1L,Air Radiator/ Coolant,Filter Vario 125,Boss Drive Face,Face Comp Moveable Drive,Piece Slide,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Vario 125 Set,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Horn/Klakson Ktm,Kampas Kga,Spion Black,Baut Dek,Baut Skrup'),
(70,'2017-03-23','Rantai Mesin Kph,Gasket Carb Insulator/Pak Manipol,Roller Vario 150,V-Belt Kvy Set,Ban Dalam 275-17,Accu Kering Kph,Regulator Rec Comp(Kyprox),Tombol Lampu,Tombol Dimer Supra X 125 (Lama),Switch Assy Fr Stop,Karet Foot Step Gn8,Spion Back,Spion Megapro,Baut Dek'),
(71,'2017-03-24','Gear Set Supra X 125 FI,Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,V-Belt Kvy Set,Soket Lampu Kvb,Tombol Dimer,Tombol Riting Revo FI,Kampas Kzl,Spring Gear Shift Arm,Baut Skok Belakang Assy(Spx 125)'),
(72,'2017-03-25','Gear Set Kev,Oli Spx1 1.2L,Filter Grand,Filter Beat FI,Filter Kph/ Supra X 125,Filter Vario 125,Bostel Stater Kww/Revo Abs,Cop Busi,Accu Kering Vario 125 FI,Busi U27epr-9,Soket Lampu Ktm,Soket Lampu Ktm,Dop Kota,Tombol Lampu,Switch Rem Cakram Depan,Fleser Riting Gbg'),
(73,'2017-03-27','Pad Set Kr 3,Oli Mpx 1 1.2L,Tube Drain Matic,Protector Muffler,Rubber Clutch Damper/ Karet Kopling,V-Belt Beat FI Set,Headlight Unit Beat FI,Dop Kfv,Pelampung Bensin Vario,Spion Back,Oring Tutup Klep Oval/Supra X125,Switch Rem Cakram Depan'),
(74,'2017-03-29','Oli Mpx 1 1L,Oli Spx 1 1.2L,Piece Slide,Ban Dalam Kvb 275-14,Switch Unit Winker/ Tombol Riting,Spring Gear Shift Arm'),
(75,'2017-03-30','Air Radiator/ Coolant,Gasket Stator Comp,Gasket Water Pump Cove,Kampas Kopling Ganda Vario 125,Kampas Kopling Ganda Spacy,Rubber Clutch Damper/ Karet Kopling,V-Belt Vario 125 Set,Pinion Assy Start,Busi Cpr9ea-9/ Vario 125 FI,Switch Rem Cakram Depan'),
(76,'2017-03-31','Rantai Mesin Kit Revo,Gear Set Kev,Filter Kvb,Protector Muffler Vario 125,V-Belt Kvb Set,Ban Dalam Kvb 275-14,Spring Gear Shift Arm,Baut Tromol'),
(77,'2017-04-01','Rantai Mesin Kit Revo,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Spx 1 1L,Filter Beat FI,Protector Muffler Beat FI,Boss Drive Face,Face Comp Moveable Drive,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,Cop Busi Beat,Headlight Unit Vario,Dop Kvb,Baut Skrup'),
(78,'2017-04-03','Pad Set Megapro New Belakang,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Kvb,Roller Beat Esp,Accu Kering Kph,Regulator Rec Comp(Kyprox),Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Dop Depan Verza'),
(79,'2017-04-04','Gear Set Ktl,Pad Set Kr 3,Pad Set Kvb - T01,Oli Spx1 1L,Sekring Gepeng 10A,Baut Set Vario/ Stelan Angin-Angin,Filter Kph/ Supra X 125,Cop Busi,Busi U27epr-N9,Busi U27epr-9,Dop Kfv'),
(80,'2017-04-05','Gear Set Kww,Pad Set Kr 3,Rantai Mesin Kph,Busi U27epr-N9,Dop Kfv,Dop Kph,Dop Krs,Spion Beat FI,Gasket Mission Case.Kw'),
(81,'2017-04-06','Gear Set Kwb,Oli Mpx 1 1L,Oli Spx 1 1.2L,Gasket Carb Insulator/Pak Manipol,Filter Kvb,Ban Dalam 225/250-17,Cop Busi,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Headlight Assy Blade Repsol,Headlight Unit Vario 125,Tombol Dimer Supra X 125 (Lama) Switch Assy Fr Stop,Kampas Kph,Baut Skrup'),
(82,'2017-04-07','Rantai Mesin Kit Revo,Pad Set Kwb 601,Oli Mpx 1 1.2L,Filter Vario 125,Dinamo Stater Supra X,Dop Kph,Dop Kota,Tombol Dimer Supra X 125 (Lama),Pelampung Bensin,Kampas Kph,Spion Kww,Baut Dek,Baut Skrup'),
(83,'2017-04-08','Gear Set Kww,Pad Set Kr 3,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Gasket Carb Insulator/Pak Manipol,Filter Kph/ Supra X 125,Busi U 24 Beat/ Vario 125,Bostel Beat Or,Soket Lampu Revo Fit,Dop Kfv,Switch Assy Fr Stop,Klakson Kww'),
(84,'2017-04-10','Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Megapro New Depan,Tube Breather,Gasket Carb Insulator/Pak Manipol,Protector Muffler Kvb,Ban Dalam 225/250-17,Rubber Clutch Damper/ Karet Kopling,Cop Busi,Accu Kering Kph,Accu Kering Vario 125 FI,Busi U27epr-N9,Dop Kota,Tombol Dimer Supra X 125 (Lama),Horn/ Klakson Kph'),
(85,'2017-04-11','Gear Set Kww,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Spx 1 1.2L,Protector Muffler Kvb,Kabel Kopling Kye,Accu Kering Kph,Dop Kfv,Dop Kph,Dop Sein,Dop Kota,Kampas Kzl'),
(86,'2017-04-12','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Spx1 1L,Boss Drive Face,Face Comp Moveable Drive Beat FI,Accu Kering Vario 125 FI,Busi U27epr-N9,Dop Depan Verza,Dop Kfv,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Tombol Dim Vario 150,Switch Assy Fr Stop,Kampas Kzl,Baut Skrup'),
(87,'2017-04-13','Gear Set Ktl,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Cb 150R,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(88,'2017-04-15','Pad Set Kvb - T01,Oli Mpx3 1 L,Oli Spx1 1L,Oli Spx1 1.2L,Filter Kvb,Cop Busi,Accu Kering Kph,Busi U20 Epr9s/ Revo Abs,Dop Kfv,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Tombol Dim Vario 150,Kampas Kph,Kampas Kzl'),
(89,'2017-04-17','Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Spx1 1L,Roller Vario 125,V-Belt Beat FI Set,V-Belt Vario 125 Set,Ban Dalam  275-17,Busi Cpr9ea-9/ Vario 125 FI,Key Set Nf125,Tombol Lampu,Switch Assy Fr Stop,Kampas Kph,Kampas Kzl,Spion Back'),
(90,'2017-04-18','Pad Set Kvb - T01,Oli Mpx 3 1 Liter,Oli Mpx 1 1L,Oli Spx1 1.2L,Filter Grand,Filter Beat FI,Protector Muffler Kvy,Kampas Kopling Ganda Revo/FI,V-Belt Beat FI Set,V-Belt Vario 125 Set,Accu Kering Kph,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Dop Riting Kuning,Dop Sein,Dop Stop,Dop Kota,Tombol Dimer Supra X 125 (Lama),Switch Assy Fr Stop,Baut Skrup'),
(91,'2017-04-19','Pad Set Kvb - T01,Oli Spx1 1.2L,Filter Vario 125,Roller Beat Esp,V-Belt Vario 125 Set,Headlight Unit Vario 125,Kampas Kzl,Spion Beat FI,Oring Tutup Klep Oval/Supra X125,Baut Skrup,Gasket Mission Case.Kw,Kampas Kzl'),
(92,'2017-04-20','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Mpx3 1L,Oli Spx1 1L,Air Radiator/ Coolant,Gasket Carb Insulator/Pak Manipol,Filter Kvb,Filter Vario 125,Kabel Gas Megapro Primus,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Soket Lampu Supra Fit,Tombol Klakson Supra X 125,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(93,'2017-04-21','Pad Set Kvb - T01,Pad Set Kwb 601,Oli Spx 1 1.2L,Air Radiator/ Coolant,Busi U20 Epr9s/ Revo Abs,Headlight Unit Vario 125,Soket Lampu Revo Fit,Dop Depan Verza,Switch Rem Belakang,Relay Comp Stater,Gasket Mission Case.Kw'),
(94,'2017-04-22','Gear Set Kwb,Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Kvy â€“ 911,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Mpx3 1L,Oli Spx 1 1L,Filter Kvb,Filter Kvy,Filter Vario 125,Kabel Gas Beat,Piece Slide,V-Belt Kvy Set,Ban Dalam 275-17,Accu Kering Kph,Busi U 24 Beat/ Vario 125,Baut Dek,Tombol Klakson Grand'),
(95,'2017-04-25','Gear Set Ktl,Oli Mpx3 1L,Oli Spx1 1.2L,Oli Spx 1 1L,Filter Kvy,Piece Slide,Ban Dalam 225/250-17,V-Belt Kvb Set,Pin Roller Guide Beat FI,Roller Guide Beat FI,Busi Cpr9ea-9/ Vario 125 FI,Key Set Vario 150 FI,Kampas Kzl,Baut Dek'),
(96,'2017-04-26','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Pad Set Kwb 601,Kones Gn5,Oli Spx 1 1L,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Vario 125,Roller Vario 150,V-Belt Vario 125 Set,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Dop Depan Verza,Switch Rem Cakram Depan,Kampas Kph,Kampas Kzl,Spion Kvy'),
(97,'2017-04-27','Rantai Mesin Kit Revo,Gear Set Kww,Pad Set Kvb - T01,Pad Set Kwb 601,Kones Megapro New,Cb 150R,Oli Mpx3 1L,Oli Spx1 1L,Filter Vario 125,Piece Slide,Kampas Kopling Ganda Karisma,Rubber Clutch Dumper Beat,V-Belt Vario 125 Set,Ban Dalam 275-17,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Kampas Kph,Kampas Kzl,Laker Crankcase'),
(98,'2017-04-28','Gear Set Supra X  125 FI,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx3 1L,Oli Spx1 1L,Oli Spx1 1.2L,Filter Grand,Protector Muffler Beat FI,Kampas Kopling Ganda Karisma,V-Belt Beat FI Set,Ban Dalam 275-17,Accu Kering Vario 125 FI,Busi U 24 Beat/ Vario 125,Dop Kota,Kampas Kph,Oring Tutup Klep Oval/Supra X125'),
(99,'2017-04-29','Gear Set Kww,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb â€“ T01,Oli Spx1 1L,Filter Beat FI,Roller Vario 150,Piece Slide,V Belt Vario 150 FI,V-Belt Kvy Set,V-Belt Beat FI Set,V-Belt Vario 125 Set,Accu Kering Kph,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Soket Lampu Supra Fit,Soket Lampu Kev Br,Spion Kww'),
(100,'2017-05-02','Gear Set Kww,Pad Set Kvb - T01,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Mpx 1 1L,Air Radiator/ Coolant,Roller Beat Esp,Piece Slide,Ventilator Matic Gl,V-Belt Kvy Set,V-Belt Beat FI Set,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Soket Lampu Supra Fit,Dop Kfv,Dop Kph,Dop Krs,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(101,'2017-05-03','Pad Set Kvb - T01,Oli Spx 1 1L,Oli Spx 1 1.2L,Filter Beat FI,Filter Cb 150R,Protector Muffler Vario 125,Piece Slide,V-Belt Beat FI Set,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Kfv,Dop Kph,Dop Stop,Dop Kota'),
(102,'2017-05-04','Pad Set Kpp 901 Supra 125,Pad Set kwb 601,Pad Set kvb â€“T01,Protector Muffler Vario 125,Accu Kering Vario 125 FI,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Krs,Dop Sein,Dop Stop,Dop Kota,Kampas Kph,Baut Skrup'),
(103,'2017-05-05','Gear Set Kww,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Filter Beat FI,Filter Vario 125,Cop Busi,Regulator Rect Comp(Kyprox),Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U27epr-9,Dop Kfv,Dop Kph,Dop Sein,Dop Kota,Kampas Kph,Kampas Kzl,Spion Back,Oring Tutup Klep Oval/Supra X125,Klem Karburator,Baut Skrup'),
(104,'2017-05-06','Gear Set Kww,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Spx 1 1L,Oli Spx 1 1.2L,Sekring Gepeng 10A,Filter Kvy,Protector Muffler Kvy,Piece Slide,V-Belt Kvy Se,Busi U 24 Beat/ Vario 125,Dop Kfv,Dop Sein,Dop Stop,Fleser Riting Gbg,Kampas Kph,Kampas Kzl'),
(105,'2017-05-08','Pad Set Kr 3,Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Air Radiator/ Coolant,Filter Beat FI,Filter Vario 125,Roller Vario 150,V Belt Vario 150 FI,V-Belt Beat FI Set,V-Belt Vario 125 Set,Accu Kering Kph,Accu Kering Vario 125 FI,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Soket Lampu Revo Fit,Dop Kfv,Dop Sein,Dop Stop,Dop Kota,Switch Rem Belakang,Kampas Kph,Kampas Kzl'),
(106,'2017-05-09','Sekring Gepeng 15A,Filter Beat FI,Roller Beat Esp,Piece Slide Kampas Kopling Ganda Spacy,Rubber Clutch Dumper Beat,V-Belt Kvb Set,Dop Kfv,Dop Sein,B0stel Kph'),
(107,'2017-05-10','Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Spx 1 1L,Sekring Gepeng 15A,Sekring Gepeng 10A,Filter Beat FI,V-Belt Kvb Set,V-Belt Beat FI Set,Busi U27epr-N9,Busi U 24 Beat/ Vario 125,Dop Stop,Dop Kota,Switch Assy Fr Stop,Kampas Kga,Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(108,'2017-05-12','Kones Megapro,Oli Spx 1 1L,Tube Breather,Filter Vario 125,Busi U27epr-N9,Dop Krs,Kampas Kzl,Gasket Mission Case.Kw,Key Set Vario Lama'),
(109,'2017-05-13','Oli Mpx 1 1L,Oli Spx 1 1L,Filter Spacy,Piece Slide,Ban Dalam 225/250-17,V-Belt Kvy Set,V-Belt Beat FI Set,Ban Dalam 275-17,Pinion Assy Start,Cop Busi Beat FI,Accu Kering Kph,Dop Kfv,Dop Kph,Dop Kzl,Switch Assy Fr Stop,Baut Skrup'),
(110,'2017-05-15','Rantai Mesin Kit Revo,Gear Set Kww,Oli Spx 1 1.2L,Filter Beat FI,Filter Vario 125,Oring Fuel Pump Vario 125,V-Belt Beat FI Set,Accu Kering Kph,Busi U 24 Beat/ Vario 125,Oring Tutup Klep Oval/Supra X125'),
(111,'2017-05-16','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Spx 1 1.2L,Rubber Bush Eng.Hanger / Bosh Arem Kvb,Dop Kfv,Dop Kph,Dop Riting 12v 10w,Tombol Stater,Switch Assy Starter (Bendik),Kampas Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(112,'2017-05-17','Gear Set Kwb,Pad Set Kvb - T01,Sekring Botol 15A,Fuel Pump Assy Revo FI,Filter Beat FI,Filter Vario 125,Prote,V-Belt Vario 125 Esp Set,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Sein,Kampas Kph'),
(113,'2017-05-18','Sekring Gepeng 15A,Sekring Gepeng 10A,Gasket Carb Insulator/Pak Manipol,Filter Kvb,Protector Muffler,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,V-Belt Kvy Set,Accu Kering Kww,Busi U27epr-N9,Dop Stop,Dop Kota,Tombol Dimer,Baut Skrup'),
(114,'2017-05-19','Gear Set Kwb,Pad Set Megapro New Belakang,Pad Set Kvb - T01,Air Radiator/ Coolant,Pak Blok Vario 1,Filter Cb 150R,V-Belt Vario 125 Set,Cop Busi Vario 125 FI,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 F1,Busi U27epr-9,Busi U 24 Beat/ Vario 125,Dop Kev 950 Supra 100'),
(115,'2017-05-20','Oli Spx 1 1,2L,Air Radiator/ Coolant,Sekring Botol 15A,Filter Beat FI,Filter Kph/ Supra X 125,Protector Muffler Beat Pop,Face Comp Moveable Drive,Kampas Kopling Ganda Revo/FI,V-Belt Beat FI Set,Cop Busi Beat FI,Regulator Rec Comp (Kyprox),Busi Cpr9ea-9/ Vario,Dop Sein,Dop Stop,Dop Kota,Switch Rem Fr Stop,Kampas Kzl,Baut Skrup'),
(116,'2017-05-22','Pad Set Kpp 901 Supra 125,Oli Mpx 1 1L,Oli Spx 1 1L,Oli Spx 1 1.2L,Air Radiator/ Coolant,Pak Magnet Tiger,Kabel Gas Vario 125,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,Cop Busi Beat,Busi Cpr9ea-9/ Vario 125 F1,Busi U20 Epr9s/ Revo Abs,Busi U27epr-9,Dop Depan Verza,Dop Stop,Dop Kota'),
(117,'2017-05-23','Gear Set Kph,Pad Set Kpp 901 Supra 125,Pad Set Kwb 601,Oli Spx 1 1.2L,Piston Comp Vacuum,Filter Kvb,Tube Fuel 53 X 600 (Selang Bensin ),Kampas Kopling Ganda Beat,Rubber Clutch Damper/ Karet Kopling,V Belt Vario 125 Esp Set,V-Belt Kvb Set,V-Belt Beat FI Set,Accu Kering Kph,Busi U27epr-9,Headlight Unit Vario 125,Dop Krs,Horn/ Klakson Kph,Baut Skrup'),
(118,'2017-05-24','Pad Set Megapro New Depan,Oli Spx 1 1L,Oli Spx 1 1.2L,Tube Breather,Filter Beat FI,Protector Muffler Kvy,Busi U 24 Beat/ Vario 125,Dop Kph,Dop Stop,Dop Kota,Key Set Vario Lama'),
(119,'2017-05-26','Kones Gn5,Oli Mpx 1 1L,Oli Spx 1 1.2L,Tutup Klep Cub,Gasket Carb Insulator/Pak Manipol,Filter Kwb Revo,Kampas Kopling Ganda Karisma,V-Belt Beat F1 Set,Regulator Rec  Comp/ Kyprox Tiger,Busi Cpr9ea-9/ Vario 125 FI,Headlight Unit Beat FI,Key Set Vario 125,Fleser Riting Gbg,Kampas Kzl,Baut Dek'),
(120,'2017-05-27','Pad Set Kr 3,Pad Set Megapro New Depan,Oli Spx 1 1L,Oli Spx 1 1.2L,Ban Dalam 225/250-17,V-Belt Kvy Set,Accu Kering Kph,Busi U 24 Beat/ Vario 125,Switch Rem Cakram Depan,Key Set Vario Lama'),
(121,'2017-05-29','Gear Set Kwb,Gear Set Kww,Pad Set Megapro New Depan,Oli Spx 1 1L,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,V-Belt Kvb Set,Kampas Kga,Kampas Kzl,Dop Kfv'),
(122,'2017-05-30','Rantai Mesin Kit Revo,Rod Kit,Connecting (Stang),Pad Set Kr 3,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Mpx 1 1L,Oli Spx 1 1L,Piston Kit (Std),Rantai Mesin Kph,Piston Comp Vacuum,Filter Grand,Filter Spacy,Filter Vario 125,Protector Muffler Vario 125,Kampas Kopling Karisma,Kampas Kopling Ganda Karisma,Rubber Clutch Damper/ Karet Kopling,V-Belt Beat FI Set,Kampas Kga,Spion Back'),
(123,'2017-05-31','Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Pad Set Kr 3,Oli Spx 1 1.2L,Busi U 24 Beat/ Vario 125,Soket Lampu Blkg Kzr,Baut Skrup'),
(124,'2017-06-02','Rantai Mesin Kit Revo,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx3 1L,Oli Mpx1 1L,Oli Spx1 1L,Filter Kvb,Protector Muffler Vario 125,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,Busi U 24 Beat/ Vario 125,Kampas Kzl,Spion Kww'),
(125,'2017-06-03','Pad Set Kpp 901 Supra 125,Oli Spx1 1L,Oli Spx1 1.2L,Gasket Carb Insulator/Pak Manipol,Pelampung Bensin (Fuel Pump Unit),Filter Vario 125,Protector Muffler Kvy,Accu Kering Vario 125 FI,Busi Cpr9ea-9/ Vario 125 FI,Dop Krs,Kampas Kzl'),
(126,'2017-06-05','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Mpx3 1 L,Oli Mpx1 1.2L,V-Belt Kvb Set,V-Belt Kvy Set,Busi Cpr9ea-9/ Vario 125 FI,Soket Lampu Supra Fit,Dop Kfv,Dop Kph,Tombol Dimer,Tombol Dimer Revo,Switch Rem Kiri Belakang Matic,Switch Assy Fr Stop,Kampas Kzl,Spion Back,Baut Dek,Baut Skrup'),
(127,'2017-06-06','Oli Spx1 1L,Filter Kvb,Oring Fuel Pump Vario 125,Headlight Unit Beat FI,Soket Lampu Kev Br,Dop Stop,Dop Kota,Tombol Dimer Revo,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(128,'2017-06-07','Pad Set Megapro New Belakang,Pad Set Megapro New Depan,Oli Mpx1 1L,Oli Spx1 1L,Oli Spx1 1.2L,Air Radiator/ Coolant,Filter Cb 150R,Kabel Choke Kfl,Pinion Assy Start,Accu Kering Kph,Regulator Rec Comp(Kyprox), Busi Cpr9ea-9/ Vario 125 FI,Dop Kph,Dop Sein,Spion Kww'),
(129,'2017-06-08','Pad Set Kr 3,Pad Set Megapro New Depan,Oli Mpx1 1.2L,Tube Fuel 5,3 X 600 (Selang Bensin ),Busi U 24 Beat/ Vario 125,Headlight Unit Vario 125,Dop Kfv,Dop Sein,Tombol Dimer Revo,Tombol Klakson Supra X 125,Spion Beat FI,Switch Rem Cakram Depan'),
(130,'2017-06-09','Pad Set Megapro New Depan,Oli Mpx1 1L,Oli Spx1 1L,Oli Spx1 1.2L,Filter Beat FI,Protector Muffler Beat FI,V-Belt Beat FI Set,Gasket Mission Case. Kw,Dop Depan Verza,Dop Stop,Dop Kota,Switch Rem Cakram Depan,Switch Assy Fr Stop,Kampas Kzl,Baut Skrup'),
(131,'2017-06-10','Rantai Mesin Kit Revo,Oli Mpx1 1L,Filter Beat FI,Protector Muffler Beat FI,Protector Muffler Vario 110 FI,Kampas Kopling Ganda Vario,V-Belt Beat FI Set,Brush Terminal Set Cb 150R,Busi U20 Epr9s/ Revo Abs,Dop Kfv,Fleser Riting Gbg'),
(132,'2017-06-12','Pad Set Kpp 901 Supra 125,Oli Mpx3 1 L,Oli Mpx1 1L,V-Belt Kvy Set,V-Belt Beat FI Set,Accu Kering Kph,Busi U27epr-9,Dop Kota,Tombol Riting Kvb,Switch Rem Cakram Depan,Ban Luar Kvb'),
(133,'2017-06-13','Rantai Mesin Kit,Oli Mpx1 1L,Tube Breather,Gear Sproket (Pompa Oli),Filter Beat FI,V-Belt Beat FI Set,Spring Kick Stater/Pir Trap,Regulator Rec Comp (Kyprok ),Soket Lampu Kev Br,Dop Depan Megapro,Dop Kev 950 Supra 100,Dop Kvb,Tombol Dimer Revo,Switch Winker (Holder Kiri) Supra,Kampas Kzl,Baut Skrup'),
(134,'2017-06-14','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Megapro New Depan,Air Radiator/ Coolant,Chain Cam 88l (Rantai Mesin),Arm Comp Assy Cam,Roller Cam Chain Guide,Filter Beat FI,Filter Supra X Helm In,Filter Mega Pro New,V-Belt Vario 125 Set,Cop Busi Revo Fit,Dop Kvb,Dop Sein,Tombol Dimer Revo,Switch Rem Kiri Belakang Matic,Ban Luar Kvb,Kampas Kph,Kampas Kzl'),
(135,'2017-06-15','Gear Set Supra X 125 FI,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Oli Mpx1 1L,Rantai Mesin Kph,Protector Muffler Beat FI,Kampas Kopling Ganda Vario,Rubber Clutch Damper/ Karet Kopling,Dop Krs,Dop Kvb,Dop Riting 12v 10w'),
(136,'2017-06-16','Gear Set Supra X Helm In,Oli Mpx 1 1.2L,Tube Breather,Chain Cam 88l (Rantai Mesin),Arm Comp Assy Cam,Roller Cam Chain Guide,Filter Beat FI,Protector Muffler Vario 125,Boss Drive Face,Boss Drive Face Beat,Face Comp Moveable Drive,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Vario 125 Set,Regulator Rec Comp (Kyprox),Busi Cpr9ea-9/ Vario 125 FI,Tombol Dimer Revo,Tombol Riting,Switch Assy Fr Stop,Spion Kvy'),
(137,'2017-06-17','Rantai Mesin Kit Revo,Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Kones Gn5,Oli Mpx 1 1L,Air Radiator/ Coolant,Tube Breather,Gasket Carb Insulator/Pak Manipol,Filter Beat FI,Face Comp Moveable Drive,Kampas Kopling Ganda Karisma,Rubber Clutch Dumper Beat,V-Belt Vario 125 Set,Busi Cpr9ea-9/ Vario 125 FI,Headlight Unit Vario 125,Dop Riting 12v 10w'),
(138,'2017-06-19','Pad Set Kr 3,Oli Mpx1 1.2L,Rantai Mesin Kph,Filter Kvy,Protector Muffler Beat FI,Face Comp Moveable Drive Beat FI,Busi U27epr-9,Soket Lampu Beat FI,Base Comp Rr Comb/Lampu Blkg Assy,Tombol Dimer Supra X 125 (Lama),Ban Luar Kvb,Kampas Kph,Kampas Kzl'),
(139,'2017-06-20','Gear Set Kww,Tutup Klep Cub,Filter Beat FI,Protector Muffler Kvb,Busi U27epr-9,Dop Kfv,Tombol Dimer Revo,Kampas Kga,Kampas Kph,Kampas Kzl'),
(140,'2017-06-21','Pad Set Kr 3,Oli Mpx 1 1L,Oli Spx 1 1.2L,Protector Muffler Kvy,Ban Dalam 225/250-17,Kampas Kopling Ganda Beat,Kampas Kopling Ganda Karisma,Rubber Clutch Dumper Beat,V-Belt Kvy Set,Cop Busi Beat FI,Busi Cpr9ea-9/ Vario 125 FI,Dop Depan Verza'),
(141,'2017-06-22','Gear Set Kwb,Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Spx 1 1L,Protector Muffler Vario 125,Busi U 24 Beat/ Vario 125,Headlight Unit Beat FI,Dop Depan Megapro,Tombol Dimer Supra X 125 (Lama),Tombol Dimer Revo'),
(142,'2017-06-23','Pad Set Kr 3,Oli Spx 1 1.2L,Tube Breather,Filter Kvb,Filter Vario 125,Rubber Clutch Dumper Beat,V-Belt Kvy Set,Ban Dalam 275-17,Regulator Rec Comp/ Kyprox Tiger,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Kota,Horn/ Klakson Kph,Spion Kww,Spion Beat FI,Laker Crankcase'),
(143,'2017-06-24','Gear Set Kwb,Oli Mpx 1 1L,Tube Breather,Filter Beat FI,Filter Kvy,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Beat FI Set,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Bostel Beat Or,Soket Lampu Revo Fit,Soket Lampu Beat,Tombol Dim Vario 150,Switch Rem Kiri Belakang Matic'),
(144,'2017-07-03','Rantai Mesin Kit Revo,Gear Set Kwb,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Mpx 1 1L,Air Radiator/ Coolant,Filter Beat FI,Protector Muffler Kvb,Face Comp Moveable Drive,Roller Vario 125,V-Belt Beat FI Set,Accu Kering Kph,Busi U20 Epr9s/ Revo Abs,Bostel Beat Or,Dop Krs,Kampas Kzl'),
(145,'2017-07-04','Gear Set Kww,Pad Set Megapro New Depan,Oli Mpx1 1L,Filter Vario 125,Protector Muffler Beat FI,Face,Drive,Boss Drive Face,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,Accu Kering Vario 125 FI,Busi U27epr-N9,Dop Kota,Roches Matic,Kabel Gas Cb 150R(A),Kampas Kph'),
(146,'2017-07-05','Rantai Mesin Kit Revo,Gear Set Kww,Pad Set Megapro New Belakang,Pad Set Megapro New Depan,Oli Mpx 1 1L,Oli Spx 1 1.2L,Crankshaft Assy Beat Esp,Filter Kvb,Face,Drive,Roller Beat Esp,Plate Ramp Comp,V-Belt Beat FI Set,Dop Depan Verza,Dop Kfv,Dop Riting 12v 10w,Kampas Kga,Laker Crankcase'),
(147,'2017-07-06','Rantai Mesin Kit,Rantai Mesin Kit Revo,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Megapro New Depan,Oli Mpx 1 1L,Gasket Carb Insulator/Pak Manipol,Accu Kering Kww,Busi U 24 Beat/ Vario 125,Dop Krs,Tombol Dim Vario 150,Spion Beat FI'),
(148,'2017-07-07','Pad Set Megapro New Depan,Oli Spx 1 1.2L,Kampas Kopling Ganda Beat,V-Belt Beat FI Set,Accu Kering Kww,Dop Stop,Dop Kota,Kampas Kzl,Kaca Speedo'),
(149,'2017-07-08','Tube Breather,Baut Set Vario/ Stelan Angin-Angin,Filter Kvy,Filter Vario 125,Roller Vario 150,Kampas Kopling Ganda Beat,V Belt Vario 150 FI Esp Set,Accu Kering Kww,Regulator Rec Comp(Kyprox),Busi U27epr-N9,Busi U 24 Beat/ Vario 125,Soket Lampu Beat FI,Dop Kfv,Fleser Riting Gbg,Kampas Kga'),
(150,'2017-07-10','Gear Set Ktl,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Filter Beat FI,Filter Cb 150R,Protector Muffler Beat FI,Accu Kering Kph,Accu Kering Kww,Busi U20 Epr9s/ Revo Abs,Switch Rem Fr Stop,Horn/Klakson Ktm'),
(151,'2017-07-11','Gear Set Kwb,Filter Kph/ Supra X 125,Filter Kvb,Boss Drive Face,Face Comp Moveable Drive,V-Belt Kvb Set,Dop Depan Verza,Kampas Kga,Kampas Kph,Kabel Gas Cb 150R(A)'),
(152,'2017-07-12','Gear Set Ktl,Pad Set Kr 3,Oli Spx 1 1.2L,Protector Muffler,Protector Muffler Vario 125,Busi U27epr-N9,Dop Kfv,Dop Sein,Kampas Kzl,Baut Skrup'),
(153,'2017-07-13','Pad Set Kpp 901 Supra 125,Pad Set Megapro New Depan,Oli Mpx 1 1L,Tutup Oli Vario,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Dop Krs,Tombol Dimer Revo,Tombol Riting Revo FI'),
(154,'2017-07-14','Oli Mpx 1 1L,Oli Spx 1 1.2L,Gasket Carb Insulator/Pak Manipol,Filter Vario 125 Rubber Clutch Dumper Beat,V-Belt Beat FI Set,Accu Kering Vario 125 FI,Busi U27epr-N9,Dop Kfv,Dop Kph,Dop Krs,Kampas Kga,Kampas Kzl'),
(155,'2017-07-15','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Oli Spx 1 1.2L,Filter Vario 125,Protector Muffler,Roller Vario 150,Rubber Clutch Dumper Beat,V-Belt Kvb Set,V-Belt Kvy Set,V-Belt Beat FI Set,Face Set Driven Beat FI,Face Set Movable Drive,Pin Roller Guide Beat FI,Roller Guide Beat FI,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI'),
(156,'2017-07-17','Oli Spx 1 1.2L,Tube Breather,Roller Beat Esp,Roller Vario,V Belt Beat Esp,V-Belt Kvb Set,V-Belt Kzl,Cop Busi,Accu Kering Kww,Busi Cpr9ea-9/ Vario 125 FI,Dop Stop,Tombol Dimer Revo'),
(157,'2017-07-18','Gear Set Kww,Pad Set Kpp 901 Supra 125,Air Radiator/ Coolant,Filter Vario 125,Tutup Radiator,Joint Three Way House,Pir Kampas Ganda/Pir Kopling Kvy,Rubber Clutch Damper/ Karet Kopling,Accu Kering Kph,Busi U27epr-N9,Bostel Beat Or,Dop Kfv,Dop Stop,Kampas Kph,Kampas Kzl,Baut Dek'),
(158,'2017-07-19','Gear Set Kww,Oli Mpx 3 1 L,Oli Mpx 1 1L,Face Comp Moveable Drive,Roller Beat Esp,Ban Dalam 225/250-17,Kampas Kopling Ganda,V Belt Beat Esp,V-Belt Kvy Set,V-Belt Beat FI Set,Busi Cpr9ea-9/ Vario 125 FI'),
(159,'2017-07-20','Rantai Mesin Kit,Gear Set Supra X 125 FI,Gear Set Ktl,Pad Set Kr 3,Chain Cam 88l (Rantai Mesin),Roller Cam Chain Guide,Kabel Gas Beat,Roller Beat Esp,Kampas Kopling Ganda Beat,Baut Dek'),
(160,'2017-07-21','Pad Set Kpp 901 Supra 125,Boss Drive Face,Face Comp Moveable Drive,Pak Cvt Vario 125,Spring Clutch (Pir Ganda),Spring Clutch (Pir Kopling),Kampas Kopling Ganda Vario 150,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Soket Lampu Kev Br,Spion Kvy'),
(161,'2017-07-22','Rantai Mesin Kit,Chain Cam 88l (Rantai Mesin),Roller Cam Chain Guide,Ban Dalam 275-17,Accu Kering Kww,Soket Lampu Kev Br,Switch Assy Fr Stop,Horn/Klakson Ktm'),
(162,'2017-07-24','Pad Set Kr 3,Pad Set Kvy â€“ 911,Pad Set Megapro New Depan,Tutup Oli Vario,Filter Vario 125,Kampas Kopling Ganda Vario,V-Belt Kvb Set,Accu Kering Kph,Busi U20 Epr9s/ Revo Abs,Baut Dek'),
(163,'2017-07-25','Pad Set Kpp 901 Supra 125,Oli Mpx 1 1L,Filter Beat FI,Boss Drive Face Beat,Face Comp Moveable Drive Beat FI,Pir Kampas Ganda/Pir Kopling Kvy,Kampas Kopling Ganda Vario 150,Rubber Clutch Dumper Beat,V-Belt Beat FI Set,Ban Dalam 275-17,Cop Busi,Accu Kering Vario 125 FI,Busi U27epr-N9,Busi U 24 Beat/ Vario 125,Soket Lampu Kev Br,Tombol Dim Karisma,Kampas Kzl'),
(164,'2017-07-26','Rantai Mesin Kit Revo,Kones Gn5,Filter Vario 125,Piece Slide,V-Belt Kvy Set,Dop Kph,Dop Sein,Kampas Kph,Kampas Kzl'),
(165,'2017-07-27','Gear Set Kww,Pad Set Kvb - T01,Pad Set Kvy â€“ 911,Pad Set Megapro New Depan,Oli Mpx 1 1L,Filter Vario 125,Accu Kering Kph,Accu Kering Kww,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Dop Depan Verza,Dop Kfv,Dop Kph,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl,Ban Luar Kvb,Baut Skrup'),
(166,'2017-07-28','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Piece Slide,V-Belt Vario 125 Set,Cop Busi Kvb,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Sein'),
(167,'2017-07-29','Gear Set Kev,Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Filter Beat FI,Oring Fuel Pump Vario 125,Kampas Kopling Ganda Karisma,V-Belt Beat FI Set,Cop Busi Kvb,Accu Kering Kph,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Sein,Dop Stop,Dop Kota,Tombol Riting Kvb,Fleser Riting Gbg,Baut Dek,Baut Skrup'),
(168,'2017-07-31','Rantai Mesin Kit Revo,Pad Set Megapro New Belakang,Oli Mpx 1 1L,Gasket Head Cover Verza,Filter Vario 125,Filter Verza,V-Belt Kvy Set,V-Belt Vario 125 Set,Cop Busi Beat,Accu Kering Kph,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Soket Lampu Supra Fit,Dop Krs,Dop Riting 12v 10w,Pelampung Bensin Spacy,Spion Kww'),
(169,'2017-08-01','Pad Set Kvb - T01,Pad Set Kwb 601,Baut Set Vario/ Stelan Angin-Angin,Filter Beat FI,Boss Drive Face,Face Comp Moveable Drive Beat FI,Roller Vario 150,Rubber Clutch Damper/ Karet Kopling,V Belt Vario 150 FI,V-Belt Kvb Set,V-Belt Beat FI Set,Face Set Driven Beat FI,Face Set Moveable Drive,Pin Roller Guide Vario,Roller Guide Beat FI,Collar Seal Beat,Vario,Cop Busi Beat FI,Busi U27epr-N9,Dop Depan Verza,Baut Skrup'),
(170,'2017-08-02','Kones Gn5,Oli Mpx 1 1L,Filter Beat FI,Filter Kvy,Kampas Kopling Ganda Vario 125,Rubber Clutch Dumper Beat,V-Belt Beat FI Set,V-Belt Vario 125 Set,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U 24 Beat/ Vario 125,Dop Kota,Tombol Dimer Revo,Switch Rem Cakram Depan,Switch Rem Fr Stop,Kampas Kzl,Laker Crankcase'),
(171,'2017-08-03','Pad Set Megapro New Belakang,Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Piston Kit (0.50),Filter Beat FI,Busi Cpr9ea-9/ Vario 125 FI,Soket Lampu Revo Fit,Dop Kph,Dop Stop,Tombol Dimer Revo,Kampas Kzl'),
(172,'2017-08-04','Pad Set Megapro New Belakang,Pad Set Megapro New Depan,Oli Mpx 1 1L,Accu Kering Kph,Dop Kfv,Tombol Dimer Supra X 125 (Lama),Switch Assy Fr Stop,Kampas Kzl'),
(173,'2017-08-05','Gear Set Kww,Pad Set Kr 3,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Filter Vario 125,Kabel Choke Kfl,Protector Muffler Beat FI,Roller Vario 150,V Belt Vario 150 FI,V-Belt Kvy Set,V-Belt Beat FI Set,V-Belt Vario 125 Set,Accu Kering Kph,Soket Lampu Ktm,Dop Riting 12v 10w,Horn/ Klakson Kph,Relay Comp,Stater,Roches Matic,Baut Dek'),
(174,'2017-08-07','Pad Set Kpp 901 Supra 125,Pad Set Megapro New Depan,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Temlar,Arm Valve Rocker Megapro,Filter Beat FI,Boss Drive Face Beat,Face Comp Moveable Drive Beat FI,Kampas Kopling Ganda Karisma,V-Belt Kvy Set,Cop Busi,Regulator Rec Comp( Kyprox),Busi U27epr-N9,Dop Kfv,Dop Riting 12v 10w,Dop Kota,Tombol Dimer Revo'),
(175,'2017-08-08','Pad Set Kr 3,Temlar,Arm Valve Rocker Megapro,Filter Beat FI,Dop Kph,Dop Sein,Dop Stop,Switch Rem Cakram Depan'),
(176,'2017-08-09','Pad Set Megapro New Depan,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Spion  Back,Laker Crankcase'),
(177,'2017-08-10','Rod Kit Connecting (Stang),Kones Gn5,Seal Klep,Piston Kit 0 75,Gasket Carb Insulator/Pak Manipol,Filter Cb 150R,Gasket Stator Comp,Seal Mechanical,Gasket Water Pump Cove,Fleser Riting Gbg'),
(178,'2017-08-11','Protector Muffler,V-Belt Vario 125 Set,Dop Kota,Key Set Vario Techno/ Cbs 110,Switch Rem Cakram Depan'),
(179,'2017-08-12','Pad Set Kvb - T01,Filter Kph/ Supra X 125,Dop Krs,Tombol Lampu'),
(180,'2017-08-14','Piston Kit 0.50 (Revo 100),Kabel Gas Kph,Boss Drive Face Beat,Face Comp Moveable Drive,Kampas Kopling Ganda Beat,V-Belt Kvy Set,Dop Stop,Tombol Klakson,Horn/Klakson Ktm,Klakson Vario'),
(181,'2017-08-15','Spring Clutch (Pir Kopling),Rubber Clutch Dumper Beat,Bostel Beat Or,Dop Kfv,Tombol Dimer Revo,Baut Skrup'),
(182,'2017-08-16','Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Chain Cam 88l (Rantai Mesin),Roller Cam Chain Guide (Supra X Helm In),Roller Cam Chain Guide,Filter Kvy,Filter Vario 125,Ban Dalam 275-17,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Kfv,Baut Dek'),
(183,'2017-08-18','Bosh Gear Kww,Rantai Mesin Kit Revo,Gear Set Kev,Pad Set Kpp 901 Supra 125,Filter Kph/ Supra X 125,Filter Vario 125,Boss Drive Face Beat,Face Comp Moveable Drive,Accu Kering Kph,Dop Kota,Switch Rem Cakram Depan'),
(184,'2017-08-19','Rantai Mesin Kit,Pad Set Kr 3,Oli Mpx 1 1.2L,Air Radiator/ Coolant,Spring Tensioner (Pir Stut Kamrat),Filter Kph/ Supra X 125,Kampas Kopling Ganda Beat,Rubber Clutch Dumper Beat,Dop Stop,Spion  Beat FI'),
(185,'2017-08-21','Gear Set Kww,Pad Set Kvy â€“ 911,Piston Kit (0.50),Protector Muffler Beat FI,Kampas Kopling Ganda Vario,V-Belt Beat FI Set,Ban Dalam 275-17,Cop Busi Vario 125 F1,Accu Kering Kph,Accu Kering Kww,Accu Kering Vario 125 FI,Switch Assy Starter Supra Kev'),
(186,'2017-08-22','Gear Set Kww,Oli Mpx 1 1L,Filter Kvb,Filter Vario 125,Gasket Water Pump Cove,Roller Vario 125,V-Belt Vario 125,Pinion Assy Start,Gear Comp Kick Stater (Lokal),Cop Busi,Accu Kering Kww,Busi Cpr9ea-9/ Vario 125 FI,Dop Sein,Tombol Dimer Revo'),
(187,'2017-08-23','Oli Mpx 1 1L,Oli Mpx 1 1.2L,Ban Dalam 275-17,Busi U27epr-N9,Dop Kvb,Tombol Dimer Supra X 125 (Lama),Tombol Dimer Revo,Switch Assy Starter Supra Kev,Horn/Klakson Ktm'),
(188,'2017-08-24','Kampas Ganda Revo/Revo FI,Rubber Clutch Damper/ Karet Kopling,Accu Kering Kww,Busi U27epr-N9,Headlight Unit Beat FI,Dop Kph,Tombol Dimer Supra X 125 (Lama),Kampas Kzl'),
(189,'2017-08-25','Filter Kvy,Protector Muffler Kvb,Face Comp Moveable Drive,Busi U 24 Beat/ Vario 125,Dop Kfv,Spion Beat FI,Baut Skrup,Pelampung Bensin(Fuel Unit) Supra 125'),
(190,'2017-08-26','Oli Mpx 1 1L,Filter Vario 125,Ban Dalam 275-17,Accu Kering Kph,Busi U27epr-N9,Kampas Kzl'),
(191,'2017-08-28','Air Radiator/ Coolant,Gasket Carb Insulator/Pak Manipol,Filter Beat FI,Cop Busi Beat FI,Accu Kering Kph,Busi U27epr-N9,Dop Kvb,Tombol Dim Vario 125,Kampas Kzl,Ban Luar  Kvb,Baut Skrup'),
(192,'2017-08-29','Gasket Carb Insulator/Pak Manipol,Filter Kvb,Filter Kvy,Kampas Kopling Ganda Vario 125,V-Belt Kvb Set,V-Belt Kvy Set,Accu Kering Kph,Dop Kph'),
(193,'2017-08-30','Gasket Head Cover Beat,Pad Set Megapro New Depan,Filter Kvb,Cop Busi Kwn,Cop Busi Beat FI,Busi U27epr-N9,Dop Depan Megapro,Pelampung Bensin(Fuel Unit) Supra 125'),
(194,'2017-08-31','Oli Mpx 1 1.2L,Filter Kvb,V-Belt Kvb Set,V-Belt Beat FI Set,Soket Lampu Supra Fit,Dop Kfv,Dop Stop,Klakson Kzl,Baut Skrup'),
(195,'2017-09-02','Oli Mpx 1 1L,Tube Breather,Gasket Carb Insulator/Pak Manipol,Boss Drive Face Beat,Face Comp Moveable Drive,Roller Vario 125,Accu Kering Kww,Dop Kfv,Dop Kota,Kampas Kph'),
(196,'2017-09-04','Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Pad Set Kr 3,Roller Beat Esp,Ban Dalam 225/250-17,V-Belt Kvb Set,V-Belt Beat FI Set,Ban Dalam 275-17,Cop Busi Kwn,Busi Cpr9ea-9/ Vario 125 FI'),
(197,'2017-09-05','Rantai Mesin Kit Revo,Oli Mpx 1 1L,Seal Klep,Rantai Mesin Kph,Gasket Carb Insulator/Pak Manipol,Kampas Kopling Ganda Vario 125,V-Belt Beat FI Set,V-Belt Vario 125,Pak Bulat Supra Fit=Legenda,Ban Dalam 275-17,Busi Cpr9ea-9/ Vario 125 F1,Busi U20 Epr9s/ Revo Abs,Dop Kota,Switch Assy Fr Stop'),
(198,'2017-09-06','Gear Set Kww,Oli Mpx 1 1.2L,Air Radiator/ Coolant,Filter Beat FI,Filter Kvb,Filter Vario 125,Roller Vario 150,V-Belt Vario 125,Accu Kering Kph,Busi U27epr-N9,Busi U20 Epr9s/ Revo Abs,Dop Kfv,Tombol Dimer Supra X 125 (Lama)'),
(199,'2017-09-07','Pad Set Megapro New Belakang,Oli Mpx 1 1L,Boss Drive Face Beat,Face Comp Moveable Drive,V-Belt Beat FI Set,Accu Kering Kww,Dop Kfv,Laker Crankcase'),
(200,'2017-09-08','Kampas Kopling Ganda Vario 125,Rubber Clutch Dumper Beat,Busi U27epr-N9,Horn/ Klakson Kph,Kampas Kzl'),
(201,'2017-09-09','Oli Mpx 3 1 L,Oli Mpx 1 1L,Oli Spx 1 1L,Oli Mpx 1 1.2L,Gasket Head Cover Beat,Boss Drive Face Beat,Face Comp Moveable Drive Beat FI,Kampas Kopling Ganda Spacy,Rubber Clutch Dumper Beat,Accu Kering Vario 125 F1,Ban Luar Kvb,Kampas Kga,Kampas Kzl'),
(202,'2017-09-11','Rantai Mesin Kit Revo,Tutup Klep Cub,V-Belt Kvb Set,V-Belt Beat FI Set,Cop Busi Revo Fit,Busi Cpr9ea-9/ Vario 125 FI,Pelampung Bensin Beat,Baut Dek'),
(203,'2017-09-12','Pad set kr 3,oli spx 1 1.2L,ban dalam 225/250-17,v-belt kvy set,v-belt beat fI set,busi u20 epr9s/revo abs,kampas kzl,baut skrup'),
(204,'2017-09-13','Pad Set Kr 3,Oli Spx 1 1.2L,Ban Dalam 225/250-17,V-Belt Kvy Set,V-Belt Beat FI Set,Busi U20 Epr9s/ Revo Abs,Kampas Kzl,Baut Skrup'),
(205,'2017-09-14','Oli Spx 1 1L,Air Radiator/ Coolant,Rantai Mesin Kph,Filter Spacy,Filter Vario 125,Gasket Water Pump Cb 150,Accu Kering Kww,Headlight Unit Supra X 125,Soket Lampu Ktm,Tombol Dimer Supra X 125 (Lama),Switch Rem Fr Stop,Spion Karisma'),
(206,'2017-09-15','Oli Mpx 1 1L,Air Radiator/ Coolant,Tube Breather,Gasket Stator Comp,Seal Mechanical,Gasket Water Pump Cove,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,Accu Kering Vario 125 FI,Key Set Revo Abs,Klakson Vario,Relay Comp,Start'),
(207,'2017-09-16','Rantai Mesin Kit Revo,Gear Set Kwb,Pad Set Kpp 901 Supra 125,Oli Mpx 1 1L,Oli Mpx 1 1.2L,Filter Vario 125,V-Belt Kvb Set,Ban Dalam 275-17,Cop Busi Revo Fit,Accu Kering Kph,Dop Depan Verza,Dop Depan Megapro,Horn/Klakson Ktm'),
(208,'2017-09-18','Sekring Gepeng 15A,Sekring Gepeng 10A,Filter Revo FI,Accu Kering Kph,Switch Assy Fr Stop,Switch Rem Belakang,Fleser Riting Gbg,Kampas Kzl'),
(209,'2017-09-19','Gear Set Kww,Pad Set Kr 3,Oli Mpx 1 1L,Cap L Cover Beat FI,Ban Dalam 275-17,Busi U27epr-N9,Kampas Kph,Kampas Kzl'),
(210,'2017-09-20','Oli Mpx 1 1L,Piece Slide,Kampas Kopling Ganda Beat,V-Belt Beat FI Set,Busi Cpr9ea-9/ Vario 125 FI,Dop Kph,Dop Sein,Dop Kota,Switch Rem Belakang,Baut Skrup'),
(211,'2017-09-22','Pad Set Kpp 901 Supra 125,Rubber Bush Eng.Hanger / Bosh Arem Kvb,Filter Kph/ Supra X 125,Filter Vario 125,Protector Muffler Kvb,Piece Slide,V-Belt Vario 125 Set,Dop Stop,Dop Kota,Relay Comp,Start,Kampas Kph,Kampas Kzl'),
(212,'2017-09-23','Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Spx 1 1.2L,Filter Kvb,Roller Vario,Piece Slide,Kampas Kopling Ganda Karisma,V-Belt Kvb,V-Belt Kvb Set,Dop Kfv,Dop Kph,Dop Kota,Kampas Kph,Kampas Kzl,Laker Crankcase'),
(213,'2017-09-25','Gear Set Kww,Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Beat FI,Face Drive Beat,Piece Slide,V-Belt Kvb Set,V-Belt Vario 125 Set,Accu Kering Kww,Dop Kfv,Dop Kph,Dop Sein,Dop Riting 12v 10w,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl'),
(214,'2017-09-26','Pad Set Kvb - T01,Oli Spx 1 1.2L,Gasket Carb Insulator/Pak Manipol,Filter Vario 125,V-Belt Kvy Set,V-Belt Vario 125 Set,Pinion Assy Start,Accu Kering Kph,Accu Kering Kww,Busi U27epr-N9,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Kph,Dop Stop'),
(215,'2017-09-27','Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Kvb - T01,Oli Spx 1 1L,Air Radiator/ Coolant,Filter Kph/ Supra X 125,Filter Kvb,Busi U27epr-N9,Dop Sein,Dop Stop,Dop Kota,Pelampung Bensin/Fuel Unit,Baut Skrup'),
(216,'2017-09-28','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Pad Set Kvb - T01,Kones Gn5,Oli Spx 1 1.2L,V Belt Revo At,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Dop Kph,Dop Krs,Dop Stop,Dop Kota,Kampas Kph,Kampas Kzl,Spion Kww,Oring Tutup Klep Oval/Supra X125'),
(217,'2017-09-29','Pad Set Megapro New Belakang,Piston Comp Vacuum,Filter Revo FI,Piece Slide,V-Belt Beat FI Set,Dop Kfv,Dop Kph,Dop Kvb,Kampas Kph,Baut Skrup'),
(218,'2017-09-30','Pad Set Kvb - T01,Kones Gn5,Oli Mpx 3 1 L,Oli Spx 1 1L,Oli Mpx 1 1.2L,Air Radiator/ Coolant,Tube Breather,Seal Klep Cb 150R,Tutup Klep Sport,Gasket Head Cover Verza,Filter Beat FI,Filter Cb 150R,Seal Mechanical,Gasket Water Pump Cove,Roller Vario 150,Piece Slide,Kampas Kopling Ganda Karisma,V Belt Vario 150 FI,V-Belt Kvb Set,V-Belt Beat FI Set,Accu Kering Kww,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 F1,Dop Kfv,Dop Kph,Dop Sein,Dop Stop,Dop Kota,Kampas Kga,Kampas Kzl'),
(219,'2017-10-02','Pad Set Kwb 601,Kones Gn5,Oli Mpx 1 1L,Oli Spx 1 1L,Oli Spx 1 1.2L,Gasket Carb Insulator/Pak Manipol,Filter Grand,Filter Supra X Helm In,Filter Vario 125,Piece Slide,Kampas Kopling Ganda Karisma,Rubber Clutch Damper/ Karet Kopling,V-Belt Beat FI Set,Busi Cpr9ea-9/ Vario 125 FI,Dop Kfv,Switch Rem Fr Stop,Kampas Kga,Kampas Kph,Oring Tutup Klep Oval/Supra X125'),
(220,'2017-10-03','Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Boss Drive Face Beat,Face Comp Moveable Drive,Piece Slide,V-Belt Kvy Set,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Stop,Tombol Dimer Supra X 125 (Lama),Fleser Riting,Dop Kfv'),
(221,'2017-10-04','Gear Set Kww,Pad Set Kr 3,Pad Set Kvb - T01,Oli Mpx 3 1 L,Air Radiator/ Coolant,Gasket Carb Insulator/Pak Manipol,Filter Beat FI,Filter Kvy,Busi Cpr9ea-9/ Vario 125 FI,Busi U27epr-9,Dop Kota,Switch Rem Fr Stop,Fleser Riting,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(222,'2017-10-05','Pad Set Kr 3,Pad Set Kvb - T01,Rantai Mesin Kph,Chain Cam 88l (Rantai Mesin),Filter Beat FI,Filter Vario 125,Protector Muffler Beat FI,Ban Dalam 225/250-17,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,V-Belt Beat FI Set,Ban Dalam 275-17,Accu Kering Kph,Busi U27epr-N9,Soket Lampu Revo Fit,Soket Lampu Ktm,Dop Depan Verza,Ban Luar  Kvb,Dop Kfv'),
(223,'2017-10-06','Pad Set Kvb - T01,Oli Mpx 1 1.2L,Ban Dalam 275-17,Dop Depan Verza,Dop Krs,Oring Tutup Klep Oval/Supra X125,Oring Tutup Klep Sport,Baut Skrup,Kabel Gas Cb 150R(A),Stator Comp (Spull Set)'),
(224,'2017-10-07','Gear Set Kww,Pad Set Kpp 901 Supra 125 ,Pad Set Kr 3,Pad Set Kvb - T01,Kones Gn5,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Beat FI,Filter Kvb,Piece Slide,Ban Dalam 225/250-17,V-Belt Beat FI Set,Ban Dalam 275-17,Accu Kering Kph,Accu Kering Vario 125 FI,Dop Kfv,Dop Kph,Dop Riting 12v 10w,Dop Kota,Key Set Supra X 125,Horn/ Klakson Kph'),
(225,'2017-10-09','Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Protector Muffler,Protector Muffler Vario 125,Tutup Radiator,Kampas Kopling Ganda Spacy,Cop Busi Beat FI,Accu Kering Kph,Dop Kvb,Switch Assy Fr Stop,Kampas Kph,Kampas Kzl,Dop Kfv'),
(226,'2017-10-10','Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Spx 1 1L,Gasket Cylinder Head,Filter Vario 125,Piece Slide,V-Belt Vario 125 Set,Dop Depan Verza,Switch Rem Fr Stop,Kampas Kzl'),
(227,'2017-10-11','Pad Set Kvb - T01,Air Radiator/ Coolant,Filter Beat FI,Filter Vario 125,V-Belt Kvy Set,V-Belt Beat FI Set,Busi U27epr-N9,Soket Lampu Supra X 125 Mata 2,Dop Kfv,Kampas Kzl'),
(228,'2017-10-12','Rantai Mesin Kit Revo,Pad Set Kvb - T01,Filter Kvy,Filter Kwb Revo,V-Belt Vario 125 Set,Cop Busi Super,Accu Kering Kph,Kampas Kzl,Oring Tutup Klep Oval/Supra X125,Stator Comp (Spull Set)'),
(229,'2017-10-13','Pad Set Kvb - T01,Filter Beat FI,Filter Vario 125,V-Belt Kvb Set,V-Belt Vario 125 Set,Busi U27epr-N9,Dop Kfv,Dop Kph'),
(230,'2017-10-14','Gear Set Kwb,Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Oli Spx 1 1L,Gasket Carb Insulator/Pak Manipol,Filter Vario 125,Protector Muffler Beat FI,Roller Vario 150,V Belt Vario 150 FI,V-Belt Beat FI Set,Dop Depan Verza'),
(231,'2017-10-16','Outer Comp Clutch,Boss Drive Face Beat,Face Comp Moveable Drive,Piece Slide,Ban Dalam 225/250-17,Kampas Kopling Ganda Karisma,Rubber Clutch Damper/ Karet Kopling,Dop Depan Verza,Dop Kph,Dop Riting 12v 10w,Tombol Klakson,Switch Assy Fr Stop,Kampas Kzl,Oring Tutup Klep Oval/Supra X125'),
(232,'2017-10-17','Pad Set Kvb - T01,Oli Spx 1 1L,Boss Drive Face,Face Comp Moveable Drive,Bostel Stater Kww/Revo Abs,Rubber Clutch Damper/ Karet Kopling,V-Belt Kvb Set,V-Belt Beat FI Set,Spring Kick Start/Pir Trap,Dop Depan Verza,Dop Stop'),
(233,'2017-10-18','Gear Set Kww,Pad Set Kvb - T01,Oli Spx 1 1.2L,Filter Beat FI,Filter Vario 125,Protector Muffler,V-Belt Vario 125 Set,Dop Sein,Kampas Kzl,Baut Dek'),
(234,'2017-10-19','Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Kvb - T01,Oli Mpx 1 1L,Oli Spx 1 1L,Filter Kph/ Supra X 125,Filter Kvb,Filter Vario 125,Piece Slide,V-Belt Vario 125 Set,Ban Dalam 275-17,Busi U 24 Beat/ Vario 125,Soket Lampu Revo Fit,Dop Depan Verza,Switch Assy Fr Stop,Kampas Kph,Kampas Kzl,Spion Kww,Oring Tutup Klep Oval/Supra X125'),
(235,'2017-10-20','Pad Set Kwb 601,Filter Beat FI,Filter Vario 125,Protector,Busi U27epr-N9,Dop Sein,Kampas Kzl,Ban Luar  Kvb'),
(236,'2017-10-21','Gear Set Kww,Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Baut Set Vario/Stelan Angin-Angin,Filter Beat FI,Roller Vario 150,V Belt Vario 150 FI,V-Belt Kvy Set,V-Belt Vario 125 Set,Ban Dalam 275-17,Accu Kering Kww,Busi U27epr-N9,Busi U20 Epr9s/ Revo Abs,Busi U 24 Beat/ Vario 125,Dop Kfv,Dop Kph,Dop Kvb,Tombol Klakson Supra X 125,Switch Assy Fr Stop,Kampas Kph,Kampas Kzl'),
(237,'2017-10-23','Pad Set Kvb - T01,Pad Set Kwb 601,Oli Mpx 1 1L,Air Radiator/ Coolant,Tutup Radiator,Joint Three Way House,Ban Dalam 225/250-17,V-Belt Beat FI Set,Accu Kering Kww,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U27epr-9,Dop Kota,Dop Kfv'),
(238,'2017-10-24','Rantai Mesin Kit Revo,Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Kvb - T01,Pad Set Kwb 601,Pad Set Megapro New Depan,Oli Mpx 1 1L,Oli Spx 1 1L,Soket Lampu Supra X 125 Mata 2,Dop Kfv,Dop Kph,Dop Sein,Dop Riting 12v 10w,Dop Stop,Dop Kota,Switch Rem Fr Stop,Spion  Megapro New,Spion Beat FI,Oring Tutup Klep Oval/Supra X125'),
(239,'2017-10-25','Pad Set Kpp 901 Supra 125,Pad Set Kvb - T01,Pad Set Megapro New Depan,Oli Spx 1 1L,Accu Kering Kph,Accu Kering Kww,Dop Kfv,Dop Kph,Dop Kvb,Tombol Klakson Supra X 125,Pelampung Bensin Beat'),
(240,'2017-10-26','Oli Spx 1 1L,Oli Mpx 1 1.2L,Protector Muffler Kvy,V-Belt Beat FI Set,Busi Cpr9ea-9/ Vario 125 FI,Dop Depan Verza,Kampas Kzl,Oring Tutup Klep Oval/Supra X125,Baut Skrup'),
(241,'2017-10-27','Pad Set Kr 3,Sekring Gepeng 15A,V-Belt Beat FI Set,Accu Kering Kph,Accu Kering Kww,Busi U20 Epr9s/ Revo Abs,Dop Sein,Kampas Kzl,Stator Comp (Spull Set)'),
(242,'2017-10-28','Gear Set Kww,Oli Mpx 1 1L,Oli Spx 1 1L,Pak Bulat Kph-Ktm,Boss Drive Face Beat,Face Comp Moveable Drive Beat FI,Kampas Kopling Ganda Vario,Stator Comp (Spull),Busi U27epr-9,Bostel Beat Or,Dop Depan Verza,Switch Rem Cakram Depan,Switch Assy Fr Stop,Klakson Kww'),
(243,'2017-10-30','Bosh Gear Kww,Oli Mpx 1 1L,Oli Spx 1 1.2L,Gasket Carb Insulator/Pak Manipol,Insulator Carb (Fiber),Filter Kvb,Filter Kvy,Boss Drive Face Beat,Face Comp Moveable Drive,Roller Vario 150,Roller Beat Esp,Rubber Clutch Damper/ Karet Kopling,V Belt Vario 150 FI,V-Belt Kvb Set,V-Belt Kvy Set,Ban Dalam 275-17,Headlight Unit Beat FI,Soket Lampu Supra Fit,Dop Depan Verza,Key Set Vario 125,Tombol Riting Kvb,Switch Rem Cakram Depan'),
(244,'2017-10-31','Pad Set Kr 3,Pad Set Kvb - T01,Air Radiator/ Coolant,Filter Vario 125,Accu Kering Vario 125 FI,Busi U27epr-N9,Dop Kota,Kampas Kzl,Laker Crankcase,Oring Tutup Klep Oval/Supra X125'),
(245,'2017-11-01','Roller Vario 150,V Belt Vario 125 Set,Regulator Comp(Kyprox),Dop Kph,Dop Sein,Dop Stop,Dop Kota,Kampas Kzl,Stator Comp(Spull Set)'),
(246,'2017-11-02','Kones Gn5,Oli Mpx 1 1L,Ban Dalam 225/250-17,Busi Cprea-9/Vario 125 FI,Busi U 24 Beat/Vario 125,Soket Lampu Kev,Dop Krs,Ban Luar Kvb,Headlight Unit Beat Pop FI,Kampas Kzl'),
(247,'2017-11-03','Oli Spx 1 1L,Filter Vario 125,Accu Kering Kww,Busi Cpr9ea-9/Vario 125 F1,Busi U20 Epr9s/Revo Abs,Dop Kota,Tombol Idiling Stop,Dop Kfv'),
(248,'2017-11-04','Rantai Mesin Kit Revo,Filter Kvb,Filter Vario 125,V Belt Kvb Set,V Belt Kvy Set,V Belt Vario 125 Set,Ban Dalam 275-17,Cop Busi Super,Accu Kering Vario 125 FI,Busi U27epr-N9,Busi Cpr9ea-9/Vario 125 FI'),
(249,'2017-11-06','Rantai Mesin Kit Revo,Pad Set Kr 3,Oli Spx 1 1.2L,Air Radiator/Coolant,Gasket Carb Insulator/Pak Manipol,Filter Kvb,Filter Vario 125,V Belt Beat FI Set,V Belt Vario 125 Set,Busi U27epr-9,Dop K25(32v)'),
(250,'2017-11-07','Gear Set Kww,Pak Blok Beat FI,Seal Klep,Pak Cop Beat FI,Crankshaft Assy/Bandol,Piston Kit(0.75),Filter Kvb,Filter Vario 125,Piece Slide,V Belt Kvy Set,Ban Dalam 275-17,Accu Kering Kww,Bostel Beat Or,Tombol Dim Supra X 125(Lama),Tombol Dimer Revo,Dop Kfv'),
(251,'2017-11-08','Filter Vkb,Filter Vario 125,V Belt Kvb Set,V Belt Beat FI Set,V Belt Vario 125 Set,Accu Kering Kph,Busi U27epr-N9,Dop K25(32v),Baut Skrup'),
(252,'2017-11-09','Pad Set Kpp 901 Supra 125,Pad Set Kr 3,Air Radiator/Coolant,Spring Gear Shift Arm(Cb 150r),Accu Kering Kph,Busi U27epr-N9,Dop Kfv,Headlight Unit Beat Pop FI'),
(253,'2017-11-10','Oli Spx 1 1.2L,Tube Drain Matic,Accu Kering Kph,Dop Krs,Dop Sein,Dop Stop,Dop Kota,Oring Tutup Klep Oval/Supra X 125'),
(254,'2017-11-11','Oli Spx 1 1.2L,Gasket Cylinder Head,Gasket Carb Insulator,Filter Kvy,Filter Vario 125,Boss Drive,Face Comp Moveable Drive Beat FI,Kampas Kopling  Ganda Vario 125,Rubber Clutch Dumper Beat,V Belt Kvb Set,V Belt Kvy Set,V Belt Vario 125 Set,V Belt Beat F1 Set,Cop Busi,Busi U 24 Beat/Vario 125,Roches Matic'),
(255,'2017-11-13','Rantai Mesin Kit Revo,Kones Gn5,Gasket Head Cover revo,Filter Kvy,Filter Spacy,Filter Vario 125,V Belt  Beat  FI Set,V Belt Vario 125 Set,Busi Cpr9ea-9/Vario 125 FI,Busi U 24 Beat/Vario 125,Winker Assy L Fr,Dop Riting 12v 10w,Tombol Stater'),
(256,'2017-11-14','Filter Grand,Filte Kvb,Filter Vario 125,Kampas Kopling Ganda Vario 125,V Belt Vario 125 Set,Cop Busi Beat,Dop K25(32v),Pelampung Bensin Beat,Stator Comp(Spull Set),Dop Kfv'),
(257,'2017-11-15','Sekring Gepeng 15A,Sekring Gepeng 10A,Boss Drive Face,Face Comp Moveable Drive,Roller Vario,Busi U27epr-N9,Dopk25(32v),Switch Rem Fr Stop,Baut Dek'),
(258,'2017-11-16','Oli Spx 1 1.2L,Filter Kvb,Ban Dalam 275-17,Switch Rem Fr Stop,Rubber Clutch Dumper Beat,Headlight unit Beat Pop FI,Headlight Unit Assy'),
(259,'2017-11-17','Rantai Mesin Kit Revo,Oli Spx 1 1L,Protector Muffler Beat FI,Boss Drive Face Beat,Face Comp Moveable Drive,Kampas Kopling Ganda Karisma,Rubber Clutch Dumper Beat,V Belt Kvy Set,Busi U27epr-N9,Busi U20 Epr9s/Revo Abs,Dop K25(32v)'),
(260,'2017-11-18','Kones Gn5,Oli Mpx 1 1.2L,Filter Kwb Revo,Filter Vario,Tutup Radiator,Roller Beat Esp,V Belt Kvy Set,V Belt Vario 125 Set,Cop Busi Beat FI,Regulator Rec Comp(Kyprox),Busi U27epr-N9,Busi Cpr9ea-9/Vario 125 FI,Dop krs,Switch Rem Cakram Depan,Dop Kfv'),
(261,'2017-11-20','V Belt Kvb Set,V Belt Kvy Set,Ban Dalam 275-17,Cop Busi Kvb,Dop K25(32v),Dop Kfv,Dop Sein,Dop Kota'),
(262,'2017-11-21','Rantai Mesin Kit Revo,Kampas Kopling Ganda Vario 125,Rubber Clutch Dumper Beat,V Belt Vario 125 Set,Ban Dalam 275-17,Cop Busi,Accu Kering Kph,Busi u27epr-N9,Busi Cpr9ea-9/Vario 125 FI,Dop K25(32v),Tombol Dimer Revo,Karet Marset'),
(263,'2017-11-22','Rantai Mesin Kit,Rantai Mesin Kit Revo,Oli Mpx 1 1.2L,Gear Sprocket(Pompa Oli),Filter Revo FI,Filter Kph/Supra X 125,Roller Vario 150,Ban Dalam 225/250-17,Accu Kering Kph,Headlight Unit Supra X 125 FI,Soket Lampu Kev Br,Dop K25(32v),Dop Kev 950 Supra 100,Baut Dek'),
(264,'2017-11-23','Gear Set Kev,Pad Set Kpp 901 Supra 125,Filter Grand,Sekring Gepeng 15A,Filter Kvy,Piece Slide,V Belt Vario 125 Set,Cop Busi,Accu Kering Kph,Dop K25(32v),Dop Riting 12v 10w,Tombol Klakson Supra X 125,Pelampung Bensin Beat,Baut Dek,Dop Kfv'),
(265,'2017-11-24','Pad Set Megapro New Depan,Kones Gn5,Oli Spx 1 1.2L,Air Radiator/Coolant,Accu Kering Kph,Busi U27epr-N9,Dop K25(32v),Dop Stop,Headlight Unit Assy'),
(266,'2017-11-25','Oli Mpx 3 1L,Sekring Botol 15A,Filter Kph/Supra X 125,Protector Muffler,Ban Dalam 225/250-17,V Belt Kvb Set,V Belt Kvy Set,V Belt Beat FI Set,Busi U 24 Beat/Vario 125,Dop K25(32v),Switch Perseneleng'),
(267,'2017-11-27','Oli Spx 1 1L,Rantai Mesin Kph,Gasket Carb Insulator/Pak Manipol,Filter Kph/Supra X 125,Filter Kvb,Piece Slide,Ban Dalam 225/250-17,V Belt Kvb Set,Accu Kering Vario 125 FI,Busi Cpr9ea-9/Vario 125 FI,Headlight Unit Vario 125,Dop K25(32v),Dop Krs'),
(268,'2017-11-28','Oli Spx 1 1.2L,Air Radiator/Coolant,Filter Vario 125,Piece  Slide,Kampas Kopling Ganda Beat,V Belt Kvy Set,Accu Kering Kph,Busi U 24 Beat/Vario 125,Dop K25(32v)'),
(269,'2017-11-29','Gear Set Kwb,Pad Set Kpp 901 Supra 125,Pad Set Megapro New Belakang,Pad Set Kr 3,Pad Set Megapro New Depan,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Kvy,Filter Vario 125,V Belt Kvy Set,Ban Dalam 275-17,Busi U27epr-N9,Busi U27epr-9'),
(270,'2017-11-30','Pad Set Kwc,Filter Udara Cs1,Ban Dalam 225/250-17,Ban Dalam 275-17,Gear Comp Kick Stater,Accu Kering Kph,Switch Rem Cakram Depan,Switch Rem Fr Stop,Baut Skrup'),
(271,'2017-12-02','Kones Gn5,Oli Mpx 3 1 L,Oli Mpx 1 1.2L,Oli Spx 1 1.2L,Filter Spacy,Kampas Kopling Gl,Plate Pressure Megapro,Spring Clutch,Rubber Clutch Dumper Beat,Cop Busi Vario 125 FI,Dop Krs,Dop Riting 12v 10w,Switch Rem Belakang,Switch Assy Side Stand,Fleser Riting Gbg'),
(272,'2017-12-04','Pad Set Kr 3,Air Radiator/ Coolant,Filter Kvb,Protector Muffler Beat FI,Gasket Stator Comp,Gasket Water Pump Cove,Boss Drive Face Beat,Face Comp Moveable Drive,Rubber Clutch Damper/ Karet Kopling,V Belt Vario 150 FI,V-Belt Kvy Set,Busi U27epr-N9,Tombol Dimer Supra X 125 (Lama)'),
(273,'2017-12-05','Rantai Mesin Kit Revo,Ban Dalam 225/250-17,Kabel Kopling,V-Belt Kvy Set,Ban Dalam 275-17,Cop Busi,Busi U27epr-N9,Busi Cpr9ea-9/ Vario 125 FI,Busi U20 Epr9s/ Revo Abs'),
(274,'2017-12-06','Pad Set Megapro New Depan,Oli Spx 1 1L,Oli Spx 1 1.2L,Kampas Kopling Ganda Spacy,V-Belt Kvy Set,Busi U27epr-9,Dop Kvb'),
(275,'2017-12-07','Oli Spx 1 1L,Sekring Gepeng 15a,Valve Comp,Float (Ventilator Mpro),Regulator Rec Comp(Kyprok),Soket Lampu Ktm,Dop Riting Kuning,Fleser Riting,Headlight Unit Assy'),
(276,'2017-12-08','Oli Spx 1 1L,Seal Klep,Gasket Cylinder Head,Piston Kit (0.50),Chain Cam 88l (Rantai Mesin),Roller Cam Chain Guide (Supra X Helm In),Roller Cam Chain Guide,Spring Kick Driven Gear,Gear Comp Kick Stater (Lokal),Arm Assy,Kick Stater (Pedal Trap),Regulator Rec Comp (Kyprox),Harnes Wire (Kabel Body)'),
(277,'2017-12-09','Rantai Mesin Kit Revo,Gear Set Kev,Pad Set Megapro New Belakang,Oli Mpx 1 1.2L,Chain Cam 88l (Rantai Mesin),Roller Cam Chain Guide (Supra X Helm In),Roller Cam Chain Guide,Filter Cb 150R,Protector Muffler Beat FI'),
(278,'2017-12-11','Oli Spx 1 1.2L,Protector Muffler Beat Esp,Rubber Clutch Dumper Beat,Busi U27epr-N9,Dop K25 (32v),Dop Kvb,Switch Unit Winker/ Tombol Riting'),
(279,'2017-12-12','Air Radiator/ Coolant,Tutup Oli Vario,Protector Muffler Kvb,V-Belt Kvb Set,Dop K25 (32v),Switch Rem Fr Stop,Baut Skrup,Kaca Speedo Supra X 125'),
(280,'2017-12-13','Filter Kph/ Supra X 125,Protector Muffler Beat FI,Bostel Beat Or,Headlight Unit Blade,Dop K25 (32v),Baut Dek,Headlight Unit Assy,Kaca Speedo Supra 100'),
(281,'2017-12-14','Oli Spx 1 1L,Oli Spx 1 1.2L,Chain Cam 88l (Rantai Mesin),Roller Cam Chain Guide (Supra X Helm In),Roller Cam Chain Guide,Kampas Kopling Ganda Beat,V-Belt Kvy Set,V-Belt Beat FI Set,Cop Busi Super,Dop Depan Gl Max,Switch Rem Cakram Depan'),
(282,'2017-12-15','Pak Blok Beat FI,Seal Klep,Piston Kit 0.50,Roller Beat Esp,Kampas Kopling Ganda Vario 125,Spion Beat FI,Kaca Speedo Supra X 125'),
(283,'2017-12-16','Gear Set Kev,Air Radiator/ Coolant,Sekring Gepeng 10A,Busi U 24 Beat/ Vario 125,Dop Riting 12v 10w,Horn/Klakson Ktm,Kaca Speedo Supra X 125'),
(284,'2017-12-18','Air Radiator/ Coolant,Gasket Carb Insulator,Boss Drive Face,Face Comp Moveable Drive,Rubber Clutch Dumper Beat,Pinion Assy Start,Spion Kww,Kaca Speedo Supra 100,Kampas Kph,Kampas Kzl'),
(285,'2017-12-19','Kones Gn5,Air Radiator/ Coolant,Tube Breather,Protector Muffler Kvb,Kampas Kopling Ganda Beat,Busi U 24 Beat/ Vario 125,Headlight Unit Beat Pop FI'),
(286,'2017-12-20','Gear Set Kww,Oli Spx 1 1.2L,Roller Cam Chain Guide (Supra X Helm In),Roller Cam Chain Guide,Rubber Clutch Dumper Beat,Rubber Clutch Damper/ Karet Kopling,Ban Dalam 275-17,Dop Depan Verza,Lifter Assy Tensioner,B0stel Kph,Dop Kfv,Kampas Kph,Kampas Kzl'),
(287,'2017-12-21','Gear Set Kev,Gear Set Kww,Oli Spx 1 1L,Protector Muffler Beat Esp,Dop K25 (32v)'),
(288,'2017-12-22','Rod Kit,Connecting (Stang),Air Radiator/ Coolant,Seal Mechanical,Boss Drive Face Beat,Face Comp Moveable Drive,Soket Lampu Ktm'),
(289,'2017-12-23','Oli Mpx 1 1.2L,Air Radiator/ Coolant,Gasket Head Cover Beat,Boss Drive Face Beat,Face Comp Moveable Drive Beat FI,Face Comp Moveable Drive,Rubber Clutch Dumper Beat,Ban Dalam 275-17,Busi U27epr-N9'),
(290,'2017-12-26','Protector Muffler Kvy,Kampas Kopling Ganda Beat,Kampas Kopling Ganda Vario 125,Kampas Kopling Ganda Vario,Face Set Driven Beat FI,Face Set Movable Drive,Pin Roller Guide Beat FI,Roller Guide Beat FI,Collar Seal Beat,Vario,Key Set Beat FI,Tombol Riting Kvb'),
(291,'2017-12-27','Oli Mpx 1 1.2L,Air Radiator/ Coolant,Protector Muffler,Ban Dalam 275-17,Accu Kering Vario 125 FI,Headlight Unit Beat Pop FI,Dop Kfv,Kampas Kph,Kampas Kzl'),
(292,'2017-12-28','Oli Mpx 3 1 L,Air Radiator/ Coolant,Dop K25 (32v),Cover Fr Top (Blk),Baut Dek,B0stel Kph,Dop Kfv,Kampas Kph,Kampas Kzl'),
(293,'2017-12-29','Filter Vario 125,V-Belt Beat FI Set,Ban Dalam 275-17,Accu Kering Vario 125 F1,Kaca Riting R Fr Vario 125 Assy,Tombol Dimer Revo,Spion Back,Spion Beat FI,Laker Crankcase,B0stel Kph'),
(294,'2017-12-30','Oli Spx 1 1.2L,Protector Muffler,Dinamo Stater Supra X,Accu Kering Kph,Soket Lampu Kev Br,Dop K25 (32v),Dop Riting 12v 10w,Relay Comp Stater,Spion Kww,Spion Megapro,B0stel Kph,Dop Kfv');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `password` text,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`nama`,`password`,`level`,`last_login`,`inactive`) values 
(1,'admin','Administrator','21232f297a57a5a743894a0e4a801fc3',1,'2017-02-22 01:49:04',0),
(2,'user','User Direktur','ee11cbb19052e40b07aac0ca060c23ee',2,'2016-05-22 09:19:02',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
