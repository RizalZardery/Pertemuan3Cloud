-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: akademik
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `NID` varchar(10) NOT NULL,
  `Nama_dosen` varchar(25) DEFAULT NULL,
  `Tempat_lahir` varchar(20) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `Jurusan` varchar(3) DEFAULT NULL,
  `Alamat` varchar(40) DEFAULT NULL,
  `Kota` varchar(20) DEFAULT NULL,
  `No_Telp` varchar(12) DEFAULT NULL,
  `Pend_Terakhir` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES ('1020300001','Sinta','Bantul','1960-08-01','TI','Jl.Mawar No.2','Yogya','081788888888','S2'),('1020300002','Suharyono','Klaten','1980-05-30','SI','Jl.Bareng No.52','Klaten','085644444444','S3'),('1020300003','Pujiyanto','Sleman','1975-09-02','TI','Jl.Melati No.11','Yogya','085799999999','S2'),('1020300004','Suharti','Semarang','1985-10-10','TK','Jl.Anggur No.1','Solo','085755555555','S2'),('1020300005','Fransiska','Bantul','1978-01-23','MI','Jl.Panglima No.2','Yogya','08922222222','S3'),('1020300006','Paryono','Cilacap','1979-05-21','MI','Jl.Wolter No.4','Yogya','089222299222','S2'),('1020300007','Indri','Jakarta','1958-04-12','KA','Jl.Pengok No.2','Yogya','089222222333','S3'),('1020300008','Raymond','Sydney','1978-12-23','TI','Jl.Tentara No.5','Yogya','085644444443','S3'),('1020300009','Rika','Banyuwangi','1982-11-30','MI','Jl.Panglima No.44','Yogya','085644444344','S2');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `Kode_jur` varchar(3) NOT NULL,
  `Nama_jurusan` varchar(30) DEFAULT NULL,
  `Jenjang` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Kode_jur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES ('KA','Komperitasi Akutansi','D3'),('MI','Manajemen Informasi','D3'),('SI','Sistem Informasi','S1'),('TI','Teknik Informatika','S1'),('TK','Teknik Komputer','D3');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krs` (
  `NIM` varchar(9) NOT NULL,
  `kode_mkul` varchar(7) DEFAULT NULL,
  `NID` varchar(10) DEFAULT NULL,
  `Tahun_akademik` int(4) DEFAULT NULL,
  `Semester` int(1) DEFAULT NULL,
  `Nilai` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
INSERT INTO `krs` VALUES ('143110001','TK02','1020300004',2015,3,'C'),('143210001','KA01','1020300007',2015,3,'C'),('143310001','MI02','1020300005',2015,3,'B'),('145410001','TI01','1020300001',2014,1,'A'),('145410002','TI02','1020300003',2014,1,'B'),('145610001','SI01','1020300002',2013,2,'A');
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NIM` varchar(9) NOT NULL,
  `Nama_mahasiswa` varchar(25) DEFAULT NULL,
  `Tempat_lahir` varchar(20) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `Jenis_kelamin` enum('P','W') DEFAULT NULL,
  `Jurusan` varchar(3) DEFAULT NULL,
  `Alamat` varchar(40) DEFAULT NULL,
  `Kota` varchar(20) DEFAULT NULL,
  `Asal_sekolah` varchar(25) DEFAULT NULL,
  `No_telp` varchar(12) DEFAULT NULL,
  `Tgl_daftar` date DEFAULT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('143110001','Danang Septiawan','Klaten','1998-04-30','P','TK','Jl.Blibis No.5','Solo','SMA N 2','081328001104','2014-04-20'),('143210001','Harjono','Sleman','1998-04-30','P','KA','Jl.Pandawa No.5','Yogya','SMA N 3','081328001106','2014-03-10'),('143310001','Beta Sonata','Bantul','1998-04-30','W','MI','Jl.Seraton No.5','Yogya','SMA N 5','081328001105','2014-02-28'),('145410001','Felix Raharja','Bantul','1998-08-01','P','TI','Jl.Afandi No.56','Yogya','SMA BOPKRI 1','081328001122','2014-02-20'),('145410002','Rahmat Uman','Klaten','1998-04-30','P','TI','Jl.Jeruk No.5','Klaten','SMA N 1','081328001102','2014-07-05'),('145610001','Cicilia Rihastuti','Sleman','1998-04-30','W','SI','Jl.Arjuna No.5','Yogya','SMA BOPKRI 2','081328001103','2014-04-22');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matakuliah` (
  `kode_mkul` varchar(7) NOT NULL,
  `nama_matakuliah` varchar(30) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `semester` int(1) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`kode_mkul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES ('KA01','Akutansi Pengantar',3,1,'W'),('KA02','Hukum Pajak',2,2,'W'),('KA03','Perpajakan',2,3,'W'),('MT01','Matematika Bisnis',2,2,'P'),('MT02','Pemrograman Berorientasi Obyek',2,2,'W'),('MT03','Statistika Dasar',2,3,'p'),('SI01','SQA',2,3,'P'),('SI02','Pengantar Bisnis',3,4,'W'),('SI03','Teori Organisasi',2,4,'P'),('SI04','Matematika Dasar',3,1,'W'),('TI01','SBD',3,2,'W'),('TI02','ALPRO',3,1,'W'),('TK01','Dasar Teknik Listrik',3,1,'W'),('TK02','Fisika',3,3,'W'),('TK03','Admin Jaringan',2,5,'P');
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilaimahasiswa`
--

DROP TABLE IF EXISTS `nilaimahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilaimahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `IPK` decimal(3,2) DEFAULT NULL,
  `Keterangan` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilaimahasiswa`
--

LOCK TABLES `nilaimahasiswa` WRITE;
/*!40000 ALTER TABLE `nilaimahasiswa` DISABLE KEYS */;
INSERT INTO `nilaimahasiswa` VALUES ('145410001',3.25,'sangat memuaskan'),('145410002',2.89,'memuaskan'),('145610001',3.51,'cumlaude');
/*!40000 ALTER TABLE `nilaimahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-24  0:00:17
