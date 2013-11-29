-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.1.33-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `akademik112`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `akademik112` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `akademik112`;

--
-- Table structure for table `absen`
--

DROP TABLE IF EXISTS `absen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absen` (
  `semester` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `tglabsen` date NOT NULL,
  `nis` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`semester`,`tglabsen`,`nis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absen`
--

LOCK TABLES `absen` WRITE;
/*!40000 ALTER TABLE `absen` DISABLE KEYS */;
INSERT INTO `absen` VALUES ('ganjil','2008-12-02','0123','I'),('ganjil','2008-01-01','0132','S'),('ganjil','2008-12-06','0492','A'),('ganjil','2008-12-15','0324','I');
/*!40000 ALTER TABLE `absen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','21232f297a57a5a743894a0e4a801fc3'),('huri','1ad8f39ec9f8a0b15047fbd02f67478b');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekskul`
--

DROP TABLE IF EXISTS `ekskul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekskul` (
  `kdekskul` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `nmekskul` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `kdguru` varchar(3) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kdekskul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekskul`
--

LOCK TABLES `ekskul` WRITE;
/*!40000 ALTER TABLE `ekskul` DISABLE KEYS */;
INSERT INTO `ekskul` VALUES ('001','dance','s2'),('002','paskibra','s1'),('003','futsal','c1');
/*!40000 ALTER TABLE `ekskul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru` (
  `kdguru` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `nip` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nmguru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `notlp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `kdpelajaran` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kdguru`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES ('s1','090000001','Suwito, Spd','jl Bambu 1 no.17C rt.005 rw.007 srengseng kembangan jakarta barat','0215876431','eng','202cb962ac59075b964b07152d234b70'),('s2','090000510','supardi, Spd','jl. bambu 2 srengseng','0219873645','eng','202cb962ac59075b964b07152d234b70'),('c1','099123452','christian ','jl. cempaka 2 tangerang ','0217982745','ind','d41d8cd98f00b204e9800998ecf8427e'),('S3','123123','yui','','','eng','4eff0335928a2d0e92f38ea9bb56d72b');
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwalpelajaran`
--

DROP TABLE IF EXISTS `jadwalpelajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwalpelajaran` (
  `thnajaran` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `kdpelajaran` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `kdguru` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kdkelas` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `jam` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `ruang` varchar(10) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`thnajaran`,`kdpelajaran`,`kdguru`,`kdkelas`,`hari`,`jam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwalpelajaran`
--

LOCK TABLES `jadwalpelajaran` WRITE;
/*!40000 ALTER TABLE `jadwalpelajaran` DISABLE KEYS */;
INSERT INTO `jadwalpelajaran` VALUES ('2007/2008','ind','c1','XA','Senin','jam ke 2','ind1'),('2007/2008','eng','s1','XA','Senin','jam ke 1','eng1');
/*!40000 ALTER TABLE `jadwalpelajaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kasus`
--

DROP TABLE IF EXISTS `kasus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kasus` (
  `thnajaran` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `tglpelanggaran` date NOT NULL,
  `nis` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `kdpelanggaran` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `point` int(3) NOT NULL,
  PRIMARY KEY (`thnajaran`,`nis`,`kdpelanggaran`,`tglpelanggaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kasus`
--

LOCK TABLES `kasus` WRITE;
/*!40000 ALTER TABLE `kasus` DISABLE KEYS */;
INSERT INTO `kasus` VALUES ('2007/2008','2008-12-10','0123','002',30),('2007/2008','2008-12-06','0432','004',30),('2007/2008','2008-12-10','0432','004',30),('2007/2008','2008-12-10','0123','003',15),('2007/2008','2008-12-14','0182','001',25);
/*!40000 ALTER TABLE `kasus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `kdkelas` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `kdguru` varchar(3) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kdkelas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES ('XA','s1'),('XB','s2'),('XC','c1');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `semester` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `thnajaran` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `kdpelajaran` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `uts` double NOT NULL,
  `uas` double NOT NULL,
  `u1` double NOT NULL,
  `u2` double NOT NULL,
  `u3` double NOT NULL,
  `u4` double NOT NULL,
  `u5` double NOT NULL,
  PRIMARY KEY (`semester`,`thnajaran`,`nis`,`kdpelajaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES ('ganjil','2007/2008','0123','eng',100,80,90,80,100,0,0),('ganjil','2007/2008','0132','eng',90,70,0,0,0,0,0),('ganjil','2007/2008','1234','eng',76,89,0,0,0,0,0),('ganjil','2007/2008','0001','eng',90,100,90,80,70,0,0),('ganjil','2007/2008','1234','ind',0,0,90,78,59,0,0);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilaiekskul`
--

DROP TABLE IF EXISTS `nilaiekskul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilaiekskul` (
  `semester` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `kdekskul` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `nilai` double NOT NULL,
  PRIMARY KEY (`semester`,`nis`,`kdekskul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilaiekskul`
--

LOCK TABLES `nilaiekskul` WRITE;
/*!40000 ALTER TABLE `nilaiekskul` DISABLE KEYS */;
INSERT INTO `nilaiekskul` VALUES ('ganjil','0132','003',92),('ganjil','0492','003',0),('ganjil','0123','001',90),('ganjil','0123','002',90);
/*!40000 ALTER TABLE `nilaiekskul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelajaran`
--

DROP TABLE IF EXISTS `pelajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelajaran` (
  `kdpelajaran` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nmpelajaran` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `ruang` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kdpelajaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelajaran`
--

LOCK TABLES `pelajaran` WRITE;
/*!40000 ALTER TABLE `pelajaran` DISABLE KEYS */;
INSERT INTO `pelajaran` VALUES ('eng','bahasa inggris','eng1,eng2'),('ind','bahasa indonesia','ind1,ind2');
/*!40000 ALTER TABLE `pelajaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggaran`
--

DROP TABLE IF EXISTS `pelanggaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggaran` (
  `kdpelanggaran` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `nmpelanggaran` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `point` int(3) NOT NULL,
  PRIMARY KEY (`kdpelanggaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggaran`
--

LOCK TABLES `pelanggaran` WRITE;
/*!40000 ALTER TABLE `pelanggaran` DISABLE KEYS */;
INSERT INTO `pelanggaran` VALUES ('001','Merokok',25),('002','berkelahi',30),('003','membawa senjata tajam',15),('004','membawa senjata api',30),('005','tidak memakai seragam yang sesuai',10);
/*!40000 ALTER TABLE `pelanggaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `nis` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `nama` varchar(30) COLLATE latin1_general_ci DEFAULT '0',
  `tmptlahir` varchar(20) COLLATE latin1_general_ci DEFAULT '0',
  `tgllahir` date DEFAULT NULL,
  `agama` varchar(2) COLLATE latin1_general_ci DEFAULT '0',
  `jenkel` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(250) COLLATE latin1_general_ci DEFAULT '0',
  `notlp` varchar(15) COLLATE latin1_general_ci DEFAULT '0',
  `kdkelas` varchar(20) COLLATE latin1_general_ci DEFAULT '0',
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES ('0123','huri rahmanto','jakarta','1987-02-14','I','L','jl. Lapangan tenis no.17B rt.005 rw.005 Srengseng kembangan jakarta barat','0215874132','XA','202cb962ac59075b964b07152d234b70'),('1234','Robert Sinaga','Tapanuli','1988-02-29','P','L','jl sibutar butar','0218736847','XA',''),('0132','roy','bandung','1988-12-11','I','L','jl. pemuda 1 kebon jeruk  ','0215437695','XB',''),('0184','bunga melati seharum mewangi s','bandung','1987-02-18','B','P','jl. bandung utara 18','085691876123','XA',''),('0182','Nadia','Bojong','1986-05-05','B','P','JL. Sumantri Bojonegoro','0239876549','XB',''),('0432','Sakti Sumarsono','purwokerto','1987-06-08','K','L','jl. karya sakti no.18 meruya selatan jakarta barat','02157648976','XA',''),('0492','jaka sembung','bogor','1993-08-17','I','L','JL pahlawan, sunda','0215874132','XB','86309cb7d4819ee8f927f92a4dea1374'),('0001','rizky mira saputri','jakarta','1988-07-24','I','P','JL. Benda Barat 10B, Pamulang,Tangerang','08561916565','XC','c3c86069152c2e05e59ba3b6a7bebd24');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `cdcol`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cdcol` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `cdcol`;

--
-- Table structure for table `cds`
--

DROP TABLE IF EXISTS `cds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cds`
--

LOCK TABLES `cds` WRITE;
/*!40000 ALTER TABLE `cds` DISABLE KEYS */;
INSERT INTO `cds` VALUES ('Beauty','Ryuichi Sakamoto',1990,1),('Goodbye Country (Hello Nightclub)','Groove Armada',2001,4),('Glee','Bran Van 3000',1997,5);
/*!40000 ALTER TABLE `cds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db_akademik`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_akademik` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_akademik`;

--
-- Table structure for table `data_guru`
--

DROP TABLE IF EXISTS `data_guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_guru` (
  `id_guru` int(3) NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_guru` text NOT NULL,
  `telpon_guru` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_guru`
--

LOCK TABLES `data_guru` WRITE;
/*!40000 ALTER TABLE `data_guru` DISABLE KEYS */;
INSERT INTO `data_guru` VALUES (1,'Budi Setiawan','111112','laki-laki','Bogor','0217703999','budi','00dfc53ee86af02e742515cdcf075ed3'),(2,'Rosni Anjar','111113','perempuan','Jakarta','0217703111','rosni','f24317cf121953638985646330c6296d'),(3,'Iwan Pranoto','111114','laki-laki','Cijantung','0217703222','iwan','01ccce480c60fcdb67b54f4509ffdb56'),(4,'Imam Raharja','111115','laki-laki','Bekasi','0217703555','imam','eaccb8ea6090a40a98aa28c071810371'),(5,'Desi Sukma','111116','perempuan','Bogor','0217703444','desi','069e2dd171f61ecffb845190a7adf425');
/*!40000 ALTER TABLE `data_guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_siswa`
--

DROP TABLE IF EXISTS `data_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_siswa` (
  `id_siswa` int(5) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(20) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_siswa` text NOT NULL,
  `telpon_siswa` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_siswa`
--

LOCK TABLES `data_siswa` WRITE;
/*!40000 ALTER TABLE `data_siswa` DISABLE KEYS */;
INSERT INTO `data_siswa` VALUES (2,'Ibnu Siena','50406041','laki-laki','Bogor','0217703966','ibnu','195ace8d50de761419faf08845304398'),(3,'Elka Fajar','50406042','perempuan','Bojong','0217703977','elka','0eb0d6bc3f0b26b3cdaf7639cc0287ef'),(4,'Adi Kurnia','50406043','laki-laki','Jakarta','0217703988','adi','c46335eb267e2e1cde5b017acb4cd799'),(6,'Blodod Eman','50406045','laki-laki','Tangerang','0217703944','blodod','6ed2d9fc10d15ca4c123f3b90b5d170a'),(7,'Athi Septiani','50406046','perempuan','Jakarta','0217703933','athi','1b47e01486bbd74137716457e828a709'),(8,'Naila Larasati','50406047','perempuan','Depok','0217703922','naila','eec1b906b0c314e617235f13f0e6468d'),(9,'Rizkon Halali','50406048','laki-laki','Mampang','0217703955','rizkon','544ccf86d9579f519ec9efb8de16a0dd');
/*!40000 ALTER TABLE `data_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_kelas`
--

DROP TABLE IF EXISTS `setup_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_kelas` (
  `id_kelas` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_kelas`
--

LOCK TABLES `setup_kelas` WRITE;
/*!40000 ALTER TABLE `setup_kelas` DISABLE KEYS */;
INSERT INTO `setup_kelas` VALUES (1,'3IA01'),(2,'3IA02'),(3,'3IA03');
/*!40000 ALTER TABLE `setup_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_pelajaran`
--

DROP TABLE IF EXISTS `setup_pelajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_pelajaran` (
  `id_pelajaran` int(3) NOT NULL AUTO_INCREMENT,
  `nama_pelajaran` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelajaran`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_pelajaran`
--

LOCK TABLES `setup_pelajaran` WRITE;
/*!40000 ALTER TABLE `setup_pelajaran` DISABLE KEYS */;
INSERT INTO `setup_pelajaran` VALUES (1,'Biologi'),(2,'Matematika'),(3,'Fisika'),(4,'B.Indonesia'),(5,'Kimia'),(6,'Sejarah'),(7,'Sosiologi');
/*!40000 ALTER TABLE `setup_pelajaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_jadwal`
--

DROP TABLE IF EXISTS `tbl_jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(5) NOT NULL AUTO_INCREMENT,
  `id_guru` int(3) NOT NULL,
  `id_pelajaran` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_jadwal`
--

LOCK TABLES `tbl_jadwal` WRITE;
/*!40000 ALTER TABLE `tbl_jadwal` DISABLE KEYS */;
INSERT INTO `tbl_jadwal` VALUES (3,1,4,1),(4,1,1,1),(5,1,3,1),(6,1,5,1),(7,5,2,1),(8,5,6,1),(9,5,7,1),(10,5,2,2),(11,5,6,2),(12,5,7,2),(13,4,4,2),(14,4,1,2),(15,4,3,2),(16,4,5,2),(17,1,0,0);
/*!40000 ALTER TABLE `tbl_jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nilai`
--

DROP TABLE IF EXISTS `tbl_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nilai` (
  `id_nilai` int(5) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(5) NOT NULL,
  `id_pelajaran` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_guru` int(3) NOT NULL,
  `nilai` int(3) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nilai`
--

LOCK TABLES `tbl_nilai` WRITE;
/*!40000 ALTER TABLE `tbl_nilai` DISABLE KEYS */;
INSERT INTO `tbl_nilai` VALUES (55,2,2,2,5,60),(54,3,2,2,5,50),(53,6,7,1,5,76),(52,7,7,1,5,40),(51,4,7,1,5,50),(50,6,6,1,5,90),(49,7,6,1,5,60),(48,4,6,1,5,75),(47,6,2,1,5,55),(46,7,2,1,5,30),(45,4,2,1,5,60),(44,6,5,1,1,70),(43,7,5,1,1,80),(42,4,5,1,1,90),(41,6,3,1,1,55),(40,7,3,1,1,70),(39,4,3,1,1,75),(38,6,1,1,1,75),(37,7,1,1,1,60),(36,4,1,1,1,80),(35,6,4,1,1,80),(34,7,4,1,1,60),(33,4,4,1,1,70),(56,8,2,2,5,70),(57,9,2,2,5,80);
/*!40000 ALTER TABLE `tbl_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ruangan`
--

DROP TABLE IF EXISTS `tbl_ruangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(5) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  PRIMARY KEY (`id_ruangan`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ruangan`
--

LOCK TABLES `tbl_ruangan` WRITE;
/*!40000 ALTER TABLE `tbl_ruangan` DISABLE KEYS */;
INSERT INTO `tbl_ruangan` VALUES (1,4,1),(2,7,1),(3,6,1),(4,3,2),(5,2,2),(6,8,2),(7,9,2);
/*!40000 ALTER TABLE `tbl_ruangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_admin`
--

DROP TABLE IF EXISTS `user_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_admin` (
  `id_admin` int(3) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_admin`
--

LOCK TABLES `user_admin` WRITE;
/*!40000 ALTER TABLE `user_admin` DISABLE KEYS */;
INSERT INTO `user_admin` VALUES (1,'Agus Sumarna','admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `user_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db_sima`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_sima` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_sima`;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(18) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `no_register` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `asal_usul` varchar(100) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `id_jenis` int(5) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `id_kondisi` int(5) DEFAULT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `kode_barang` (`kode_barang`),
  KEY `id_barang` (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES (122,'04.15.03.01.03','meja guru','642','2009-01-12','pinjam',2000000,2,'Ruang Guru',1,'6afika-bebelac-bebestar-0.jpg','oke'),(123,'01.01.02.01.07','Lapangan 2','Lp1','2010-06-12','bantuan daerah',50000000,1,'tengah sekolah',1,'9100_4770.JPG','baru nieh'),(126,'04.15.01.01.03','avanza','av72','2012-06-12','bantuan daerah',200000000,2,'Garasi depan',1,'56capture17.jpg','masih baru 2 buah'),(128,'03.11.01.01.03','Aula','al21','2012-06-12','dana daerah',400000000,3,'smkn 12 malang',1,'5100_4768.JPG','asdfgh'),(131,'04.16.04.03.03','telpon','tl21','2012-06-13','dana daerah',50000000,4,'Ruang guru',1,'36images22.jpeg','zazazaza'),(135,'03.15.06.01.03','Patung','3pt','2012-06-13','bantuan daerah',400000000,5,'smkn 12 malang',1,'73afika-bebelac-bebestar-3.jpg','sasasasasa'),(137,'-','Gedung Pertemuan','-','2012-06-18','dana daerah',0,6,'SMKN 12 Malang',0,'','bismillah'),(141,'01.01.02.02.10','Tegalan','w34','2012-06-21','dsd',34343,1,'SMKN 12 Malang',1,'19capture16.jpg',''),(142,'123','Motor','123a','2010-04-25','pinjam',10000000,2,'Garasi',3,'','oke'),(143,'354','meja','12','2011-04-10','beli',500000,2,'Perpustakaan',1,'','oke'),(144,'765','kursi','43b','2008-01-23','beli',300000,2,'XII TKJ 1',2,'','oke'),(145,'573','papan tulis','78a','2008-01-01','hibah',100000,2,'XIII MM 2',1,'','oke'),(146,'975','lemari','23a','2010-05-05','beli',200000,2,'X TKJ 1',1,'','oke'),(147,'235','rak buku','30b','2008-06-25','hibah',50000,2,'Perpustakaan',1,'','oke'),(148,'385','meja guru','642','2009-01-12','pinjam',2000000,2,'Ruang Guru',1,'','oke');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_barang`
--

DROP TABLE IF EXISTS `detail_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_barang` (
  `id_detail` int(10) NOT NULL AUTO_INCREMENT,
  `id_barang` int(10) NOT NULL,
  `luas` int(8) DEFAULT NULL,
  `status_tanah_hak` varchar(50) DEFAULT NULL,
  `status_tanah_sertifikat` varchar(20) DEFAULT NULL,
  `status_tanah_sertifikat_no` varchar(20) DEFAULT NULL,
  `penggunaan` varchar(50) DEFAULT NULL,
  `merk_type` varchar(50) DEFAULT NULL,
  `ukuran_cc` varchar(20) DEFAULT NULL,
  `bahan` varchar(50) DEFAULT NULL,
  `no_pabrik` varchar(20) DEFAULT NULL,
  `no_rangka` varchar(20) DEFAULT NULL,
  `no_mesin` varchar(20) DEFAULT NULL,
  `no_polisi` varchar(20) DEFAULT NULL,
  `no_bpkb` varchar(20) DEFAULT NULL,
  `konstruksi_tingkat` enum('Y','T') DEFAULT NULL,
  `konstruksi_beton` enum('Y','T') DEFAULT NULL,
  `dok_gedung_tgl` date DEFAULT NULL,
  `dok_gedung_no` varchar(20) DEFAULT NULL,
  `konstruksi` varchar(50) DEFAULT NULL,
  `panjang` int(8) DEFAULT NULL,
  `lebar` int(8) DEFAULT NULL,
  `dok_tgl` date DEFAULT NULL,
  `dok_no` varchar(20) DEFAULT NULL,
  `status_tanah` varchar(50) DEFAULT NULL,
  `no_kode_tanah` varchar(20) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL,
  `bangunan` varchar(100) DEFAULT NULL,
  `tahun_mulai` year(4) DEFAULT NULL,
  `nilai_kontrak` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `id_barang` (`id_barang`),
  KEY `id_barang_2` (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_barang`
--

LOCK TABLES `detail_barang` WRITE;
/*!40000 ALTER TABLE `detail_barang` DISABLE KEYS */;
INSERT INTO `detail_barang` VALUES (1,122,NULL,NULL,NULL,NULL,NULL,'','','besi','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,123,100,'sewa','wse12','302','lapangan volly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,126,NULL,NULL,NULL,NULL,NULL,'','','Baja','123cdf','123456a','23zd','N 2912 ZD','asw23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,128,800,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','Y','2010-06-25','23a',NULL,NULL,NULL,NULL,NULL,'Hak milik sekolah','23t',NULL,NULL,NULL,NULL),(6,131,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-',10,5,'2012-06-13','21','Hak milik sekolah','th23',NULL,NULL,NULL,NULL),(10,135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL),(12,137,400,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'T','Y',NULL,NULL,NULL,NULL,NULL,'2012-04-30','56y','Hak milik sekolah','23t',NULL,NULL,2012,'20000000'),(16,141,400,'ewe','ewe','232','dwd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detail_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis`
--

DROP TABLE IF EXISTS `jenis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis` (
  `id_jenis` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `nama_jenis` varchar(30) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis`
--

LOCK TABLES `jenis` WRITE;
/*!40000 ALTER TABLE `jenis` DISABLE KEYS */;
INSERT INTO `jenis` VALUES (1,'KIB A','TANAH'),(2,'KIB B','PERALATAN DAN MESIN'),(3,'KIB C','GEDUNG DAN BANGUNAN'),(4,'KIB D','JALAN, IRIGASI DAN JARINGAN'),(5,'KIB E','ASET TETAP LAINNYA'),(6,'KIB F','KONSTRUKSI DALAM PENGERJAAN');
/*!40000 ALTER TABLE `jenis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kondisi`
--

DROP TABLE IF EXISTS `kondisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kondisi` (
  `id_kondisi` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kondisi` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kondisi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kondisi`
--

LOCK TABLES `kondisi` WRITE;
/*!40000 ALTER TABLE `kondisi` DISABLE KEYS */;
INSERT INTO `kondisi` VALUES (0,'-'),(1,'BAIK'),(2,'RUSAK RINGAN'),(3,'RUSAK SEDANG'),(4,'RUSAK BERAT');
/*!40000 ALTER TABLE `kondisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `laporan`
--

DROP TABLE IF EXISTS `laporan`;
/*!50001 DROP VIEW IF EXISTS `laporan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `laporan` (
  `kode_barang` varchar(18),
  `nama_barang` varchar(100),
  `no_register` varchar(15),
  `tanggal` date,
  `asal_usul` varchar(100),
  `harga` int(10),
  `nama_jenis` varchar(30),
  `lokasi` varchar(100),
  `nama_kondisi` varchar(30),
  `keterangan` varchar(150)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `jbsakad`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsakad` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsakad`;

--
-- Table structure for table `aktivitaskalender`
--

DROP TABLE IF EXISTS `aktivitaskalender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aktivitaskalender` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkalender` int(10) unsigned NOT NULL DEFAULT '0',
  `tanggalawal` date NOT NULL DEFAULT '0000-00-00',
  `tanggalakhir` date NOT NULL DEFAULT '0000-00-00',
  `kegiatan` varchar(50) NOT NULL,
  `keterangan` text,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_aktivitaskalender_kalenderakademik` (`idkalender`),
  KEY `IX_aktivitaskalender_ts` (`ts`,`issync`),
  CONSTRAINT `FK_aktivitaskalender_kalenderakademik` FOREIGN KEY (`idkalender`) REFERENCES `kalenderakademik` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aktivitaskalender`
--

LOCK TABLES `aktivitaskalender` WRITE;
/*!40000 ALTER TABLE `aktivitaskalender` DISABLE KEYS */;
/*!40000 ALTER TABLE `aktivitaskalender` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_aktivitaskalender_100` BEFORE INSERT ON `aktivitaskalender` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_aktivitaskalender_100` BEFORE UPDATE ON `aktivitaskalender` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_aktivitaskalender_100` AFTER DELETE ON `aktivitaskalender` FOR EACH ROW BEGIN
   IF @DISABLE_TRIGER IS NULL THEN
      INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'aktivitaskalender', dataid = OLD.replid, datatoken = OLD.token;
   END IF;
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumni` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(45) NOT NULL,
  `klsakhir` int(10) unsigned NOT NULL,
  `tktakhir` int(10) unsigned NOT NULL,
  `tgllulus` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `departemen` varchar(50) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_alumni_siswa` (`nis`),
  KEY `FK_alumni_tingkat` (`tktakhir`),
  KEY `FK_alumni_kelas` (`klsakhir`),
  KEY `FK_alumni_departemen` (`departemen`),
  KEY `IX_alumni_ts` (`ts`,`issync`),
  CONSTRAINT `FK_alumni_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON UPDATE CASCADE,
  CONSTRAINT `FK_alumni_kelas` FOREIGN KEY (`klsakhir`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_alumni_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_alumni_tingkat` FOREIGN KEY (`tktakhir`) REFERENCES `tingkat` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `angkatan`
--

DROP TABLE IF EXISTS `angkatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `angkatan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `angkatan` varchar(50) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_angkatan_departemen` (`departemen`),
  KEY `IX_angkatan_ts` (`ts`,`issync`),
  CONSTRAINT `FK_angkatan_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angkatan`
--

LOCK TABLES `angkatan` WRITE;
/*!40000 ALTER TABLE `angkatan` DISABLE KEYS */;
INSERT INTO `angkatan` VALUES (19,'2012','SMK Negeri 12 Malang',1,'Angkatan 2012-2013',NULL,NULL,NULL,'2013-07-02 13:42:33',11596,0),(20,'2013','SMK Negeri 12 Malang',0,'',NULL,NULL,NULL,'2013-05-28 06:40:49',51177,0);
/*!40000 ALTER TABLE `angkatan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_angkatan_100` BEFORE INSERT ON `angkatan` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_angkatan_100` BEFORE UPDATE ON `angkatan` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_angkatan_100` AFTER DELETE ON `angkatan` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'angkatan', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `asalsekolah`
--

DROP TABLE IF EXISTS `asalsekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asalsekolah` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departemen` varchar(50) NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `urutan` tinyint(2) unsigned DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sekolah`),
  UNIQUE KEY `UX_asalsekolah` (`replid`),
  KEY `FK_asalsekolah_departemen` (`departemen`),
  KEY `IX_asalsekolah_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asalsekolah`
--

LOCK TABLES `asalsekolah` WRITE;
/*!40000 ALTER TABLE `asalsekolah` DISABLE KEYS */;
INSERT INTO `asalsekolah` VALUES (31,'SDN','SDN Indonesia Membaca',NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',29807,0),(30,'SMAN','SMAN Indonesia Membaca',NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',48716,0),(21,'SMPN','SMP Indonesia Membaca',NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',23099,0);
/*!40000 ALTER TABLE `asalsekolah` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_asalsekolah_100` BEFORE INSERT ON `asalsekolah` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_asalsekolah_100` BEFORE UPDATE ON `asalsekolah` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.sekolah <> OLD.sekolah THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'asalsekolah', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.sekolah, oldpk = OLD.sekolah;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_asalsekolah_100` AFTER DELETE ON `asalsekolah` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'asalsekolah', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `aturangrading`
--

DROP TABLE IF EXISTS `aturangrading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aturangrading` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nipguru` varchar(20) NOT NULL,
  `idtingkat` int(10) unsigned NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL,
  `dasarpenilaian` varchar(50) NOT NULL,
  `nmin` decimal(6,1) NOT NULL,
  `nmax` decimal(6,1) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_aturangrading_pegawai` (`nipguru`),
  KEY `FK_aturangrading_tingkat` (`idtingkat`),
  KEY `FK_aturangrading_pelajaran` (`idpelajaran`),
  KEY `FK_aturangrading_dasarpenilaian` (`dasarpenilaian`),
  KEY `IX_aturangrading_ts` (`ts`,`issync`),
  CONSTRAINT `FK_aturangrading_dasarpenilaian` FOREIGN KEY (`dasarpenilaian`) REFERENCES `dasarpenilaian` (`dasarpenilaian`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturangrading_pegawai` FOREIGN KEY (`nipguru`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturangrading_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturangrading_tingkat` FOREIGN KEY (`idtingkat`) REFERENCES `tingkat` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aturangrading`
--

LOCK TABLES `aturangrading` WRITE;
/*!40000 ALTER TABLE `aturangrading` DISABLE KEYS */;
INSERT INTO `aturangrading` VALUES (207,'1024',26,45,'Praktik','75.0','100.0','A',NULL,NULL,NULL,'2010-03-02 03:06:17',34878,0),(208,'1024',26,45,'Praktik','60.0','74.9','B',NULL,NULL,NULL,'2010-03-02 03:06:17',39560,0),(209,'1024',26,45,'Praktik','50.0','59.9','C',NULL,NULL,NULL,'2010-03-02 03:06:17',27637,0),(210,'1024',26,45,'Praktik','40.0','49.9','D',NULL,NULL,NULL,'2010-03-02 03:06:17',19503,0),(211,'1024',26,45,'Praktik','0.0','39.9','E',NULL,NULL,NULL,'2010-03-02 03:06:17',14603,0),(217,'1024',27,45,'Pemahaman Konsep','75.0','100.0','A',NULL,NULL,NULL,'2010-03-02 03:06:17',14507,0),(218,'1024',27,45,'Pemahaman Konsep','60.0','74.9','B',NULL,NULL,NULL,'2010-03-02 03:06:17',28724,0),(219,'1024',27,45,'Pemahaman Konsep','50.0','59.9','C',NULL,NULL,NULL,'2010-03-02 03:06:17',34571,0),(220,'1024',27,45,'Pemahaman Konsep','40.0','49.9','D',NULL,NULL,NULL,'2010-03-02 03:06:17',21151,0),(221,'1024',27,45,'Pemahaman Konsep','0.0','39.9','E',NULL,NULL,NULL,'2010-03-02 03:06:17',2041,0),(222,'1024',27,45,'Praktik','70.0','100.0','A',NULL,NULL,NULL,'2010-03-02 03:06:17',12283,0),(223,'1024',27,45,'Praktik','50.0','69.9','B',NULL,NULL,NULL,'2010-03-02 03:06:17',55290,0),(224,'1024',27,45,'Praktik','40.0','49.9','C',NULL,NULL,NULL,'2010-03-02 03:06:17',43011,0),(225,'1024',27,45,'Praktik','30.0','39.9','D',NULL,NULL,NULL,'2010-03-02 03:06:17',49186,0),(226,'1024',27,45,'Praktik','0.0','29.9','E',NULL,NULL,NULL,'2010-03-02 03:06:17',51364,0),(227,'1024',28,45,'Pemahaman Konsep','75.0','100.0','A',NULL,NULL,NULL,'2010-03-02 03:06:17',43731,0),(228,'1024',28,45,'Pemahaman Konsep','60.0','74.9','B',NULL,NULL,NULL,'2010-03-02 03:06:17',64565,0),(229,'1024',28,45,'Pemahaman Konsep','50.0','59.9','C',NULL,NULL,NULL,'2010-03-02 03:06:17',60569,0),(230,'1024',28,45,'Pemahaman Konsep','40.0','49.9','D',NULL,NULL,NULL,'2010-03-02 03:06:17',43622,0),(231,'1024',28,45,'Pemahaman Konsep','0.0','39.9','E',NULL,NULL,NULL,'2010-03-02 03:06:17',36402,0),(242,'1024',28,45,'Praktik','70.0','100.0','A',NULL,NULL,NULL,'2010-03-02 03:06:17',51145,0),(243,'1024',28,45,'Praktik','50.0','69.9','B',NULL,NULL,NULL,'2010-03-02 03:06:17',15456,0),(244,'1024',28,45,'Praktik','40.0','49.9','C',NULL,NULL,NULL,'2010-03-02 03:06:17',54904,0),(245,'1024',28,45,'Praktik','30.0','39.9','D',NULL,NULL,NULL,'2010-03-02 03:06:17',31562,0),(246,'1024',28,45,'Praktik','0.0','29.9','E',NULL,NULL,NULL,'2010-03-02 03:06:17',58628,0),(252,'1024',26,45,'Pemahaman Konsep','75.0','100.0','A',NULL,NULL,NULL,'2010-03-02 03:06:17',1865,0),(253,'1024',26,45,'Pemahaman Konsep','60.0','74.9','B',NULL,NULL,NULL,'2010-03-02 03:06:17',30031,0),(254,'1024',26,45,'Pemahaman Konsep','50.0','59.9','C',NULL,NULL,NULL,'2010-03-02 03:06:17',13500,0),(255,'1024',26,45,'Pemahaman Konsep','40.0','49.9','D',NULL,NULL,NULL,'2010-03-02 03:06:17',42936,0),(256,'1024',26,45,'Pemahaman Konsep','0.0','39.9','E',NULL,NULL,NULL,'2010-03-02 03:06:17',43118,0),(257,'12312312',26,47,'Pemahaman Konsep','1.0','60.0','D',NULL,NULL,NULL,'2013-05-27 15:57:18',5252,0),(258,'12312312',26,47,'Pemahaman Konsep','60.0','75.0','C',NULL,NULL,NULL,'2013-05-27 15:57:18',45702,0),(259,'12312312',26,47,'Pemahaman Konsep','75.0','85.0','B',NULL,NULL,NULL,'2013-05-27 15:57:18',18258,0),(260,'12312312',26,47,'Pemahaman Konsep','85.0','100.0','A',NULL,NULL,NULL,'2013-05-27 15:57:18',21881,0),(261,'12312312',27,47,'Pemahaman Konsep','80.0','100.0','A',NULL,NULL,NULL,'2013-05-27 16:14:11',21844,0),(262,'12312312',27,47,'Pemahaman Konsep','60.0','80.0','B',NULL,NULL,NULL,'2013-05-27 16:14:11',14442,0),(263,'12312312',28,47,'Pemahaman Konsep','80.0','100.0','A',NULL,NULL,NULL,'2013-05-27 16:14:45',48555,0),(264,'12312312',28,47,'Pemahaman Konsep','60.0','80.0','B',NULL,NULL,NULL,'2013-05-27 16:14:45',56543,0),(265,'12312312',28,47,'Pemahaman Konsep','0.0','60.0','C',NULL,NULL,NULL,'2013-05-27 16:14:45',54810,0);
/*!40000 ALTER TABLE `aturangrading` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_aturangrading_100` BEFORE INSERT ON `aturangrading` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_aturangrading_100` BEFORE UPDATE ON `aturangrading` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_aturangrading_100` AFTER DELETE ON `aturangrading` FOR EACH ROW BEGIN
   IF @DISABLE_TRIGER IS NULL THEN
      INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'aturangrading', dataid = OLD.replid, datatoken = OLD.token;
   END IF;
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `aturannhb`
--

DROP TABLE IF EXISTS `aturannhb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aturannhb` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nipguru` varchar(20) NOT NULL,
  `idtingkat` int(10) unsigned NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL,
  `dasarpenilaian` varchar(50) NOT NULL,
  `idjenisujian` int(10) unsigned NOT NULL,
  `bobot` tinyint(3) unsigned NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_aturannhb_jenisujian` (`idjenisujian`),
  KEY `FK_aturannhb_dasarpenilaian` (`dasarpenilaian`),
  KEY `FK_aturannhb_pelajaran` (`idpelajaran`),
  KEY `FK_aturannhb_tingkat` (`idtingkat`),
  KEY `FK_aturannhb_pegawai` (`nipguru`),
  KEY `IX_aturannhb_ts` (`ts`,`issync`),
  CONSTRAINT `FK_aturannhb_dasarpenilaian` FOREIGN KEY (`dasarpenilaian`) REFERENCES `dasarpenilaian` (`dasarpenilaian`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturannhb_jenisujian` FOREIGN KEY (`idjenisujian`) REFERENCES `jenisujian` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturannhb_pegawai` FOREIGN KEY (`nipguru`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturannhb_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_aturannhb_tingkat` FOREIGN KEY (`idtingkat`) REFERENCES `tingkat` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aturannhb`
--

LOCK TABLES `aturannhb` WRITE;
/*!40000 ALTER TABLE `aturannhb` DISABLE KEYS */;
INSERT INTO `aturannhb` VALUES (203,'1024',26,45,'Pemahaman Konsep',108,10,1,NULL,NULL,NULL,NULL,'2013-06-16 03:58:14',42437,0),(214,'1024',27,45,'Pemahaman Konsep',108,10,1,NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',55114,0),(222,'1024',28,45,'Pemahaman Konsep',108,10,1,NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',5132,0),(223,'12312312',26,47,'Pemahaman Konsep',109,30,1,NULL,NULL,NULL,NULL,'2013-05-27 15:52:39',24607,0),(224,'12312312',26,47,'Pemahaman Konsep',110,20,1,NULL,NULL,NULL,NULL,'2013-05-27 15:52:39',51742,0),(225,'12312312',26,47,'Pemahaman Konsep',111,50,1,NULL,NULL,NULL,NULL,'2013-05-27 15:52:39',16198,0),(226,'12312312',27,47,'Praktik',109,40,1,NULL,NULL,NULL,NULL,'2013-05-27 15:53:01',23750,0),(227,'12312312',27,47,'Praktik',110,10,1,NULL,NULL,NULL,NULL,'2013-05-27 15:53:01',41076,0),(228,'12312312',27,47,'Praktik',111,50,1,NULL,NULL,NULL,NULL,'2013-05-27 15:53:01',24704,0),(229,'12312312',28,47,'Pemahaman Konsep',109,3,1,NULL,NULL,NULL,NULL,'2013-05-27 15:54:11',49521,0),(230,'12312312',28,47,'Pemahaman Konsep',110,1,1,NULL,NULL,NULL,NULL,'2013-05-27 15:54:11',36921,0),(231,'12312312',28,47,'Pemahaman Konsep',111,5,1,NULL,NULL,NULL,NULL,'2013-05-27 15:54:11',53020,0),(232,'12345678',26,46,'Pemahaman Konsep',112,20,1,NULL,NULL,NULL,NULL,'2013-07-02 14:22:31',21105,0),(233,'12345678',26,46,'Pemahaman Konsep',113,25,1,NULL,NULL,NULL,NULL,'2013-07-02 14:22:31',52536,0),(234,'12345678',26,46,'Pemahaman Konsep',114,25,1,NULL,NULL,NULL,NULL,'2013-07-02 14:22:31',52176,0),(235,'12345678',26,46,'Pemahaman Konsep',115,30,1,NULL,NULL,NULL,NULL,'2013-07-02 14:22:31',18583,0),(236,'12345678',27,46,'Pemahaman Konsep',112,10,1,NULL,NULL,NULL,NULL,'2013-07-02 14:23:29',65090,0),(237,'12345678',27,46,'Pemahaman Konsep',113,35,1,NULL,NULL,NULL,NULL,'2013-07-02 14:23:29',11458,0),(238,'12345678',27,46,'Pemahaman Konsep',114,20,1,NULL,NULL,NULL,NULL,'2013-07-02 14:23:29',36291,0),(239,'12345678',27,46,'Pemahaman Konsep',115,35,1,NULL,NULL,NULL,NULL,'2013-07-02 14:23:29',56197,0),(240,'12345678',28,46,'Pemahaman Konsep',112,23,1,NULL,NULL,NULL,NULL,'2013-05-27 15:55:27',14895,0),(241,'12345678',28,46,'Pemahaman Konsep',113,32,1,NULL,NULL,NULL,NULL,'2013-05-27 15:55:27',7914,0),(242,'12345678',28,46,'Pemahaman Konsep',114,12,1,NULL,NULL,NULL,NULL,'2013-05-27 15:55:27',38878,0),(243,'12345678',28,46,'Pemahaman Konsep',115,31,1,NULL,NULL,NULL,NULL,'2013-05-27 15:55:27',63175,0),(244,'12312312',26,47,'Praktik',109,45,1,NULL,NULL,NULL,NULL,'2013-07-02 14:38:13',42232,0),(245,'12312312',26,47,'Praktik',110,30,1,NULL,NULL,NULL,NULL,'2013-07-02 14:38:13',28468,0),(246,'12312312',26,47,'Praktik',111,25,1,NULL,NULL,NULL,NULL,'2013-07-02 14:38:13',35666,0);
/*!40000 ALTER TABLE `aturannhb` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_aturannhb_100` BEFORE INSERT ON `aturannhb` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_aturannhb_100` BEFORE UPDATE ON `aturannhb` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_aturannhb_100` AFTER DELETE ON `aturannhb` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'aturannhb', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `auditnilai`
--

DROP TABLE IF EXISTS `auditnilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditnilai` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenisnilai` varchar(45) NOT NULL,
  `idnilai` int(10) unsigned NOT NULL,
  `nasli` decimal(10,2) NOT NULL,
  `nubah` decimal(10,2) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alasan` varchar(255) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `informasi` varchar(255) NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditnilai`
--

LOCK TABLES `auditnilai` WRITE;
/*!40000 ALTER TABLE `auditnilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditnilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bobotnau`
--

DROP TABLE IF EXISTS `bobotnau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bobotnau` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idinfo` int(10) unsigned DEFAULT NULL,
  `idujian` int(10) unsigned NOT NULL,
  `bobot` int(10) unsigned NOT NULL DEFAULT '0',
  `idaturan` int(10) unsigned DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_bobotnau_infobobot` (`idinfo`),
  KEY `FK_bobotnau_ujian` (`idujian`),
  KEY `IX_bobotnau_ts` (`ts`,`issync`),
  CONSTRAINT `FK_bobotnau_infobobot` FOREIGN KEY (`idinfo`) REFERENCES `infobobotnau` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_bobotnau_ujian` FOREIGN KEY (`idujian`) REFERENCES `ujian` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bobotnau`
--

LOCK TABLES `bobotnau` WRITE;
/*!40000 ALTER TABLE `bobotnau` DISABLE KEYS */;
/*!40000 ALTER TABLE `bobotnau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calonsiswa`
--

DROP TABLE IF EXISTS `calonsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calonsiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nopendaftaran` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `panggilan` varchar(30) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `tahunmasuk` int(10) unsigned NOT NULL,
  `idproses` int(10) unsigned NOT NULL,
  `idkelompok` int(10) unsigned NOT NULL,
  `suku` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `kelamin` varchar(1) NOT NULL,
  `tmplahir` varchar(50) NOT NULL,
  `tgllahir` date NOT NULL,
  `warga` varchar(5) DEFAULT NULL,
  `anakke` tinyint(2) unsigned DEFAULT '0',
  `jsaudara` tinyint(2) unsigned DEFAULT '0',
  `bahasa` varchar(60) DEFAULT NULL,
  `berat` decimal(4,1) unsigned DEFAULT '0.0',
  `tinggi` decimal(4,1) unsigned DEFAULT '0.0',
  `darah` varchar(2) DEFAULT NULL,
  `foto` blob,
  `alamatsiswa` varchar(255) DEFAULT NULL,
  `kodepossiswa` varchar(8) DEFAULT NULL,
  `telponsiswa` varchar(20) DEFAULT NULL,
  `hpsiswa` varchar(20) DEFAULT NULL,
  `emailsiswa` varchar(100) DEFAULT NULL,
  `kesehatan` varchar(255) DEFAULT NULL,
  `asalsekolah` varchar(100) DEFAULT NULL,
  `ketsekolah` varchar(255) DEFAULT NULL,
  `namaayah` varchar(100) DEFAULT NULL,
  `namaibu` varchar(100) DEFAULT NULL,
  `almayah` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `almibu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pendidikanayah` varchar(20) DEFAULT NULL,
  `pendidikanibu` varchar(20) DEFAULT NULL,
  `pekerjaanayah` varchar(100) DEFAULT NULL,
  `pekerjaanibu` varchar(100) DEFAULT NULL,
  `wali` varchar(100) DEFAULT NULL,
  `penghasilanayah` int(10) unsigned DEFAULT '0',
  `penghasilanibu` int(10) unsigned DEFAULT '0',
  `alamatortu` varchar(100) DEFAULT NULL,
  `telponortu` varchar(20) DEFAULT NULL,
  `hportu` varchar(20) DEFAULT NULL,
  `emailayah` varchar(100) DEFAULT NULL,
  `alamatsurat` varchar(100) DEFAULT NULL,
  `keterangan` text,
  `replidsiswa` int(10) unsigned DEFAULT NULL,
  `emailibu` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nopendaftaran`),
  UNIQUE KEY `UX_calonsiswa_replid` (`replid`),
  KEY `FK_calonsiswa_prosespenerimaansiswa` (`idproses`),
  KEY `FK_calonsiswa_kelompokcalonsiswa` (`idkelompok`),
  KEY `FK_calonsiswa_suku` (`suku`),
  KEY `FK_calonsiswa_agama` (`agama`),
  KEY `FK_calonsiswa_statusiswa` (`status`),
  KEY `FK_calonsiswa_asalsekolah` (`asalsekolah`),
  KEY `FK_calonsiswa_tingkatpendidikan` (`pendidikanayah`),
  KEY `FK_calonsiswa_jenispekerjaan` (`pekerjaanayah`),
  KEY `FK_calonsiswa_tingkatpendidikanibu` (`pendidikanibu`),
  KEY `FK_calonsiswa_jenispekerjaanibu` (`pekerjaanibu`),
  KEY `FK_calonsiswa_kondisisiswa` (`kondisi`),
  KEY `IX_calonsiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_calonsiswa_agama` FOREIGN KEY (`agama`) REFERENCES `jbsumum`.`agama` (`agama`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_asalsekolah` FOREIGN KEY (`asalsekolah`) REFERENCES `asalsekolah` (`sekolah`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_jenispekerjaan` FOREIGN KEY (`pekerjaanayah`) REFERENCES `jbsumum`.`jenispekerjaan` (`pekerjaan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_jenispekerjaanibu` FOREIGN KEY (`pekerjaanibu`) REFERENCES `jbsumum`.`jenispekerjaan` (`pekerjaan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_kelompokcalonsiswa` FOREIGN KEY (`idkelompok`) REFERENCES `kelompokcalonsiswa` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_kondisisiswa` FOREIGN KEY (`kondisi`) REFERENCES `kondisisiswa` (`kondisi`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_prosespenerimaansiswa` FOREIGN KEY (`idproses`) REFERENCES `prosespenerimaansiswa` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_statussiswa` FOREIGN KEY (`status`) REFERENCES `statussiswa` (`status`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_suku` FOREIGN KEY (`suku`) REFERENCES `jbsumum`.`suku` (`suku`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_tingkatpendidikan` FOREIGN KEY (`pendidikanayah`) REFERENCES `jbsumum`.`tingkatpendidikan` (`pendidikan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_calonsiswa_tingkatpendidikanibu` FOREIGN KEY (`pendidikanibu`) REFERENCES `jbsumum`.`tingkatpendidikan` (`pendidikan`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 196608 kB; (`pendidikanibu`) REFER `jbsumum/tin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calonsiswa`
--

LOCK TABLES `calonsiswa` WRITE;
/*!40000 ALTER TABLE `calonsiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `calonsiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_calonsiswa_100` BEFORE INSERT ON `calonsiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_calonsiswa_100` BEFORE UPDATE ON `calonsiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.nopendaftaran <> OLD.nopendaftaran THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'calonsiswa', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.nopendaftaran, oldpk = OLD.nopendaftaran;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_calonsiswa_100` AFTER DELETE ON `calonsiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'calonsiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dasarpenilaian`
--

DROP TABLE IF EXISTS `dasarpenilaian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dasarpenilaian` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dasarpenilaian` varchar(50) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dasarpenilaian`),
  UNIQUE KEY `UX_dasarpenilaian_replid` (`replid`),
  KEY `IX_dasarpenilaian_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dasarpenilaian`
--

LOCK TABLES `dasarpenilaian` WRITE;
/*!40000 ALTER TABLE `dasarpenilaian` DISABLE KEYS */;
INSERT INTO `dasarpenilaian` VALUES (3,'Pemahaman Konsep',NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',50529,0),(4,'Praktik',NULL,NULL,NULL,NULL,'2010-03-02 03:06:17',24109,0);
/*!40000 ALTER TABLE `dasarpenilaian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_dasarpenilaian_100` BEFORE INSERT ON `dasarpenilaian` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_dasarpenilaian_100` BEFORE UPDATE ON `dasarpenilaian` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.dasarpenilaian <> OLD.dasarpenilaian THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'dasarpenilaian', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.dasarpenilaian, oldpk = OLD.dasarpenilaian;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_dasarpenilaian_100` AFTER DELETE ON `dasarpenilaian` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'dasarpenilaian', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `deleteddata`
--

DROP TABLE IF EXISTS `deleteddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleteddata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablename` varchar(100) NOT NULL,
  `rowid` bigint(20) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IX_deleteddata_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleteddata`
--

LOCK TABLES `deleteddata` WRITE;
/*!40000 ALTER TABLE `deleteddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleteddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departemen` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departemen` varchar(50) NOT NULL,
  `nipkepsek` varchar(20) NOT NULL,
  `urutan` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`departemen`),
  UNIQUE KEY `UX_departemen_replid` (`replid`),
  KEY `FK_departemen_pegawai` (`nipkepsek`),
  KEY `IX_departemen_ts` (`ts`,`issync`),
  CONSTRAINT `FK_departemen_pegawai` FOREIGN KEY (`nipkepsek`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
INSERT INTO `departemen` VALUES (11,'SMK Negeri 12 Malang','12312312',1,'smk 12 malang',1,NULL,NULL,NULL,'2013-06-15 05:27:58',34486,0),(15,'smkn coba 1','112233',8,'',1,NULL,NULL,NULL,'2013-06-17 16:07:36',52015,0),(14,'smkn coba 2','112233',9,'',1,NULL,NULL,NULL,'2013-06-17 16:07:38',42169,0);
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_departemen_100` BEFORE INSERT ON `departemen` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_departemen_100` BEFORE UPDATE ON `departemen` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.departemen <> OLD.departemen THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'departemen', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.departemen, oldpk = OLD.departemen;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_departemen_100` AFTER DELETE ON `departemen` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'departemen', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL,
  `statusguru` varchar(50) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_guru_pegawai` (`nip`),
  KEY `FK_guru_pelajaran` (`idpelajaran`),
  KEY `FK_guru_statusguru` (`statusguru`),
  KEY `IX_guru_ts` (`ts`,`issync`),
  CONSTRAINT `FK_guru_pegawai` FOREIGN KEY (`nip`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_guru_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_guru_statusguru` FOREIGN KEY (`statusguru`) REFERENCES `statusguru` (`status`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES (44,'1024',45,'Guru Tetap',1,'',NULL,NULL,NULL,'2010-03-02 03:06:17',34572,0),(45,'12312312',47,'Guru Tetap',1,'',NULL,NULL,NULL,'2013-05-27 15:45:58',57365,0),(47,'12345678',47,'Asisten',1,'',NULL,NULL,NULL,'2013-05-27 15:47:27',23194,0),(48,'12345678',46,'Guru Tetap',1,'',NULL,NULL,NULL,'2013-05-27 15:47:50',13452,0);
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_guru_100` BEFORE INSERT ON `guru` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_guru_100` BEFORE UPDATE ON `guru` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_guru_100` AFTER DELETE ON `guru` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'guru', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `infobobotnau`
--

DROP TABLE IF EXISTS `infobobotnau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infobobotnau` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idujian` int(10) unsigned NOT NULL,
  `idaturan` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_infobobotnau_ujian` (`idujian`),
  KEY `IX_infobobotnau_ts` (`ts`,`issync`),
  CONSTRAINT `FK_infobobotnau_ujian` FOREIGN KEY (`idujian`) REFERENCES `ujian` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infobobotnau`
--

LOCK TABLES `infobobotnau` WRITE;
/*!40000 ALTER TABLE `infobobotnau` DISABLE KEYS */;
/*!40000 ALTER TABLE `infobobotnau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infobobotujian`
--

DROP TABLE IF EXISTS `infobobotujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infobobotujian` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `idkelas` int(10) unsigned NOT NULL DEFAULT '0',
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idjenisujian` int(10) unsigned NOT NULL DEFAULT '0',
  `pilihan` tinyint(4) NOT NULL DEFAULT '0',
  `info` varchar(100) NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_infobobotujian_idpelajaran` (`idpelajaran`),
  KEY `FK_infobobotujian_idsemester` (`idsemester`),
  KEY `FK_infobobotujian_idjenis` (`idjenisujian`),
  KEY `FK_infobobotujian_kelas` (`idkelas`),
  KEY `IX_infobobotujian_ts` (`ts`,`issync`),
  CONSTRAINT `FK_infobobotujian_idjenis` FOREIGN KEY (`idjenisujian`) REFERENCES `jenisujian` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_infobobotujian_idpelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_infobobotujian_idsemester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_infobobotujian_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infobobotujian`
--

LOCK TABLES `infobobotujian` WRITE;
/*!40000 ALTER TABLE `infobobotujian` DISABLE KEYS */;
/*!40000 ALTER TABLE `infobobotujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infojadwal`
--

DROP TABLE IF EXISTS `infojadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infojadwal` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(100) NOT NULL DEFAULT '',
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `terlihat` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `idtahunajaran` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_infojadwal_tahunajaran` (`idtahunajaran`),
  KEY `IX_infojadwal_ts` (`ts`,`issync`),
  CONSTRAINT `FK_infojadwal_tahunajaran` FOREIGN KEY (`idtahunajaran`) REFERENCES `tahunajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infojadwal`
--

LOCK TABLES `infojadwal` WRITE;
/*!40000 ALTER TABLE `infojadwal` DISABLE KEYS */;
/*!40000 ALTER TABLE `infojadwal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_infojadwal_100` BEFORE INSERT ON `infojadwal` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_infojadwal_100` BEFORE UPDATE ON `infojadwal` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_infojadwal_100` AFTER DELETE ON `infojadwal` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'infojadwal', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `infonap`
--

DROP TABLE IF EXISTS `infonap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infonap` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idkelas` int(10) unsigned NOT NULL DEFAULT '0',
  `nilaimin` decimal(5,2) NOT NULL DEFAULT '0.00',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_infonap_pelajaran` (`idpelajaran`),
  KEY `FK_infonap_semester` (`idsemester`),
  KEY `FK_infonap_kelas` (`idkelas`),
  KEY `IX_infonap_ts` (`ts`,`issync`),
  CONSTRAINT `FK_infonap_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_infonap_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_infonap_semester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infonap`
--

LOCK TABLES `infonap` WRITE;
/*!40000 ALTER TABLE `infonap` DISABLE KEYS */;
INSERT INTO `infonap` VALUES (1,47,20,48,'70.00',NULL,NULL,NULL,'2013-07-03 05:06:05',18479,0),(2,46,20,48,'75.00',NULL,NULL,NULL,'2013-07-03 13:18:23',44855,0);
/*!40000 ALTER TABLE `infonap` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_infonap_100` BEFORE INSERT ON `infonap` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_infonap_100` BEFORE UPDATE ON `infonap` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_infonap_100` AFTER DELETE ON `infonap` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'infonap', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkelas` int(10) unsigned NOT NULL DEFAULT '0',
  `nipguru` varchar(20) NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `departemen` varchar(50) NOT NULL DEFAULT '',
  `infojadwal` int(10) unsigned NOT NULL DEFAULT '0',
  `hari` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jamke` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `njam` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sifat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `jam1` time NOT NULL DEFAULT '00:00:00',
  `jam2` time NOT NULL DEFAULT '00:00:00',
  `idjam1` int(10) unsigned NOT NULL DEFAULT '0',
  `idjam2` int(10) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_jadwal_departemen` (`departemen`),
  KEY `FK_jadwal_pegawai` (`nipguru`),
  KEY `FK_jadwal_jam1` (`idjam1`),
  KEY `FK_jadwal_jam2` (`idjam2`),
  KEY `FK_jadwal_infojadwal` (`infojadwal`),
  KEY `FK_jadwal_pelajaran` (`idpelajaran`),
  KEY `FK_jadwal_kelas` (`idkelas`),
  KEY `IX_jadwal_ts` (`ts`,`issync`),
  CONSTRAINT `FK_jadwal_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_infojadwal` FOREIGN KEY (`infojadwal`) REFERENCES `infojadwal` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_jam` FOREIGN KEY (`idjam1`) REFERENCES `jam` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_jam2` FOREIGN KEY (`idjam2`) REFERENCES `jam` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_pegawai` FOREIGN KEY (`nipguru`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_jadwal_100` BEFORE INSERT ON `jadwal` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_jadwal_100` BEFORE UPDATE ON `jadwal` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_jadwal_100` AFTER DELETE ON `jadwal` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'jadwal', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jam`
--

DROP TABLE IF EXISTS `jam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jam` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jamke` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `departemen` varchar(50) NOT NULL DEFAULT '',
  `jam1` time NOT NULL DEFAULT '00:00:00',
  `jam2` time NOT NULL DEFAULT '00:00:00',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_jam_departemen` (`departemen`),
  KEY `IX_jam_ts` (`ts`,`issync`),
  CONSTRAINT `FK_jam_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jam`
--

LOCK TABLES `jam` WRITE;
/*!40000 ALTER TABLE `jam` DISABLE KEYS */;
INSERT INTO `jam` VALUES (34,1,'SMK Negeri 12 Malang','06:30:00','08:00:00',NULL,NULL,NULL,'2010-03-02 03:06:17',52283,0),(35,2,'SMK Negeri 12 Malang','08:00:00','09:30:00',NULL,NULL,NULL,'2010-03-02 03:06:17',40376,0),(36,3,'SMK Negeri 12 Malang','09:30:00','10:00:00',NULL,NULL,NULL,'2010-03-02 03:06:17',45031,0),(37,4,'SMK Negeri 12 Malang','10:30:00','12:00:00',NULL,NULL,NULL,'2010-03-02 03:06:17',38498,0),(38,5,'SMK Negeri 12 Malang','12:00:00','13:30:00',NULL,NULL,NULL,'2010-03-02 03:06:17',57397,0),(39,6,'SMK Negeri 12 Malang','13:30:00','15:00:00',NULL,NULL,NULL,'2010-03-02 03:06:17',40428,0);
/*!40000 ALTER TABLE `jam` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_jam_100` BEFORE INSERT ON `jam` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_jam_100` BEFORE UPDATE ON `jam` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_jam_100` AFTER DELETE ON `jam` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'jam', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jenismutasi`
--

DROP TABLE IF EXISTS `jenismutasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenismutasi` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenismutasi` varchar(45) NOT NULL DEFAULT '',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_jenismutasi_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenismutasi`
--

LOCK TABLES `jenismutasi` WRITE;
/*!40000 ALTER TABLE `jenismutasi` DISABLE KEYS */;
INSERT INTO `jenismutasi` VALUES (2,'Pindah Sekolah','',NULL,NULL,NULL,'2010-03-02 03:06:17',29948,0),(3,'Dikeluarkan','Sekedar contoh. Menu ini mengatur jenis-jenis mutasi siswa. Ubah atau tambahkan data ini sesuai dengan jenis-jenis mutasi siswa yang terjadi.',NULL,NULL,NULL,'2010-03-02 03:06:17',28455,0),(4,'Mengundurkan Diri','',NULL,NULL,NULL,'2010-03-02 03:06:17',52431,0),(5,'Meninggal Dunia','',NULL,NULL,NULL,'2010-03-02 03:06:17',45730,0),(6,'Pindah Tempat Tinggal','',NULL,NULL,NULL,'2010-03-02 03:06:17',5828,0);
/*!40000 ALTER TABLE `jenismutasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenisujian`
--

DROP TABLE IF EXISTS `jenisujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenisujian` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenisujian` varchar(50) NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_jenisujian_pelajaran` (`idpelajaran`),
  KEY `IX_jenisujian_ts` (`ts`,`issync`),
  CONSTRAINT `FK_jenisujian_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenisujian`
--

LOCK TABLES `jenisujian` WRITE;
/*!40000 ALTER TABLE `jenisujian` DISABLE KEYS */;
INSERT INTO `jenisujian` VALUES (108,'PR',45,'Sekedar contoh. Menu ini mengatur jenis-jenis ujian untuk pengambilan nilai siswa pada setiap pelajaran di sekolah. Ubah atau tambahkan data ini sesuai dengan jenis-jenis ujian yang digunakan di sekolah.','PR',NULL,NULL,'2010-04-16 01:55:23',32036,0),(109,'praktik',47,'','ptk',NULL,NULL,'2013-05-27 15:49:01',12025,0),(110,'teori',47,'','tri',NULL,NULL,'2013-05-27 15:49:15',29332,0),(111,'uas',47,'','uas',NULL,NULL,'2013-05-27 15:49:28',35771,0),(112,'praktek',46,'','prtk',NULL,NULL,'2013-07-02 14:12:40',51645,0),(113,'teori',46,'','teo',NULL,NULL,'2013-07-02 14:13:03',52391,0),(114,'uts',46,'','uts',NULL,NULL,'2013-05-27 15:50:14',3753,0),(115,'uas',46,'','uas',NULL,NULL,'2013-05-27 15:50:26',32640,0);
/*!40000 ALTER TABLE `jenisujian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_jenisujian_100` BEFORE INSERT ON `jenisujian` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_jenisujian_100` BEFORE UPDATE ON `jenisujian` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_jenisujian_100` AFTER DELETE ON `jenisujian` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'jenisujian', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kalenderakademik`
--

DROP TABLE IF EXISTS `kalenderakademik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalenderakademik` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kalender` varchar(50) NOT NULL DEFAULT '',
  `aktif` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `terlihat` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `idtahunajaran` int(10) unsigned NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_kalenderakademik_tahunajaran` (`idtahunajaran`),
  KEY `FK_kalenderakademik_departemen` (`departemen`),
  KEY `IX_kalenderakademik_ts` (`ts`,`issync`),
  CONSTRAINT `FK_kalenderakademik_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_kalenderakademik_tahunajaran` FOREIGN KEY (`idtahunajaran`) REFERENCES `tahunajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalenderakademik`
--

LOCK TABLES `kalenderakademik` WRITE;
/*!40000 ALTER TABLE `kalenderakademik` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalenderakademik` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kalenderakademik_100` BEFORE INSERT ON `kalenderakademik` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kalenderakademik_100` BEFORE UPDATE ON `kalenderakademik` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kalenderakademik_100` AFTER DELETE ON `kalenderakademik` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kalenderakademik', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kejadianpenting`
--

DROP TABLE IF EXISTS `kejadianpenting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kejadianpenting` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkriteria` int(10) unsigned NOT NULL DEFAULT '0',
  `nis` varchar(15) NOT NULL DEFAULT '',
  `nip` varchar(15) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kejadian` text NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_kejadianpenting_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kejadianpenting`
--

LOCK TABLES `kejadianpenting` WRITE;
/*!40000 ALTER TABLE `kejadianpenting` DISABLE KEYS */;
/*!40000 ALTER TABLE `kejadianpenting` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kejadianpenting_100` BEFORE INSERT ON `kejadianpenting` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kejadianpenting_100` BEFORE UPDATE ON `kejadianpenting` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kejadianpenting_100` AFTER DELETE ON `kejadianpenting` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kejadianpenting', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) NOT NULL,
  `idtahunajaran` int(10) unsigned NOT NULL,
  `kapasitas` int(10) unsigned NOT NULL,
  `nipwali` varchar(20) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `idtingkat` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_kelas_pegawai` (`nipwali`),
  KEY `FK_kelas_tahunajaran` (`idtahunajaran`),
  KEY `FK_kelas_tingkat` (`idtingkat`),
  KEY `IX_kelas_ts` (`ts`,`issync`),
  CONSTRAINT `FK_kelas_pegawai` FOREIGN KEY (`nipwali`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_kelas_tahunajaran` FOREIGN KEY (`idtahunajaran`) REFERENCES `tahunajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_kelas_tingkat` FOREIGN KEY (`idtingkat`) REFERENCES `tingkat` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (46,'TKJ 3',20,50,'12312312',1,'',26,NULL,NULL,NULL,'2013-05-27 15:34:08',17056,0),(47,'RPL 1',20,35,'12345678',1,'',26,NULL,NULL,NULL,'2013-05-27 15:34:39',26037,0),(48,'MM 1',20,33,'12312312',1,'',26,NULL,NULL,NULL,'2013-05-28 06:41:51',553,0),(49,'TKJ 3',20,35,'12345678',1,'',27,NULL,NULL,NULL,'2013-05-28 06:45:49',43945,0),(50,'TKJ 3',22,33,'112233',1,'',27,NULL,NULL,NULL,'2013-06-17 14:41:27',32736,0);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kelas_100` BEFORE INSERT ON `kelas` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kelas_100` BEFORE UPDATE ON `kelas` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kelas_100` AFTER DELETE ON `kelas` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kelas', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kelompokcalonsiswa`
--

DROP TABLE IF EXISTS `kelompokcalonsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelompokcalonsiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kelompok` varchar(100) NOT NULL,
  `idproses` int(10) unsigned NOT NULL,
  `kapasitas` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_kelompokcalonsiswa_prosespenerimaansiswa` (`idproses`),
  KEY `IX_kelompokcalonsiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_kelompokcalonsiswa_prosespenerimaansiswa` FOREIGN KEY (`idproses`) REFERENCES `prosespenerimaansiswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelompokcalonsiswa`
--

LOCK TABLES `kelompokcalonsiswa` WRITE;
/*!40000 ALTER TABLE `kelompokcalonsiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `kelompokcalonsiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kelompokcalonsiswa_100` BEFORE INSERT ON `kelompokcalonsiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kelompokcalonsiswa_100` BEFORE UPDATE ON `kelompokcalonsiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kelompokcalonsiswa_100` AFTER DELETE ON `kelompokcalonsiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kelompokcalonsiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `komennap`
--

DROP TABLE IF EXISTS `komennap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komennap` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `idinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `komentar` text NOT NULL,
  `predikat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_komennap_infonap` (`idinfo`),
  KEY `FK_komennap_siswa` (`nis`),
  KEY `IX_komennap_ts` (`ts`,`issync`),
  CONSTRAINT `FK_komennap_infonap` FOREIGN KEY (`idinfo`) REFERENCES `infonap` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_komennap_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komennap`
--

LOCK TABLES `komennap` WRITE;
/*!40000 ALTER TABLE `komennap` DISABLE KEYS */;
INSERT INTO `komennap` VALUES (1,'111/555/888',1,'',2,NULL,NULL,NULL,'2013-06-16 04:36:00',40321,0),(2,'123/456/789',1,'',3,NULL,NULL,NULL,'2013-07-03 05:06:05',10017,0),(3,'147/258/369',1,'',4,NULL,NULL,NULL,'2013-07-03 05:06:05',24018,0),(4,'1101',2,'<p>tingkakan prestasi</p>',3,NULL,NULL,NULL,'2013-07-03 13:19:04',18798,0),(5,'123/456/789',2,'',2,NULL,NULL,NULL,'2013-07-03 13:18:24',18997,0),(6,'147/258/369',2,'',2,NULL,NULL,NULL,'2013-07-03 13:18:24',60697,0);
/*!40000 ALTER TABLE `komennap` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_komennap_100` BEFORE INSERT ON `komennap` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_komennap_100` BEFORE UPDATE ON `komennap` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_komennap_100` AFTER DELETE ON `komennap` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'komennap', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kondisisiswa`
--

DROP TABLE IF EXISTS `kondisisiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kondisisiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(100) NOT NULL,
  `urutan` tinyint(2) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kondisi`),
  UNIQUE KEY `UX_kondisisiswa` (`replid`),
  KEY `IX_kondisisiswa_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kondisisiswa`
--

LOCK TABLES `kondisisiswa` WRITE;
/*!40000 ALTER TABLE `kondisisiswa` DISABLE KEYS */;
INSERT INTO `kondisisiswa` VALUES (8,'Berkecukupan',1,NULL,NULL,NULL,'2010-03-02 03:06:17',30009,0),(9,'Kurang Mampu',2,NULL,NULL,NULL,'2010-03-02 03:06:17',54640,0);
/*!40000 ALTER TABLE `kondisisiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kondisisiswa_100` BEFORE INSERT ON `kondisisiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kondisisiswa_100` BEFORE UPDATE ON `kondisisiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.kondisi <> OLD.kondisi THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kondisisiswa', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.kondisi, oldpk = OLD.kondisi;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kondisisiswa_100` AFTER DELETE ON `kondisisiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kondisisiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kriteriakejadian`
--

DROP TABLE IF EXISTS `kriteriakejadian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kriteriakejadian` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(50) NOT NULL DEFAULT '',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_kriteriakejadian_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kriteriakejadian`
--

LOCK TABLES `kriteriakejadian` WRITE;
/*!40000 ALTER TABLE `kriteriakejadian` DISABLE KEYS */;
/*!40000 ALTER TABLE `kriteriakejadian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kriteriakejadian_100` BEFORE INSERT ON `kriteriakejadian` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kriteriakejadian_100` BEFORE UPDATE ON `kriteriakejadian` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kriteriakejadian_100` AFTER DELETE ON `kriteriakejadian` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'kriteriakejadian', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mutasisiswa`
--

DROP TABLE IF EXISTS `mutasisiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mutasisiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(15) NOT NULL DEFAULT '',
  `jenismutasi` int(10) unsigned NOT NULL DEFAULT '0',
  `tglmutasi` date NOT NULL DEFAULT '0000-00-00',
  `keterangan` varchar(255) DEFAULT NULL,
  `departemen` varchar(50) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_mutasisiswa_jenismutasi` (`jenismutasi`),
  KEY `FK_mutasisiswa_siswa` (`nis`),
  KEY `FK_mutasisiswa_departemen` (`departemen`),
  KEY `IX_mutasisiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_mutasisiswa_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mutasisiswa_jenismutasi` FOREIGN KEY (`jenismutasi`) REFERENCES `jenismutasi` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mutasisiswa_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutasisiswa`
--

LOCK TABLES `mutasisiswa` WRITE;
/*!40000 ALTER TABLE `mutasisiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mutasisiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nap`
--

DROP TABLE IF EXISTS `nap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nap` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL DEFAULT '',
  `idaturan` int(10) unsigned NOT NULL DEFAULT '0',
  `idinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `nilaiangka` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nilaihuruf` varchar(2) NOT NULL DEFAULT '',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_nap_infonap` (`idinfo`),
  KEY `FK_nap_siswa` (`nis`),
  KEY `FK_nap_aturannhb` (`idaturan`),
  KEY `IX_nap_ts` (`ts`,`issync`),
  CONSTRAINT `FK_nap_aturannhb` FOREIGN KEY (`idaturan`) REFERENCES `aturannhb` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nap_infonap` FOREIGN KEY (`idinfo`) REFERENCES `infonap` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nap_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nap`
--

LOCK TABLES `nap` WRITE;
/*!40000 ALTER TABLE `nap` DISABLE KEYS */;
INSERT INTO `nap` VALUES (10,'1101',244,1,'0.00','',NULL,NULL,NULL,'2013-07-03 05:06:05',12742,0),(11,'1101',223,1,'0.00','D',NULL,NULL,NULL,'2013-07-03 05:06:05',49029,0),(12,'123/456/789',244,1,'0.00','',NULL,NULL,NULL,'2013-07-03 05:06:05',10331,0),(13,'123/456/789',223,1,'80.00','B',NULL,NULL,NULL,'2013-07-03 05:06:05',35625,0),(14,'147/258/369',244,1,'0.00','',NULL,NULL,NULL,'2013-07-03 05:06:05',16072,0),(15,'147/258/369',223,1,'90.00','A',NULL,NULL,NULL,'2013-07-03 05:06:05',39014,0),(16,'1101',232,2,'88.00','',NULL,NULL,NULL,'2013-07-03 13:18:24',43779,0),(17,'123/456/789',232,2,'77.00','',NULL,NULL,NULL,'2013-07-03 13:18:24',28185,0),(18,'147/258/369',232,2,'76.00','',NULL,NULL,NULL,'2013-07-03 13:18:24',10432,0);
/*!40000 ALTER TABLE `nap` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_nap_100` BEFORE INSERT ON `nap` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_nap_100` BEFORE UPDATE ON `nap` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_nap_100` AFTER DELETE ON `nap` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'nap', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nau`
--

DROP TABLE IF EXISTS `nau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nau` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `nis` varchar(20) NOT NULL,
  `idkelas` int(10) unsigned DEFAULT NULL,
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idjenis` int(10) unsigned NOT NULL DEFAULT '0',
  `nilaiAU` decimal(10,2) NOT NULL DEFAULT '0.00',
  `keterangan` varchar(255) DEFAULT NULL,
  `idaturan` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_nau_idpelajaran` (`idpelajaran`),
  KEY `FK_nau_nis` (`nis`),
  KEY `FK_nau_idsemester` (`idsemester`),
  KEY `FK_nau_idjenis` (`idjenis`),
  KEY `FK_nau_idaturan` (`idaturan`),
  KEY `FK_nau_kelas` (`idkelas`),
  KEY `IX_nau_ts` (`ts`,`issync`),
  CONSTRAINT `FK_nau_idaturan` FOREIGN KEY (`idaturan`) REFERENCES `aturannhb` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nau_idjenis` FOREIGN KEY (`idjenis`) REFERENCES `jenisujian` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nau_idpelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nau_idsemester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nau_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nau_nis` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nau`
--

LOCK TABLES `nau` WRITE;
/*!40000 ALTER TABLE `nau` DISABLE KEYS */;
/*!40000 ALTER TABLE `nau` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_nau_100` BEFORE INSERT ON `nau` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_nau_100` BEFORE UPDATE ON `nau` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_nau_100` AFTER DELETE ON `nau` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'nau', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nilaiujian`
--

DROP TABLE IF EXISTS `nilaiujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilaiujian` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idujian` int(10) unsigned NOT NULL DEFAULT '0',
  `nis` varchar(20) NOT NULL,
  `nilaiujian` decimal(10,2) NOT NULL DEFAULT '0.00',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_nilaiujian_idujian` (`idujian`),
  KEY `FK_nilaiujian_nis` (`nis`),
  KEY `IX_nilaiujian_ts` (`ts`,`issync`),
  CONSTRAINT `FK_nilaiujian_idujian` FOREIGN KEY (`idujian`) REFERENCES `ujian` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_nilaiujian_nis` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilaiujian`
--

LOCK TABLES `nilaiujian` WRITE;
/*!40000 ALTER TABLE `nilaiujian` DISABLE KEYS */;
INSERT INTO `nilaiujian` VALUES (1,1,'111/555/888','60.00','',NULL,NULL,NULL,'2013-06-16 04:36:59',56035,0),(2,1,'123/456/789','70.00','',NULL,NULL,NULL,'2013-06-16 04:36:59',13389,0),(3,1,'147/258/369','80.00','',NULL,NULL,NULL,'2013-06-16 04:36:59',29898,0),(4,2,'111/555/888','50.00','',NULL,NULL,NULL,'2013-06-16 04:37:55',9596,0),(5,2,'123/456/789','60.00','',NULL,NULL,NULL,'2013-06-16 04:37:55',59492,0),(6,2,'147/258/369','70.00','',NULL,NULL,NULL,'2013-06-16 04:37:55',6551,0),(7,3,'111/555/888','90.00','',NULL,NULL,NULL,'2013-06-16 04:38:52',55771,0),(8,3,'123/456/789','80.00','',NULL,NULL,NULL,'2013-06-16 04:38:52',26263,0),(9,3,'147/258/369','70.00','',NULL,NULL,NULL,'2013-06-16 04:38:52',29533,0),(10,1,'1101','90.00','',NULL,NULL,NULL,'2013-07-03 09:19:58',25820,0);
/*!40000 ALTER TABLE `nilaiujian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_nilaiujian_100` BEFORE INSERT ON `nilaiujian` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_nilaiujian_100` BEFORE UPDATE ON `nilaiujian` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_nilaiujian_100` AFTER DELETE ON `nilaiujian` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'nilaiujian', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pelajaran`
--

DROP TABLE IF EXISTS `pelajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelajaran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `sifat` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_daftarpelajaran_kode` (`kode`),
  KEY `FK_pelajaran_departemen` (`departemen`),
  KEY `IX_pelajaran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pelajaran_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelajaran`
--

LOCK TABLES `pelajaran` WRITE;
/*!40000 ALTER TABLE `pelajaran` DISABLE KEYS */;
INSERT INTO `pelajaran` VALUES (45,'FIS','Fisika','SMK Negeri 12 Malang',1,1,'',NULL,NULL,NULL,'2013-07-02 14:03:31',52115,0),(46,'bind','b Indonesia','SMK Negeri 12 Malang',1,1,'',NULL,NULL,NULL,'2013-05-27 15:45:11',46302,0),(47,'bing','b inggris','SMK Negeri 12 Malang',1,1,'',NULL,NULL,NULL,'2013-05-27 15:45:23',6854,0),(48,'bjep','b jepang','SMK Negeri 12 Malang',0,1,'',NULL,NULL,NULL,'2013-07-02 14:04:14',10120,0);
/*!40000 ALTER TABLE `pelajaran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_pelajaran_100` BEFORE INSERT ON `pelajaran` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_pelajaran_100` BEFORE UPDATE ON `pelajaran` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_pelajaran_100` AFTER DELETE ON `pelajaran` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'pelajaran', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phsiswa`
--

DROP TABLE IF EXISTS `phsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phsiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpresensi` int(10) unsigned NOT NULL,
  `nis` varchar(20) NOT NULL,
  `hadir` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ijin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sakit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cuti` smallint(5) unsigned NOT NULL DEFAULT '0',
  `alpa` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_phsiswa_siswa` (`nis`),
  KEY `FK_phsiswa_presensiharian` (`idpresensi`),
  KEY `IX_phsiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_phsiswa_presensiharian` FOREIGN KEY (`idpresensi`) REFERENCES `presensiharian` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_phsiswa_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phsiswa`
--

LOCK TABLES `phsiswa` WRITE;
/*!40000 ALTER TABLE `phsiswa` DISABLE KEYS */;
INSERT INTO `phsiswa` VALUES (7,3,'123/123/654',1,0,0,0,0,'',NULL,NULL,NULL,'2013-06-16 04:19:00',14632,0),(8,4,'123/123/654',1,0,0,0,0,'',NULL,NULL,NULL,'2013-06-16 04:19:22',23480,0),(9,5,'123/123/654',3,1,1,0,0,'',NULL,NULL,NULL,'2013-06-16 04:21:33',3960,0),(10,6,'123/123/654',0,1,0,0,0,'',NULL,NULL,NULL,'2013-06-16 04:22:22',36873,0),(11,7,'111/555/888',1,0,0,0,0,'',NULL,NULL,NULL,'2013-06-16 04:23:26',4115,0),(12,7,'123/456/789',0,1,0,0,0,'',NULL,NULL,NULL,'2013-06-16 04:23:26',29433,0),(13,7,'147/258/369',0,1,0,0,0,'',NULL,NULL,NULL,'2013-06-16 04:23:26',3762,0);
/*!40000 ALTER TABLE `phsiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_phsiswa_100` BEFORE INSERT ON `phsiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_phsiswa_100` BEFORE UPDATE ON `phsiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_phsiswa_100` AFTER DELETE ON `phsiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'phsiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ppsiswa`
--

DROP TABLE IF EXISTS `ppsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ppsiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpp` int(10) unsigned NOT NULL DEFAULT '0',
  `nis` varchar(20) NOT NULL,
  `statushadir` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 Hadir; 1 Sakit; 2 Ijin; 3 Alpa; 4 Cuti',
  `catatan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_ppsiswa_presensipelajaran` (`idpp`),
  KEY `FK_ppsiswa_siswa` (`nis`),
  KEY `IX_ppsiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_ppsiswa_presensipelajaran` FOREIGN KEY (`idpp`) REFERENCES `presensipelajaran` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ppsiswa_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Presensi kehadiran siswa dalam pelajaran';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppsiswa`
--

LOCK TABLES `ppsiswa` WRITE;
/*!40000 ALTER TABLE `ppsiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ppsiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_ppsiswa_100` BEFORE INSERT ON `ppsiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_ppsiswa_ppsiswahadir_100` AFTER INSERT ON `ppsiswa` FOR EACH ROW BEGIN
	DECLARE xidkelas INT;
	DECLARE xidsemester INT;
	DECLARE xidpelajaran INT;
	DECLARE xgurupelajaran VARCHAR(20);
	DECLARE xbulan INT;
	DECLARE xtahun INT;
	DECLARE xcount INT;
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		IF NEW.statushadir = 0 THEN
		
			SELECT idkelas, idsemester, idpelajaran, gurupelajaran, MONTH(tanggal), YEAR(tanggal)
			  INTO xidkelas, xidsemester, xidpelajaran, xgurupelajaran, xbulan, xtahun
			  FROM jbsakad.presensipelajaran WHERE replid = NEW.idpp;

			INSERT INTO jbsakad.ppsiswahadir 
			SET nis = NEW.nis, idkelas = xidkelas, idsemester = xidsemester,
				idpelajaran = xidpelajaran, gurupelajaran = xgurupelajaran, bulan = xbulan, tahun = xtahun, 
				hadir = 1, token = FLOOR(1 + (RAND() * 65530))
			ON DUPLICATE KEY
			UPDATE hadir = hadir + 1, issync = 0, ts = CURRENT_TIMESTAMP;
		
		END IF;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_ppsiswa_100` BEFORE UPDATE ON `ppsiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_ppsiswa_ppsiswahadir_100` AFTER UPDATE ON `ppsiswa` FOR EACH ROW BEGIN
	DECLARE xidkelas INT;
	DECLARE xidsemester INT;
	DECLARE xidpelajaran INT;
	DECLARE xgurupelajaran VARCHAR(20);
	DECLARE xbulan INT;
	DECLARE xtahun INT;
	DECLARE xcount INT;
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		IF NEW.statushadir = 0 AND OLD.statushadir <> 0 THEN
		
			SELECT idkelas, idsemester, idpelajaran, gurupelajaran, MONTH(tanggal), YEAR(tanggal)
			  INTO xidkelas, xidsemester, xidpelajaran, xgurupelajaran, xbulan, xtahun
				FROM jbsakad.presensipelajaran WHERE replid = NEW.idpp;

			INSERT INTO jbsakad.ppsiswahadir 
			SET nis = NEW.nis, idkelas = xidkelas, idsemester = xidsemester,
				idpelajaran = xidpelajaran, gurupelajaran = xgurupelajaran, bulan = xbulan, tahun = xtahun, 
				hadir = 1, token = FLOOR(1 + (RAND() * 65530))
			ON DUPLICATE KEY
			UPDATE hadir = hadir + 1, issync = 0, ts = CURRENT_TIMESTAMP;
			
		ElSEIF NEW.statushadir <> 0 AND OLD.statushadir = 0 THEN
		
			SELECT idkelas, idsemester, idpelajaran, gurupelajaran, MONTH(tanggal), YEAR(tanggal)
			  INTO xidkelas, xidsemester, xidpelajaran, xgurupelajaran, xbulan, xtahun
				FROM jbsakad.presensipelajaran WHERE replid = NEW.idpp;
			
			UPDATE jbsakad.ppsiswahadir SET hadir = hadir - 1, issync = 0, ts = CURRENT_TIMESTAMP
			  WHERE nis = NEW.nis AND idkelas = xidkelas AND 
			    idsemester = xidsemester AND idpelajaran = xidpelajaran AND
			    gurupelajaran = xgurupelajaran AND bulan = xbulan AND tahun = xtahun;
				
		END IF;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trdel_ppsiswa_ppsiswahadir_100` AFTER DELETE ON `ppsiswa` FOR EACH ROW BEGIN
	DECLARE xidkelas INT;
	DECLARE xidsemester INT;
	DECLARE xidpelajaran INT;
	DECLARE xgurupelajaran VARCHAR(20);
	DECLARE xbulan INT;
	DECLARE xtahun INT;
	DECLARE xcount INT;
	
	IF @DISABLE_TRIGER IS NULL THEN
		IF OLD.statushadir = 0 THEN
			SELECT idkelas, idsemester, idpelajaran, gurupelajaran, MONTH(tanggal), YEAR(tanggal)
			  INTO xidkelas, xidsemester, xidpelajaran, xgurupelajaran, xbulan, xtahun
				FROM jbsakad.presensipelajaran WHERE replid = OLD.idpp;
			
			UPDATE jbsakad.ppsiswahadir SET hadir = hadir - 1, issync = 0, ts = CURRENT_TIMESTAMP
			  WHERE nis = OLD.nis AND idkelas = xidkelas AND 
			    idsemester = xidsemester AND idpelajaran = xidpelajaran AND
			    gurupelajaran = xgurupelajaran AND bulan = xbulan AND tahun = xtahun;							
		END IF;
		
		INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), 
			dbname = 'jbsakad', tablename = 'ppsiswa', dataid = OLD.replid, datatoken = OLD.token;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ppsiswahadir`
--

DROP TABLE IF EXISTS `ppsiswahadir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ppsiswahadir` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `idkelas` int(10) unsigned NOT NULL,
  `idsemester` int(10) unsigned NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL,
  `gurupelajaran` varchar(20) NOT NULL,
  `bulan` tinyint(1) unsigned NOT NULL,
  `tahun` smallint(5) unsigned NOT NULL,
  `hadir` smallint(5) unsigned NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `UX_ppsiswahadir` (`nis`,`idkelas`,`idsemester`,`idpelajaran`,`gurupelajaran`,`bulan`,`tahun`),
  KEY `FK_ppsiswahadir_siswa` (`nis`),
  KEY `FK_ppsiswahadir_kelas` (`idkelas`),
  KEY `FK_ppsiswahadir_semester` (`idsemester`),
  KEY `FK_ppsiswahadir_pelajaran` (`idpelajaran`),
  KEY `FK_ppsiswahadir_pegawai` (`gurupelajaran`),
  CONSTRAINT `FK_ppsiswahadir_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ppsiswahadir_pegawai` FOREIGN KEY (`gurupelajaran`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ppsiswahadir_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ppsiswahadir_semester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ppsiswahadir_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppsiswahadir`
--

LOCK TABLES `ppsiswahadir` WRITE;
/*!40000 ALTER TABLE `ppsiswahadir` DISABLE KEYS */;
/*!40000 ALTER TABLE `ppsiswahadir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presensiharian`
--

DROP TABLE IF EXISTS `presensiharian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presensiharian` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkelas` int(10) unsigned NOT NULL,
  `idsemester` int(10) unsigned NOT NULL,
  `tanggal1` date NOT NULL,
  `tanggal2` date NOT NULL,
  `hariaktif` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_presensiharian_semester` (`idsemester`),
  KEY `IX_presensiharian_tanggal1` (`tanggal1`),
  KEY `IX_presensiharian_tanggal2` (`tanggal2`),
  KEY `FK_presensiharian_kelas` (`idkelas`),
  KEY `IX_presensiharian_ts` (`ts`,`issync`),
  CONSTRAINT `FK_presensiharian_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_presensiharian_semester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presensiharian`
--

LOCK TABLES `presensiharian` WRITE;
/*!40000 ALTER TABLE `presensiharian` DISABLE KEYS */;
INSERT INTO `presensiharian` VALUES (3,49,20,'2013-06-16','2013-06-16',1,NULL,NULL,NULL,'2013-06-16 04:19:00',26444,0),(4,49,20,'2013-06-15','2013-06-15',1,NULL,NULL,NULL,'2013-06-16 04:19:22',61449,0),(5,49,20,'2013-06-10','2013-06-14',5,NULL,NULL,NULL,'2013-06-16 04:21:33',16327,0),(6,49,20,'2013-06-05','2013-06-05',1,NULL,NULL,NULL,'2013-06-16 04:22:22',54482,0),(7,48,20,'2013-06-14','2013-06-14',1,NULL,NULL,NULL,'2013-06-16 04:23:26',62576,0);
/*!40000 ALTER TABLE `presensiharian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_presensiharian_100` BEFORE INSERT ON `presensiharian` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_presensiharian_100` BEFORE UPDATE ON `presensiharian` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_presensiharian_100` AFTER DELETE ON `presensiharian` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'presensiharian', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `presensipelajaran`
--

DROP TABLE IF EXISTS `presensipelajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presensipelajaran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkelas` int(10) unsigned NOT NULL DEFAULT '0',
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `jam` time NOT NULL DEFAULT '00:00:00',
  `gurupelajaran` varchar(15) NOT NULL DEFAULT '',
  `keterangan` varchar(255) DEFAULT NULL,
  `materi` varchar(1000) NOT NULL DEFAULT '',
  `objektif` varchar(255) DEFAULT NULL,
  `refleksi` varchar(255) DEFAULT NULL,
  `rencana` varchar(255) DEFAULT NULL,
  `keterlambatan` tinyint(4) DEFAULT NULL,
  `jumlahjam` decimal(4,2) NOT NULL DEFAULT '0.00',
  `jenisguru` int(10) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_presensipelajaran_semester` (`idsemester`),
  KEY `FK_presensipelajaran_jenisguru` (`jenisguru`),
  KEY `FK_presensipelajaran_pelajaran` (`idpelajaran`),
  KEY `FK_presensipelajaran_pegawai` (`gurupelajaran`),
  KEY `FK_presensipelajaran_kelas` (`idkelas`),
  KEY `IX_presensipelajaran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_presensipelajaran_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_presensipelajaran_pegawai` FOREIGN KEY (`gurupelajaran`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_presensipelajaran_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_presensipelajaran_semester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_presensipelajaran_statusguru` FOREIGN KEY (`jenisguru`) REFERENCES `statusguru` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Informasi presensi kehadiran guru dan siswa per mata pelajar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presensipelajaran`
--

LOCK TABLES `presensipelajaran` WRITE;
/*!40000 ALTER TABLE `presensipelajaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `presensipelajaran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_presensipelajaran_100` BEFORE INSERT ON `presensipelajaran` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_presensipelajaran_100` BEFORE UPDATE ON `presensipelajaran` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_presensipelajaran_100` AFTER DELETE ON `presensipelajaran` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'presensipelajaran', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prosespenerimaansiswa`
--

DROP TABLE IF EXISTS `prosespenerimaansiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prosespenerimaansiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proses` varchar(100) NOT NULL,
  `kodeawalan` varchar(5) NOT NULL,
  `departemen` varchar(20) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_prosespenerimaansiswa_departemen` (`departemen`),
  KEY `IX_prosespenerimaansiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_prosespenerimaansiswa_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prosespenerimaansiswa`
--

LOCK TABLES `prosespenerimaansiswa` WRITE;
/*!40000 ALTER TABLE `prosespenerimaansiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `prosespenerimaansiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_prosespenerimaansiswa_100` BEFORE INSERT ON `prosespenerimaansiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_prosespenerimaansiswa_100` BEFORE UPDATE ON `prosespenerimaansiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_prosespenerimaansiswa_100` AFTER DELETE ON `prosespenerimaansiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'prosespenerimaansiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ratauk`
--

DROP TABLE IF EXISTS `ratauk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratauk` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkelas` int(10) unsigned NOT NULL DEFAULT '0',
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idujian` int(10) unsigned NOT NULL DEFAULT '0',
  `nilaiRK` decimal(10,2) NOT NULL DEFAULT '0.00',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_ratauk_idsemester` (`idsemester`),
  KEY `FK_ratauk_idujian` (`idujian`),
  KEY `FK_ratauk_kelas` (`idkelas`),
  KEY `IX_ratauk_ts` (`ts`,`issync`),
  CONSTRAINT `FK_ratauk_idsemester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ratauk_idujian` FOREIGN KEY (`idujian`) REFERENCES `ujian` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ratauk_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratauk`
--

LOCK TABLES `ratauk` WRITE;
/*!40000 ALTER TABLE `ratauk` DISABLE KEYS */;
INSERT INTO `ratauk` VALUES (1,48,20,1,'75.00',NULL,NULL,NULL,NULL,'2013-07-03 13:14:43',39386,0),(2,48,20,2,'60.00',NULL,NULL,NULL,NULL,'2013-07-02 15:17:07',37283,0),(3,48,20,3,'80.00',NULL,NULL,NULL,NULL,'2013-07-03 05:05:20',63961,0);
/*!40000 ALTER TABLE `ratauk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_ratauk_100` BEFORE INSERT ON `ratauk` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_ratauk_100` BEFORE UPDATE ON `ratauk` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_ratauk_100` AFTER DELETE ON `ratauk` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'ratauk', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rataus`
--

DROP TABLE IF EXISTS `rataus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rataus` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idkelas` int(10) unsigned DEFAULT NULL,
  `idjenis` int(10) unsigned NOT NULL DEFAULT '0',
  `rataUS` decimal(10,2) NOT NULL DEFAULT '0.00',
  `keterangan` varchar(255) DEFAULT NULL,
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `idaturan` int(10) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_rataus_nis` (`nis`),
  KEY `FK_rataus_idsemester` (`idsemester`),
  KEY `FK_rataus_jenis` (`idjenis`),
  KEY `FK_rataus_idpelajaran` (`idpelajaran`),
  KEY `FK_rataus_kelas` (`idkelas`),
  KEY `IX_rataus_ts` (`ts`,`issync`),
  CONSTRAINT `FK_rataus_idpelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_rataus_idsemester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_rataus_jenis` FOREIGN KEY (`idjenis`) REFERENCES `jenisujian` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_rataus_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_rataus_nis` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rataus`
--

LOCK TABLES `rataus` WRITE;
/*!40000 ALTER TABLE `rataus` DISABLE KEYS */;
INSERT INTO `rataus` VALUES (1,'111/555/888',20,48,109,'60.00',NULL,47,223,NULL,NULL,NULL,'2013-06-19 15:19:43',61999,0),(2,'123/456/789',20,48,109,'70.00',NULL,47,223,NULL,NULL,NULL,'2013-07-03 13:14:43',60777,0),(3,'147/258/369',20,48,109,'80.00',NULL,47,223,NULL,NULL,NULL,'2013-07-03 13:14:43',52356,0),(4,'111/555/888',20,48,110,'50.00',NULL,47,224,NULL,NULL,NULL,'2013-06-16 04:37:56',18193,0),(5,'123/456/789',20,48,110,'60.00',NULL,47,224,NULL,NULL,NULL,'2013-07-02 15:17:07',44646,0),(6,'147/258/369',20,48,110,'70.00',NULL,47,224,NULL,NULL,NULL,'2013-07-02 15:17:07',37592,0),(7,'111/555/888',20,48,111,'90.00',NULL,47,225,NULL,NULL,NULL,'2013-06-16 04:38:53',39561,0),(8,'123/456/789',20,48,111,'80.00',NULL,47,225,NULL,NULL,NULL,'2013-07-03 05:05:20',5919,0),(9,'147/258/369',20,48,111,'70.00',NULL,47,225,NULL,NULL,NULL,'2013-07-03 05:05:20',41971,0),(10,'1101',20,48,109,'90.00',NULL,47,223,NULL,NULL,NULL,'2013-07-03 13:14:43',44830,0),(11,'1101',20,48,110,'0.00',NULL,47,224,NULL,NULL,NULL,'2013-07-02 15:17:07',58266,0),(12,'1101',20,48,111,'0.00',NULL,47,225,NULL,NULL,NULL,'2013-07-03 05:05:20',28662,0);
/*!40000 ALTER TABLE `rataus` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_rataus_100` BEFORE INSERT ON `rataus` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_rataus_100` BEFORE UPDATE ON `rataus` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_rataus_100` AFTER DELETE ON `rataus` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'rataus', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `riwayatdeptsiswa`
--

DROP TABLE IF EXISTS `riwayatdeptsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayatdeptsiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `mulai` date NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '0 -> Baru, 1 -> Siswa Pindah Departemen',
  `keterangan` varchar(255) DEFAULT NULL,
  `nislama` varchar(20) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_riwayatdeptsiswa_departemen` (`departemen`),
  KEY `FK_riwayatdeptsiswa_siswa` (`nis`),
  KEY `IX_riwayatdeptsiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_riwayatdeptsiswa_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON UPDATE CASCADE,
  CONSTRAINT `FK_riwayatdeptsiswa_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayatdeptsiswa`
--

LOCK TABLES `riwayatdeptsiswa` WRITE;
/*!40000 ALTER TABLE `riwayatdeptsiswa` DISABLE KEYS */;
INSERT INTO `riwayatdeptsiswa` VALUES (1,'321/321/221','SMK Negeri 12 Malang','2013-05-27',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-27 15:39:14',18749,0),(2,'111/555/888','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:01:28',49252,0),(3,'123/456/789','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:02:54',9261,0),(4,'147/258/369','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:08:09',5087,0),(5,'123/123/456','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:09:39',51196,0),(6,'333/333/333','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:10:37',9567,0),(7,'111/444/777','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:13:36',3554,0),(8,'111/555/777','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:15:15',35755,0),(9,'112/221/121','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:16:17',36927,0),(10,'123/123/654','SMK Negeri 12 Malang','2013-05-28',1,0,NULL,NULL,NULL,NULL,NULL,'2013-05-28 07:17:34',61538,0),(11,'1101','SMK Negeri 12 Malang','2013-06-18',1,0,NULL,NULL,NULL,NULL,NULL,'2013-06-18 08:15:08',11809,0);
/*!40000 ALTER TABLE `riwayatdeptsiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_riwayatdeptsiswa_100` BEFORE INSERT ON `riwayatdeptsiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_riwayatdeptsiswa_100` BEFORE UPDATE ON `riwayatdeptsiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_riwayatdeptsiswa_100` AFTER DELETE ON `riwayatdeptsiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'riwayatdeptsiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `riwayatkelassiswa`
--

DROP TABLE IF EXISTS `riwayatkelassiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayatkelassiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `idkelas` int(10) unsigned NOT NULL,
  `mulai` date NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '0 -> Baru, 1 -> Naik, 2 -> Tidak Naik, 3-> Pindah',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_riwayatkelassiswa_siswa` (`nis`),
  KEY `FK_riwayatkelassiswa_kelas` (`idkelas`),
  KEY `IX_riwayatkelassiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_riwayatkelassiswa_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_riwayatkelassiswa_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayatkelassiswa`
--

LOCK TABLES `riwayatkelassiswa` WRITE;
/*!40000 ALTER TABLE `riwayatkelassiswa` DISABLE KEYS */;
INSERT INTO `riwayatkelassiswa` VALUES (1,'321/321/221',47,'2013-05-27',1,0,NULL,NULL,NULL,NULL,'2013-05-27 15:39:14',62555,0),(2,'111/555/888',48,'2013-05-28',0,0,NULL,NULL,NULL,NULL,'2013-06-20 13:36:18',4934,0),(3,'123/456/789',48,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:02:54',55487,0),(4,'147/258/369',48,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:08:09',239,0),(5,'123/123/456',47,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:09:39',65430,0),(6,'333/333/333',47,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:10:37',15886,0),(7,'111/444/777',46,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:13:36',37821,0),(8,'111/555/777',46,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:15:15',20347,0),(9,'112/221/121',46,'2013-05-28',0,0,NULL,NULL,NULL,NULL,'2013-06-20 13:36:57',8039,0),(10,'123/123/654',49,'2013-05-28',1,0,NULL,NULL,NULL,NULL,'2013-05-28 07:17:34',37879,0),(11,'1101',48,'2013-06-18',1,0,NULL,NULL,NULL,NULL,'2013-06-18 08:15:08',15537,0),(12,'111/555/888',50,'2013-06-20',1,1,'',NULL,NULL,NULL,'2013-06-20 13:36:18',23126,0),(13,'112/221/121',50,'2013-06-20',1,1,'',NULL,NULL,NULL,'2013-06-20 13:36:57',5820,0);
/*!40000 ALTER TABLE `riwayatkelassiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_riwayatkelassiswa_100` BEFORE INSERT ON `riwayatkelassiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_riwayatkelassiswa_100` BEFORE UPDATE ON `riwayatkelassiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_riwayatkelassiswa_100` AFTER DELETE ON `riwayatkelassiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'riwayatkelassiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rpp`
--

DROP TABLE IF EXISTS `rpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpp` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtingkat` int(10) unsigned NOT NULL,
  `idsemester` int(10) unsigned NOT NULL,
  `idpelajaran` int(10) unsigned NOT NULL,
  `koderpp` varchar(20) NOT NULL,
  `rpp` varchar(255) NOT NULL,
  `deskripsi` text,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_rpp_tingkat` (`idtingkat`),
  KEY `FK_rpp_semester` (`idsemester`),
  KEY `FK_rpp_pelajaran` (`idpelajaran`),
  KEY `IX_rpp_ts` (`ts`,`issync`),
  CONSTRAINT `FK_rpp_pelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rpp_semester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rpp_tingkat` FOREIGN KEY (`idtingkat`) REFERENCES `tingkat` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpp`
--

LOCK TABLES `rpp` WRITE;
/*!40000 ALTER TABLE `rpp` DISABLE KEYS */;
INSERT INTO `rpp` VALUES (1,26,20,46,'1122','pantun','',1,NULL,NULL,NULL,'2013-05-27 16:17:22',51246,0),(2,26,20,47,'2211','reading','',1,NULL,NULL,NULL,'2013-05-28 06:43:16',47546,0);
/*!40000 ALTER TABLE `rpp` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_rpp_100` BEFORE INSERT ON `rpp` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_rpp_100` BEFORE UPDATE ON `rpp` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_rpp_100` AFTER DELETE ON `rpp` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'rpp', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semester` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `semester` varchar(50) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_semester_departemen` (`departemen`),
  KEY `IX_semester_ts` (`ts`,`issync`),
  CONSTRAINT `FK_semester_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (20,'Semester I','SMK Negeri 12 Malang',1,'',NULL,NULL,NULL,'2013-07-02 13:47:46',6418,0),(21,'Semester II','SMK Negeri 12 Malang',0,'',NULL,NULL,NULL,'2013-05-28 06:42:23',838,0);
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_semester_100` BEFORE INSERT ON `semester` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_semester_100` BEFORE UPDATE ON `semester` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_semester_100` AFTER DELETE ON `semester` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'semester', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `panggilan` varchar(30) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `tahunmasuk` int(10) unsigned NOT NULL,
  `idangkatan` int(10) unsigned NOT NULL,
  `idkelas` int(10) unsigned NOT NULL,
  `suku` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `kelamin` varchar(1) NOT NULL,
  `tmplahir` varchar(50) NOT NULL,
  `tgllahir` date NOT NULL,
  `warga` varchar(5) DEFAULT NULL,
  `anakke` tinyint(2) unsigned DEFAULT '0',
  `jsaudara` tinyint(2) unsigned DEFAULT '0',
  `bahasa` varchar(60) DEFAULT NULL,
  `berat` decimal(4,1) unsigned DEFAULT '0.0',
  `tinggi` decimal(4,1) unsigned DEFAULT '0.0',
  `darah` varchar(2) DEFAULT NULL,
  `foto` mediumblob,
  `alamatsiswa` varchar(255) DEFAULT NULL,
  `kodepossiswa` varchar(8) DEFAULT NULL,
  `telponsiswa` varchar(20) DEFAULT NULL,
  `hpsiswa` varchar(20) DEFAULT NULL,
  `emailsiswa` varchar(100) DEFAULT NULL,
  `kesehatan` varchar(255) DEFAULT NULL,
  `asalsekolah` varchar(100) DEFAULT NULL,
  `ketsekolah` varchar(255) DEFAULT NULL,
  `namaayah` varchar(100) DEFAULT NULL,
  `namaibu` varchar(100) DEFAULT NULL,
  `almayah` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `almibu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pendidikanayah` varchar(20) DEFAULT NULL,
  `pendidikanibu` varchar(20) DEFAULT NULL,
  `pekerjaanayah` varchar(100) DEFAULT NULL,
  `pekerjaanibu` varchar(100) DEFAULT NULL,
  `wali` varchar(100) DEFAULT NULL,
  `penghasilanayah` int(10) unsigned DEFAULT '0',
  `penghasilanibu` int(10) unsigned DEFAULT '0',
  `alamatortu` varchar(100) DEFAULT NULL,
  `telponortu` varchar(20) DEFAULT NULL,
  `hportu` varchar(20) DEFAULT NULL,
  `emailayah` varchar(100) DEFAULT NULL,
  `alamatsurat` varchar(100) DEFAULT NULL,
  `keterangan` text,
  `frompsb` tinyint(1) unsigned DEFAULT '0',
  `ketpsb` varchar(255) DEFAULT NULL,
  `statusmutasi` int(10) unsigned DEFAULT NULL,
  `alumni` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 bukan alumni, 1 alumni',
  `pinsiswa` varchar(25) NOT NULL,
  `pinortu` varchar(25) NOT NULL,
  `pinortuibu` varchar(25) NOT NULL,
  `emailibu` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nis`),
  UNIQUE KEY `UX_siswa_replid` (`replid`),
  KEY `FK_siswa_angkatan` (`idangkatan`),
  KEY `FK_siswa_suku` (`suku`),
  KEY `FK_siswa_agama` (`agama`),
  KEY `FK_siswa_status` (`status`),
  KEY `FK_siswa_kondisi` (`kondisi`),
  KEY `FK_siswa_pendidikanayah` (`pendidikanayah`),
  KEY `FK_siswa_pendidikanibu` (`pendidikanibu`),
  KEY `FK_siswa_pekerjaanayah` (`pekerjaanayah`),
  KEY `FK_siswa_pekerjaanibu` (`pekerjaanibu`),
  KEY `FK_siswa_statusmutasi` (`statusmutasi`),
  KEY `FK_siswa_kelas` (`idkelas`),
  KEY `FK_siswa_asalsekolah` (`asalsekolah`),
  KEY `IX_siswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_siswa_agama` FOREIGN KEY (`agama`) REFERENCES `jbsumum`.`agama` (`agama`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_angkatan` FOREIGN KEY (`idangkatan`) REFERENCES `angkatan` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_asalsekolah` FOREIGN KEY (`asalsekolah`) REFERENCES `asalsekolah` (`sekolah`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_kondisi` FOREIGN KEY (`kondisi`) REFERENCES `kondisisiswa` (`kondisi`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_pekerjaanayah` FOREIGN KEY (`pekerjaanayah`) REFERENCES `jbsumum`.`jenispekerjaan` (`pekerjaan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_pekerjaanibu` FOREIGN KEY (`pekerjaanibu`) REFERENCES `jbsumum`.`jenispekerjaan` (`pekerjaan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_pendidikanayah` FOREIGN KEY (`pendidikanayah`) REFERENCES `jbsumum`.`tingkatpendidikan` (`pendidikan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_pendidikanibu` FOREIGN KEY (`pendidikanibu`) REFERENCES `jbsumum`.`tingkatpendidikan` (`pendidikan`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_status` FOREIGN KEY (`status`) REFERENCES `statussiswa` (`status`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_statusmutasi` FOREIGN KEY (`statusmutasi`) REFERENCES `jenismutasi` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_suku` FOREIGN KEY (`suku`) REFERENCES `jbsumum`.`suku` (`suku`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (12,'1101','Klepon','Klepon',1,2012,19,48,'Jawa','Islam','Reguler','Berkecukupan','l','aaaa','1988-02-01','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'66210','82597','40183','',NULL,NULL,NULL,'2013-06-18 08:16:18',14502,0),(8,'111/444/777','miranda','',1,2012,19,46,'Jawa','Katolik','Reguler','Berkecukupan','p','malanbg','1995-08-08','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'69673','48232','54625','',NULL,NULL,NULL,'2013-05-28 07:13:36',58846,0),(9,'111/555/777','nina','',1,2012,19,46,'Jawa','Islam','Reguler','Berkecukupan','l','malang','1996-05-04','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'69328','39023','66026','',NULL,NULL,NULL,'2013-05-28 07:15:15',52809,0),(2,'111/555/888','amin','',1,2012,19,50,'Padang','Katolik','Eksklusif','Kurang Mampu','l','blitar','1996-09-16','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'15286','37398','51074','',NULL,NULL,NULL,'2013-06-20 13:36:18',14911,0),(10,'112/221/121','liza','',1,2012,19,50,'Jawa','Islam','Reguler','Berkecukupan','p','lumajang','1996-03-30','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'14819','12562','15436','',NULL,NULL,NULL,'2013-06-20 13:36:57',15178,0),(6,'123/123/456','willie','',1,2012,19,47,'Sunda','Islam','Eksklusif','Kurang Mampu','l','tarakan','1995-12-19','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'90613','62604','70008','',NULL,NULL,NULL,'2013-05-28 07:09:39',19830,0),(11,'123/123/654','mirza','',1,2011,19,49,'Jawa','Islam','Reguler','Berkecukupan','l','malang','1995-12-12','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'90474','78390','74204','',NULL,NULL,NULL,'2013-05-28 07:17:34',2563,0),(4,'123/456/789','lala','',1,2012,19,48,'Jawa','Islam','Reguler','Kurang Mampu','l','malang','1996-07-09','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'80865','79821','66379','',NULL,NULL,NULL,'2013-05-28 07:02:54',18783,0),(5,'147/258/369','nano','',1,2012,19,48,'Jawa','Islam','Reguler','Kurang Mampu','l','semarng','1995-05-13','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'75078','13085','86560','',NULL,NULL,NULL,'2013-05-28 07:08:09',30242,0),(1,'321/321/221','bruce','',1,2012,19,47,'Jawa','Islam','Reguler','Berkecukupan','l','yogya','1999-01-01','WNI',1,1,'','0.0','0.0','','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0x\0\0\08���','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'36133','57377','42746','',NULL,NULL,NULL,'2013-05-27 15:44:02',10396,0),(7,'333/333/333','vije','',1,2001,19,47,'Jawa','Islam','Reguler','Berkecukupan','l','singosari','1977-08-20','WNI',1,1,'','0.0','0.0','','','',NULL,'','','','',NULL,'','','',0,0,NULL,NULL,NULL,NULL,'',0,0,'','','','','','',0,NULL,NULL,0,'23970','54754','97216','',NULL,NULL,NULL,'2013-05-28 07:10:37',54336,0);
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_siswa_100` BEFORE INSERT ON `siswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_siswa_100` BEFORE UPDATE ON `siswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.nis <> OLD.nis THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'siswa', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.nis, oldpk = OLD.nis;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_siswa_100` AFTER DELETE ON `siswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'siswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `statusguru`
--

DROP TABLE IF EXISTS `statusguru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusguru` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`status`),
  UNIQUE KEY `UX_statusguru_replid` (`replid`),
  KEY `IX_statusguru_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusguru`
--

LOCK TABLES `statusguru` WRITE;
/*!40000 ALTER TABLE `statusguru` DISABLE KEYS */;
INSERT INTO `statusguru` VALUES (8,'Asisten','',NULL,NULL,NULL,'2013-07-02 14:38:52',11638,0),(7,'Guru Honorer','',NULL,NULL,NULL,'2010-03-02 03:06:18',52760,0),(6,'Guru Tetap','',NULL,NULL,NULL,'2013-07-02 14:39:24',32293,0);
/*!40000 ALTER TABLE `statusguru` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_statusguru_100` BEFORE INSERT ON `statusguru` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_statusguru_100` BEFORE UPDATE ON `statusguru` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.status <> OLD.status THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'statusguru', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.status, oldpk = OLD.status;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_statusguru_100` AFTER DELETE ON `statusguru` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'statusguru', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `statussiswa`
--

DROP TABLE IF EXISTS `statussiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statussiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `urutan` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`status`),
  UNIQUE KEY `UX_statussiswa` (`replid`),
  KEY `IX_statussiswa_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statussiswa`
--

LOCK TABLES `statussiswa` WRITE;
/*!40000 ALTER TABLE `statussiswa` DISABLE KEYS */;
INSERT INTO `statussiswa` VALUES (7,'Eksklusif',2,NULL,NULL,NULL,'2010-03-02 03:06:18',3185,0),(6,'Reguler',1,NULL,NULL,NULL,'2010-03-02 03:06:18',50107,0);
/*!40000 ALTER TABLE `statussiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_statussiswa_100` BEFORE INSERT ON `statussiswa` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_statussiswa_100` BEFORE UPDATE ON `statussiswa` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.status <> OLD.status THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'statussiswa', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.status, oldpk = OLD.status;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_statussiswa_100` AFTER DELETE ON `statussiswa` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'statussiswa', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tahunajaran`
--

DROP TABLE IF EXISTS `tahunajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tahunajaran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahunajaran` varchar(50) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `tglmulai` date NOT NULL,
  `tglakhir` date NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_tahunajaran_departemen` (`departemen`),
  KEY `IX_tahunajaran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_tahunajaran_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tahunajaran`
--

LOCK TABLES `tahunajaran` WRITE;
/*!40000 ALTER TABLE `tahunajaran` DISABLE KEYS */;
INSERT INTO `tahunajaran` VALUES (20,'2012/2013','SMK Negeri 12 Malang','2012-06-07','2013-07-30',1,'',NULL,NULL,NULL,'2013-05-28 07:43:07',44390,0),(21,'2013/2014','SMK Negeri 12 Malang','2013-06-28','2014-07-28',0,'',NULL,NULL,NULL,'2013-05-28 07:43:07',11613,0),(22,'2014/2015','SMK Negeri 12 Malang','2014-06-28','2015-07-28',0,'',NULL,NULL,NULL,'2013-05-28 07:43:07',15449,0);
/*!40000 ALTER TABLE `tahunajaran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_tahunajaran_100` BEFORE INSERT ON `tahunajaran` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_tahunajaran_100` BEFORE UPDATE ON `tahunajaran` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_tahunajaran_100` AFTER DELETE ON `tahunajaran` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'tahunajaran', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tingkat`
--

DROP TABLE IF EXISTS `tingkat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tingkat` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tingkat` varchar(50) NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `urutan` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_tingkat_departemen` (`departemen`),
  KEY `IX_tingkat_ts` (`ts`,`issync`),
  CONSTRAINT `FK_tingkat_departemen` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`departemen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tingkat`
--

LOCK TABLES `tingkat` WRITE;
/*!40000 ALTER TABLE `tingkat` DISABLE KEYS */;
INSERT INTO `tingkat` VALUES (26,'10','SMK Negeri 12 Malang',1,'kelas 10',1,NULL,NULL,NULL,'2013-07-02 13:45:03',6098,0),(27,'11','SMK Negeri 12 Malang',1,'kelas 11',2,NULL,NULL,NULL,'2013-07-02 13:45:12',28378,0),(28,'12','SMK Negeri 12 Malang',1,'kelas 12',3,NULL,NULL,NULL,'2013-07-02 13:45:19',58064,0);
/*!40000 ALTER TABLE `tingkat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_tingkat_100` BEFORE INSERT ON `tingkat` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_tingkat_100` BEFORE UPDATE ON `tingkat` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_tingkat_100` AFTER DELETE ON `tingkat` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'tingkat', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ujian`
--

DROP TABLE IF EXISTS `ujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ujian` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpelajaran` int(10) unsigned NOT NULL DEFAULT '0',
  `idkelas` int(10) unsigned NOT NULL DEFAULT '0',
  `idsemester` int(10) unsigned NOT NULL DEFAULT '0',
  `idjenis` int(10) unsigned NOT NULL DEFAULT '0',
  `deskripsi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `tglkirimSMS` date DEFAULT NULL,
  `idaturan` int(10) unsigned NOT NULL,
  `idrpp` int(10) unsigned DEFAULT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_ujian_idpelajaran` (`idpelajaran`),
  KEY `FK_ujian_idsemester` (`idsemester`),
  KEY `FK_ujian_idjenis` (`idjenis`),
  KEY `FK_ujian_idaturan` (`idaturan`),
  KEY `FK_ujian_rpp` (`idrpp`),
  KEY `FK_ujian_kelas` (`idkelas`),
  KEY `IX_ujian_ts` (`ts`,`issync`),
  CONSTRAINT `FK_ujian_idaturan` FOREIGN KEY (`idaturan`) REFERENCES `aturannhb` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ujian_idjenis` FOREIGN KEY (`idjenis`) REFERENCES `jenisujian` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ujian_idpelajaran` FOREIGN KEY (`idpelajaran`) REFERENCES `pelajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ujian_idsemester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ujian_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ujian_rpp` FOREIGN KEY (`idrpp`) REFERENCES `rpp` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujian`
--

LOCK TABLES `ujian` WRITE;
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
INSERT INTO `ujian` VALUES (1,47,48,20,109,'reading paragraph','2013-06-16',NULL,223,2,'',NULL,NULL,NULL,'2013-06-16 04:36:59',23399,0),(2,47,48,20,110,'reading paragraph','2013-06-16',NULL,224,2,'',NULL,NULL,NULL,'2013-06-16 04:37:55',18006,0),(3,47,48,20,111,'UAS Structure','2013-06-16',NULL,225,NULL,'',NULL,NULL,NULL,'2013-06-16 04:38:52',18668,0);
/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_ujian_100` BEFORE INSERT ON `ujian` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_ujian_100` BEFORE UPDATE ON `ujian` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_ujian_100` AFTER DELETE ON `ujian` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsakad', tablename = 'ujian', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `jbscad`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbscad` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbscad`;

--
-- Table structure for table `cad01`
--

DROP TABLE IF EXISTS `cad01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad01` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad01_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad01`
--

LOCK TABLES `cad01` WRITE;
/*!40000 ALTER TABLE `cad01` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad01` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad01` BEFORE INSERT ON `cad01` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad01` BEFORE UPDATE ON `cad01` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad01` AFTER DELETE ON `cad01` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad01', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad02`
--

DROP TABLE IF EXISTS `cad02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad02` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad02_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad02`
--

LOCK TABLES `cad02` WRITE;
/*!40000 ALTER TABLE `cad02` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad02` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad02` BEFORE INSERT ON `cad02` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad02` BEFORE UPDATE ON `cad02` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad02` AFTER DELETE ON `cad02` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad02', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad03`
--

DROP TABLE IF EXISTS `cad03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad03` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad03_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad03`
--

LOCK TABLES `cad03` WRITE;
/*!40000 ALTER TABLE `cad03` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad03` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad03` BEFORE INSERT ON `cad03` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad03` BEFORE UPDATE ON `cad03` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad03` AFTER DELETE ON `cad03` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad03', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad04`
--

DROP TABLE IF EXISTS `cad04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad04` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad04_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad04`
--

LOCK TABLES `cad04` WRITE;
/*!40000 ALTER TABLE `cad04` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad04` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad04` BEFORE INSERT ON `cad04` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad04` BEFORE UPDATE ON `cad04` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad04` AFTER DELETE ON `cad04` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad04', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad05`
--

DROP TABLE IF EXISTS `cad05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad05` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad05_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad05`
--

LOCK TABLES `cad05` WRITE;
/*!40000 ALTER TABLE `cad05` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad05` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad05` BEFORE INSERT ON `cad05` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad05` BEFORE UPDATE ON `cad05` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad05` AFTER DELETE ON `cad05` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad05', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad06`
--

DROP TABLE IF EXISTS `cad06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad06` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad06_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad06`
--

LOCK TABLES `cad06` WRITE;
/*!40000 ALTER TABLE `cad06` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad06` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad06` BEFORE INSERT ON `cad06` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad06` BEFORE UPDATE ON `cad06` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad06` AFTER DELETE ON `cad06` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad06', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad07`
--

DROP TABLE IF EXISTS `cad07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad07` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad07_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad07`
--

LOCK TABLES `cad07` WRITE;
/*!40000 ALTER TABLE `cad07` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad07` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad07` BEFORE INSERT ON `cad07` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad07` BEFORE UPDATE ON `cad07` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad07` AFTER DELETE ON `cad07` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad07', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad08`
--

DROP TABLE IF EXISTS `cad08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad08` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad08_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad08`
--

LOCK TABLES `cad08` WRITE;
/*!40000 ALTER TABLE `cad08` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad08` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad08` BEFORE INSERT ON `cad08` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad08` BEFORE UPDATE ON `cad08` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad08` AFTER DELETE ON `cad08` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad08', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad09`
--

DROP TABLE IF EXISTS `cad09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad09` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad09_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad09`
--

LOCK TABLES `cad09` WRITE;
/*!40000 ALTER TABLE `cad09` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad09` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad09` BEFORE INSERT ON `cad09` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad09` BEFORE UPDATE ON `cad09` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad09` AFTER DELETE ON `cad09` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad09', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad10`
--

DROP TABLE IF EXISTS `cad10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad10` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad10_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad10`
--

LOCK TABLES `cad10` WRITE;
/*!40000 ALTER TABLE `cad10` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad10` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad10` BEFORE INSERT ON `cad10` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad10` BEFORE UPDATE ON `cad10` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad10` AFTER DELETE ON `cad10` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad10', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad11`
--

DROP TABLE IF EXISTS `cad11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad11` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad11_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad11`
--

LOCK TABLES `cad11` WRITE;
/*!40000 ALTER TABLE `cad11` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad11` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad11` BEFORE INSERT ON `cad11` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad11` BEFORE UPDATE ON `cad11` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad11` AFTER DELETE ON `cad11` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad11', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad12`
--

DROP TABLE IF EXISTS `cad12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad12` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad12_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad12`
--

LOCK TABLES `cad12` WRITE;
/*!40000 ALTER TABLE `cad12` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad12` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad12` BEFORE INSERT ON `cad12` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad12` BEFORE UPDATE ON `cad12` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad12` AFTER DELETE ON `cad12` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad12', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad13`
--

DROP TABLE IF EXISTS `cad13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad13` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad13_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad13`
--

LOCK TABLES `cad13` WRITE;
/*!40000 ALTER TABLE `cad13` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad13` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad13` BEFORE INSERT ON `cad13` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad13` BEFORE UPDATE ON `cad13` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad13` AFTER DELETE ON `cad13` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad13', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cad14`
--

DROP TABLE IF EXISTS `cad14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad14` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` int(10) unsigned DEFAULT NULL,
  `num2` int(10) unsigned DEFAULT NULL,
  `num3` int(10) unsigned DEFAULT NULL,
  `float1` float DEFAULT NULL,
  `float2` float DEFAULT NULL,
  `float3` float DEFAULT NULL,
  `flag1` tinyint(3) unsigned DEFAULT NULL,
  `flag2` tinyint(3) unsigned DEFAULT NULL,
  `flag3` tinyint(3) unsigned DEFAULT NULL,
  `string1` varchar(1000) DEFAULT NULL,
  `string2` varchar(1000) DEFAULT NULL,
  `string3` varchar(1000) DEFAULT NULL,
  `text1` text,
  `text2` text,
  `text3` text,
  `blob1` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_cad14_ts` (`ts`,`issync`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad14`
--

LOCK TABLES `cad14` WRITE;
/*!40000 ALTER TABLE `cad14` DISABLE KEYS */;
/*!40000 ALTER TABLE `cad14` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_cad14` BEFORE INSERT ON `cad14` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_cad14` BEFORE UPDATE ON `cad14` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_cad14` AFTER DELETE ON `cad14` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbscad', tablename = 'cad14', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `jbsclient`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsclient` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsclient`;

--
-- Table structure for table `deleteddata`
--

DROP TABLE IF EXISTS `deleteddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleteddata` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dbname` varchar(50) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `dataid` varchar(50) NOT NULL,
  `datatoken` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_DELETEDDATA_SYNC` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleteddata`
--

LOCK TABLES `deleteddata` WRITE;
/*!40000 ALTER TABLE `deleteddata` DISABLE KEYS */;
INSERT INTO `deleteddata` VALUES (1,'2010-03-25 06:48:18',5658,0,'jbsakad','aktivitaskalender','22',34108),(2,'2010-03-25 06:48:18',7810,0,'jbsakad','aktivitaskalender','23',28647),(3,'2010-03-25 06:48:18',22076,0,'jbsakad','aktivitaskalender','24',40910),(4,'2010-03-25 06:48:18',21419,0,'jbsakad','aktivitaskalender','25',53077),(5,'2010-03-25 06:49:15',38621,0,'jbsakad','kalenderakademik','7',25060),(6,'2010-04-16 01:55:26',58779,0,'jbsakad','jenisujian','111',17544),(7,'2010-04-16 01:55:28',31150,0,'jbsakad','jenisujian','107',23010),(8,'2010-04-16 01:55:33',60068,0,'jbsakad','jenisujian','112',57288),(9,'2010-04-16 01:55:36',6649,0,'jbsakad','jenisujian','110',31986),(10,'2010-04-16 01:55:40',11824,0,'jbsakad','jenisujian','109',25619),(11,'2010-04-16 01:55:43',43871,0,'jbsakad','jenisujian','114',14239),(12,'2010-04-16 01:55:45',57947,0,'jbsakad','jenisujian','113',37221),(15,'2010-04-16 01:58:56',6755,0,'jbsakad','riwayatkelassiswa','197',55546),(16,'2010-04-16 01:58:56',44160,0,'jbsakad','riwayatkelassiswa','198',46602),(17,'2010-04-16 01:58:56',3943,0,'jbsakad','riwayatkelassiswa','199',52620),(18,'2010-04-16 01:58:56',18297,0,'jbsakad','riwayatkelassiswa','200',38274),(19,'2010-04-16 01:58:56',14123,0,'jbsakad','riwayatkelassiswa','201',23956),(20,'2010-04-16 01:59:04',15726,0,'jbsakad','riwayatdeptsiswa','101',17142),(21,'2010-04-16 01:59:04',36259,0,'jbsakad','riwayatdeptsiswa','102',15833),(22,'2010-04-16 01:59:04',3057,0,'jbsakad','riwayatdeptsiswa','103',56165),(23,'2010-04-16 01:59:04',37569,0,'jbsakad','riwayatdeptsiswa','104',22380),(24,'2010-04-16 01:59:04',47613,0,'jbsakad','riwayatdeptsiswa','105',42401),(25,'2010-04-16 01:59:59',59827,0,'jbsakad','rataus','2',59421),(26,'2010-04-16 01:59:59',25234,0,'jbsakad','rataus','3',37687),(27,'2010-04-16 01:59:59',12220,0,'jbsakad','rataus','4',10172),(28,'2010-04-16 01:59:59',50929,0,'jbsakad','rataus','5',3326),(29,'2010-04-16 01:59:59',21391,0,'jbsakad','rataus','6',51646),(30,'2010-04-16 02:01:53',19700,0,'jbsfina','penerimaanjtt','2',50609),(31,'2010-04-16 02:01:53',34326,0,'jbsfina','penerimaanjtt','3',9657),(32,'2010-04-16 02:01:53',46998,0,'jbsfina','penerimaanjtt','4',29725),(33,'2010-04-16 02:01:53',954,0,'jbsfina','penerimaanjtt','5',37226),(34,'2010-04-16 02:01:53',60365,0,'jbsfina','penerimaanjtt','6',19728),(35,'2010-04-16 02:02:11',36844,0,'jbsfina','besarjtt','2',4176),(36,'2010-04-16 02:02:11',3123,0,'jbsfina','besarjtt','3',60304),(37,'2010-04-16 02:02:11',36142,0,'jbsfina','besarjtt','4',38692),(38,'2010-04-16 02:02:11',40280,0,'jbsfina','besarjtt','5',38347),(39,'2010-04-16 02:02:11',27443,0,'jbsfina','besarjtt','6',61566),(40,'2010-04-16 02:03:03',16377,0,'jbsfina','penerimaaniuran','2',24628),(41,'2010-04-16 02:03:03',65086,0,'jbsfina','penerimaaniuran','3',62596),(42,'2010-04-16 02:03:03',14176,0,'jbsfina','penerimaaniuran','4',14835),(43,'2010-04-16 02:03:03',6682,0,'jbsfina','penerimaaniuran','5',37850),(44,'2010-04-16 02:03:03',56413,0,'jbsfina','penerimaaniuran','6',7311),(45,'2010-04-16 02:03:29',65427,0,'jbsakad','siswa','86',32697),(46,'2010-04-16 02:03:29',26835,0,'jbsakad','siswa','89',40840),(47,'2010-04-16 02:03:29',3423,0,'jbsakad','siswa','85',53741),(48,'2010-04-16 02:03:29',2141,0,'jbsakad','siswa','87',54224),(49,'2010-04-16 02:09:07',437,0,'jbsfina','penerimaaniuran','1',61178),(50,'2010-04-16 02:09:41',61290,0,'jbsakad','siswa','88',24542),(51,'2010-04-16 02:14:23',43017,0,'jbsfina','penerimaanjtt','1',8559),(52,'2010-04-16 02:14:33',31216,0,'jbsfina','penerimaanjttcalon','1',43166),(53,'2010-04-16 02:14:33',27028,0,'jbsfina','penerimaanjttcalon','2',59527),(54,'2010-08-03 11:18:36',60813,0,'jbsfina','penerimaanjttcalon','3',47442),(55,'2010-08-03 11:18:36',36610,0,'jbsfina','penerimaanjtt','7',54970),(56,'2010-08-03 11:18:36',612,0,'jbsfina','besarjttcalon','1',11175),(57,'2010-08-03 11:18:36',24291,0,'jbsfina','besarjtt','1',8773),(58,'2010-08-03 11:18:37',54085,0,'jbsakad','jadwal','114',46696),(59,'2010-08-03 11:18:37',964,0,'jbsakad','jadwal','115',25279),(60,'2010-08-03 11:18:37',39152,0,'jbsakad','jadwal','117',51836),(61,'2010-08-03 11:18:37',61808,0,'jbsakad','infojadwal','16',3870),(62,'2010-08-03 11:18:37',60526,0,'jbsakad','kalenderakademik','8',36608),(63,'2010-08-03 11:18:37',51674,0,'jbsakad','calonsiswa','48',32492),(64,'2010-08-03 11:18:37',11262,0,'jbsakad','kelompokcalonsiswa','26',10096),(65,'2010-08-03 11:18:37',32348,0,'jbsakad','kelompokcalonsiswa','27',64842),(66,'2010-08-03 11:18:37',62423,0,'jbsakad','kelompokcalonsiswa','28',31801),(67,'2010-08-03 11:18:37',18479,0,'jbsakad','nau','1',10476),(68,'2010-08-03 11:18:37',36187,0,'jbsakad','nilaiujian','1',45317),(69,'2010-08-03 11:18:37',59969,0,'jbsakad','phsiswa','1',16120),(70,'2010-08-03 11:18:37',60222,0,'jbsakad','presensiharian','1',32373),(71,'2010-08-03 11:18:37',55672,0,'jbsakad','prosespenerimaansiswa','11',31124),(72,'2010-08-03 11:18:37',32164,0,'jbsakad','ratauk','1',61559),(73,'2010-08-03 11:18:37',59333,0,'jbsakad','rataus','1',46522),(74,'2010-08-03 11:18:37',3581,0,'jbsakad','riwayatdeptsiswa','100',64803),(75,'2010-08-03 11:18:37',36498,0,'jbsakad','riwayatkelassiswa','196',34052),(76,'2010-08-03 11:18:37',40685,0,'jbsakad','ujian','1',11590),(77,'2010-08-03 11:18:37',28402,0,'jbsakad','rpp','63',41381),(78,'2010-08-03 11:18:37',19952,0,'jbsakad','rpp','64',39218),(79,'2010-08-03 11:18:37',14553,0,'jbsakad','siswa','84',45497),(80,'2010-08-03 11:18:37',12911,0,'jbsperpus','pinjam','1',11272),(81,'2010-08-03 11:18:37',20893,0,'jbsperpus','daftarpustaka','3',59217),(82,'2010-08-03 11:18:37',203,0,'jbsperpus','daftarpustaka','4',62618),(83,'2010-08-03 11:18:37',3867,0,'jbsperpus','pustaka','1',46139),(84,'2010-08-03 11:18:37',18724,0,'jbsperpus','penulis','1',17595),(85,'2010-08-03 11:18:37',16488,0,'jbsperpus','penerbit','1',18955),(86,'2013-05-27 15:46:17',22863,0,'jbsakad','guru','46',21497),(87,'2013-05-27 16:32:46',57355,0,'jbsumum','identitas','5',55385),(88,'2013-06-16 04:12:59',58922,0,'jbsakad','phsiswa','1',24754),(89,'2013-06-16 04:12:59',2287,0,'jbsakad','phsiswa','2',58868),(90,'2013-06-16 04:12:59',31257,0,'jbsakad','phsiswa','3',23490),(91,'2013-06-16 04:12:59',18363,0,'jbsakad','presensiharian','1',65320),(92,'2013-06-16 04:23:26',47407,0,'jbsakad','phsiswa','4',664),(93,'2013-06-16 04:23:26',3243,0,'jbsakad','phsiswa','5',9185),(94,'2013-06-16 04:23:26',5056,0,'jbsakad','phsiswa','6',43933),(95,'2013-06-16 04:23:26',15549,0,'jbsakad','presensiharian','2',63575),(96,'2013-06-17 13:58:02',43047,0,'jbsakad','departemen','12',22390),(97,'2013-06-17 14:07:02',12311,0,'jbsakad','departemen','13',14850),(98,'2013-07-03 05:06:02',56346,0,'jbsakad','nap','1',6046),(99,'2013-07-03 05:06:02',14333,0,'jbsakad','nap','2',52408),(100,'2013-07-03 05:06:02',33687,0,'jbsakad','nap','3',23920),(101,'2013-07-03 05:06:05',26575,0,'jbsakad','nap','4',59905),(102,'2013-07-03 05:06:05',32683,0,'jbsakad','nap','5',1873),(103,'2013-07-03 05:06:05',18159,0,'jbsakad','nap','6',26242),(104,'2013-07-03 05:06:05',58276,0,'jbsakad','nap','7',60059),(105,'2013-07-03 05:06:05',40313,0,'jbsakad','nap','8',24976),(106,'2013-07-03 05:06:05',26736,0,'jbsakad','nap','9',10236);
/*!40000 ALTER TABLE `deleteddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exporthistory`
--

DROP TABLE IF EXISTS `exporthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exporthistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transferid` varchar(15) NOT NULL,
  `synctype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `synctime` datetime NOT NULL,
  `syncfile` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exporthistory`
--

LOCK TABLES `exporthistory` WRITE;
/*!40000 ALTER TABLE `exporthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `exporthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liveupdate`
--

DROP TABLE IF EXISTS `liveupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liveupdate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `liveupdateid` int(10) unsigned NOT NULL,
  `info` varchar(255) NOT NULL,
  `tipe` varchar(3) NOT NULL,
  `versi` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `repl_targetfile` varchar(255) DEFAULT NULL,
  `repl_varname` varchar(255) DEFAULT NULL,
  `repl_searchstr` varchar(255) DEFAULT NULL,
  `repl_replacestr` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 Disable, 1 Enable',
  PRIMARY KEY (`liveupdateid`),
  UNIQUE KEY `UX_liveupdate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liveupdate`
--

LOCK TABLES `liveupdate` WRITE;
/*!40000 ALTER TABLE `liveupdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `liveupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liveupdateconfig`
--

DROP TABLE IF EXISTS `liveupdateconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liveupdateconfig` (
  `tipe` varchar(20) NOT NULL,
  `nilai` varchar(45) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tipe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liveupdateconfig`
--

LOCK TABLES `liveupdateconfig` WRITE;
/*!40000 ALTER TABLE `liveupdateconfig` DISABLE KEYS */;
INSERT INTO `liveupdateconfig` VALUES ('MIN_UPDATE_ID','29','Please Don\'t Change This Value');
/*!40000 ALTER TABLE `liveupdateconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liveupdatefile`
--

DROP TABLE IF EXISTS `liveupdatefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liveupdatefile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `liveupdateid` int(10) unsigned NOT NULL,
  `berkas` varchar(255) NOT NULL,
  `targetdir` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 Disable 1 Enable',
  `tipe` varchar(4) NOT NULL DEFAULT 'DOWN' COMMENT 'DOWN | EXEC',
  PRIMARY KEY (`liveupdateid`),
  UNIQUE KEY `UX_liveupdatefile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liveupdatefile`
--

LOCK TABLES `liveupdatefile` WRITE;
/*!40000 ALTER TABLE `liveupdatefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `liveupdatefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkchanges`
--

DROP TABLE IF EXISTS `pkchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkchanges` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dbname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tablename` varchar(50) CHARACTER SET latin1 NOT NULL,
  `dataid` int(10) unsigned NOT NULL,
  `datatoken` smallint(5) unsigned NOT NULL,
  `newpk` varchar(100) CHARACTER SET latin1 NOT NULL,
  `oldpk` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_PKCHANGES_SYNC` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkchanges`
--

LOCK TABLES `pkchanges` WRITE;
/*!40000 ALTER TABLE `pkchanges` DISABLE KEYS */;
INSERT INTO `pkchanges` VALUES (1,'2010-03-19 02:24:56',54079,0,'jbsakad','siswa',85,53741,'120','111'),(2,'2010-03-19 02:25:37',51125,0,'jbsakad','siswa',85,53741,'1212','120'),(3,'2010-03-19 02:29:47',52117,0,'jbsakad','siswa',85,53741,'144','1212'),(4,'2013-05-27 13:12:57',24716,0,'jbssdm','pegawai',23,4536,'102','101'),(5,'2013-05-27 13:13:28',32534,0,'jbssdm','pegawai',23,4536,'1024','102'),(6,'2013-05-27 15:24:28',44220,0,'jbsakad','departemen',11,34486,'SMK12','SMA'),(7,'2013-05-28 06:38:41',22217,0,'jbsakad','departemen',11,34486,'SMK Negeri 12 Malang','SMK12'),(8,'2013-05-28 06:38:57',23,0,'jbsakad','departemen',12,22390,'SMK12','SMKN 12 Malang'),(9,'2013-06-18 06:41:35',61572,0,'jbssdm','pegawai',29,38185,'klepon','007'),(10,'2013-07-02 14:39:24',29947,0,'jbsakad','statusguru',6,32293,'Guru Tetap','Guru Pelajaran');
/*!40000 ALTER TABLE `pkchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcontrol`
--

DROP TABLE IF EXISTS `vcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcontrol` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c` varchar(5) NOT NULL,
  `v` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcontrol`
--

LOCK TABLES `vcontrol` WRITE;
/*!40000 ALTER TABLE `vcontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `version` varchar(10) NOT NULL,
  `builddate` datetime NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES ('2.0.0','2010-03-21 00:00:00');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jbsfina`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsfina` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsfina`;

--
-- Table structure for table `auditbesarjtt`
--

DROP TABLE IF EXISTS `auditbesarjtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditbesarjtt` (
  `statusdata` tinyint(1) NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `nis` varchar(20) NOT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `besar` decimal(15,0) NOT NULL,
  `lunas` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `pengguna` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditbesarjtt_auditinfo` (`idaudit`),
  KEY `IX_auditbesarjtt_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditbesarjtt_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditbesarjtt`
--

LOCK TABLES `auditbesarjtt` WRITE;
/*!40000 ALTER TABLE `auditbesarjtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditbesarjtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditbesarjttcalon`
--

DROP TABLE IF EXISTS `auditbesarjttcalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditbesarjttcalon` (
  `statusdata` tinyint(1) NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idcalon` int(10) unsigned NOT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `besar` decimal(15,0) NOT NULL,
  `lunas` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `pengguna` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditbesarjttcalon_auditinfo` (`idaudit`),
  KEY `IX_auditbesarjttcalon_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditbesarjttcalon_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditbesarjttcalon`
--

LOCK TABLES `auditbesarjttcalon` WRITE;
/*!40000 ALTER TABLE `auditbesarjttcalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditbesarjttcalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditinfo`
--

DROP TABLE IF EXISTS `auditinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditinfo` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sumber` varchar(100) NOT NULL,
  `idsumber` int(10) unsigned NOT NULL,
  `tanggal` datetime NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `departemen` varchar(25) NOT NULL,
  `alasan` varchar(500) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_auditinfo_departemen` (`departemen`),
  KEY `IX_auditinfo_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditinfo_departemen` FOREIGN KEY (`departemen`) REFERENCES `jbsakad`.`departemen` (`departemen`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditinfo`
--

LOCK TABLES `auditinfo` WRITE;
/*!40000 ALTER TABLE `auditinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditjurnal`
--

DROP TABLE IF EXISTS `auditjurnal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditjurnal` (
  `status` tinyint(1) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `transaksi` varchar(255) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `nokas` varchar(100) NOT NULL,
  `idtahunbuku` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `sumber` varchar(40) NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditjurnal_auditinfo` (`idaudit`),
  KEY `IX_auditjurnal_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditjurnal_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditjurnal`
--

LOCK TABLES `auditjurnal` WRITE;
/*!40000 ALTER TABLE `auditjurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditjurnal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditjurnaldetail`
--

DROP TABLE IF EXISTS `auditjurnaldetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditjurnaldetail` (
  `status` tinyint(1) unsigned NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idjurnal` int(10) unsigned NOT NULL,
  `koderek` varchar(15) NOT NULL,
  `debet` decimal(15,0) NOT NULL DEFAULT '0',
  `kredit` decimal(15,0) NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_auditjurnaldetail_auditinfo` (`idaudit`),
  KEY `IX_auditjurnaldetail_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditjurnaldetail_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditjurnaldetail`
--

LOCK TABLES `auditjurnaldetail` WRITE;
/*!40000 ALTER TABLE `auditjurnaldetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditjurnaldetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpenerimaaniuran`
--

DROP TABLE IF EXISTS `auditpenerimaaniuran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpenerimaaniuran` (
  `statusdata` tinyint(1) unsigned NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `nis` varchar(20) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditpenerimaaniuran_auditinfo` (`idaudit`),
  KEY `IX_auditpenerimaaniuran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditpenerimaaniuran_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpenerimaaniuran`
--

LOCK TABLES `auditpenerimaaniuran` WRITE;
/*!40000 ALTER TABLE `auditpenerimaaniuran` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditpenerimaaniuran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpenerimaaniurancalon`
--

DROP TABLE IF EXISTS `auditpenerimaaniurancalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpenerimaaniurancalon` (
  `statusdata` tinyint(1) unsigned NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `idcalon` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditpenerimaaniurancalon_audit` (`idaudit`),
  KEY `IX_auditpenerimaaniurancalon_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditpenerimaaniurancalon_audit` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpenerimaaniurancalon`
--

LOCK TABLES `auditpenerimaaniurancalon` WRITE;
/*!40000 ALTER TABLE `auditpenerimaaniurancalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditpenerimaaniurancalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpenerimaanjtt`
--

DROP TABLE IF EXISTS `auditpenerimaanjtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpenerimaanjtt` (
  `statusdata` tinyint(1) NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idbesarjtt` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditpenerimaanjtt_auditinfo` (`idaudit`),
  KEY `IX_auditpenerimaanjtt_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditpenerimaanjtt_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpenerimaanjtt`
--

LOCK TABLES `auditpenerimaanjtt` WRITE;
/*!40000 ALTER TABLE `auditpenerimaanjtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditpenerimaanjtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpenerimaanjttcalon`
--

DROP TABLE IF EXISTS `auditpenerimaanjttcalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpenerimaanjttcalon` (
  `statusdata` tinyint(1) NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idbesarjttcalon` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditpenerimaanjttcalon_auditinfo` (`idaudit`),
  KEY `IX_auditpenerimaanjttcalon_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditpenerimaanjttcalon_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpenerimaanjttcalon`
--

LOCK TABLES `auditpenerimaanjttcalon` WRITE;
/*!40000 ALTER TABLE `auditpenerimaanjttcalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditpenerimaanjttcalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpenerimaanlain`
--

DROP TABLE IF EXISTS `auditpenerimaanlain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpenerimaanlain` (
  `statusdata` tinyint(1) unsigned NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditpenerimaanlain_auditinfo` (`idaudit`),
  KEY `IX_auditpenerimaanlain_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditpenerimaanlain_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpenerimaanlain`
--

LOCK TABLES `auditpenerimaanlain` WRITE;
/*!40000 ALTER TABLE `auditpenerimaanlain` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditpenerimaanlain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpengeluaran`
--

DROP TABLE IF EXISTS `auditpengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpengeluaran` (
  `statusdata` tinyint(1) unsigned NOT NULL,
  `idaudit` int(10) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL,
  `idpengeluaran` int(10) unsigned NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `jenispemohon` tinyint(1) unsigned NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `pemohonlain` int(10) unsigned DEFAULT NULL,
  `penerima` varchar(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tanggalkeluar` datetime NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `petugas` varchar(45) DEFAULT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `keterangan` text,
  `namapemohon` varchar(100) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `FK_auditpengeluaran_auditinfo` (`idaudit`),
  KEY `IX_auditpengeluaran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_auditpengeluaran_auditinfo` FOREIGN KEY (`idaudit`) REFERENCES `auditinfo` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpengeluaran`
--

LOCK TABLES `auditpengeluaran` WRITE;
/*!40000 ALTER TABLE `auditpengeluaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditpengeluaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idkelompok` int(10) unsigned NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kondisi` varchar(255) DEFAULT NULL,
  `jumlah` int(10) NOT NULL DEFAULT '0',
  `tglperolehan` date NOT NULL DEFAULT '0000-00-00',
  `foto` blob,
  `keterangan` varchar(255) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT 'unit',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_barang_kelompok` (`idkelompok`),
  KEY `IX_barang_ts` (`ts`,`issync`),
  CONSTRAINT `FK_barang_kelompok` FOREIGN KEY (`idkelompok`) REFERENCES `kelompokbarang` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_barang_100` BEFORE INSERT ON `barang` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_barang_100` BEFORE UPDATE ON `barang` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_barang_100` AFTER DELETE ON `barang` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'barang', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `besarjtt`
--

DROP TABLE IF EXISTS `besarjtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `besarjtt` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `besar` decimal(15,0) NOT NULL,
  `cicilan` decimal(15,0) NOT NULL DEFAULT '0',
  `lunas` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `pengguna` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pembayaranjtt_siswa` (`nis`),
  KEY `FK_pembayaranjtt_penerimaan` (`idpenerimaan`),
  KEY `IX_besarjtt_ts` (`ts`,`issync`),
  CONSTRAINT `FK_besarjtt_siswa` FOREIGN KEY (`nis`) REFERENCES `jbsakad`.`siswa` (`nis`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pembayaranjtt_penerimaan` FOREIGN KEY (`idpenerimaan`) REFERENCES `datapenerimaan` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `besarjtt`
--

LOCK TABLES `besarjtt` WRITE;
/*!40000 ALTER TABLE `besarjtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `besarjtt` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_besarjtt_100` BEFORE INSERT ON `besarjtt` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_besarjtt_100` BEFORE UPDATE ON `besarjtt` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trupd_besarjtt_101` AFTER UPDATE ON `besarjtt` FOR EACH ROW BEGIN
    DECLARE xidaudit int;
	DECLARE xdepartemen varchar(25); 
	
	IF (@DISABLE_TRIGGERS IS NULL) AND (@DISABLE_TRIGER IS NULL) THEN
		SELECT p.departemen INTO xdepartemen
		  FROM besarjtt b, datapenerimaan p
		 WHERE b.idpenerimaan = p.replid AND b.replid = NEW.replid;
		 
		INSERT INTO auditinfo SET departemen=xdepartemen, sumber='besarjtt', idsumber=new.replid, tanggal=now(), petugas=new.pengguna, alasan=new.info3;
		
		SELECT last_insert_id() INTO xidaudit;
		
		INSERT INTO auditbesarjtt SET statusdata=0, idaudit=xidaudit, replid=OLD.replid, nis=OLD.nis, 
			idpenerimaan=OLD.idpenerimaan, besar=OLD.besar, lunas=OLD.lunas, keterangan=OLD.keterangan, pengguna=OLD.pengguna, info1=OLD.info1, info2=OLD.info2;
		
		INSERT INTO auditbesarjtt SET statusdata=1, idaudit=xidaudit, replid=NEW.replid, nis=NEW.nis, 
			idpenerimaan=NEW.idpenerimaan, besar=NEW.besar, lunas=NEW.lunas, keterangan=NEW.keterangan, pengguna=NEW.pengguna, info1=NEW.info1, info2=NEW.info2;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_besarjtt_100` AFTER DELETE ON `besarjtt` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'besarjtt', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `besarjttcalon`
--

DROP TABLE IF EXISTS `besarjttcalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `besarjttcalon` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcalon` int(10) unsigned NOT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `besar` decimal(15,0) NOT NULL,
  `cicilan` decimal(15,0) NOT NULL DEFAULT '0',
  `lunas` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `pengguna` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_besarjttcalon_penerimaan` (`idpenerimaan`),
  KEY `FK_besarjttcalon_calonsiswa` (`idcalon`),
  KEY `IX_besarjttcalon_ts` (`ts`,`issync`),
  CONSTRAINT `FK_besarjttcalon_calonsiswa` FOREIGN KEY (`idcalon`) REFERENCES `jbsakad`.`calonsiswa` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_besarjttcalon_penerimaan` FOREIGN KEY (`idpenerimaan`) REFERENCES `datapenerimaan` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `besarjttcalon`
--

LOCK TABLES `besarjttcalon` WRITE;
/*!40000 ALTER TABLE `besarjttcalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `besarjttcalon` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_besarjttcalon_100` BEFORE INSERT ON `besarjttcalon` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_besarjttcalon_100` BEFORE UPDATE ON `besarjttcalon` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trupd_besarjttcalon_101` AFTER UPDATE ON `besarjttcalon` FOR EACH ROW BEGIN
    DECLARE xidaudit int;
	DECLARE xdepartemen varchar(25); 
	
	IF (@DISABLE_TRIGGERS IS NULL) AND (@DISABLE_TRIGER IS NULL) THEN
		SELECT p.departemen INTO xdepartemen
		FROM besarjttcalon b, datapenerimaan p
		WHERE b.idpenerimaan = p.replid AND b.replid = NEW.replid;
		 
		INSERT INTO auditinfo SET departemen=xdepartemen, sumber='besarjttcalon', idsumber=new.replid, tanggal=now(), petugas=new.pengguna, alasan=new.info3;
		
		SELECT last_insert_id() INTO xidaudit;
		
		INSERT INTO auditbesarjttcalon SET statusdata=0, idaudit=xidaudit, replid=OLD.replid, idcalon=OLD.idcalon, 
			idpenerimaan=OLD.idpenerimaan, besar=OLD.besar, lunas=OLD.lunas, keterangan=OLD.keterangan, pengguna=OLD.pengguna, info1=OLD.info1, info2=OLD.info2;
		
		INSERT INTO auditbesarjttcalon SET statusdata=1, idaudit=xidaudit, replid=NEW.replid, idcalon=NEW.idcalon, 
			idpenerimaan=NEW.idpenerimaan, besar=NEW.besar, lunas=NEW.lunas, keterangan=NEW.keterangan, pengguna=NEW.pengguna, info1=NEW.info1, info2=NEW.info2;
	END IF;		
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_besarjttcalon_100` AFTER DELETE ON `besarjttcalon` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'besarjttcalon', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `datadsp`
--

DROP TABLE IF EXISTS `datadsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datadsp` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `dsp` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `operator` varchar(50) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_datadsp_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datadsp`
--

LOCK TABLES `datadsp` WRITE;
/*!40000 ALTER TABLE `datadsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `datadsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datapenerimaan`
--

DROP TABLE IF EXISTS `datapenerimaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datapenerimaan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `besar` decimal(15,0) DEFAULT NULL,
  `idkategori` varchar(15) NOT NULL,
  `rekkas` varchar(15) NOT NULL,
  `rekpendapatan` varchar(15) NOT NULL,
  `rekpiutang` varchar(15) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `departemen` varchar(50) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_datapenerimaan_rekakun_kas` (`rekkas`),
  KEY `FK_datapenerimaan_rekakun_pendapatan` (`rekpendapatan`),
  KEY `FK_datapenerimaan_rekakun_piutang` (`rekpiutang`),
  KEY `FK_datapenerimaan_kategoripenerimaan` (`idkategori`),
  KEY `FK_datapenerimaan_departemen` (`departemen`),
  KEY `IX_datapenerimaan_ts` (`ts`,`issync`),
  CONSTRAINT `FK_datapenerimaan_departemen` FOREIGN KEY (`departemen`) REFERENCES `jbsakad`.`departemen` (`departemen`) ON UPDATE CASCADE,
  CONSTRAINT `FK_datapenerimaan_kategoripenerimaan` FOREIGN KEY (`idkategori`) REFERENCES `kategoripenerimaan` (`kode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_datapenerimaan_rekakun_kas` FOREIGN KEY (`rekkas`) REFERENCES `rekakun` (`kode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_datapenerimaan_rekakun_pendapatan` FOREIGN KEY (`rekpendapatan`) REFERENCES `rekakun` (`kode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_datapenerimaan_rekakun_piutang` FOREIGN KEY (`rekpiutang`) REFERENCES `rekakun` (`kode`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datapenerimaan`
--

LOCK TABLES `datapenerimaan` WRITE;
/*!40000 ALTER TABLE `datapenerimaan` DISABLE KEYS */;
INSERT INTO `datapenerimaan` VALUES (9,'SPP Bulanan',NULL,'JTT','111','411','150',1,'Sekedar contoh. Menu ini mengatur setiap jenis penerimaan yang mungkin diterima sekolah. Anda harus menentukan rekening Kas, Pendapatan dan Piutang untuk setiap transaksi penerimaan.','SMK Negeri 12 Malang',NULL,NULL,NULL,'2010-03-02 03:06:52',41237,0),(11,'Dana Sumbangan Pendidikan',NULL,'CSWJB','111','412','152',1,'Sekedar contoh. Menu ini mengatur setiap jenis penerimaan yang mungkin diterima sekolah. Anda harus menentukan rekening Kas, Pendapatan dan Piutang untuk setiap transaksi penerimaan.','SMK Negeri 12 Malang',NULL,NULL,NULL,'2010-08-03 11:18:36',12756,0),(12,'Sumbangan BOS',NULL,'LNN','113','414','152',1,'Sekedar contoh. Menu ini mengatur setiap jenis penerimaan yang mungkin diterima sekolah. Anda harus menentukan rekening Kas, Pendapatan dan Piutang untuk setiap transaksi penerimaan.','SMK Negeri 12 Malang',NULL,NULL,NULL,'2010-03-02 03:06:52',5601,0),(13,'Tabungan Siswa',NULL,'SKR','112','413','150',1,'Sekedar contoh. Menu ini mengatur setiap jenis penerimaan yang mungkin diterima sekolah. Anda harus menentukan rekening Kas, Pendapatan dan Piutang untuk setiap transaksi penerimaan.','SMK Negeri 12 Malang',NULL,NULL,NULL,'2010-03-02 03:06:52',55264,0),(14,'Sumbangan Pendidikan',NULL,'CSSKR','112','413','152',1,'Sekedar contoh. Menu ini mengatur setiap jenis penerimaan yang mungkin diterima sekolah. Anda harus menentukan rekening Kas, Pendapatan dan Piutang untuk setiap transaksi penerimaan.','SMK Negeri 12 Malang',NULL,NULL,NULL,'2010-03-02 03:06:52',62929,0);
/*!40000 ALTER TABLE `datapenerimaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_datapenerimaan_100` BEFORE INSERT ON `datapenerimaan` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_datapenerimaan_100` BEFORE UPDATE ON `datapenerimaan` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_datapenerimaan_100` AFTER DELETE ON `datapenerimaan` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'datapenerimaan', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `datapengeluaran`
--

DROP TABLE IF EXISTS `datapengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datapengeluaran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departemen` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `rekdebet` varchar(15) NOT NULL,
  `rekkredit` varchar(15) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `besar` decimal(15,0) NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_datapengeluaran_departemen` (`departemen`),
  KEY `FK_datapengeluaran_rekakun` (`rekdebet`),
  KEY `FK_datapengeluaran_rekakun2` (`rekkredit`),
  KEY `IX_datapengeluaran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_datapengeluaran_departemen` FOREIGN KEY (`departemen`) REFERENCES `jbsakad`.`departemen` (`departemen`) ON UPDATE CASCADE,
  CONSTRAINT `FK_datapengeluaran_rekakun` FOREIGN KEY (`rekdebet`) REFERENCES `rekakun` (`kode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_datapengeluaran_rekakun2` FOREIGN KEY (`rekkredit`) REFERENCES `rekakun` (`kode`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datapengeluaran`
--

LOCK TABLES `datapengeluaran` WRITE;
/*!40000 ALTER TABLE `datapengeluaran` DISABLE KEYS */;
INSERT INTO `datapengeluaran` VALUES (4,'SMK Negeri 12 Malang','Bayar Listrik','501','111',1,'Sekedar contoh. Menu ini mengatur setiap jenis pengeluaran yang mungkin dikeluarkan sekolah. Anda harus menentukan rekening Kas dan Beban untuk setiap transaksi pengeluaran.','0',NULL,NULL,NULL,'2010-03-02 03:06:52',17792,0);
/*!40000 ALTER TABLE `datapengeluaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupbarang`
--

DROP TABLE IF EXISTS `groupbarang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupbarang` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(45) DEFAULT NULL,
  `namagroup` varchar(45) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_groupbarang_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupbarang`
--

LOCK TABLES `groupbarang` WRITE;
/*!40000 ALTER TABLE `groupbarang` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupbarang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_groupbarang_100` BEFORE INSERT ON `groupbarang` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_groupbarang_100` BEFORE UPDATE ON `groupbarang` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_groupbarang_100` AFTER DELETE ON `groupbarang` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'groupbarang', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jurnal`
--

DROP TABLE IF EXISTS `jurnal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurnal` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `transaksi` varchar(255) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `nokas` varchar(100) NOT NULL,
  `idtahunbuku` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `sumber` varchar(40) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_jurnal_tahunbuku` (`idtahunbuku`),
  KEY `IX_jurnal_tanggal` (`tanggal`),
  KEY `IX_jurnal_idtahunbuku` (`idtahunbuku`),
  KEY `IX_jurnal_ts` (`ts`,`issync`),
  CONSTRAINT `FK_jurnal_tahunbuku` FOREIGN KEY (`idtahunbuku`) REFERENCES `tahunbuku` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurnal`
--

LOCK TABLES `jurnal` WRITE;
/*!40000 ALTER TABLE `jurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurnal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurnaldetail`
--

DROP TABLE IF EXISTS `jurnaldetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurnaldetail` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idjurnal` int(10) unsigned NOT NULL,
  `koderek` varchar(15) NOT NULL,
  `debet` decimal(15,0) NOT NULL DEFAULT '0',
  `kredit` decimal(15,0) NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_jurnaldetail_jurnal` (`idjurnal`),
  KEY `IX_jurnaldetail_koderek` (`koderek`),
  KEY `IX_jurnaldetail_ts` (`ts`,`issync`),
  CONSTRAINT `FK_jurnaldetail_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurnaldetail`
--

LOCK TABLES `jurnaldetail` WRITE;
/*!40000 ALTER TABLE `jurnaldetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurnaldetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoripenerimaan`
--

DROP TABLE IF EXISTS `kategoripenerimaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoripenerimaan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `urutan` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siswa` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kode`),
  UNIQUE KEY `Index_1` (`replid`),
  KEY `IX_kategoripenerimaan_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoripenerimaan`
--

LOCK TABLES `kategoripenerimaan` WRITE;
/*!40000 ALTER TABLE `kategoripenerimaan` DISABLE KEYS */;
INSERT INTO `kategoripenerimaan` VALUES (4,'CSSKR','Iuran Sukarela Calon Siswa',4,1,NULL,NULL,NULL,'2010-03-02 03:06:52',31230,0),(3,'CSWJB','Iuran Wajib Calon Siswa',3,1,NULL,NULL,NULL,'2010-03-02 03:06:52',37247,0),(1,'JTT','Iuran Wajib Siswa',1,1,NULL,NULL,NULL,'2010-03-02 03:06:52',27011,0),(5,'LNN','Penerimaan Lainnya',5,1,NULL,NULL,NULL,'2010-03-02 03:06:52',23315,0),(2,'SKR','Iuran Sukarela Siswa',2,1,NULL,NULL,NULL,'2010-03-02 03:06:52',35541,0);
/*!40000 ALTER TABLE `kategoripenerimaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kategoripenerimaan_100` BEFORE INSERT ON `kategoripenerimaan` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kategoripenerimaan_100` BEFORE UPDATE ON `kategoripenerimaan` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.kode <> OLD.kode THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'kategoripenerimaan', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.kode, oldpk = OLD.kode;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kategoripenerimaan_100` AFTER DELETE ON `kategoripenerimaan` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'kategoripenerimaan', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `katerekakun`
--

DROP TABLE IF EXISTS `katerekakun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `katerekakun` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) NOT NULL,
  `urutan` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kategori`),
  UNIQUE KEY `Index_1` (`replid`),
  KEY `IX_katerekakun_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katerekakun`
--

LOCK TABLES `katerekakun` WRITE;
/*!40000 ALTER TABLE `katerekakun` DISABLE KEYS */;
INSERT INTO `katerekakun` VALUES (7,'BIAYA',7,NULL,NULL,NULL,'2010-03-02 03:06:52',42231,0),(1,'HARTA',1,NULL,NULL,NULL,'2010-03-02 03:06:52',38999,0),(3,'INVENTARIS',3,NULL,NULL,NULL,'2010-03-02 03:06:52',2775,0),(5,'MODAL',5,NULL,NULL,NULL,'2010-03-02 03:06:52',27935,0),(6,'PENDAPATAN',6,NULL,NULL,NULL,'2010-03-02 03:06:52',289,0),(2,'PIUTANG',2,NULL,NULL,NULL,'2010-03-02 03:06:52',48701,0),(4,'UTANG',4,NULL,NULL,NULL,'2010-03-02 03:06:52',46047,0);
/*!40000 ALTER TABLE `katerekakun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelompokbarang`
--

DROP TABLE IF EXISTS `kelompokbarang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelompokbarang` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kelompok` varchar(255) NOT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `idgroup` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_kelompokbarang_group` (`idgroup`),
  KEY `IX_kelompokbarang_ts` (`ts`,`issync`),
  CONSTRAINT `FK_kelompokbarang_group` FOREIGN KEY (`idgroup`) REFERENCES `groupbarang` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelompokbarang`
--

LOCK TABLES `kelompokbarang` WRITE;
/*!40000 ALTER TABLE `kelompokbarang` DISABLE KEYS */;
/*!40000 ALTER TABLE `kelompokbarang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_kelompokbarang_100` BEFORE INSERT ON `kelompokbarang` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_kelompokbarang_100` BEFORE UPDATE ON `kelompokbarang` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_kelompokbarang_100` AFTER DELETE ON `kelompokbarang` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'kelompokbarang', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pemohonlain`
--

DROP TABLE IF EXISTS `pemohonlain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemohonlain` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_pemohonlain_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemohonlain`
--

LOCK TABLES `pemohonlain` WRITE;
/*!40000 ALTER TABLE `pemohonlain` DISABLE KEYS */;
/*!40000 ALTER TABLE `pemohonlain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penerimaaniuran`
--

DROP TABLE IF EXISTS `penerimaaniuran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penerimaaniuran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `nis` varchar(20) NOT NULL,
  `alasan` varchar(500) DEFAULT '" "',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pembayaraniuran_jurnal` (`idjurnal`),
  KEY `FK_pembayaraniuran_datapenerimaan` (`idpenerimaan`),
  KEY `FK_pembayaraniuran_siswa` (`nis`),
  KEY `IX_penerimaaniuran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pembayaraniuran_datapenerimaan` FOREIGN KEY (`idpenerimaan`) REFERENCES `datapenerimaan` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pembayaraniuran_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pembayaraniuran_siswa` FOREIGN KEY (`nis`) REFERENCES `jbsakad`.`siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penerimaaniuran`
--

LOCK TABLES `penerimaaniuran` WRITE;
/*!40000 ALTER TABLE `penerimaaniuran` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerimaaniuran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_penerimaaniuran_100` BEFORE INSERT ON `penerimaaniuran` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_penerimaaniuran_100` AFTER INSERT ON `penerimaaniuran` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xdepartemen varchar(25);
	
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    
    select departemen into xdepartemen
    	from datapenerimaan
    	where replid = new.idpenerimaan; 
		
    insert into transaksilog set sumber='penerimaaniuran', idsumber=new.replid, 
    	tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0, departemen=xdepartemen;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_penerimaaniuran_100` BEFORE UPDATE ON `penerimaaniuran` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_penerimaaniuran_101` AFTER UPDATE ON `penerimaaniuran` FOR EACH ROW BEGIN
	declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xidaudit int;
    declare xdepartemen varchar(25);
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		select transaksi, nokas, idtahunbuku, keterangan 
			into xinfo, xnokas, xidtahunbuku, xketerangan 
			from jurnal where replid = new.idjurnal;
		
		select departemen into xdepartemen
			from datapenerimaan
			where replid = new.idpenerimaan; 
			
		update transaksilog set tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
			idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0 
			where sumber='penerimaaniuran' and idsumber=new.replid;
		
		IF new.tanggal <> old.tanggal THEN
			update jurnal set tanggal = new.tanggal where replid = new.idjurnal;
		END IF;	
		
		insert into auditinfo set departemen=xdepartemen, sumber='penerimaaniuran', idsumber=new.replid, tanggal=now(), petugas=new.petugas, alasan=new.alasan;
		
		select last_insert_id() into xidaudit;
		
		insert into auditpenerimaaniuran set statusdata=0, idaudit=xidaudit, replid=old.replid, idjurnal=old.idjurnal, 
			tanggal=old.tanggal, jumlah=old.jumlah, keterangan=old.keterangan, petugas=old.petugas, idpenerimaan=old.idpenerimaan,
			nis=old.nis;
		
		insert into auditpenerimaaniuran set statusdata=1, idaudit=xidaudit, replid=new.replid, idjurnal=new.idjurnal, 
			tanggal=new.tanggal, jumlah=new.jumlah, keterangan=new.keterangan, petugas=new.petugas, idpenerimaan=new.idpenerimaan,
			nis=new.nis;
		
	END IF;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_penerimaaniuran_100` AFTER DELETE ON `penerimaaniuran` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'penerimaaniuran', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penerimaaniurancalon`
--

DROP TABLE IF EXISTS `penerimaaniurancalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penerimaaniurancalon` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `idcalon` int(10) unsigned NOT NULL,
  `alasan` varchar(500) DEFAULT '" "',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_penerimaaniurancalon_datapenerimaan` (`idpenerimaan`),
  KEY `FK_penerimaaniurancalon_calon` (`idcalon`),
  KEY `FK_penerimaaniurancalon_jurnal` (`idjurnal`),
  KEY `IX_penerimaaniurancalon_ts` (`ts`,`issync`),
  CONSTRAINT `FK_penerimaaniurancalon_calon` FOREIGN KEY (`idcalon`) REFERENCES `jbsakad`.`calonsiswa` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_penerimaaniurancalon_datapenerimaan` FOREIGN KEY (`idpenerimaan`) REFERENCES `datapenerimaan` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_penerimaaniurancalon_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penerimaaniurancalon`
--

LOCK TABLES `penerimaaniurancalon` WRITE;
/*!40000 ALTER TABLE `penerimaaniurancalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerimaaniurancalon` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_penerimaaniurancalon_100` BEFORE INSERT ON `penerimaaniurancalon` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_penerimaaniurancalon_100` AFTER INSERT ON `penerimaaniurancalon` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xdepartemen varchar(25);
	
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    
    select departemen into xdepartemen
    	from datapenerimaan
    	where replid = new.idpenerimaan; 
		
    insert into transaksilog set sumber='penerimaaniurancalon', idsumber=new.replid, 
    	tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0, departemen=xdepartemen;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_penerimaaniurancalon_100` BEFORE UPDATE ON `penerimaaniurancalon` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_penerimaaniurancalon_101` AFTER UPDATE ON `penerimaaniurancalon` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xidaudit int;
    declare xdepartemen varchar(25);
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		select transaksi, nokas, idtahunbuku, keterangan 
			into xinfo, xnokas, xidtahunbuku, xketerangan 
			from jurnal where replid = new.idjurnal;
		
		select departemen into xdepartemen
			from datapenerimaan
			where replid = new.idpenerimaan; 
			
		update transaksilog set tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
			idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0 
			where sumber='penerimaaniurancalon' and idsumber=new.replid;
			
		IF new.tanggal <> old.tanggal THEN
			update jurnal set tanggal = new.tanggal where replid = new.idjurnal;
		END IF;	
		
		insert into auditinfo set departemen=xdepartemen, sumber='penerimaaniurancalon', idsumber=new.replid, tanggal=now(), petugas=new.petugas, alasan=new.alasan;
		
		select last_insert_id() into xidaudit;
		
		insert into auditpenerimaaniurancalon set statusdata=0, idaudit=xidaudit, replid=old.replid, idjurnal=old.idjurnal, 
			tanggal=old.tanggal, jumlah=old.jumlah, keterangan=old.keterangan, petugas=old.petugas, idpenerimaan=old.idpenerimaan,
			idcalon=old.idcalon;
		
		insert into auditpenerimaaniurancalon set statusdata=1, idaudit=xidaudit, replid=new.replid, idjurnal=new.idjurnal, 
			tanggal=new.tanggal, jumlah=new.jumlah, keterangan=new.keterangan, petugas=new.petugas, idpenerimaan=new.idpenerimaan,
			idcalon=new.idcalon;
	
	END IF;	
    		
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_penerimaaniurancalon_100` AFTER DELETE ON `penerimaaniurancalon` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'penerimaaniurancalon', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penerimaanjtt`
--

DROP TABLE IF EXISTS `penerimaanjtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penerimaanjtt` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idbesarjtt` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `alasan` varchar(500) DEFAULT ' ',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pembayaranjtt_besatjtt` (`idbesarjtt`),
  KEY `FK_pembayaranjtt_jurnal` (`idjurnal`),
  KEY `IX_penerimaanjtt_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pembayaranjtt_besatjtt` FOREIGN KEY (`idbesarjtt`) REFERENCES `besarjtt` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pembayaranjtt_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penerimaanjtt`
--

LOCK TABLES `penerimaanjtt` WRITE;
/*!40000 ALTER TABLE `penerimaanjtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerimaanjtt` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_penerimaanjtt_100` BEFORE INSERT ON `penerimaanjtt` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_penerimaanjtt_100` AFTER INSERT ON `penerimaanjtt` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xdepartemen varchar(25);
    
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    
    select p.departemen into xdepartemen
    	from besarjtt b, datapenerimaan p
    	where b.idpenerimaan = p.replid and b.replid = new.idbesarjtt;
    
    insert into transaksilog set sumber='penerimaanjtt', idsumber=new.replid, 
    	tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0, departemen=xdepartemen;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_penerimaanjtt_100` BEFORE UPDATE ON `penerimaanjtt` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_penerimaanjtt_101` AFTER UPDATE ON `penerimaanjtt` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xidaudit int;
    declare xdepartemen varchar(25);
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		select transaksi, nokas, idtahunbuku, keterangan 
			into xinfo, xnokas, xidtahunbuku, xketerangan
			from jurnal where replid = new.idjurnal;
			
		select p.departemen into xdepartemen
			from besarjtt b, datapenerimaan p
			where b.idpenerimaan = p.replid and b.replid = new.idbesarjtt;
			
		update transaksilog set tanggal = new.tanggal, transaksi = xinfo, petugas = new.petugas, nokas = xnokas, 
			idtahunbuku = xidtahunbuku, keterangan = xketerangan, debet = new.jumlah, kredit = 0 
			where sumber='penerimaanjtt' and idsumber=new.replid;
			
		IF new.tanggal <> old.tanggal THEN
			update jurnal set tanggal = new.tanggal where replid = new.idjurnal;
		END IF;
			
		insert into auditinfo set departemen=xdepartemen, sumber='penerimaanjtt', idsumber=new.replid, tanggal=now(), petugas=new.petugas, alasan=new.alasan;
		
		select last_insert_id() into xidaudit;
		
		insert into auditpenerimaanjtt set statusdata=0, idaudit=xidaudit, replid=old.replid, idbesarjtt=old.idbesarjtt, 
			idjurnal=old.idjurnal, tanggal=old.tanggal, jumlah=old.jumlah, keterangan=old.keterangan, petugas=old.petugas;
			
		insert into auditpenerimaanjtt set statusdata=1, idaudit=xidaudit, replid=new.replid, idbesarjtt=new.idbesarjtt, 
			idjurnal=new.idjurnal, tanggal=new.tanggal, jumlah=new.jumlah, keterangan=new.keterangan, petugas=new.petugas;
		
	END IF;		
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_penerimaanjtt_100` AFTER DELETE ON `penerimaanjtt` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'penerimaanjtt', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penerimaanjttcalon`
--

DROP TABLE IF EXISTS `penerimaanjttcalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penerimaanjttcalon` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idbesarjttcalon` int(10) unsigned NOT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `alasan` varchar(500) DEFAULT '" "',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_penerimaanjttcalon_jurnal` (`idjurnal`),
  KEY `FK_penerimaanjttcalon_besarjtt` (`idbesarjttcalon`),
  KEY `IX_penerimaanjttcalon_ts` (`ts`,`issync`),
  CONSTRAINT `FK_penerimaanjttcalon_besarjttcalon` FOREIGN KEY (`idbesarjttcalon`) REFERENCES `besarjttcalon` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_penerimaanjttcalon_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penerimaanjttcalon`
--

LOCK TABLES `penerimaanjttcalon` WRITE;
/*!40000 ALTER TABLE `penerimaanjttcalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerimaanjttcalon` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_penerimaanjttcalon_100` BEFORE INSERT ON `penerimaanjttcalon` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_penerimaanjttcalon_100` AFTER INSERT ON `penerimaanjttcalon` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xdepartemen varchar(25);
    
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    
    select p.departemen into xdepartemen
    	from besarjttcalon b, datapenerimaan p
    	where b.idpenerimaan = p.replid and b.replid = new.idbesarjttcalon;
    
    insert into transaksilog set sumber='penerimaanjttcalon', idsumber=new.replid, 
    	tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0, departemen=xdepartemen;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_penerimaanjttcalon_100` BEFORE UPDATE ON `penerimaanjttcalon` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_penerimaanjttcalon_101` AFTER UPDATE ON `penerimaanjttcalon` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xidaudit int;
    declare xdepartemen varchar(25);
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		select transaksi, nokas, idtahunbuku, keterangan 
			into xinfo, xnokas, xidtahunbuku, xketerangan
			from jurnal where replid = new.idjurnal;
			
		select p.departemen into xdepartemen
			from besarjttcalon b, datapenerimaan p
			where b.idpenerimaan = p.replid and b.replid = new.idbesarjttcalon;
			
		update transaksilog set tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
			idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0 
			where sumber='penerimaanjttcalon' and idsumber=new.replid;
		
		IF new.tanggal <> old.tanggal THEN
			update jurnal set tanggal = new.tanggal where replid = new.idjurnal;
		END IF;
			
		insert into auditinfo set departemen=xdepartemen, sumber='penerimaanjttcalon', idsumber=new.replid, tanggal=now(), petugas=  new.petugas, alasan=new.alasan;
		
		select last_insert_id() into xidaudit;
		
		insert into auditpenerimaanjttcalon set statusdata=0, idaudit=xidaudit, replid=old.replid, idbesarjttcalon=old.idbesarjttcalon, idjurnal=old.idjurnal, tanggal=old.tanggal, jumlah=old.jumlah, keterangan=old.keterangan, petugas=old.petugas;
		
		insert into auditpenerimaanjttcalon set statusdata=1, idaudit=xidaudit, replid=new.replid, idbesarjttcalon=new.idbesarjttcalon, idjurnal=new.idjurnal, tanggal=new.tanggal, jumlah=new.jumlah, keterangan=new.keterangan, petugas=new.petugas;

	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_penerimaanjttcalon_100` AFTER DELETE ON `penerimaanjttcalon` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsfina', tablename = 'penerimaanjttcalon', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penerimaanlain`
--

DROP TABLE IF EXISTS `penerimaanlain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penerimaanlain` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idjurnal` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(100) DEFAULT NULL,
  `idpenerimaan` int(10) unsigned NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `alasan` varchar(500) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pembayaranlain_jurnal` (`idjurnal`),
  KEY `FK_pembayaranlain_datapenerimaan` (`idpenerimaan`),
  KEY `IX_penerimaanlain_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pembayaranlain_datapenerimaan` FOREIGN KEY (`idpenerimaan`) REFERENCES `datapenerimaan` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pembayaranlain_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penerimaanlain`
--

LOCK TABLES `penerimaanlain` WRITE;
/*!40000 ALTER TABLE `penerimaanlain` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerimaanlain` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_penerimaanlain_100` AFTER INSERT ON `penerimaanlain` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xdepartemen varchar(25);
	
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    
    select departemen into xdepartemen
    	from datapenerimaan
    	where replid = new.idpenerimaan; 
		
    insert into transaksilog set sumber='penerimaanlain', idsumber=new.replid, 
    	tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0, departemen=xdepartemen;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_penerimaanlain_101` AFTER UPDATE ON `penerimaanlain` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xidaudit int;
    declare xdepartemen varchar(25);
	
	IF @DISABLE_TRIGER IS NULL THEN
	
		select transaksi, nokas, idtahunbuku, keterangan 
			into xinfo, xnokas, xidtahunbuku, xketerangan 
			from jurnal where replid = new.idjurnal;
			
		select departemen into xdepartemen
			from datapenerimaan
			where replid = new.idpenerimaan; 
			
		update transaksilog set tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
			idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=new.jumlah, kredit=0 
			where sumber='penerimaanlain' and idsumber=new.replid;
		
		IF new.tanggal <> old.tanggal THEN
			update jurnal set tanggal = new.tanggal where replid = new.idjurnal;
		END IF;	
		
		insert into auditinfo set departemen=xdepartemen, sumber='penerimaanlain', idsumber=new.replid, tanggal=now(), petugas=new.petugas, alasan=new.alasan;
		
		select last_insert_id() into xidaudit;
		
		insert into auditpenerimaanlain set statusdata=0, idaudit=xidaudit, replid=old.replid, idjurnal=old.idjurnal, 
			tanggal=old.tanggal, jumlah=old.jumlah, keterangan=old.keterangan, petugas=old.petugas, idpenerimaan=old.idpenerimaan,
			sumber=old.sumber;
			
		insert into auditpenerimaanlain set statusdata=1, idaudit=xidaudit, replid=new.replid, idjurnal=new.idjurnal, 
			tanggal=new.tanggal, jumlah=new.jumlah, keterangan=new.keterangan, petugas=new.petugas, idpenerimaan=new.idpenerimaan,
			sumber=new.sumber;
		
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pengeluaran`
--

DROP TABLE IF EXISTS `pengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengeluaran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpengeluaran` int(10) unsigned NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `jenispemohon` tinyint(1) unsigned NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `pemohonlain` int(10) unsigned DEFAULT NULL,
  `penerima` varchar(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tanggalkeluar` datetime NOT NULL,
  `jumlah` decimal(15,0) NOT NULL,
  `petugas` varchar(45) DEFAULT NULL,
  `idjurnal` int(10) unsigned NOT NULL,
  `keterangan` text,
  `namapemohon` varchar(100) NOT NULL,
  `alasan` varchar(500) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pengeluaran_nis` (`nis`),
  KEY `FK_pengeluaran_nip` (`nip`),
  KEY `FK_pengeluaran_jurnal` (`idjurnal`),
  KEY `FK_pengeluaran_pemohonlain` (`pemohonlain`),
  KEY `IX_pengeluaran_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pengeluaran_jurnal` FOREIGN KEY (`idjurnal`) REFERENCES `jurnal` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pengeluaran_nip` FOREIGN KEY (`nip`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pengeluaran_nis` FOREIGN KEY (`nis`) REFERENCES `jbsakad`.`siswa` (`nis`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pengeluaran_pemohonlain` FOREIGN KEY (`pemohonlain`) REFERENCES `pemohonlain` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluaran`
--

LOCK TABLES `pengeluaran` WRITE;
/*!40000 ALTER TABLE `pengeluaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trins_pengeluaran_100` AFTER INSERT ON `pengeluaran` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xdepartemen varchar(25);
	
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    
    select departemen into xdepartemen
    	from datapengeluaran
    	where replid = new.idpengeluaran;
		
    insert into transaksilog set sumber='pengeluaran', idsumber=new.replid, 
    	tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=0, kredit=new.jumlah, departemen=xdepartemen;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trupd_pengeluaran_100` AFTER UPDATE ON `pengeluaran` FOR EACH ROW BEGIN
    declare xinfo varchar(255);
    declare xnokas varchar(100);
    declare xidtahunbuku int;
    declare xketerangan varchar(255);
    declare xidaudit int;
    declare xdepartemen varchar(25);
	
    select transaksi, nokas, idtahunbuku, keterangan 
    	into xinfo, xnokas, xidtahunbuku, xketerangan 
    	from jurnal where replid = new.idjurnal;
    	
    select departemen into xdepartemen
    	from datapengeluaran
    	where replid = new.idpengeluaran;
		
    update transaksilog set tanggal=new.tanggal, transaksi=xinfo, petugas=new.petugas, nokas=xnokas, 
    	idtahunbuku=xidtahunbuku, keterangan=xketerangan, debet=0, kredit=new.jumlah
    	where sumber='pengeluaran' and idsumber=new.replid;
	
	IF new.tanggal <> old.tanggal THEN
        update jurnal set tanggal = new.tanggal where replid = new.idjurnal;
    END IF;	
    
    insert into auditinfo set departemen=xdepartemen, sumber='pengeluaran', idsumber=new.replid, tanggal=now(), petugas=new.petugas, alasan=new.alasan;
    
    select last_insert_id() into xidaudit;
    
    insert into auditpengeluaran set statusdata=0, idaudit=xidaudit, replid=old.replid, idpengeluaran=old.idpengeluaran, 
    	keperluan=old.keperluan, jenispemohon=old.jenispemohon, nip=old.nip, nis=old.nis, pemohonlain=old.pemohonlain, 
    	penerima=old.penerima, tanggal=old.tanggal, tanggalkeluar=old.tanggalkeluar, jumlah=old.jumlah, petugas=old.petugas,
    	idjurnal=old.idjurnal, keterangan=old.keterangan, namapemohon=old.namapemohon;
    
    insert into auditpengeluaran set statusdata=1, idaudit=xidaudit, replid=new.replid, idpengeluaran=new.idpengeluaran, 
    	keperluan=new.keperluan, jenispemohon=new.jenispemohon, nip=new.nip, nis=new.nis, pemohonlain=new.pemohonlain, 
    	penerima=new.penerima, tanggal=new.tanggal, tanggalkeluar=new.tanggalkeluar, jumlah=new.jumlah, petugas=new.petugas,
    	idjurnal=new.idjurnal, keterangan=new.keterangan, namapemohon=new.namapemohon;
    		
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengguna` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) NOT NULL,
  `tingkat` tinyint(1) unsigned NOT NULL,
  `departemen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pengguna_pegawai` (`nip`),
  KEY `IX_pengguna_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pengguna_pegawai` FOREIGN KEY (`nip`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rekakun`
--

DROP TABLE IF EXISTS `rekakun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekakun` (
  `kode` varchar(15) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kode`),
  KEY `FK_rekakun_katerekakun` (`kategori`),
  KEY `IX_rekakun_ts` (`ts`,`issync`),
  CONSTRAINT `FK_rekakun_katerekakun` FOREIGN KEY (`kategori`) REFERENCES `katerekakun` (`kategori`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekakun`
--

LOCK TABLES `rekakun` WRITE;
/*!40000 ALTER TABLE `rekakun` DISABLE KEYS */;
INSERT INTO `rekakun` VALUES ('111','HARTA','Kas','Kas yang ada disekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',18600,0),('112','HARTA','Kas Bank','Kas yang ada di bank yang digunakan sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',20390,0),('113','HARTA','Kas BOS','Kas yang diterima dari sumbangan Bantuan Operasional Sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',46147,0),('150','PIUTANG','Piutang Siswa','Piutang siswa kepada sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',38508,0),('151','PIUTANG','Piutang Karyawan','Piutang karyawan kepada sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',54096,0),('152','PIUTANG','Piutang Usaha','Piutang yang lain kepada sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',23895,0),('411','PENDAPATAN','Pendapatan SPP','Pendapatan dari pembayaran SPP siswa',NULL,NULL,NULL,'2010-03-02 03:06:53',22719,0),('412','PENDAPATAN','Pendapatan DSP','Pendapatan dari pembayaran DSP siswa',NULL,NULL,NULL,'2010-03-02 03:06:53',41907,0),('413','PENDAPATAN','Pendapatan Sukarela','Pendapatan dari perolehan dana sukarela',NULL,NULL,NULL,'2010-03-02 03:06:53',10317,0),('414','PENDAPATAN','Pendapatan BOS','Pendaptan dari penerimaan sumbangan Bantuan Operasional Sekolah (BOS)',NULL,NULL,NULL,'2010-03-02 03:06:53',56924,0),('500','BIAYA','Beban Transportasi','Beban yang dikeluarkan untuk pembiayaan transportasi',NULL,NULL,NULL,'2010-03-02 03:06:53',57077,0),('501','BIAYA','Beban Listrik','Beban yang dikeluarkan untuk melunasi tagihan PLN',NULL,NULL,NULL,'2010-03-02 03:06:53',49084,0),('502','BIAYA','Beban Telpon','Beban yang dikeluarkan untuk pembiayaan tagihan telpon',NULL,NULL,NULL,'2010-03-02 03:06:53',8658,0),('503','BIAYA','Beban Internet','Beban yang dikeluarkan untuk pembiayaan taghan Internet',NULL,NULL,NULL,'2010-03-02 03:06:53',27097,0),('504','BIAYA','Beban ATK','Beban yang dikeluarkan untuk pembelian rutin ATK',NULL,NULL,NULL,'2010-03-02 03:06:53',43981,0),('611','INVENTARIS','Peralatan Mengajar','Inventaris alat-alat kegiatan belajar mengajar',NULL,NULL,NULL,'2010-03-02 03:06:53',7554,0),('612','INVENTARIS','Kendaraan','Inventaris kendaraan sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',36888,0),('700','MODAL','Modal Usaha','Modal yang ditanamkan oleh pemodal kepada sekolah',NULL,NULL,NULL,'2010-03-02 03:06:53',30715,0),('900','UTANG','Utang Usaha','Utang sekolah kepada kreditur',NULL,NULL,NULL,'2010-03-02 03:06:53',42913,0);
/*!40000 ALTER TABLE `rekakun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tahunbuku`
--

DROP TABLE IF EXISTS `tahunbuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tahunbuku` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahunbuku` varchar(100) NOT NULL,
  `awalan` varchar(5) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `cacah` bigint(20) unsigned NOT NULL DEFAULT '0',
  `departemen` varchar(50) NOT NULL,
  `tanggalmulai` date NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_tahunbuku_departemen` (`departemen`),
  KEY `IX_tahunbuku_ts` (`ts`,`issync`),
  CONSTRAINT `FK_tahunbuku_departemen` FOREIGN KEY (`departemen`) REFERENCES `jbsakad`.`departemen` (`departemen`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tahunbuku`
--

LOCK TABLES `tahunbuku` WRITE;
/*!40000 ALTER TABLE `tahunbuku` DISABLE KEYS */;
/*!40000 ALTER TABLE `tahunbuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksilog`
--

DROP TABLE IF EXISTS `transaksilog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksilog` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sumber` varchar(45) NOT NULL,
  `idsumber` int(10) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `transaksi` varchar(255) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `nokas` varchar(100) NOT NULL,
  `idtahunbuku` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `debet` decimal(15,0) NOT NULL DEFAULT '0',
  `kredit` decimal(15,0) NOT NULL DEFAULT '0',
  `departemen` varchar(25) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_transaksilog_departemen` (`departemen`),
  KEY `IX_transaksilog_ts` (`ts`,`issync`),
  CONSTRAINT `FK_transaksilog_departemen` FOREIGN KEY (`departemen`) REFERENCES `jbsakad`.`departemen` (`departemen`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksilog`
--

LOCK TABLES `transaksilog` WRITE;
/*!40000 ALTER TABLE `transaksilog` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksilog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jbsperpus`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsperpus` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsperpus`;

--
-- Table structure for table `aktivitas`
--

DROP TABLE IF EXISTS `aktivitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aktivitas` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `aktivitas` text,
  `perpustakaan` int(10) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_aktivitas_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aktivitas`
--

LOCK TABLES `aktivitas` WRITE;
/*!40000 ALTER TABLE `aktivitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `aktivitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggota` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `noregistrasi` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `alamat` varchar(255) NOT NULL,
  `kodepos` varchar(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telpon` varchar(100) DEFAULT NULL,
  `HP` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `institusi` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tgldaftar` date NOT NULL DEFAULT '0000-00-00',
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `foto` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `Index_nopen` (`noregistrasi`),
  KEY `IX_anggota_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 2020352 kB; InnoDB free: 2020352 kB; (`NoRegist';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota`
--

LOCK TABLES `anggota` WRITE;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftarpustaka`
--

DROP TABLE IF EXISTS `daftarpustaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftarpustaka` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pustaka` int(10) unsigned NOT NULL,
  `perpustakaan` int(10) unsigned NOT NULL,
  `kodepustaka` varchar(45) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 dipinjam, 1 tersedia',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_daftarpustaka_perpus` (`perpustakaan`),
  KEY `FK_daftarpustaka_pustaka` (`pustaka`),
  KEY `IX_daftarpustaka_ts` (`ts`,`issync`),
  CONSTRAINT `FK_daftarpustaka_perpus` FOREIGN KEY (`perpustakaan`) REFERENCES `perpustakaan` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_daftarpustaka_pustaka` FOREIGN KEY (`pustaka`) REFERENCES `pustaka` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftarpustaka`
--

LOCK TABLES `daftarpustaka` WRITE;
/*!40000 ALTER TABLE `daftarpustaka` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftarpustaka` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_daftarpustaka_100` BEFORE INSERT ON `daftarpustaka` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_daftarpustaka_100` BEFORE UPDATE ON `daftarpustaka` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_daftarpustaka_100` AFTER DELETE ON `daftarpustaka` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsperpus', tablename = 'daftarpustaka', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `denda`
--

DROP TABLE IF EXISTS `denda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denda` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpinjam` int(10) unsigned NOT NULL,
  `denda` int(10) DEFAULT '0',
  `telat` int(10) unsigned NOT NULL DEFAULT '0',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_denda_idpeminjaman` (`idpinjam`),
  KEY `IX_denda_ts` (`ts`,`issync`),
  CONSTRAINT `FK_denda_idpeminjaman` FOREIGN KEY (`idpinjam`) REFERENCES `pinjam` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denda`
--

LOCK TABLES `denda` WRITE;
/*!40000 ALTER TABLE `denda` DISABLE KEYS */;
/*!40000 ALTER TABLE `denda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `format`
--

DROP TABLE IF EXISTS `format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `format` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `Kode_U` (`kode`),
  KEY `IX_format_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `format`
--

LOCK TABLES `format` WRITE;
/*!40000 ALTER TABLE `format` DISABLE KEYS */;
INSERT INTO `format` VALUES (1,'BU','Buku','',NULL,NULL,NULL,'2010-03-08 01:40:53',0,0);
/*!40000 ALTER TABLE `format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `katalog`
--

DROP TABLE IF EXISTS `katalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `katalog` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `rak` int(10) unsigned NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `counter` int(10) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `REPL_IN` (`kode`),
  KEY `FK_katalog_rak` (`rak`),
  KEY `IX_katalog_ts` (`ts`,`issync`),
  CONSTRAINT `FK_katalog_rak` FOREIGN KEY (`rak`) REFERENCES `rak` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katalog`
--

LOCK TABLES `katalog` WRITE;
/*!40000 ALTER TABLE `katalog` DISABLE KEYS */;
INSERT INTO `katalog` VALUES (1,'000','KARYA UMUM',1,'Klasifikasi pustaka dalam kelompok karya umum ',0,NULL,NULL,NULL,'2010-03-07 10:28:08',48886,0),(2,'010','Bibliografi',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',34247,0),(3,'020','Perpustakaan dan Informasi Sains',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',24576,0),(4,'030','Ensiklopedia dan Buku Pintar',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',20137,0),(5,'040','(   ...   )',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',26959,0),(6,'050','Majalah, Jurnal dan Terbitan Berkala',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',8852,0),(7,'060','Asosiasi, Organisasi dan Museum',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',28911,0),(8,'070','Media Berita, Jurnalisme dan Publikasi',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',52469,0),(9,'080','Kutipan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',44550,0),(10,'090','manuskrip dan buku-buku langka',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',65344,0),(11,'100','FILSAFAT',1,'Klasifikasi pustaka yang tergolong dalam ilmu filsafat',0,NULL,NULL,NULL,'2010-03-07 10:28:08',62009,0),(12,'110','Metafisika',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',48483,0),(13,'120','Epistemologi',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',56389,0),(14,'130','Parapsikologi dan Perdukunan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',5433,0),(15,'140','Filsafat Aliran Pemikiran',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',54588,0),(16,'150','Psikologi',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',60049,0),(17,'160','Logika',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',5421,0),(18,'170','Etika',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',43547,0),(19,'180','Filsafat kuno, pertengahan dan lanjutan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',4883,0),(20,'190','Filsafat Barat Modern',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',24833,0),(21,'200','AGAMA',1,'Klasifikasi pustaka yang berkaitan dengan keagamaan',0,NULL,NULL,NULL,'2010-03-07 10:28:08',43986,0),(22,'210','Filsafat dan Teori Agama',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',14372,0),(23,'220','Injil',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',5431,0),(24,'300','ILMU SOSIAL, SOSIOLOGI dan ANTROPOLOGI',1,'Pengelompokan Pustaka dalam kategori ilmu sosial',0,NULL,NULL,NULL,'2010-03-07 10:28:08',49567,0),(25,'310','Statistika Umum',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',34952,0),(26,'320','Ilmu Politik',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',26057,0),(27,'330','Ekonomi',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',25429,0),(28,'340','Hukum',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',48975,0),(29,'350','Administrasi Umum dan Ilmu Militer',1,'',2,NULL,NULL,NULL,'2010-03-08 01:44:43',37528,0),(30,'360','Permasalahan Sosial dan Pelayanan Sosial',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',40716,0),(31,'370','Pendidikan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',25463,0),(32,'380','Perdagangan, Komunikasi dan Perhubungan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',5165,0),(33,'390','Kewarganegaraan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',14967,0),(34,'400','BAHASA',1,'Klasifikasi pustaka dalam kelompok bahasa',0,NULL,NULL,NULL,'2010-03-07 10:28:08',59340,0),(35,'410','Linguistik',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',55207,0),(36,'420','BAHASA INGGRIS',1,'pengelompokan pustaka (bahasa) dalam kelompok bahasa inggris',0,NULL,NULL,NULL,'2010-03-07 10:28:08',32485,0),(37,'430','Bahasa Arab',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',62332,0),(38,'500','ILMU MURNI',1,'klasifikasi pustaka dalam kelompok ilmu murni',0,NULL,NULL,NULL,'2010-03-07 10:28:08',17616,0),(39,'510','Matematika',1,'pengelompokan pustaka (ilmu murni) dalam kelompok matematika',0,NULL,NULL,NULL,'2010-03-07 10:28:08',32144,0),(40,'530','Fisika',1,'pengelompokan pustaka ilmu murni berdasarkan klas fisika ',0,NULL,NULL,NULL,'2010-03-07 10:28:08',42340,0),(41,'540','Kimia',1,'klasifikasi pustaka ilmu murni dalam kelompok ilmu kimia',0,NULL,NULL,NULL,'2010-03-07 10:28:08',49740,0),(42,'570','Biologi',1,'pengelompokan pustaka ilmu murni kedalam klas biologi',0,NULL,NULL,NULL,'2010-03-07 10:28:08',56148,0),(43,'600','ILMU TERAPAN',1,'pengelompokan pustaka kedalam kategori ilmu terapan',0,NULL,NULL,NULL,'2010-03-07 10:28:08',458,0),(44,'700','KESENIAN',1,'Pengelompokan pustaka kedalam kategori kesenian',0,NULL,NULL,NULL,'2010-03-07 10:28:08',30437,0),(45,'710','Kreasi dan Ketrampilan',1,'',0,NULL,NULL,NULL,'2010-03-07 10:28:08',19752,0),(46,'800','KESUSASTERAAN',1,'klasifikasi pustaka berdasarkan kelompok sastra',0,NULL,NULL,NULL,'2010-03-07 10:28:08',7445,0),(47,'900','GEOGRAFI dan SEJARAH ',1,'klasifikasi pustaka kedalam kelompok ilmu geografi dan sejarah',0,NULL,NULL,NULL,'2010-03-07 10:28:08',43502,0);
/*!40000 ALTER TABLE `katalog` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_katalog_100` BEFORE INSERT ON `katalog` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_katalog_100` BEFORE UPDATE ON `katalog` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_katalog_100` AFTER DELETE ON `katalog` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsperpus', tablename = 'katalog', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `konfigurasi`
--

DROP TABLE IF EXISTS `konfigurasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konfigurasi` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siswa` int(10) unsigned DEFAULT NULL,
  `pegawai` int(10) unsigned DEFAULT NULL,
  `other` int(10) unsigned DEFAULT NULL,
  `denda` int(10) unsigned DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_konfigurasi_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konfigurasi`
--

LOCK TABLES `konfigurasi` WRITE;
/*!40000 ALTER TABLE `konfigurasi` DISABLE KEYS */;
INSERT INTO `konfigurasi` VALUES (1,3,4,0,0,NULL,NULL,NULL,'2010-03-25 06:24:56',0,0);
/*!40000 ALTER TABLE `konfigurasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penerbit`
--

DROP TABLE IF EXISTS `penerbit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penerbit` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `alamat` varchar(255) DEFAULT NULL,
  `telpon` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `kontak` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `REPL_ID` (`kode`),
  KEY `IX_penerbit_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penerbit`
--

LOCK TABLES `penerbit` WRITE;
/*!40000 ALTER TABLE `penerbit` DISABLE KEYS */;
/*!40000 ALTER TABLE `penerbit` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_penerbit_100` BEFORE INSERT ON `penerbit` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_penerbit_100` BEFORE UPDATE ON `penerbit` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_penerbit_100` AFTER DELETE ON `penerbit` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsperpus', tablename = 'penerbit', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penulis`
--

DROP TABLE IF EXISTS `penulis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penulis` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `kontak` varchar(255) DEFAULT NULL,
  `biografi` text,
  `keterangan` varchar(255) DEFAULT NULL,
  `gelardepan` varchar(45) DEFAULT NULL,
  `gelarbelakang` varchar(45) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `REPL_ID` (`kode`),
  KEY `IX_penulis_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penulis`
--

LOCK TABLES `penulis` WRITE;
/*!40000 ALTER TABLE `penulis` DISABLE KEYS */;
/*!40000 ALTER TABLE `penulis` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_penulis_100` BEFORE INSERT ON `penulis` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_penulis_100` BEFORE UPDATE ON `penulis` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_penulis_100` AFTER DELETE ON `penulis` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsperpus', tablename = 'penulis', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `perpustakaan`
--

DROP TABLE IF EXISTS `perpustakaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perpustakaan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `Nama` (`nama`),
  KEY `IX_perpustakaan_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perpustakaan`
--

LOCK TABLES `perpustakaan` WRITE;
/*!40000 ALTER TABLE `perpustakaan` DISABLE KEYS */;
INSERT INTO `perpustakaan` VALUES (1,'sma','',NULL,NULL,NULL,'2010-03-08 01:40:44',0,0);
/*!40000 ALTER TABLE `perpustakaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinjam`
--

DROP TABLE IF EXISTS `pinjam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinjam` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kodepustaka` varchar(45) NOT NULL,
  `tglpinjam` date NOT NULL DEFAULT '0000-00-00',
  `tglkembali` date NOT NULL DEFAULT '0000-00-00',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `idanggota` varchar(45) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 belum di acc, 1 udah di acc, 2 udah dikembalikan',
  `tglditerima` date NOT NULL DEFAULT '0000-00-00',
  `petugaspinjam` varchar(50) DEFAULT NULL,
  `petugaskembali` varchar(50) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`,`tglkembali`),
  KEY `IX_pinjam_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinjam`
--

LOCK TABLES `pinjam` WRITE;
/*!40000 ALTER TABLE `pinjam` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinjam` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_pinjam_100` BEFORE INSERT ON `pinjam` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_pinjam_100` BEFORE UPDATE ON `pinjam` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_pinjam_100` AFTER DELETE ON `pinjam` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsperpus', tablename = 'pinjam', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pustaka`
--

DROP TABLE IF EXISTS `pustaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pustaka` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL DEFAULT '',
  `abstraksi` text NOT NULL,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `tahun` int(4) unsigned NOT NULL DEFAULT '0',
  `keteranganfisik` varchar(255) NOT NULL DEFAULT '',
  `penulis` int(10) unsigned NOT NULL,
  `penerbit` int(10) unsigned NOT NULL,
  `format` int(10) unsigned NOT NULL,
  `katalog` int(10) unsigned NOT NULL,
  `cover` blob,
  `keterangan` varchar(255) DEFAULT NULL,
  `harga` int(10) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pustaka_penulis` (`penulis`),
  KEY `FK_pustaka_format` (`format`),
  KEY `FK_pustaka_katalog` (`katalog`),
  KEY `FK_pustaka_penerbit` (`penerbit`),
  KEY `IX_pustaka_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pustaka_format` FOREIGN KEY (`format`) REFERENCES `format` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pustaka_katalog` FOREIGN KEY (`katalog`) REFERENCES `katalog` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pustaka_penerbit` FOREIGN KEY (`penerbit`) REFERENCES `penerbit` (`replid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pustaka_penulis` FOREIGN KEY (`penulis`) REFERENCES `penulis` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pustaka`
--

LOCK TABLES `pustaka` WRITE;
/*!40000 ALTER TABLE `pustaka` DISABLE KEYS */;
/*!40000 ALTER TABLE `pustaka` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_pustaka_100` BEFORE INSERT ON `pustaka` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_pustaka_100` BEFORE UPDATE ON `pustaka` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_pustaka_100` AFTER DELETE ON `pustaka` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsperpus', tablename = 'pustaka', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rak`
--

DROP TABLE IF EXISTS `rak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rak` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rak` varchar(25) NOT NULL,
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `Kode_U` (`rak`),
  KEY `IX_rak_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rak`
--

LOCK TABLES `rak` WRITE;
/*!40000 ALTER TABLE `rak` DISABLE KEYS */;
INSERT INTO `rak` VALUES (1,'Rak','contoh data',NULL,NULL,NULL,'2010-03-07 10:25:32',0,0);
/*!40000 ALTER TABLE `rak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jbssdm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbssdm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbssdm`;

--
-- Table structure for table `bagianpegawai`
--

DROP TABLE IF EXISTS `bagianpegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bagianpegawai` (
  `bagian` varchar(50) NOT NULL,
  `urutan` tinyint(2) unsigned NOT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bagian`),
  KEY `UXBagianPegawai` (`replid`),
  KEY `IX_bagianpegawai_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bagianpegawai`
--

LOCK TABLES `bagianpegawai` WRITE;
/*!40000 ALTER TABLE `bagianpegawai` DISABLE KEYS */;
INSERT INTO `bagianpegawai` VALUES ('Akademik',1,1,NULL,NULL,NULL,'2010-03-02 03:08:32',53202,0),('Non Akademik',2,2,NULL,NULL,NULL,'2010-03-02 03:08:32',19723,0);
/*!40000 ALTER TABLE `bagianpegawai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_bagianpegawai_100` BEFORE INSERT ON `bagianpegawai` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_bagianpegawai_100` BEFORE UPDATE ON `bagianpegawai` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.bagian <> OLD.bagian THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbssdm', tablename = 'bagianpegawai', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.bagian, oldpk = OLD.bagian;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_bagianpegawai_100` AFTER DELETE ON `bagianpegawai` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbssdm', tablename = 'bagianpegawai', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `panggilan` varchar(50) DEFAULT NULL,
  `gelar` varchar(50) DEFAULT NULL,
  `tmplahir` varchar(50) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `suku` varchar(50) DEFAULT NULL,
  `noid` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `handphone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` blob,
  `bagian` varchar(50) NOT NULL,
  `nikah` varchar(10) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `kelamin` varchar(1) NOT NULL,
  `pinpegawai` varchar(25) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nip`),
  UNIQUE KEY `UX_pegawai_replid` (`replid`),
  KEY `FK_pegawai_agama` (`agama`),
  KEY `FK_pegawai_suku` (`suku`),
  KEY `FK_pegawai_bagian` (`bagian`),
  KEY `IX_pegawai_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pegawai_agama` FOREIGN KEY (`agama`) REFERENCES `jbsumum`.`agama` (`agama`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pegawai_bagian` FOREIGN KEY (`bagian`) REFERENCES `bagianpegawai` (`bagian`) ON UPDATE CASCADE,
  CONSTRAINT `FK_pegawai_suku` FOREIGN KEY (`suku`) REFERENCES `jbsumum`.`suku` (`suku`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` VALUES (23,'1024','Pegawai','','','Bandung','1987-11-01','Islam','Jawa','','                                                ','','','','����\0JFIF\0\0\0\0\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 70\n��\0C\0\n\n\n\n\r\r#%$\"\"!&+7/&)4)!\"0A149;>>>%.DIC<H7=>;��\0C\n\r;(\"(;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;��\0\0P\0:\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�յ]J=b�8��Qw\n�#\0MT:Ϋ�\0A�����N��\'W������k+S���-��̣���(k�]�\0&���%bO�Xr�K�V!no�	i�?δ��\0ɭ��u\"�?�;٩��ec�mY�I��*\0�a�K�Lm���%\ZV~�e��c��w�\0��k\'S�~�n�o��t��n*����U̗v!��C�ϩ��\r׵�8�o?���z���e��f�	$䓁^0��m7�Av���?�@{��u��?��\03\\���-�ez	��q�k����\'����\0��\"�K�xd�I��R~3펼zP�z�\Z>�rE4��.jE�m%�7����pEOs��ڝ���H�`�q�jy4�3�<E�b�p=(!�c����,k\"����&��Ö����?��@z}��e���+h�$\0�{�7i\r��Q��G���>�w��(�t�_Ӹ�-��\"���u�Z��\0�k�\0\\S�\n\0�5_��s�\0-����	d�MѹV�2=*Ʃ�\0!{����\0��7�\"]�:����\0t�t��G)F�e�MP���H�u�)���F�ݜ�V��<�v6�	W�84�[���X�+\0����\0l\\�+i�6�°��Y��l\\�Q��[zĲŦ;�T<�\"*�����?�7+��S��P.9�Z��A����?��-u��R��\0�}��r_�(����TԖ �\"O\"y��͓ҳ/D�֑���\'���c��[���nu��rz�����o���v�3�Q{�;�Q��X�2��x�7����}j�	H��=�(�¸_�Ikf4hQ������ �G��e���!�V�\"cq�[�;}(��Y�V�{���eh����c���f�-�/�\\B�0Ĩ �ȪZN�ڍ�Қ7��9	���q���Vmaiׯ��r����#\Z��!��	l+�}?�U��c�4�G��tW�궒.�l����a�\r{��\0Ѭ@9g��(���#�5�3��3y�GN�����M�l� \0t*}��׬�C}�.��H�h� K��[w-��N��j�<Q0���k	!E\"6*Y?vbU�$gw|P\r�����;BA���\0f��7�C�n���~��k�R�S��.4�Av�%_-X4cpR�<�y��V�YM?J��6���cw�A�m�o���s�P�i\0	� o%Ao^M&�v_��5z�x�\"��\0c؇-��$g�e9�������O_�k�a4q�(�8_%��\0AKo\0㟜�>����\0�E���*�[#�׹i`\r&�/Ac����e�5�+w�Z�)2�c�-�G�9a�s��8\0�ʡT*�\0\0v���','Akademik','tak_ada','',1,'l','12637',NULL,NULL,NULL,'2013-05-27 13:13:28',4536,0),(27,'109','Momon','','','mal','1977-06-06','Hindu','Sunda','','','','','',NULL,'Non Akademik','tak_ada','',1,'l','00498',NULL,NULL,NULL,'2013-05-28 06:37:05',7539,0),(28,'112233','meiu','','','malang','1911-12-13','Islam','Jawa','','','','','',NULL,'Akademik','menikah','',1,'p','77011',NULL,NULL,NULL,'2013-06-17 13:57:26',51328,0),(25,'12312312','Suprapti','','S.Ag.','solo','1989-06-03','Islam','Padang','','','','','','GIF87ax\0x\0�\0\0���DBD���$\"$���dbd������TRT���424���trt���\n���LJL���,*,���ljl���\Z���\\Z\\���<:<���|z|������DFD���$&$���dfd������TVT���464���tvt������LNL���,.,���lnl������\\^\\���<><���|~|���,\0\0\0\0x\0x\0\0���pH,\Z�Ȥr�l:�ШtJ�Z�جv��z��xL.���z�n���|N�����I,^ayU9,>9&]2\Z��P.\n�B+Y,*)5��L,�E#�V>\"�C3�KHU\r;B�D!�J=J%R7,�B/F\n�I6	J#�M2:�/�D	��F\"#J&�N.(0�H�G��gd�\0zHvp@Ȥ��!BP4�!�\"44Qр�?�<�1!	��D�Ƥ��%l��C��\r(6�b�E�\"�%�@c�0�P�r��nL�C�BE\n�.2(	�u�J����\n]6r,Y��Y!4-���Ƒ�>�cݑ\"��\0l׉�F\n������D@6�A�%-tF��G�L��9A��4V70����Y(�Q��-����c��$0�S�C\0�l��s�%�>�z0�D�5���$d=�\Z�V�\\ڃ\ZH \0\0\0�6�x��	�@����ԧ��Aq�}��6@�6�\0���\"��x��i�)�)|W�Px|��0�PQ-,���`�l�D��\"Ԡ�!l��8���	���\r�Ѓ\0�5�\0K�CG,��\nQ<��1��\0[B��Ba��@2�	�sq$\'�� ��Z\04����;`B�c�/İ\'|�F{*�BcQ��AYB���\nH�\0����8TZ�S� ���J���	CIm$�j}YJ��[EHP\"(�*\rG����p�	N\n!�6��)\Z����F��\0�2�î,gF���UH������Oj��,�Tt�*#�����{F���P�\'�\'��>A��4����FLŚ5���&a��(\\��r0��`�~� ��P�+���C����\0s\0�\n	d��\n�PnKx��g��k�M�f�\n<����I�>8��0����i���x�B���������*;�ت����\Z�W\02�zCJ���4,S�/(��!�L��®$�[�1�P�@�P\n-wSB�����@��r�a�� DG�>P��\Z<��	/�CU԰�5\\p��\Zq�{\"@\\\Z�C\n#�0C�P��GH��L�B64��XX0����R���\0\n���\0@���`hN�,��T oC�20�$`��Z�\Z^�?M0	�\"\0/\"�@\0<�@$p���\Z0\0�҅������:\'���#�h`P\0iԡ����J��IB���@w�D��lN�<؟�%��`�,��LF��^P�6./@��@@=�\n@�\0�R��<�:F@�A���,`\0\r �� k��L>�-�݆\'\n��犳+ơN\Z\Z�P����y�:���\08�@�J0�<,\0FU:�h3�G�R�\r�&!\r�\0;0+���xD��0VF	`�4�]6�%��X�<B\"(�u�]��s��8��血e� ��1�PrX�%�`��2Fp���T���P\0D�#x�*��>�JX�\"��\ZJ�C�h	?�R*�|K�!jЂa@A��E�@P&���\\1���8\r�Z P#h\0 �&9R�$M*�/\r8�\0��z���d0`$\0.��x@�͑ ��ܒtG�/.��H��T�L`�@l��dU`IL�H�vj����A	B���7H�����\0�b��Cb,g(���4C	\r\'L�Q�k!%-�ݞ��$T��%��`�=�5	!�ALķ ��@�F�@�:6�5A�|c@\rzɕ۩���	d�^<T�>\"��&U�.P�# O;�{B��G�A������\"Hc���Ͽ�̇0	#�bV�A�1ء�`��p@��`� ?��3���e&+�B`\09>i-�����\"������\'��|�/\r��SD�$�#�	F��4�\n\n��fp�����9�\0Z�/\n�\0�?��b�\0@�&x��P� ��8��� q��R\0�\"��aJl>b�:!&V������@���	X�?���`f`�A\01\0���/p]�Y`��J%��ih$L@�K�h �>���X�Zs��R���7XAX\0�h-�x,����5�7�2��@/ 1z`<�\n�R�d��	p �DP�\nN��@��7>�| ,�K\0rm��y�*����n#�\\ ��c��Z�O�@0�w�\r F\\�KX����$��8�B�󽄀K�2�����	p@���B��\n6�^�[��XϺַ���{��`���N��c!\0;','Akademik','menikah','',1,'p','05918',NULL,NULL,NULL,'2013-05-27 15:28:55',23139,0),(24,'12345678','Yurianto, S.Pd.','Antok','MM','Malang','1987-01-01','Islam','Jawa','','','','','','GIF87ax\0x\0�\0\0���DBD���$\"$���dbd������TRT���424���trt���\n���LJL���,*,���ljl���\Z���\\Z\\���<:<���|z|������DFD���$&$���dfd������TVT���464���tvt������LNL���,.,���lnl������\\^\\���<><���|~|���,\0\0\0\0x\0x\0\0���pH,\Z�Ȥr�l:�ШtJ�Z�جv��z��xL.���z�n���|N�����~����w�p\0��.\r/�h\'$ ���7�d���+j)&�>%�o%���0e3�4;m	��0>c6�ƌ>j���a,֚=h0��_��>e/��<�\\��� &�b��� \np�!�)�¼``�.	\Z�� ��8���e�@c&%���Hʆ�\n�H������x|�2&#-�4�����,x�D�ŁP\0 d9\n D�*�N�r�)�}y0��eS\Z��`xt�Ld�2�(��X�Z`K�\'�@����@�Q9�<���	�<�|��s-�\r%B( P�#\r1\ZHB�(�.�z� �\n\r\Z\n\Z2*Hۀ㨄.����@�J���@�D�*� @��\r���\r�HjTA��\00F	\r�%EJ� �M\0��FD�fB\r/������J�PLl�J�%��LL�d�\n`<��D6$ԅ\r0�0@�aD��]䧒Xy�B]���a�a�+(`�IJ|��%\n���іD (H�6�\r�%A�Wj\n`�F&�H�&\\d��H��]\09��@�F� �9�ac<Ѐ\n�@�262�(�\n�\0	e@Q��m���\n3�p�3Զ�)�)ADD@�+�P��C9vD��I@�&���\0��@�Ed��*��,X����)P�BL **�zD\rF*p�3�PA	#,0iFe�3�FD��@�Hy�(dBX~l@R�%1�EL`��;D\0�\Z1�=\0�HD�ا�El��\Z��C\0!!q�&*◼Q�c������`BILp/#B�q�& lD)D<�\n�WH ��C~�JJJԠ�.����pAD}���F�PK�yL؈JL�\0�\0P�ض�P�0���a��������\"� �j��\\�G����v�U�E��C���À�8`1�r#�r(,PA&x��e�X9�ն`����S�X����B��1HkDF�r�����16(��E\"�ehe̞{�[�т\n��>��r�4�W��w��		2`�~�� �8�r���=�Tjp�}���0���\0�P�\n �� \0q\"H�\0	D`x@B��!L������\0�h��H�\0H\"�L�q21�<�2d�vh�g9�j������1���Ƹ�\0�gc ���\\	�E�P��&P��h���\r�鰘�	Ay<��ޑ����A��O���)���`���Ɏ��\r0�[]��@�\r!(�@�xL�3�Ap\0�	\0�c	��1������5 �?$l�g?��<\\هH`]?pA.�\0z5N�_F��k\03��`\raX\r�@���|���S\"�`�zi	��#���4�\r���p��P\0z�4��8@��B�B�� �w�\0�GOp�{S�@\n@8#8�\0���8Ъ�E`�R�\0�@�#�Ì{�\0\nr!\r��5��0���|R������h0�#����\Z%�|?0\0 \ZI\0��h�6pl��\0!x`&P\0S��`x~��h��l@?��\np@`�p���(@\0	� �;B\rB�9�`Ū�߹�z��A�P\0tT�?��p�y��<$��hMF�\0q�a%��\n @G�j�RP��N\"��jC�1>f��-N`X\0h��\rx\0�n�!��7.��x\0p�r���g1@X@	>0\0�j����t�|���\0t��#�Aj���`�9�@x_P��@́�w�	�c�X�D��H�\"pAF9�&<�7��4P-����d�����T��d �؀4`�J��\Z0�)8�%p�@زI�{U \0�`(�`\0�F�-�\0��@�_�����6���p����L�:���xγ����>��π�s\0\0;','Akademik','menikah','',1,'l','71152',NULL,NULL,NULL,'2013-05-27 15:27:20',62657,0),(26,'190','Mimin','','','Malang','1977-07-02','Islam','Padang','','','','','',NULL,'Non Akademik','tak_ada','',1,'p','56331',NULL,NULL,NULL,'2013-05-28 06:36:15',33956,0),(29,'klepon','Klepon','Ganteng','','New York','1988-01-01','Islam','Jawa','','Jl. Kurang Satu meter No 5        ','','','','����\0JFIF\0\0\0\0\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 70\n��\0C\0\n\n\n\n\r\r#%$\"\"!&+7/&)4)!\"0A149;>>>%.DIC<H7=>;��\0C\n\r;(\"(;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;��\0\0w\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��7+^y�M;f&��עC��j�|]�k!�J�N����t���j��kr0;W��q��\Z�t�X�v�����&�b��j��!�5~I>b+&�4N�s��	5�kP���f�{�Y�\"���x��rERDɳ2ۡE��I�=l뀃���2��9ɨ/�I<�	�\'�V��!H�?�� ������`J�q⛉e���kB��n����g�~��h���]@�*�L����+������d_�=����H��L�X���WV`\"�#ޭϾkv�[RG��c��w��=i�`wZ֍���ˑ�U�<!PYvq��\0�\rj��lU\'pKB�����@N���$y�T�L\ZM\\\r;i�œ�VF�<�7>���A�aZ]j�8�q�I�k�8\rO\'T��Ֆ��x�+?�e���E�%&�XrqD��s9hv�I�_J�\"��5��;���Ԓl��\Z�I�U_��r:֭n�����8��W�5�e�b$q��������l�n�p�R$�\Zs߬���\0vN\08��{�P��O�Y�ϕ���{Uy�nv\"�\\qZ��g=-��!�鷁S���8!��\r2�ё�<��$l	� ��:����#���J��{q^����Y͎q^G��\"�i��r���aԵ�7���E��GOcڳ�����:�u�!���e�����B��)�]�P��k�f��p<\Z�5)��;�P/�N��-�Q�s���8rOj�\rq��޶�u�NZhw�&��ȧ���}n7A�(��-�.)��R�\r�(�\'�5_�͛9�\"L#�#���\0����=x��5��;u�B8�k��Q�3�p\ZDK���.⳷E\'�6GS�D��? &��g@\rK~�!�p8]B�}G]d	�Q���֐��Y��A׊���M�����7��g#\'h\0~9�;S�N���Q�N0+H��+��ߧ[ZyҺ1����o���@���/�8�������8���U���i��2���ܛ�ho]�W���U��Ԭj[���\r&�������jq�z�V����i��$�1�*�j��k7�^i�YNH�a�-n�c��j�V�^I>��i:az�H�	\Z	�eB�8�MR��p��L�)��r[���W�f��r��V\r;��%lWa5b�Hl�\\�l��j�\"�3�����蠃Y���p>c�չ	1dSc�zd��\\6:6`�����K�$�ħ��Y���>�XW���氍�ck�5|?���k�����ҹ��tIq]���Y�j�\Z�F����5���[z[ې��j��ف}�ū]$��V$u Ec_x1�-Oh-Ѱ�a�]��\0gU�^�Nf��=7��vB��?t[���*i��Ir��Ɨ\0�#�V$�|��\0k�Ms�zL�0�FC���.��]�h�Oӣ���\r#�8�z��,}+u�\rY�n.��wV��K�������1� 6�k�a؅�(BlžR9�U?��^7���B��Ү�2�9<���W�՘��vI��}Fq[��R�� cֹ�L����n�	s`CU��V�Au�ʥXA�jr�U�eK�|��<��Z����\'����d\\]�6��n���8ێ�%�G���H�8��*F�0gc���ǟy���^\\��j��ߓ0e�*րއog��#�t�s�\Z��H7+�IDi�Y\'���ivR\0��j3��m_Zu���qI�,�{���U�\Z7r\r_Ү|=q���~�G��c�],.qT���=3��\\��! �\n�$�d�K5����4�&I@=N3YM*�*0��-�3�M1�Y�-�ҁ6A�=F�+X������$Cc9�j��!nr2j{���B��ۻ��H=�D`ؗw\0LOj�A�K��U�k�8�d������SЄ1�[��q�.9��jHm&�Ikv�\'w�����BJ��*pz��\0J�����e�A�ϥU$��\Z��V�8=G�ik�26w=\Z��VC�®�A���fKSn��z������m\r�}O/���p{�l�~cQ�6F)m؅\0V����nLH8�vM�D	�+@W�7��tk~%B��W4��&oYȻ:�\Z��ۡ9��31;sT�숏�8�㑝y�4�9泬�VkǶ�w)��Ҡ����֧����\\�Q֝��%]!�SD��+*�V�\r��w�p�M�J����5=2KHc(b�F+HY�ɲ����Ė�TIg⏼N�Rƹ�T~5Е�Vl}z�W��FwrN*.\"P�d��`�(�\0�ӭKw)hmڳ��H�J��g��{wZŊH\n��AR�]��98��+\\*�+�즳�\0$��u9���Κ�l��Z��J���ԖR>G��]������d\Z�V\0���<V��{tј�S����-9����Ι�sQ��H���Qh7RJls�ִ%,�C=)%��{\Z��J�\\V������\\�A�F�ҺH%[d�jƥ;0�F�3��F��,�(�Ir�BpՉ*$���YGsi-��ϑB�k~�m�+�%�}��f�9Eh��]�,� �1X����>��[K�����Un��\"\n��$z����&���b�\0�u*D����tw�F>C��`�=Ř���s��l�}�j�t�{���Tq�{�d�5$�p��W�,V)\'CC`MhZ&8;x��{NA�.�%� /+�ɐ���ʫb��)$�g��K����=jf@ǅ�5Z�<�Z�˜0ꦭi��M�Lq�ߕQh����d��%uf%�زO��6��ZrB�7��V%��R���󚹨^;��q�(���Rl-�G�٩�$�MW2���ZYޭ�)�ɢ���3��)�j���������l���3E-��s�7�n9<�To)�����h�����{M�m��S��V��\Z�d����T��ّ�FF���YRg�0�=袪\"d���6$<��jv���V�`�E� ̼�ߵeȁ[r���Eh�[���','Non Akademik','belum','',1,'l','86621',NULL,NULL,NULL,'2013-06-18 06:54:41',38185,0);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_pegawai_100` BEFORE INSERT ON `pegawai` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_pegawai_100` BEFORE UPDATE ON `pegawai` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.nip <> OLD.nip THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbssdm', tablename = 'pegawai', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.nip, oldpk = OLD.nip;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_pegawai_100` AFTER DELETE ON `pegawai` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbssdm', tablename = 'pegawai', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `jbssms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbssms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbssms`;

--
-- Table structure for table `daemons`
--

DROP TABLE IF EXISTS `daemons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daemons`
--

LOCK TABLES `daemons` WRITE;
/*!40000 ALTER TABLE `daemons` DISABLE KEYS */;
/*!40000 ALTER TABLE `daemons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `format`
--

DROP TABLE IF EXISTS `format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `format` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 presensi, 1 penilaian, 2 pengumuman',
  `format` text,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `format`
--

LOCK TABLES `format` WRITE;
/*!40000 ALTER TABLE `format` DISABLE KEYS */;
INSERT INTO `format` VALUES (1,0,'Kami informasikan presensi [SISWA] tanggal [TANGGAL1]/[BULAN1] s/d [TANGGAL2]/[BULAN2] hadir [HADIR] absen [ABSEN]. [PENGIRIM]'),(2,2,'Kami informasikan nilai #SISWA tanggal #TANGGAL1/#BULAN1 s/d #TANGGAL2/#BULAN2 . #PENGIRIM'),(4,1,'Kami informasikan nilai [SISWA] tanggal [TANGGAL1]/[BULAN1] s/d [TANGGAL2]/[BULAN2] . [PENGIRIM]');
/*!40000 ALTER TABLE `format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gammu`
--

DROP TABLE IF EXISTS `gammu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gammu` (
  `Version` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gammu`
--

LOCK TABLES `gammu` WRITE;
/*!40000 ALTER TABLE `gammu` DISABLE KEYS */;
INSERT INTO `gammu` VALUES (7);
/*!40000 ALTER TABLE `gammu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox`
--

DROP TABLE IF EXISTS `inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT '8bit',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` varchar(160) NOT NULL DEFAULT '',
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  `Status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 belum dibaca, 1 sudah dibaca',
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox`
--

LOCK TABLES `inbox` WRITE;
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kritiksaran`
--

DROP TABLE IF EXISTS `kritiksaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kritiksaran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `senddate` text NOT NULL,
  `message` text,
  `from` text,
  `Status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kritiksaran`
--

LOCK TABLES `kritiksaran` WRITE;
/*!40000 ALTER TABLE `kritiksaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `kritiksaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbox`
--

DROP TABLE IF EXISTS `outbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') DEFAULT '8bit',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` varchar(160) NOT NULL DEFAULT '',
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` text,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  `idsmsgeninfo` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 belum dikirim, 1 sudah dikirim',
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=619178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbox`
--

LOCK TABLES `outbox` WRITE;
/*!40000 ALTER TABLE `outbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbox_multipart`
--

DROP TABLE IF EXISTS `outbox_multipart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') DEFAULT '8bit',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` varchar(160) DEFAULT NULL,
  `ID` int(11) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbox_multipart`
--

LOCK TABLES `outbox_multipart` WRITE;
/*!40000 ALTER TABLE `outbox_multipart` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbox_multipart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outboxhistory`
--

DROP TABLE IF EXISTS `outboxhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outboxhistory` (
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idsmsgeninfo` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 belum dikirim, 1 sudah dikirim',
  `SenderID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=571 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outboxhistory`
--

LOCK TABLES `outboxhistory` WRITE;
/*!40000 ALTER TABLE `outboxhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `outboxhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbk`
--

DROP TABLE IF EXISTS `pbk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbk` (
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbk`
--

LOCK TABLES `pbk` WRITE;
/*!40000 ALTER TABLE `pbk` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbk_groups`
--

DROP TABLE IF EXISTS `pbk_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbk_groups`
--

LOCK TABLES `pbk_groups` WRITE;
/*!40000 ALTER TABLE `pbk_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbk_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan`
--

DROP TABLE IF EXISTS `pesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL,
  `pesan` varchar(160) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan`
--

LOCK TABLES `pesan` WRITE;
/*!40000 ALTER TABLE `pesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanpenerima`
--

DROP TABLE IF EXISTS `pesanpenerima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanpenerima` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpesan` int(10) unsigned NOT NULL,
  `jadwal` datetime NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_pesanpenerima_idpesan` (`idpesan`),
  CONSTRAINT `FK_pesanpenerima_idpesan` FOREIGN KEY (`idpesan`) REFERENCES `pesan` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanpenerima`
--

LOCK TABLES `pesanpenerima` WRITE;
/*!40000 ALTER TABLE `pesanpenerima` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanpenerima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` text NOT NULL,
  `Client` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES ('MyPhone1','2010-02-03 03:48:05','2010-02-03 03:48:05','2010-02-03 03:48:15','yes','yes','354056001179799','Gammu 1.10.6, Windows XP SP2');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sentitems`
--

DROP TABLE IF EXISTS `sentitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT '8bit',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` varchar(160) NOT NULL DEFAULT '',
  `ID` int(11) unsigned NOT NULL DEFAULT '0',
  `SenderID` text NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentitems`
--

LOCK TABLES `sentitems` WRITE;
/*!40000 ALTER TABLE `sentitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `sentitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsgeninfo`
--

DROP TABLE IF EXISTS `smsgeninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsgeninfo` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `tipe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 presensi, 1 penilaian, 2 pengumuman',
  `info` varchar(1000) DEFAULT NULL,
  `pengirim` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsgeninfo`
--

LOCK TABLES `smsgeninfo` WRITE;
/*!40000 ALTER TABLE `smsgeninfo` DISABLE KEYS */;
INSERT INTO `smsgeninfo` VALUES (2,'2010-04-16',2,'Pengumuman','akademik ');
/*!40000 ALTER TABLE `smsgeninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jbsumum`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsumum` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsumum`;

--
-- Table structure for table `agama`
--

DROP TABLE IF EXISTS `agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agama` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agama` varchar(20) NOT NULL,
  `urutan` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`agama`),
  UNIQUE KEY `UX_agama` (`replid`),
  KEY `IX_agama_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agama`
--

LOCK TABLES `agama` WRITE;
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` VALUES (29,'Budha',5,NULL,NULL,NULL,'2010-03-02 03:07:22',48581,0),(28,'Hindu',4,NULL,NULL,NULL,'2010-03-02 03:07:22',61565,0),(25,'Islam',1,NULL,NULL,NULL,'2010-03-02 03:07:22',31019,0),(26,'Katolik',2,NULL,NULL,NULL,'2010-03-02 03:07:22',35929,0),(27,'Protestan',3,NULL,NULL,NULL,'2010-03-02 03:07:22',21057,0);
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_agama_100` BEFORE INSERT ON `agama` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_agama_100` BEFORE UPDATE ON `agama` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.agama <> OLD.agama THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'agama', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.agama, oldpk = OLD.agama;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_agama_100` AFTER DELETE ON `agama` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'agama', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `identitas`
--

DROP TABLE IF EXISTS `identitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitas` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) DEFAULT NULL,
  `situs` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat1` varchar(255) DEFAULT NULL,
  `alamat2` varchar(255) DEFAULT NULL,
  `alamat3` varchar(255) DEFAULT NULL,
  `alamat4` varchar(255) DEFAULT NULL,
  `telp1` varchar(20) DEFAULT NULL,
  `telp2` varchar(20) DEFAULT NULL,
  `telp3` varchar(20) DEFAULT NULL,
  `telp4` varchar(20) DEFAULT NULL,
  `fax1` varchar(20) DEFAULT NULL,
  `fax2` varchar(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `foto` blob,
  `departemen` varchar(50) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perpustakaan` varchar(45) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_identitas_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (4,'SMK NEGERI 12 MALANG','','','JL. Pahlawan Balearjosari, Blimbing, Kota Malang 65126','',NULL,NULL,'(0341) 400884','','','','(0341) 400884','',NULL,'����\0JFIF\0\0\0\0\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 100\n��\0C\0��\0C��\0\0Z\0Z\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��0{��\0��n�����\0��h��\0o���c�+俏��M�h_>hz?��\0i_����n��I{�\0�?�ܺe��o��zT�j~��a��|#�:����Ui?�</>���^5�@=�g���\r���?�/d�\'���4�\0|8𖑪x��ĭn��m��\0ÿ��>(�EլOƫuc�\'ú{���mKF�`��`��\\��{�\"3Q׼A����s�=sN�ׇ��SxS�G�;�m[\\�â�֖�j��᧍u)CG�xr��\Zy�=��++�5���:�ǯ�c�\r��Z��|}m����?�O|(���5x�V�����=��?��^��=�CK��|	���S\\�~\r�g�~&���j\Z��1��B�\0���cߏ��\0l��G���x7��/��g�7\Zw�4��A�Ke�B�\n�T��x��\Z���x�V�現�k���/j_|O�/��/��G�7���/t��Y\'�N��ܥ�e}��֖�]4z7fr�\0|�.����G�+�~۟�����Zx���0���/�o��|eѵ-Z��P�{�GJվ\n�<Դ�ƝO��o�gPMkJ\Z��Z����\0��G���G�->)Z�:?gˍ\"������b�Z�/�߇:��\Z������\0g�\0�B��Ʒ{�KQX�=�|~��-CN\Z�����ﯭ�Xa��8<��)����D�O������<Q������Ï���Ǆ4?����|R�����#Ǟ-�g���ߴO��>���\0�	��_��c���û}�>�a3���/�o���G����?�k6���\r|?�Ƒ�iQ|i�>�K��}���9��]S�.�����\'��\Ziz?�4O����-��C���ݶ����\\�q8jRQ���ҟEV�(6ն��{����3�̸���J��8�\\�*��j�e�`0]���<V&��m��w�C�f�\0���N_���|q����fuѾ| �����[x�}>�_��.����\0᾽����J�Z�+���6�\'��\0��缻��+n=+Z];��E�j��~3��	�N�\'����x�����3��>����\0��x���:�\r�;�\ZN��j���\0xgZ���������k�=Ư�=9\'�P�\r#���\0�N|c�E�~~ճ~��\04�?�r��6_\Z��	�.�׿d_���z��4o��O�<!��oL���-N�F�����]�,�3o�k��?������y��i߇�ÿ���y����K�����oڛ�o�~\r�ǋ�ϋ3�~�_����X��~3�?��/��\n�5υ\n�Ǧ|T�Λ�{M�5�����e����J�*C���ՋJӥR3�Zh�.�5�zX�/�(��c�y�\Z_|\"�2��V�j*A�vS�y�_?k��F��!�׆�c������S���m3I�����F��/��(��-g�?|%d]�^�g������2��+�\\e��x��n �q��Q��zW���:������\0��{�B����>/k>?:7�o���\0�q�����|\0���#���$пh˿�D�/�t�|;�4�U��\0|Q�<=���W�R�+�����\0���_\n�ο��f�ǅ�w����\0�-흎�7��e�k�?��\0m��k\rß���O��G��|�����3K�l�<-������k�W�t�g�?+4��}��s��7�]��~?�j0ލ�\0}����y�\0�����)0g��P����6Y��U�x���~0�,��/�~|>��\"�־$|Q�iះ�ѧ�$���ľ\'Դ�+�V�&��9��S���[�6�u��\0���g�C�@|-���Ox�����8<m�D��>���� ��3|R�u?\r���֯~�w�xKB�4�|�{�o��<A�\r�3���G���x�������=�>����Ş.���u����O��3�G���\Z�z��!�{�ڵ��؞�ņ��?x��W��\Z�:�{�k�ӆ�J�O�-����\n3��Ǿ$��\0��a�6|E��|�;���E�|�I�!��^$Ӵ�_�g_�:�ǯ��\0>1h�\Z������o��[��Ė�u9t��W�2h��|1\r�z��������-$�������+�m����]z��Ӥ��B�s��\0�)������V���G�o�i�����x�U�]����\0K��-�Ǿ�<7���;H����3S�gw������x�X�Ox�Ǿ���A�/ſ�?�\n������O���?f/�cH��þ�a�+��-�xWN�4�.?��)���h\Z3ipCmo��Z�����=�ѼI�x��av�\0ଟ�:~��\0��1�߲�쭪�|>���%�Z�>#xN�_\nx�ǒ���g���#$���&���4�\0x�M��ڋ/����}H�\'�?N�;W�Kĵ�Z�]��t�I�x�T\Z�R�s�Fv�!��q��ԣ�����3�������X��m�s��`�rckca�����D-<���1t\\q5�1�B�J4(�X�V6:e�v�m���kLv�V�Z���f\"(Ql�8��,ۘ��ǈu�gO���/��X���H��G֧�o]v���;�{��	��\"K���*ۼw��J֑z�$�8�dd~=\\���j��|\'��e�o�\'�&�Ӟo�:�Z�g�\\���>�w�Ηq�ί��vL���g��\\�1�_�s�$�xk	G0��T�Vi�eq����3>���:��^�U1M%W���{��(��o���q�z�p�5��<{V�]�W��W��n�qJ����\0nQ��)Q�+U�<=����(�ha�Q���-�s��	6#+Ĩf\'yH��q��C���}U�&��ߴ��M��j?�q-������C�?Œ�j�\0�U���������oIy��\0�&�o<���<O�A&�w�rG*$�ȒE*$�IIcp$��tu �)ee9RA��9�q�z�~8��^�O�}��Ս\\-z�j�i�f�+Z^��	A�e�v?$�0�ͣ�p�m��q��ެp�t�W���`d�B�xlM\Z������\0p߱��m����-��\'�[��ῄ�\0k/�>��7�0���?����x�:��$���Z&������g�|5׃�E��.8�i�xZ������Gk��\0��\0fڳ���P��u|J�������\0�����/ƿ���|1��ǌt��g�����~h:]ψ4�~��\Zg�پ/�Z���%�3Ǟ\'�g���|w��\08߳g���G���ߏ�\0d�}w�s5��|*.��N�������O|7�؟\'��-m���5��_x�O��\0�#�o��mn�ߏ��\0g�kY��\0m?�s��1�zi�^��o�m~ٶ�}�,�a���࿎�\0u�A�<=�&M�?|:�������\Z׉|����$�v�i�_jZ�u��,�bhr�J;^j�O{B�M���JP����՟�]�����եG�yD��8�.�+Ӆj���������F�WN�\n�q8g:��\n�T�d߉�97>��>8krk�?g��m�<gs����x�j��ǈ�mc���S�E����C�U��\Z~��{��<�I����߆\Z���g���_��弳�M�[��4����B����Pi���{�k�:����0���������[���^��?���-�G��x{J�����e��y�����OF���\0�k�Od��kw���s����\0?\'�i�f�ѣ�O�?��5����M���������/�O�)�C���\n�I��Z�q�3¾��w᳨|*��3MԎ���4�:F��[��;YYb����>�\0�=l_ۓY�~���9��w�ſ����ŽG�WĿx#D�{�o�Y�?�x����H�\0i���!]7�^*�\n���4�[�����I�������\0�,�\0���w���#එ���:ƿ���?Mm�N�o����<y�o��������+P����&��?�r��6:o�4���\r/P�o�F=+�߫�?ѭ�5m�|=������࿇�\Z�U�VӾ~�\Z�\0��{�\'�~������j�^��m\r���:�7�1Awq4)ˈ�*\\Mx�:XZ���z�\'5���.x�Q�Tɸk�szIJ�U�f��4��xlU4�ҳ�u}Si���y���M�����{h-\"i�2��I\Z��9/,�m�,���ػ��ƭ���u;}�g�\\����㑂FOL����߶j��i5휖�^��)�=ݢF�)�6�8\Zu�\"�hU�6�\'�	Y�~�R���Q矿VnR���5I(�M��M(�m^ѓ?Îycq��/�,^%�����q�z�ձ5�8կQ�9T��	ԓ���1|HZ�&�l�^\Z�Vw\Zݥ��c�\\���H�D��Y4�=ռw��sm<\"{y|�K�#~�~�^��?a��2=>���񥥰�E�R��\'�&Ug2:Ϥ��+3����d;Ó�5�\0����g��\0��~.x�\'�~(���o�}c�_?�<���3��]妏�ɨȶ�5�Lӵ{χ�σu�{�|9��/�9濷�5`k>�1��|\'�[�\0�~Ь4y��=�>��;���hZ��<;��j���*_h�&���-���۸<�Qo���A�M���o<i�B��\r�XN�\\M>#��6G��U8�	� ���q���s\\cJ4�R�OBT�j�iO���5?ٟ�L���\03����>!��?�p�����β�v[����Ӕ�\\6.�Q���p8�f�W�]��0�0�)T�b�R�k4����\'�I5�t�GR�H�ⷶ��|7���k�{skq�\\i�\'\Z���-����.gk�=�}�=�@�����=s��^��\0�y~�~?�9��L���/���z|\'�/�;�xo���ʹz$ZMՅ��>+��s{���e��CT�X�.Ud�K��\r�_�\0 �A���i�P��5+�o4�_5��Ö�O<��p]��[y�[[Kmf��ٙ�\n�˟���������5���R�08Z�8�=(G��_��F�NP�pؔ�I9%����?şL̇5��J�O��Ù^a�g�����*rx\\�,m:Բ���M���U��`������fU���bkO��%o<���I�3Ǩ�bO�\'?���/>8�+?m/�����O��\0��^#��W�oj�G�<E{a��X��>�\n��W��x�xw�͗�4���C��� �����h:��������z��\0�=������@WI�,~ښ%���|;�~Ξ�����S��\"�~%��ie��iP��sj0j�^!����N���+��x쮚O!��\r�*y�i&�q8j�毧�Z2j�n.���sIug�}��V]��,����l�\"�px�NOٷ��O4�[���Ҝ�R�	�T+Ղ�#g�7���>�z�����\"�v���>	�o�M�M��\0�χ:�m3��8�w���׀>�5�4_š�R���k���/|w��kǟ\r��Y<Q�ë�wN��S�d�����ٷ�|�����<����+�q,B{x��z��K)���ֺ���\r�獸+���	��9���.~&G��H�E���ÿ<]�x7�?�M��#�U�w��o�o௄.~�_� �3�^\n־xM�?���������x���\0<Q�_Éy�7㟉<q�D���x~K��t�kU�4E�I�#H����M��g�,�G��ٍ�b�X�ꬴ�{���އ��;]�^����][o���]�=xC��	i��į��_4?�����>$�o�y�������9���Gğ�����+ƿ�K��\0�|?g����w��7�\"j:6�ka�5)�;Y�<���8���\0������|7��@��N�q��\Zw�4χv�^��φ^6��&�4��_\0>|��?��E��?�֑�i�k[�>x��ƺ��������~~�>x���o~��\'��k����Oa?Ŀ��_���z�t�.P�����z\'���O��W�ύ�g��\ZK��]?���V&��5��x{�m�T���4��ڟ��W�>*|~�>,x���-���I�cw��� �|Ak�/�_��C:�­G�4�j�\'J5)ԥ?��9Ѩ��,�+��4�\\�	G2�c��L=����k����ѕ\Zо�𜣻��u?��h�U�ã���C+#*�ea��F0Â9��`I8�#�p3��2q�O���(��W�\'�π���K��Y��g�=r��$>$�9��\\ė�o5�2���\0�{��6��&�4��$ѥ���Gе�A$���\r^��N����>��h��R�X4�+W��\'����o��ڛ�[�A�X,�����jo(�����)�\r7M:�)ЅYM�8u\Z�e\Zi�e:P��4�:�����\'��\\/�y����fS�b1+^���e�!���ЅJ��2��\n�\'9a�~U$�B�e�٧������|{���?|>�>�i�i~����5��it\r9m�}7� ~&�φu�/D�}N�R�km&�nŌ�[~ѿiO�O���Y���_�l�S�������\'@\'VӢ�����?������F�3��x�VYt\rfX���\0R?�P~���7��{�o�w����7I���{��;Ҽ7��P�[�qm$Z�\Z]��4pG,F;(�$j�J��W���\'��|`��\0c���\rռ[�|7�|<�������g��%���1��:Σ���L����,��-�7��)K�\r^��<.��\0�|]�8�\08�d�~G�r���K+��x�>\Z�c����s|&o���5eKS2�q�|�=�_��hda�I�\0�����e�W ���8�5��&�0�x�=����<&ER�m��a�{��c7�|�$�\'�d4���O��3�k	�eyF+\r��CK����ߴ/��\0e��B��\0i?�.�Q��\"Y��OG�K��W�>.��k�6��c�Z������#J���m_U��Ώf����c-��~tj\Z}����zF�ey�j�6��hڶ��[Mg�i���{>��i��W1�se�_�\\Y�Z�G��0���#(�7����#i�Xh�?���->4�+I��e�[X�K�\"�M��a�bD[(4}B4���E�:]�,h�S�����\rW�_��o���$����6���MGH�{�MK@��\'0�%��U��>��?�I4k�CP�xƤ/��M�%��xa�^2c8�?��\\(V�q����<��U�8��r�ȡ��q�4�5\nX�]N.X�<�l\\���\0\'�,3O���i��y�i�f�L�5�>�[��2�eY�)c1���ղד���5|�\r{�75BT���9o��?���s�$�\0�4���0���\0i��\rj�\'���M�හ<9���KI��5�Y�!��<#w��x3�Sk&�~6�g�:M���\"�R���,_�*�����Z��a�/x+��\r���s�m{K�|+���\0��_�K\rH�-��I�Y/u	�Y�ZtW���,\Z}���j~�\0�x|�?c�O��\0�+�\0	��H`���.��!�c��r������S�ۈ�|G�Xh|g?�����i?d�7Ï\0�����y�f����I����P�:���^�\'7+���))ogV;\'�߂qX�&�x�Fp�2|\r\\�/�8�0�fً�<O�����r�N����8v���l�x����(�C��ও��Zw�5�_�W���K׼;6���Z��׵;�_O�)<5�Zx��O��N�I�{��Z-Q��\0f�\'���Q�5~�>%��e�?��\"��]��������V���x������k��6�*ws���o��ƛ��~��&�~,�\0�@?h[O��^�Ŷ~\n��A��\n�~�6����U��KS�K���F�\r���h����E���:mΉ���q�H��U#�DDUQT�UU\0*�\0\0\00+�խ�[j�ݟ����$���{�Y/����C�O����\0��#��~8�E�����ֿ�\\jw��V��m#MԴ�4�&���e��\0�~�|Q��ė���1x�����\Z�����?�W�V����%a��&�=��_���=�K������\0��-�H����\0x/@��_\Z��l�j<g��8��\'xWL�S��\0�_½(�\"��|�]x��1x��������:��\08��~,�5���=|M�\'�K�8�_Q�և�Ylo?jOٳB{h�?��I���,�6���km>���\0��#^���͆����F�����?ƞ�~�p4�����t�@N޻&���?\'��|C�I��?oۏ؛�����<��</�������~2������^ћR��_�|=�?C���I�/<@t�XҼai��_�^\rg����>�+���GTѾ#���2�o�O�G�.��x�]c@�?�Dw�����v������4�-5?x^K�K$Ԭ�-GI�- �R�ǾмK�����\0D~2����w�</�F��#�����?�?��%����?�4�\0j?�毮�F������g�>�Z?��\0�~3�9��j���߲�����uۍGZ�׍xG���W�?���O��oD�u�\0��~����~��g�4m+�>	�u�%�\0i;�g���N���>���5��+H��Q�?|?��{��>\0�[����_j�/���u����U�9OR5���a귄���Є�a�F�,kR���֧V*�#w��B�-�j�\\���E�yf��8�6>?V�ѫ����2�O�s,-z��\n��\\5Y�Q��b(b?���|8��������#���&�m4�6�����_�,|=yiw&�o~�c����[��-^�η\Z�v�W�]����׿�_H����*��Ԯ�{�oRi^$�-��%�Z�/|9�����������\0�\\k�W�F�����N?����w��m]{�\'�&���u����4=\'>����Ǎ!�?�����᾿�@<\'�O��i_�5io���A�Mz�-Z�9-]�\0����Tw����cԴ�?���>*h׆2ɓG��}�[��a���p&a�ñ�F�\Z�&U�E��4��a�fp��(SU\\*c�8�p�ᛮ���FUyܥ?�����MQ�r�VE�`�Rn�\'-�Øhʜ�T�%JY�.�F�������L:U�N*qP��������_^ѵ˟\0k0���+�\Z��]�\\Jl�g�kK�<�kJ�}o��kT�hh�KKXe�[[����~7������|g�V�։a�薂Mk�����!�|>4O�Z�?��E%Լ#a��yk\r��<b\Z�L��-�����\0� �xK�&������\0��|&�� xsAԼS�|��x~���\Z\'���[���c��x�����xb��Z��t����^閗�j�������M�γ��\0�8?f��@h���m+���Tx_Ƕ�/���\'���S�c^���<9⯈Rx�犴�-W���f��\'�~Yx���֗�Śv����{��we�ú�\Z�>��ѣG6�1���+��`�J��IP�F\']�5f�O[��	�/��o�h�Lc���ę>M�W����`��U�g�.eJ�0��t���X��l68�<}\\5<=��(��7��?fo��K��$���i��!����E�Ɨ��?���\ZX�W�GKM/�ǁ�4hu�s��\Z~$�Z����kT�.���kmZo|=�U�f�O��[�~��\0����ߴt_�oƟ��3�V�|7�Y|���|t�Ҿ�\r�%ޗ��[��>#|#�ө|H�/����\"��>���}����u���>�lz�?�?����G���/~�S��YԾ5|�w��n�>4��,|;���1�������7��Z����>۩��o��>\ZxF�^�k�iZo��|Y�����O�j/	�o���¬�\0�`�V�u$���U�?�>��x�R�}���[]^y�[/�.oj��׈���#�D�.��q�!����8L-%\Zxl=8ҡJ<��^�>i=�9?zr���ܛm���7Ù\'�.��,�*�h�|=$�~j�jT�u+�+�r�Z�iέz��J���u��k�~П|S�p�����¾#�̿?d}V����L��V��<G�vk���L�i����-�g�+�~x��������i���?�_��\0�a�+x��R(bE��qĊ#�\n��6�(\n��\0b��?�1�\0�WRV����=���y!\0��ǧӎ�í�?�~?�zT$�$��\0�iW��\0?���|e�C�K{�j�\0�f�\\�ο��k\'�u�?CO�#��t�t��������\Z������O�������`Ѵ�m��3�,^�o�|��\\/g�Z��>\"��5��%��ؿj�ٳ�:?�O�.O����4���@��� �]�R�w�o\Zj�.�w�/O���9XxB����K�⇉F���?���O�5tE�\0٪\\Sw�{ۧݷ�Wנ����V�=Z�����C���w�-�|;�.����_��Ļ�/�\0hQ�3�>\r����8,�hO�\Z�Ğ�>|*�>&�,���[���%�^���k�Y�Yx�Z���%�/״g�F�F��hZV��iV�a�h�}����@���O�����ŘEooqF��\"��|��Q�̟�o��\0x��?�gρ�\0�]�X�q����?	������n�\\�Z濠j\Z����\0�]F��,+�X������$�D�A]F[u�4��O�m��m!�\n��v\n0z�d����9y����]��?y�/~ɣ���o��o��?��w��j�����<{���=7�����S�&��\n|4�u�������N�M�ŭ�^�.�\Z��V�f��/��֞!��_��G�_�������A�S��������������x+�������xs᷏�\0h]V������?|&��o��7:~��oↃ���qtoj�CϷ��_���}�/�E������$mG�ۯ��n<imY7\'�f����g�2������5��\n�***��\"��\n��h\n�\0��\0\0�I^Mm�w��R�׻�+^�E�Z��5ӱ���(|E��w�럶ω|+�iWZ���c�\0���[~͚\rƟ,W:c�Q���-/Ŀ�����A�0��B�W�K{�m/��\n&��Yx�}�\00��0D!�$X�(�8�*G\Z\"��\"����\0(\0q(\'=����9�\0\0?�z։[�ovf\'����\0����p=_��\0\n}���','SMA',0,NULL,NULL,NULL,NULL,'2013-05-27 15:23:32',63030,0),(6,'Perpustakaan Umum','','','',NULL,NULL,NULL,'','',NULL,NULL,'',NULL,NULL,'����\0JFIF\0\0\0\0\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 70\n��\0C\0\n\n\n\n\r\r#%$\"\"!&+7/&)4)!\"0A149;>>>%.DIC<H7=>;��\0C\n\r;(\"(;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;��\0\0K\0d\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�j(��\nd��M,��ƃ,�pz�X�%�V��d7���\"��.d���Ԟy�����o|K6-T�=:|�=��ov�=+jT\'Wm����]<:\\ڷ�[����%��kY�� 87��e?��-�\0�\\���-`��-nX�?������o�:�[���iGo*�DB�9*����a�N��i�}լ����X�ln$�=OLߟj�(�iF�sy�>{��&��P�Z���kdlɤj7�|�I�኱�el��Eo�x��\Za�Yūێ�Z��z�?+~W���i\r��eH$�!_��r1���R��Y���sm݀[�99!{��\0~j�B�H���h�X��gʪ��I�|��á��H�-&�v�:���Yb>���Z���][^O�<�:�h�0�-�P�=��NG$Wu�x�kI�ӼRQw���h�b���o�}�ͫ��4u_�罆�!V\\�\\�����;�)�ȥ�S�\n(��\n�<]�ȼ9m�R�mm�=��w��+��W���\Z��Ӵ�?�[�o�7*�=\0�]j>ڢ�Ï�}V����ȍ�[�6���=���\0�*I�\0uTtQ�;�zl�ܴ�y��[H}Ca�8R8+��{Ժ�05�\\O��.�\'*��;��P�0�FܥA�޽��Q���#�Vs��-e-��[�Y[I!��IV\'x�޻���A�\0�������m5F�#q>�}�4�\03y@��:�ׁ�k��G��D��B�a�n����c���uWs����wQ��l1/s�?��+��y�%g�=���Μ�̞�u-kZ}���\r.���9�Xn&!�zyk��~U��:\\6Z�����k�6�����b��n�6���u;���{e�Կ���A�+S9n̬ӐA<��J���c�Bu��,k�\08��\Z�uɄ�uTb�zY���\ZS�Skk�������W�?����8<c�S��iW�\Z�oy����*���\'�I��ճY�6��:�$�̰�&<WwwQ���z�l���\0|u\n��p��U�oxc��Vh��Nf�E��Ap�-fOEc�?C�=�\0� ��!�4�&�D�ea�Eu�\0.\'�²C,�*Z^�o	s���aF{�x��4i5(�ϧ�1���ө�z��\0�vQEy�����ox�Նu��*��f������`��$��jvI >�*G��V�02宼�+7�烕�Y��ɮ��N��ʰ�c���}�|�\0\\�	x�T\\�r[���*���\\i:��m���r���نve��\'$g��`��\0J�-�T�d��W/�����\0{b��We\\L�V��﷡�a��x�-7Y+�ׯ���[�o���[�2�e-�G@:)c���Ry���u�\"�k�X8yn#���nm�K�쪮�\'۹�=juMHXC��k9g9�\0��+E�7��Oz|;ớ�Fͭ��C\n�뉮D.���@�vݎ	�Z���k��[����`�ޝ�ӽ��o��`q�x�\Z�P����Kq mǘ\0V#�\'c��8�]N�����[���b$C<\"^N\0�={�����>�e�Y0�)P�v�����W.;����Pp��\r?��mF��Zc����F���0��V� Wj�ﻱ�X,Z\\�Jҍ���ӳGN;��\Zr�[�����g��qc\"�k5�����a�\'�OӴëj��Á;Z����dF3�������Qf�,�����`AWR285����oYIo���Z[\\�o�Ҍ�@����,;�|���Kk�������R�RwO����2���P(`Q�]�����\Z�s��y���l~�W�̺n�;�1��V0=q��+�<9��\0c�oM�q����6�\0x(���2���ϐ�_����/��4袊�O�\n��\'i�����]\"o9����,��!��5�TsC�A2	\"�J:0� ӌ�Zh��N.2ٞD���<��\'� 0�t#۸���:��b8�������Kx������k�K)tR���$�i�[;�[s��}��*�7s�=�䖎���a�yH 㞣���ע�T�Hn|�,���UW��\0��=i�I�庻\";[�E�o��[�c���AH�o��m��.)^���Y�9�*@,�v�{c�cI?����jM�X���x#�V�w���ϭR]�l\'���K�W1��]i�Eo.z|��s�Q��q^T\\��N��c��U���z~���ƥj�+�E�Y%�R�k�������}�s]~��ŧD:�PE���V���t�\\I⋋�q������e���օ�q�oث�rPr9���h�zU�[�o&�䅭e��6�ߐ��&J�7&�����v�5�Vj��~�;d�\0�����H ���ҩeP3�H\'��+�/f����h- 9\rm`mw�7)$1,v�G8�x�j����f��o/-خ^#�Xt��s�V��;fv+0�O`�{x<%���VG�晟4^�i����������f����(��mק��A����\Z���>h��i�k�����HuF�\0�\0V�\\���j��W��r�{87հ��w�QEs��EP-�˭�G}�*�V�/o��~�GهOC��k�N��֗�&�4�+E}Bq�C$c�y�U�Cq�x�X۪���5�G:I�l�V�&Q��K���J/&����3cHdb��\0������5`H���=d�������5�]x�w��M��h�?�b�\rw�:6�3%�WP�=��.�i���[ٜ��UIs{w�~L�Xv�FX�壎$���ƪ��U�E�1Fz�0c?X�?���:-���K��n��\0�����τ��]+�s���%����\\��ʩ���[�<����\0��5�x�{�F�yHф󝘃�\0�͎GlzV����x�T�����K+OG���E+��\n��?B�4�givv��\n����<�O�ӂ�;���U�z���_��``R�Er�QE��','P_alls',1,'alls',NULL,NULL,NULL,'2010-03-25 06:22:39',22308,0),(7,'SMK ','','','JL. Pahlawan Balearjosari, Blimbing, Kota Malang 65126','',NULL,NULL,'(0341) 400884','','','','(0341) 400884','',NULL,'����\0JFIF\0\0\0\0\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 100\n��\0C\0��\0C��\0\0Z\0Z\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��0{��\0��n�����\0��h��\0o���c�+俏��M�h_>hz?��\0i_����n��I{�\0�?�ܺe��o��zT�j~��a��|#�:����Ui?�</>���^5�@=�g���\r���?�/d�\'���4�\0|8𖑪x��ĭn��m��\0ÿ��>(�EլOƫuc�\'ú{���mKF�`��`��\\��{�\"3Q׼A����s�=sN�ׇ��SxS�G�;�m[\\�â�֖�j��᧍u)CG�xr��\Zy�=��++�5���:�ǯ�c�\r��Z��|}m����?�O|(���5x�V�����=��?��^��=�CK��|	���S\\�~\r�g�~&���j\Z��1��B�\0���cߏ��\0l��G���x7��/��g�7\Zw�4��A�Ke�B�\n�T��x��\Z���x�V�現�k���/j_|O�/��/��G�7���/t��Y\'�N��ܥ�e}��֖�]4z7fr�\0|�.����G�+�~۟�����Zx���0���/�o��|eѵ-Z��P�{�GJվ\n�<Դ�ƝO��o�gPMkJ\Z��Z����\0��G���G�->)Z�:?gˍ\"������b�Z�/�߇:��\Z������\0g�\0�B��Ʒ{�KQX�=�|~��-CN\Z�����ﯭ�Xa��8<��)����D�O������<Q������Ï���Ǆ4?����|R�����#Ǟ-�g���ߴO��>���\0�	��_��c���û}�>�a3���/�o���G����?�k6���\r|?�Ƒ�iQ|i�>�K��}���9��]S�.�����\'��\Ziz?�4O����-��C���ݶ����\\�q8jRQ���ҟEV�(6ն��{����3�̸���J��8�\\�*��j�e�`0]���<V&��m��w�C�f�\0���N_���|q����fuѾ| �����[x�}>�_��.����\0᾽����J�Z�+���6�\'��\0��缻��+n=+Z];��E�j��~3��	�N�\'����x�����3��>����\0��x���:�\r�;�\ZN��j���\0xgZ���������k�=Ư�=9\'�P�\r#���\0�N|c�E�~~ճ~��\04�?�r��6_\Z��	�.�׿d_���z��4o��O�<!��oL���-N�F�����]�,�3o�k��?������y��i߇�ÿ���y����K�����oڛ�o�~\r�ǋ�ϋ3�~�_����X��~3�?��/��\n�5υ\n�Ǧ|T�Λ�{M�5�����e����J�*C���ՋJӥR3�Zh�.�5�zX�/�(��c�y�\Z_|\"�2��V�j*A�vS�y�_?k��F��!�׆�c������S���m3I�����F��/��(��-g�?|%d]�^�g������2��+�\\e��x��n �q��Q��zW���:������\0��{�B����>/k>?:7�o���\0�q�����|\0���#���$пh˿�D�/�t�|;�4�U��\0|Q�<=���W�R�+�����\0���_\n�ο��f�ǅ�w����\0�-흎�7��e�k�?��\0m��k\rß���O��G��|�����3K�l�<-������k�W�t�g�?+4��}��s��7�]��~?�j0ލ�\0}����y�\0�����)0g��P����6Y��U�x���~0�,��/�~|>��\"�־$|Q�iះ�ѧ�$���ľ\'Դ�+�V�&��9��S���[�6�u��\0���g�C�@|-���Ox�����8<m�D��>���� ��3|R�u?\r���֯~�w�xKB�4�|�{�o��<A�\r�3���G���x�������=�>����Ş.���u����O��3�G���\Z�z��!�{�ڵ��؞�ņ��?x��W��\Z�:�{�k�ӆ�J�O�-����\n3��Ǿ$��\0��a�6|E��|�;���E�|�I�!��^$Ӵ�_�g_�:�ǯ��\0>1h�\Z������o��[��Ė�u9t��W�2h��|1\r�z��������-$�������+�m����]z��Ӥ��B�s��\0�)������V���G�o�i�����x�U�]����\0K��-�Ǿ�<7���;H����3S�gw������x�X�Ox�Ǿ���A�/ſ�?�\n������O���?f/�cH��þ�a�+��-�xWN�4�.?��)���h\Z3ipCmo��Z�����=�ѼI�x��av�\0ଟ�:~��\0��1�߲�쭪�|>���%�Z�>#xN�_\nx�ǒ���g���#$���&���4�\0x�M��ڋ/����}H�\'�?N�;W�Kĵ�Z�]��t�I�x�T\Z�R�s�Fv�!��q��ԣ�����3�������X��m�s��`�rckca�����D-<���1t\\q5�1�B�J4(�X�V6:e�v�m���kLv�V�Z���f\"(Ql�8��,ۘ��ǈu�gO���/��X���H��G֧�o]v���;�{��	��\"K���*ۼw��J֑z�$�8�dd~=\\���j��|\'��e�o�\'�&�Ӟo�:�Z�g�\\���>�w�Ηq�ί��vL���g��\\�1�_�s�$�xk	G0��T�Vi�eq����3>���:��^�U1M%W���{��(��o���q�z�p�5��<{V�]�W��W��n�qJ����\0nQ��)Q�+U�<=����(�ha�Q���-�s��	6#+Ĩf\'yH��q��C���}U�&��ߴ��M��j?�q-������C�?Œ�j�\0�U���������oIy��\0�&�o<���<O�A&�w�rG*$�ȒE*$�IIcp$��tu �)ee9RA��9�q�z�~8��^�O�}��Ս\\-z�j�i�f�+Z^��	A�e�v?$�0�ͣ�p�m��q��ެp�t�W���`d�B�xlM\Z������\0p߱��m����-��\'�[��ῄ�\0k/�>��7�0���?����x�:��$���Z&������g�|5׃�E��.8�i�xZ������Gk��\0��\0fڳ���P��u|J�������\0�����/ƿ���|1��ǌt��g�����~h:]ψ4�~��\Zg�پ/�Z���%�3Ǟ\'�g���|w��\08߳g���G���ߏ�\0d�}w�s5��|*.��N�������O|7�؟\'��-m���5��_x�O��\0�#�o��mn�ߏ��\0g�kY��\0m?�s��1�zi�^��o�m~ٶ�}�,�a���࿎�\0u�A�<=�&M�?|:�������\Z׉|����$�v�i�_jZ�u��,�bhr�J;^j�O{B�M���JP����՟�]�����եG�yD��8�.�+Ӆj���������F�WN�\n�q8g:��\n�T�d߉�97>��>8krk�?g��m�<gs����x�j��ǈ�mc���S�E����C�U��\Z~��{��<�I����߆\Z���g���_��弳�M�[��4����B����Pi���{�k�:����0���������[���^��?���-�G��x{J�����e��y�����OF���\0�k�Od��kw���s����\0?\'�i�f�ѣ�O�?��5����M���������/�O�)�C���\n�I��Z�q�3¾��w᳨|*��3MԎ���4�:F��[��;YYb����>�\0�=l_ۓY�~���9��w�ſ����ŽG�WĿx#D�{�o�Y�?�x����H�\0i���!]7�^*�\n���4�[�����I�������\0�,�\0���w���#එ���:ƿ���?Mm�N�o����<y�o��������+P����&��?�r��6:o�4���\r/P�o�F=+�߫�?ѭ�5m�|=������࿇�\Z�U�VӾ~�\Z�\0��{�\'�~������j�^��m\r���:�7�1Awq4)ˈ�*\\Mx�:XZ���z�\'5���.x�Q�Tɸk�szIJ�U�f��4��xlU4�ҳ�u}Si���y���M�����{h-\"i�2��I\Z��9/,�m�,���ػ��ƭ���u;}�g�\\����㑂FOL����߶j��i5휖�^��)�=ݢF�)�6�8\Zu�\"�hU�6�\'�	Y�~�R���Q矿VnR���5I(�M��M(�m^ѓ?Îycq��/�,^%�����q�z�ձ5�8կQ�9T��	ԓ���1|HZ�&�l�^\Z�Vw\Zݥ��c�\\���H�D��Y4�=ռw��sm<\"{y|�K�#~�~�^��?a��2=>���񥥰�E�R��\'�&Ug2:Ϥ��+3����d;Ó�5�\0����g��\0��~.x�\'�~(���o�}c�_?�<���3��]妏�ɨȶ�5�Lӵ{χ�σu�{�|9��/�9濷�5`k>�1��|\'�[�\0�~Ь4y��=�>��;���hZ��<;��j���*_h�&���-���۸<�Qo���A�M���o<i�B��\r�XN�\\M>#��6G��U8�	� ���q���s\\cJ4�R�OBT�j�iO���5?ٟ�L���\03����>!��?�p�����β�v[����Ӕ�\\6.�Q���p8�f�W�]��0�0�)T�b�R�k4����\'�I5�t�GR�H�ⷶ��|7���k�{skq�\\i�\'\Z���-����.gk�=�}�=�@�����=s��^��\0�y~�~?�9��L���/���z|\'�/�;�xo���ʹz$ZMՅ��>+��s{���e��CT�X�.Ud�K��\r�_�\0 �A���i�P��5+�o4�_5��Ö�O<��p]��[y�[[Kmf��ٙ�\n�˟���������5���R�08Z�8�=(G��_��F�NP�pؔ�I9%����?şL̇5��J�O��Ù^a�g�����*rx\\�,m:Բ���M���U��`������fU���bkO��%o<���I�3Ǩ�bO�\'?���/>8�+?m/�����O��\0��^#��W�oj�G�<E{a��X��>�\n��W��x�xw�͗�4���C��� �����h:��������z��\0�=������@WI�,~ښ%���|;�~Ξ�����S��\"�~%��ie��iP��sj0j�^!����N���+��x쮚O!��\r�*y�i&�q8j�毧�Z2j�n.���sIug�}��V]��,����l�\"�px�NOٷ��O4�[���Ҝ�R�	�T+Ղ�#g�7���>�z�����\"�v���>	�o�M�M��\0�χ:�m3��8�w���׀>�5�4_š�R���k���/|w��kǟ\r��Y<Q�ë�wN��S�d�����ٷ�|�����<����+�q,B{x��z��K)���ֺ���\r�獸+���	��9���.~&G��H�E���ÿ<]�x7�?�M��#�U�w��o�o௄.~�_� �3�^\n־xM�?���������x���\0<Q�_Éy�7㟉<q�D���x~K��t�kU�4E�I�#H����M��g�,�G��ٍ�b�X�ꬴ�{���އ��;]�^����][o���]�=xC��	i��į��_4?�����>$�o�y�������9���Gğ�����+ƿ�K��\0�|?g����w��7�\"j:6�ka�5)�;Y�<���8���\0������|7��@��N�q��\Zw�4χv�^��φ^6��&�4��_\0>|��?��E��?�֑�i�k[�>x��ƺ��������~~�>x���o~��\'��k����Oa?Ŀ��_���z�t�.P�����z\'���O��W�ύ�g��\ZK��]?���V&��5��x{�m�T���4��ڟ��W�>*|~�>,x���-���I�cw��� �|Ak�/�_��C:�­G�4�j�\'J5)ԥ?��9Ѩ��,�+��4�\\�	G2�c��L=����k����ѕ\Zо�𜣻��u?��h�U�ã���C+#*�ea��F0Â9��`I8�#�p3��2q�O���(��W�\'�π���K��Y��g�=r��$>$�9��\\ė�o5�2���\0�{��6��&�4��$ѥ���Gе�A$���\r^��N����>��h��R�X4�+W��\'����o��ڛ�[�A�X,�����jo(�����)�\r7M:�)ЅYM�8u\Z�e\Zi�e:P��4�:�����\'��\\/�y����fS�b1+^���e�!���ЅJ��2��\n�\'9a�~U$�B�e�٧������|{���?|>�>�i�i~����5��it\r9m�}7� ~&�φu�/D�}N�R�km&�nŌ�[~ѿiO�O���Y���_�l�S�������\'@\'VӢ�����?������F�3��x�VYt\rfX���\0R?�P~���7��{�o�w����7I���{��;Ҽ7��P�[�qm$Z�\Z]��4pG,F;(�$j�J��W���\'��|`��\0c���\rռ[�|7�|<�������g��%���1��:Σ���L����,��-�7��)K�\r^��<.��\0�|]�8�\08�d�~G�r���K+��x�>\Z�c����s|&o���5eKS2�q�|�=�_��hda�I�\0�����e�W ���8�5��&�0�x�=����<&ER�m��a�{��c7�|�$�\'�d4���O��3�k	�eyF+\r��CK����ߴ/��\0e��B��\0i?�.�Q��\"Y��OG�K��W�>.��k�6��c�Z������#J���m_U��Ώf����c-��~tj\Z}����zF�ey�j�6��hڶ��[Mg�i���{>��i��W1�se�_�\\Y�Z�G��0���#(�7����#i�Xh�?���->4�+I��e�[X�K�\"�M��a�bD[(4}B4���E�:]�,h�S�����\rW�_��o���$����6���MGH�{�MK@��\'0�%��U��>��?�I4k�CP�xƤ/��M�%��xa�^2c8�?��\\(V�q����<��U�8��r�ȡ��q�4�5\nX�]N.X�<�l\\���\0\'�,3O���i��y�i�f�L�5�>�[��2�eY�)c1���ղד���5|�\r{�75BT���9o��?���s�$�\0�4���0���\0i��\rj�\'���M�හ<9���KI��5�Y�!��<#w��x3�Sk&�~6�g�:M���\"�R���,_�*�����Z��a�/x+��\r���s�m{K�|+���\0��_�K\rH�-��I�Y/u	�Y�ZtW���,\Z}���j~�\0�x|�?c�O��\0�+�\0	��H`���.��!�c��r������S�ۈ�|G�Xh|g?�����i?d�7Ï\0�����y�f����I����P�:���^�\'7+���))ogV;\'�߂qX�&�x�Fp�2|\r\\�/�8�0�fً�<O�����r�N����8v���l�x����(�C��ও��Zw�5�_�W���K׼;6���Z��׵;�_O�)<5�Zx��O��N�I�{��Z-Q��\0f�\'���Q�5~�>%��e�?��\"��]��������V���x������k��6�*ws���o��ƛ��~��&�~,�\0�@?h[O��^�Ŷ~\n��A��\n�~�6����U��KS�K���F�\r���h����E���:mΉ���q�H��U#�DDUQT�UU\0*�\0\0\00+�խ�[j�ݟ����$���{�Y/����C�O����\0��#��~8�E�����ֿ�\\jw��V��m#MԴ�4�&���e��\0�~�|Q��ė���1x�����\Z�����?�W�V����%a��&�=��_���=�K������\0��-�H����\0x/@��_\Z��l�j<g��8��\'xWL�S��\0�_½(�\"��|�]x��1x��������:��\08��~,�5���=|M�\'�K�8�_Q�և�Ylo?jOٳB{h�?��I���,�6���km>���\0��#^���͆����F�����?ƞ�~�p4�����t�@N޻&���?\'��|C�I��?oۏ؛�����<��</�������~2������^ћR��_�|=�?C���I�/<@t�XҼai��_�^\rg����>�+���GTѾ#���2�o�O�G�.��x�]c@�?�Dw�����v������4�-5?x^K�K$Ԭ�-GI�- �R�ǾмK�����\0D~2����w�</�F��#�����?�?��%����?�4�\0j?�毮�F������g�>�Z?��\0�~3�9��j���߲�����uۍGZ�׍xG���W�?���O��oD�u�\0��~����~��g�4m+�>	�u�%�\0i;�g���N���>���5��+H��Q�?|?��{��>\0�[����_j�/���u����U�9OR5���a귄���Є�a�F�,kR���֧V*�#w��B�-�j�\\���E�yf��8�6>?V�ѫ����2�O�s,-z��\n��\\5Y�Q��b(b?���|8��������#���&�m4�6�����_�,|=yiw&�o~�c����[��-^�η\Z�v�W�]����׿�_H����*��Ԯ�{�oRi^$�-��%�Z�/|9�����������\0�\\k�W�F�����N?����w��m]{�\'�&���u����4=\'>����Ǎ!�?�����᾿�@<\'�O��i_�5io���A�Mz�-Z�9-]�\0����Tw����cԴ�?���>*h׆2ɓG��}�[��a���p&a�ñ�F�\Z�&U�E��4��a�fp��(SU\\*c�8�p�ᛮ���FUyܥ?�����MQ�r�VE�`�Rn�\'-�Øhʜ�T�%JY�.�F�������L:U�N*qP��������_^ѵ˟\0k0���+�\Z��]�\\Jl�g�kK�<�kJ�}o��kT�hh�KKXe�[[����~7������|g�V�։a�薂Mk�����!�|>4O�Z�?��E%Լ#a��yk\r��<b\Z�L��-�����\0� �xK�&������\0��|&�� xsAԼS�|��x~���\Z\'���[���c��x�����xb��Z��t����^閗�j�������M�γ��\0�8?f��@h���m+���Tx_Ƕ�/���\'���S�c^���<9⯈Rx�犴�-W���f��\'�~Yx���֗�Śv����{��we�ú�\Z�>��ѣG6�1���+��`�J��IP�F\']�5f�O[��	�/��o�h�Lc���ę>M�W����`��U�g�.eJ�0��t���X��l68�<}\\5<=��(��7��?fo��K��$���i��!����E�Ɨ��?���\ZX�W�GKM/�ǁ�4hu�s��\Z~$�Z����kT�.���kmZo|=�U�f�O��[�~��\0����ߴt_�oƟ��3�V�|7�Y|���|t�Ҿ�\r�%ޗ��[��>#|#�ө|H�/����\"��>���}����u���>�lz�?�?����G���/~�S��YԾ5|�w��n�>4��,|;���1�������7��Z����>۩��o��>\ZxF�^�k�iZo��|Y�����O�j/	�o���¬�\0�`�V�u$���U�?�>��x�R�}���[]^y�[/�.oj��׈���#�D�.��q�!����8L-%\Zxl=8ҡJ<��^�>i=�9?zr���ܛm���7Ù\'�.��,�*�h�|=$�~j�jT�u+�+�r�Z�iέz��J���u��k�~П|S�p�����¾#�̿?d}V����L��V��<G�vk���L�i����-�g�+�~x��������i���?�_��\0�a�+x��R(bE��qĊ#�\n��6�(\n��\0b��?�1�\0�WRV����=���y!\0��ǧӎ�í�?�~?�zT$�$��\0�iW��\0?���|e�C�K{�j�\0�f�\\�ο��k\'�u�?CO�#��t�t��������\Z������O�������`Ѵ�m��3�,^�o�|��\\/g�Z��>\"��5��%��ؿj�ٳ�:?�O�.O����4���@��� �]�R�w�o\Zj�.�w�/O���9XxB����K�⇉F���?���O�5tE�\0٪\\Sw�{ۧݷ�Wנ����V�=Z�����C���w�-�|;�.����_��Ļ�/�\0hQ�3�>\r����8,�hO�\Z�Ğ�>|*�>&�,���[���%�^���k�Y�Yx�Z���%�/״g�F�F��hZV��iV�a�h�}����@���O�����ŘEooqF��\"��|��Q�̟�o��\0x��?�gρ�\0�]�X�q����?	������n�\\�Z濠j\Z����\0�]F��,+�X������$�D�A]F[u�4��O�m��m!�\n��v\n0z�d����9y����]��?y�/~ɣ���o��o��?��w��j�����<{���=7�����S�&��\n|4�u�������N�M�ŭ�^�.�\Z��V�f��/��֞!��_��G�_�������A�S��������������x+�������xs᷏�\0h]V������?|&��o��7:~��oↃ���qtoj�CϷ��_���}�/�E������$mG�ۯ��n<imY7\'�f����g�2������5��\n�***��\"��\n��h\n�\0��\0\0�I^Mm�w��R�׻�+^�E�Z��5ӱ���(|E��w�럶ω|+�iWZ���c�\0���[~͚\rƟ,W:c�Q���-/Ŀ�����A�0��B�W�K{�m/��\n&��Yx�}�\00��0D!�$X�(�8�*G\Z\"��\"����\0(\0q(\'=����9�\0\0?�z։[�ovf\'����\0����p=_��\0\n}���','SMK12',0,NULL,NULL,NULL,NULL,'2013-05-27 17:01:50',22940,0),(8,'SMK NEGERI 12 MALANG','','','JL. Pahlawan Balearjosari Kota Malang 65126','',NULL,NULL,'(0341) 400884','','','','(0341) 400884','',NULL,'����\0JFIF\0\0\0\0\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 100\n��\0C\0��\0C��\0\0Z\0Z\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��0{��\0��n�����\0��h��\0o���c�+俏��M�h_>hz?��\0i_����n��I{�\0�?�ܺe��o��zT�j~��a��|#�:����Ui?�</>���^5�@=�g���\r���?�/d�\'���4�\0|8𖑪x��ĭn��m��\0ÿ��>(�EլOƫuc�\'ú{���mKF�`��`��\\��{�\"3Q׼A����s�=sN�ׇ��SxS�G�;�m[\\�â�֖�j��᧍u)CG�xr��\Zy�=��++�5���:�ǯ�c�\r��Z��|}m����?�O|(���5x�V�����=��?��^��=�CK��|	���S\\�~\r�g�~&���j\Z��1��B�\0���cߏ��\0l��G���x7��/��g�7\Zw�4��A�Ke�B�\n�T��x��\Z���x�V�現�k���/j_|O�/��/��G�7���/t��Y\'�N��ܥ�e}��֖�]4z7fr�\0|�.����G�+�~۟�����Zx���0���/�o��|eѵ-Z��P�{�GJվ\n�<Դ�ƝO��o�gPMkJ\Z��Z����\0��G���G�->)Z�:?gˍ\"������b�Z�/�߇:��\Z������\0g�\0�B��Ʒ{�KQX�=�|~��-CN\Z�����ﯭ�Xa��8<��)����D�O������<Q������Ï���Ǆ4?����|R�����#Ǟ-�g���ߴO��>���\0�	��_��c���û}�>�a3���/�o���G����?�k6���\r|?�Ƒ�iQ|i�>�K��}���9��]S�.�����\'��\Ziz?�4O����-��C���ݶ����\\�q8jRQ���ҟEV�(6ն��{����3�̸���J��8�\\�*��j�e�`0]���<V&��m��w�C�f�\0���N_���|q����fuѾ| �����[x�}>�_��.����\0᾽����J�Z�+���6�\'��\0��缻��+n=+Z];��E�j��~3��	�N�\'����x�����3��>����\0��x���:�\r�;�\ZN��j���\0xgZ���������k�=Ư�=9\'�P�\r#���\0�N|c�E�~~ճ~��\04�?�r��6_\Z��	�.�׿d_���z��4o��O�<!��oL���-N�F�����]�,�3o�k��?������y��i߇�ÿ���y����K�����oڛ�o�~\r�ǋ�ϋ3�~�_����X��~3�?��/��\n�5υ\n�Ǧ|T�Λ�{M�5�����e����J�*C���ՋJӥR3�Zh�.�5�zX�/�(��c�y�\Z_|\"�2��V�j*A�vS�y�_?k��F��!�׆�c������S���m3I�����F��/��(��-g�?|%d]�^�g������2��+�\\e��x��n �q��Q��zW���:������\0��{�B����>/k>?:7�o���\0�q�����|\0���#���$пh˿�D�/�t�|;�4�U��\0|Q�<=���W�R�+�����\0���_\n�ο��f�ǅ�w����\0�-흎�7��e�k�?��\0m��k\rß���O��G��|�����3K�l�<-������k�W�t�g�?+4��}��s��7�]��~?�j0ލ�\0}����y�\0�����)0g��P����6Y��U�x���~0�,��/�~|>��\"�־$|Q�iះ�ѧ�$���ľ\'Դ�+�V�&��9��S���[�6�u��\0���g�C�@|-���Ox�����8<m�D��>���� ��3|R�u?\r���֯~�w�xKB�4�|�{�o��<A�\r�3���G���x�������=�>����Ş.���u����O��3�G���\Z�z��!�{�ڵ��؞�ņ��?x��W��\Z�:�{�k�ӆ�J�O�-����\n3��Ǿ$��\0��a�6|E��|�;���E�|�I�!��^$Ӵ�_�g_�:�ǯ��\0>1h�\Z������o��[��Ė�u9t��W�2h��|1\r�z��������-$�������+�m����]z��Ӥ��B�s��\0�)������V���G�o�i�����x�U�]����\0K��-�Ǿ�<7���;H����3S�gw������x�X�Ox�Ǿ���A�/ſ�?�\n������O���?f/�cH��þ�a�+��-�xWN�4�.?��)���h\Z3ipCmo��Z�����=�ѼI�x��av�\0ଟ�:~��\0��1�߲�쭪�|>���%�Z�>#xN�_\nx�ǒ���g���#$���&���4�\0x�M��ڋ/����}H�\'�?N�;W�Kĵ�Z�]��t�I�x�T\Z�R�s�Fv�!��q��ԣ�����3�������X��m�s��`�rckca�����D-<���1t\\q5�1�B�J4(�X�V6:e�v�m���kLv�V�Z���f\"(Ql�8��,ۘ��ǈu�gO���/��X���H��G֧�o]v���;�{��	��\"K���*ۼw��J֑z�$�8�dd~=\\���j��|\'��e�o�\'�&�Ӟo�:�Z�g�\\���>�w�Ηq�ί��vL���g��\\�1�_�s�$�xk	G0��T�Vi�eq����3>���:��^�U1M%W���{��(��o���q�z�p�5��<{V�]�W��W��n�qJ����\0nQ��)Q�+U�<=����(�ha�Q���-�s��	6#+Ĩf\'yH��q��C���}U�&��ߴ��M��j?�q-������C�?Œ�j�\0�U���������oIy��\0�&�o<���<O�A&�w�rG*$�ȒE*$�IIcp$��tu �)ee9RA��9�q�z�~8��^�O�}��Ս\\-z�j�i�f�+Z^��	A�e�v?$�0�ͣ�p�m��q��ެp�t�W���`d�B�xlM\Z������\0p߱��m����-��\'�[��ῄ�\0k/�>��7�0���?����x�:��$���Z&������g�|5׃�E��.8�i�xZ������Gk��\0��\0fڳ���P��u|J�������\0�����/ƿ���|1��ǌt��g�����~h:]ψ4�~��\Zg�پ/�Z���%�3Ǟ\'�g���|w��\08߳g���G���ߏ�\0d�}w�s5��|*.��N�������O|7�؟\'��-m���5��_x�O��\0�#�o��mn�ߏ��\0g�kY��\0m?�s��1�zi�^��o�m~ٶ�}�,�a���࿎�\0u�A�<=�&M�?|:�������\Z׉|����$�v�i�_jZ�u��,�bhr�J;^j�O{B�M���JP����՟�]�����եG�yD��8�.�+Ӆj���������F�WN�\n�q8g:��\n�T�d߉�97>��>8krk�?g��m�<gs����x�j��ǈ�mc���S�E����C�U��\Z~��{��<�I����߆\Z���g���_��弳�M�[��4����B����Pi���{�k�:����0���������[���^��?���-�G��x{J�����e��y�����OF���\0�k�Od��kw���s����\0?\'�i�f�ѣ�O�?��5����M���������/�O�)�C���\n�I��Z�q�3¾��w᳨|*��3MԎ���4�:F��[��;YYb����>�\0�=l_ۓY�~���9��w�ſ����ŽG�WĿx#D�{�o�Y�?�x����H�\0i���!]7�^*�\n���4�[�����I�������\0�,�\0���w���#එ���:ƿ���?Mm�N�o����<y�o��������+P����&��?�r��6:o�4���\r/P�o�F=+�߫�?ѭ�5m�|=������࿇�\Z�U�VӾ~�\Z�\0��{�\'�~������j�^��m\r���:�7�1Awq4)ˈ�*\\Mx�:XZ���z�\'5���.x�Q�Tɸk�szIJ�U�f��4��xlU4�ҳ�u}Si���y���M�����{h-\"i�2��I\Z��9/,�m�,���ػ��ƭ���u;}�g�\\����㑂FOL����߶j��i5휖�^��)�=ݢF�)�6�8\Zu�\"�hU�6�\'�	Y�~�R���Q矿VnR���5I(�M��M(�m^ѓ?Îycq��/�,^%�����q�z�ձ5�8կQ�9T��	ԓ���1|HZ�&�l�^\Z�Vw\Zݥ��c�\\���H�D��Y4�=ռw��sm<\"{y|�K�#~�~�^��?a��2=>���񥥰�E�R��\'�&Ug2:Ϥ��+3����d;Ó�5�\0����g��\0��~.x�\'�~(���o�}c�_?�<���3��]妏�ɨȶ�5�Lӵ{χ�σu�{�|9��/�9濷�5`k>�1��|\'�[�\0�~Ь4y��=�>��;���hZ��<;��j���*_h�&���-���۸<�Qo���A�M���o<i�B��\r�XN�\\M>#��6G��U8�	� ���q���s\\cJ4�R�OBT�j�iO���5?ٟ�L���\03����>!��?�p�����β�v[����Ӕ�\\6.�Q���p8�f�W�]��0�0�)T�b�R�k4����\'�I5�t�GR�H�ⷶ��|7���k�{skq�\\i�\'\Z���-����.gk�=�}�=�@�����=s��^��\0�y~�~?�9��L���/���z|\'�/�;�xo���ʹz$ZMՅ��>+��s{���e��CT�X�.Ud�K��\r�_�\0 �A���i�P��5+�o4�_5��Ö�O<��p]��[y�[[Kmf��ٙ�\n�˟���������5���R�08Z�8�=(G��_��F�NP�pؔ�I9%����?şL̇5��J�O��Ù^a�g�����*rx\\�,m:Բ���M���U��`������fU���bkO��%o<���I�3Ǩ�bO�\'?���/>8�+?m/�����O��\0��^#��W�oj�G�<E{a��X��>�\n��W��x�xw�͗�4���C��� �����h:��������z��\0�=������@WI�,~ښ%���|;�~Ξ�����S��\"�~%��ie��iP��sj0j�^!����N���+��x쮚O!��\r�*y�i&�q8j�毧�Z2j�n.���sIug�}��V]��,����l�\"�px�NOٷ��O4�[���Ҝ�R�	�T+Ղ�#g�7���>�z�����\"�v���>	�o�M�M��\0�χ:�m3��8�w���׀>�5�4_š�R���k���/|w��kǟ\r��Y<Q�ë�wN��S�d�����ٷ�|�����<����+�q,B{x��z��K)���ֺ���\r�獸+���	��9���.~&G��H�E���ÿ<]�x7�?�M��#�U�w��o�o௄.~�_� �3�^\n־xM�?���������x���\0<Q�_Éy�7㟉<q�D���x~K��t�kU�4E�I�#H����M��g�,�G��ٍ�b�X�ꬴ�{���އ��;]�^����][o���]�=xC��	i��į��_4?�����>$�o�y�������9���Gğ�����+ƿ�K��\0�|?g����w��7�\"j:6�ka�5)�;Y�<���8���\0������|7��@��N�q��\Zw�4χv�^��φ^6��&�4��_\0>|��?��E��?�֑�i�k[�>x��ƺ��������~~�>x���o~��\'��k����Oa?Ŀ��_���z�t�.P�����z\'���O��W�ύ�g��\ZK��]?���V&��5��x{�m�T���4��ڟ��W�>*|~�>,x���-���I�cw��� �|Ak�/�_��C:�­G�4�j�\'J5)ԥ?��9Ѩ��,�+��4�\\�	G2�c��L=����k����ѕ\Zо�𜣻��u?��h�U�ã���C+#*�ea��F0Â9��`I8�#�p3��2q�O���(��W�\'�π���K��Y��g�=r��$>$�9��\\ė�o5�2���\0�{��6��&�4��$ѥ���Gе�A$���\r^��N����>��h��R�X4�+W��\'����o��ڛ�[�A�X,�����jo(�����)�\r7M:�)ЅYM�8u\Z�e\Zi�e:P��4�:�����\'��\\/�y����fS�b1+^���e�!���ЅJ��2��\n�\'9a�~U$�B�e�٧������|{���?|>�>�i�i~����5��it\r9m�}7� ~&�φu�/D�}N�R�km&�nŌ�[~ѿiO�O���Y���_�l�S�������\'@\'VӢ�����?������F�3��x�VYt\rfX���\0R?�P~���7��{�o�w����7I���{��;Ҽ7��P�[�qm$Z�\Z]��4pG,F;(�$j�J��W���\'��|`��\0c���\rռ[�|7�|<�������g��%���1��:Σ���L����,��-�7��)K�\r^��<.��\0�|]�8�\08�d�~G�r���K+��x�>\Z�c����s|&o���5eKS2�q�|�=�_��hda�I�\0�����e�W ���8�5��&�0�x�=����<&ER�m��a�{��c7�|�$�\'�d4���O��3�k	�eyF+\r��CK����ߴ/��\0e��B��\0i?�.�Q��\"Y��OG�K��W�>.��k�6��c�Z������#J���m_U��Ώf����c-��~tj\Z}����zF�ey�j�6��hڶ��[Mg�i���{>��i��W1�se�_�\\Y�Z�G��0���#(�7����#i�Xh�?���->4�+I��e�[X�K�\"�M��a�bD[(4}B4���E�:]�,h�S�����\rW�_��o���$����6���MGH�{�MK@��\'0�%��U��>��?�I4k�CP�xƤ/��M�%��xa�^2c8�?��\\(V�q����<��U�8��r�ȡ��q�4�5\nX�]N.X�<�l\\���\0\'�,3O���i��y�i�f�L�5�>�[��2�eY�)c1���ղד���5|�\r{�75BT���9o��?���s�$�\0�4���0���\0i��\rj�\'���M�හ<9���KI��5�Y�!��<#w��x3�Sk&�~6�g�:M���\"�R���,_�*�����Z��a�/x+��\r���s�m{K�|+���\0��_�K\rH�-��I�Y/u	�Y�ZtW���,\Z}���j~�\0�x|�?c�O��\0�+�\0	��H`���.��!�c��r������S�ۈ�|G�Xh|g?�����i?d�7Ï\0�����y�f����I����P�:���^�\'7+���))ogV;\'�߂qX�&�x�Fp�2|\r\\�/�8�0�fً�<O�����r�N����8v���l�x����(�C��ও��Zw�5�_�W���K׼;6���Z��׵;�_O�)<5�Zx��O��N�I�{��Z-Q��\0f�\'���Q�5~�>%��e�?��\"��]��������V���x������k��6�*ws���o��ƛ��~��&�~,�\0�@?h[O��^�Ŷ~\n��A��\n�~�6����U��KS�K���F�\r���h����E���:mΉ���q�H��U#�DDUQT�UU\0*�\0\0\00+�խ�[j�ݟ����$���{�Y/����C�O����\0��#��~8�E�����ֿ�\\jw��V��m#MԴ�4�&���e��\0�~�|Q��ė���1x�����\Z�����?�W�V����%a��&�=��_���=�K������\0��-�H����\0x/@��_\Z��l�j<g��8��\'xWL�S��\0�_½(�\"��|�]x��1x��������:��\08��~,�5���=|M�\'�K�8�_Q�և�Ylo?jOٳB{h�?��I���,�6���km>���\0��#^���͆����F�����?ƞ�~�p4�����t�@N޻&���?\'��|C�I��?oۏ؛�����<��</�������~2������^ћR��_�|=�?C���I�/<@t�XҼai��_�^\rg����>�+���GTѾ#���2�o�O�G�.��x�]c@�?�Dw�����v������4�-5?x^K�K$Ԭ�-GI�- �R�ǾмK�����\0D~2����w�</�F��#�����?�?��%����?�4�\0j?�毮�F������g�>�Z?��\0�~3�9��j���߲�����uۍGZ�׍xG���W�?���O��oD�u�\0��~����~��g�4m+�>	�u�%�\0i;�g���N���>���5��+H��Q�?|?��{��>\0�[����_j�/���u����U�9OR5���a귄���Є�a�F�,kR���֧V*�#w��B�-�j�\\���E�yf��8�6>?V�ѫ����2�O�s,-z��\n��\\5Y�Q��b(b?���|8��������#���&�m4�6�����_�,|=yiw&�o~�c����[��-^�η\Z�v�W�]����׿�_H����*��Ԯ�{�oRi^$�-��%�Z�/|9�����������\0�\\k�W�F�����N?����w��m]{�\'�&���u����4=\'>����Ǎ!�?�����᾿�@<\'�O��i_�5io���A�Mz�-Z�9-]�\0����Tw����cԴ�?���>*h׆2ɓG��}�[��a���p&a�ñ�F�\Z�&U�E��4��a�fp��(SU\\*c�8�p�ᛮ���FUyܥ?�����MQ�r�VE�`�Rn�\'-�Øhʜ�T�%JY�.�F�������L:U�N*qP��������_^ѵ˟\0k0���+�\Z��]�\\Jl�g�kK�<�kJ�}o��kT�hh�KKXe�[[����~7������|g�V�։a�薂Mk�����!�|>4O�Z�?��E%Լ#a��yk\r��<b\Z�L��-�����\0� �xK�&������\0��|&�� xsAԼS�|��x~���\Z\'���[���c��x�����xb��Z��t����^閗�j�������M�γ��\0�8?f��@h���m+���Tx_Ƕ�/���\'���S�c^���<9⯈Rx�犴�-W���f��\'�~Yx���֗�Śv����{��we�ú�\Z�>��ѣG6�1���+��`�J��IP�F\']�5f�O[��	�/��o�h�Lc���ę>M�W����`��U�g�.eJ�0��t���X��l68�<}\\5<=��(��7��?fo��K��$���i��!����E�Ɨ��?���\ZX�W�GKM/�ǁ�4hu�s��\Z~$�Z����kT�.���kmZo|=�U�f�O��[�~��\0����ߴt_�oƟ��3�V�|7�Y|���|t�Ҿ�\r�%ޗ��[��>#|#�ө|H�/����\"��>���}����u���>�lz�?�?����G���/~�S��YԾ5|�w��n�>4��,|;���1�������7��Z����>۩��o��>\ZxF�^�k�iZo��|Y�����O�j/	�o���¬�\0�`�V�u$���U�?�>��x�R�}���[]^y�[/�.oj��׈���#�D�.��q�!����8L-%\Zxl=8ҡJ<��^�>i=�9?zr���ܛm���7Ù\'�.��,�*�h�|=$�~j�jT�u+�+�r�Z�iέz��J���u��k�~П|S�p�����¾#�̿?d}V����L��V��<G�vk���L�i����-�g�+�~x��������i���?�_��\0�a�+x��R(bE��qĊ#�\n��6�(\n��\0b��?�1�\0�WRV����=���y!\0��ǧӎ�í�?�~?�zT$�$��\0�iW��\0?���|e�C�K{�j�\0�f�\\�ο��k\'�u�?CO�#��t�t��������\Z������O�������`Ѵ�m��3�,^�o�|��\\/g�Z��>\"��5��%��ؿj�ٳ�:?�O�.O����4���@��� �]�R�w�o\Zj�.�w�/O���9XxB����K�⇉F���?���O�5tE�\0٪\\Sw�{ۧݷ�Wנ����V�=Z�����C���w�-�|;�.����_��Ļ�/�\0hQ�3�>\r����8,�hO�\Z�Ğ�>|*�>&�,���[���%�^���k�Y�Yx�Z���%�/״g�F�F��hZV��iV�a�h�}����@���O�����ŘEooqF��\"��|��Q�̟�o��\0x��?�gρ�\0�]�X�q����?	������n�\\�Z濠j\Z����\0�]F��,+�X������$�D�A]F[u�4��O�m��m!�\n��v\n0z�d����9y����]��?y�/~ɣ���o��o��?��w��j�����<{���=7�����S�&��\n|4�u�������N�M�ŭ�^�.�\Z��V�f��/��֞!��_��G�_�������A�S��������������x+�������xs᷏�\0h]V������?|&��o��7:~��oↃ���qtoj�CϷ��_���}�/�E������$mG�ۯ��n<imY7\'�f����g�2������5��\n�***��\"��\n��h\n�\0��\0\0�I^Mm�w��R�׻�+^�E�Z��5ӱ���(|E��w�럶ω|+�iWZ���c�\0���[~͚\rƟ,W:c�Q���-/Ŀ�����A�0��B�W�K{�m/��\n&��Yx�}�\00��0D!�$X�(�8�*G\Z\"��\"����\0(\0q(\'=����9�\0\0?�z։[�ovf\'����\0����p=_��\0\n}���','SMK Negeri 12 Malang',0,NULL,NULL,NULL,NULL,'2013-05-28 06:40:31',27817,0);
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_identitas_100` BEFORE INSERT ON `identitas` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_identitas_100` BEFORE UPDATE ON `identitas` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_identitas_100` AFTER DELETE ON `identitas` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'identitas', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jenispekerjaan`
--

DROP TABLE IF EXISTS `jenispekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenispekerjaan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pekerjaan` varchar(100) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pekerjaan`),
  UNIQUE KEY `UX_jenispekerjaan` (`replid`),
  KEY `IX_jenispekerjaan_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenispekerjaan`
--

LOCK TABLES `jenispekerjaan` WRITE;
/*!40000 ALTER TABLE `jenispekerjaan` DISABLE KEYS */;
INSERT INTO `jenispekerjaan` VALUES (14,'PNS',NULL,NULL,NULL,'2010-03-02 03:07:22',10914,0),(15,'Wiraswasta',NULL,NULL,NULL,'2010-03-02 03:07:22',53173,0);
/*!40000 ALTER TABLE `jenispekerjaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_jenispekerjaan_100` BEFORE INSERT ON `jenispekerjaan` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_jenispekerjaan_100` BEFORE UPDATE ON `jenispekerjaan` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.pekerjaan <> OLD.pekerjaan THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'jenispekerjaan', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.pekerjaan, oldpk = OLD.pekerjaan;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_jenispekerjaan_100` AFTER DELETE ON `jenispekerjaan` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'jenispekerjaan', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `petasekolah`
--

DROP TABLE IF EXISTS `petasekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petasekolah` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsekolah` int(10) unsigned NOT NULL,
  `idwilayah` int(10) unsigned DEFAULT NULL,
  `koordinat` varchar(100) DEFAULT NULL,
  `gambar` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_peta_wilayah` (`idwilayah`),
  KEY `FK_peta_sekolah` (`idsekolah`),
  KEY `IX_petasekolah_ts` (`ts`,`issync`),
  CONSTRAINT `FK_peta_sekolah` FOREIGN KEY (`idsekolah`) REFERENCES `identitas` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_peta_wilayah` FOREIGN KEY (`idwilayah`) REFERENCES `wilayah` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petasekolah`
--

LOCK TABLES `petasekolah` WRITE;
/*!40000 ALTER TABLE `petasekolah` DISABLE KEYS */;
/*!40000 ALTER TABLE `petasekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekolah`
--

DROP TABLE IF EXISTS `sekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sekolah` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namasekolah` varchar(45) NOT NULL,
  `gambar` blob,
  `koordinat` text,
  `wilayah` int(10) unsigned NOT NULL,
  `titikpusat` varchar(10) NOT NULL,
  `lokasi` varchar(10) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_sekolah_wilayah` (`wilayah`),
  KEY `IX_sekolah_ts` (`ts`,`issync`),
  CONSTRAINT `FK_sekolah_wilayah` FOREIGN KEY (`wilayah`) REFERENCES `wilayah` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekolah`
--

LOCK TABLES `sekolah` WRITE;
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;
/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suku`
--

DROP TABLE IF EXISTS `suku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suku` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suku` varchar(20) NOT NULL,
  `urutan` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`suku`),
  UNIQUE KEY `UX_suku` (`replid`),
  KEY `IX_suku_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suku`
--

LOCK TABLES `suku` WRITE;
/*!40000 ALTER TABLE `suku` DISABLE KEYS */;
INSERT INTO `suku` VALUES (32,'Jawa',0,NULL,NULL,NULL,'2010-03-02 03:07:22',36536,0),(34,'Padang',0,NULL,NULL,NULL,'2010-03-02 03:07:22',23157,0),(33,'Sunda',0,NULL,NULL,NULL,'2010-03-02 03:07:22',6177,0);
/*!40000 ALTER TABLE `suku` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_suku_100` BEFORE INSERT ON `suku` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_suku_100` BEFORE UPDATE ON `suku` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.suku <> OLD.suku THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'suku', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.suku, oldpk = OLD.suku;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_suku_100` AFTER DELETE ON `suku` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'suku', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tabledep`
--

DROP TABLE IF EXISTS `tabledep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabledep` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rootid` int(10) unsigned NOT NULL,
  `tname` varchar(100) NOT NULL,
  `colname` varchar(100) DEFAULT NULL,
  `deldep` varchar(2) DEFAULT NULL,
  `upddep` varchar(2) DEFAULT NULL,
  `tingkat` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `coltype` varchar(100) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IX_content` (`tname`,`deldep`,`upddep`),
  KEY `IX_tabledep_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabledep`
--

LOCK TABLES `tabledep` WRITE;
/*!40000 ALTER TABLE `tabledep` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabledep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tingkatpendidikan`
--

DROP TABLE IF EXISTS `tingkatpendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tingkatpendidikan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pendidikan` varchar(20) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pendidikan`),
  UNIQUE KEY `UX_tingkatpendidikan` (`replid`),
  KEY `IX_tingkatpendidikan_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tingkatpendidikan`
--

LOCK TABLES `tingkatpendidikan` WRITE;
/*!40000 ALTER TABLE `tingkatpendidikan` DISABLE KEYS */;
INSERT INTO `tingkatpendidikan` VALUES (25,'D1',NULL,NULL,NULL,'2010-03-02 03:07:22',26946,0),(24,'D3',NULL,NULL,NULL,'2010-03-02 03:07:22',50668,0),(23,'S1',NULL,NULL,NULL,'2010-03-02 03:07:22',41443,0),(22,'S2',NULL,NULL,NULL,'2010-03-02 03:07:22',55209,0),(21,'S3',NULL,NULL,NULL,'2010-03-02 03:07:22',20656,0),(28,'SD',NULL,NULL,NULL,'2010-03-02 03:07:22',3183,0),(26,'SMA',NULL,NULL,NULL,'2010-03-02 03:07:22',19478,0),(27,'SMP',NULL,NULL,NULL,'2010-03-02 03:07:22',22307,0);
/*!40000 ALTER TABLE `tingkatpendidikan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trins_tingkatpendidikan_100` BEFORE INSERT ON `tingkatpendidikan` FOR EACH ROW SET NEW.token = FLOOR(1 + (RAND() * 65530)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trupd_tingkatpendidikan_100` BEFORE UPDATE ON `tingkatpendidikan` FOR EACH ROW BEGIN 
  IF @DISABLE_TRIGER IS NULL THEN
      IF OLD.issync = 1 THEN 
          SET NEW.issync = 0; 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
      IF OLD.issync = 0 AND NEW.issync = 0 THEN 
          SET NEW.ts = CURRENT_TIMESTAMP; 
      END IF; 
     IF NEW.pendidikan <> OLD.pendidikan THEN 
         INSERT INTO jbsclient.pkchanges SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'tingkatpendidikan', dataid = OLD.replid, datatoken = OLD.token, newpk = NEW.pendidikan, oldpk = OLD.pendidikan;
     END IF;
  END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `fsync_trdel_tingkatpendidikan_100` AFTER DELETE ON `tingkatpendidikan` FOR EACH ROW BEGIN
  IF @DISABLE_TRIGER IS NULL THEN
     INSERT INTO jbsclient.deleteddata SET token = FLOOR(1 + (RAND() * 65530)), dbname = 'jbsumum', tablename = 'tingkatpendidikan', dataid = OLD.replid, datatoken = OLD.token;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `wilayah`
--

DROP TABLE IF EXISTS `wilayah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wilayah` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namawilayah` varchar(45) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `koordinat` text,
  `rootid` int(10) unsigned NOT NULL,
  `titikpusat` varchar(15) DEFAULT NULL,
  `zoom` varchar(30) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_wilayah_provinsi` (`rootid`),
  KEY `IX_wilayah_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wilayah`
--

LOCK TABLES `wilayah` WRITE;
/*!40000 ALTER TABLE `wilayah` DISABLE KEYS */;
/*!40000 ALTER TABLE `wilayah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wilayah1`
--

DROP TABLE IF EXISTS `wilayah1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wilayah1` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namawilayah` varchar(45) NOT NULL,
  `gambar` blob,
  `koordinat` text,
  `rootid` int(10) unsigned NOT NULL,
  `titikpusat` varchar(15) DEFAULT NULL,
  `zoom` varchar(30) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_wilayah_provinsi` (`rootid`),
  KEY `IX_wilayah1_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wilayah1`
--

LOCK TABLES `wilayah1` WRITE;
/*!40000 ALTER TABLE `wilayah1` DISABLE KEYS */;
/*!40000 ALTER TABLE `wilayah1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jbsuser`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsuser` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsuser`;

--
-- Table structure for table `adminsiswa`
--

DROP TABLE IF EXISTS `adminsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminsiswa` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isnew` varchar(45) NOT NULL DEFAULT '1',
  `haschange` varchar(45) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminsiswa`
--

LOCK TABLES `adminsiswa` WRITE;
/*!40000 ALTER TABLE `adminsiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminsiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakakses`
--

DROP TABLE IF EXISTS `hakakses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hakakses` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `modul` varchar(100) NOT NULL,
  `tingkat` tinyint(1) unsigned NOT NULL,
  `departemen` varchar(50) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `theme` tinyint(2) unsigned DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakakses`
--

LOCK TABLES `hakakses` WRITE;
/*!40000 ALTER TABLE `hakakses` DISABLE KEYS */;
INSERT INTO `hakakses` VALUES (NULL,NULL,NULL,20,'101','SIMAKA',1,NULL,'',1,'2010-03-05 14:00:05',1,NULL,NULL,NULL),(NULL,NULL,NULL,21,'101','KEUANGAN',1,NULL,'',1,'2010-03-05 14:00:29',1,NULL,NULL,NULL),(NULL,NULL,NULL,22,'101','SIMTAKA',1,NULL,NULL,1,NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,23,'101','INFOGURU',1,NULL,NULL,1,'2010-04-16 10:01:22',1,NULL,NULL,NULL),(NULL,NULL,NULL,24,'190','SIMAKA',2,'SMK Negeri 12 Malang','',1,'2013-06-15 12:01:20',1,NULL,NULL,NULL),(NULL,NULL,NULL,25,'12312312','SIMAKA',2,'SMK Negeri 12 Malang','',1,NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,26,'109','SIMAKA',2,'SMK Negeri 12 Malang','',1,'2013-06-19 22:01:23',1,NULL,NULL,NULL),(NULL,NULL,NULL,27,'12345678','SIMAKA',2,'SMK Negeri 12 Malang','',1,NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,28,'112233','SIMAKA',2,'SMK Negeri 12 Malang','',1,NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,29,'007','SIMAKA',1,NULL,'',1,NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,30,'klepon','SIMAKA',1,NULL,'',1,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hakakses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakaksesinfosiswa`
--

DROP TABLE IF EXISTS `hakaksesinfosiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hakaksesinfosiswa` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `theme` tinyint(2) unsigned DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_hakaksesinfosiswa_nis` (`nis`),
  CONSTRAINT `FK_hakaksesinfosiswa_nis` FOREIGN KEY (`nis`) REFERENCES `jbsakad`.`siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakaksesinfosiswa`
--

LOCK TABLES `hakaksesinfosiswa` WRITE;
/*!40000 ALTER TABLE `hakaksesinfosiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `hakaksesinfosiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakakseskeuangan`
--

DROP TABLE IF EXISTS `hakakseskeuangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hakakseskeuangan` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `modul` varchar(100) NOT NULL,
  `tingkat` tinyint(1) unsigned NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakakseskeuangan`
--

LOCK TABLES `hakakseskeuangan` WRITE;
/*!40000 ALTER TABLE `hakakseskeuangan` DISABLE KEYS */;
/*!40000 ALTER TABLE `hakakseskeuangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakaksessimaka`
--

DROP TABLE IF EXISTS `hakaksessimaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hakaksessimaka` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `modul` varchar(100) NOT NULL,
  `tingkat` tinyint(1) unsigned NOT NULL,
  `departemen` varchar(50) NOT NULL,
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_hakakses_nip` (`login`),
  KEY `FK_hakakses_modul` (`modul`),
  CONSTRAINT `FK_hakakses_modul` FOREIGN KEY (`modul`) REFERENCES `modul` (`modul`) ON UPDATE CASCADE,
  CONSTRAINT `FK_hakakses_nip` FOREIGN KEY (`login`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakaksessimaka`
--

LOCK TABLES `hakaksessimaka` WRITE;
/*!40000 ALTER TABLE `hakaksessimaka` DISABLE KEYS */;
/*!40000 ALTER TABLE `hakaksessimaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landlord`
--

DROP TABLE IF EXISTS `landlord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landlord` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isnew` varchar(45) NOT NULL DEFAULT '1',
  `haschange` varchar(45) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landlord`
--

LOCK TABLES `landlord` WRITE;
/*!40000 ALTER TABLE `landlord` DISABLE KEYS */;
INSERT INTO `landlord` VALUES ('GMS2','BD','AT',1,'1','0','5f4dcc3b5aa765d61d8327deb882cf99','2013-07-03 21:01:26',NULL,NULL,NULL);
/*!40000 ALTER TABLE `landlord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_login_nip` (`login`),
  CONSTRAINT `FK_login_nip` FOREIGN KEY (`login`) REFERENCES `jbssdm`.`pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (NULL,NULL,NULL,7,'1024','5f4dcc3b5aa765d61d8327deb882cf99','',1,NULL,NULL,NULL),(NULL,NULL,NULL,8,'190','03f7f7198958ffbda01db956d15f134a',NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,9,'12312312','2eeecd72c567401e6988624b179d0b14',NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,10,'109','4eabe26187a9efcc64595554291bdb1b',NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,11,'12345678','25d55ad283aa400af464c76d713c07ad',NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,12,'112233','d0970714757783e6cf17b26fb8e2298f',NULL,1,NULL,NULL,NULL),(NULL,NULL,NULL,13,'klepon','0b1e50e1fd71c96bac94144cc59cff40',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginsiswa`
--

DROP TABLE IF EXISTS `loginsiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginsiswa` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `theme` tinyint(2) NOT NULL DEFAULT '1',
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_loginsiswa_nis` (`login`),
  CONSTRAINT `FK_loginsiswa_nis` FOREIGN KEY (`login`) REFERENCES `jbsakad`.`siswa` (`nis`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginsiswa`
--

LOCK TABLES `loginsiswa` WRITE;
/*!40000 ALTER TABLE `loginsiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginsiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokasi`
--

DROP TABLE IF EXISTS `lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasi` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isnew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `haschange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lokasi` varchar(45) NOT NULL DEFAULT '',
  `singkatan` varchar(3) NOT NULL DEFAULT '',
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasi`
--

LOCK TABLES `lokasi` WRITE;
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modul`
--

DROP TABLE IF EXISTS `modul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modul` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `isnew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `haschange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `modul` varchar(100) NOT NULL,
  `info1` varchar(50) DEFAULT NULL,
  `info2` varchar(50) DEFAULT NULL,
  `info3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`modul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modul`
--

LOCK TABLES `modul` WRITE;
/*!40000 ALTER TABLE `modul` DISABLE KEYS */;
/*!40000 ALTER TABLE `modul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `jbsvcr`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jbsvcr` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jbsvcr`;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `judul` varchar(255) NOT NULL,
  `komentar` text NOT NULL,
  `idguru` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_agenda_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `angket`
--

DROP TABLE IF EXISTS `angket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `angket` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL DEFAULT '',
  `tglmulai` date NOT NULL DEFAULT '0000-00-00',
  `tglakhir` date NOT NULL DEFAULT '0000-00-00',
  `jenis` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_angket_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angket`
--

LOCK TABLES `angket` WRITE;
/*!40000 ALTER TABLE `angket` DISABLE KEYS */;
/*!40000 ALTER TABLE `angket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beritaguru`
--

DROP TABLE IF EXISTS `beritaguru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beritaguru` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `abstrak` text NOT NULL,
  `isi` text NOT NULL,
  `idguru` varchar(20) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_beritaguru_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beritaguru`
--

LOCK TABLES `beritaguru` WRITE;
/*!40000 ALTER TABLE `beritaguru` DISABLE KEYS */;
/*!40000 ALTER TABLE `beritaguru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beritasekolah`
--

DROP TABLE IF EXISTS `beritasekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beritasekolah` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jenisberita` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `abstrak` text NOT NULL,
  `isi` text NOT NULL,
  `idpengirim` varchar(20) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_beritasiswa_nip` (`idpengirim`),
  KEY `IX_beritasekolah_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beritasekolah`
--

LOCK TABLES `beritasekolah` WRITE;
/*!40000 ALTER TABLE `beritasekolah` DISABLE KEYS */;
/*!40000 ALTER TABLE `beritasekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beritasiswa`
--

DROP TABLE IF EXISTS `beritasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beritasiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `abstrak` text NOT NULL,
  `isi` text NOT NULL,
  `idpengirim` varchar(20) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_beritasiswa_nip` (`idpengirim`),
  KEY `IX_beritasiswa_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beritasiswa`
--

LOCK TABLES `beritasiswa` WRITE;
/*!40000 ALTER TABLE `beritasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `beritasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buletin`
--

DROP TABLE IF EXISTS `buletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buletin` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tempatbuletin` varchar(50) NOT NULL,
  `tanggalbuletin` date NOT NULL,
  `judul` varchar(255) NOT NULL,
  `buletin` text NOT NULL,
  `idpengirim` varchar(20) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `gambar` mediumblob,
  `tanggalinput` datetime DEFAULT NULL,
  `idkategori` int(10) unsigned DEFAULT '0',
  `tampil` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '''0 Null, 1 Situs, 2 Jibas, 3 Situs&Jibas''',
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_buletin_1` (`idkategori`),
  KEY `IX_buletin_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buletin`
--

LOCK TABLES `buletin` WRITE;
/*!40000 ALTER TABLE `buletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `buletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buletin_cmt`
--

DROP TABLE IF EXISTS `buletin_cmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buletin_cmt` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idbuletin` int(10) unsigned NOT NULL,
  `tglpost` datetime NOT NULL,
  `idpenilai` varchar(20) NOT NULL,
  `komentar` varchar(100) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_buletin_cmt_idbuletin` (`idbuletin`),
  KEY `IX_buletin_cmt_ts` (`ts`,`issync`),
  CONSTRAINT `FK_buletin_cmt_idbuletin` FOREIGN KEY (`idbuletin`) REFERENCES `buletin` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buletin_cmt`
--

LOCK TABLES `buletin_cmt` WRITE;
/*!40000 ALTER TABLE `buletin_cmt` DISABLE KEYS */;
/*!40000 ALTER TABLE `buletin_cmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buletin_rate`
--

DROP TABLE IF EXISTS `buletin_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buletin_rate` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idbuletin` int(10) unsigned NOT NULL,
  `tglpost` datetime NOT NULL,
  `idpenilai` varchar(20) NOT NULL,
  `rating` tinyint(3) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_buletin_rate_idbuletin` (`idbuletin`),
  KEY `IX_buletin_rate_ts` (`ts`,`issync`),
  CONSTRAINT `FK_buletin_rate_idbuletin` FOREIGN KEY (`idbuletin`) REFERENCES `buletin` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buletin_rate`
--

LOCK TABLES `buletin_rate` WRITE;
/*!40000 ALTER TABLE `buletin_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `buletin_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catatankategori`
--

DROP TABLE IF EXISTS `catatankategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catatankategori` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kategori` varchar(255) NOT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_catatankategori_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catatankategori`
--

LOCK TABLES `catatankategori` WRITE;
/*!40000 ALTER TABLE `catatankategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `catatankategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catatansiswa`
--

DROP TABLE IF EXISTS `catatansiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catatansiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idkategori` int(10) unsigned NOT NULL,
  `nis` varchar(20) NOT NULL,
  `idkelas` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(255) NOT NULL,
  `catatan` text NOT NULL,
  `nip` varchar(20) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_catatansiswa_idkat` (`idkategori`),
  KEY `IX_catatansiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_catatansiswa_idkat` FOREIGN KEY (`idkategori`) REFERENCES `catatankategori` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catatansiswa`
--

LOCK TABLES `catatansiswa` WRITE;
/*!40000 ALTER TABLE `catatansiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `catatansiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` varchar(50) NOT NULL,
  `waktukirim` date NOT NULL,
  `pesan` text NOT NULL,
  `chatgroup` text NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_chat_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirshare`
--

DROP TABLE IF EXISTS `dirshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirshare` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idroot` int(10) unsigned NOT NULL,
  `dirname` varchar(255) NOT NULL,
  `dirfullpath` varchar(255) NOT NULL,
  `idguru` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_dirshare_ts` (`ts`,`issync`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirshare`
--

LOCK TABLES `dirshare` WRITE;
/*!40000 ALTER TABLE `dirshare` DISABLE KEYS */;
INSERT INTO `dirshare` VALUES (1,'2010-03-02 03:08:16',60772,0,0,'root','root/',NULL,NULL,NULL,NULL,NULL),(2,'2010-03-12 02:49:11',0,0,1,'101','root/101/','101',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dirshare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draft`
--

DROP TABLE IF EXISTS `draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tanggalpesan` datetime NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `idpemilik` varchar(20) NOT NULL,
  `idpengirim` varchar(25) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_draft_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft`
--

LOCK TABLES `draft` WRITE;
/*!40000 ALTER TABLE `draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileshare`
--

DROP TABLE IF EXISTS `fileshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileshare` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iddir` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filetime` datetime NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_fileshareguru_1` (`iddir`),
  KEY `IX_fileshare_ts` (`ts`,`issync`),
  CONSTRAINT `FK_fileshareguru_1` FOREIGN KEY (`iddir`) REFERENCES `dirshare` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileshare`
--

LOCK TABLES `fileshare` WRITE;
/*!40000 ALTER TABLE `fileshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileshare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galerifoto`
--

DROP TABLE IF EXISTS `galerifoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galerifoto` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idguru` varchar(20) DEFAULT NULL,
  `foto` blob,
  `keterangan` varchar(255) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `fotokecil` blob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_galerifoto_nip` (`idguru`),
  KEY `IX_galerifoto_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galerifoto`
--

LOCK TABLES `galerifoto` WRITE;
/*!40000 ALTER TABLE `galerifoto` DISABLE KEYS */;
/*!40000 ALTER TABLE `galerifoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambarbuletin`
--

DROP TABLE IF EXISTS `gambarbuletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gambarbuletin` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idpengirim` varchar(20) NOT NULL,
  `foto` mediumblob,
  `keterangan` varchar(255) DEFAULT NULL,
  `namafile` varchar(100) NOT NULL,
  `bulan` tinyint(2) unsigned NOT NULL,
  `tahun` int(4) unsigned NOT NULL,
  `filename` varchar(100) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_gambarbuletin_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambarbuletin`
--

LOCK TABLES `gambarbuletin` WRITE;
/*!40000 ALTER TABLE `gambarbuletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `gambarbuletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambarlogin`
--

DROP TABLE IF EXISTS `gambarlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gambarlogin` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `direktori` varchar(255) NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `aktif` tinyint(1) DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_gambarlogin_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambarlogin`
--

LOCK TABLES `gambarlogin` WRITE;
/*!40000 ALTER TABLE `gambarlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `gambarlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambartiny`
--

DROP TABLE IF EXISTS `gambartiny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gambartiny` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idguru` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `foto` blob,
  `keterangan` varchar(255) DEFAULT NULL,
  `namagambar` varchar(100) DEFAULT NULL,
  `bulan` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `tahun` int(4) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_gambartiny_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambartiny`
--

LOCK TABLES `gambartiny` WRITE;
/*!40000 ALTER TABLE `gambartiny` DISABLE KEYS */;
/*!40000 ALTER TABLE `gambartiny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambartinypesan`
--

DROP TABLE IF EXISTS `gambartinypesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gambartinypesan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idguru` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `namafile` varchar(255) DEFAULT NULL,
  `direktori` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `namagambar` varchar(100) DEFAULT NULL,
  `bulan` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `tahun` int(4) unsigned NOT NULL DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_gambartinypesan_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambartinypesan`
--

LOCK TABLES `gambartinypesan` WRITE;
/*!40000 ALTER TABLE `gambartinypesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `gambartinypesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawabanangket`
--

DROP TABLE IF EXISTS `jawabanangket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jawabanangket` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idjawab` int(10) unsigned NOT NULL DEFAULT '0',
  `idpertanyaan` int(10) unsigned NOT NULL DEFAULT '0',
  `idpilihan` int(10) unsigned DEFAULT NULL,
  `isian` text,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_jawabanangket_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawabanangket`
--

LOCK TABLES `jawabanangket` WRITE;
/*!40000 ALTER TABLE `jawabanangket` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawabanangket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawabangket`
--

DROP TABLE IF EXISTS `jawabangket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jawabangket` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idangket` int(10) unsigned NOT NULL DEFAULT '0',
  `nis` varchar(20) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `IX_jawabangket_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawabangket`
--

LOCK TABLES `jawabangket` WRITE;
/*!40000 ALTER TABLE `jawabangket` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawabangket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoribuletin`
--

DROP TABLE IF EXISTS `kategoribuletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoribuletin` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kategori` varchar(100) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  UNIQUE KEY `Index_2` (`kategori`),
  KEY `IX_kategoribuletin_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoribuletin`
--

LOCK TABLES `kategoribuletin` WRITE;
/*!40000 ALTER TABLE `kategoribuletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategoribuletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komentar`
--

DROP TABLE IF EXISTS `komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komentar` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `komentar` text,
  `tanggal` datetime NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_komentar_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komentar`
--

LOCK TABLES `komentar` WRITE;
/*!40000 ALTER TABLE `komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lampiranberitaguru`
--

DROP TABLE IF EXISTS `lampiranberitaguru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lampiranberitaguru` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idberita` int(10) unsigned NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `direktori` varchar(255) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_lampiranberitaguru_1` (`idberita`),
  KEY `IX_lampiranberitaguru_ts` (`ts`,`issync`),
  CONSTRAINT `FK_lampiranberitaguru_1` FOREIGN KEY (`idberita`) REFERENCES `beritaguru` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lampiranberitaguru`
--

LOCK TABLES `lampiranberitaguru` WRITE;
/*!40000 ALTER TABLE `lampiranberitaguru` DISABLE KEYS */;
/*!40000 ALTER TABLE `lampiranberitaguru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lampiranberitasiswa`
--

DROP TABLE IF EXISTS `lampiranberitasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lampiranberitasiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idberita` int(10) unsigned NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `direktori` varchar(255) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_lampiranberitasiswa_1` (`idberita`),
  KEY `IX_lampiranberitasiswa_ts` (`ts`,`issync`),
  CONSTRAINT `FK_lampiranberitasiswa_1` FOREIGN KEY (`idberita`) REFERENCES `beritasiswa` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lampiranberitasiswa`
--

LOCK TABLES `lampiranberitasiswa` WRITE;
/*!40000 ALTER TABLE `lampiranberitasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `lampiranberitasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lampirandraft`
--

DROP TABLE IF EXISTS `lampirandraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lampirandraft` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idpesan` int(10) unsigned NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `direktori` varchar(255) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_lampirandraft_idpesan` (`idpesan`),
  KEY `IX_lampirandraft_ts` (`ts`,`issync`),
  CONSTRAINT `FK_lampirandraft_idpesan` FOREIGN KEY (`idpesan`) REFERENCES `draft` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lampirandraft`
--

LOCK TABLES `lampirandraft` WRITE;
/*!40000 ALTER TABLE `lampirandraft` DISABLE KEYS */;
/*!40000 ALTER TABLE `lampirandraft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lampiranpesan`
--

DROP TABLE IF EXISTS `lampiranpesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lampiranpesan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idpesan` int(10) unsigned NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `direktori` varchar(255) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_lampiranpesan_1` (`idpesan`),
  KEY `IX_lampiranpesan_ts` (`ts`,`issync`),
  CONSTRAINT `FK_lampiranpesan_1` FOREIGN KEY (`idpesan`) REFERENCES `pesan` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lampiranpesan`
--

LOCK TABLES `lampiranpesan` WRITE;
/*!40000 ALTER TABLE `lampiranpesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `lampiranpesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mutiara`
--

DROP TABLE IF EXISTS `mutiara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mutiara` (
  `clientid` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kata` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(20) NOT NULL DEFAULT '',
  `lastname` varchar(25) NOT NULL DEFAULT '',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_mutiara_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutiara`
--

LOCK TABLES `mutiara` WRITE;
/*!40000 ALTER TABLE `mutiara` DISABLE KEYS */;
/*!40000 ALTER TABLE `mutiara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `foto` longblob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IX_new_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new`
--

LOCK TABLES `new` WRITE;
/*!40000 ALTER TABLE `new` DISABLE KEYS */;
/*!40000 ALTER TABLE `new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertanyaan`
--

DROP TABLE IF EXISTS `pertanyaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pertanyaan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idangket` int(10) unsigned NOT NULL DEFAULT '0',
  `pertanyaan` varchar(1000) NOT NULL DEFAULT '',
  `jenis` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pertanyaan_angket` (`idangket`),
  KEY `IX_pertanyaan_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pertanyaan_angket` FOREIGN KEY (`idangket`) REFERENCES `angket` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertanyaan`
--

LOCK TABLES `pertanyaan` WRITE;
/*!40000 ALTER TABLE `pertanyaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pertanyaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan`
--

DROP TABLE IF EXISTS `pesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tanggalpesan` datetime NOT NULL,
  `tanggaltampil` date DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `idguru` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `keguru` tinyint(1) unsigned DEFAULT '0',
  `kesiswa` tinyint(1) unsigned DEFAULT '0',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_pesan_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan`
--

LOCK TABLES `pesan` WRITE;
/*!40000 ALTER TABLE `pesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanterkirim`
--

DROP TABLE IF EXISTS `pesanterkirim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanterkirim` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL,
  `idpesan` int(10) unsigned NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_pesanterkirim_1` (`idpesan`),
  KEY `IX_pesanterkirim_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pesanterkirim_1` FOREIGN KEY (`idpesan`) REFERENCES `pesan` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanterkirim`
--

LOCK TABLES `pesanterkirim` WRITE;
/*!40000 ALTER TABLE `pesanterkirim` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanterkirim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilihan`
--

DROP TABLE IF EXISTS `pilihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pilihan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpertanyaan` int(10) unsigned NOT NULL DEFAULT '0',
  `pilihan` varchar(45) NOT NULL DEFAULT '',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `FK_pilihan_pertanyaan` (`idpertanyaan`),
  KEY `IX_pilihan_ts` (`ts`,`issync`),
  CONSTRAINT `FK_pilihan_tanya` FOREIGN KEY (`idpertanyaan`) REFERENCES `pertanyaan` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilihan`
--

LOCK TABLES `pilihan` WRITE;
/*!40000 ALTER TABLE `pilihan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pilihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil`
--

DROP TABLE IF EXISTS `profil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profil` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nip` varchar(20) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telpon` varchar(45) DEFAULT NULL,
  `hp` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `hobi` text,
  `buku` text,
  `riwayat` text,
  `foto` mediumblob,
  `tentang` text,
  `nis` varchar(20) DEFAULT NULL,
  `bg` mediumblob,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `IX_profil_ts` (`ts`,`issync`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil`
--

LOCK TABLES `profil` WRITE;
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subkategoribuletin`
--

DROP TABLE IF EXISTS `subkategoribuletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subkategoribuletin` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kategori` varchar(100) NOT NULL,
  `subkategori` varchar(100) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_subkategoribuletin_1` (`kategori`),
  KEY `IX_subkategoribuletin_ts` (`ts`,`issync`),
  CONSTRAINT `FK_subkategoribuletin_1` FOREIGN KEY (`kategori`) REFERENCES `kategoribuletin` (`kategori`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subkategoribuletin`
--

LOCK TABLES `subkategoribuletin` WRITE;
/*!40000 ALTER TABLE `subkategoribuletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `subkategoribuletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tujuanpesan`
--

DROP TABLE IF EXISTS `tujuanpesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tujuanpesan` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `idpesan` int(10) unsigned NOT NULL,
  `idpenerima` varchar(20) NOT NULL,
  `baru` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_tujuanpesan_1` (`idpesan`),
  KEY `IX_tujuanpesan_ts` (`ts`,`issync`),
  CONSTRAINT `FK_tujuanpesan_1` FOREIGN KEY (`idpesan`) REFERENCES `pesan` (`replid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tujuanpesan`
--

LOCK TABLES `tujuanpesan` WRITE;
/*!40000 ALTER TABLE `tujuanpesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tujuanpesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
INSERT INTO `columns_priv` VALUES ('localhost','mysql','pma','user','Host','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','User','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Select_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Insert_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Update_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Delete_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Create_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Drop_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Reload_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Shutdown_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Process_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','File_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Grant_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','References_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Index_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Alter_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Show_db_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Super_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Create_tmp_table_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Lock_tables_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Execute_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Repl_slave_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','user','Repl_client_priv','2009-01-19 10:49:09','Select'),('localhost','mysql','pma','tables_priv','Host','2009-01-19 10:49:57','Select'),('localhost','mysql','pma','tables_priv','Db','2009-01-19 10:49:57','Select'),('localhost','mysql','pma','tables_priv','User','2009-01-19 10:49:57','Select'),('localhost','mysql','pma','tables_priv','Table_name','2009-01-19 10:49:57','Select'),('localhost','mysql','pma','tables_priv','Table_priv','2009-01-19 10:49:57','Select'),('localhost','mysql','pma','tables_priv','Column_priv','2009-01-19 10:49:57','Select');
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('%','test','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('%','test\\_%','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y'),('localhost','phpmyadmin','pma','Y','Y','Y','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','jbsakad','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('%','test','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('%','test\\_%','root','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (1,'Geographic',0,''),(2,'Polygon properties',33,''),(3,'WKT',33,''),(4,'Numeric Functions',37,''),(5,'Plugins',34,''),(6,'MBR',33,''),(7,'Control flow functions',37,''),(8,'Transactions',34,''),(9,'Account Management',34,''),(10,'Point properties',33,''),(11,'Encryption Functions',37,''),(12,'LineString properties',33,''),(13,'Logical operators',37,''),(14,'Miscellaneous Functions',37,''),(15,'Information Functions',37,''),(16,'Functions and Modifiers for Use with GROUP BY',34,''),(17,'Storage Engines',34,''),(18,'Comparison operators',37,''),(19,'Bit Functions',37,''),(20,'Table Maintenance',34,''),(21,'Data Types',34,''),(22,'User-Defined Functions',34,''),(23,'Compound Statements',34,''),(24,'Geometry constructors',33,''),(25,'GeometryCollection properties',1,''),(26,'Administration',34,''),(27,'Data Manipulation',34,''),(28,'Utility',34,''),(29,'Language Structure',34,''),(30,'Geometry relations',33,''),(31,'Date and Time Functions',37,''),(32,'WKB',33,''),(33,'Geographic Features',34,''),(34,'Contents',0,''),(35,'Geometry properties',33,''),(36,'String Functions',37,''),(37,'Functions',34,''),(38,'Data Definition',34,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (0,'JOIN'),(1,'HOST'),(2,'REPEAT'),(3,'SERIALIZABLE'),(4,'REPLACE'),(5,'AT'),(6,'SCHEDULE'),(7,'RETURNS'),(8,'STARTS'),(9,'MASTER_SSL_CA'),(10,'NCHAR'),(11,'COLUMNS'),(12,'COMPLETION'),(13,'WORK'),(14,'DATETIME'),(15,'MODE'),(16,'OPEN'),(17,'INTEGER'),(18,'ESCAPE'),(19,'VALUE'),(20,'MASTER_SSL_VERIFY_SERVER_CERT'),(21,'SQL_BIG_RESULT'),(22,'DROP'),(23,'GEOMETRYCOLLECTIONFROMWKB'),(24,'EVENTS'),(25,'MONTH'),(26,'INFO'),(27,'PROFILES'),(28,'DUPLICATE'),(29,'REPLICATION'),(30,'UNLOCK'),(31,'INNODB'),(32,'YEAR_MONTH'),(33,'SUBJECT'),(34,'PREPARE'),(35,'LOCK'),(36,'NDB'),(37,'CHECK'),(38,'FULL'),(39,'INT4'),(40,'BY'),(41,'NO'),(42,'MINUTE'),(43,'PARTITION'),(44,'DATA'),(45,'DAY'),(46,'SHARE'),(47,'REAL'),(48,'SEPARATOR'),(49,'MASTER_HEARTBEAT_PERIOD'),(50,'DELETE'),(51,'ON'),(52,'CONNECTION'),(53,'CLOSE'),(54,'X509'),(55,'USE'),(56,'WHERE'),(57,'PRIVILEGES'),(58,'SPATIAL'),(59,'EVENT'),(60,'SUPER'),(61,'SQL_BUFFER_RESULT'),(62,'IGNORE'),(63,'QUICK'),(64,'SIGNED'),(65,'OFFLINE'),(66,'SECURITY'),(67,'AUTOEXTEND_SIZE'),(68,'NDBCLUSTER'),(69,'POLYGONFROMWKB'),(70,'FALSE'),(71,'LEVEL'),(72,'FORCE'),(73,'BINARY'),(74,'TO'),(75,'CHANGE'),(76,'CURRENT_USER'),(77,'HOUR_MINUTE'),(78,'UPDATE'),(79,'PRESERVE'),(80,'INTO'),(81,'FEDERATED'),(82,'VARYING'),(83,'MAX_SIZE'),(84,'HOUR_SECOND'),(85,'VARIABLE'),(86,'ROLLBACK'),(87,'RTREE'),(88,'PROCEDURE'),(89,'TIMESTAMP'),(90,'IMPORT'),(91,'AGAINST'),(92,'CHECKSUM'),(93,'COUNT'),(94,'LONGBINARY'),(95,'THEN'),(96,'INSERT'),(97,'ENGINES'),(98,'HANDLER'),(99,'PORT'),(100,'DAY_SECOND'),(101,'EXISTS'),(102,'MUTEX'),(103,'RELEASE'),(104,'BOOLEAN'),(105,'MOD'),(106,'DEFAULT'),(107,'TYPE'),(108,'NO_WRITE_TO_BINLOG'),(109,'OPTIMIZE'),(110,'RESET'),(111,'ITERATE'),(112,'INSTALL'),(113,'DO'),(114,'BIGINT'),(115,'SET'),(116,'ISSUER'),(117,'DATE'),(118,'STATUS'),(119,'FULLTEXT'),(120,'COMMENT'),(121,'MASTER_CONNECT_RETRY'),(122,'INNER'),(123,'STOP'),(124,'MASTER_LOG_FILE'),(125,'MRG_MYISAM'),(126,'PRECISION'),(127,'REQUIRE'),(128,'TRAILING'),(129,'PARTITIONS'),(130,'LONG'),(131,'OPTION'),(132,'REORGANIZE'),(133,'ELSE'),(134,'DEALLOCATE'),(135,'IO_THREAD'),(136,'CASE'),(137,'CIPHER'),(138,'CONTINUE'),(139,'FROM'),(140,'READ'),(141,'LEFT'),(142,'ELSEIF'),(143,'MINUTE_SECOND'),(144,'COMPACT'),(145,'RESTORE'),(146,'DEC'),(147,'FOR'),(148,'WARNINGS'),(149,'MIN_ROWS'),(150,'CONDITION'),(151,'STRING'),(152,'ENCLOSED'),(153,'FUNCTION'),(154,'AGGREGATE'),(155,'FIELDS'),(156,'INT3'),(157,'ARCHIVE'),(158,'AVG_ROW_LENGTH'),(159,'ADD'),(160,'KILL'),(161,'FLOAT4'),(162,'TABLESPACE'),(163,'VIEW'),(164,'REPEATABLE'),(165,'INFILE'),(166,'ORDER'),(167,'USING'),(168,'MIDDLEINT'),(169,'GRANT'),(170,'UNSIGNED'),(171,'DECIMAL'),(172,'GEOMETRYFROMTEXT'),(173,'INDEXES'),(174,'FOREIGN'),(175,'CACHE'),(176,'HOSTS'),(177,'COMMIT'),(178,'SCHEMAS'),(179,'LEADING'),(180,'SNAPSHOT'),(181,'DECLARE'),(182,'LOAD'),(183,'SQL_CACHE'),(184,'CONVERT'),(185,'DYNAMIC'),(186,'COLLATE'),(187,'POLYGONFROMTEXT'),(188,'BYTE'),(189,'GLOBAL'),(190,'LINESTRINGFROMWKB'),(191,'WHEN'),(192,'COLUMN_FORMAT'),(193,'HAVING'),(194,'AS'),(195,'STARTING'),(196,'RELOAD'),(197,'AUTOCOMMIT'),(198,'REVOKE'),(199,'GRANTS'),(200,'OUTER'),(201,'FLOOR'),(202,'EXPLAIN'),(203,'WITH'),(204,'AFTER'),(205,'STD'),(206,'CSV'),(207,'DISABLE'),(208,'UNINSTALL'),(209,'OUTFILE'),(210,'LOW_PRIORITY'),(211,'FILE'),(212,'NODEGROUP'),(213,'SCHEMA'),(214,'SONAME'),(215,'POW'),(216,'DUAL'),(217,'MULTIPOINTFROMWKB'),(218,'INDEX'),(219,'BACKUP'),(220,'MULTIPOINTFROMTEXT'),(221,'DEFINER'),(222,'MASTER_BIND'),(223,'REMOVE'),(224,'EXTENDED'),(225,'MULTILINESTRINGFROMWKB'),(226,'CROSS'),(227,'CONTRIBUTORS'),(228,'NATIONAL'),(229,'GROUP'),(230,'SHA'),(231,'ONLINE'),(232,'UNDO'),(233,'ZEROFILL'),(234,'CLIENT'),(235,'MASTER_PASSWORD'),(236,'OWNER'),(237,'RELAY_LOG_FILE'),(238,'TRUE'),(239,'CHARACTER'),(240,'MASTER_USER'),(241,'TABLE'),(242,'ENGINE'),(243,'INSERT_METHOD'),(244,'CASCADE'),(245,'RELAY_LOG_POS'),(246,'SQL_CALC_FOUND_ROWS'),(247,'UNION'),(248,'MYISAM'),(249,'LEAVE'),(250,'MODIFY'),(251,'MATCH'),(252,'MASTER_LOG_POS'),(253,'DISTINCTROW'),(254,'DESC'),(255,'TIME'),(256,'NUMERIC'),(257,'EXPANSION'),(258,'CURSOR'),(259,'CODE'),(260,'GEOMETRYCOLLECTIONFROMTEXT'),(261,'CHAIN'),(262,'LOGFILE'),(263,'FLUSH'),(264,'CREATE'),(265,'DESCRIBE'),(266,'EXTENT_SIZE'),(267,'MAX_UPDATES_PER_HOUR'),(268,'INT2'),(269,'PROCESSLIST'),(270,'ENDS'),(271,'LOGS'),(272,'DISCARD'),(273,'HEAP'),(274,'SOUNDS'),(275,'BETWEEN'),(276,'MULTILINESTRINGFROMTEXT'),(277,'REPAIR'),(278,'PACK_KEYS'),(279,'FAST'),(280,'VALUES'),(281,'CALL'),(282,'LOOP'),(283,'VARCHARACTER'),(284,'BEFORE'),(285,'TRUNCATE'),(286,'SHOW'),(287,'ALL'),(288,'REDUNDANT'),(289,'USER_RESOURCES'),(290,'PARTIAL'),(291,'BINLOG'),(292,'END'),(293,'SECOND'),(294,'AND'),(295,'FLOAT8'),(296,'PREV'),(297,'HOUR'),(298,'SELECT'),(299,'DATABASES'),(300,'OR'),(301,'IDENTIFIED'),(302,'WRAPPER'),(303,'MASTER_SSL_CIPHER'),(304,'SQL_SLAVE_SKIP_COUNTER'),(305,'BOTH'),(306,'BOOL'),(307,'YEAR'),(308,'MASTER_PORT'),(309,'CONCURRENT'),(310,'HELP'),(311,'UNIQUE'),(312,'TRIGGERS'),(313,'PROCESS'),(314,'OPTIONS'),(315,'CONSISTENT'),(316,'MASTER_SSL'),(317,'DATE_ADD'),(318,'MAX_CONNECTIONS_PER_HOUR'),(319,'LIKE'),(320,'PLUGIN'),(321,'FETCH'),(322,'IN'),(323,'COLUMN'),(324,'DUMPFILE'),(325,'USAGE'),(326,'EXECUTE'),(327,'MEMORY'),(328,'CEIL'),(329,'QUERY'),(330,'MASTER_HOST'),(331,'LINES'),(332,'SQL_THREAD'),(333,'SERVER'),(334,'MAX_QUERIES_PER_HOUR'),(335,'MASTER_SSL_CERT'),(336,'MULTIPOLYGONFROMWKB'),(337,'TRANSACTION'),(338,'DAY_MINUTE'),(339,'STDDEV'),(340,'DATE_SUB'),(341,'REBUILD'),(342,'GEOMETRYFROMWKB'),(343,'INT1'),(344,'RENAME'),(345,'PARSER'),(346,'RIGHT'),(347,'ALTER'),(348,'MAX_ROWS'),(349,'SOCKET'),(350,'STRAIGHT_JOIN'),(351,'NATURAL'),(352,'VARIABLES'),(353,'ESCAPED'),(354,'SHA1'),(355,'KEY_BLOCK_SIZE'),(356,'PASSWORD'),(357,'OFFSET'),(358,'CHAR'),(359,'NEXT'),(360,'SQL_LOG_BIN'),(361,'ERRORS'),(362,'TEMPORARY'),(363,'COMMITTED'),(364,'SQL_SMALL_RESULT'),(365,'UPGRADE'),(366,'BEGIN'),(367,'DELAY_KEY_WRITE'),(368,'PROFILE'),(369,'MEDIUM'),(370,'INTERVAL'),(371,'SSL'),(372,'DAY_HOUR'),(373,'NAME'),(374,'REFERENCES'),(375,'AES_ENCRYPT'),(376,'STORAGE'),(377,'ISOLATION'),(378,'CEILING'),(379,'EVERY'),(380,'INT8'),(381,'AUTHORS'),(382,'RESTRICT'),(383,'UNCOMMITTED'),(384,'LINESTRINGFROMTEXT'),(385,'IS'),(386,'NOT'),(387,'ANALYSE'),(388,'DATAFILE'),(389,'DES_KEY_FILE'),(390,'COMPRESSED'),(391,'START'),(392,'PLUGINS'),(393,'SAVEPOINT'),(394,'IF'),(395,'PRIMARY'),(396,'PURGE'),(397,'LAST'),(398,'USER'),(399,'INNOBASE'),(400,'EXIT'),(401,'KEYS'),(402,'LIMIT'),(403,'KEY'),(404,'MERGE'),(405,'UNTIL'),(406,'SQL_NO_CACHE'),(407,'DELAYED'),(408,'ANALYZE'),(409,'CONSTRAINT'),(410,'SERIAL'),(411,'ACTION'),(412,'WRITE'),(413,'INITIAL_SIZE'),(414,'SESSION'),(415,'DATABASE'),(416,'NULL'),(417,'POWER'),(418,'USE_FRM'),(419,'TERMINATED'),(420,'SLAVE'),(421,'NVARCHAR'),(422,'ASC'),(423,'RETURN'),(424,'OPTIONALLY'),(425,'ENABLE'),(426,'DIRECTORY'),(427,'WHILE'),(428,'MAX_USER_CONNECTIONS'),(429,'LOCAL'),(430,'DISTINCT'),(431,'AES_DECRYPT'),(432,'MASTER_SSL_KEY'),(433,'NONE'),(434,'TABLES'),(435,'<>'),(436,'RLIKE'),(437,'TRIGGER'),(438,'COLLATION'),(439,'SHUTDOWN'),(440,'HIGH_PRIORITY'),(441,'BTREE'),(442,'FIRST'),(443,'COALESCE'),(444,'WAIT'),(445,'TYPES'),(446,'MASTER'),(447,'FIXED'),(448,'MULTIPOLYGONFROMTEXT'),(449,'ROW_FORMAT');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (1,0),(348,0),(463,1),(225,2),(439,3),(3,4),(414,4),(86,5),(86,6),(399,6),(94,7),(86,8),(182,9),(422,10),(21,11),(339,11),(414,11),(86,12),(399,12),(142,13),(223,14),(85,15),(348,15),(16,16),(103,16),(129,16),(339,16),(94,17),(489,17),(373,18),(3,19),(101,19),(235,19),(182,20),(348,21),(9,22),(30,22),(34,22),(84,22),(183,22),(229,22),(256,22),(269,22),(293,22),(324,22),(398,22),(408,22),(409,22),(453,22),(468,22),(105,23),(119,24),(369,25),(252,26),(79,27),(101,28),(195,29),(36,30),(339,31),(393,31),(458,31),(369,32),(195,33),(35,34),(229,34),(36,35),(348,35),(458,36),(410,37),(453,37),(458,37),(21,38),(287,38),(339,38),(443,38),(458,38),(489,39),(48,40),(74,40),(80,40),(195,40),(348,40),(355,40),(414,40),(453,40),(458,40),(458,41),(462,41),(369,42),(453,43),(458,43),(114,44),(207,44),(414,44),(458,44),(463,44),(369,45),(348,46),(94,47),(307,47),(355,48),(182,49),(48,50),(458,50),(462,50),(1,51),(86,51),(399,51),(462,51),(171,52),(458,52),(51,53),(103,53),(195,54),(1,55),(55,55),(189,55),(48,56),(80,56),(103,56),(188,57),(195,57),(241,57),(205,58),(453,58),(86,59),(293,59),(350,59),(399,59),(195,60),(348,61),(1,62),(80,62),(101,62),(348,62),(414,62),(453,62),(48,63),(410,63),(456,63),(223,64),(84,65),(205,65),(453,65),(195,66),(189,67),(458,68),(88,69),(472,69),(378,70),(439,71),(1,72),(39,73),(223,73),(262,73),(182,74),(262,74),(451,74),(182,75),(453,75),(86,76),(399,76),(369,77),(80,78),(101,78),(348,78),(462,78),(86,79),(399,79),(3,80),(101,80),(297,80),(348,80),(458,81),(249,82),(189,83),(369,84),(126,85),(142,86),(451,86),(205,87),(18,88),(181,88),(295,88),(321,88),(339,88),(348,88),(409,88),(431,88),(477,88),(96,89),(185,89),(414,90),(453,90),(85,91),(394,92),(458,92),(66,93),(322,93),(425,93),(278,94),(28,95),(57,95),(82,95),(101,96),(190,96),(294,96),(476,96),(275,97),(339,97),(103,98),(306,98),(463,99),(369,100),(9,101),(30,101),(86,101),(151,101),(183,101),(269,101),(293,101),(339,102),(359,102),(142,103),(451,103),(24,104),(85,104),(109,105),(170,105),(3,106),(101,106),(151,106),(194,106),(207,106),(235,106),(453,106),(458,106),(453,107),(111,108),(320,108),(456,108),(460,108),(111,109),(453,109),(38,110),(115,110),(147,110),(257,110),(121,111),(412,112),(86,113),(122,113),(399,113),(485,113),(216,114),(3,115),(80,115),(101,115),(126,115),(135,115),(142,115),(151,115),(178,115),(207,115),(326,115),(339,115),(414,115),(453,115),(458,115),(462,115),(467,115),(483,115),(195,116),(128,117),(223,117),(255,117),(369,117),(58,118),(132,118),(210,118),(218,118),(321,118),(339,118),(359,118),(393,118),(205,119),(453,119),(458,119),(86,120),(189,120),(399,120),(458,120),(182,121),(1,122),(52,123),(182,124),(458,125),(307,126),(195,127),(447,128),(247,129),(278,130),(195,131),(241,131),(453,132),(57,133),(82,133),(229,134),(52,135),(317,135),(57,136),(82,136),(195,137),(306,138),(48,139),(114,139),(119,139),(339,139),(348,139),(353,139),(447,139),(36,140),(103,140),(439,140),(1,141),(28,142),(369,143),(458,144),(175,145),(204,146),(176,147),(306,147),(339,147),(348,147),(413,147),(322,148),(339,148),(458,149),(176,150),(94,151),(414,152),(18,153),(34,153),(94,153),(206,153),(295,153),(321,153),(339,153),(398,153),(409,153),(431,153),(477,153),(94,154),(339,155),(414,155),(244,156),(458,157),(453,158),(458,158),(60,159),(189,159),(453,159),(468,159),(171,160),(164,161),(189,162),(408,162),(453,162),(468,162),(30,163),(155,163),(446,163),(439,164),(414,165),(48,166),(80,166),(348,166),(355,166),(453,166),(1,167),(48,167),(83,167),(244,168),(195,169),(241,169),(24,170),(125,170),(164,170),(204,170),(223,170),(307,170),(489,170),(94,171),(152,171),(223,171),(404,172),(339,173),(453,174),(458,174),(462,174),(463,174),(98,175),(147,175),(297,175),(141,176),(339,176),(142,177),(156,178),(339,178),(447,179),(142,180),(176,181),(194,181),(306,181),(413,181),(114,182),(297,182),(353,182),(414,182),(348,183),(223,184),(370,184),(458,185),(151,186),(207,186),(458,186),(387,187),(455,188),(126,189),(132,189),(178,189),(341,189),(439,189),(444,190),(57,191),(82,191),(458,192),(348,193),(1,194),(36,194),(348,194),(414,195),(195,196),(142,197),(241,198),(187,199),(339,199),(1,200),(216,201),(247,202),(85,203),(195,203),(205,203),(453,203),(458,203),(453,204),(253,205),(414,206),(458,206),(86,207),(399,207),(453,207),(284,208),(348,209),(3,210),(36,210),(48,210),(80,210),(101,210),(414,210),(195,211),(189,212),(151,213),(183,213),(207,213),(302,213),(339,213),(94,214),(270,215),(272,216),(454,217),(1,218),(60,218),(84,218),(98,218),(205,218),(297,218),(301,218),(339,218),(453,218),(458,218),(351,219),(417,220),(86,221),(399,221),(182,222),(453,223),(247,224),(456,224),(265,225),(1,226),(7,227),(339,227),(249,228),(422,228),(189,229),(348,229),(419,230),(84,231),(205,231),(453,231),(306,232),(24,233),(125,233),(164,233),(204,233),(307,233),(489,233),(195,234),(182,235),(463,236),(182,237),(378,238),(151,239),(207,239),(249,239),(326,239),(339,239),(414,239),(422,239),(458,239),(182,240),(60,241),(106,241),(111,241),(175,241),(210,241),(269,241),(271,241),(314,241),(339,241),(351,241),(353,241),(394,241),(410,241),(453,241),(456,241),(458,241),(460,241),(189,242),(339,242),(359,242),(408,242),(453,242),(458,242),(468,242),(458,243),(30,244),(269,244),(458,244),(462,244),(182,245),(348,246),(298,247),(458,248),(303,249),(453,250),(85,251),(182,252),(348,253),(323,254),(348,254),(355,254),(223,255),(308,255),(368,255),(204,256),(85,257),(413,258),(477,259),(238,260),(142,261),(189,262),(147,263),(320,263),(18,264),(22,264),(60,264),(74,264),(86,264),(94,264),(151,264),(189,264),(205,264),(206,264),(271,264),(295,264),(302,264),(339,264),(350,264),(446,264),(458,264),(463,264),(323,265),(189,266),(195,267),(226,268),(339,269),(443,269),(86,270),(39,271),(262,271),(339,271),(453,272),(458,273),(371,274),(143,275),(104,276),(453,277),(456,277),(458,278),(410,279),(3,280),(101,280),(331,281),(336,282),(249,283),(262,284),(314,285),(7,286),(10,286),(18,286),(21,286),(25,286),(33,286),(39,286),(58,286),(66,286),(79,286),(119,286),(129,286),(132,286),(141,286),(156,286),(187,286),(188,286),(210,286),(218,286),(271,286),(275,286),(287,286),(301,286),(302,286),(321,286),(322,286),(326,286),(339,286),(341,286),(350,286),(359,286),(393,286),(443,286),(477,286),(481,286),(195,287),(241,287),(298,287),(348,287),(458,288),(320,289),(458,290),(119,291),(342,291),(28,292),(57,292),(82,292),(225,292),(319,292),(336,292),(485,292),(369,293),(143,294),(309,294),(307,295),(103,296),(369,297),(3,298),(101,298),(247,298),(252,298),(294,298),(348,298),(156,299),(339,299),(137,300),(74,301),(195,301),(463,302),(182,303),(178,304),(447,305),(24,306),(107,306),(369,307),(182,308),(414,309),(116,310),(383,310),(453,311),(25,312),(339,312),(195,313),(367,314),(463,314),(142,315),(182,316),(369,317),(195,318),(339,319),(371,319),(284,320),(339,320),(412,320),(376,321),(85,322),(119,322),(348,322),(453,323),(348,324),(195,325),(83,326),(195,326),(348,327),(389,328),(85,329),(147,329),(171,329),(182,330),(414,331),(52,332),(317,332),(9,333),(367,333),(463,333),(195,334),(182,335),(120,336),(142,337),(439,337),(369,338),(400,339),(369,340),(453,341),(140,342),(24,343),(106,344),(217,344),(399,344),(453,344),(205,345),(453,345),(458,345),(1,346),(60,347),(155,347),(195,347),(207,347),(367,347),(399,347),(431,347),(453,347),(468,347),(458,348),(463,349),(1,350),(348,350),(1,351),(339,352),(341,352),(414,353),(419,354),(458,355),(74,356),(195,356),(463,356),(467,356),(348,357),(223,358),(455,358),(103,359),(483,360),(66,361),(339,361),(269,362),(439,363),(348,364),(207,365),(410,365),(142,366),(319,366),(458,367),(79,368),(410,369),(86,370),(369,370),(195,371),(369,372),(207,373),(195,374),(458,374),(462,374),(435,375),(275,376),(439,377),(440,378),(86,379),(125,380),(10,381),(339,381),(30,382),(269,382),(462,382),(439,383),(56,384),(81,385),(201,385),(362,385),(448,385),(81,386),(86,386),(151,386),(201,386),(305,386),(181,387),(189,388),(468,388),(320,389),(458,390),(142,391),(317,391),(33,392),(451,393),(9,394),(28,394),(30,394),(86,394),(151,394),(183,394),(269,394),(293,394),(470,394),(453,395),(262,396),(103,397),(74,398),(217,398),(324,398),(463,398),(458,399),(306,400),(301,401),(339,401),(453,401),(48,402),(80,402),(103,402),(119,402),(348,402),(60,403),(101,403),(453,403),(458,403),(462,403),(458,404),(225,405),(348,406),(3,407),(101,407),(476,407),(453,408),(460,408),(453,409),(458,409),(235,410),(458,410),(458,411),(462,411),(36,412),(189,413),(468,413),(126,414),(132,414),(341,414),(439,414),(151,415),(183,415),(207,415),(302,415),(339,415),(463,415),(81,416),(362,416),(462,416),(473,417),(456,418),(414,419),(38,420),(52,420),(86,420),(141,420),(218,420),(317,420),(399,420),(249,421),(348,422),(355,422),(480,423),(414,424),(86,425),(399,425),(453,425),(207,426),(458,426),(485,427),(195,428),(36,429),(111,429),(320,429),(414,429),(456,429),(460,429),(0,430),(93,430),(281,430),(298,430),(348,430),(355,430),(377,430),(425,430),(486,431),(182,432),(195,433),(36,434),(129,434),(287,434),(339,434),(484,435),(27,436),(22,437),(256,437),(339,437),(339,438),(481,438),(195,439),(101,440),(348,440),(205,441),(103,442),(453,442),(458,442),(453,443),(189,444),(468,444),(339,445),(39,446),(58,446),(114,446),(182,446),(257,446),(262,446),(353,446),(204,447),(458,447),(196,448),(458,449);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` bigint(20) unsigned NOT NULL,
  `updates` bigint(20) unsigned NOT NULL,
  `deletes` bigint(20) unsigned NOT NULL,
  `schemaops` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proc`
--

LOCK TABLES `proc` WRITE;
/*!40000 ALTER TABLE `proc` DISABLE KEYS */;
/*!40000 ALTER TABLE `proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','pma','user','root@localhost','2009-01-19 10:49:09','','Select'),('localhost','mysql','pma','db','root@localhost','2009-01-19 10:49:20','Select',''),('localhost','mysql','pma','host','root@localhost','2009-01-19 10:49:40','Select',''),('localhost','mysql','pma','tables_priv','root@localhost','2009-01-19 10:49:57','','Select');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
INSERT INTO `time_zone` VALUES (1,'Y'),(2,'Y'),(3,'Y'),(4,'Y'),(5,'Y'),(6,'Y'),(7,'Y'),(8,'Y'),(9,'Y'),(10,'Y'),(11,'Y'),(12,'Y'),(13,'Y'),(14,'Y'),(15,'Y'),(16,'Y'),(17,'Y'),(18,'Y'),(19,'Y'),(20,'Y'),(21,'Y'),(22,'Y'),(23,'Y'),(24,'Y'),(25,'Y'),(26,'Y'),(27,'Y'),(28,'Y'),(29,'Y'),(30,'Y'),(31,'Y'),(32,'Y'),(33,'Y'),(34,'Y'),(35,'Y'),(36,'Y'),(37,'Y'),(38,'Y'),(39,'Y'),(40,'Y'),(41,'Y'),(42,'Y'),(43,'Y'),(44,'Y'),(45,'Y'),(46,'Y'),(47,'Y'),(48,'Y'),(49,'Y'),(50,'Y'),(51,'Y'),(52,'Y'),(53,'Y'),(54,'Y'),(55,'Y'),(56,'Y'),(57,'Y'),(58,'Y'),(59,'Y'),(60,'Y'),(61,'Y'),(62,'Y'),(63,'Y'),(64,'Y'),(65,'Y'),(66,'Y'),(67,'Y'),(68,'Y'),(69,'Y'),(70,'Y'),(71,'Y'),(72,'Y'),(73,'Y'),(74,'Y'),(75,'Y'),(76,'Y'),(77,'Y'),(78,'Y'),(79,'Y'),(80,'Y'),(81,'Y'),(82,'Y'),(83,'Y'),(84,'Y'),(85,'Y'),(86,'Y'),(87,'Y'),(88,'Y'),(89,'Y'),(90,'Y'),(91,'Y'),(92,'Y'),(93,'Y'),(94,'Y'),(95,'Y'),(96,'Y'),(97,'Y'),(98,'Y'),(99,'Y'),(100,'Y'),(101,'Y'),(102,'Y'),(103,'Y'),(104,'Y'),(105,'Y'),(106,'Y'),(107,'Y'),(108,'Y'),(109,'Y'),(110,'Y'),(111,'Y'),(112,'Y'),(113,'Y'),(114,'Y'),(115,'Y'),(116,'Y'),(117,'Y'),(118,'Y'),(119,'Y'),(120,'Y'),(121,'Y'),(122,'Y'),(123,'Y'),(124,'Y'),(125,'Y'),(126,'Y'),(127,'Y'),(128,'Y'),(129,'Y'),(130,'Y'),(131,'Y'),(132,'Y'),(133,'Y'),(134,'Y'),(135,'Y'),(136,'Y'),(137,'Y'),(138,'Y'),(139,'Y'),(140,'Y'),(141,'Y'),(142,'Y'),(143,'Y'),(144,'Y'),(145,'Y'),(146,'Y'),(147,'Y'),(148,'Y'),(149,'Y'),(150,'Y'),(151,'Y'),(152,'Y'),(153,'Y'),(154,'Y'),(155,'Y'),(156,'Y'),(157,'Y'),(158,'Y'),(159,'Y'),(160,'Y'),(161,'Y'),(162,'Y'),(163,'Y'),(164,'Y'),(165,'Y'),(166,'Y'),(167,'Y'),(168,'Y'),(169,'Y'),(170,'Y'),(171,'Y'),(172,'Y'),(173,'Y'),(174,'Y'),(175,'Y'),(176,'Y'),(177,'Y'),(178,'Y'),(179,'Y'),(180,'Y'),(181,'Y'),(182,'Y'),(183,'Y'),(184,'Y'),(185,'Y'),(186,'Y'),(187,'Y'),(188,'Y'),(189,'Y'),(190,'Y'),(191,'Y'),(192,'Y'),(193,'Y'),(194,'Y'),(195,'Y'),(196,'Y'),(197,'Y'),(198,'Y'),(199,'Y'),(200,'Y'),(201,'Y'),(202,'Y'),(203,'Y'),(204,'Y'),(205,'Y'),(206,'Y'),(207,'Y'),(208,'Y'),(209,'Y'),(210,'Y'),(211,'Y'),(212,'Y'),(213,'Y'),(214,'Y'),(215,'Y'),(216,'Y'),(217,'Y'),(218,'Y'),(219,'Y'),(220,'Y'),(221,'Y'),(222,'Y'),(223,'Y'),(224,'Y'),(225,'Y'),(226,'Y'),(227,'Y'),(228,'Y'),(229,'Y'),(230,'Y'),(231,'Y'),(232,'Y'),(233,'Y'),(234,'Y'),(235,'Y'),(236,'Y'),(237,'Y'),(238,'Y'),(239,'Y'),(240,'Y'),(241,'Y'),(242,'Y'),(243,'Y'),(244,'Y'),(245,'Y'),(246,'Y'),(247,'Y'),(248,'Y'),(249,'Y'),(250,'Y'),(251,'Y'),(252,'Y'),(253,'Y'),(254,'Y'),(255,'Y'),(256,'Y'),(257,'Y'),(258,'Y'),(259,'Y'),(260,'Y'),(261,'Y'),(262,'Y'),(263,'Y'),(264,'Y'),(265,'Y'),(266,'Y'),(267,'Y'),(268,'Y'),(269,'Y'),(270,'Y'),(271,'Y'),(272,'Y'),(273,'Y'),(274,'Y'),(275,'Y'),(276,'Y'),(277,'Y'),(278,'Y'),(279,'Y'),(280,'Y'),(281,'Y'),(282,'Y'),(283,'Y'),(284,'Y'),(285,'Y'),(286,'Y'),(287,'Y'),(288,'Y'),(289,'Y'),(290,'Y'),(291,'Y'),(292,'Y'),(293,'Y'),(294,'Y'),(295,'Y'),(296,'Y'),(297,'Y'),(298,'Y'),(299,'Y'),(300,'Y'),(301,'Y'),(302,'Y'),(303,'Y'),(304,'Y'),(305,'Y'),(306,'Y'),(307,'Y'),(308,'Y'),(309,'Y'),(310,'Y'),(311,'Y'),(312,'Y'),(313,'Y'),(314,'Y'),(315,'Y'),(316,'Y'),(317,'Y'),(318,'Y'),(319,'Y'),(320,'Y'),(321,'Y'),(322,'Y'),(323,'Y'),(324,'Y'),(325,'Y'),(326,'Y'),(327,'Y'),(328,'Y'),(329,'Y'),(330,'Y'),(331,'Y'),(332,'Y'),(333,'Y'),(334,'Y'),(335,'Y'),(336,'Y'),(337,'Y'),(338,'Y'),(339,'Y'),(340,'Y'),(341,'Y'),(342,'Y'),(343,'Y'),(344,'Y'),(345,'Y'),(346,'Y'),(347,'Y'),(348,'Y'),(349,'Y'),(350,'Y'),(351,'Y'),(352,'Y'),(353,'Y'),(354,'Y'),(355,'Y'),(356,'Y'),(357,'Y'),(358,'Y'),(359,'Y'),(360,'Y'),(361,'Y'),(362,'Y'),(363,'Y'),(364,'Y'),(365,'Y'),(366,'Y'),(367,'Y'),(368,'Y'),(369,'Y'),(370,'Y'),(371,'Y'),(372,'Y'),(373,'Y'),(374,'Y'),(375,'Y'),(376,'Y'),(377,'Y'),(378,'Y'),(379,'Y'),(380,'Y'),(381,'Y'),(382,'Y'),(383,'Y'),(384,'Y'),(385,'Y'),(386,'Y'),(387,'Y'),(388,'Y'),(389,'Y'),(390,'Y'),(391,'Y'),(392,'Y'),(393,'Y'),(394,'Y'),(395,'Y'),(396,'Y'),(397,'Y'),(398,'Y'),(399,'Y'),(400,'Y'),(401,'Y'),(402,'Y'),(403,'Y'),(404,'Y'),(405,'Y'),(406,'Y'),(407,'Y'),(408,'Y'),(409,'Y'),(410,'Y'),(411,'Y'),(412,'Y'),(413,'Y'),(414,'Y'),(415,'Y'),(416,'Y'),(417,'Y'),(418,'Y'),(419,'Y'),(420,'Y'),(421,'Y'),(422,'Y'),(423,'Y'),(424,'Y'),(425,'Y'),(426,'Y'),(427,'Y'),(428,'Y'),(429,'Y'),(430,'Y'),(431,'Y'),(432,'Y'),(433,'Y'),(434,'Y'),(435,'Y'),(436,'Y'),(437,'Y'),(438,'Y'),(439,'Y'),(440,'Y'),(441,'Y'),(442,'Y'),(443,'Y'),(444,'Y'),(445,'Y'),(446,'Y'),(447,'Y'),(448,'Y'),(449,'Y'),(450,'Y'),(451,'Y'),(452,'Y'),(453,'Y'),(454,'Y'),(455,'Y'),(456,'Y'),(457,'Y'),(458,'Y'),(459,'Y'),(460,'Y'),(461,'Y'),(462,'Y'),(463,'Y'),(464,'Y'),(465,'Y'),(466,'Y'),(467,'Y'),(468,'Y'),(469,'Y'),(470,'Y'),(471,'Y'),(472,'Y'),(473,'Y'),(474,'Y'),(475,'Y'),(476,'Y'),(477,'Y'),(478,'Y'),(479,'Y'),(480,'Y'),(481,'Y'),(482,'Y'),(483,'Y'),(484,'Y'),(485,'Y'),(486,'Y'),(487,'Y'),(488,'Y'),(489,'Y'),(490,'Y'),(491,'Y'),(492,'Y'),(493,'Y'),(494,'Y'),(495,'Y'),(496,'Y'),(497,'Y'),(498,'Y'),(499,'Y'),(500,'Y'),(501,'Y'),(502,'Y'),(503,'Y'),(504,'Y'),(505,'Y'),(506,'Y'),(507,'Y'),(508,'Y'),(509,'Y'),(510,'Y'),(511,'Y'),(512,'Y'),(513,'Y'),(514,'Y'),(515,'Y'),(516,'Y'),(517,'Y'),(518,'Y'),(519,'Y'),(520,'Y'),(521,'Y'),(522,'Y'),(523,'Y'),(524,'Y'),(525,'Y'),(526,'Y'),(527,'Y'),(528,'Y'),(529,'Y'),(530,'Y'),(531,'Y'),(532,'Y'),(533,'Y'),(534,'Y'),(535,'Y'),(536,'Y'),(537,'Y'),(538,'Y'),(539,'Y'),(540,'Y'),(541,'Y'),(542,'Y'),(543,'Y'),(544,'Y'),(545,'Y'),(546,'Y');
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL DEFAULT '0',
  `Correction` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
INSERT INTO `time_zone_leap_second` VALUES (78796800,1),(94694401,2),(126230402,3),(157766403,4),(189302404,5),(220924805,6),(252460806,7),(283996807,8),(315532808,9),(362793609,10),(394329610,11),(425865611,12),(489024012,13),(567993613,14),(631152014,15),(662688015,16),(709948816,17),(741484817,18),(773020818,19),(820454419,20),(867715220,21),(915148821,22),(1136073622,23);
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL DEFAULT '',
  `Time_zone_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
INSERT INTO `time_zone_name` VALUES ('Africa/Abidjan',1),('Africa/Accra',2),('Africa/Addis_Ababa',3),('Africa/Algiers',4),('Africa/Asmera',5),('Africa/Bamako',6),('Africa/Bangui',7),('Africa/Banjul',8),('Africa/Bissau',9),('Africa/Blantyre',10),('Africa/Brazzaville',11),('Africa/Bujumbura',12),('Africa/Cairo',13),('Africa/Casablanca',14),('Africa/Ceuta',15),('Africa/Conakry',16),('Africa/Dakar',17),('Africa/Dar_es_Salaam',18),('Africa/Djibouti',19),('Africa/Douala',20),('Africa/El_Aaiun',21),('Africa/Freetown',22),('Africa/Gaborone',23),('Africa/Harare',24),('Africa/Johannesburg',25),('Africa/Kampala',26),('Africa/Khartoum',27),('Africa/Kigali',28),('Africa/Kinshasa',29),('Africa/Lagos',30),('Africa/Libreville',31),('Africa/Lome',32),('Africa/Luanda',33),('Africa/Lubumbashi',34),('Africa/Lusaka',35),('Africa/Malabo',36),('Africa/Maputo',37),('Africa/Maseru',38),('Africa/Mbabane',39),('Africa/Mogadishu',40),('Africa/Monrovia',41),('Africa/Nairobi',42),('Africa/Ndjamena',43),('Africa/Niamey',44),('Africa/Nouakchott',45),('Africa/Ouagadougou',46),('Africa/Porto-Novo',47),('Africa/Sao_Tome',48),('Africa/Timbuktu',49),('Africa/Tripoli',50),('Africa/Tunis',51),('Africa/Windhoek',52),('America/Adak',53),('America/Anchorage',54),('America/Anguilla',55),('America/Antigua',56),('America/Araguaina',57),('America/Argentina/Buenos_Aires',58),('America/Argentina/Catamarca',59),('America/Argentina/ComodRivadavia',60),('America/Argentina/Cordoba',61),('America/Argentina/Jujuy',62),('America/Argentina/La_Rioja',63),('America/Argentina/Mendoza',64),('America/Argentina/Rio_Gallegos',65),('America/Argentina/San_Juan',66),('America/Argentina/Tucuman',67),('America/Argentina/Ushuaia',68),('America/Aruba',69),('America/Asuncion',70),('America/Atikokan',71),('America/Atka',72),('America/Bahia',73),('America/Barbados',74),('America/Belem',75),('America/Belize',76),('America/Blanc-Sablon',77),('America/Boa_Vista',78),('America/Bogota',79),('America/Boise',80),('America/Buenos_Aires',81),('America/Cambridge_Bay',82),('America/Campo_Grande',83),('America/Cancun',84),('America/Caracas',85),('America/Catamarca',86),('America/Cayenne',87),('America/Cayman',88),('America/Chicago',89),('America/Chihuahua',90),('America/Coral_Harbour',91),('America/Cordoba',92),('America/Costa_Rica',93),('America/Cuiaba',94),('America/Curacao',95),('America/Danmarkshavn',96),('America/Dawson',97),('America/Dawson_Creek',98),('America/Denver',99),('America/Detroit',100),('America/Dominica',101),('America/Edmonton',102),('America/Eirunepe',103),('America/El_Salvador',104),('America/Ensenada',105),('America/Fort_Wayne',106),('America/Fortaleza',107),('America/Glace_Bay',108),('America/Godthab',109),('America/Goose_Bay',110),('America/Grand_Turk',111),('America/Grenada',112),('America/Guadeloupe',113),('America/Guatemala',114),('America/Guayaquil',115),('America/Guyana',116),('America/Halifax',117),('America/Havana',118),('America/Hermosillo',119),('America/Indiana/Indianapolis',120),('America/Indiana/Knox',121),('America/Indiana/Marengo',122),('America/Indiana/Petersburg',123),('America/Indiana/Vevay',124),('America/Indiana/Vincennes',125),('America/Indianapolis',126),('America/Inuvik',127),('America/Iqaluit',128),('America/Jamaica',129),('America/Jujuy',130),('America/Juneau',131),('America/Kentucky/Louisville',132),('America/Kentucky/Monticello',133),('America/Knox_IN',134),('America/La_Paz',135),('America/Lima',136),('America/Los_Angeles',137),('America/Louisville',138),('America/Maceio',139),('America/Managua',140),('America/Manaus',141),('America/Martinique',142),('America/Mazatlan',143),('America/Mendoza',144),('America/Menominee',145),('America/Merida',146),('America/Mexico_City',147),('America/Miquelon',148),('America/Moncton',149),('America/Monterrey',150),('America/Montevideo',151),('America/Montreal',152),('America/Montserrat',153),('America/Nassau',154),('America/New_York',155),('America/Nipigon',156),('America/Nome',157),('America/Noronha',158),('America/North_Dakota/Center',159),('America/North_Dakota/New_Salem',160),('America/Panama',161),('America/Pangnirtung',162),('America/Paramaribo',163),('America/Phoenix',164),('America/Port-au-Prince',165),('America/Port_of_Spain',166),('America/Porto_Acre',167),('America/Porto_Velho',168),('America/Puerto_Rico',169),('America/Rainy_River',170),('America/Rankin_Inlet',171),('America/Recife',172),('America/Regina',173),('America/Rio_Branco',174),('America/Rosario',175),('America/Santiago',176),('America/Santo_Domingo',177),('America/Sao_Paulo',178),('America/Scoresbysund',179),('America/Shiprock',180),('America/St_Johns',181),('America/St_Kitts',182),('America/St_Lucia',183),('America/St_Thomas',184),('America/St_Vincent',185),('America/Swift_Current',186),('America/Tegucigalpa',187),('America/Thule',188),('America/Thunder_Bay',189),('America/Tijuana',190),('America/Toronto',191),('America/Tortola',192),('America/Vancouver',193),('America/Virgin',194),('America/Whitehorse',195),('America/Winnipeg',196),('America/Yakutat',197),('America/Yellowknife',198),('Antarctica/Casey',199),('Antarctica/Davis',200),('Antarctica/DumontDUrville',201),('Antarctica/Mawson',202),('Antarctica/McMurdo',203),('Antarctica/Palmer',204),('Antarctica/Rothera',205),('Antarctica/South_Pole',206),('Antarctica/Syowa',207),('Antarctica/Vostok',208),('Arctic/Longyearbyen',209),('Asia/Aden',210),('Asia/Almaty',211),('Asia/Amman',212),('Asia/Anadyr',213),('Asia/Aqtau',214),('Asia/Aqtobe',215),('Asia/Ashgabat',216),('Asia/Ashkhabad',217),('Asia/Baghdad',218),('Asia/Bahrain',219),('Asia/Baku',220),('Asia/Bangkok',221),('Asia/Beirut',222),('Asia/Bishkek',223),('Asia/Brunei',224),('Asia/Calcutta',225),('Asia/Choibalsan',226),('Asia/Chongqing',227),('Asia/Chungking',228),('Asia/Colombo',229),('Asia/Dacca',230),('Asia/Damascus',231),('Asia/Dhaka',232),('Asia/Dili',233),('Asia/Dubai',234),('Asia/Dushanbe',235),('Asia/Gaza',236),('Asia/Harbin',237),('Asia/Hong_Kong',238),('Asia/Hovd',239),('Asia/Irkutsk',240),('Asia/Istanbul',241),('Asia/Jakarta',242),('Asia/Jayapura',243),('Asia/Jerusalem',244),('Asia/Kabul',245),('Asia/Kamchatka',246),('Asia/Karachi',247),('Asia/Kashgar',248),('Asia/Katmandu',249),('Asia/Krasnoyarsk',250),('Asia/Kuala_Lumpur',251),('Asia/Kuching',252),('Asia/Kuwait',253),('Asia/Macao',254),('Asia/Macau',255),('Asia/Magadan',256),('Asia/Makassar',257),('Asia/Manila',258),('Asia/Muscat',259),('Asia/Nicosia',260),('Asia/Novosibirsk',261),('Asia/Omsk',262),('Asia/Oral',263),('Asia/Phnom_Penh',264),('Asia/Pontianak',265),('Asia/Pyongyang',266),('Asia/Qatar',267),('Asia/Qyzylorda',268),('Asia/Rangoon',269),('Asia/Riyadh',270),('Asia/Saigon',271),('Asia/Sakhalin',272),('Asia/Samarkand',273),('Asia/Seoul',274),('Asia/Shanghai',275),('Asia/Singapore',276),('Asia/Taipei',277),('Asia/Tashkent',278),('Asia/Tbilisi',279),('Asia/Tehran',280),('Asia/Tel_Aviv',281),('Asia/Thimbu',282),('Asia/Thimphu',283),('Asia/Tokyo',284),('Asia/Ujung_Pandang',285),('Asia/Ulaanbaatar',286),('Asia/Ulan_Bator',287),('Asia/Urumqi',288),('Asia/Vientiane',289),('Asia/Vladivostok',290),('Asia/Yakutsk',291),('Asia/Yekaterinburg',292),('Asia/Yerevan',293),('Atlantic/Azores',294),('Atlantic/Bermuda',295),('Atlantic/Canary',296),('Atlantic/Cape_Verde',297),('Atlantic/Faeroe',298),('Atlantic/Jan_Mayen',299),('Atlantic/Madeira',300),('Atlantic/Reykjavik',301),('Atlantic/South_Georgia',302),('Atlantic/St_Helena',303),('Atlantic/Stanley',304),('Australia/ACT',305),('Australia/Adelaide',306),('Australia/Brisbane',307),('Australia/Broken_Hill',308),('Australia/Canberra',309),('Australia/Currie',310),('Australia/Darwin',311),('Australia/Hobart',312),('Australia/LHI',313),('Australia/Lindeman',314),('Australia/Lord_Howe',315),('Australia/Melbourne',316),('Australia/NSW',317),('Australia/North',318),('Australia/Perth',319),('Australia/Queensland',320),('Australia/South',321),('Australia/Sydney',322),('Australia/Tasmania',323),('Australia/Victoria',324),('Australia/West',325),('Australia/Yancowinna',326),('Brazil/Acre',327),('Brazil/DeNoronha',328),('Brazil/East',329),('Brazil/West',330),('CET',331),('CST6CDT',332),('Canada/Atlantic',333),('Canada/Central',334),('Canada/East-Saskatchewan',335),('Canada/Eastern',336),('Canada/Mountain',337),('Canada/Newfoundland',338),('Canada/Pacific',339),('Canada/Saskatchewan',340),('Canada/Yukon',341),('Chile/Continental',342),('Chile/EasterIsland',343),('Cuba',344),('EET',345),('EST',346),('EST5EDT',347),('Egypt',348),('Eire',349),('Etc/GMT',350),('Etc/GMT+0',351),('Etc/GMT+1',352),('Etc/GMT+10',353),('Etc/GMT+11',354),('Etc/GMT+12',355),('Etc/GMT+2',356),('Etc/GMT+3',357),('Etc/GMT+4',358),('Etc/GMT+5',359),('Etc/GMT+6',360),('Etc/GMT+7',361),('Etc/GMT+8',362),('Etc/GMT+9',363),('Etc/GMT-0',364),('Etc/GMT-1',365),('Etc/GMT-10',366),('Etc/GMT-11',367),('Etc/GMT-12',368),('Etc/GMT-13',369),('Etc/GMT-14',370),('Etc/GMT-2',371),('Etc/GMT-3',372),('Etc/GMT-4',373),('Etc/GMT-5',374),('Etc/GMT-6',375),('Etc/GMT-7',376),('Etc/GMT-8',377),('Etc/GMT-9',378),('Etc/GMT0',379),('Etc/Greenwich',380),('Etc/UCT',381),('Etc/UTC',382),('Etc/Universal',383),('Etc/Zulu',384),('Europe/Amsterdam',385),('Europe/Andorra',386),('Europe/Athens',387),('Europe/Belfast',388),('Europe/Belgrade',389),('Europe/Berlin',390),('Europe/Bratislava',391),('Europe/Brussels',392),('Europe/Bucharest',393),('Europe/Budapest',394),('Europe/Chisinau',395),('Europe/Copenhagen',396),('Europe/Dublin',397),('Europe/Gibraltar',398),('Europe/Guernsey',399),('Europe/Helsinki',400),('Europe/Isle_of_Man',401),('Europe/Istanbul',402),('Europe/Jersey',403),('Europe/Kaliningrad',404),('Europe/Kiev',405),('Europe/Lisbon',406),('Europe/Ljubljana',407),('Europe/London',408),('Europe/Luxembourg',409),('Europe/Madrid',410),('Europe/Malta',411),('Europe/Mariehamn',412),('Europe/Minsk',413),('Europe/Monaco',414),('Europe/Moscow',415),('Europe/Nicosia',416),('Europe/Oslo',417),('Europe/Paris',418),('Europe/Podgorica',419),('Europe/Prague',420),('Europe/Riga',421),('Europe/Rome',422),('Europe/Samara',423),('Europe/San_Marino',424),('Europe/Sarajevo',425),('Europe/Simferopol',426),('Europe/Skopje',427),('Europe/Sofia',428),('Europe/Stockholm',429),('Europe/Tallinn',430),('Europe/Tirane',431),('Europe/Tiraspol',432),('Europe/Uzhgorod',433),('Europe/Vaduz',434),('Europe/Vatican',435),('Europe/Vienna',436),('Europe/Vilnius',437),('Europe/Volgograd',438),('Europe/Warsaw',439),('Europe/Zagreb',440),('Europe/Zaporozhye',441),('Europe/Zurich',442),('Factory',443),('GB',444),('GB-Eire',445),('GMT',446),('GMT+0',447),('GMT-0',448),('GMT0',449),('Greenwich',450),('HST',451),('Hongkong',452),('Iceland',453),('Indian/Antananarivo',454),('Indian/Chagos',455),('Indian/Christmas',456),('Indian/Cocos',457),('Indian/Comoro',458),('Indian/Kerguelen',459),('Indian/Mahe',460),('Indian/Maldives',461),('Indian/Mauritius',462),('Indian/Mayotte',463),('Indian/Reunion',464),('Iran',465),('Israel',466),('Jamaica',467),('Japan',468),('Kwajalein',469),('Libya',470),('MET',471),('MST',472),('MST7MDT',473),('Mexico/BajaNorte',474),('Mexico/BajaSur',475),('Mexico/General',476),('NZ',477),('NZ-CHAT',478),('Navajo',479),('PRC',480),('PST8PDT',481),('Pacific/Apia',482),('Pacific/Auckland',483),('Pacific/Chatham',484),('Pacific/Easter',485),('Pacific/Efate',486),('Pacific/Enderbury',487),('Pacific/Fakaofo',488),('Pacific/Fiji',489),('Pacific/Funafuti',490),('Pacific/Galapagos',491),('Pacific/Gambier',492),('Pacific/Guadalcanal',493),('Pacific/Guam',494),('Pacific/Honolulu',495),('Pacific/Johnston',496),('Pacific/Kiritimati',497),('Pacific/Kosrae',498),('Pacific/Kwajalein',499),('Pacific/Majuro',500),('Pacific/Marquesas',501),('Pacific/Midway',502),('Pacific/Nauru',503),('Pacific/Niue',504),('Pacific/Norfolk',505),('Pacific/Noumea',506),('Pacific/Pago_Pago',507),('Pacific/Palau',508),('Pacific/Pitcairn',509),('Pacific/Ponape',510),('Pacific/Port_Moresby',511),('Pacific/Rarotonga',512),('Pacific/Saipan',513),('Pacific/Samoa',514),('Pacific/Tahiti',515),('Pacific/Tarawa',516),('Pacific/Tongatapu',517),('Pacific/Truk',518),('Pacific/Wake',519),('Pacific/Wallis',520),('Pacific/Yap',521),('Poland',522),('Portugal',523),('ROC',524),('ROK',525),('Singapore',526),('Turkey',527),('UCT',528),('US/Alaska',529),('US/Aleutian',530),('US/Arizona',531),('US/Central',532),('US/East-Indiana',533),('US/Eastern',534),('US/Hawaii',535),('US/Indiana-Starke',536),('US/Michigan',537),('US/Mountain',538),('US/Pacific',539),('US/Pacific-New',540),('US/Samoa',541),('UTC',542),('Universal',543),('W-SU',544),('WET',545),('Zulu',546);
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL DEFAULT '0',
  `Transition_time` bigint(20) NOT NULL DEFAULT '0',
  `Transition_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL DEFAULT '0',
  `Transition_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
INSERT INTO `time_zone_transition_type` VALUES (1,0,-968,0,'LMT'),(1,1,0,0,'GMT'),(2,0,-52,0,'LMT'),(2,1,1200,1,'GHST'),(2,2,0,0,'GMT'),(3,0,9320,0,'ADMT'),(3,1,10800,0,'EAT'),(4,0,561,0,'PMT'),(4,1,3600,1,'WEST'),(4,2,0,0,'WET'),(4,3,0,0,'WET'),(4,4,7200,1,'CEST'),(4,5,3600,0,'CET'),(4,6,3600,1,'WEST'),(5,0,9320,0,'ADMT'),(5,1,10800,0,'EAT'),(6,0,-1920,0,'LMT'),(6,1,0,0,'GMT'),(6,2,-3600,0,'WAT'),(7,0,4460,0,'LMT'),(7,1,3600,0,'WAT'),(8,0,-3996,0,'LMT'),(8,1,-3996,0,'BMT'),(8,2,-3600,0,'WAT'),(8,3,0,0,'GMT'),(9,0,-3740,0,'LMT'),(9,1,-3600,0,'WAT'),(9,2,0,0,'GMT'),(10,0,8400,0,'LMT'),(10,1,7200,0,'CAT'),(11,0,3668,0,'LMT'),(11,1,3600,0,'WAT'),(12,0,7200,0,'CAT'),(13,0,10800,1,'EEST'),(13,1,7200,0,'EET'),(13,2,10800,1,'EEST'),(13,3,7200,0,'EET'),(14,0,-1820,0,'LMT'),(14,1,3600,1,'WEST'),(14,2,0,0,'WET'),(14,3,3600,0,'CET'),(15,0,0,0,'WET'),(15,1,3600,1,'WEST'),(15,2,3600,1,'WEST'),(15,3,0,0,'WET'),(15,4,3600,0,'CET'),(15,5,7200,1,'CEST'),(15,6,3600,0,'CET'),(16,0,-3292,0,'LMT'),(16,1,0,0,'GMT'),(16,2,-3600,0,'WAT'),(17,0,-4184,0,'LMT'),(17,1,-3600,0,'WAT'),(17,2,0,0,'GMT'),(18,0,9428,0,'LMT'),(18,1,10800,0,'EAT'),(18,2,9885,0,'BEAUT'),(19,0,10356,0,'LMT'),(19,1,10800,0,'EAT'),(20,0,2328,0,'LMT'),(20,1,3600,0,'WAT'),(21,0,-3168,0,'LMT'),(21,1,-3600,0,'WAT'),(21,2,0,0,'WET'),(22,0,-3180,0,'FMT'),(22,1,-1200,1,'SLST'),(22,2,-3600,0,'WAT'),(22,3,3600,1,'SLST'),(22,4,0,0,'GMT'),(22,5,0,0,'WAT'),(23,0,7200,0,'CAT'),(23,1,10800,1,'CAST'),(24,0,7452,0,'LMT'),(24,1,7200,0,'CAT'),(25,0,5400,0,'SAST'),(25,1,10800,1,'SAST'),(25,2,7200,0,'SAST'),(26,0,7780,0,'LMT'),(26,1,10800,0,'EAT'),(26,2,9000,0,'BEAT'),(26,3,9885,0,'BEAUT'),(27,0,7808,0,'LMT'),(27,1,10800,1,'CAST'),(27,2,7200,0,'CAT'),(27,3,10800,0,'EAT'),(28,0,7216,0,'LMT'),(28,1,7200,0,'CAT'),(29,0,3600,0,'WAT'),(30,0,816,0,'LMT'),(30,1,3600,0,'WAT'),(31,0,2268,0,'LMT'),(31,1,3600,0,'WAT'),(32,0,0,0,'GMT'),(33,0,3124,0,'AOT'),(33,1,3600,0,'WAT'),(34,0,7200,0,'CAT'),(35,0,6788,0,'LMT'),(35,1,7200,0,'CAT'),(36,0,2108,0,'LMT'),(36,1,0,0,'GMT'),(36,2,3600,0,'WAT'),(37,0,7820,0,'LMT'),(37,1,7200,0,'CAT'),(38,0,6600,0,'LMT'),(38,1,7200,0,'SAST'),(38,2,10800,1,'SAST'),(39,0,7464,0,'LMT'),(39,1,7200,0,'SAST'),(40,0,10800,0,'EAT'),(40,1,9000,0,'BEAT'),(41,0,-2588,0,'MMT'),(41,1,-2670,0,'LRT'),(41,2,0,0,'GMT'),(42,0,8836,0,'LMT'),(42,1,10800,0,'EAT'),(42,2,9000,0,'BEAT'),(42,3,9885,0,'BEAUT'),(43,0,3612,0,'LMT'),(43,1,3600,0,'WAT'),(43,2,7200,1,'WAST'),(44,0,508,0,'LMT'),(44,1,-3600,0,'WAT'),(44,2,0,0,'GMT'),(44,3,3600,0,'WAT'),(45,0,-3828,0,'LMT'),(45,1,0,0,'GMT'),(45,2,-3600,0,'WAT'),(46,0,-364,0,'LMT'),(46,1,0,0,'GMT'),(47,0,628,0,'LMT'),(47,1,0,0,'GMT'),(47,2,3600,0,'WAT'),(48,0,-2192,0,'LMT'),(48,1,0,0,'GMT'),(49,0,-1920,0,'LMT'),(49,1,0,0,'GMT'),(49,2,-3600,0,'WAT'),(50,0,3164,0,'LMT'),(50,1,7200,1,'CEST'),(50,2,3600,0,'CET'),(50,3,7200,0,'EET'),(51,0,561,0,'PMT'),(51,1,7200,1,'CEST'),(51,2,3600,0,'CET'),(51,3,3600,0,'CET'),(51,4,7200,1,'CEST'),(52,0,5400,0,'SWAT'),(52,1,7200,0,'SAST'),(52,2,10800,1,'SAST'),(52,3,7200,0,'CAT'),(52,4,7200,1,'WAST'),(52,5,3600,0,'WAT'),(53,0,-39600,0,'NST'),(53,1,-36000,1,'NWT'),(53,2,-36000,1,'NPT'),(53,3,-39600,0,'BST'),(53,4,-36000,1,'BDT'),(53,5,-36000,0,'AHST'),(53,6,-32400,1,'HADT'),(53,7,-36000,0,'HAST'),(54,0,-36000,0,'CAT'),(54,1,-32400,1,'CAWT'),(54,2,-32400,1,'CAPT'),(54,3,-36000,0,'AHST'),(54,4,-32400,1,'AHDT'),(54,5,-32400,0,'YST'),(54,6,-28800,1,'AKDT'),(54,7,-32400,0,'AKST'),(55,0,-15136,0,'LMT'),(55,1,-14400,0,'AST'),(56,0,-14832,0,'LMT'),(56,1,-18000,0,'EST'),(56,2,-14400,0,'AST'),(57,0,-11568,0,'LMT'),(57,1,-7200,1,'BRST'),(57,2,-10800,0,'BRT'),(58,0,-15408,0,'CMT'),(58,1,-14400,0,'ART'),(58,2,-10800,1,'ARST'),(58,3,-7200,1,'ARST'),(58,4,-10800,0,'ART'),(59,0,-15408,0,'CMT'),(59,1,-14400,0,'ART'),(59,2,-10800,1,'ARST'),(59,3,-7200,1,'ARST'),(59,4,-10800,0,'ART'),(59,5,-14400,0,'WART'),(60,0,-15408,0,'CMT'),(60,1,-14400,0,'ART'),(60,2,-10800,1,'ARST'),(60,3,-7200,1,'ARST'),(60,4,-10800,0,'ART'),(60,5,-14400,0,'WART'),(61,0,-15408,0,'CMT'),(61,1,-14400,0,'ART'),(61,2,-10800,1,'ARST'),(61,3,-7200,1,'ARST'),(61,4,-10800,0,'ART'),(61,5,-14400,0,'WART'),(62,0,-15408,0,'CMT'),(62,1,-14400,0,'ART'),(62,2,-10800,1,'ARST'),(62,3,-7200,1,'ARST'),(62,4,-10800,0,'ART'),(62,5,-14400,0,'WART'),(62,6,-10800,1,'WARST'),(63,0,-15408,0,'CMT'),(63,1,-14400,0,'ART'),(63,2,-10800,1,'ARST'),(63,3,-7200,1,'ARST'),(63,4,-10800,0,'ART'),(63,5,-14400,0,'WART'),(64,0,-15408,0,'CMT'),(64,1,-14400,0,'ART'),(64,2,-10800,1,'ARST'),(64,3,-7200,1,'ARST'),(64,4,-10800,0,'ART'),(64,5,-14400,0,'WART'),(64,6,-10800,1,'WARST'),(65,0,-15408,0,'CMT'),(65,1,-14400,0,'ART'),(65,2,-10800,1,'ARST'),(65,3,-7200,1,'ARST'),(65,4,-10800,0,'ART'),(65,5,-14400,0,'WART'),(66,0,-15408,0,'CMT'),(66,1,-14400,0,'ART'),(66,2,-10800,1,'ARST'),(66,3,-7200,1,'ARST'),(66,4,-10800,0,'ART'),(66,5,-14400,0,'WART'),(67,0,-15408,0,'CMT'),(67,1,-14400,0,'ART'),(67,2,-10800,1,'ARST'),(67,3,-7200,1,'ARST'),(67,4,-10800,0,'ART'),(67,5,-14400,0,'WART'),(68,0,-15408,0,'CMT'),(68,1,-14400,0,'ART'),(68,2,-10800,1,'ARST'),(68,3,-7200,1,'ARST'),(68,4,-10800,0,'ART'),(68,5,-14400,0,'WART'),(69,0,-16824,0,'LMT'),(69,1,-16200,0,'ANT'),(69,2,-14400,0,'AST'),(70,0,-13840,0,'AMT'),(70,1,-14400,0,'PYT'),(70,2,-10800,0,'PYT'),(70,3,-10800,1,'PYST'),(71,0,-18000,1,'CDT'),(71,1,-21600,0,'CST'),(71,2,-18000,1,'CWT'),(71,3,-18000,1,'CPT'),(71,4,-18000,0,'EST'),(72,0,-39600,0,'NST'),(72,1,-36000,1,'NWT'),(72,2,-36000,1,'NPT'),(72,3,-39600,0,'BST'),(72,4,-36000,1,'BDT'),(72,5,-36000,0,'AHST'),(72,6,-32400,1,'HADT'),(72,7,-36000,0,'HAST'),(73,0,-9244,0,'LMT'),(73,1,-7200,1,'BRST'),(73,2,-10800,0,'BRT'),(74,0,-14308,0,'LMT'),(74,1,-14308,0,'BMT'),(74,2,-10800,1,'ADT'),(74,3,-14400,0,'AST'),(75,0,-11636,0,'LMT'),(75,1,-7200,1,'BRST'),(75,2,-10800,0,'BRT'),(76,0,-21168,0,'LMT'),(76,1,-19800,1,'CHDT'),(76,2,-21600,0,'CST'),(76,3,-18000,1,'CDT'),(77,0,-10800,1,'ADT'),(77,1,-14400,0,'AST'),(77,2,-10800,1,'AWT'),(77,3,-10800,1,'APT'),(78,0,-14560,0,'LMT'),(78,1,-10800,1,'AMST'),(78,2,-14400,0,'AMT'),(79,0,-17780,0,'BMT'),(79,1,-14400,1,'COST'),(79,2,-18000,0,'COT'),(80,0,-25200,1,'PDT'),(80,1,-28800,0,'PST'),(80,2,-21600,1,'MWT'),(80,3,-21600,1,'MPT'),(80,4,-25200,0,'MST'),(80,5,-21600,1,'MDT'),(81,0,-15408,0,'CMT'),(81,1,-14400,0,'ART'),(81,2,-10800,1,'ARST'),(81,3,-7200,1,'ARST'),(81,4,-10800,0,'ART'),(82,0,-21600,1,'MDT'),(82,1,-25200,0,'MST'),(82,2,-21600,1,'MWT'),(82,3,-21600,1,'MPT'),(82,4,-18000,1,'MDDT'),(82,5,-18000,1,'CDT'),(82,6,-21600,0,'CST'),(82,7,-18000,0,'EST'),(83,0,-13108,0,'LMT'),(83,1,-10800,1,'AMST'),(83,2,-14400,0,'AMT'),(84,0,-20824,0,'LMT'),(84,1,-21600,0,'CST'),(84,2,-14400,1,'EDT'),(84,3,-18000,0,'EST'),(84,4,-18000,1,'CDT'),(85,0,-16060,0,'CMT'),(85,1,-16200,0,'VET'),(85,2,-14400,0,'VET'),(86,0,-15408,0,'CMT'),(86,1,-14400,0,'ART'),(86,2,-10800,1,'ARST'),(86,3,-7200,1,'ARST'),(86,4,-10800,0,'ART'),(86,5,-14400,0,'WART'),(87,0,-12560,0,'LMT'),(87,1,-14400,0,'GFT'),(87,2,-10800,0,'GFT'),(88,0,-18432,0,'KMT'),(88,1,-18000,0,'EST'),(89,0,-18000,1,'CDT'),(89,1,-21600,0,'CST'),(89,2,-18000,0,'EST'),(89,3,-18000,1,'CWT'),(89,4,-18000,1,'CPT'),(90,0,-25460,0,'LMT'),(90,1,-25200,0,'MST'),(90,2,-21600,0,'CST'),(90,3,-18000,1,'CDT'),(90,4,-21600,1,'MDT'),(91,0,-18000,1,'CDT'),(91,1,-21600,0,'CST'),(91,2,-18000,1,'CWT'),(91,3,-18000,1,'CPT'),(91,4,-18000,0,'EST'),(92,0,-15408,0,'CMT'),(92,1,-14400,0,'ART'),(92,2,-10800,1,'ARST'),(92,3,-7200,1,'ARST'),(92,4,-10800,0,'ART'),(92,5,-14400,0,'WART'),(93,0,-20180,0,'SJMT'),(93,1,-18000,1,'CDT'),(93,2,-21600,0,'CST'),(94,0,-13460,0,'LMT'),(94,1,-10800,1,'AMST'),(94,2,-14400,0,'AMT'),(95,0,-16544,0,'LMT'),(95,1,-16200,0,'ANT'),(95,2,-14400,0,'AST'),(96,0,-4480,0,'LMT'),(96,1,-10800,0,'WGT'),(96,2,-10800,0,'WGT'),(96,3,-7200,1,'WGST'),(96,4,-7200,1,'WGST'),(96,5,0,0,'GMT'),(97,0,-28800,1,'YDT'),(97,1,-32400,0,'YST'),(97,2,-28800,1,'YWT'),(97,3,-28800,1,'YPT'),(97,4,-25200,1,'YDDT'),(97,5,-28800,0,'PST'),(97,6,-25200,1,'PDT'),(98,0,-25200,1,'PDT'),(98,1,-28800,0,'PST'),(98,2,-25200,1,'PWT'),(98,3,-25200,1,'PPT'),(98,4,-25200,0,'MST'),(99,0,-21600,1,'MDT'),(99,1,-25200,0,'MST'),(99,2,-21600,1,'MWT'),(99,3,-21600,1,'MPT'),(100,0,-19931,0,'LMT'),(100,1,-21600,0,'CST'),(100,2,-18000,0,'EST'),(100,3,-14400,1,'EWT'),(100,4,-14400,1,'EPT'),(100,5,-14400,1,'EDT'),(101,0,-14736,0,'LMT'),(101,1,-14400,0,'AST'),(102,0,-27232,0,'LMT'),(102,1,-21600,1,'MDT'),(102,2,-25200,0,'MST'),(102,3,-21600,1,'MWT'),(102,4,-21600,1,'MPT'),(103,0,-16768,0,'LMT'),(103,1,-14400,1,'ACST'),(103,2,-18000,0,'ACT'),(104,0,-21408,0,'LMT'),(104,1,-18000,1,'CDT'),(104,2,-21600,0,'CST'),(105,0,-28084,0,'LMT'),(105,1,-25200,0,'MST'),(105,2,-28800,0,'PST'),(105,3,-25200,1,'PDT'),(105,4,-25200,1,'PWT'),(105,5,-25200,1,'PPT'),(106,0,-18000,1,'CDT'),(106,1,-21600,0,'CST'),(106,2,-18000,1,'CWT'),(106,3,-18000,1,'CPT'),(106,4,-18000,0,'EST'),(106,5,-14400,1,'EDT'),(107,0,-9240,0,'LMT'),(107,1,-7200,1,'BRST'),(107,2,-10800,0,'BRT'),(108,0,-14388,0,'LMT'),(108,1,-10800,1,'ADT'),(108,2,-14400,0,'AST'),(108,3,-10800,1,'AWT'),(108,4,-10800,1,'APT'),(109,0,-12416,0,'LMT'),(109,1,-10800,0,'WGT'),(109,2,-10800,0,'WGT'),(109,3,-7200,1,'WGST'),(109,4,-7200,1,'WGST'),(110,0,-12652,0,'NST'),(110,1,-9052,1,'NDT'),(110,2,-12600,0,'NST'),(110,3,-9000,1,'NDT'),(110,4,-9000,1,'NPT'),(110,5,-9000,1,'NWT'),(110,6,-10800,1,'ADT'),(110,7,-14400,0,'AST'),(110,8,-7200,1,'ADDT'),(111,0,-18432,0,'KMT'),(111,1,-14400,1,'EDT'),(111,2,-18000,0,'EST'),(112,0,-14820,0,'LMT'),(112,1,-14400,0,'AST'),(113,0,-14768,0,'LMT'),(113,1,-14400,0,'AST'),(114,0,-21724,0,'LMT'),(114,1,-18000,1,'CDT'),(114,2,-21600,0,'CST'),(115,0,-18840,0,'QMT'),(115,1,-18000,0,'ECT'),(116,0,-13960,0,'LMT'),(116,1,-13500,0,'GBGT'),(116,2,-13500,0,'GYT'),(116,3,-10800,0,'GYT'),(116,4,-14400,0,'GYT'),(117,0,-15264,0,'LMT'),(117,1,-10800,1,'ADT'),(117,2,-14400,0,'AST'),(117,3,-10800,1,'AWT'),(117,4,-10800,1,'APT'),(118,0,-19776,0,'HMT'),(118,1,-14400,1,'CDT'),(118,2,-18000,0,'CST'),(118,3,-18000,0,'CST'),(118,4,-14400,1,'CDT'),(119,0,-26632,0,'LMT'),(119,1,-25200,0,'MST'),(119,2,-21600,0,'CST'),(119,3,-28800,0,'PST'),(119,4,-21600,1,'MDT'),(120,0,-18000,1,'CDT'),(120,1,-21600,0,'CST'),(120,2,-18000,1,'CWT'),(120,3,-18000,1,'CPT'),(120,4,-18000,0,'EST'),(120,5,-14400,1,'EDT'),(121,0,-18000,1,'CDT'),(121,1,-21600,0,'CST'),(121,2,-18000,1,'CWT'),(121,3,-18000,1,'CPT'),(121,4,-18000,0,'EST'),(122,0,-18000,1,'CDT'),(122,1,-21600,0,'CST'),(122,2,-18000,1,'CWT'),(122,3,-18000,1,'CPT'),(122,4,-18000,0,'EST'),(122,5,-14400,1,'EDT'),(123,0,-18000,1,'CDT'),(123,1,-21600,0,'CST'),(123,2,-18000,1,'CWT'),(123,3,-18000,1,'CPT'),(123,4,-18000,0,'EST'),(124,0,-18000,1,'CDT'),(124,1,-21600,0,'CST'),(124,2,-18000,1,'CWT'),(124,3,-18000,1,'CPT'),(124,4,-18000,0,'EST'),(124,5,-14400,1,'EDT'),(125,0,-18000,1,'CDT'),(125,1,-21600,0,'CST'),(125,2,-18000,1,'CWT'),(125,3,-18000,1,'CPT'),(125,4,-18000,0,'EST'),(125,5,-14400,1,'EDT'),(126,0,-18000,1,'CDT'),(126,1,-21600,0,'CST'),(126,2,-18000,1,'CWT'),(126,3,-18000,1,'CPT'),(126,4,-18000,0,'EST'),(126,5,-14400,1,'EDT'),(127,0,-25200,1,'PDT'),(127,1,-28800,0,'PST'),(127,2,-25200,1,'PWT'),(127,3,-25200,1,'PPT'),(127,4,-21600,1,'PDDT'),(127,5,-25200,0,'MST'),(127,6,-21600,1,'MDT'),(128,0,-14400,1,'EDT'),(128,1,-18000,0,'EST'),(128,2,-14400,1,'EWT'),(128,3,-14400,1,'EPT'),(128,4,-10800,1,'EDDT'),(128,5,-21600,0,'CST'),(128,6,-18000,1,'CDT'),(129,0,-18432,0,'KMT'),(129,1,-18000,0,'EST'),(129,2,-14400,1,'EDT'),(130,0,-15408,0,'CMT'),(130,1,-14400,0,'ART'),(130,2,-10800,1,'ARST'),(130,3,-7200,1,'ARST'),(130,4,-10800,0,'ART'),(130,5,-14400,0,'WART'),(130,6,-10800,1,'WARST'),(131,0,-28800,0,'PST'),(131,1,-25200,1,'PWT'),(131,2,-25200,1,'PPT'),(131,3,-25200,1,'PDT'),(131,4,-32400,0,'YST'),(131,5,-28800,1,'AKDT'),(131,6,-32400,0,'AKST'),(132,0,-18000,1,'CDT'),(132,1,-21600,0,'CST'),(132,2,-18000,1,'CWT'),(132,3,-18000,1,'CPT'),(132,4,-18000,0,'EST'),(132,5,-14400,1,'EDT'),(133,0,-18000,1,'CDT'),(133,1,-21600,0,'CST'),(133,2,-18000,1,'CWT'),(133,3,-18000,1,'CPT'),(133,4,-14400,1,'EDT'),(133,5,-18000,0,'EST'),(134,0,-18000,1,'CDT'),(134,1,-21600,0,'CST'),(134,2,-18000,1,'CWT'),(134,3,-18000,1,'CPT'),(134,4,-18000,0,'EST'),(135,0,-16356,0,'CMT'),(135,1,-12756,1,'BOST'),(135,2,-14400,0,'BOT'),(136,0,-18516,0,'LMT'),(136,1,-14400,1,'PEST'),(136,2,-18000,0,'PET'),(137,0,-25200,1,'PDT'),(137,1,-28800,0,'PST'),(137,2,-25200,1,'PWT'),(137,3,-25200,1,'PPT'),(138,0,-18000,1,'CDT'),(138,1,-21600,0,'CST'),(138,2,-18000,1,'CWT'),(138,3,-18000,1,'CPT'),(138,4,-18000,0,'EST'),(138,5,-14400,1,'EDT'),(139,0,-8572,0,'LMT'),(139,1,-7200,1,'BRST'),(139,2,-10800,0,'BRT'),(140,0,-20712,0,'MMT'),(140,1,-21600,0,'CST'),(140,2,-18000,0,'EST'),(140,3,-18000,1,'CDT'),(141,0,-14404,0,'LMT'),(141,1,-10800,1,'AMST'),(141,2,-14400,0,'AMT'),(142,0,-14660,0,'FFMT'),(142,1,-14400,0,'AST'),(142,2,-10800,1,'ADT'),(143,0,-25540,0,'LMT'),(143,1,-25200,0,'MST'),(143,2,-21600,0,'CST'),(143,3,-28800,0,'PST'),(143,4,-21600,1,'MDT'),(144,0,-15408,0,'CMT'),(144,1,-14400,0,'ART'),(144,2,-10800,1,'ARST'),(144,3,-7200,1,'ARST'),(144,4,-10800,0,'ART'),(144,5,-14400,0,'WART'),(144,6,-10800,1,'WARST'),(145,0,-18000,1,'CDT'),(145,1,-21600,0,'CST'),(145,2,-18000,1,'CWT'),(145,3,-18000,1,'CPT'),(145,4,-18000,0,'EST'),(146,0,-21508,0,'LMT'),(146,1,-21600,0,'CST'),(146,2,-18000,0,'EST'),(146,3,-18000,1,'CDT'),(147,0,-23796,0,'LMT'),(147,1,-25200,0,'MST'),(147,2,-21600,0,'CST'),(147,3,-18000,1,'CDT'),(147,4,-18000,1,'CWT'),(148,0,-13480,0,'LMT'),(148,1,-14400,0,'AST'),(148,2,-10800,0,'PMST'),(148,3,-7200,1,'PMDT'),(149,0,-18000,0,'EST'),(149,1,-10800,1,'ADT'),(149,2,-14400,0,'AST'),(149,3,-10800,1,'AWT'),(149,4,-10800,1,'APT'),(150,0,-24076,0,'LMT'),(150,1,-21600,0,'CST'),(150,2,-18000,1,'CDT'),(151,0,-13484,0,'MMT'),(151,1,-10800,1,'UYHST'),(151,2,-12600,0,'UYT'),(151,3,-12600,0,'UYT'),(151,4,-10800,0,'UYT'),(151,5,-7200,1,'UYST'),(151,6,-9000,1,'UYHST'),(152,0,-14400,1,'EDT'),(152,1,-18000,0,'EST'),(152,2,-14400,1,'EWT'),(152,3,-14400,1,'EPT'),(153,0,-14932,0,'LMT'),(153,1,-14400,0,'AST'),(154,0,-18564,0,'LMT'),(154,1,-14400,1,'EDT'),(154,2,-18000,0,'EST'),(155,0,-14400,1,'EDT'),(155,1,-18000,0,'EST'),(155,2,-14400,1,'EWT'),(155,3,-14400,1,'EPT'),(156,0,-14400,1,'EDT'),(156,1,-18000,0,'EST'),(156,2,-14400,1,'EWT'),(156,3,-14400,1,'EPT'),(157,0,-39600,0,'NST'),(157,1,-36000,1,'NWT'),(157,2,-36000,1,'NPT'),(157,3,-39600,0,'BST'),(157,4,-36000,1,'BDT'),(157,5,-32400,0,'YST'),(157,6,-28800,1,'AKDT'),(157,7,-32400,0,'AKST'),(158,0,-7780,0,'LMT'),(158,1,-3600,1,'FNST'),(158,2,-7200,0,'FNT'),(159,0,-21600,1,'MDT'),(159,1,-25200,0,'MST'),(159,2,-21600,1,'MWT'),(159,3,-21600,1,'MPT'),(159,4,-18000,1,'CDT'),(159,5,-21600,0,'CST'),(160,0,-21600,1,'MDT'),(160,1,-25200,0,'MST'),(160,2,-21600,1,'MWT'),(160,3,-21600,1,'MPT'),(160,4,-18000,1,'CDT'),(160,5,-21600,0,'CST'),(161,0,-19176,0,'CMT'),(161,1,-18000,0,'EST'),(162,0,-10800,1,'ADT'),(162,1,-14400,0,'AST'),(162,2,-10800,1,'AWT'),(162,3,-10800,1,'APT'),(162,4,-7200,1,'ADDT'),(162,5,-14400,1,'EDT'),(162,6,-18000,0,'EST'),(162,7,-21600,0,'CST'),(162,8,-18000,1,'CDT'),(163,0,-13240,0,'LMT'),(163,1,-13252,0,'PMT'),(163,2,-13236,0,'PMT'),(163,3,-12600,0,'NEGT'),(163,4,-12600,0,'SRT'),(163,5,-10800,0,'SRT'),(164,0,-21600,1,'MDT'),(164,1,-25200,0,'MST'),(164,2,-21600,1,'MWT'),(165,0,-17340,0,'PPMT'),(165,1,-14400,1,'EDT'),(165,2,-18000,0,'EST'),(165,3,-14400,1,'EDT'),(165,4,-18000,0,'EST'),(166,0,-14764,0,'LMT'),(166,1,-14400,0,'AST'),(167,0,-16272,0,'LMT'),(167,1,-14400,1,'ACST'),(167,2,-18000,0,'ACT'),(168,0,-15336,0,'LMT'),(168,1,-10800,1,'AMST'),(168,2,-14400,0,'AMT'),(169,0,-14400,0,'AST'),(169,1,-10800,1,'APT'),(169,2,-10800,1,'AWT'),(170,0,-18000,1,'CDT'),(170,1,-21600,0,'CST'),(170,2,-18000,1,'CWT'),(170,3,-18000,1,'CPT'),(171,0,-18000,1,'CDT'),(171,1,-21600,0,'CST'),(171,2,-18000,1,'CWT'),(171,3,-18000,1,'CPT'),(171,4,-14400,1,'CDDT'),(171,5,-18000,0,'EST'),(172,0,-8376,0,'LMT'),(172,1,-7200,1,'BRST'),(172,2,-10800,0,'BRT'),(173,0,-25116,0,'LMT'),(173,1,-21600,1,'MDT'),(173,2,-25200,0,'MST'),(173,3,-21600,1,'MWT'),(173,4,-21600,1,'MPT'),(173,5,-21600,0,'CST'),(174,0,-16272,0,'LMT'),(174,1,-14400,1,'ACST'),(174,2,-18000,0,'ACT'),(175,0,-15408,0,'CMT'),(175,1,-14400,0,'ART'),(175,2,-10800,1,'ARST'),(175,3,-7200,1,'ARST'),(175,4,-10800,0,'ART'),(175,5,-14400,0,'WART'),(176,0,-16966,0,'SMT'),(176,1,-18000,0,'CLT'),(176,2,-14400,0,'CLT'),(176,3,-14400,1,'CLST'),(176,4,-18000,0,'CLT'),(176,5,-14400,1,'CLST'),(176,6,-10800,1,'CLST'),(176,7,-14400,0,'CLT'),(177,0,-16800,0,'SDMT'),(177,1,-14400,1,'EDT'),(177,2,-18000,0,'EST'),(177,3,-16200,1,'EHDT'),(177,4,-14400,0,'AST'),(178,0,-11188,0,'LMT'),(178,1,-7200,1,'BRST'),(178,2,-10800,0,'BRT'),(179,0,-5272,0,'LMT'),(179,1,-7200,0,'CGT'),(179,2,-3600,1,'CGST'),(179,3,-7200,0,'CGT'),(179,4,-3600,0,'EGT'),(179,5,0,1,'EGST'),(179,6,0,1,'EGST'),(180,0,-21600,1,'MDT'),(180,1,-25200,0,'MST'),(180,2,-21600,1,'MWT'),(180,3,-21600,1,'MPT'),(181,0,-9052,1,'NDT'),(181,1,-12652,0,'NST'),(181,2,-9000,1,'NDT'),(181,3,-12600,0,'NST'),(181,4,-9000,1,'NPT'),(181,5,-9000,1,'NWT'),(181,6,-5400,1,'NDDT'),(182,0,-15052,0,'LMT'),(182,1,-14400,0,'AST'),(183,0,-14640,0,'CMT'),(183,1,-14400,0,'AST'),(184,0,-15584,0,'LMT'),(184,1,-14400,0,'AST'),(185,0,-14696,0,'KMT'),(185,1,-14400,0,'AST'),(186,0,-25880,0,'LMT'),(186,1,-21600,1,'MDT'),(186,2,-25200,0,'MST'),(186,3,-21600,1,'MWT'),(186,4,-21600,1,'MPT'),(186,5,-21600,0,'CST'),(187,0,-20932,0,'LMT'),(187,1,-18000,1,'CDT'),(187,2,-21600,0,'CST'),(188,0,-16508,0,'LMT'),(188,1,-10800,1,'ADT'),(188,2,-14400,0,'AST'),(189,0,-21600,0,'CST'),(189,1,-18000,0,'EST'),(189,2,-14400,1,'EWT'),(189,3,-14400,1,'EPT'),(189,4,-14400,1,'EDT'),(190,0,-28084,0,'LMT'),(190,1,-25200,0,'MST'),(190,2,-28800,0,'PST'),(190,3,-25200,1,'PDT'),(190,4,-25200,1,'PWT'),(190,5,-25200,1,'PPT'),(191,0,-14400,1,'EDT'),(191,1,-18000,0,'EST'),(191,2,-14400,1,'EWT'),(191,3,-14400,1,'EPT'),(192,0,-15508,0,'LMT'),(192,1,-14400,0,'AST'),(193,0,-25200,1,'PDT'),(193,1,-28800,0,'PST'),(193,2,-25200,1,'PWT'),(193,3,-25200,1,'PPT'),(194,0,-15584,0,'LMT'),(194,1,-14400,0,'AST'),(195,0,-28800,1,'YDT'),(195,1,-32400,0,'YST'),(195,2,-28800,1,'YWT'),(195,3,-28800,1,'YPT'),(195,4,-25200,1,'YDDT'),(195,5,-28800,0,'PST'),(195,6,-25200,1,'PDT'),(196,0,-18000,1,'CDT'),(196,1,-21600,0,'CST'),(196,2,-18000,1,'CWT'),(196,3,-18000,1,'CPT'),(196,4,-18000,1,'CDT'),(196,5,-21600,0,'CST'),(197,0,-32400,0,'YST'),(197,1,-28800,1,'YWT'),(197,2,-28800,1,'YPT'),(197,3,-28800,1,'YDT'),(197,4,-28800,1,'AKDT'),(197,5,-32400,0,'AKST'),(198,0,-21600,1,'MDT'),(198,1,-25200,0,'MST'),(198,2,-21600,1,'MWT'),(198,3,-21600,1,'MPT'),(198,4,-18000,1,'MDDT'),(199,0,0,0,'zzz'),(199,1,28800,0,'WST'),(200,0,0,0,'zzz'),(200,1,25200,0,'DAVT'),(201,0,0,0,'zzz'),(201,1,36000,0,'PMT'),(201,2,36000,0,'DDUT'),(202,0,0,0,'zzz'),(202,1,21600,0,'MAWT'),(203,0,0,0,'zzz'),(203,1,46800,1,'NZDT'),(203,2,43200,0,'NZST'),(203,3,43200,0,'NZST'),(204,0,0,0,'zzz'),(204,1,-14400,0,'ART'),(204,2,-10800,1,'ARST'),(204,3,-7200,1,'ARST'),(204,4,-10800,0,'ART'),(204,5,-10800,1,'CLST'),(204,6,-14400,0,'CLT'),(204,7,-14400,0,'CLT'),(205,0,0,0,'zzz'),(205,1,-10800,0,'ROTT'),(206,0,0,0,'zzz'),(206,1,46800,1,'NZDT'),(206,2,43200,0,'NZST'),(206,3,43200,0,'NZST'),(207,0,0,0,'zzz'),(207,1,10800,0,'SYOT'),(208,0,0,0,'zzz'),(208,1,21600,0,'VOST'),(209,0,7200,1,'CEST'),(209,1,3600,0,'CET'),(209,2,3600,0,'CET'),(209,3,7200,1,'CEST'),(209,4,7200,1,'CEST'),(209,5,3600,0,'CET'),(210,0,10848,0,'LMT'),(210,1,10800,0,'AST'),(211,0,18468,0,'LMT'),(211,1,18000,0,'ALMT'),(211,2,25200,1,'ALMST'),(211,3,21600,0,'ALMT'),(211,4,21600,0,'ALMT'),(211,5,25200,1,'ALMST'),(212,0,8624,0,'LMT'),(212,1,10800,1,'EEST'),(212,2,7200,0,'EET'),(212,3,7200,0,'EET'),(212,4,10800,1,'EEST'),(213,0,42596,0,'LMT'),(213,1,43200,0,'ANAT'),(213,2,50400,1,'ANAST'),(213,3,46800,0,'ANAT'),(213,4,46800,1,'ANAST'),(213,5,43200,0,'ANAT'),(213,6,46800,1,'ANAST'),(213,7,43200,1,'ANAST'),(213,8,39600,0,'ANAT'),(214,0,12064,0,'LMT'),(214,1,14400,0,'FORT'),(214,2,18000,0,'FORT'),(214,3,18000,0,'SHET'),(214,4,21600,0,'SHET'),(214,5,21600,1,'SHEST'),(214,6,18000,0,'SHET'),(214,7,21600,1,'SHEST'),(214,8,21600,1,'AQTST'),(214,9,18000,0,'AQTT'),(214,10,21600,1,'AQTST'),(214,11,18000,0,'AQTT'),(214,12,18000,1,'AQTST'),(214,13,14400,0,'AQTT'),(214,14,14400,0,'AQTT'),(215,0,13720,0,'LMT'),(215,1,14400,0,'AKTT'),(215,2,18000,0,'AKTT'),(215,3,21600,1,'AKTST'),(215,4,21600,0,'AKTT'),(215,5,18000,0,'AKTT'),(215,6,21600,1,'AKTST'),(215,7,21600,1,'AQTST'),(215,8,18000,0,'AQTT'),(215,9,21600,1,'AQTST'),(215,10,18000,0,'AQTT'),(216,0,14012,0,'LMT'),(216,1,14400,0,'ASHT'),(216,2,21600,1,'ASHST'),(216,3,18000,0,'ASHT'),(216,4,18000,0,'ASHT'),(216,5,21600,1,'ASHST'),(216,6,18000,1,'ASHST'),(216,7,14400,0,'ASHT'),(216,8,14400,0,'TMT'),(216,9,18000,0,'TMT'),(217,0,14012,0,'LMT'),(217,1,14400,0,'ASHT'),(217,2,21600,1,'ASHST'),(217,3,18000,0,'ASHT'),(217,4,18000,0,'ASHT'),(217,5,21600,1,'ASHST'),(217,6,18000,1,'ASHST'),(217,7,14400,0,'ASHT'),(217,8,14400,0,'TMT'),(217,9,18000,0,'TMT'),(218,0,10656,0,'BMT'),(218,1,10800,0,'AST'),(218,2,14400,1,'ADT'),(218,3,10800,0,'AST'),(218,4,14400,1,'ADT'),(219,0,12140,0,'LMT'),(219,1,14400,0,'GST'),(219,2,10800,0,'AST'),(220,0,11964,0,'LMT'),(220,1,10800,0,'BAKT'),(220,2,18000,1,'BAKST'),(220,3,14400,0,'BAKT'),(220,4,14400,0,'BAKT'),(220,5,18000,1,'BAKST'),(220,6,14400,1,'BAKST'),(220,7,10800,0,'AZT'),(220,8,14400,1,'AZST'),(220,9,14400,0,'AZT'),(220,10,18000,1,'AZST'),(220,11,14400,0,'AZT'),(220,12,18000,1,'AZST'),(221,0,24124,0,'BMT'),(221,1,25200,0,'ICT'),(222,0,10800,1,'EEST'),(222,1,7200,0,'EET'),(223,0,17904,0,'LMT'),(223,1,18000,0,'FRUT'),(223,2,25200,1,'FRUST'),(223,3,21600,0,'FRUT'),(223,4,21600,0,'FRUT'),(223,5,25200,1,'FRUST'),(223,6,21600,1,'FRUST'),(223,7,21600,1,'KGST'),(223,8,18000,0,'KGT'),(223,9,21600,1,'KGST'),(223,10,21600,0,'KGT'),(224,0,27580,0,'LMT'),(224,1,27000,0,'BNT'),(224,2,28800,0,'BNT'),(225,0,21200,0,'HMT'),(225,1,23400,0,'BURT'),(225,2,19800,0,'IST'),(225,3,23400,1,'IST'),(226,0,27480,0,'LMT'),(226,1,25200,0,'ULAT'),(226,2,28800,0,'ULAT'),(226,3,32400,0,'CHOT'),(226,4,36000,1,'CHOST'),(227,0,25580,0,'LMT'),(227,1,25200,0,'LONT'),(227,2,32400,1,'CDT'),(227,3,28800,0,'CST'),(228,0,25580,0,'LMT'),(228,1,25200,0,'LONT'),(228,2,32400,1,'CDT'),(228,3,28800,0,'CST'),(229,0,19172,0,'MMT'),(229,1,19800,0,'IST'),(229,2,21600,1,'IHST'),(229,3,23400,1,'IST'),(229,4,23400,0,'LKT'),(229,5,21600,0,'LKT'),(230,0,21200,0,'HMT'),(230,1,23400,0,'BURT'),(230,2,19800,0,'IST'),(230,3,21600,0,'DACT'),(230,4,21600,0,'BDT'),(231,0,8712,0,'LMT'),(231,1,10800,1,'EEST'),(231,2,7200,0,'EET'),(232,0,21200,0,'HMT'),(232,1,23400,0,'BURT'),(232,2,19800,0,'IST'),(232,3,21600,0,'DACT'),(232,4,21600,0,'BDT'),(233,0,30140,0,'LMT'),(233,1,28800,0,'TLT'),(233,2,32400,0,'JST'),(233,3,32400,0,'TLT'),(233,4,28800,0,'CIT'),(234,0,13272,0,'LMT'),(234,1,14400,0,'GST'),(235,0,16512,0,'LMT'),(235,1,18000,0,'DUST'),(235,2,25200,1,'DUSST'),(235,3,21600,0,'DUST'),(235,4,21600,0,'DUST'),(235,5,25200,1,'DUSST'),(235,6,21600,1,'DUSST'),(235,7,18000,0,'TJT'),(236,0,10800,1,'EET'),(236,1,7200,0,'EET'),(236,2,10800,1,'EEST'),(236,3,10800,1,'IDT'),(236,4,7200,0,'IST'),(236,5,7200,0,'EET'),(237,0,30404,0,'LMT'),(237,1,30600,0,'CHAT'),(237,2,28800,0,'CST'),(237,3,32400,0,'CHAT'),(237,4,32400,1,'CDT'),(238,0,27396,0,'LMT'),(238,1,32400,1,'HKST'),(238,2,28800,0,'HKT'),(239,0,21996,0,'LMT'),(239,1,21600,0,'HOVT'),(239,2,28800,1,'HOVST'),(239,3,25200,0,'HOVT'),(240,0,25040,0,'IMT'),(240,1,25200,0,'IRKT'),(240,2,32400,1,'IRKST'),(240,3,28800,0,'IRKT'),(240,4,28800,0,'IRKT'),(240,5,32400,1,'IRKST'),(240,6,28800,1,'IRKST'),(240,7,25200,0,'IRKT'),(241,0,7016,0,'IMT'),(241,1,10800,1,'EEST'),(241,2,7200,0,'EET'),(241,3,14400,1,'TRST'),(241,4,10800,0,'TRT'),(241,5,10800,1,'EEST'),(241,6,7200,0,'EET'),(241,7,10800,1,'EEST'),(241,8,7200,0,'EET'),(242,0,25632,0,'JMT'),(242,1,26400,0,'JAVT'),(242,2,27000,0,'WIT'),(242,3,32400,0,'JST'),(242,4,28800,0,'WIT'),(242,5,25200,0,'WIT'),(243,0,33768,0,'LMT'),(243,1,32400,0,'EIT'),(243,2,34200,0,'CST'),(244,0,8440,0,'JMT'),(244,1,10800,1,'IDT'),(244,2,7200,0,'IST'),(244,3,14400,1,'IDDT'),(245,0,14400,0,'AFT'),(245,1,16200,0,'AFT'),(246,0,38076,0,'LMT'),(246,1,39600,0,'PETT'),(246,2,46800,1,'PETST'),(246,3,43200,0,'PETT'),(246,4,43200,0,'PETT'),(246,5,46800,1,'PETST'),(246,6,43200,1,'PETST'),(246,7,39600,0,'PETT'),(247,0,16092,0,'LMT'),(247,1,19800,0,'IST'),(247,2,23400,1,'IST'),(247,3,18000,0,'KART'),(247,4,21600,1,'PKST'),(247,5,18000,0,'PKT'),(248,0,18236,0,'LMT'),(248,1,19800,0,'KAST'),(248,2,18000,0,'KAST'),(248,3,32400,1,'CDT'),(248,4,28800,0,'CST'),(249,0,20476,0,'LMT'),(249,1,19800,0,'IST'),(249,2,20700,0,'NPT'),(250,0,22280,0,'LMT'),(250,1,21600,0,'KRAT'),(250,2,28800,1,'KRAST'),(250,3,25200,0,'KRAT'),(250,4,25200,0,'KRAT'),(250,5,28800,1,'KRAST'),(250,6,25200,1,'KRAST'),(250,7,21600,0,'KRAT'),(251,0,24925,0,'SMT'),(251,1,25200,0,'MALT'),(251,2,26400,1,'MALST'),(251,3,26400,0,'MALT'),(251,4,27000,0,'MALT'),(251,5,32400,0,'JST'),(251,6,28800,0,'MYT'),(252,0,26480,0,'LMT'),(252,1,27000,0,'BORT'),(252,2,30000,1,'BORTST'),(252,3,28800,0,'BORT'),(252,4,32400,0,'JST'),(252,5,28800,0,'MYT'),(253,0,11516,0,'LMT'),(253,1,10800,0,'AST'),(254,0,27260,0,'LMT'),(254,1,32400,1,'MOST'),(254,2,28800,0,'MOT'),(254,3,28800,0,'CST'),(255,0,27260,0,'LMT'),(255,1,32400,1,'MOST'),(255,2,28800,0,'MOT'),(255,3,28800,0,'CST'),(256,0,36192,0,'LMT'),(256,1,36000,0,'MAGT'),(256,2,43200,1,'MAGST'),(256,3,39600,0,'MAGT'),(256,4,39600,0,'MAGT'),(256,5,43200,1,'MAGST'),(256,6,39600,1,'MAGST'),(256,7,36000,0,'MAGT'),(257,0,28656,0,'LMT'),(257,1,28656,0,'MMT'),(257,2,28800,0,'CIT'),(257,3,32400,0,'JST'),(258,0,32400,1,'PHST'),(258,1,28800,0,'PHT'),(258,2,32400,0,'JST'),(259,0,14060,0,'LMT'),(259,1,14400,0,'GST'),(260,0,8008,0,'LMT'),(260,1,10800,1,'EEST'),(260,2,7200,0,'EET'),(260,3,7200,0,'EET'),(260,4,10800,1,'EEST'),(261,0,19900,0,'LMT'),(261,1,21600,0,'NOVT'),(261,2,28800,1,'NOVST'),(261,3,25200,0,'NOVT'),(261,4,25200,0,'NOVT'),(261,5,28800,1,'NOVST'),(261,6,25200,1,'NOVST'),(261,7,21600,0,'NOVT'),(261,8,25200,1,'NOVST'),(262,0,17616,0,'LMT'),(262,1,18000,0,'OMST'),(262,2,25200,1,'OMSST'),(262,3,21600,0,'OMST'),(262,4,21600,0,'OMST'),(262,5,25200,1,'OMSST'),(262,6,21600,1,'OMSST'),(262,7,18000,0,'OMST'),(263,0,12324,0,'LMT'),(263,1,14400,0,'URAT'),(263,2,18000,0,'URAT'),(263,3,21600,1,'URAST'),(263,4,21600,0,'URAT'),(263,5,18000,0,'URAT'),(263,6,21600,1,'URAST'),(263,7,18000,1,'URAST'),(263,8,14400,0,'URAT'),(263,9,18000,1,'ORAST'),(263,10,14400,0,'ORAT'),(263,11,18000,1,'ORAST'),(263,12,14400,0,'ORAT'),(263,13,18000,0,'ORAT'),(264,0,25180,0,'LMT'),(264,1,25580,0,'SMT'),(264,2,25200,0,'ICT'),(264,3,28800,0,'ICT'),(265,0,26240,0,'LMT'),(265,1,26240,0,'PMT'),(265,2,27000,0,'WIT'),(265,3,32400,0,'JST'),(265,4,28800,0,'WIT'),(265,5,28800,0,'CIT'),(265,6,25200,0,'WIT'),(266,0,30600,0,'KST'),(266,1,32400,0,'KST'),(266,2,28800,0,'KST'),(267,0,12368,0,'LMT'),(267,1,14400,0,'GST'),(267,2,10800,0,'AST'),(268,0,15712,0,'LMT'),(268,1,14400,0,'KIZT'),(268,2,18000,0,'KIZT'),(268,3,21600,1,'KIZST'),(268,4,21600,0,'KIZT'),(268,5,18000,0,'KIZT'),(268,6,21600,1,'KIZST'),(268,7,18000,0,'QYZT'),(268,8,25200,1,'QYZST'),(268,9,21600,0,'QYZT'),(268,10,25200,1,'QYZST'),(268,11,21600,0,'QYZT'),(269,0,23076,0,'RMT'),(269,1,23400,0,'BURT'),(269,2,32400,0,'JST'),(269,3,23400,0,'MMT'),(270,0,11212,0,'LMT'),(270,1,10800,0,'AST'),(271,0,25600,0,'LMT'),(271,1,25580,0,'SMT'),(271,2,25200,0,'ICT'),(271,3,28800,0,'ICT'),(272,0,34248,0,'LMT'),(272,1,32400,0,'CJT'),(272,2,32400,0,'JST'),(272,3,43200,1,'SAKST'),(272,4,39600,0,'SAKT'),(272,5,39600,0,'SAKT'),(272,6,43200,1,'SAKST'),(272,7,39600,1,'SAKST'),(272,8,36000,0,'SAKT'),(273,0,16032,0,'LMT'),(273,1,14400,0,'SAMT'),(273,2,18000,0,'SAMT'),(273,3,21600,1,'SAMST'),(273,4,21600,0,'TAST'),(273,5,18000,0,'SAMT'),(273,6,21600,1,'SAMST'),(273,7,18000,0,'UZT'),(273,8,21600,1,'UZST'),(273,9,18000,0,'UZT'),(274,0,30600,0,'KST'),(274,1,32400,0,'KST'),(274,2,32400,1,'KDT'),(274,3,28800,0,'KST'),(274,4,36000,1,'KDT'),(275,0,29152,0,'LMT'),(275,1,32400,1,'CDT'),(275,2,28800,0,'CST'),(276,0,24925,0,'SMT'),(276,1,25200,0,'MALT'),(276,2,26400,1,'MALST'),(276,3,26400,0,'MALT'),(276,4,27000,0,'MALT'),(276,5,32400,0,'JST'),(276,6,27000,0,'SGT'),(276,7,28800,0,'SGT'),(277,0,32400,1,'CDT'),(277,1,28800,0,'CST'),(278,0,16632,0,'LMT'),(278,1,18000,0,'TAST'),(278,2,25200,1,'TASST'),(278,3,21600,0,'TAST'),(278,4,21600,0,'TAST'),(278,5,25200,1,'TASST'),(278,6,21600,1,'TASST'),(278,7,18000,0,'UZT'),(278,8,21600,1,'UZST'),(278,9,18000,0,'UZT'),(279,0,10756,0,'TBMT'),(279,1,10800,0,'TBIT'),(279,2,18000,1,'TBIST'),(279,3,14400,0,'TBIT'),(279,4,14400,0,'TBIT'),(279,5,18000,1,'TBIST'),(279,6,14400,1,'TBIST'),(279,7,10800,0,'GET'),(279,8,14400,1,'GEST'),(279,9,10800,0,'GET'),(279,10,18000,1,'GEST'),(279,11,14400,0,'GET'),(280,0,12344,0,'LMT'),(280,1,12344,0,'TMT'),(280,2,12600,0,'IRST'),(280,3,18000,1,'IRDT'),(280,4,14400,0,'IRST'),(280,5,16200,1,'IRDT'),(281,0,8440,0,'JMT'),(281,1,10800,1,'IDT'),(281,2,7200,0,'IST'),(281,3,14400,1,'IDDT'),(282,0,21516,0,'LMT'),(282,1,19800,0,'IST'),(282,2,21600,0,'BTT'),(283,0,21516,0,'LMT'),(283,1,19800,0,'IST'),(283,2,21600,0,'BTT'),(284,0,32400,0,'CJT'),(284,1,36000,1,'JDT'),(284,2,32400,0,'JST'),(285,0,28656,0,'LMT'),(285,1,28656,0,'MMT'),(285,2,28800,0,'CIT'),(285,3,32400,0,'JST'),(286,0,25652,0,'LMT'),(286,1,25200,0,'ULAT'),(286,2,32400,1,'ULAST'),(286,3,28800,0,'ULAT'),(287,0,25652,0,'LMT'),(287,1,25200,0,'ULAT'),(287,2,32400,1,'ULAST'),(287,3,28800,0,'ULAT'),(288,0,21020,0,'LMT'),(288,1,21600,0,'URUT'),(288,2,32400,1,'CDT'),(288,3,28800,0,'CST'),(289,0,24624,0,'LMT'),(289,1,25580,0,'SMT'),(289,2,25200,0,'ICT'),(289,3,28800,0,'ICT'),(290,0,31664,0,'LMT'),(290,1,32400,0,'VLAT'),(290,2,39600,1,'VLAST'),(290,3,36000,0,'VLAT'),(290,4,36000,0,'VLAT'),(290,5,39600,1,'VLAST'),(290,6,36000,1,'VLASST'),(290,7,32400,0,'VLAST'),(291,0,31120,0,'LMT'),(291,1,28800,0,'YAKT'),(291,2,36000,1,'YAKST'),(291,3,32400,0,'YAKT'),(291,4,32400,0,'YAKT'),(291,5,36000,1,'YAKST'),(291,6,32400,1,'YAKST'),(291,7,28800,0,'YAKT'),(292,0,14544,0,'LMT'),(292,1,14400,0,'SVET'),(292,2,21600,1,'SVEST'),(292,3,18000,0,'SVET'),(292,4,18000,0,'SVET'),(292,5,21600,1,'SVEST'),(292,6,18000,1,'SVEST'),(292,7,14400,0,'SVET'),(292,8,21600,1,'YEKST'),(292,9,18000,0,'YEKT'),(292,10,21600,1,'YEKST'),(292,11,18000,0,'YEKT'),(293,0,10680,0,'LMT'),(293,1,10800,0,'YERT'),(293,2,18000,1,'YERST'),(293,3,14400,0,'YERT'),(293,4,14400,0,'YERT'),(293,5,18000,1,'YERST'),(293,6,14400,1,'YERST'),(293,7,10800,0,'AMT'),(293,8,14400,1,'AMST'),(293,9,10800,0,'AMT'),(293,10,14400,1,'AMST'),(293,11,14400,0,'AMT'),(293,12,18000,1,'AMST'),(293,13,14400,0,'AMT'),(294,0,-6872,0,'HMT'),(294,1,-3600,1,'AZOST'),(294,2,-7200,0,'AZOT'),(294,3,-3600,1,'AZOST'),(294,4,-7200,0,'AZOT'),(294,5,0,1,'AZOMT'),(294,6,0,1,'AZOST'),(294,7,-3600,0,'AZOT'),(294,8,-3600,0,'AZOT'),(294,9,0,0,'WET'),(294,10,0,1,'AZOST'),(294,11,-3600,0,'AZOT'),(295,0,-15544,0,'LMT'),(295,1,-14400,0,'AST'),(295,2,-10800,1,'ADT'),(296,0,-3696,0,'LMT'),(296,1,-3600,0,'CANT'),(296,2,0,0,'WET'),(296,3,3600,1,'WEST'),(296,4,0,0,'WET'),(296,5,3600,1,'WEST'),(297,0,-5644,0,'LMT'),(297,1,-7200,0,'CVT'),(297,2,-3600,1,'CVST'),(297,3,-3600,0,'CVT'),(298,0,-1624,0,'LMT'),(298,1,0,0,'WET'),(298,2,3600,1,'WEST'),(298,3,0,0,'WET'),(299,0,7200,1,'CEST'),(299,1,3600,0,'CET'),(299,2,3600,0,'CET'),(299,3,7200,1,'CEST'),(299,4,7200,1,'CEST'),(299,5,3600,0,'CET'),(300,0,-4056,0,'FMT'),(300,1,0,1,'MADST'),(300,2,-3600,0,'MADT'),(300,3,0,1,'MADST'),(300,4,-3600,0,'MADT'),(300,5,3600,1,'MADMT'),(300,6,3600,1,'WEST'),(300,7,0,0,'WET'),(300,8,0,0,'WET'),(300,9,0,0,'WET'),(300,10,3600,1,'WEST'),(301,0,-5268,0,'RMT'),(301,1,0,1,'ISST'),(301,2,-3600,0,'IST'),(301,3,0,1,'ISST'),(301,4,-3600,0,'IST'),(301,5,0,0,'GMT'),(302,0,-7200,0,'GST'),(303,0,-1368,0,'JMT'),(303,1,0,0,'GMT'),(304,0,-13884,0,'SMT'),(304,1,-10800,1,'FKST'),(304,2,-14400,0,'FKT'),(304,3,-7200,1,'FKST'),(304,4,-10800,0,'FKT'),(305,0,39600,1,'EST'),(305,1,36000,0,'EST'),(305,2,39600,1,'EST'),(305,3,36000,0,'EST'),(306,0,37800,1,'CST'),(306,1,34200,0,'CST'),(306,2,37800,1,'CST'),(306,3,34200,0,'CST'),(307,0,39600,1,'EST'),(307,1,36000,0,'EST'),(307,2,39600,1,'EST'),(307,3,36000,0,'EST'),(308,0,37800,1,'CST'),(308,1,34200,0,'CST'),(308,2,37800,1,'CST'),(308,3,34200,0,'CST'),(309,0,39600,1,'EST'),(309,1,36000,0,'EST'),(309,2,39600,1,'EST'),(309,3,36000,0,'EST'),(310,0,36000,0,'EST'),(310,1,39600,1,'EST'),(310,2,39600,1,'EST'),(310,3,36000,0,'EST'),(311,0,37800,1,'CST'),(311,1,34200,0,'CST'),(312,0,36000,0,'EST'),(312,1,39600,1,'EST'),(312,2,39600,1,'EST'),(312,3,36000,0,'EST'),(313,0,36000,0,'EST'),(313,1,41400,1,'LHST'),(313,2,37800,0,'LHST'),(313,3,39600,1,'LHST'),(314,0,39600,1,'EST'),(314,1,36000,0,'EST'),(314,2,39600,1,'EST'),(314,3,36000,0,'EST'),(315,0,36000,0,'EST'),(315,1,41400,1,'LHST'),(315,2,37800,0,'LHST'),(315,3,39600,1,'LHST'),(316,0,39600,1,'EST'),(316,1,36000,0,'EST'),(316,2,39600,1,'EST'),(316,3,36000,0,'EST'),(317,0,39600,1,'EST'),(317,1,36000,0,'EST'),(317,2,39600,1,'EST'),(317,3,36000,0,'EST'),(318,0,37800,1,'CST'),(318,1,34200,0,'CST'),(319,0,32400,1,'WST'),(319,1,28800,0,'WST'),(319,2,32400,1,'WST'),(319,3,28800,0,'WST'),(320,0,39600,1,'EST'),(320,1,36000,0,'EST'),(320,2,39600,1,'EST'),(320,3,36000,0,'EST'),(321,0,37800,1,'CST'),(321,1,34200,0,'CST'),(321,2,37800,1,'CST'),(321,3,34200,0,'CST'),(322,0,39600,1,'EST'),(322,1,36000,0,'EST'),(322,2,39600,1,'EST'),(322,3,36000,0,'EST'),(323,0,36000,0,'EST'),(323,1,39600,1,'EST'),(323,2,39600,1,'EST'),(323,3,36000,0,'EST'),(324,0,39600,1,'EST'),(324,1,36000,0,'EST'),(324,2,39600,1,'EST'),(324,3,36000,0,'EST'),(325,0,32400,1,'WST'),(325,1,28800,0,'WST'),(325,2,32400,1,'WST'),(325,3,28800,0,'WST'),(326,0,37800,1,'CST'),(326,1,34200,0,'CST'),(326,2,37800,1,'CST'),(326,3,34200,0,'CST'),(327,0,-16272,0,'LMT'),(327,1,-14400,1,'ACST'),(327,2,-18000,0,'ACT'),(328,0,-7780,0,'LMT'),(328,1,-3600,1,'FNST'),(328,2,-7200,0,'FNT'),(329,0,-11188,0,'LMT'),(329,1,-7200,1,'BRST'),(329,2,-10800,0,'BRT'),(330,0,-14404,0,'LMT'),(330,1,-10800,1,'AMST'),(330,2,-14400,0,'AMT'),(331,0,7200,1,'CEST'),(331,1,3600,0,'CET'),(331,2,7200,1,'CEST'),(331,3,3600,0,'CET'),(332,0,-18000,1,'CDT'),(332,1,-21600,0,'CST'),(332,2,-18000,1,'CWT'),(332,3,-18000,1,'CPT'),(333,0,-15264,0,'LMT'),(333,1,-10800,1,'ADT'),(333,2,-14400,0,'AST'),(333,3,-10800,1,'AWT'),(333,4,-10800,1,'APT'),(334,0,-18000,1,'CDT'),(334,1,-21600,0,'CST'),(334,2,-18000,1,'CWT'),(334,3,-18000,1,'CPT'),(334,4,-18000,1,'CDT'),(334,5,-21600,0,'CST'),(335,0,-25116,0,'LMT'),(335,1,-21600,1,'MDT'),(335,2,-25200,0,'MST'),(335,3,-21600,1,'MWT'),(335,4,-21600,1,'MPT'),(335,5,-21600,0,'CST'),(336,0,-14400,1,'EDT'),(336,1,-18000,0,'EST'),(336,2,-14400,1,'EWT'),(336,3,-14400,1,'EPT'),(337,0,-27232,0,'LMT'),(337,1,-21600,1,'MDT'),(337,2,-25200,0,'MST'),(337,3,-21600,1,'MWT'),(337,4,-21600,1,'MPT'),(338,0,-9052,1,'NDT'),(338,1,-12652,0,'NST'),(338,2,-9000,1,'NDT'),(338,3,-12600,0,'NST'),(338,4,-9000,1,'NPT'),(338,5,-9000,1,'NWT'),(338,6,-5400,1,'NDDT'),(339,0,-25200,1,'PDT'),(339,1,-28800,0,'PST'),(339,2,-25200,1,'PWT'),(339,3,-25200,1,'PPT'),(340,0,-25116,0,'LMT'),(340,1,-21600,1,'MDT'),(340,2,-25200,0,'MST'),(340,3,-21600,1,'MWT'),(340,4,-21600,1,'MPT'),(340,5,-21600,0,'CST'),(341,0,-28800,1,'YDT'),(341,1,-32400,0,'YST'),(341,2,-28800,1,'YWT'),(341,3,-28800,1,'YPT'),(341,4,-25200,1,'YDDT'),(341,5,-28800,0,'PST'),(341,6,-25200,1,'PDT'),(342,0,-16966,0,'SMT'),(342,1,-18000,0,'CLT'),(342,2,-14400,0,'CLT'),(342,3,-14400,1,'CLST'),(342,4,-18000,0,'CLT'),(342,5,-14400,1,'CLST'),(342,6,-10800,1,'CLST'),(342,7,-14400,0,'CLT'),(343,0,-26248,0,'MMT'),(343,1,-25200,0,'EAST'),(343,2,-21600,1,'EASST'),(343,3,-21600,1,'EASST'),(343,4,-21600,0,'EAST'),(343,5,-18000,1,'EASST'),(343,6,-18000,1,'EASST'),(344,0,-19776,0,'HMT'),(344,1,-14400,1,'CDT'),(344,2,-18000,0,'CST'),(344,3,-18000,0,'CST'),(344,4,-14400,1,'CDT'),(345,0,10800,1,'EEST'),(345,1,7200,0,'EET'),(346,0,-18000,0,'EST'),(347,0,-14400,1,'EDT'),(347,1,-18000,0,'EST'),(347,2,-14400,1,'EWT'),(347,3,-14400,1,'EPT'),(348,0,10800,1,'EEST'),(348,1,7200,0,'EET'),(348,2,10800,1,'EEST'),(348,3,7200,0,'EET'),(349,0,-1521,0,'DMT'),(349,1,2079,1,'IST'),(349,2,3600,1,'BST'),(349,3,0,0,'GMT'),(349,4,3600,1,'IST'),(349,5,0,0,'GMT'),(349,6,3600,1,'IST'),(349,7,3600,0,'IST'),(349,8,3600,1,'IST'),(349,9,0,0,'GMT'),(350,0,0,0,'GMT'),(351,0,0,0,'GMT'),(352,0,-3600,0,'GMT+1'),(353,0,-36000,0,'GMT+10'),(354,0,-39600,0,'GMT+11'),(355,0,-43200,0,'GMT+12'),(356,0,-7200,0,'GMT+2'),(357,0,-10800,0,'GMT+3'),(358,0,-14400,0,'GMT+4'),(359,0,-18000,0,'GMT+5'),(360,0,-21600,0,'GMT+6'),(361,0,-25200,0,'GMT+7'),(362,0,-28800,0,'GMT+8'),(363,0,-32400,0,'GMT+9'),(364,0,0,0,'GMT'),(365,0,3600,0,'GMT-1'),(366,0,36000,0,'GMT-10'),(367,0,39600,0,'GMT-11'),(368,0,43200,0,'GMT-12'),(369,0,46800,0,'GMT-13'),(370,0,50400,0,'GMT-14'),(371,0,7200,0,'GMT-2'),(372,0,10800,0,'GMT-3'),(373,0,14400,0,'GMT-4'),(374,0,18000,0,'GMT-5'),(375,0,21600,0,'GMT-6'),(376,0,25200,0,'GMT-7'),(377,0,28800,0,'GMT-8'),(378,0,32400,0,'GMT-9'),(379,0,0,0,'GMT'),(380,0,0,0,'GMT'),(381,0,0,0,'UCT'),(382,0,0,0,'UTC'),(383,0,0,0,'UTC'),(384,0,0,0,'UTC'),(385,0,4772,1,'NST'),(385,1,1172,0,'AMT'),(385,2,4772,1,'NST'),(385,3,1172,0,'AMT'),(385,4,1200,0,'NET'),(385,5,4800,1,'NEST'),(385,6,4800,1,'NEST'),(385,7,3600,0,'CET'),(385,8,7200,1,'CEST'),(385,9,7200,1,'CEST'),(385,10,7200,1,'CEST'),(385,11,3600,0,'CET'),(385,12,3600,0,'CET'),(386,0,0,0,'WET'),(386,1,3600,0,'CET'),(386,2,7200,1,'CEST'),(386,3,3600,0,'CET'),(387,0,5692,0,'AMT'),(387,1,10800,1,'EEST'),(387,2,7200,0,'EET'),(387,3,3600,0,'CET'),(387,4,7200,1,'CEST'),(387,5,10800,1,'EEST'),(387,6,7200,0,'EET'),(387,7,10800,1,'EEST'),(387,8,7200,0,'EET'),(388,0,3600,1,'BST'),(388,1,0,0,'GMT'),(388,2,7200,1,'BDST'),(388,3,3600,0,'BST'),(388,4,3600,1,'BST'),(388,5,0,0,'GMT'),(388,6,0,0,'GMT'),(389,0,3600,0,'CET'),(389,1,3600,0,'CET'),(389,2,7200,1,'CEST'),(389,3,7200,1,'CEST'),(389,4,7200,1,'CEST'),(389,5,3600,0,'CET'),(390,0,7200,1,'CEST'),(390,1,3600,0,'CET'),(390,2,7200,1,'CEST'),(390,3,3600,0,'CET'),(390,4,10800,1,'CEMT'),(390,5,10800,1,'CEMT'),(390,6,7200,1,'CEST'),(390,7,3600,0,'CET'),(391,0,7200,1,'CEST'),(391,1,3600,0,'CET'),(391,2,7200,1,'CEST'),(391,3,3600,0,'CET'),(391,4,7200,1,'CEST'),(391,5,3600,0,'CET'),(392,0,0,0,'WET'),(392,1,3600,0,'CET'),(392,2,7200,1,'CEST'),(392,3,3600,0,'CET'),(392,4,7200,1,'CEST'),(392,5,3600,1,'WEST'),(392,6,0,0,'WET'),(392,7,0,0,'WET'),(392,8,7200,1,'CEST'),(392,9,3600,0,'CET'),(393,0,6264,0,'BMT'),(393,1,10800,1,'EEST'),(393,2,7200,0,'EET'),(393,3,10800,1,'EEST'),(393,4,7200,0,'EET'),(393,5,10800,1,'EEST'),(393,6,7200,0,'EET'),(394,0,7200,1,'CEST'),(394,1,3600,0,'CET'),(394,2,7200,1,'CEST'),(394,3,3600,0,'CET'),(394,4,3600,0,'CET'),(394,5,7200,1,'CEST'),(395,0,6900,0,'CMT'),(395,1,6264,0,'BMT'),(395,2,10800,1,'EEST'),(395,3,7200,0,'EET'),(395,4,7200,0,'EET'),(395,5,10800,1,'EEST'),(395,6,3600,0,'CET'),(395,7,7200,1,'CEST'),(395,8,7200,1,'CEST'),(395,9,14400,1,'MSD'),(395,10,10800,0,'MSK'),(395,11,10800,0,'MSK'),(395,12,14400,1,'MSD'),(395,13,10800,1,'EEST'),(395,14,7200,0,'EET'),(396,0,7200,1,'CEST'),(396,1,3600,0,'CET'),(396,2,3600,0,'CET'),(396,3,7200,1,'CEST'),(396,4,7200,1,'CEST'),(396,5,3600,0,'CET'),(397,0,-1521,0,'DMT'),(397,1,2079,1,'IST'),(397,2,3600,1,'BST'),(397,3,0,0,'GMT'),(397,4,3600,1,'IST'),(397,5,0,0,'GMT'),(397,6,3600,1,'IST'),(397,7,3600,0,'IST'),(397,8,3600,1,'IST'),(397,9,0,0,'GMT'),(398,0,3600,1,'BST'),(398,1,0,0,'GMT'),(398,2,7200,1,'BDST'),(398,3,3600,0,'CET'),(398,4,7200,1,'CEST'),(398,5,3600,0,'CET'),(399,0,3600,1,'BST'),(399,1,0,0,'GMT'),(399,2,7200,1,'BDST'),(399,3,3600,0,'BST'),(399,4,3600,1,'BST'),(399,5,0,0,'GMT'),(399,6,0,0,'GMT'),(400,0,5992,0,'HMT'),(400,1,10800,1,'EEST'),(400,2,7200,0,'EET'),(400,3,10800,1,'EEST'),(400,4,7200,0,'EET'),(401,0,3600,1,'BST'),(401,1,0,0,'GMT'),(401,2,7200,1,'BDST'),(401,3,3600,0,'BST'),(401,4,3600,1,'BST'),(401,5,0,0,'GMT'),(401,6,0,0,'GMT'),(402,0,7016,0,'IMT'),(402,1,10800,1,'EEST'),(402,2,7200,0,'EET'),(402,3,14400,1,'TRST'),(402,4,10800,0,'TRT'),(402,5,10800,1,'EEST'),(402,6,7200,0,'EET'),(402,7,10800,1,'EEST'),(402,8,7200,0,'EET'),(403,0,3600,1,'BST'),(403,1,0,0,'GMT'),(403,2,7200,1,'BDST'),(403,3,3600,0,'BST'),(403,4,3600,1,'BST'),(403,5,0,0,'GMT'),(403,6,0,0,'GMT'),(404,0,7200,1,'CEST'),(404,1,3600,0,'CET'),(404,2,7200,1,'CEST'),(404,3,3600,0,'CET'),(404,4,10800,1,'CEST'),(404,5,7200,0,'CET'),(404,6,14400,1,'MSD'),(404,7,10800,0,'MSK'),(404,8,10800,0,'MSK'),(404,9,14400,1,'MSD'),(404,10,10800,1,'EEST'),(404,11,7200,0,'EET'),(404,12,10800,1,'EEST'),(404,13,7200,0,'EET'),(405,0,7324,0,'KMT'),(405,1,7200,0,'EET'),(405,2,10800,0,'MSK'),(405,3,3600,0,'CET'),(405,4,7200,1,'CEST'),(405,5,7200,1,'CEST'),(405,6,14400,1,'MSD'),(405,7,10800,0,'MSK'),(405,8,14400,1,'MSD'),(405,9,10800,1,'EEST'),(405,10,10800,1,'EEST'),(405,11,7200,0,'EET'),(406,0,-2192,0,'LMT'),(406,1,3600,1,'WEST'),(406,2,0,0,'WET'),(406,3,3600,1,'WEST'),(406,4,0,0,'WET'),(406,5,7200,1,'WEMT'),(406,6,3600,0,'CET'),(406,7,3600,0,'CET'),(406,8,7200,1,'CEST'),(406,9,3600,1,'WEST'),(406,10,0,0,'WET'),(407,0,3600,0,'CET'),(407,1,3600,0,'CET'),(407,2,7200,1,'CEST'),(407,3,7200,1,'CEST'),(407,4,7200,1,'CEST'),(407,5,3600,0,'CET'),(408,0,3600,1,'BST'),(408,1,0,0,'GMT'),(408,2,7200,1,'BDST'),(408,3,3600,0,'BST'),(408,4,3600,1,'BST'),(408,5,0,0,'GMT'),(408,6,0,0,'GMT'),(409,0,1476,0,'LMT'),(409,1,7200,1,'CEST'),(409,2,3600,0,'CET'),(409,3,7200,1,'CEST'),(409,4,3600,0,'CET'),(409,5,3600,1,'WEST'),(409,6,0,0,'WET'),(409,7,0,0,'WET'),(409,8,3600,1,'WEST'),(409,9,3600,0,'WET'),(409,10,7200,1,'WEST'),(409,11,7200,1,'WEST'),(409,12,7200,1,'CEST'),(409,13,3600,0,'CET'),(410,0,3600,1,'WEST'),(410,1,0,0,'WET'),(410,2,7200,1,'WEMT'),(410,3,3600,1,'WEST'),(410,4,7200,1,'CEST'),(410,5,3600,0,'CET'),(410,6,7200,1,'CEST'),(410,7,3600,0,'CET'),(411,0,7200,1,'CEST'),(411,1,3600,0,'CET'),(411,2,7200,1,'CEST'),(411,3,3600,0,'CET'),(411,4,7200,1,'CEST'),(411,5,3600,0,'CET'),(412,0,5992,0,'HMT'),(412,1,10800,1,'EEST'),(412,2,7200,0,'EET'),(412,3,10800,1,'EEST'),(412,4,7200,0,'EET'),(413,0,6600,0,'MMT'),(413,1,7200,0,'EET'),(413,2,10800,0,'MSK'),(413,3,3600,0,'CET'),(413,4,7200,1,'CEST'),(413,5,7200,1,'CEST'),(413,6,14400,1,'MSD'),(413,7,10800,0,'MSK'),(413,8,14400,1,'MSD'),(413,9,10800,1,'EEST'),(413,10,7200,0,'EET'),(414,0,561,0,'PMT'),(414,1,3600,1,'WEST'),(414,2,0,0,'WET'),(414,3,3600,1,'WEST'),(414,4,7200,1,'WEMT'),(414,5,0,0,'WET'),(414,6,7200,1,'CEST'),(414,7,3600,0,'CET'),(414,8,7200,1,'CEST'),(414,9,3600,0,'CET'),(415,0,9000,0,'MMT'),(415,1,12648,1,'MST'),(415,2,9048,0,'MMT'),(415,3,16248,1,'MDST'),(415,4,10800,0,'MSK'),(415,5,14400,1,'MSD'),(415,6,18000,1,'MSD'),(415,7,7200,0,'EET'),(415,8,10800,0,'MSK'),(415,9,14400,1,'MSD'),(415,10,10800,1,'EEST'),(415,11,7200,0,'EET'),(416,0,8008,0,'LMT'),(416,1,10800,1,'EEST'),(416,2,7200,0,'EET'),(416,3,7200,0,'EET'),(416,4,10800,1,'EEST'),(417,0,7200,1,'CEST'),(417,1,3600,0,'CET'),(417,2,3600,0,'CET'),(417,3,7200,1,'CEST'),(417,4,7200,1,'CEST'),(417,5,3600,0,'CET'),(418,0,561,0,'PMT'),(418,1,3600,1,'WEST'),(418,2,0,0,'WET'),(418,3,3600,1,'WEST'),(418,4,0,0,'WET'),(418,5,3600,0,'CET'),(418,6,7200,1,'CEST'),(418,7,7200,1,'CEST'),(418,8,7200,1,'WEMT'),(418,9,3600,0,'CET'),(418,10,7200,1,'CEST'),(418,11,3600,0,'CET'),(419,0,3600,0,'CET'),(419,1,3600,0,'CET'),(419,2,7200,1,'CEST'),(419,3,7200,1,'CEST'),(419,4,7200,1,'CEST'),(419,5,3600,0,'CET'),(420,0,7200,1,'CEST'),(420,1,3600,0,'CET'),(420,2,7200,1,'CEST'),(420,3,3600,0,'CET'),(420,4,7200,1,'CEST'),(420,5,3600,0,'CET'),(421,0,5784,0,'RMT'),(421,1,9384,1,'LST'),(421,2,7200,0,'EET'),(421,3,10800,0,'MSK'),(421,4,3600,0,'CET'),(421,5,7200,1,'CEST'),(421,6,7200,1,'CEST'),(421,7,14400,1,'MSD'),(421,8,10800,0,'MSK'),(421,9,14400,1,'MSD'),(421,10,10800,1,'EEST'),(421,11,7200,0,'EET'),(421,12,10800,1,'EEST'),(421,13,7200,0,'EET'),(422,0,7200,1,'CEST'),(422,1,3600,0,'CET'),(422,2,7200,1,'CEST'),(422,3,3600,0,'CET'),(422,4,7200,1,'CEST'),(422,5,3600,0,'CET'),(423,0,12036,0,'LMT'),(423,1,10800,0,'SAMT'),(423,2,14400,0,'SAMT'),(423,3,18000,1,'KUYST'),(423,4,14400,0,'KUYT'),(423,5,14400,0,'KUYT'),(423,6,18000,1,'KUYST'),(423,7,14400,1,'KUYST'),(423,8,10800,0,'KUYT'),(423,9,10800,1,'KUYST'),(423,10,7200,0,'KUYT'),(423,11,18000,1,'SAMST'),(423,12,18000,1,'SAMST'),(423,13,14400,0,'SAMT'),(424,0,7200,1,'CEST'),(424,1,3600,0,'CET'),(424,2,7200,1,'CEST'),(424,3,3600,0,'CET'),(424,4,7200,1,'CEST'),(424,5,3600,0,'CET'),(425,0,3600,0,'CET'),(425,1,3600,0,'CET'),(425,2,7200,1,'CEST'),(425,3,7200,1,'CEST'),(425,4,7200,1,'CEST'),(425,5,3600,0,'CET'),(426,0,8160,0,'SMT'),(426,1,7200,0,'EET'),(426,2,10800,0,'MSK'),(426,3,3600,0,'CET'),(426,4,7200,1,'CEST'),(426,5,7200,1,'CEST'),(426,6,14400,1,'MSD'),(426,7,10800,0,'MSK'),(426,8,14400,1,'MSD'),(426,9,10800,1,'EEST'),(426,10,10800,1,'EEST'),(426,11,7200,0,'EET'),(427,0,3600,0,'CET'),(427,1,3600,0,'CET'),(427,2,7200,1,'CEST'),(427,3,7200,1,'CEST'),(427,4,7200,1,'CEST'),(427,5,3600,0,'CET'),(428,0,7200,0,'EET'),(428,1,3600,0,'CET'),(428,2,7200,1,'CEST'),(428,3,10800,1,'EEST'),(428,4,7200,0,'EET'),(428,5,10800,1,'EEST'),(428,6,10800,1,'EEST'),(428,7,7200,0,'EET'),(429,0,3600,0,'CET'),(429,1,7200,1,'CEST'),(429,2,7200,1,'CEST'),(429,3,3600,0,'CET'),(430,0,5940,0,'TMT'),(430,1,7200,1,'CEST'),(430,2,3600,0,'CET'),(430,3,3600,0,'CET'),(430,4,7200,0,'EET'),(430,5,10800,0,'MSK'),(430,6,7200,1,'CEST'),(430,7,14400,1,'MSD'),(430,8,10800,0,'MSK'),(430,9,14400,1,'MSD'),(430,10,10800,1,'EEST'),(430,11,7200,0,'EET'),(430,12,7200,0,'EET'),(430,13,10800,1,'EEST'),(430,14,10800,1,'EEST'),(431,0,4760,0,'LMT'),(431,1,3600,0,'CET'),(431,2,7200,1,'CEST'),(431,3,3600,0,'CET'),(431,4,7200,1,'CEST'),(432,0,6900,0,'CMT'),(432,1,6264,0,'BMT'),(432,2,10800,1,'EEST'),(432,3,7200,0,'EET'),(432,4,7200,0,'EET'),(432,5,10800,1,'EEST'),(432,6,3600,0,'CET'),(432,7,7200,1,'CEST'),(432,8,7200,1,'CEST'),(432,9,14400,1,'MSD'),(432,10,10800,0,'MSK'),(432,11,10800,0,'MSK'),(432,12,14400,1,'MSD'),(432,13,10800,1,'EEST'),(432,14,7200,0,'EET'),(433,0,3600,0,'CET'),(433,1,7200,1,'CEST'),(433,2,3600,0,'CET'),(433,3,7200,1,'CEST'),(433,4,14400,1,'MSD'),(433,5,10800,0,'MSK'),(433,6,10800,0,'MSK'),(433,7,14400,1,'MSD'),(433,8,7200,0,'EET'),(433,9,10800,1,'EEST'),(433,10,10800,1,'EEST'),(433,11,7200,0,'EET'),(434,0,3600,0,'CET'),(434,1,7200,1,'CEST'),(434,2,3600,0,'CET'),(435,0,7200,1,'CEST'),(435,1,3600,0,'CET'),(435,2,7200,1,'CEST'),(435,3,3600,0,'CET'),(435,4,7200,1,'CEST'),(435,5,3600,0,'CET'),(436,0,7200,1,'CEST'),(436,1,3600,0,'CET'),(436,2,7200,1,'CEST'),(436,3,3600,0,'CET'),(436,4,7200,1,'CEST'),(436,5,3600,0,'CET'),(437,0,5040,0,'WMT'),(437,1,5736,0,'KMT'),(437,2,3600,0,'CET'),(437,3,7200,0,'EET'),(437,4,10800,0,'MSK'),(437,5,3600,0,'CET'),(437,6,7200,1,'CEST'),(437,7,7200,1,'CEST'),(437,8,14400,1,'MSD'),(437,9,10800,0,'MSK'),(437,10,14400,1,'MSD'),(437,11,10800,1,'EEST'),(437,12,7200,0,'EET'),(437,13,7200,1,'CEST'),(437,14,3600,0,'CET'),(437,15,7200,0,'EET'),(437,16,10800,1,'EEST'),(438,0,10660,0,'LMT'),(438,1,10800,0,'TSAT'),(438,2,10800,0,'STAT'),(438,3,14400,0,'STAT'),(438,4,18000,1,'VOLST'),(438,5,14400,0,'VOLT'),(438,6,14400,0,'VOLT'),(438,7,18000,1,'VOLST'),(438,8,14400,1,'VOLST'),(438,9,10800,0,'VOLT'),(438,10,10800,0,'VOLT'),(439,0,5040,0,'WMT'),(439,1,7200,1,'CEST'),(439,2,3600,0,'CET'),(439,3,7200,1,'CEST'),(439,4,3600,0,'CET'),(439,5,10800,1,'EEST'),(439,6,7200,0,'EET'),(439,7,7200,0,'EET'),(439,8,7200,1,'CEST'),(439,9,3600,0,'CET'),(440,0,3600,0,'CET'),(440,1,3600,0,'CET'),(440,2,7200,1,'CEST'),(440,3,7200,1,'CEST'),(440,4,7200,1,'CEST'),(440,5,3600,0,'CET'),(441,0,8400,0,'CUT'),(441,1,7200,0,'EET'),(441,2,10800,0,'MSK'),(441,3,3600,0,'CET'),(441,4,7200,1,'CEST'),(441,5,7200,1,'CEST'),(441,6,14400,1,'MSD'),(441,7,10800,0,'MSK'),(441,8,14400,1,'MSD'),(441,9,10800,1,'EEST'),(441,10,10800,1,'EEST'),(441,11,7200,0,'EET'),(442,0,7200,1,'CEST'),(442,1,3600,0,'CET'),(442,2,7200,1,'CEST'),(442,3,3600,0,'CET'),(443,0,0,0,'Local ti'),(444,0,3600,1,'BST'),(444,1,0,0,'GMT'),(444,2,7200,1,'BDST'),(444,3,3600,0,'BST'),(444,4,3600,1,'BST'),(444,5,0,0,'GMT'),(444,6,0,0,'GMT'),(445,0,3600,1,'BST'),(445,1,0,0,'GMT'),(445,2,7200,1,'BDST'),(445,3,3600,0,'BST'),(445,4,3600,1,'BST'),(445,5,0,0,'GMT'),(445,6,0,0,'GMT'),(446,0,0,0,'GMT'),(447,0,0,0,'GMT'),(448,0,0,0,'GMT'),(449,0,0,0,'GMT'),(450,0,0,0,'GMT'),(451,0,-36000,0,'HST'),(452,0,27396,0,'LMT'),(452,1,32400,1,'HKST'),(452,2,28800,0,'HKT'),(453,0,-5268,0,'RMT'),(453,1,0,1,'ISST'),(453,2,-3600,0,'IST'),(453,3,0,1,'ISST'),(453,4,-3600,0,'IST'),(453,5,0,0,'GMT'),(454,0,11404,0,'LMT'),(454,1,10800,0,'EAT'),(454,2,14400,1,'EAST'),(454,3,10800,0,'EAT'),(455,0,17380,0,'LMT'),(455,1,18000,0,'IOT'),(455,2,21600,0,'IOT'),(456,0,25200,0,'CXT'),(457,0,23400,0,'CCT'),(458,0,10384,0,'LMT'),(458,1,10800,0,'EAT'),(459,0,0,0,'zzz'),(459,1,18000,0,'TFT'),(460,0,13308,0,'LMT'),(460,1,14400,0,'SCT'),(461,0,17640,0,'MMT'),(461,1,18000,0,'MVT'),(462,0,13800,0,'LMT'),(462,1,14400,0,'MUT'),(463,0,10856,0,'LMT'),(463,1,10800,0,'EAT'),(464,0,13312,0,'LMT'),(464,1,14400,0,'RET'),(465,0,12344,0,'LMT'),(465,1,12344,0,'TMT'),(465,2,12600,0,'IRST'),(465,3,18000,1,'IRDT'),(465,4,14400,0,'IRST'),(465,5,16200,1,'IRDT'),(466,0,8440,0,'JMT'),(466,1,10800,1,'IDT'),(466,2,7200,0,'IST'),(466,3,14400,1,'IDDT'),(467,0,-18432,0,'KMT'),(467,1,-18000,0,'EST'),(467,2,-14400,1,'EDT'),(468,0,32400,0,'CJT'),(468,1,36000,1,'JDT'),(468,2,32400,0,'JST'),(469,0,39600,0,'MHT'),(469,1,-43200,0,'KWAT'),(469,2,43200,0,'MHT'),(470,0,3164,0,'LMT'),(470,1,7200,1,'CEST'),(470,2,3600,0,'CET'),(470,3,7200,0,'EET'),(471,0,7200,1,'MEST'),(471,1,3600,0,'MET'),(471,2,7200,1,'MEST'),(471,3,3600,0,'MET'),(472,0,-25200,0,'MST'),(473,0,-21600,1,'MDT'),(473,1,-25200,0,'MST'),(473,2,-21600,1,'MWT'),(473,3,-21600,1,'MPT'),(474,0,-28084,0,'LMT'),(474,1,-25200,0,'MST'),(474,2,-28800,0,'PST'),(474,3,-25200,1,'PDT'),(474,4,-25200,1,'PWT'),(474,5,-25200,1,'PPT'),(475,0,-25540,0,'LMT'),(475,1,-25200,0,'MST'),(475,2,-21600,0,'CST'),(475,3,-28800,0,'PST'),(475,4,-21600,1,'MDT'),(476,0,-23796,0,'LMT'),(476,1,-25200,0,'MST'),(476,2,-21600,0,'CST'),(476,3,-18000,1,'CDT'),(476,4,-18000,1,'CWT'),(477,0,45000,1,'NZST'),(477,1,41400,0,'NZMT'),(477,2,43200,1,'NZST'),(477,3,46800,1,'NZDT'),(477,4,43200,0,'NZST'),(477,5,43200,0,'NZST'),(478,0,44028,0,'LMT'),(478,1,49500,1,'CHADT'),(478,2,45900,0,'CHAST'),(478,3,45900,0,'CHAST'),(479,0,-21600,1,'MDT'),(479,1,-25200,0,'MST'),(479,2,-21600,1,'MWT'),(479,3,-21600,1,'MPT'),(480,0,29152,0,'LMT'),(480,1,32400,1,'CDT'),(480,2,28800,0,'CST'),(481,0,-25200,1,'PDT'),(481,1,-28800,0,'PST'),(481,2,-25200,1,'PWT'),(481,3,-25200,1,'PPT'),(482,0,-41216,0,'LMT'),(482,1,-41400,0,'SAMT'),(482,2,-39600,0,'WST'),(483,0,45000,1,'NZST'),(483,1,41400,0,'NZMT'),(483,2,43200,1,'NZST'),(483,3,46800,1,'NZDT'),(483,4,43200,0,'NZST'),(483,5,43200,0,'NZST'),(484,0,44028,0,'LMT'),(484,1,49500,1,'CHADT'),(484,2,45900,0,'CHAST'),(484,3,45900,0,'CHAST'),(485,0,-26248,0,'MMT'),(485,1,-25200,0,'EAST'),(485,2,-21600,1,'EASST'),(485,3,-21600,1,'EASST'),(485,4,-21600,0,'EAST'),(485,5,-18000,1,'EASST'),(485,6,-18000,1,'EASST'),(486,0,40396,0,'LMT'),(486,1,43200,1,'VUST'),(486,2,39600,0,'VUT'),(487,0,-43200,0,'PHOT'),(487,1,-39600,0,'PHOT'),(487,2,46800,0,'PHOT'),(488,0,-36000,0,'TKT'),(489,0,42820,0,'LMT'),(489,1,46800,1,'FJST'),(489,2,43200,0,'FJT'),(490,0,43200,0,'TVT'),(491,0,-21504,0,'LMT'),(491,1,-18000,0,'ECT'),(491,2,-21600,0,'GALT'),(492,0,-32388,0,'LMT'),(492,1,-32400,0,'GAMT'),(493,0,38388,0,'LMT'),(493,1,39600,0,'SBT'),(494,0,36000,0,'GST'),(494,1,36000,0,'ChST'),(495,0,-37800,0,'HST'),(495,1,-34200,1,'HDT'),(495,2,-34200,1,'HWT'),(495,3,-34200,1,'HPT'),(495,4,-36000,0,'HST'),(496,0,-36000,0,'HST'),(497,0,-38400,0,'LINT'),(497,1,-36000,0,'LINT'),(497,2,50400,0,'LINT'),(498,0,39600,0,'KOST'),(498,1,43200,0,'KOST'),(499,0,39600,0,'MHT'),(499,1,-43200,0,'KWAT'),(499,2,43200,0,'MHT'),(500,0,39600,0,'MHT'),(500,1,43200,0,'MHT'),(501,0,-33480,0,'LMT'),(501,1,-34200,0,'MART'),(502,0,-39600,0,'NST'),(502,1,-36000,1,'NDT'),(502,2,-39600,0,'BST'),(502,3,-39600,0,'SST'),(503,0,40060,0,'LMT'),(503,1,41400,0,'NRT'),(503,2,32400,0,'JST'),(503,3,43200,0,'NRT'),(504,0,-40800,0,'NUT'),(504,1,-41400,0,'NUT'),(504,2,-39600,0,'NUT'),(505,0,40320,0,'NMT'),(505,1,41400,0,'NFT'),(506,0,39948,0,'LMT'),(506,1,43200,1,'NCST'),(506,2,39600,0,'NCT'),(506,3,43200,1,'NCST'),(506,4,39600,0,'NCT'),(507,0,-40968,0,'LMT'),(507,1,-41400,0,'SAMT'),(507,2,-39600,0,'NST'),(507,3,-39600,0,'BST'),(507,4,-39600,0,'SST'),(508,0,32400,0,'PWT'),(509,0,-30600,0,'PNT'),(509,1,-28800,0,'PST'),(510,0,39600,0,'PONT'),(511,0,36000,0,'PGT'),(512,0,-37800,0,'CKT'),(512,1,-36000,0,'CKT'),(512,2,-34200,1,'CKHST'),(513,0,32400,0,'MPT'),(513,1,36000,0,'MPT'),(513,2,36000,0,'ChST'),(514,0,-40968,0,'LMT'),(514,1,-41400,0,'SAMT'),(514,2,-39600,0,'NST'),(514,3,-39600,0,'BST'),(514,4,-39600,0,'SST'),(515,0,-35896,0,'LMT'),(515,1,-36000,0,'TAHT'),(516,0,43200,0,'GILT'),(517,0,44400,0,'TOT'),(517,1,46800,0,'TOT'),(517,2,50400,1,'TOST'),(517,3,46800,0,'TOT'),(517,4,50400,1,'TOST'),(518,0,36000,0,'TRUT'),(519,0,43200,0,'WAKT'),(520,0,43200,0,'WFT'),(521,0,36000,0,'TRUT'),(522,0,5040,0,'WMT'),(522,1,7200,1,'CEST'),(522,2,3600,0,'CET'),(522,3,7200,1,'CEST'),(522,4,3600,0,'CET'),(522,5,10800,1,'EEST'),(522,6,7200,0,'EET'),(522,7,7200,0,'EET'),(522,8,7200,1,'CEST'),(522,9,3600,0,'CET'),(523,0,-2192,0,'LMT'),(523,1,3600,1,'WEST'),(523,2,0,0,'WET'),(523,3,3600,1,'WEST'),(523,4,0,0,'WET'),(523,5,7200,1,'WEMT'),(523,6,3600,0,'CET'),(523,7,3600,0,'CET'),(523,8,7200,1,'CEST'),(523,9,3600,1,'WEST'),(523,10,0,0,'WET'),(524,0,32400,1,'CDT'),(524,1,28800,0,'CST'),(525,0,30600,0,'KST'),(525,1,32400,0,'KST'),(525,2,32400,1,'KDT'),(525,3,28800,0,'KST'),(525,4,36000,1,'KDT'),(526,0,24925,0,'SMT'),(526,1,25200,0,'MALT'),(526,2,26400,1,'MALST'),(526,3,26400,0,'MALT'),(526,4,27000,0,'MALT'),(526,5,32400,0,'JST'),(526,6,27000,0,'SGT'),(526,7,28800,0,'SGT'),(527,0,7016,0,'IMT'),(527,1,10800,1,'EEST'),(527,2,7200,0,'EET'),(527,3,14400,1,'TRST'),(527,4,10800,0,'TRT'),(527,5,10800,1,'EEST'),(527,6,7200,0,'EET'),(527,7,10800,1,'EEST'),(527,8,7200,0,'EET'),(528,0,0,0,'UCT'),(529,0,-36000,0,'CAT'),(529,1,-32400,1,'CAWT'),(529,2,-32400,1,'CAPT'),(529,3,-36000,0,'AHST'),(529,4,-32400,1,'AHDT'),(529,5,-32400,0,'YST'),(529,6,-28800,1,'AKDT'),(529,7,-32400,0,'AKST'),(530,0,-39600,0,'NST'),(530,1,-36000,1,'NWT'),(530,2,-36000,1,'NPT'),(530,3,-39600,0,'BST'),(530,4,-36000,1,'BDT'),(530,5,-36000,0,'AHST'),(530,6,-32400,1,'HADT'),(530,7,-36000,0,'HAST'),(531,0,-21600,1,'MDT'),(531,1,-25200,0,'MST'),(531,2,-21600,1,'MWT'),(532,0,-18000,1,'CDT'),(532,1,-21600,0,'CST'),(532,2,-18000,0,'EST'),(532,3,-18000,1,'CWT'),(532,4,-18000,1,'CPT'),(533,0,-18000,1,'CDT'),(533,1,-21600,0,'CST'),(533,2,-18000,1,'CWT'),(533,3,-18000,1,'CPT'),(533,4,-18000,0,'EST'),(533,5,-14400,1,'EDT'),(534,0,-14400,1,'EDT'),(534,1,-18000,0,'EST'),(534,2,-14400,1,'EWT'),(534,3,-14400,1,'EPT'),(535,0,-37800,0,'HST'),(535,1,-34200,1,'HDT'),(535,2,-34200,1,'HWT'),(535,3,-34200,1,'HPT'),(535,4,-36000,0,'HST'),(536,0,-18000,1,'CDT'),(536,1,-21600,0,'CST'),(536,2,-18000,1,'CWT'),(536,3,-18000,1,'CPT'),(536,4,-18000,0,'EST'),(537,0,-19931,0,'LMT'),(537,1,-21600,0,'CST'),(537,2,-18000,0,'EST'),(537,3,-14400,1,'EWT'),(537,4,-14400,1,'EPT'),(537,5,-14400,1,'EDT'),(538,0,-21600,1,'MDT'),(538,1,-25200,0,'MST'),(538,2,-21600,1,'MWT'),(538,3,-21600,1,'MPT'),(539,0,-25200,1,'PDT'),(539,1,-28800,0,'PST'),(539,2,-25200,1,'PWT'),(539,3,-25200,1,'PPT'),(540,0,-25200,1,'PDT'),(540,1,-28800,0,'PST'),(540,2,-25200,1,'PWT'),(540,3,-25200,1,'PPT'),(541,0,-40968,0,'LMT'),(541,1,-41400,0,'SAMT'),(541,2,-39600,0,'NST'),(541,3,-39600,0,'BST'),(541,4,-39600,0,'SST'),(542,0,0,0,'UTC'),(543,0,0,0,'UTC'),(544,0,9000,0,'MMT'),(544,1,12648,1,'MST'),(544,2,9048,0,'MMT'),(544,3,16248,1,'MDST'),(544,4,10800,0,'MSK'),(544,5,14400,1,'MSD'),(544,6,18000,1,'MSD'),(544,7,7200,0,'EET'),(544,8,10800,0,'MSK'),(544,9,14400,1,'MSD'),(544,10,10800,1,'EEST'),(544,11,7200,0,'EET'),(545,0,3600,1,'WEST'),(545,1,0,0,'WET'),(546,0,0,0,'UTC');
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password` char(41) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','root','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0),('127.0.0.1','root','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0),('localhost','','','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0),('localhost','pma','','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0),('%','','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0),('%','root','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `phpmyadmin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `phpmyadmin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `phpmyadmin`;

--
-- Table structure for table `pma_bookmark`
--

DROP TABLE IF EXISTS `pma_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_bookmark`
--

LOCK TABLES `pma_bookmark` WRITE;
/*!40000 ALTER TABLE `pma_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_column_info`
--

DROP TABLE IF EXISTS `pma_column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_column_info`
--

LOCK TABLES `pma_column_info` WRITE;
/*!40000 ALTER TABLE `pma_column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_designer_coords`
--

DROP TABLE IF EXISTS `pma_designer_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_designer_coords`
--

LOCK TABLES `pma_designer_coords` WRITE;
/*!40000 ALTER TABLE `pma_designer_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_designer_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_history`
--

DROP TABLE IF EXISTS `pma_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_history`
--

LOCK TABLES `pma_history` WRITE;
/*!40000 ALTER TABLE `pma_history` DISABLE KEYS */;
INSERT INTO `pma_history` VALUES (1,'root','db_akademik','','2013-05-25 03:06:29','CREATE DATABASE `db_akademik`;'),(2,'root','mysql','user','2013-05-27 12:59:06','SELECT * FROM `user`'),(3,'root','mysql','user','2013-05-27 12:59:31','SELECT * FROM `user`'),(4,'root','mysql','user','2013-05-27 12:59:44','SELECT * FROM `user`'),(5,'root','mysql','user','2013-05-27 13:00:29','SELECT * FROM `user`'),(6,'root','mysql','user','2013-05-27 13:00:50','SELECT * FROM `user`'),(7,'root','mysql','db','2013-05-27 13:01:08','SELECT * FROM `db`'),(8,'root','','','2013-05-27 13:03:24','SELECT *,       IF(`Password` = _latin1 \'\', \'N\', \'Y\') AS \'Password\'  FROM `mysql`.`user` ORDER BY `User` ASC, `Host` ASC;'),(9,'root','','','2013-05-27 13:04:07','SELECT *,       IF(`Password` = _latin1 \'\', \'N\', \'Y\') AS \'Password\'  FROM `mysql`.`user` ORDER BY `User` ASC, `Host` ASC;'),(10,'root','','','2013-05-27 13:08:20','SELECT *,       IF(`Password` = _latin1 \'\', \'N\', \'Y\') AS \'Password\'  FROM `mysql`.`user` ORDER BY `User` ASC, `Host` ASC;'),(11,'root','','','2013-05-27 13:10:27','SELECT *,       IF(`Password` = _latin1 \'\', \'N\', \'Y\') AS \'Password\'  FROM `mysql`.`user` ORDER BY `User` ASC, `Host` ASC;'),(12,'root','','','2013-05-27 13:12:01','SELECT *,       IF(`Password` = _latin1 \'\', \'N\', \'Y\') AS \'Password\'  FROM `mysql`.`user` ORDER BY `User` ASC, `Host` ASC;'),(13,'root','','','2013-05-27 13:12:39','SELECT *,       IF(`Password` = _latin1 \'\', \'N\', \'Y\') AS \'Password\'  FROM `mysql`.`user` ORDER BY `User` ASC, `Host` ASC;'),(14,'root','akademik112','absen','2013-05-27 15:08:54','SELECT * FROM `absen`'),(15,'root','akademik112','admin','2013-05-27 15:08:58','SELECT * FROM `admin`'),(16,'root','akademik112','admin','2013-05-27 15:09:06','SELECT * FROM `admin`'),(17,'root','akademik112','admin','2013-05-27 15:09:30','SELECT * FROM `admin`'),(18,'root','akademik112','guru','2013-05-27 15:09:33','SELECT * FROM `guru`'),(19,'root','jbsakad','angkatan','2013-05-27 15:39:53','SELECT * FROM `angkatan`'),(20,'root','jbsakad','siswa','2013-05-27 15:40:11','SELECT * FROM `siswa`'),(21,'root','jbsakad','nap','2013-05-27 15:42:48','SELECT * FROM `nap`'),(22,'root','akademik112','guru','2013-05-28 00:36:20','SELECT * FROM `guru`'),(23,'root','jbsakad','departemen','2013-06-17 13:45:32','SELECT * FROM `departemen`'),(24,'root','jbsakad','guru','2013-06-17 14:00:02','SELECT * FROM `guru`'),(25,'root','jbsakad','statusguru','2013-06-17 14:00:38','SELECT * FROM `statusguru`'),(26,'root','jbsakad','nap','2013-06-17 14:00:53','SELECT * FROM `nap`'),(27,'root','jbsakad','nau','2013-06-17 14:00:58','SELECT * FROM `nau`'),(28,'root','jbsakad','guru','2013-06-17 14:01:13','SELECT * FROM `guru`'),(29,'root','jbsakad','infonap','2013-06-17 14:01:36','SELECT * FROM `infonap`'),(30,'root','jbsakad','infojadwal','2013-06-17 14:01:40','SELECT * FROM `infojadwal`'),(31,'root','jbsakad','kejadianpenting','2013-06-17 14:01:48','SELECT * FROM `kejadianpenting`'),(32,'root','jbsakad','kriteriakejadian','2013-06-17 14:02:15','SELECT * FROM `kriteriakejadian`'),(33,'root','jbsakad','departemen','2013-06-17 14:05:17','SELECT * FROM `departemen`'),(34,'root','akademik112','admin','2013-06-17 14:52:31','SELECT * FROM `admin`'),(35,'root','akademik112','admin','2013-06-17 14:56:44','SELECT * FROM `admin`'),(36,'root','db_akademik','user_admin','2013-06-17 14:58:22','SELECT * FROM `user_admin`'),(37,'root','db_akademik','tbl_ruangan','2013-06-17 14:58:47','SELECT * FROM `tbl_ruangan`'),(38,'root','db_akademik','tbl_nilai','2013-06-17 14:58:49','SELECT * FROM `tbl_nilai`'),(39,'root','db_akademik','tbl_jadwal','2013-06-17 14:58:51','SELECT * FROM `tbl_jadwal`'),(40,'root','db_akademik','setup_pelajaran','2013-06-17 14:58:53','SELECT * FROM `setup_pelajaran`'),(41,'root','db_akademik','setup_kelas','2013-06-17 14:58:54','SELECT * FROM `setup_kelas`'),(42,'root','db_akademik','data_siswa','2013-06-17 14:58:55','SELECT * FROM `data_siswa`'),(43,'root','db_akademik','data_guru','2013-06-17 14:58:56','SELECT * FROM `data_guru`'),(44,'root','db_sima','','2013-06-17 15:55:32','CREATE DATABASE `db_sima`;'),(45,'root','jbsakad','siswa','2013-06-18 08:29:04','SELECT * FROM `siswa`'),(46,'root','jbsakad','siswa','2013-06-19 13:22:00','SELECT * FROM `siswa`');
/*!40000 ALTER TABLE `pma_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_pdf_pages`
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_pdf_pages`
--

LOCK TABLES `pma_pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma_pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_relation`
--

DROP TABLE IF EXISTS `pma_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_relation`
--

LOCK TABLES `pma_relation` WRITE;
/*!40000 ALTER TABLE `pma_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_coords`
--

DROP TABLE IF EXISTS `pma_table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_coords`
--

LOCK TABLES `pma_table_coords` WRITE;
/*!40000 ALTER TABLE `pma_table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_info`
--

DROP TABLE IF EXISTS `pma_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_info`
--

LOCK TABLES `pma_table_info` WRITE;
/*!40000 ALTER TABLE `pma_table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

--
-- Current Database: `webauth`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webauth` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `webauth`;

--
-- Table structure for table `user_pwd`
--

DROP TABLE IF EXISTS `user_pwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pwd`
--

LOCK TABLES `user_pwd` WRITE;
/*!40000 ALTER TABLE `user_pwd` DISABLE KEYS */;
INSERT INTO `user_pwd` VALUES ('xampp','wampp');
/*!40000 ALTER TABLE `user_pwd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `akademik112`
--

USE `akademik112`;

--
-- Current Database: `cdcol`
--

USE `cdcol`;

--
-- Current Database: `db_akademik`
--

USE `db_akademik`;

--
-- Current Database: `db_sima`
--

USE `db_sima`;

--
-- Final view structure for view `laporan`
--

/*!50001 DROP TABLE `laporan`*/;
/*!50001 DROP VIEW IF EXISTS `laporan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `laporan` AS select `b`.`kode_barang` AS `kode_barang`,`b`.`nama_barang` AS `nama_barang`,`b`.`no_register` AS `no_register`,`b`.`tanggal` AS `tanggal`,`b`.`asal_usul` AS `asal_usul`,`b`.`harga` AS `harga`,`j`.`nama_jenis` AS `nama_jenis`,`b`.`lokasi` AS `lokasi`,`k`.`nama_kondisi` AS `nama_kondisi`,`b`.`keterangan` AS `keterangan` from ((`barang` `b` join `jenis` `j`) join `kondisi` `k`) where ((`b`.`id_jenis` = `j`.`id_jenis`) and (`b`.`id_kondisi` = `k`.`id_kondisi`)) order by `b`.`nama_barang` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `jbsakad`
--

USE `jbsakad`;

--
-- Current Database: `jbscad`
--

USE `jbscad`;

--
-- Current Database: `jbsclient`
--

USE `jbsclient`;

--
-- Current Database: `jbsfina`
--

USE `jbsfina`;

--
-- Current Database: `jbsperpus`
--

USE `jbsperpus`;

--
-- Current Database: `jbssdm`
--

USE `jbssdm`;

--
-- Current Database: `jbssms`
--

USE `jbssms`;

--
-- Current Database: `jbsumum`
--

USE `jbsumum`;

--
-- Current Database: `jbsuser`
--

USE `jbsuser`;

--
-- Current Database: `jbsvcr`
--

USE `jbsvcr`;

--
-- Current Database: `mysql`
--

USE `mysql`;

--
-- Current Database: `phpmyadmin`
--

USE `phpmyadmin`;

--
-- Current Database: `test`
--

USE `test`;

--
-- Current Database: `webauth`
--

USE `webauth`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-04 16:40:22