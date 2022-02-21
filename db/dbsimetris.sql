/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.6.24-0ubuntu2 : Database - dbrachmi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbrachmi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbrachmi`;

/*Table structure for table `FAR_DET_NOSP` */

DROP TABLE IF EXISTS `FAR_DET_NOSP`;

CREATE TABLE `FAR_DET_NOSP` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `kode` int(8) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `harga_beli` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `tgl_pesan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `petugas_pesan` int(8) DEFAULT NULL,
  `tgl_terima` date DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `tgl_ed` date DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `petugas_terima` int(8) DEFAULT NULL,
  `kondisi` int(11) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `kirim` int(11) DEFAULT NULL,
  `harga_beli_suplier` int(11) DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `satuan_beli` char(20) DEFAULT NULL,
  `batch` char(20) DEFAULT NULL,
  `petugas_pencatat` int(11) DEFAULT '0',
  `ppn` int(11) DEFAULT '0',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=6116 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_DET_NOSP_INAP` */

DROP TABLE IF EXISTS `FAR_DET_NOSP_INAP`;

CREATE TABLE `FAR_DET_NOSP_INAP` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `kode` int(8) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `harga_beli` int(11) DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `tgl_pesan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `petugas_pesan` int(8) DEFAULT NULL,
  `tgl_terima` date DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `tgl_ed` date DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `petugas_terima` int(8) DEFAULT NULL,
  `kondisi` int(11) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `kirim` int(11) DEFAULT NULL,
  `harga_beli_suplier` int(11) DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `satuan_beli` char(20) DEFAULT NULL,
  `batch` char(20) DEFAULT NULL,
  `petugas_pencatat` int(11) NOT NULL DEFAULT '0',
  `ppn` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3497 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_DET_TRN_STOK_KELUAR` */

DROP TABLE IF EXISTS `FAR_DET_TRN_STOK_KELUAR`;

CREATE TABLE `FAR_DET_TRN_STOK_KELUAR` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(8) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `no_trn` int(11) DEFAULT NULL,
  `satuan` char(15) DEFAULT NULL,
  `permintaan` int(11) DEFAULT '0',
  PRIMARY KEY (`no_urut`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=92615 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_DET_TRN_STOK_KELUAR_TMP` */

DROP TABLE IF EXISTS `FAR_DET_TRN_STOK_KELUAR_TMP`;

CREATE TABLE `FAR_DET_TRN_STOK_KELUAR_TMP` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(8) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `no_trn` int(11) DEFAULT NULL,
  `satuan` varchar(15) DEFAULT NULL,
  `nama_brg` char(30) DEFAULT NULL,
  `permintaan` int(11) DEFAULT '0',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=84497 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_DET_TRN_TMP` */

DROP TABLE IF EXISTS `FAR_DET_TRN_TMP`;

CREATE TABLE `FAR_DET_TRN_TMP` (
  `no_urut` int(10) NOT NULL AUTO_INCREMENT,
  `no_trn` int(11) DEFAULT NULL,
  `kode` varchar(15) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `kesan` varchar(255) DEFAULT NULL,
  `dokter` varchar(30) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `no_reg` varchar(8) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `infra` int(11) DEFAULT NULL,
  `jm` int(11) DEFAULT NULL,
  `tuslah` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `idx` double DEFAULT NULL,
  `hb` double DEFAULT NULL,
  `kembali` double DEFAULT NULL,
  `kel` char(3) DEFAULT '-',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=1514980 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_NOSP` */

DROP TABLE IF EXISTS `FAR_NOSP`;

CREATE TABLE `FAR_NOSP` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` char(6) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `meterai` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `asuransi` char(30) DEFAULT NULL,
  `iol` int(11) DEFAULT '0',
  `suplier` char(3) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=39402 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_NOSP_INAP` */

DROP TABLE IF EXISTS `FAR_NOSP_INAP`;

CREATE TABLE `FAR_NOSP_INAP` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` char(6) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `meterai` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `asuransi` char(30) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `suplier` char(3) DEFAULT NULL,
  PRIMARY KEY (`no_urut`),
  UNIQUE KEY `no_sp` (`no_sp`)
) ENGINE=MyISAM AUTO_INCREMENT=903 DEFAULT CHARSET=latin1;

/*Table structure for table `FAR_TRN_STOK_KELUAR` */

DROP TABLE IF EXISTS `FAR_TRN_STOK_KELUAR`;

CREATE TABLE `FAR_TRN_STOK_KELUAR` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `unit` char(20) DEFAULT NULL,
  `petugas` char(20) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jam` time DEFAULT NULL,
  `pemesan` char(30) DEFAULT NULL,
  `tgl_respon` date DEFAULT NULL,
  `jam_respon` time DEFAULT NULL,
  `kirim` char(1) DEFAULT 'B',
  `perbarui` char(4) DEFAULT '-',
  `iol` int(1) DEFAULT '0',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=60238 DEFAULT CHARSET=latin1;

/*Table structure for table `KEP_MUTU_KET` */

DROP TABLE IF EXISTS `KEP_MUTU_KET`;

CREATE TABLE `KEP_MUTU_KET` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` char(7) DEFAULT NULL,
  `ket` text,
  `unit` char(20) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

/*Table structure for table `KEP_PLG` */

DROP TABLE IF EXISTS `KEP_PLG`;

CREATE TABLE `KEP_PLG` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `no_cm` char(8) DEFAULT NULL,
  `no_reg` char(8) DEFAULT NULL,
  `tgl_out` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `pin` char(10) DEFAULT '-',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=21705 DEFAULT CHARSET=latin1;

/*Table structure for table `MR_ICD` */

DROP TABLE IF EXISTS `MR_ICD`;

CREATE TABLE `MR_ICD` (
  `dtype` varchar(5) DEFAULT NULL,
  `icd` varchar(10) DEFAULT NULL,
  `diagnosa` varchar(150) DEFAULT NULL,
  `no_urut` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dtd` char(10) DEFAULT NULL,
  `stp` char(6) DEFAULT NULL,
  PRIMARY KEY (`no_urut`),
  KEY `icd` (`icd`)
) ENGINE=MyISAM AUTO_INCREMENT=12312 DEFAULT CHARSET=latin1;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `ant_anak` */

DROP TABLE IF EXISTS `ant_anak`;

CREATE TABLE `ant_anak` (
  `id_ant_anak` int(5) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1=aktif, 2=nonaktif',
  PRIMARY KEY (`id_ant_anak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ant_kandungan` */

DROP TABLE IF EXISTS `ant_kandungan`;

CREATE TABLE `ant_kandungan` (
  `id_ant_kandungan` int(5) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1=aktif, 2=nonaktif',
  PRIMARY KEY (`id_ant_kandungan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `bangsal_antrian_kamar` */

DROP TABLE IF EXISTS `bangsal_antrian_kamar`;

CREATE TABLE `bangsal_antrian_kamar` (
  `id_bangsal_antrian_kamar` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(40) DEFAULT NULL,
  `alamat` char(60) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `no_bed` char(3) DEFAULT NULL,
  `telpon` char(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `catatan` char(200) DEFAULT NULL,
  PRIMARY KEY (`id_bangsal_antrian_kamar`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `bangsal_diagnosa` */

DROP TABLE IF EXISTS `bangsal_diagnosa`;

CREATE TABLE `bangsal_diagnosa` (
  `id_bangsal_diagnosa` int(11) NOT NULL AUTO_INCREMENT,
  `icd` char(10) DEFAULT NULL,
  `catatan` char(200) DEFAULT NULL,
  `ke` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bangsal_diagnosa`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Table structure for table `bangsal_ket_antri` */

DROP TABLE IF EXISTS `bangsal_ket_antri`;

CREATE TABLE `bangsal_ket_antri` (
  `id_ket_antri` int(11) NOT NULL AUTO_INCREMENT,
  `ket_antri` char(20) DEFAULT NULL,
  `warna` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_ket_antri`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `bangsal_status_icd` */

DROP TABLE IF EXISTS `bangsal_status_icd`;

CREATE TABLE `bangsal_status_icd` (
  `id_bangsal_status_icd` int(11) NOT NULL AUTO_INCREMENT,
  `bangsal_status_icd` char(15) DEFAULT NULL,
  PRIMARY KEY (`id_bangsal_status_icd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `nama` char(40) COLLATE latin1_general_ci DEFAULT NULL,
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=1035 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id_booking` int(100) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `id_catatan_medik` int(8) NOT NULL,
  `booking_tanggal` date NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(8) NOT NULL,
  `status` char(1) NOT NULL COMMENT '1.Datang, 2.Belum Datang',
  `keterangan` varchar(200) NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `id_sesi` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_booking`)
) ENGINE=InnoDB AUTO_INCREMENT=10793 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `id_buku` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `tahun` varchar(10) DEFAULT NULL,
  `kategori` varchar(50) NOT NULL,
  `dokumen` varchar(500) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Table structure for table `catatan_medik` */

DROP TABLE IF EXISTS `catatan_medik`;

CREATE TABLE `catatan_medik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` char(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `dokter` */

DROP TABLE IF EXISTS `dokter`;

CREATE TABLE `dokter` (
  `id_dokter` int(10) NOT NULL AUTO_INCREMENT,
  `nama_dokter` varchar(100) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1. Aktif, 2. Nonaktif',
  `id_unit` int(5) NOT NULL,
  `aktif` int(1) NOT NULL,
  `ket` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dokter`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `far_asuransi` */

DROP TABLE IF EXISTS `far_asuransi`;

CREATE TABLE `far_asuransi` (
  `id_far_asuransi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_far_asuransi` char(30) NOT NULL,
  PRIMARY KEY (`id_far_asuransi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_copy_resep_tmp` */

DROP TABLE IF EXISTS `far_copy_resep_tmp`;

CREATE TABLE `far_copy_resep_tmp` (
  `id_far_copy_resep_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_register` int(11) DEFAULT NULL,
  `nama_petugas` char(70) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_copy_resep_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Table structure for table `far_ctk_retur` */

DROP TABLE IF EXISTS `far_ctk_retur`;

CREATE TABLE `far_ctk_retur` (
  `id_ctk_retur` int(11) NOT NULL AUTO_INCREMENT,
  `id_retur` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_ctk_retur`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

/*Table structure for table `far_ctk_sp_tmp` */

DROP TABLE IF EXISTS `far_ctk_sp_tmp`;

CREATE TABLE `far_ctk_sp_tmp` (
  `id_far_ctk_sp_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_trn` int(8) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `str` char(30) DEFAULT NULL,
  `nama_apoteker` char(60) DEFAULT NULL,
  PRIMARY KEY (`id_far_ctk_sp_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_nosp` */

DROP TABLE IF EXISTS `far_det_nosp`;

CREATE TABLE `far_det_nosp` (
  `id_det_no_sp` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `id_barang` int(8) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `harga_beli` int(11) DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `petugas_pesan` int(8) DEFAULT NULL,
  `tgl_ed` date DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `petugas_terima` int(8) DEFAULT NULL,
  `kondisi` int(11) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `kirim` int(11) DEFAULT NULL,
  `harga_beli_suplier` int(11) DEFAULT NULL,
  `satuan_beli` char(20) DEFAULT NULL,
  `batch` char(20) DEFAULT NULL,
  `petugas_pencatat` int(11) DEFAULT '0',
  `ppn` int(11) DEFAULT '0',
  `tanggal_ed` date DEFAULT NULL,
  `isi` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_det_no_sp`),
  KEY `no_sp` (`no_sp`),
  KEY `id_barang` (`id_barang`)
) ENGINE=MyISAM AUTO_INCREMENT=21421 DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_nosp_inap` */

DROP TABLE IF EXISTS `far_det_nosp_inap`;

CREATE TABLE `far_det_nosp_inap` (
  `id_det_no_sp` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `id_barang` int(8) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `harga_beli` int(11) DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `petugas_pesan` int(8) DEFAULT NULL,
  `tgl_ed` date DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `petugas_terima` int(8) DEFAULT NULL,
  `kondisi` int(11) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `kirim` int(11) DEFAULT NULL,
  `harga_beli_suplier` int(11) DEFAULT NULL,
  `satuan_beli` char(20) DEFAULT NULL,
  `batch` char(20) DEFAULT NULL,
  `petugas_pencatat` int(11) DEFAULT '0',
  `ppn` int(11) DEFAULT '0',
  `tanggal_ed` date DEFAULT NULL,
  `isi` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_det_no_sp`),
  KEY `no_sp` (`no_sp`),
  KEY `id_barang` (`id_barang`)
) ENGINE=MyISAM AUTO_INCREMENT=5506 DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_trn` */

DROP TABLE IF EXISTS `far_det_trn`;

CREATE TABLE `far_det_trn` (
  `id_far_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_far_trn` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `idx` double DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `poli_inap` int(11) DEFAULT NULL,
  `dosis` int(4) DEFAULT NULL,
  `hari` double DEFAULT NULL,
  `id_far_satuan_minum` int(11) DEFAULT NULL,
  `resep` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_det_trn`),
  KEY `NO_TRN` (`id_far_trn`)
) ENGINE=MyISAM AUTO_INCREMENT=151860 DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_trn_copy` */

DROP TABLE IF EXISTS `far_det_trn_copy`;

CREATE TABLE `far_det_trn_copy` (
  `id_far_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_far_trn` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `idx` double DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `poli_inap` int(11) DEFAULT NULL,
  `dosis` int(11) DEFAULT NULL,
  `hari` int(11) DEFAULT NULL,
  `id_far_satuan_minum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_det_trn`),
  KEY `NO_TRN` (`id_far_trn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_trn_copyxx` */

DROP TABLE IF EXISTS `far_det_trn_copyxx`;

CREATE TABLE `far_det_trn_copyxx` (
  `id_far_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_far_trn` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `idx` double DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `poli_inap` int(11) DEFAULT NULL,
  `dosis` int(4) DEFAULT NULL,
  `hari` double DEFAULT NULL,
  `id_far_satuan_minum` int(11) DEFAULT NULL,
  `resep` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_det_trn`),
  KEY `NO_TRN` (`id_far_trn`)
) ENGINE=MyISAM AUTO_INCREMENT=2666 DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_trn_fix` */

DROP TABLE IF EXISTS `far_det_trn_fix`;

CREATE TABLE `far_det_trn_fix` (
  `id_far_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_far_trn` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `idx` double DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `poli_inap` int(11) DEFAULT NULL,
  `dosis` int(4) DEFAULT NULL,
  `hari` double DEFAULT NULL,
  `id_far_satuan_minum` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `pph` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `resep` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_det_trn`),
  KEY `NO_TRN` (`id_far_trn`)
) ENGINE=MyISAM AUTO_INCREMENT=165368 DEFAULT CHARSET=latin1;

/*Table structure for table `far_det_trn_stok_keluar` */

DROP TABLE IF EXISTS `far_det_trn_stok_keluar`;

CREATE TABLE `far_det_trn_stok_keluar` (
  `id_far_det_trn_stok_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(8) NOT NULL DEFAULT '0',
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `id_trn` int(11) NOT NULL DEFAULT '0',
  `id_satuan` int(3) NOT NULL DEFAULT '0',
  `permintaan` int(11) NOT NULL DEFAULT '0',
  `harga_pokok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_det_trn_stok_keluar`),
  KEY `kode` (`id_barang`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Table structure for table `far_detil_retur_inap` */

DROP TABLE IF EXISTS `far_detil_retur_inap`;

CREATE TABLE `far_detil_retur_inap` (
  `id_detil_retur_inap` int(11) NOT NULL AUTO_INCREMENT,
  `id_retur_inap` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `catatan` char(150) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `no_sp` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detil_retur_inap`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `far_detil_retur_poli` */

DROP TABLE IF EXISTS `far_detil_retur_poli`;

CREATE TABLE `far_detil_retur_poli` (
  `id_detil_retur_poli` int(11) NOT NULL AUTO_INCREMENT,
  `id_retur_poli` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `catatan` char(150) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `no_sp` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `faktur` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_detil_retur_poli`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_faktur_cetak` */

DROP TABLE IF EXISTS `far_faktur_cetak`;

CREATE TABLE `far_faktur_cetak` (
  `id_far_faktur_cetak` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `suplier` char(50) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `tglAwal` date DEFAULT NULL,
  `tglAkhir` date DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_faktur_cetak`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `far_generik` */

DROP TABLE IF EXISTS `far_generik`;

CREATE TABLE `far_generik` (
  `id_far_generik` int(1) NOT NULL AUTO_INCREMENT,
  `nama_generik` char(20) NOT NULL,
  PRIMARY KEY (`id_far_generik`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_kel` */

DROP TABLE IF EXISTS `far_kel`;

CREATE TABLE `far_kel` (
  `id_far_kel` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) NOT NULL,
  PRIMARY KEY (`id_far_kel`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `far_kel_stok` */

DROP TABLE IF EXISTS `far_kel_stok`;

CREATE TABLE `far_kel_stok` (
  `id_kel_stok` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kel_stok` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_kel_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_ket_stok` */

DROP TABLE IF EXISTS `far_ket_stok`;

CREATE TABLE `far_ket_stok` (
  `id_far_ket_stok` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_far_ket_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Table structure for table `far_kode_lain` */

DROP TABLE IF EXISTS `far_kode_lain`;

CREATE TABLE `far_kode_lain` (
  `no_urut` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` char(30) NOT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_anfrah` */

DROP TABLE IF EXISTS `far_lap_anfrah`;

CREATE TABLE `far_lap_anfrah` (
  `id_far_lap_anfrah` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_awal` char(10) DEFAULT NULL,
  `tgl_akhir` char(10) DEFAULT NULL,
  `poli_inap` char(1) DEFAULT NULL,
  `nama_petugas` char(70) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` char(30) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `kelompok` int(11) DEFAULT NULL,
  `navi` int(1) DEFAULT NULL,
  `harga_pokok` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_lap_anfrah`)
) ENGINE=MyISAM AUTO_INCREMENT=69108 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_ctk_anfrah` */

DROP TABLE IF EXISTS `far_lap_ctk_anfrah`;

CREATE TABLE `far_lap_ctk_anfrah` (
  `id_far_lap_ctk_anfrah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_petugas` char(50) DEFAULT NULL,
  `no_sp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_lap_ctk_anfrah`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_pembelian_obat` */

DROP TABLE IF EXISTS `far_lap_pembelian_obat`;

CREATE TABLE `far_lap_pembelian_obat` (
  `id_far_lap` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `tanggal_faktur` date DEFAULT NULL,
  `tanggal_tempo` date DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `nama_suplier` char(60) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `harga_beli` int(3) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `meterai` int(8) DEFAULT NULL,
  `faktur` char(50) DEFAULT NULL,
  `hpp` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `master_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_lap`)
) ENGINE=MyISAM AUTO_INCREMENT=21052 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_penggunaan_obat` */

DROP TABLE IF EXISTS `far_lap_penggunaan_obat`;

CREATE TABLE `far_lap_penggunaan_obat` (
  `id_lap_penggunaan_obat` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  `ket` char(60) DEFAULT NULL,
  `id_penggunaan_obat` int(11) DEFAULT NULL,
  `poli_inap` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lap_penggunaan_obat`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_penjualan_tmp` */

DROP TABLE IF EXISTS `far_lap_penjualan_tmp`;

CREATE TABLE `far_lap_penjualan_tmp` (
  `id_far_lap_penjualan_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `nama_petugas` char(70) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nama_asuransi` char(50) DEFAULT NULL,
  `poli_inap` char(15) DEFAULT NULL,
  PRIMARY KEY (`id_far_lap_penjualan_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=1850 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_stok_elk` */

DROP TABLE IF EXISTS `far_lap_stok_elk`;

CREATE TABLE `far_lap_stok_elk` (
  `id_far_lap_stok_elk` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(60) DEFAULT NULL,
  `ket_stok` char(30) DEFAULT NULL,
  `masuk` int(11) DEFAULT NULL,
  `keluar` int(11) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `nama_satuan` char(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_register` int(8) DEFAULT NULL,
  `id_trn` int(8) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `nama_unit` char(35) DEFAULT NULL,
  `tgl_awal` char(10) DEFAULT NULL,
  `tgl_akhir` char(10) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_far_lap_stok_elk`)
) ENGINE=MyISAM AUTO_INCREMENT=32071 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_stok_limit` */

DROP TABLE IF EXISTS `far_lap_stok_limit`;

CREATE TABLE `far_lap_stok_limit` (
  `id_lap_stok_limit` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `kel_stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lap_stok_limit`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_tmp` */

DROP TABLE IF EXISTS `far_lap_tmp`;

CREATE TABLE `far_lap_tmp` (
  `id_far_lap_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `nama_petugas` char(100) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `id_obat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_lap_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;

/*Table structure for table `far_lap_trm_brg` */

DROP TABLE IF EXISTS `far_lap_trm_brg`;

CREATE TABLE `far_lap_trm_brg` (
  `id_trm_brg` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` int(11) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  `nbm` char(10) DEFAULT NULL,
  `sip` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_trm_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Table structure for table `far_log_stok` */

DROP TABLE IF EXISTS `far_log_stok`;

CREATE TABLE `far_log_stok` (
  `id_far_log_stok` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `stok_poli` double DEFAULT NULL,
  `stok_inap` double DEFAULT NULL,
  `kode` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_far_log_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=103089 DEFAULT CHARSET=latin1;

/*Table structure for table `far_navi_pinjam` */

DROP TABLE IF EXISTS `far_navi_pinjam`;

CREATE TABLE `far_navi_pinjam` (
  `id_pinjam` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_nosp` */

DROP TABLE IF EXISTS `far_nosp`;

CREATE TABLE `far_nosp` (
  `id_no_sp` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `meterai` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_asuransi` int(11) DEFAULT NULL,
  `iol` int(11) DEFAULT '0',
  `id_suplier` int(3) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `tanggal_tempo` date DEFAULT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `tanggal_faktur` date DEFAULT NULL,
  `id_penerima` int(11) DEFAULT NULL,
  `faktur` char(40) DEFAULT NULL,
  `pembayaran` int(1) DEFAULT NULL,
  `valid_keu` int(1) DEFAULT '0',
  PRIMARY KEY (`id_no_sp`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_suplier` (`id_suplier`),
  KEY `tanggal_faktur` (`tanggal_faktur`),
  KEY `id_petugas` (`id_petugas`),
  KEY `faktur` (`faktur`)
) ENGINE=MyISAM AUTO_INCREMENT=8171 DEFAULT CHARSET=latin1;

/*Table structure for table `far_nosp_inap` */

DROP TABLE IF EXISTS `far_nosp_inap`;

CREATE TABLE `far_nosp_inap` (
  `id_no_sp` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `meterai` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_asuransi` int(11) DEFAULT NULL,
  `iol` int(11) DEFAULT '0',
  `id_suplier` int(3) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `tanggal_tempo` date DEFAULT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `tanggal_faktur` date DEFAULT NULL,
  `id_penerima` int(11) DEFAULT NULL,
  `faktur` char(40) DEFAULT NULL,
  `pembayaran` int(1) DEFAULT NULL,
  `valid_keu` int(1) DEFAULT '0',
  PRIMARY KEY (`id_no_sp`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_suplier` (`id_suplier`),
  KEY `id_petugas` (`id_petugas`),
  KEY `tanggal_faktur` (`tanggal_faktur`),
  KEY `faktur` (`faktur`)
) ENGINE=MyISAM AUTO_INCREMENT=3070 DEFAULT CHARSET=latin1;

/*Table structure for table `far_nota_tmp` */

DROP TABLE IF EXISTS `far_nota_tmp`;

CREATE TABLE `far_nota_tmp` (
  `id_far_nota_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_far_trn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nama_petugas` char(70) DEFAULT NULL,
  PRIMARY KEY (`id_far_nota_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

/*Table structure for table `far_pabrik` */

DROP TABLE IF EXISTS `far_pabrik`;

CREATE TABLE `far_pabrik` (
  `id_far_pabrik` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) NOT NULL,
  PRIMARY KEY (`id_far_pabrik`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

/*Table structure for table `far_pembayaran` */

DROP TABLE IF EXISTS `far_pembayaran`;

CREATE TABLE `far_pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `pembayaran` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_penggunaan_obat` */

DROP TABLE IF EXISTS `far_penggunaan_obat`;

CREATE TABLE `far_penggunaan_obat` (
  `id_penggunaan_obat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penggunaan_obat` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_penggunaan_obat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `far_pesan` */

DROP TABLE IF EXISTS `far_pesan`;

CREATE TABLE `far_pesan` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `no_sp` varchar(6) DEFAULT NULL,
  `kode_brglama` int(8) DEFAULT NULL,
  `nama_brg` varchar(40) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `harga_beli` decimal(10,2) DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `hp` decimal(10,2) DEFAULT NULL,
  `harga_jual` decimal(10,2) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `suplier` varchar(3) DEFAULT NULL,
  `tgl_pesan` datetime DEFAULT NULL,
  `ptg_pesan` varchar(30) DEFAULT NULL,
  `tgl_terima` datetime DEFAULT NULL,
  `tgl_tempo` datetime DEFAULT NULL,
  `tgl_ed` datetime DEFAULT NULL,
  `ptg_terima` varchar(30) DEFAULT NULL,
  `faktur` varchar(20) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL,
  `satuan_pesan` varchar(20) DEFAULT NULL,
  `hapus` varchar(1) DEFAULT NULL,
  `qty_pesan` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `pencatat` char(30) DEFAULT NULL,
  `kirim` char(5) DEFAULT 'BELUM',
  `tgl_faktur` date DEFAULT NULL,
  `harga_beli_sup` decimal(10,2) DEFAULT NULL,
  `cek` int(11) DEFAULT NULL,
  `kode_brg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no_urut`),
  KEY `kode_brg` (`kode_brg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `far_pinjam_obat` */

DROP TABLE IF EXISTS `far_pinjam_obat`;

CREATE TABLE `far_pinjam_obat` (
  `id_pinjam_obat` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `poli_inap` int(1) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `asal` int(11) DEFAULT NULL,
  `tujuan` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `keterangan` char(100) DEFAULT NULL,
  `navi` int(1) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `jam_kembali` char(8) DEFAULT NULL,
  `id_petugas_kembali` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pinjam_obat`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=latin1;

/*Table structure for table `far_ppn` */

DROP TABLE IF EXISTS `far_ppn`;

CREATE TABLE `far_ppn` (
  `idppn` int(11) NOT NULL AUTO_INCREMENT,
  `nilaippn` int(11) DEFAULT '0',
  PRIMARY KEY (`idppn`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_prosentasi` */

DROP TABLE IF EXISTS `far_prosentasi`;

CREATE TABLE `far_prosentasi` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `prosentasi` int(11) DEFAULT '0',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `far_retur_inap` */

DROP TABLE IF EXISTS `far_retur_inap`;

CREATE TABLE `far_retur_inap` (
  `id_retur_inap` int(11) NOT NULL AUTO_INCREMENT,
  `faktur` char(30) DEFAULT NULL,
  `id_no_sp` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_suplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_retur_inap`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `far_retur_poli` */

DROP TABLE IF EXISTS `far_retur_poli`;

CREATE TABLE `far_retur_poli` (
  `id_retur_poli` int(11) NOT NULL AUTO_INCREMENT,
  `faktur` char(30) DEFAULT NULL,
  `id_no_sp` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_far_suplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_retur_poli`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Table structure for table `far_satuan` */

DROP TABLE IF EXISTS `far_satuan`;

CREATE TABLE `far_satuan` (
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_satuan`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `far_satuanX` */

DROP TABLE IF EXISTS `far_satuanX`;

CREATE TABLE `far_satuanX` (
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_satuan`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `far_satuan_minum` */

DROP TABLE IF EXISTS `far_satuan_minum`;

CREATE TABLE `far_satuan_minum` (
  `id_far_satuan_minum` int(11) NOT NULL AUTO_INCREMENT,
  `nama_satuan_minum` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_far_satuan_minum`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Table structure for table `far_stok` */

DROP TABLE IF EXISTS `far_stok`;

CREATE TABLE `far_stok` (
  `nama` char(100) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL,
  `harga_pokok` int(11) NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `harga_beli` int(11) NOT NULL DEFAULT '0',
  `harga_jual` int(11) NOT NULL DEFAULT '0',
  `batas` int(11) NOT NULL DEFAULT '0',
  `suplier` int(3) NOT NULL DEFAULT '0',
  `pabrik` int(30) NOT NULL DEFAULT '0',
  `isi` int(11) NOT NULL DEFAULT '0',
  `satuan` int(10) NOT NULL DEFAULT '0',
  `generik` int(1) NOT NULL DEFAULT '0',
  `kode_lain` int(3) NOT NULL DEFAULT '0',
  `petugas` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch` char(20) NOT NULL,
  `tgl_ed` date NOT NULL,
  `inorder` int(2) NOT NULL DEFAULT '0',
  `no_urut` int(10) NOT NULL AUTO_INCREMENT,
  `stok_inap` double NOT NULL DEFAULT '0' COMMENT 'stok gudang inap',
  `batas_stok_inap` int(11) NOT NULL,
  `stok_poli` double NOT NULL,
  `batas_stok_poli` int(11) NOT NULL,
  `tuslah` int(11) NOT NULL DEFAULT '0',
  `asuransi` int(11) NOT NULL DEFAULT '0',
  `satuan_beli` int(11) NOT NULL DEFAULT '0',
  `filter_inap` int(1) NOT NULL DEFAULT '0',
  `Filter_poli` int(1) NOT NULL DEFAULT '0',
  `kode` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL,
  `ppn` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `stok_depo_poli` int(11) DEFAULT NULL,
  `batas_stok_depo_poli` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  `stok_depo_inap` int(11) DEFAULT NULL,
  `batas_stok_depo_inap` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=1098 DEFAULT CHARSET=latin1;

/*Table structure for table `far_stok-lal` */

DROP TABLE IF EXISTS `far_stok-lal`;

CREATE TABLE `far_stok-lal` (
  `nama` char(100) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL,
  `harga_pokok` int(11) NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `harga_beli` int(11) NOT NULL DEFAULT '0',
  `harga_jual` int(11) NOT NULL DEFAULT '0',
  `batas` int(11) NOT NULL DEFAULT '0',
  `suplier` int(3) NOT NULL DEFAULT '0',
  `pabrik` int(30) NOT NULL DEFAULT '0',
  `isi` int(11) NOT NULL DEFAULT '0',
  `satuan` int(10) NOT NULL DEFAULT '0',
  `generik` int(1) NOT NULL DEFAULT '0',
  `kode_lain` int(3) NOT NULL DEFAULT '0',
  `petugas` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch` char(20) NOT NULL,
  `tgl_ed` date NOT NULL,
  `inorder` int(2) NOT NULL DEFAULT '0',
  `no_urut` int(10) NOT NULL AUTO_INCREMENT,
  `stok_inap` int(11) NOT NULL DEFAULT '0' COMMENT 'stok gudang inap',
  `batas_stok_inap` int(11) NOT NULL,
  `stok_poli` int(11) NOT NULL,
  `batas_stok_poli` int(11) NOT NULL,
  `tuslah` int(11) NOT NULL DEFAULT '0',
  `asuransi` int(11) NOT NULL DEFAULT '0',
  `satuan_beli` int(11) NOT NULL DEFAULT '0',
  `filter_inap` int(1) NOT NULL DEFAULT '0',
  `Filter_poli` int(1) NOT NULL DEFAULT '0',
  `kode` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL,
  `ppn` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `stok_depo_poli` int(11) DEFAULT NULL,
  `batas_stok_depo_poli` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  `stok_depo_inap` int(11) DEFAULT NULL,
  `batas_stok_depo_inap` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

/*Table structure for table `far_stok_3-1-15` */

DROP TABLE IF EXISTS `far_stok_3-1-15`;

CREATE TABLE `far_stok_3-1-15` (
  `nama` char(100) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL,
  `harga_pokok` int(11) NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `harga_beli` int(11) NOT NULL DEFAULT '0',
  `harga_jual` int(11) NOT NULL DEFAULT '0',
  `batas` int(11) NOT NULL DEFAULT '0',
  `suplier` int(3) NOT NULL DEFAULT '0',
  `pabrik` int(30) NOT NULL DEFAULT '0',
  `isi` int(11) NOT NULL DEFAULT '0',
  `satuan` int(10) NOT NULL DEFAULT '0',
  `generik` int(1) NOT NULL DEFAULT '0',
  `kode_lain` int(3) NOT NULL DEFAULT '0',
  `petugas` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch` char(20) NOT NULL,
  `tgl_ed` date NOT NULL,
  `inorder` int(2) NOT NULL DEFAULT '0',
  `no_urut` int(10) NOT NULL AUTO_INCREMENT,
  `stok_inap` int(11) NOT NULL DEFAULT '0' COMMENT 'stok gudang inap',
  `batas_stok_inap` int(11) NOT NULL,
  `stok_poli` int(11) NOT NULL,
  `batas_stok_poli` int(11) NOT NULL,
  `tuslah` int(11) NOT NULL DEFAULT '0',
  `asuransi` int(11) NOT NULL DEFAULT '0',
  `satuan_beli` int(11) NOT NULL DEFAULT '0',
  `filter_inap` int(1) NOT NULL DEFAULT '0',
  `Filter_poli` int(1) NOT NULL DEFAULT '0',
  `kode` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL,
  `ppn` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `stok_depo_poli` int(11) DEFAULT NULL,
  `batas_stok_depo_poli` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  `stok_depo_inap` int(11) DEFAULT NULL,
  `batas_stok_depo_inap` int(11) DEFAULT NULL,
  `stok_pringgondani` int(11) DEFAULT NULL,
  `stok_kahyangan` int(11) DEFAULT NULL,
  `stok_taman_sari` int(11) DEFAULT NULL,
  `stok_ok` int(11) DEFAULT NULL,
  `stok_hcu` int(11) DEFAULT NULL,
  `stok_vk` int(11) DEFAULT NULL,
  `stok_laboratorium` int(11) DEFAULT NULL,
  `stok_radiologi` int(11) DEFAULT NULL,
  `stok_fisioteraphi` int(11) DEFAULT NULL,
  `stok_igd` int(11) DEFAULT NULL,
  `stok_non_igd` int(11) DEFAULT NULL,
  `stok_lain_lain` int(11) DEFAULT NULL,
  `stok_punokawan` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=1531 DEFAULT CHARSET=latin1;

/*Table structure for table `far_stok_copy` */

DROP TABLE IF EXISTS `far_stok_copy`;

CREATE TABLE `far_stok_copy` (
  `nama` char(100) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL,
  `harga_pokok` int(11) NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `harga_beli` int(11) NOT NULL DEFAULT '0',
  `harga_jual` int(11) NOT NULL DEFAULT '0',
  `batas` int(11) NOT NULL DEFAULT '0',
  `suplier` int(3) NOT NULL DEFAULT '0',
  `pabrik` int(30) NOT NULL DEFAULT '0',
  `isi` int(11) NOT NULL DEFAULT '0',
  `satuan` int(10) NOT NULL DEFAULT '0',
  `generik` int(1) NOT NULL DEFAULT '0',
  `kode_lain` int(3) NOT NULL DEFAULT '0',
  `petugas` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch` char(20) NOT NULL,
  `tgl_ed` date NOT NULL,
  `inorder` int(2) NOT NULL DEFAULT '0',
  `no_urut` int(10) NOT NULL AUTO_INCREMENT,
  `stok_inap` int(11) NOT NULL DEFAULT '0' COMMENT 'stok gudang inap',
  `batas_stok_inap` int(11) NOT NULL,
  `stok_poli` int(11) NOT NULL,
  `batas_stok_poli` int(11) NOT NULL,
  `tuslah` int(11) NOT NULL DEFAULT '0',
  `asuransi` int(11) NOT NULL DEFAULT '0',
  `satuan_beli` int(11) NOT NULL DEFAULT '0',
  `filter_inap` int(1) NOT NULL DEFAULT '0',
  `Filter_poli` int(1) NOT NULL DEFAULT '0',
  `kode` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL,
  `ppn` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `stok_depo_poli` int(11) DEFAULT NULL,
  `batas_stok_depo_poli` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  `stok_depo_inap` int(11) DEFAULT NULL,
  `batas_stok_depo_inap` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

/*Table structure for table `far_stok_elk` */

DROP TABLE IF EXISTS `far_stok_elk`;

CREATE TABLE `far_stok_elk` (
  `id_far_stok_elk` int(11) NOT NULL AUTO_INCREMENT,
  `stok` char(30) DEFAULT '-',
  `masuk` decimal(10,2) DEFAULT '0.00',
  `keluar` decimal(10,2) DEFAULT '0.00',
  `sisa` decimal(10,2) DEFAULT '0.00',
  `tanggal` date DEFAULT NULL,
  `id_register` int(8) DEFAULT '0',
  `id_trn` int(11) DEFAULT '0',
  `id_petugas` int(11) DEFAULT '0',
  `id_dokter` int(11) DEFAULT '0',
  `id_barang` int(11) DEFAULT '0',
  `jam` char(8) DEFAULT '00:00',
  `id_unit` int(11) DEFAULT '0',
  `poli_inap` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_far_stok_elk`),
  KEY `no_reg` (`id_register`),
  KEY `no_trn` (`id_trn`)
) ENGINE=MyISAM AUTO_INCREMENT=200379 DEFAULT CHARSET=latin1;

/*Table structure for table `far_stok_opname` */

DROP TABLE IF EXISTS `far_stok_opname`;

CREATE TABLE `far_stok_opname` (
  `nama` char(100) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL,
  `harga_pokok` int(11) NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `harga_beli` int(11) NOT NULL DEFAULT '0',
  `harga_jual_non_r` int(11) NOT NULL DEFAULT '0',
  `batas` int(11) NOT NULL DEFAULT '0',
  `suplier` int(3) NOT NULL DEFAULT '0',
  `pabrik` int(30) NOT NULL DEFAULT '0',
  `isi` int(11) NOT NULL DEFAULT '0',
  `satuan` int(10) NOT NULL DEFAULT '0',
  `generik` int(1) NOT NULL DEFAULT '0',
  `kode_lain` int(3) NOT NULL DEFAULT '0',
  `petugas` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch` char(20) NOT NULL,
  `tgl_ed` date NOT NULL,
  `inorder` int(2) NOT NULL DEFAULT '0',
  `no_urut` int(10) NOT NULL AUTO_INCREMENT,
  `stok_inap` int(11) NOT NULL DEFAULT '0' COMMENT 'stok gudang inap',
  `batas_stok_inap` int(11) NOT NULL,
  `stok_poli` int(11) NOT NULL,
  `batas_stok_poli` int(11) NOT NULL,
  `tuslah` int(11) NOT NULL DEFAULT '0',
  `asuransi` int(11) NOT NULL DEFAULT '0',
  `satuan_beli` int(11) NOT NULL DEFAULT '0',
  `filter_inap` int(1) NOT NULL DEFAULT '0',
  `Filter_poli` int(1) NOT NULL DEFAULT '0',
  `kode` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL,
  `ppn` int(11) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  `stok_depo_poli` int(11) DEFAULT NULL,
  `batas_stok_depo_poli` int(11) DEFAULT NULL,
  `ppn_keluaran` int(11) DEFAULT NULL,
  `stok_depo_inap` int(11) DEFAULT NULL,
  `batas_stok_depo_inap` int(11) DEFAULT NULL,
  `harga_jual_r` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=1583 DEFAULT CHARSET=latin1;

/*Table structure for table `far_suplier` */

DROP TABLE IF EXISTS `far_suplier`;

CREATE TABLE `far_suplier` (
  `nama` char(40) DEFAULT NULL,
  `alamat` char(50) DEFAULT NULL,
  `telpon` char(20) DEFAULT NULL,
  `fax` char(20) DEFAULT NULL,
  `email` char(40) DEFAULT NULL,
  `cp` char(30) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_far_suplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kontak` char(50) DEFAULT NULL,
  `handphone` char(30) DEFAULT NULL,
  `id_tmp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_suplier`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=latin1;

/*Table structure for table `far_trn` */

DROP TABLE IF EXISTS `far_trn`;

CREATE TABLE `far_trn` (
  `id_far_trn` int(10) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(8) DEFAULT NULL,
  `tanggal` date NOT NULL DEFAULT '2014-01-01',
  `id_unit` int(11) DEFAULT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_register` int(8) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `lunas` int(1) NOT NULL DEFAULT '0',
  `kelas` char(5) DEFAULT NULL,
  `poli_inap` int(1) DEFAULT NULL,
  `shift` char(1) DEFAULT NULL,
  `id_asuransi` int(11) DEFAULT NULL,
  `tgl_menyerahkan` datetime DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `val_farmasi` int(11) DEFAULT NULL,
  `no_psn` int(11) DEFAULT NULL,
  `nama` char(70) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_far_trn`),
  KEY `no_reg` (`id_register`)
) ENGINE=MyISAM AUTO_INCREMENT=52396 DEFAULT CHARSET=latin1;

/*Table structure for table `far_trn_stok_keluar` */

DROP TABLE IF EXISTS `far_trn_stok_keluar`;

CREATE TABLE `far_trn_stok_keluar` (
  `id_far_stok_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `id_unit` int(3) NOT NULL DEFAULT '0',
  `id_petugas` int(3) NOT NULL DEFAULT '0',
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pemesan` int(3) NOT NULL,
  `tgl_respon` date NOT NULL,
  `jam_respon` char(8) NOT NULL,
  `kirim` char(1) NOT NULL DEFAULT 'B',
  `perbarui` int(4) NOT NULL DEFAULT '0',
  `iol` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_far_stok_keluar`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Table structure for table `far_yt` */

DROP TABLE IF EXISTS `far_yt`;

CREATE TABLE `far_yt` (
  `id_far_yt` int(11) NOT NULL AUTO_INCREMENT,
  `nama_far_yt` char(5) NOT NULL,
  PRIMARY KEY (`id_far_yt`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `fis_cetak_trn` */

DROP TABLE IF EXISTS `fis_cetak_trn`;

CREATE TABLE `fis_cetak_trn` (
  `id_fis_cetak_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_no_trn` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  PRIMARY KEY (`id_fis_cetak_trn`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `fis_det_trn` */

DROP TABLE IF EXISTS `fis_det_trn`;

CREATE TABLE `fis_det_trn` (
  `id_fis_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `id_fis_trn` int(11) NOT NULL DEFAULT '0',
  `id_fis_tarif` int(11) NOT NULL DEFAULT '0',
  `pengirim` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `konsul` int(11) DEFAULT NULL,
  `koperasi` int(11) DEFAULT NULL,
  `rumah` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT NULL,
  `dr_sunu` int(11) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fis_det_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_fis_trn` (`id_fis_trn`),
  KEY `id_fis_tarif` (`id_fis_tarif`),
  KEY `id_petugas` (`id_petugas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `fis_lap_kunjungan` */

DROP TABLE IF EXISTS `fis_lap_kunjungan`;

CREATE TABLE `fis_lap_kunjungan` (
  `id_fis_lap_kunjungan` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(5) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `alamat` char(60) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `unit` char(40) DEFAULT NULL,
  `asuransi` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_fis_lap_kunjungan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fis_tarif` */

DROP TABLE IF EXISTS `fis_tarif`;

CREATE TABLE `fis_tarif` (
  `id_fis_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(50) DEFAULT NULL,
  `konsul` int(11) DEFAULT NULL,
  `koperasi` int(11) DEFAULT NULL,
  `rumah` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT NULL,
  `dr_sunu` int(11) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `publish` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fis_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Table structure for table `fis_tarif_copy` */

DROP TABLE IF EXISTS `fis_tarif_copy`;

CREATE TABLE `fis_tarif_copy` (
  `id_fis_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(50) DEFAULT NULL,
  `konsul` int(11) DEFAULT NULL,
  `koperasi` int(11) DEFAULT NULL,
  `rumah` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT NULL,
  `dr_sunu` int(11) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `publish` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fis_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Table structure for table `fis_trn` */

DROP TABLE IF EXISTS `fis_trn`;

CREATE TABLE `fis_trn` (
  `id_fis_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `kelas` char(1) NOT NULL DEFAULT '-',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_asuransi` int(11) NOT NULL DEFAULT '0',
  `biaya` int(11) NOT NULL DEFAULT '0',
  `lunas` int(1) NOT NULL DEFAULT '0',
  `id_petugas` int(11) NOT NULL DEFAULT '0',
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `id_rujuk` int(11) NOT NULL,
  `umur_th` int(11) NOT NULL,
  `umur_bln` int(11) NOT NULL,
  `umur_hr` int(11) NOT NULL,
  `icd` char(10) NOT NULL,
  `iol` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fis_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_unit` (`id_unit`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_petugas` (`id_petugas`),
  KEY `id_dokter` (`id_dokter`),
  KEY `id_pengirim` (`id_pengirim`),
  KEY `id_rujuk` (`id_rujuk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `igd_kasus` */

DROP TABLE IF EXISTS `igd_kasus`;

CREATE TABLE `igd_kasus` (
  `id_igd_kasus` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kasus` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_igd_kasus`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `igd_peralatan` */

DROP TABLE IF EXISTS `igd_peralatan`;

CREATE TABLE `igd_peralatan` (
  `id_igd_peralatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_peralatan` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_igd_peralatan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `igd_register` */

DROP TABLE IF EXISTS `igd_register`;

CREATE TABLE `igd_register` (
  `id_igd_register` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_kasus` int(11) DEFAULT NULL,
  `id_unit_perawatan` int(11) DEFAULT NULL,
  `id_triase` int(11) DEFAULT NULL,
  `id_peralatan` int(11) DEFAULT NULL,
  `id_tindak_lanjut` int(11) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `jam_masuk` char(8) DEFAULT NULL,
  `icd` char(10) DEFAULT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `id_asuransi` int(11) DEFAULT NULL,
  `bl` int(11) DEFAULT NULL,
  `rujukan` int(11) DEFAULT NULL,
  `bb` decimal(10,2) DEFAULT NULL,
  `tb` decimal(10,0) DEFAULT NULL,
  `anamnese` text,
  `tek_atas` int(11) DEFAULT NULL,
  `tek_bawah` int(11) DEFAULT NULL,
  `pernapasan` int(11) DEFAULT NULL,
  `suhu` decimal(10,1) DEFAULT NULL,
  `nadi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_igd_register`)
) ENGINE=MyISAM AUTO_INCREMENT=3155 DEFAULT CHARSET=latin1;

/*Table structure for table `igd_tindak_lanjut` */

DROP TABLE IF EXISTS `igd_tindak_lanjut`;

CREATE TABLE `igd_tindak_lanjut` (
  `id_igd_tindak_lanjut` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tindak_lanjut` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_igd_tindak_lanjut`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `igd_triase` */

DROP TABLE IF EXISTS `igd_triase`;

CREATE TABLE `igd_triase` (
  `id_igd_triase` int(11) NOT NULL AUTO_INCREMENT,
  `nama_triase` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_igd_triase`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `igd_unit_perawatan` */

DROP TABLE IF EXISTS `igd_unit_perawatan`;

CREATE TABLE `igd_unit_perawatan` (
  `id_igd_unit_perawatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_unit_perawatan` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_igd_unit_perawatan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `inventaris` */

DROP TABLE IF EXISTS `inventaris`;

CREATE TABLE `inventaris` (
  `kode_registrasi` int(100) NOT NULL,
  `kode_jenis` varchar(5) NOT NULL,
  `kode_ruangan` varchar(5) NOT NULL,
  `nomor_inventaris` varchar(100) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `tanggal_pengadaan` date NOT NULL,
  `kondisi` int(5) NOT NULL COMMENT '1=Baik, 0=Rusak',
  `status` int(5) NOT NULL COMMENT '1=Baru, 0=Bekas',
  `tanggal_kalibrasi` date NOT NULL,
  `kalibrasi_ulang` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_registrasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `inventaris_jenis` */

DROP TABLE IF EXISTS `inventaris_jenis`;

CREATE TABLE `inventaris_jenis` (
  `kode_jenis` varchar(5) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `inventaris_ruangan` */

DROP TABLE IF EXISTS `inventaris_ruangan`;

CREATE TABLE `inventaris_ruangan` (
  `kode_ruangan` varchar(5) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_jadwal` int(5) NOT NULL AUTO_INCREMENT,
  `id_dokter` varchar(15) NOT NULL,
  `sen` varchar(15) NOT NULL,
  `sel` varchar(15) NOT NULL,
  `rab` varchar(15) NOT NULL,
  `kam` varchar(15) NOT NULL,
  `jum` varchar(15) NOT NULL,
  `sab` varchar(15) NOT NULL,
  `min` varchar(15) NOT NULL,
  `sp` int(1) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `kep_mutu` */

DROP TABLE IF EXISTS `kep_mutu`;

CREATE TABLE `kep_mutu` (
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `shift` int(1) DEFAULT NULL,
  `id_unit` int(3) DEFAULT NULL,
  `infus` int(11) DEFAULT '0',
  `plebitis` int(11) DEFAULT '0',
  `jam` char(8) DEFAULT NULL,
  `ter_cat` int(11) DEFAULT '0',
  `pem_cat` int(11) DEFAULT '0',
  `isk` int(11) DEFAULT '0',
  `oper` int(11) DEFAULT '0',
  `inf` int(11) DEFAULT '0',
  `dekub` int(11) DEFAULT '0',
  `sk_brad` int(11) DEFAULT '0',
  `jatuh` int(11) DEFAULT '0',
  `sk_jatuh` int(11) DEFAULT '0',
  `s_psn` int(11) DEFAULT '0',
  `s_obat` int(11) DEFAULT '0',
  `s_dosis` int(11) DEFAULT '0',
  `s_waktu` int(11) DEFAULT '0',
  `s_pemb` int(11) DEFAULT '0',
  `ket` char(250) DEFAULT NULL,
  `jml` int(11) DEFAULT '0',
  `infus1` int(11) DEFAULT '0',
  `s_ptg` int(11) DEFAULT '0',
  `s_dok` int(11) DEFAULT '0',
  `s_jns` int(11) DEFAULT '0',
  `jmlbr` int(11) DEFAULT '0',
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Table structure for table `kep_mutu_tmp` */

DROP TABLE IF EXISTS `kep_mutu_tmp`;

CREATE TABLE `kep_mutu_tmp` (
  `id_kep_mutu_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kep_mutu_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_akun` */

DROP TABLE IF EXISTS `ksr_akun`;

CREATE TABLE `ksr_akun` (
  `kode_akun` char(15) DEFAULT NULL,
  `nama_akun` char(50) DEFAULT NULL,
  `saldo_awal` int(11) DEFAULT NULL,
  `tipe_akun` int(4) DEFAULT NULL,
  `aktif` char(1) DEFAULT NULL,
  `id_ksr_akun` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ksr_akun`)
) ENGINE=MyISAM AUTO_INCREMENT=512 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_akun_copy` */

DROP TABLE IF EXISTS `ksr_akun_copy`;

CREATE TABLE `ksr_akun_copy` (
  `kode_akun` char(15) DEFAULT NULL,
  `nama_akun` char(50) DEFAULT NULL,
  `saldo_awal` int(11) DEFAULT NULL,
  `tipe_akun` int(4) DEFAULT NULL,
  `aktif` char(1) DEFAULT NULL,
  `id_ksr_akun` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ksr_akun`)
) ENGINE=MyISAM AUTO_INCREMENT=512 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_alat` */

DROP TABLE IF EXISTS `ksr_alat`;

CREATE TABLE `ksr_alat` (
  `id_ksr_alat` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_alat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_angsuran` */

DROP TABLE IF EXISTS `ksr_angsuran`;

CREATE TABLE `ksr_angsuran` (
  `id_angsuran` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_angsuran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_ctk_nota_tmp` */

DROP TABLE IF EXISTS `ksr_ctk_nota_tmp`;

CREATE TABLE `ksr_ctk_nota_tmp` (
  `id_ksr_ctk_nota_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_register` int(11) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `kode` int(11) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT NULL,
  `nama_tarif` char(60) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `alamat` char(70) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `jam_masuk` char(8) DEFAULT NULL,
  `tgl_pulang` date DEFAULT NULL,
  `jam_pulang` char(8) DEFAULT NULL,
  `rawat` char(30) DEFAULT NULL,
  `nama_dokter` char(40) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `iol` char(1) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `sub_diskon` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `petugas` char(50) DEFAULT NULL,
  `titip` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_ctk_nota_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_det_faktur` */

DROP TABLE IF EXISTS `ksr_det_faktur`;

CREATE TABLE `ksr_det_faktur` (
  `id_ksr_det_faktur` int(11) NOT NULL AUTO_INCREMENT,
  `nama_suplier` char(50) DEFAULT NULL,
  `faktur` char(50) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `id_no_sp` int(11) DEFAULT NULL,
  `kelompok` char(100) DEFAULT NULL,
  `nama_penerima` char(50) DEFAULT NULL,
  `id_suplier` int(11) DEFAULT NULL,
  `id_ksr_faktur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_det_faktur`)
) ENGINE=MyISAM AUTO_INCREMENT=6704 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_det_faktur_inap` */

DROP TABLE IF EXISTS `ksr_det_faktur_inap`;

CREATE TABLE `ksr_det_faktur_inap` (
  `id_ksr_det_faktur` int(11) NOT NULL AUTO_INCREMENT,
  `nama_suplier` char(50) DEFAULT NULL,
  `faktur` char(50) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `id_no_sp` int(11) DEFAULT NULL,
  `kelompok` char(100) DEFAULT NULL,
  `nama_penerima` char(50) DEFAULT NULL,
  `id_suplier` int(11) DEFAULT NULL,
  `id_ksr_faktur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_det_faktur`)
) ENGINE=MyISAM AUTO_INCREMENT=2674 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_det_piutang` */

DROP TABLE IF EXISTS `ksr_det_piutang`;

CREATE TABLE `ksr_det_piutang` (
  `id_ksr_det_piutang` int(11) NOT NULL AUTO_INCREMENT,
  `id_register` int(8) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `keterangan` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_det_piutang`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_det_trn` */

DROP TABLE IF EXISTS `ksr_det_trn`;

CREATE TABLE `ksr_det_trn` (
  `kelompok_unit` char(4) DEFAULT '-',
  `asuransi` int(1) DEFAULT '0',
  `kelas` char(5) DEFAULT '3',
  `adm` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `sp_anak` int(11) DEFAULT '0',
  `ass_1` int(11) DEFAULT NULL,
  `ass_2` int(11) DEFAULT '0',
  `penata` int(11) DEFAULT NULL,
  `on_loop` int(11) DEFAULT NULL,
  `insentif` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `sewa_r` int(11) DEFAULT NULL,
  `sewa_a` int(11) DEFAULT NULL,
  `id_operator` int(11) DEFAULT NULL,
  `id_dokter_sp_anak` int(11) DEFAULT NULL,
  `id_ass_1` int(11) DEFAULT NULL,
  `id_ass_2` int(11) DEFAULT NULL,
  `id_penata` int(11) DEFAULT NULL,
  `id_on_loop` int(11) DEFAULT NULL,
  `id_insentif` int(11) DEFAULT NULL,
  `pelaksana` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `id_ksr_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `rs` int(11) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_anestesi` int(11) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `kode` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `ass_2_jaga` int(1) DEFAULT NULL,
  `onloop_jaga` int(1) DEFAULT NULL,
  `id_petugas_luar` int(11) DEFAULT NULL,
  `ass_luar` int(11) DEFAULT NULL,
  `diskon_dr` int(1) DEFAULT NULL,
  `id_residen_operator` int(3) DEFAULT NULL,
  `id_mr_bl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_det_trn`),
  KEY `asuransi` (`asuransi`),
  KEY `kelompok` (`kelompok_unit`),
  KEY `id_register` (`sewa_r`),
  KEY `id_unit` (`bhp`),
  KEY `kode` (`id_ass_2`),
  KEY `id_dokter_operator` (`id_operator`),
  KEY `id_dokter_anestesi` (`id_dokter_sp_anak`)
) ENGINE=MyISAM AUTO_INCREMENT=272385 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_det_trn_copy` */

DROP TABLE IF EXISTS `ksr_det_trn_copy`;

CREATE TABLE `ksr_det_trn_copy` (
  `kelompok_unit` char(4) DEFAULT '-',
  `asuransi` int(1) DEFAULT '0',
  `kelas` char(1) DEFAULT '3',
  `bhp` int(11) DEFAULT '0',
  `adm` int(11) DEFAULT '0',
  `tim` int(11) DEFAULT '0',
  `r_obat` int(11) DEFAULT '0',
  `tindakan` int(11) DEFAULT '0',
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `assisten_nama` int(11) DEFAULT '0',
  `assistensi` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT '0',
  `perujuk` int(11) DEFAULT '0',
  `peng_ugd` int(11) DEFAULT '0',
  `koperasi` int(11) DEFAULT '0',
  `keuangan` int(11) DEFAULT '0',
  `yayasan` int(11) DEFAULT '0',
  `lebaran` int(11) DEFAULT '0',
  `igd` int(11) DEFAULT '0',
  `lebaran_igd` int(11) DEFAULT NULL,
  `konsul_gizi` int(11) DEFAULT '0',
  `lebaran_gizi` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT '0',
  `rohani` int(11) DEFAULT '0',
  `sanitasi` int(11) DEFAULT '0',
  `linen` int(11) DEFAULT '0',
  `kamar` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `rumah` int(11) DEFAULT '0',
  `snak` int(11) DEFAULT '0',
  `visit_umum` int(11) DEFAULT '0',
  `makan` int(11) DEFAULT '0',
  `skp` int(11) DEFAULT '0',
  `telp` int(11) DEFAULT '0',
  `alat` int(11) DEFAULT '0',
  `observasi` int(11) DEFAULT '0',
  `keb_peri` int(11) DEFAULT '0',
  `tarif` int(11) DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_unit` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `id_dokter_operator` int(11) DEFAULT NULL COMMENT 'dr operator',
  `id_dokter_anestesi` int(11) DEFAULT NULL COMMENT 'dr anestesi',
  `id_dokter1` int(11) DEFAULT NULL COMMENT 'dr visit',
  `id_asisten` int(11) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `kode` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `operator_ke` int(11) DEFAULT NULL,
  `anestesi_ke` int(11) DEFAULT NULL,
  `dokter_ke` int(11) DEFAULT NULL,
  `inloop_ke` int(11) DEFAULT NULL,
  `id_dokter_konsul` int(11) DEFAULT NULL,
  `konsul_sp` int(11) DEFAULT NULL,
  `id_cyto` int(11) DEFAULT NULL,
  `publish_operator` int(11) DEFAULT NULL,
  `publish_anestesi` int(11) DEFAULT NULL,
  `publish_inloop` int(11) DEFAULT NULL,
  `publish_visit_dokter` int(11) DEFAULT NULL,
  `publish_konsul_sp` int(11) DEFAULT NULL,
  `id_dokter2` int(11) DEFAULT NULL,
  `dokter_ke1` int(11) DEFAULT NULL,
  `alat_rc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_det_trn`),
  KEY `asuransi` (`asuransi`),
  KEY `kelompok` (`kelompok_unit`),
  KEY `id_register` (`id_register`)
) ENGINE=MyISAM AUTO_INCREMENT=34060 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_detil_jurnal` */

DROP TABLE IF EXISTS `ksr_detil_jurnal`;

CREATE TABLE `ksr_detil_jurnal` (
  `id_ksr_detil_jurnal` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(12) DEFAULT NULL,
  `debet` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `id_ksr_jurnal` int(11) DEFAULT NULL,
  `posisi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_detil_jurnal`),
  KEY `id_ksr_jurnal` (`id_ksr_jurnal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_detil_jurnal_pembelian_farmasi_ralan` */

DROP TABLE IF EXISTS `ksr_detil_jurnal_pembelian_farmasi_ralan`;

CREATE TABLE `ksr_detil_jurnal_pembelian_farmasi_ralan` (
  `id_ksr_detil_jurnal_pembelian_farmasi_ralan` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(12) DEFAULT NULL,
  `debet` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `id_ksr_jurnal_pembelian_farmasi_ralan` int(11) DEFAULT NULL,
  `posisi` int(1) DEFAULT NULL,
  `awal` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_detil_jurnal_pembelian_farmasi_ralan`),
  KEY `id_ksr_jurnal` (`id_ksr_jurnal_pembelian_farmasi_ralan`)
) ENGINE=InnoDB AUTO_INCREMENT=30837 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_detil_jurnal_pembelian_farmasi_ranap` */

DROP TABLE IF EXISTS `ksr_detil_jurnal_pembelian_farmasi_ranap`;

CREATE TABLE `ksr_detil_jurnal_pembelian_farmasi_ranap` (
  `id_ksr_detil_jurnal_farmasi_ranap` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(12) DEFAULT NULL,
  `debet` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `id_ksr_jurnal_pembelian_farmasi_ranap` int(11) DEFAULT NULL,
  `posisi` int(1) DEFAULT NULL,
  `awal` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_detil_jurnal_farmasi_ranap`),
  KEY `id_ksr_jurnal` (`id_ksr_jurnal_pembelian_farmasi_ranap`)
) ENGINE=InnoDB AUTO_INCREMENT=6701 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_faktur` */

DROP TABLE IF EXISTS `ksr_faktur`;

CREATE TABLE `ksr_faktur` (
  `id_ksr_faktur` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `cp_suplier` char(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `lunas` int(11) DEFAULT NULL COMMENT '1=luns 0 = belum',
  `id_suplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_faktur`)
) ENGINE=InnoDB AUTO_INCREMENT=6568 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_faktur_inap` */

DROP TABLE IF EXISTS `ksr_faktur_inap`;

CREATE TABLE `ksr_faktur_inap` (
  `id_ksr_faktur` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `cp_suplier` char(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `lunas` int(11) DEFAULT NULL COMMENT '1=luns 0 = belum',
  `id_suplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_faktur`)
) ENGINE=MyISAM AUTO_INCREMENT=2614 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_inkaso` */

DROP TABLE IF EXISTS `ksr_inkaso`;

CREATE TABLE `ksr_inkaso` (
  `id_ksr_inkaso` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `aksi` char(20) DEFAULT NULL,
  `keterangan` char(100) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `cp` char(60) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_inkaso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_jurnal` */

DROP TABLE IF EXISTS `ksr_jurnal`;

CREATE TABLE `ksr_jurnal` (
  `id_ksr_jurnal` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `no_bukti` char(20) DEFAULT NULL,
  `uraian` char(50) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_jurnal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_jurnal_pembelian_farmasi_ralan` */

DROP TABLE IF EXISTS `ksr_jurnal_pembelian_farmasi_ralan`;

CREATE TABLE `ksr_jurnal_pembelian_farmasi_ralan` (
  `id_ksr_jurnal_pembelian_farmasi_ralan` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_no_sp` int(20) DEFAULT NULL,
  `uraian` char(50) DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `no_inkaso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_jurnal_pembelian_farmasi_ralan`)
) ENGINE=MyISAM AUTO_INCREMENT=14321 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_jurnal_pembelian_farmasi_ranap` */

DROP TABLE IF EXISTS `ksr_jurnal_pembelian_farmasi_ranap`;

CREATE TABLE `ksr_jurnal_pembelian_farmasi_ranap` (
  `id_ksr_jurnal_pembelian_farmasi_ranap` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_no_sp_inap` int(20) DEFAULT NULL,
  `uraian` char(50) DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `no_inkaso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_jurnal_pembelian_farmasi_ranap`)
) ENGINE=MyISAM AUTO_INCREMENT=2969 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_jurnal_posisi` */

DROP TABLE IF EXISTS `ksr_jurnal_posisi`;

CREATE TABLE `ksr_jurnal_posisi` (
  `id_ksr_jurnal_posisi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_jurnal_posisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_kel_set_akun` */

DROP TABLE IF EXISTS `ksr_kel_set_akun`;

CREATE TABLE `ksr_kel_set_akun` (
  `id_ksr_kel_set_akun` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kel_set_akun` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_kel_set_akun`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_kelas` */

DROP TABLE IF EXISTS `ksr_kelas`;

CREATE TABLE `ksr_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_kelompok_unit` */

DROP TABLE IF EXISTS `ksr_kelompok_unit`;

CREATE TABLE `ksr_kelompok_unit` (
  `id_ksr_kelompok_unit` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kelompok_unit` char(4) DEFAULT NULL,
  `nama_kelompok_unit` char(30) DEFAULT NULL,
  `id_mr_kelompok_unit` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_kelompok_unit`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_kuitansi` */

DROP TABLE IF EXISTS `ksr_kuitansi`;

CREATE TABLE `ksr_kuitansi` (
  `id_ksr_kuitansi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(60) DEFAULT NULL,
  `nomor` char(10) DEFAULT NULL,
  `keterangan` char(150) DEFAULT NULL,
  `rupiah` int(11) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_ksr_kuitansi`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap` */

DROP TABLE IF EXISTS `ksr_lap`;

CREATE TABLE `ksr_lap` (
  `id_ksr_lap` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `nama_suplier` char(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `disc` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tanggal_tempo` date DEFAULT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `tanggal_faktur` date DEFAULT NULL,
  `faktur` char(30) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_lap`)
) ENGINE=MyISAM AUTO_INCREMENT=64829 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap_det_trn` */

DROP TABLE IF EXISTS `ksr_lap_det_trn`;

CREATE TABLE `ksr_lap_det_trn` (
  `kelompok_unit` char(4) DEFAULT '-',
  `asuransi` int(1) DEFAULT '0',
  `kelas` char(1) DEFAULT '3',
  `bhp` int(11) DEFAULT '0',
  `adm` int(11) DEFAULT '0',
  `tim` int(11) DEFAULT '0',
  `r_obat` int(11) DEFAULT '0',
  `tindakan` int(11) DEFAULT '0',
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `assisten_nama` int(11) DEFAULT '0',
  `assistensi` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT '0',
  `perujuk` int(11) DEFAULT '0',
  `peng_ugd` int(11) DEFAULT '0',
  `koperasi` int(11) DEFAULT '0',
  `keuangan` int(11) DEFAULT '0',
  `yayasan` int(11) DEFAULT '0',
  `lebaran` int(11) DEFAULT '0',
  `igd` int(11) DEFAULT '0',
  `lebaran_igd` int(11) DEFAULT NULL,
  `konsul_gizi` int(11) DEFAULT '0',
  `lebaran_gizi` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT '0',
  `rohani` int(11) DEFAULT '0',
  `sanitasi` int(11) DEFAULT '0',
  `linen` int(11) DEFAULT '0',
  `kamar` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `rumah` int(11) DEFAULT '0',
  `snak` int(11) DEFAULT '0',
  `visit_umum` int(11) DEFAULT '0',
  `makan` int(11) DEFAULT '0',
  `skp` int(11) DEFAULT '0',
  `telp` int(11) DEFAULT '0',
  `alat` int(11) DEFAULT '0',
  `observasi` int(11) DEFAULT '0',
  `keb_peri` int(11) DEFAULT '0',
  `tarif` int(11) DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_unit` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `id_dokter_operator` int(11) DEFAULT NULL COMMENT 'dr operator',
  `id_dokter_anestesi` int(11) DEFAULT NULL COMMENT 'dr anestesi',
  `id_dokter1` int(11) DEFAULT NULL COMMENT 'dr visit',
  `id_asisten` int(11) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `kode` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `operator_ke` int(11) DEFAULT NULL,
  `anestesi_ke` int(11) DEFAULT NULL,
  `dokter_ke` int(11) DEFAULT NULL,
  `inloop_ke` int(11) DEFAULT NULL,
  `id_dokter_konsul` int(11) DEFAULT NULL,
  `konsul_sp` int(11) DEFAULT NULL,
  `id_cyto` int(11) DEFAULT NULL,
  `publish_operator` int(11) DEFAULT NULL,
  `publish_anestesi` int(11) DEFAULT NULL,
  `publish_inloop` int(11) DEFAULT NULL,
  `publish_visit_dokter` int(11) DEFAULT NULL,
  `publish_konsul_sp` int(11) DEFAULT NULL,
  `id_dokter2` int(11) DEFAULT NULL,
  `dokter_ke1` int(11) DEFAULT NULL,
  `alat_rc` int(11) DEFAULT NULL,
  `adm_klaim` int(11) DEFAULT NULL,
  `paket_ranap` int(11) DEFAULT NULL,
  `imunisasi` int(11) DEFAULT NULL,
  `asper` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `tindakan_bidan` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` char(10) DEFAULT NULL,
  `tgl_akhir` char(10) DEFAULT NULL,
  `nama_asuransi` char(50) DEFAULT NULL,
  `nama_tarif` char(50) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_det_trn`),
  KEY `asuransi` (`asuransi`),
  KEY `kelompok` (`kelompok_unit`),
  KEY `id_register` (`id_register`)
) ENGINE=MyISAM AUTO_INCREMENT=869987 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap_jasa_alat` */

DROP TABLE IF EXISTS `ksr_lap_jasa_alat`;

CREATE TABLE `ksr_lap_jasa_alat` (
  `id_ksr_lap_pendapatan_per_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `kelompok_unit` char(4) DEFAULT NULL,
  `tgl_pulang` date DEFAULT NULL,
  `jam_pulang` char(5) DEFAULT NULL,
  `nama_pas` char(50) DEFAULT NULL,
  `nama_pemeriksaan` char(50) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `nama_dokter` char(50) DEFAULT NULL,
  `cyto` int(11) DEFAULT NULL,
  `operator_ke` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `keterangan` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_lap_pendapatan_per_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap_jasa_assisten` */

DROP TABLE IF EXISTS `ksr_lap_jasa_assisten`;

CREATE TABLE `ksr_lap_jasa_assisten` (
  `id_ksr_lap_pendapatan_per_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `kelompok_unit` char(4) DEFAULT NULL,
  `tgl_pulang` date DEFAULT NULL,
  `jam_pulang` char(5) DEFAULT NULL,
  `nama_pas` char(50) DEFAULT NULL,
  `nama_pemeriksaan` char(50) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `publish` int(1) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `keterangan` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_lap_pendapatan_per_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=23783 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap_pendapatan_para_per_unit` */

DROP TABLE IF EXISTS `ksr_lap_pendapatan_para_per_unit`;

CREATE TABLE `ksr_lap_pendapatan_para_per_unit` (
  `id_ksr_lap_pendapatan_para_per_unit` int(11) NOT NULL AUTO_INCREMENT,
  `kelompok_unit` char(4) DEFAULT NULL,
  `tgl_pulang` date DEFAULT NULL,
  `jam_pulang` char(5) DEFAULT NULL,
  `nama_pas` char(50) DEFAULT NULL,
  `nama_pemeriksaan` char(50) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `r_obat` int(11) DEFAULT NULL,
  `nama_dokter` char(50) DEFAULT NULL,
  `cyto` int(11) DEFAULT NULL,
  `operator_ke` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `keterangan` char(10) DEFAULT NULL,
  `tind_bidan` int(11) DEFAULT NULL,
  `igd` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT NULL,
  `asper` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT NULL,
  `skp` int(11) DEFAULT NULL,
  `assisten` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `tindakan` int(11) DEFAULT NULL,
  `perujuk` int(11) DEFAULT NULL,
  `observasi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_lap_pendapatan_para_per_unit`)
) ENGINE=MyISAM AUTO_INCREMENT=75900 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap_pendapatan_per_dokter` */

DROP TABLE IF EXISTS `ksr_lap_pendapatan_per_dokter`;

CREATE TABLE `ksr_lap_pendapatan_per_dokter` (
  `id_ksr_lap_pendapatan_per_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `kelompok_unit` char(4) DEFAULT NULL,
  `tgl_pulang` date DEFAULT NULL,
  `jam_pulang` char(5) DEFAULT NULL,
  `nama_pas` char(50) DEFAULT NULL,
  `nama_pemeriksaan` char(50) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `nama_dokter` char(50) DEFAULT NULL,
  `cyto` char(5) DEFAULT NULL,
  `operator_ke` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `keterangan` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_lap_pendapatan_per_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=15093 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_lap_tmp` */

DROP TABLE IF EXISTS `ksr_lap_tmp`;

CREATE TABLE `ksr_lap_tmp` (
  `id_lap_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `kode_rujukan` char(3) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lap_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_operator_ke` */

DROP TABLE IF EXISTS `ksr_operator_ke`;

CREATE TABLE `ksr_operator_ke` (
  `id_operator` int(11) NOT NULL AUTO_INCREMENT,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_operator`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_pend_per_para` */

DROP TABLE IF EXISTS `ksr_pend_per_para`;

CREATE TABLE `ksr_pend_per_para` (
  `id_ksr_pend_per_para` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(11) DEFAULT NULL,
  `nama` char(200) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `ass_1` int(11) DEFAULT NULL,
  `ass_2` int(11) DEFAULT NULL,
  `penata` int(11) DEFAULT NULL,
  `on_loop` int(11) DEFAULT NULL,
  `insentif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_pend_per_para`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_petugas_luar` */

DROP TABLE IF EXISTS `ksr_petugas_luar`;

CREATE TABLE `ksr_petugas_luar` (
  `id_ksr_petugas_luar` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(50) DEFAULT NULL,
  `alamat` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_petugas_luar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_piutang` */

DROP TABLE IF EXISTS `ksr_piutang`;

CREATE TABLE `ksr_piutang` (
  `id_ksr_piutang` int(11) NOT NULL AUTO_INCREMENT,
  `id_register` int(8) DEFAULT NULL,
  `nama_penanggung` char(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `alamat` char(100) DEFAULT NULL,
  `pekerjaan` int(11) DEFAULT NULL,
  `telpon` int(11) DEFAULT NULL,
  `jenis_jaminan` char(40) DEFAULT NULL,
  `nomor_jaminan` char(40) DEFAULT NULL,
  `nama_pemilik` char(50) DEFAULT NULL,
  `alamat_di_jaminan` char(50) DEFAULT NULL,
  `type` char(40) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `uang_muka` int(11) DEFAULT NULL,
  `cetak` int(1) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `tanggal_tempo` date DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_piutang`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_rekap_cetak_tmp` */

DROP TABLE IF EXISTS `ksr_rekap_cetak_tmp`;

CREATE TABLE `ksr_rekap_cetak_tmp` (
  `id_ksr_rekap_cetak_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_register` int(11) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `tgl_kunj` date DEFAULT NULL,
  `jam_kunj` char(5) DEFAULT NULL,
  `tgl_pulang` date DEFAULT NULL,
  `jam_pulang` char(5) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `titip` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kurang` int(11) DEFAULT NULL,
  `alamat` char(100) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `unit` char(40) DEFAULT NULL,
  `asuransi` char(40) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `poli_inap` char(10) DEFAULT NULL,
  `lunas` char(5) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_rekap_cetak_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=1517 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_rekap_farmasi_tmp` */

DROP TABLE IF EXISTS `ksr_rekap_farmasi_tmp`;

CREATE TABLE `ksr_rekap_farmasi_tmp` (
  `id_ksr_rekap_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `titip` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tgl_awal` char(18) DEFAULT NULL,
  `tgl_akhir` char(18) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `nama_suplier` char(60) DEFAULT NULL,
  `cp_suplier` char(60) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `no_inkaso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_rekap_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=39831 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_rekap_tmp` */

DROP TABLE IF EXISTS `ksr_rekap_tmp`;

CREATE TABLE `ksr_rekap_tmp` (
  `id_ksr_rekap_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `titip` double DEFAULT NULL,
  `kurang` double DEFAULT NULL,
  `tgl_awal` char(18) DEFAULT NULL,
  `tgl_akhir` char(18) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_rekap_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_set_akun` */

DROP TABLE IF EXISTS `ksr_set_akun`;

CREATE TABLE `ksr_set_akun` (
  `id_ksr_set_akun` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` char(200) DEFAULT NULL,
  `kode_akun` char(20) DEFAULT NULL,
  `posisi` int(11) DEFAULT NULL,
  `keterangan` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_set_akun`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_set_residen` */

DROP TABLE IF EXISTS `ksr_set_residen`;

CREATE TABLE `ksr_set_residen` (
  `id_ksr_set_residen` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokter` int(11) DEFAULT NULL,
  `id_dr_residen` int(11) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_set_residen`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_sub` */

DROP TABLE IF EXISTS `ksr_sub`;

CREATE TABLE `ksr_sub` (
  `id_ksr_sub` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sub` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_sub`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif` */

DROP TABLE IF EXISTS `ksr_tarif`;

CREATE TABLE `ksr_tarif` (
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT NULL,
  `sub` int(3) DEFAULT NULL,
  `nama` char(80) DEFAULT NULL,
  `kelas` char(5) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `adm` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `anestesi` int(11) DEFAULT NULL,
  `sp_anak` int(11) DEFAULT NULL,
  `ass_1` int(11) DEFAULT NULL,
  `ass_2` int(11) DEFAULT NULL,
  `penata` int(11) DEFAULT NULL,
  `on_loop` int(11) DEFAULT NULL,
  `insentif` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `sewa_r` int(2) DEFAULT NULL,
  `sewa_a` int(11) DEFAULT NULL,
  `rs` int(11) DEFAULT NULL,
  `publish` int(1) DEFAULT NULL,
  `publish_anestesi` int(1) DEFAULT NULL,
  `publish_sp_anak` int(1) DEFAULT NULL,
  `publish_ass_1` int(1) DEFAULT NULL,
  `publish_ass_2` int(1) DEFAULT NULL,
  `publish_penata` int(1) DEFAULT NULL,
  `publish_on_loop` int(1) DEFAULT NULL,
  `publish_insentif` int(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `bpjs` int(1) DEFAULT NULL,
  `publish_petugas_luar` int(11) DEFAULT NULL,
  `ass_petugas_luar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=453 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif_13-11-14` */

DROP TABLE IF EXISTS `ksr_tarif_13-11-14`;

CREATE TABLE `ksr_tarif_13-11-14` (
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT '-',
  `nama` char(100) DEFAULT '-',
  `asuransi` int(2) DEFAULT '0',
  `kelas` char(1) DEFAULT '3',
  `bhp` int(11) DEFAULT '0',
  `adm` int(11) DEFAULT '0',
  `adm_klaim` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT '0',
  `r_obat` int(11) DEFAULT '0',
  `tindakan` int(11) DEFAULT '0',
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `assisten_nama` int(11) DEFAULT '0',
  `tindakan_bidan` int(11) DEFAULT NULL,
  `assistensi` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT '0',
  `perujuk` int(11) DEFAULT '0',
  `peng_ugd` int(11) DEFAULT '0',
  `koperasi` int(11) DEFAULT '0',
  `keuangan` int(11) DEFAULT '0',
  `yayasan` int(11) DEFAULT '0',
  `lebaran` int(11) DEFAULT '0',
  `igd` int(11) DEFAULT '0',
  `lebaran_igd` int(11) DEFAULT NULL,
  `konsul_gizi` int(11) DEFAULT '0',
  `lebaran_gizi` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT '0',
  `konsul_sp` int(11) DEFAULT NULL,
  `paket_ranap` int(11) DEFAULT NULL,
  `rohani` int(11) DEFAULT '0',
  `sanitasi` int(11) DEFAULT '0',
  `linen` int(11) DEFAULT '0',
  `kamar` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `rumah` int(11) DEFAULT '0',
  `snak` int(11) DEFAULT '0',
  `visit_umum` int(11) DEFAULT '0',
  `makan` int(11) DEFAULT '0',
  `imunisasi` int(11) DEFAULT NULL,
  `skp` int(11) DEFAULT '0',
  `telp` int(11) DEFAULT '0',
  `alat_rc` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT '0',
  `asper` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `observasi` int(11) DEFAULT '0',
  `keb_peri` int(11) DEFAULT '0',
  `tarif` int(11) DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `publish` int(1) DEFAULT NULL,
  `publish_operator` int(11) DEFAULT NULL,
  `publish_anestesi` int(11) DEFAULT NULL,
  `publish_inloop` int(11) DEFAULT NULL,
  `publish_konsul_sp` int(11) DEFAULT NULL,
  `publish_visit_dokter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  UNIQUE KEY `kode` (`kode`),
  KEY `nama` (`nama`),
  KEY `asuransi` (`asuransi`),
  KEY `kelas` (`kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=1195 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif_2014` */

DROP TABLE IF EXISTS `ksr_tarif_2014`;

CREATE TABLE `ksr_tarif_2014` (
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT '-',
  `nama` char(100) DEFAULT '-',
  `asuransi` int(2) DEFAULT '0',
  `kelas` char(1) DEFAULT '3',
  `bhp` int(11) DEFAULT '0',
  `adm` int(11) DEFAULT '0',
  `adm_klaim` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT '0',
  `r_obat` int(11) DEFAULT '0',
  `tindakan` int(11) DEFAULT '0',
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `assisten_nama` int(11) DEFAULT '0',
  `tindakan_bidan` int(11) DEFAULT NULL,
  `assistensi` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT '0',
  `perujuk` int(11) DEFAULT '0',
  `peng_ugd` int(11) DEFAULT '0',
  `koperasi` int(11) DEFAULT '0',
  `keuangan` int(11) DEFAULT '0',
  `yayasan` int(11) DEFAULT '0',
  `lebaran` int(11) DEFAULT '0',
  `igd` int(11) DEFAULT '0',
  `lebaran_igd` int(11) DEFAULT NULL,
  `konsul_gizi` int(11) DEFAULT '0',
  `lebaran_gizi` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT '0',
  `konsul_sp` int(11) DEFAULT NULL,
  `paket_ranap` int(11) DEFAULT NULL,
  `rohani` int(11) DEFAULT '0',
  `sanitasi` int(11) DEFAULT '0',
  `linen` int(11) DEFAULT '0',
  `kamar` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `rumah` int(11) DEFAULT '0',
  `snak` int(11) DEFAULT '0',
  `visit_umum` int(11) DEFAULT '0',
  `makan` int(11) DEFAULT '0',
  `imunisasi` int(11) DEFAULT NULL,
  `skp` int(11) DEFAULT '0',
  `telp` int(11) DEFAULT '0',
  `alat_rc` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT '0',
  `asper` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `observasi` int(11) DEFAULT '0',
  `keb_peri` int(11) DEFAULT '0',
  `tarif` int(11) DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `publish` int(1) DEFAULT NULL,
  `publish_operator` int(11) DEFAULT NULL,
  `publish_anestesi` int(11) DEFAULT NULL,
  `publish_inloop` int(11) DEFAULT NULL,
  `publish_konsul_sp` int(11) DEFAULT NULL,
  `publish_visit_dokter` int(11) DEFAULT NULL,
  `publish_alat` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  UNIQUE KEY `kode` (`kode`),
  KEY `nama` (`nama`),
  KEY `asuransi` (`asuransi`),
  KEY `kelas` (`kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=1199 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif_6-6-14` */

DROP TABLE IF EXISTS `ksr_tarif_6-6-14`;

CREATE TABLE `ksr_tarif_6-6-14` (
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT '-',
  `nama` char(70) DEFAULT '-',
  `asuransi` int(2) DEFAULT '0',
  `kelas` char(1) DEFAULT '3',
  `bhp` int(11) DEFAULT '0',
  `adm` int(11) DEFAULT '0',
  `adm_klaim` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT '0',
  `r_obat` int(11) DEFAULT '0',
  `tindakan` int(11) DEFAULT '0',
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `assisten_nama` int(11) DEFAULT '0',
  `tindakan_bidan` int(11) DEFAULT NULL,
  `assistensi` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT '0',
  `perujuk` int(11) DEFAULT '0',
  `peng_ugd` int(11) DEFAULT '0',
  `koperasi` int(11) DEFAULT '0',
  `keuangan` int(11) DEFAULT '0',
  `yayasan` int(11) DEFAULT '0',
  `lebaran` int(11) DEFAULT '0',
  `igd` int(11) DEFAULT '0',
  `lebaran_igd` int(11) DEFAULT NULL,
  `konsul_gizi` int(11) DEFAULT '0',
  `lebaran_gizi` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT '0',
  `konsul_sp` int(11) DEFAULT NULL,
  `paket_ranap` int(11) DEFAULT NULL,
  `rohani` int(11) DEFAULT '0',
  `sanitasi` int(11) DEFAULT '0',
  `linen` int(11) DEFAULT '0',
  `kamar` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `rumah` int(11) DEFAULT '0',
  `snak` int(11) DEFAULT '0',
  `visit_umum` int(11) DEFAULT '0',
  `makan` int(11) DEFAULT '0',
  `imunisasi` int(11) DEFAULT NULL,
  `skp` int(11) DEFAULT '0',
  `telp` int(11) DEFAULT '0',
  `alat_rc` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT '0',
  `asper` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `observasi` int(11) DEFAULT '0',
  `keb_peri` int(11) DEFAULT '0',
  `tarif` int(11) DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `publish` int(1) DEFAULT NULL,
  `publish_operator` int(11) DEFAULT NULL,
  `publish_anestesi` int(11) DEFAULT NULL,
  `publish_inloop` int(11) DEFAULT NULL,
  `publish_konsul_sp` int(11) DEFAULT NULL,
  `publish_visit_dokter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=922 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif_copy` */

DROP TABLE IF EXISTS `ksr_tarif_copy`;

CREATE TABLE `ksr_tarif_copy` (
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT NULL,
  `sub` int(3) DEFAULT NULL,
  `nama` char(80) DEFAULT NULL,
  `kelas` char(5) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `adm` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `anestesi` int(11) DEFAULT NULL,
  `sp_anak` int(11) DEFAULT NULL,
  `ass_1` int(11) DEFAULT NULL,
  `ass_2` int(11) DEFAULT NULL,
  `penata` int(11) DEFAULT NULL,
  `on_loop` int(11) DEFAULT NULL,
  `insentif` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `sewa_r` int(2) DEFAULT NULL,
  `sewa_a` int(11) DEFAULT NULL,
  `rs` int(11) DEFAULT NULL,
  `publish` int(1) DEFAULT NULL,
  `publish_anestesi` int(1) DEFAULT NULL,
  `publish_sp_anak` int(1) DEFAULT NULL,
  `publish_ass_1` int(1) DEFAULT NULL,
  `publish_ass_2` int(1) DEFAULT NULL,
  `publish_penata` int(1) DEFAULT NULL,
  `publish_on_loop` int(1) DEFAULT NULL,
  `publish_insentif` int(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `bpjs` int(1) DEFAULT NULL,
  `publish_petugas_luar` int(11) DEFAULT NULL,
  `ass_petugas_luar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif_copy11-11` */

DROP TABLE IF EXISTS `ksr_tarif_copy11-11`;

CREATE TABLE `ksr_tarif_copy11-11` (
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT NULL,
  `sub` int(3) DEFAULT NULL,
  `nama` char(80) DEFAULT NULL,
  `kelas` char(5) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `adm` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `anestesi` int(11) DEFAULT NULL,
  `sp_anak` int(11) DEFAULT NULL,
  `ass_1` int(11) DEFAULT NULL,
  `ass_2` int(11) DEFAULT NULL,
  `penata` int(11) DEFAULT NULL,
  `on_loop` int(11) DEFAULT NULL,
  `insentif` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `sewa_r` int(2) DEFAULT NULL,
  `sewa_a` int(11) DEFAULT NULL,
  `rs` int(11) DEFAULT NULL,
  `publish` int(1) DEFAULT NULL,
  `publish_anestesi` int(1) DEFAULT NULL,
  `publish_sp_anak` int(1) DEFAULT NULL,
  `publish_ass_1` int(1) DEFAULT NULL,
  `publish_ass_2` int(1) DEFAULT NULL,
  `publish_penata` int(1) DEFAULT NULL,
  `publish_on_loop` int(1) DEFAULT NULL,
  `publish_insentif` int(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `bpjs` int(1) DEFAULT NULL,
  `publish_petugas_luar` int(11) DEFAULT NULL,
  `ass_petugas_luar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarif_copyx` */

DROP TABLE IF EXISTS `ksr_tarif_copyx`;

CREATE TABLE `ksr_tarif_copyx` (
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(4) DEFAULT '-',
  `nama` char(100) DEFAULT '-',
  `asuransi` int(2) DEFAULT '0',
  `kelas` char(1) DEFAULT '3',
  `bhp` int(11) DEFAULT '0',
  `adm` int(11) DEFAULT '0',
  `adm_klaim` int(11) DEFAULT NULL,
  `tim` int(11) DEFAULT '0',
  `r_obat` int(11) DEFAULT '0',
  `tindakan` int(11) DEFAULT '0',
  `operator` int(11) DEFAULT '0',
  `anestesi` int(11) DEFAULT '0',
  `assisten_nama` int(11) DEFAULT '0',
  `tindakan_bidan` int(11) DEFAULT NULL,
  `assistensi` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT '0',
  `perujuk` int(11) DEFAULT '0',
  `peng_ugd` int(11) DEFAULT '0',
  `koperasi` int(11) DEFAULT '0',
  `keuangan` int(11) DEFAULT '0',
  `yayasan` int(11) DEFAULT '0',
  `lebaran` int(11) DEFAULT '0',
  `igd` int(11) DEFAULT '0',
  `lebaran_igd` int(11) DEFAULT NULL,
  `konsul_gizi` int(11) DEFAULT '0',
  `lebaran_gizi` int(11) DEFAULT NULL,
  `embalase` int(11) DEFAULT '0',
  `konsul_sp` int(11) DEFAULT NULL,
  `paket_ranap` int(11) DEFAULT NULL,
  `rohani` int(11) DEFAULT '0',
  `sanitasi` int(11) DEFAULT '0',
  `linen` int(11) DEFAULT '0',
  `kamar` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `rumah` int(11) DEFAULT '0',
  `snak` int(11) DEFAULT '0',
  `visit_umum` int(11) DEFAULT '0',
  `makan` int(11) DEFAULT '0',
  `imunisasi` int(11) DEFAULT NULL,
  `skp` int(11) DEFAULT '0',
  `telp` int(11) DEFAULT '0',
  `alat_rc` int(11) DEFAULT NULL,
  `alat` int(11) DEFAULT '0',
  `asper` int(11) DEFAULT NULL,
  `invest` int(11) DEFAULT NULL,
  `bensin` int(11) DEFAULT NULL,
  `observasi` int(11) DEFAULT '0',
  `keb_peri` int(11) DEFAULT '0',
  `tarif` int(11) DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `publish` int(1) DEFAULT NULL,
  `publish_operator` int(11) DEFAULT NULL,
  `publish_anestesi` int(11) DEFAULT NULL,
  `publish_inloop` int(11) DEFAULT NULL,
  `publish_konsul_sp` int(11) DEFAULT NULL,
  `publish_visit_dokter` int(11) DEFAULT NULL,
  `publish_alat` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  UNIQUE KEY `kode` (`kode`),
  KEY `nama` (`nama`),
  KEY `asuransi` (`asuransi`),
  KEY `kelas` (`kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=1195 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tarifx` */

DROP TABLE IF EXISTS `ksr_tarifx`;

CREATE TABLE `ksr_tarifx` (
  `id_ksr_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `kode` int(5) DEFAULT NULL,
  `kelompok_unit` char(3) DEFAULT NULL,
  `sub` int(11) DEFAULT NULL,
  `nama` char(80) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `anestesi` int(11) DEFAULT NULL,
  `tim_ok` int(11) DEFAULT NULL,
  `sewa_ok` int(11) DEFAULT NULL,
  `kamar` int(11) DEFAULT NULL,
  `visit` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `rs` int(11) DEFAULT NULL,
  `petugas` int(11) DEFAULT NULL,
  `asuransi` int(2) DEFAULT NULL,
  `publish` int(1) DEFAULT NULL,
  `publish_anestesi` int(1) DEFAULT NULL,
  `publish_visit` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tarif`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_tipe_akun` */

DROP TABLE IF EXISTS `ksr_tipe_akun`;

CREATE TABLE `ksr_tipe_akun` (
  `id_ksr_tipe_akun` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tipe_akun` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_tipe_akun`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_titip` */

DROP TABLE IF EXISTS `ksr_titip`;

CREATE TABLE `ksr_titip` (
  `id_ksr_titip` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` tinytext,
  `total` int(11) DEFAULT NULL,
  `kode` int(4) DEFAULT NULL,
  `keterangan` char(150) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_titip`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_trn` */

DROP TABLE IF EXISTS `ksr_trn`;

CREATE TABLE `ksr_trn` (
  `id_ksr_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `tgl_kunj` date DEFAULT NULL,
  `jam_kunj` char(8) DEFAULT NULL,
  `tgl_inap` date DEFAULT NULL,
  `jam_inap` char(8) DEFAULT NULL,
  `tgl_pulang` datetime DEFAULT NULL,
  `jam_pulang` char(8) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `id_asuransi` int(11) DEFAULT NULL,
  `kelas` char(5) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `lunas` char(1) DEFAULT NULL,
  `id_petugas` int(3) DEFAULT NULL,
  `titip` int(11) DEFAULT NULL,
  `hak_kelas` int(11) DEFAULT NULL,
  `id_dokter` int(3) DEFAULT NULL,
  `id_pengirim` int(3) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kuitansi` char(150) DEFAULT NULL,
  `dari` char(60) DEFAULT NULL,
  `posting` int(1) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tgl_kuitansi` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_unit` (`id_unit`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_dokter` (`id_dokter`),
  KEY `id_pengirim` (`id_pengirim`)
) ENGINE=MyISAM AUTO_INCREMENT=78789 DEFAULT CHARSET=latin1;

/*Table structure for table `ksr_val_faktur` */

DROP TABLE IF EXISTS `ksr_val_faktur`;

CREATE TABLE `ksr_val_faktur` (
  `id_ksr_val_faktur` int(11) NOT NULL AUTO_INCREMENT,
  `nama_suplier` char(50) DEFAULT NULL,
  `faktur` char(50) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `id_no_sp` int(11) DEFAULT NULL,
  `kelompok` char(100) DEFAULT NULL,
  `nama_penerima` char(50) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_ksr_faktur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ksr_val_faktur`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `kuesioner` */

DROP TABLE IF EXISTS `kuesioner`;

CREATE TABLE `kuesioner` (
  `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT,
  `pilihan` int(1) NOT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_kuesioner`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `lab_det_trn` */

DROP TABLE IF EXISTS `lab_det_trn`;

CREATE TABLE `lab_det_trn` (
  `id_lab_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `id_lab_trn` int(11) NOT NULL DEFAULT '0',
  `id_lab_tarif` int(11) NOT NULL DEFAULT '0',
  `hasil` char(40) NOT NULL DEFAULT '-',
  `qty` char(40) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `bhp` int(11) NOT NULL,
  `infrastruktur` int(11) NOT NULL,
  `rujuk` int(11) NOT NULL,
  `jasa_rs` int(11) NOT NULL,
  `hilang` int(1) NOT NULL DEFAULT '0',
  `rujukan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lab_det_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_lab_trn` (`id_lab_trn`),
  KEY `id_lab_tarif` (`id_lab_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=107185 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_lap_kunj_poli_inap` */

DROP TABLE IF EXISTS `lab_lap_kunj_poli_inap`;

CREATE TABLE `lab_lap_kunj_poli_inap` (
  `id_lab_lap_kunj_poli_inap` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(8) DEFAULT NULL,
  `id_register` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `alamat` char(70) DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `nama_dokter` char(50) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_lab_lap_kunj_poli_inap`)
) ENGINE=MyISAM AUTO_INCREMENT=7133 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_lap_pendapatan` */

DROP TABLE IF EXISTS `lab_lap_pendapatan`;

CREATE TABLE `lab_lap_pendapatan` (
  `id_lab_lap_pendapatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(3) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `id_catatan_medik` int(8) DEFAULT NULL,
  `id_register` int(8) DEFAULT NULL,
  `id_lab_trn` int(11) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `qty` int(3) DEFAULT NULL,
  `alat` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `infrastruktur` int(11) DEFAULT NULL,
  `rujuk` int(11) DEFAULT NULL,
  `jasa_rs` int(11) DEFAULT NULL,
  `alat1` int(11) DEFAULT NULL,
  `bhp1` int(11) DEFAULT NULL,
  `infrastruktur1` int(11) DEFAULT NULL,
  `rujuk1` int(11) DEFAULT NULL,
  `jasa_rs1` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `nama_pasien` char(60) DEFAULT NULL,
  `rujukan` int(11) DEFAULT NULL,
  `rujukan1` int(11) DEFAULT NULL,
  `nama_asuransi` char(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `total1` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_lab_lap_pendapatan`)
) ENGINE=MyISAM AUTO_INCREMENT=58271 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_lap_tmp` */

DROP TABLE IF EXISTS `lab_lap_tmp`;

CREATE TABLE `lab_lap_tmp` (
  `id_lap_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_petugas` int(10) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `kode_rujukan` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_lap_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_rujukan` */

DROP TABLE IF EXISTS `lab_rujukan`;

CREATE TABLE `lab_rujukan` (
  `id_rujukan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rujukan` char(40) DEFAULT NULL,
  `kode_rujukan` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_rujukan`),
  UNIQUE KEY `kode_rujukan` (`kode_rujukan`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_sampel` */

DROP TABLE IF EXISTS `lab_sampel`;

CREATE TABLE `lab_sampel` (
  `id_sampel` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sampel` char(40) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_sampel`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_tarif` */

DROP TABLE IF EXISTS `lab_tarif`;

CREATE TABLE `lab_tarif` (
  `id_lab_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(100) NOT NULL DEFAULT '-',
  `harga_normal` char(30) NOT NULL DEFAULT '-',
  `satuan` char(20) NOT NULL DEFAULT '-',
  `sampel` char(20) NOT NULL DEFAULT '-',
  `alat` int(11) NOT NULL DEFAULT '0',
  `bhp` int(11) NOT NULL DEFAULT '0',
  `infrastruktur` int(11) NOT NULL DEFAULT '0',
  `rujuk` int(11) NOT NULL DEFAULT '0',
  `jasa_rs` int(11) NOT NULL DEFAULT '0',
  `tarif` int(11) NOT NULL,
  `kel` char(100) NOT NULL DEFAULT '-',
  `tgl` timestamp NOT NULL DEFAULT '2014-01-01 07:00:00',
  `bawah` char(50) NOT NULL,
  `atas` double NOT NULL DEFAULT '0',
  `laborat` double NOT NULL DEFAULT '0',
  `isjamak` tinyint(1) NOT NULL DEFAULT '0',
  `kode_rujukan` char(3) DEFAULT NULL,
  `rujukan` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lab_tarif`),
  KEY `kode_rujukan` (`kode_rujukan`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_tarif_asli` */

DROP TABLE IF EXISTS `lab_tarif_asli`;

CREATE TABLE `lab_tarif_asli` (
  `id_lab_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(100) NOT NULL DEFAULT '-',
  `harga_normal` char(30) NOT NULL DEFAULT '-',
  `satuan` char(20) NOT NULL DEFAULT '-',
  `sampel` char(20) NOT NULL DEFAULT '-',
  `alat` int(11) NOT NULL DEFAULT '0',
  `bhp` int(11) NOT NULL DEFAULT '0',
  `infrastruktur` int(11) NOT NULL DEFAULT '0',
  `rujuk` int(11) NOT NULL DEFAULT '0',
  `jasa_rs` int(11) NOT NULL DEFAULT '0',
  `tarif` int(11) NOT NULL,
  `kel` char(100) NOT NULL DEFAULT '-',
  `tgl` timestamp NOT NULL DEFAULT '2014-01-01 00:00:00',
  `bawah` char(50) NOT NULL,
  `atas` double NOT NULL DEFAULT '0',
  `laborat` double NOT NULL DEFAULT '0',
  `isjamak` tinyint(1) NOT NULL DEFAULT '0',
  `kode_rujukan` char(3) DEFAULT NULL,
  `rujukan` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lab_tarif`),
  KEY `kode_rujukan` (`kode_rujukan`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_tarif_copy` */

DROP TABLE IF EXISTS `lab_tarif_copy`;

CREATE TABLE `lab_tarif_copy` (
  `id_lab_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(100) NOT NULL DEFAULT '-',
  `harga_normal` char(30) NOT NULL DEFAULT '-',
  `satuan` char(20) NOT NULL DEFAULT '-',
  `sampel` char(20) NOT NULL DEFAULT '-',
  `alat` int(11) NOT NULL DEFAULT '0',
  `bhp` int(11) NOT NULL DEFAULT '0',
  `infrastruktur` int(11) NOT NULL DEFAULT '0',
  `rujuk` int(11) NOT NULL DEFAULT '0',
  `jasa_rs` int(11) NOT NULL DEFAULT '0',
  `tarif` int(11) NOT NULL,
  `kel` char(100) NOT NULL DEFAULT '-',
  `tgl` timestamp NOT NULL DEFAULT '2014-01-01 00:00:00',
  `bawah` char(10) NOT NULL,
  `atas` double NOT NULL DEFAULT '0',
  `laborat` double NOT NULL DEFAULT '0',
  `isjamak` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lab_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_trn` */

DROP TABLE IF EXISTS `lab_trn`;

CREATE TABLE `lab_trn` (
  `id_lab_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `kelas` char(5) NOT NULL DEFAULT '-',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_asuransi` int(11) NOT NULL DEFAULT '0',
  `biaya` int(11) NOT NULL DEFAULT '0',
  `lunas` int(1) NOT NULL DEFAULT '0',
  `id_petugas` int(11) NOT NULL DEFAULT '0',
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `id_sampel` int(11) NOT NULL DEFAULT '0',
  `keterangan` text,
  `iol` int(1) DEFAULT NULL,
  `diskon` int(3) DEFAULT NULL,
  `nama` char(70) DEFAULT NULL,
  `val_lab` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_lab_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_unit` (`id_unit`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_petugas` (`id_petugas`),
  KEY `id_dokter` (`id_dokter`),
  KEY `id_pengirim` (`id_pengirim`),
  KEY `id_sampel` (`id_sampel`)
) ENGINE=MyISAM AUTO_INCREMENT=9665 DEFAULT CHARSET=latin1;

/*Table structure for table `log_mr_tt_pindah` */

DROP TABLE IF EXISTS `log_mr_tt_pindah`;

CREATE TABLE `log_mr_tt_pindah` (
  `id_log_mr_tt_pindah` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `kelas_awal` char(5) DEFAULT NULL,
  `no_bed_awal` char(3) DEFAULT NULL,
  `kelas_akhir` char(5) DEFAULT NULL,
  `no_bed_akhir` char(3) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_log_mr_tt_pindah`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=latin1;

/*Table structure for table `log_transaksi` */

DROP TABLE IF EXISTS `log_transaksi`;

CREATE TABLE `log_transaksi` (
  `id_log_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_trn` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` tinytext,
  `id_aplikasi` int(11) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_log_transaksi`)
) ENGINE=MyISAM AUTO_INCREMENT=992 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_agama` */

DROP TABLE IF EXISTS `mr_agama`;

CREATE TABLE `mr_agama` (
  `id_agama` int(11) NOT NULL AUTO_INCREMENT,
  `nama_agama` char(40) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_aktif` */

DROP TABLE IF EXISTS `mr_aktif`;

CREATE TABLE `mr_aktif` (
  `id_mr_aktif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(10) DEFAULT NULL,
  `kode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mr_aktif`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_alamat_bps` */

DROP TABLE IF EXISTS `mr_alamat_bps`;

CREATE TABLE `mr_alamat_bps` (
  `id_alamat_bps` int(11) NOT NULL AUTO_INCREMENT,
  `kode_desa` int(11) DEFAULT NULL,
  `nama_desa` char(30) DEFAULT NULL,
  `kode_kecamatan` int(11) DEFAULT NULL,
  `nama_kecamatan` char(50) DEFAULT NULL,
  `kode_kabupaten` int(11) DEFAULT NULL,
  `nama_kabupaten` char(50) DEFAULT NULL,
  `kode_propinsi` int(11) DEFAULT NULL,
  `nama_propinsi` char(50) DEFAULT NULL,
  `alamat` char(200) DEFAULT NULL,
  PRIMARY KEY (`id_alamat_bps`)
) ENGINE=InnoDB AUTO_INCREMENT=152750 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_alergi` */

DROP TABLE IF EXISTS `mr_alergi`;

CREATE TABLE `mr_alergi` (
  `id_alergi` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` char(225) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `nama_obat` char(150) DEFAULT NULL,
  PRIMARY KEY (`id_alergi`),
  KEY `id_catatan_medik` (`id_catatan_medik`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_asuransi` */

DROP TABLE IF EXISTS `mr_asuransi`;

CREATE TABLE `mr_asuransi` (
  `id_asuransi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(40) NOT NULL DEFAULT '-',
  `alamat` char(50) NOT NULL DEFAULT '-',
  `telp` char(20) NOT NULL DEFAULT '0',
  `bpjs` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_asuransi`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_batal_periksa` */

DROP TABLE IF EXISTS `mr_batal_periksa`;

CREATE TABLE `mr_batal_periksa` (
  `id_mr_batala_periksa` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mr_batala_periksa`)
) ENGINE=InnoDB AUTO_INCREMENT=2237 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_bl` */

DROP TABLE IF EXISTS `mr_bl`;

CREATE TABLE `mr_bl` (
  `id_mr_bl` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL DEFAULT '2014-01-01',
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `id_register` int(8) NOT NULL DEFAULT '0',
  `bl` int(1) NOT NULL DEFAULT '1',
  `id_unit` int(11) NOT NULL DEFAULT '1',
  `iol` int(1) NOT NULL DEFAULT '1',
  `id_kecamatan` char(10) NOT NULL,
  `id_kabupaten` char(10) NOT NULL,
  `id_asuransi` int(11) NOT NULL DEFAULT '1',
  `id_dokter` int(11) NOT NULL DEFAULT '1',
  `umur_th` int(11) NOT NULL DEFAULT '0',
  `umur_bln` int(11) NOT NULL DEFAULT '0',
  `umur_hr` int(11) NOT NULL DEFAULT '0',
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `imunisasi` int(11) NOT NULL DEFAULT '0',
  `kb` int(11) NOT NULL DEFAULT '0',
  `apseptor` int(11) NOT NULL DEFAULT '0',
  `pp` int(11) NOT NULL DEFAULT '0',
  `anc` int(11) NOT NULL DEFAULT '0',
  `gyn` int(11) NOT NULL DEFAULT '0',
  `jam_exec` char(8) NOT NULL DEFAULT '00:00:00',
  `lanjut` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `tb` double NOT NULL DEFAULT '0',
  `bb` double NOT NULL DEFAULT '0',
  `ulna` float(5,2) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `no_periksa` int(11) NOT NULL,
  `no_pendaftaran` int(11) NOT NULL,
  `daftar_ke` int(11) DEFAULT NULL,
  `jasa` int(11) DEFAULT NULL,
  `tgl_m_t` date DEFAULT NULL,
  `val_farmasi` int(1) DEFAULT NULL,
  `val_lab` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_mr_bl`),
  KEY `no_reg` (`id_register`),
  KEY `unit` (`id_unit`),
  KEY `asuransi` (`id_asuransi`),
  KEY `dokter` (`id_dokter`),
  KEY `no_cm` (`id_catatan_medik`)
) ENGINE=MyISAM AUTO_INCREMENT=79760 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_bl_copy` */

DROP TABLE IF EXISTS `mr_bl_copy`;

CREATE TABLE `mr_bl_copy` (
  `id_mr_bl` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `id_register` int(8) NOT NULL DEFAULT '0',
  `bl` int(1) NOT NULL DEFAULT '1',
  `id_unit` int(11) NOT NULL DEFAULT '1',
  `iol` int(1) NOT NULL DEFAULT '1',
  `id_kecamatan` char(10) NOT NULL,
  `id_kabupaten` char(10) NOT NULL,
  `id_asuransi` int(11) NOT NULL DEFAULT '1',
  `id_dokter` int(11) NOT NULL DEFAULT '1',
  `umur_th` int(11) NOT NULL DEFAULT '0',
  `umur_bln` int(11) NOT NULL DEFAULT '0',
  `umur_hr` int(11) NOT NULL DEFAULT '0',
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `imunisasi` int(11) NOT NULL DEFAULT '0',
  `kb` int(11) NOT NULL DEFAULT '0',
  `apseptor` int(11) NOT NULL DEFAULT '0',
  `pp` int(11) NOT NULL DEFAULT '0',
  `anc` int(11) NOT NULL DEFAULT '0',
  `gyn` int(11) NOT NULL DEFAULT '0',
  `jam_exec` char(8) NOT NULL DEFAULT '00:00:00',
  `lanjut` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `tb` double NOT NULL DEFAULT '0',
  `bb` double NOT NULL DEFAULT '0',
  `ulna` float(5,2) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `no_periksa` int(11) NOT NULL,
  `no_pendaftaran` int(11) NOT NULL,
  `daftar_ke` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mr_bl`),
  KEY `no_reg` (`id_register`),
  KEY `unit` (`id_unit`),
  KEY `asuransi` (`id_asuransi`),
  KEY `dokter` (`id_dokter`),
  KEY `no_cm` (`id_catatan_medik`)
) ENGINE=MyISAM AUTO_INCREMENT=6232 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_bl_copyx` */

DROP TABLE IF EXISTS `mr_bl_copyx`;

CREATE TABLE `mr_bl_copyx` (
  `id_mr_bl` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `id_register` int(8) NOT NULL DEFAULT '0',
  `bl` int(1) NOT NULL DEFAULT '1',
  `id_unit` int(11) NOT NULL DEFAULT '1',
  `iol` int(1) NOT NULL DEFAULT '1',
  `id_kecamatan` char(10) NOT NULL,
  `id_kabupaten` char(10) NOT NULL,
  `id_asuransi` int(11) NOT NULL DEFAULT '1',
  `id_dokter` int(11) NOT NULL DEFAULT '1',
  `umur_th` int(11) NOT NULL DEFAULT '0',
  `umur_bln` int(11) NOT NULL DEFAULT '0',
  `umur_hr` int(11) NOT NULL DEFAULT '0',
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `imunisasi` int(11) NOT NULL DEFAULT '0',
  `kb` int(11) NOT NULL DEFAULT '0',
  `apseptor` int(11) NOT NULL DEFAULT '0',
  `pp` int(11) NOT NULL DEFAULT '0',
  `anc` int(11) NOT NULL DEFAULT '0',
  `gyn` int(11) NOT NULL DEFAULT '0',
  `jam_exec` char(8) NOT NULL DEFAULT '00:00:00',
  `lanjut` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `tb` double NOT NULL DEFAULT '0',
  `bb` double NOT NULL DEFAULT '0',
  `ulna` float(5,2) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `no_periksa` int(11) NOT NULL,
  `no_pendaftaran` int(11) NOT NULL,
  `daftar_ke` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mr_bl`),
  KEY `no_reg` (`id_register`),
  KEY `unit` (`id_unit`),
  KEY `asuransi` (`id_asuransi`),
  KEY `dokter` (`id_dokter`),
  KEY `no_cm` (`id_catatan_medik`)
) ENGINE=MyISAM AUTO_INCREMENT=6240 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_daftar` */

DROP TABLE IF EXISTS `mr_daftar`;

CREATE TABLE `mr_daftar` (
  `id_daftar` int(11) NOT NULL AUTO_INCREMENT,
  `nama_daftar` char(20) NOT NULL,
  PRIMARY KEY (`id_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_desa` */

DROP TABLE IF EXISTS `mr_desa`;

CREATE TABLE `mr_desa` (
  `kode` char(12) NOT NULL DEFAULT '-',
  `nama` char(40) NOT NULL DEFAULT '-',
  `kode_kec` char(10) NOT NULL DEFAULT '0',
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no_urut`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=806 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_desa_bps` */

DROP TABLE IF EXISTS `mr_desa_bps`;

CREATE TABLE `mr_desa_bps` (
  `kode_kecamatan` int(11) NOT NULL,
  `kode_desa` int(11) NOT NULL,
  `nama_desa` char(60) NOT NULL,
  `id_desa` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_desa`),
  KEY `kode_kecamatan` (`kode_kecamatan`),
  KEY `kode_desa` (`kode_desa`)
) ENGINE=MyISAM AUTO_INCREMENT=131071 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_desa_tmp` */

DROP TABLE IF EXISTS `mr_desa_tmp`;

CREATE TABLE `mr_desa_tmp` (
  `propinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `kecamatan` int(11) NOT NULL,
  `desa` int(11) NOT NULL,
  `nama_desa` char(60) NOT NULL,
  `id_desa` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id_desa` (`id_desa`)
) ENGINE=InnoDB AUTO_INCREMENT=80064 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_desa_tmp_copy` */

DROP TABLE IF EXISTS `mr_desa_tmp_copy`;

CREATE TABLE `mr_desa_tmp_copy` (
  `propinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `kecamatan` int(11) NOT NULL,
  `desa` int(11) NOT NULL,
  `nama_desa` char(60) NOT NULL,
  `id_desa` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id_desa` (`id_desa`)
) ENGINE=InnoDB AUTO_INCREMENT=14529 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_dirujuk` */

DROP TABLE IF EXISTS `mr_dirujuk`;

CREATE TABLE `mr_dirujuk` (
  `id_dirujuk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rujukan` char(40) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_dirujuk`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_dokter` */

DROP TABLE IF EXISTS `mr_dokter`;

CREATE TABLE `mr_dokter` (
  `id_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokter` char(50) NOT NULL,
  PRIMARY KEY (`id_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_golongan_darah` */

DROP TABLE IF EXISTS `mr_golongan_darah`;

CREATE TABLE `mr_golongan_darah` (
  `id_golongan_darah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_golongan_darah` char(2) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_golongan_darah`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_icd` */

DROP TABLE IF EXISTS `mr_icd`;

CREATE TABLE `mr_icd` (
  `dtype` varchar(5) NOT NULL DEFAULT '-',
  `icd` varchar(10) NOT NULL DEFAULT '-',
  `diagnosa` varchar(150) NOT NULL DEFAULT '-',
  `no_urut` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `dtd` char(10) NOT NULL DEFAULT '-',
  `stp` char(6) NOT NULL DEFAULT '-',
  `ewar` char(10) DEFAULT NULL,
  PRIMARY KEY (`no_urut`),
  KEY `icd` (`icd`)
) ENGINE=MyISAM AUTO_INCREMENT=18845 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_icd9` */

DROP TABLE IF EXISTS `mr_icd9`;

CREATE TABLE `mr_icd9` (
  `icd9` char(10) NOT NULL DEFAULT '-',
  `diagnosa` char(60) NOT NULL DEFAULT '-',
  `id_icd9` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_icd9`)
) ENGINE=InnoDB AUTO_INCREMENT=20461 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_icd_copy` */

DROP TABLE IF EXISTS `mr_icd_copy`;

CREATE TABLE `mr_icd_copy` (
  `dtype` varchar(5) NOT NULL DEFAULT '-',
  `icd` varchar(10) NOT NULL DEFAULT '-',
  `diagnosa` varchar(150) NOT NULL DEFAULT '-',
  `no_urut` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `dtd` char(10) NOT NULL DEFAULT '-',
  `stp` char(6) NOT NULL DEFAULT '-',
  `ewar` char(10) DEFAULT NULL,
  PRIMARY KEY (`no_urut`),
  KEY `icd` (`icd`)
) ENGINE=MyISAM AUTO_INCREMENT=12311 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_iol` */

DROP TABLE IF EXISTS `mr_iol`;

CREATE TABLE `mr_iol` (
  `id_mr_iol` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_mr_iol`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kabupaten` */

DROP TABLE IF EXISTS `mr_kabupaten`;

CREATE TABLE `mr_kabupaten` (
  `kode` char(10) NOT NULL DEFAULT '-',
  `nama` char(40) NOT NULL DEFAULT '-',
  `kd_prop` char(10) NOT NULL DEFAULT '-',
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no_urut`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kabupaten_bps` */

DROP TABLE IF EXISTS `mr_kabupaten_bps`;

CREATE TABLE `mr_kabupaten_bps` (
  `kode_propinsi` int(11) NOT NULL,
  `kode_kabupaten` int(11) NOT NULL,
  `nama_kabupaten` char(60) NOT NULL,
  `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_kabupaten`),
  KEY `kode_propinsi` (`kode_propinsi`),
  KEY `kode_kabupaten` (`kode_kabupaten`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kabupaten_bps_copy` */

DROP TABLE IF EXISTS `mr_kabupaten_bps_copy`;

CREATE TABLE `mr_kabupaten_bps_copy` (
  `kode_propinsi` int(11) NOT NULL,
  `kode_kabupaten` int(11) NOT NULL,
  `nama_kabupaten` char(60) NOT NULL,
  `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_kabupaten`)
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kasus_polisi` */

DROP TABLE IF EXISTS `mr_kasus_polisi`;

CREATE TABLE `mr_kasus_polisi` (
  `id_kasus_polisi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kasus_polisi` char(5) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_kasus_polisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kecamatan` */

DROP TABLE IF EXISTS `mr_kecamatan`;

CREATE TABLE `mr_kecamatan` (
  `kode` char(10) NOT NULL DEFAULT '-',
  `nama` char(40) NOT NULL DEFAULT '-',
  `kd_kab` char(10) NOT NULL DEFAULT '-',
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no_urut`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=387 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kecamatan_bps` */

DROP TABLE IF EXISTS `mr_kecamatan_bps`;

CREATE TABLE `mr_kecamatan_bps` (
  `kode_kabupaten` int(11) NOT NULL,
  `kode_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` char(60) NOT NULL,
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_kecamatan`),
  KEY `kode_kabupaten` (`kode_kabupaten`),
  KEY `kode_kecamatan` (`kode_kecamatan`)
) ENGINE=MyISAM AUTO_INCREMENT=6940 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kecamatan_bps_copy` */

DROP TABLE IF EXISTS `mr_kecamatan_bps_copy`;

CREATE TABLE `mr_kecamatan_bps_copy` (
  `kode_kabupaten` int(11) NOT NULL,
  `kode_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` char(60) NOT NULL,
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_kecamatan`),
  KEY `kode_kabupaten` (`kode_kabupaten`),
  KEY `kode_kecamatan` (`kode_kecamatan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kel_asuransi` */

DROP TABLE IF EXISTS `mr_kel_asuransi`;

CREATE TABLE `mr_kel_asuransi` (
  `id_mr_kel_asuransi` int(11) NOT NULL AUTO_INCREMENT,
  `kel_asuransi` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_mr_kel_asuransi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kel_stp` */

DROP TABLE IF EXISTS `mr_kel_stp`;

CREATE TABLE `mr_kel_stp` (
  `id_kel_stp` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kel_stp` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_kel_stp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kelas` */

DROP TABLE IF EXISTS `mr_kelas`;

CREATE TABLE `mr_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` char(5) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kelompok_unit` */

DROP TABLE IF EXISTS `mr_kelompok_unit`;

CREATE TABLE `mr_kelompok_unit` (
  `id_kelompok_unit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelompok_unit` char(50) NOT NULL,
  PRIMARY KEY (`id_kelompok_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_keluarga` */

DROP TABLE IF EXISTS `mr_keluarga`;

CREATE TABLE `mr_keluarga` (
  `id_keluarga` int(11) NOT NULL AUTO_INCREMENT,
  `nama_keluarga` char(30) NOT NULL,
  PRIMARY KEY (`id_keluarga`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_ket_bl` */

DROP TABLE IF EXISTS `mr_ket_bl`;

CREATE TABLE `mr_ket_bl` (
  `id_mr_ket_bl` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_mr_ket_bl`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_kondisi_pulang` */

DROP TABLE IF EXISTS `mr_kondisi_pulang`;

CREATE TABLE `mr_kondisi_pulang` (
  `id_kondisi_pulang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kondisi_pulang` char(40) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_kondisi_pulang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lama` */

DROP TABLE IF EXISTS `mr_lama`;

CREATE TABLE `mr_lama` (
  `id_lama` int(11) NOT NULL AUTO_INCREMENT,
  `lama` int(11) NOT NULL,
  PRIMARY KEY (`id_lama`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_10_diagnosa` */

DROP TABLE IF EXISTS `mr_lap_10_diagnosa`;

CREATE TABLE `mr_lap_10_diagnosa` (
  `id_lap_10_diagnosa` int(11) NOT NULL AUTO_INCREMENT,
  `icd` char(10) DEFAULT NULL,
  `keluar_hidup_laki` int(11) DEFAULT NULL,
  `keluar_mati_laki` int(11) DEFAULT NULL,
  `keluar_hidup_perempuan` int(11) DEFAULT NULL,
  `keluar_mati_perempuan` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lap_10_diagnosa`)
) ENGINE=MyISAM AUTO_INCREMENT=36397 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_diagnosa` */

DROP TABLE IF EXISTS `mr_lap_diagnosa`;

CREATE TABLE `mr_lap_diagnosa` (
  `id_mr_lap_diagnosa` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `bl` int(11) DEFAULT NULL,
  `umur_hr` int(11) DEFAULT NULL,
  `umur_bln` int(11) DEFAULT NULL,
  `umur_th` int(11) DEFAULT NULL,
  `icd` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_mr_lap_diagnosa`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_ewar` */

DROP TABLE IF EXISTS `mr_lap_ewar`;

CREATE TABLE `mr_lap_ewar` (
  `id_lap_ewar` int(11) NOT NULL AUTO_INCREMENT,
  `minggu` int(11) DEFAULT NULL,
  `icd` char(10) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `e` int(11) DEFAULT NULL,
  `f` int(11) DEFAULT NULL,
  `g` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `i` int(11) DEFAULT NULL,
  `j` int(11) DEFAULT NULL,
  `k` int(11) DEFAULT NULL,
  `l` int(11) DEFAULT NULL,
  `m` int(11) DEFAULT NULL,
  `n` int(11) DEFAULT NULL,
  `p` int(11) DEFAULT NULL,
  `q` int(11) DEFAULT NULL,
  `r` int(11) DEFAULT NULL,
  `s` int(11) DEFAULT NULL,
  `t` int(11) DEFAULT NULL,
  `u` int(11) DEFAULT NULL,
  `v` int(11) DEFAULT NULL,
  `w` int(11) DEFAULT NULL,
  `yy` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `xx` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lap_ewar`)
) ENGINE=InnoDB AUTO_INCREMENT=6467 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_kunj_bl_poli` */

DROP TABLE IF EXISTS `mr_lap_kunj_bl_poli`;

CREATE TABLE `mr_lap_kunj_bl_poli` (
  `id_mr_lap_kunj_bl_poli` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(60) DEFAULT NULL,
  `baru` int(11) DEFAULT NULL,
  `lama` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `kode` int(11) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `laki` int(11) DEFAULT NULL,
  `perempuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mr_lap_kunj_bl_poli`)
) ENGINE=InnoDB AUTO_INCREMENT=649729 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_kunjungan_dokter` */

DROP TABLE IF EXISTS `mr_lap_kunjungan_dokter`;

CREATE TABLE `mr_lap_kunjungan_dokter` (
  `id_lap_kunjungan_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokter` char(40) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  PRIMARY KEY (`id_lap_kunjungan_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=13209 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_kunjungan_kecamatan` */

DROP TABLE IF EXISTS `mr_lap_kunjungan_kecamatan`;

CREATE TABLE `mr_lap_kunjungan_kecamatan` (
  `id_kunjungan_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kecamatan` char(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `kode_kecamatan` int(11) NOT NULL,
  PRIMARY KEY (`id_kunjungan_kecamatan`)
) ENGINE=MyISAM AUTO_INCREMENT=10905 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_kunjungan_per_dokter` */

DROP TABLE IF EXISTS `mr_lap_kunjungan_per_dokter`;

CREATE TABLE `mr_lap_kunjungan_per_dokter` (
  `id_kunjungan_per_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `jam` char(8) NOT NULL,
  `id_catatan_medik` int(11) NOT NULL,
  `id_register` int(11) NOT NULL,
  `nama` char(50) NOT NULL,
  `nama_dokter` char(50) NOT NULL,
  `nama_unit` char(50) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `nama_asuransi` char(50) NOT NULL,
  `id_asuransi` int(11) NOT NULL,
  PRIMARY KEY (`id_kunjungan_per_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=1067214 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_kunjungan_per_kecamatan` */

DROP TABLE IF EXISTS `mr_lap_kunjungan_per_kecamatan`;

CREATE TABLE `mr_lap_kunjungan_per_kecamatan` (
  `id_kunjungan_per_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `jam` char(8) NOT NULL,
  `id_catatan_medik` int(11) NOT NULL,
  `id_register` int(11) NOT NULL,
  `nama` char(50) NOT NULL,
  `nama_dokter` char(50) NOT NULL,
  `nama_unit` char(50) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `nama_asuransi` char(50) NOT NULL,
  `id_asuransi` int(11) NOT NULL,
  `alamat` char(60) DEFAULT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kunjungan_per_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=59242 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_kunjungan_poliklinik` */

DROP TABLE IF EXISTS `mr_lap_kunjungan_poliklinik`;

CREATE TABLE `mr_lap_kunjungan_poliklinik` (
  `id_lap_kunjungan_poliklinik` int(11) NOT NULL AUTO_INCREMENT,
  `nama_unit` char(40) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  PRIMARY KEY (`id_lap_kunjungan_poliklinik`)
) ENGINE=MyISAM AUTO_INCREMENT=15570 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_lap_per_diagnosa_ralan_ranap` */

DROP TABLE IF EXISTS `mr_lap_per_diagnosa_ralan_ranap`;

CREATE TABLE `mr_lap_per_diagnosa_ralan_ranap` (
  `id_lap_per_diagnosa_ralan_ranap` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `nama` char(80) DEFAULT NULL,
  `alamat` char(80) DEFAULT NULL,
  `unit` char(30) DEFAULT NULL,
  `th` int(11) DEFAULT NULL,
  `bln` int(11) DEFAULT NULL,
  `hr` int(11) DEFAULT NULL,
  `jam` char(5) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `icd` char(10) DEFAULT NULL,
  `rawat` char(30) DEFAULT NULL,
  `sex` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_lap_per_diagnosa_ralan_ranap`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_laporan_baru_lama` */

DROP TABLE IF EXISTS `mr_laporan_baru_lama`;

CREATE TABLE `mr_laporan_baru_lama` (
  `id_baru_lama` int(11) NOT NULL AUTO_INCREMENT,
  `bulan` char(10) NOT NULL,
  `nama` char(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `iol` char(20) DEFAULT NULL,
  `sex` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_baru_lama`)
) ENGINE=MyISAM AUTO_INCREMENT=1100 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_log_edit_cm` */

DROP TABLE IF EXISTS `mr_log_edit_cm`;

CREATE TABLE `mr_log_edit_cm` (
  `id_log_edit_cm` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik_lama` int(11) NOT NULL,
  `id_catatan_medik_baru` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_baru` char(60) NOT NULL,
  `nama_lama` char(60) NOT NULL,
  `alamat_lama` char(60) NOT NULL,
  `alamat_baru` char(60) NOT NULL,
  `id_register_lama` int(11) DEFAULT NULL,
  `id_register_baru` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_log_edit_cm`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_log_edit_pasien_inap` */

DROP TABLE IF EXISTS `mr_log_edit_pasien_inap`;

CREATE TABLE `mr_log_edit_pasien_inap` (
  `id_log_pasien_inap` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `kelas1` char(1) DEFAULT NULL,
  `kelas2` char(1) DEFAULT NULL,
  `asuransi1` int(11) DEFAULT NULL,
  `asuransi2` int(11) DEFAULT NULL,
  `unit1` int(11) DEFAULT NULL,
  `unit2` int(11) DEFAULT NULL,
  `bed1` int(11) DEFAULT NULL,
  `bed2` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  PRIMARY KEY (`id_log_pasien_inap`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_log_pasien_inap` */

DROP TABLE IF EXISTS `mr_log_pasien_inap`;

CREATE TABLE `mr_log_pasien_inap` (
  `id_log_pasien_inap` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_petugas` int(11) NOT NULL DEFAULT '0',
  `id_asuransi` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log_pasien_inap`)
) ENGINE=MyISAM AUTO_INCREMENT=3986 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_menikah` */

DROP TABLE IF EXISTS `mr_menikah`;

CREATE TABLE `mr_menikah` (
  `id_menikah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menikah` char(40) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_menikah`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pangkat` */

DROP TABLE IF EXISTS `mr_pangkat`;

CREATE TABLE `mr_pangkat` (
  `id_pangkat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pangkat` char(50) NOT NULL,
  `kesatuan` int(11) NOT NULL,
  `kelas_perawatan` int(11) NOT NULL,
  PRIMARY KEY (`id_pangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien` */

DROP TABLE IF EXISTS `mr_pasien`;

CREATE TABLE `mr_pasien` (
  `id_catatan_medik` int(8) DEFAULT '0',
  `id_register` int(8) DEFAULT '0',
  `nama` char(60) DEFAULT '-',
  `alamat` char(60) DEFAULT '-',
  `id_desa` int(11) DEFAULT '0',
  `id_kecamatan` int(11) DEFAULT '0',
  `id_kabupaten` int(11) DEFAULT '0',
  `id_propinsi` int(11) DEFAULT '0',
  `sex` int(3) DEFAULT '0' COMMENT '1=laki,2=perempuan',
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_lahir` date DEFAULT '2013-01-01',
  `tempat` char(30) DEFAULT '-',
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_kunjungan` date DEFAULT '2013-01-01',
  `jam_kunjungan` char(8) DEFAULT '00:00:00',
  `poli_inap` int(1) DEFAULT '1' COMMENT '1=poli,2=inap',
  `id_unit` int(3) DEFAULT '0',
  `id_dokter` int(3) DEFAULT '0',
  `id_pengirim` int(3) DEFAULT '0',
  `id_asuransi` int(3) DEFAULT '0',
  `id_petugas` int(11) DEFAULT '0',
  `id_pendidikan` int(3) DEFAULT '0',
  `id_agama` int(3) DEFAULT '0',
  `id_pekerjaan` int(3) DEFAULT '0',
  `nama_ortu` char(60) DEFAULT '-',
  `telp` char(25) DEFAULT '-',
  `no_periksa` int(3) DEFAULT '0',
  `aktif` int(1) DEFAULT '1' COMMENT '1=aktif, 0=tidak aktif',
  `kelas` char(5) DEFAULT '3',
  `id_petugas_tpp` int(11) DEFAULT '0',
  `tgl_inap` date DEFAULT '2013-01-01',
  `jam_inap` char(8) DEFAULT '00:00:00',
  `tgl_pulang` date DEFAULT '2013-01-01',
  `jam_pulang` char(8) DEFAULT '00:00:00',
  `no_bed` char(3) DEFAULT '0',
  `icd` char(15) DEFAULT '0',
  `kunjungan` int(11) DEFAULT '0',
  `id_keluarga` int(11) DEFAULT '0',
  `alamat_ortu` char(60) DEFAULT '-',
  `id_pekerjaan_ortu` int(11) DEFAULT '0',
  `golongan_darah` char(2) DEFAULT '-',
  `id_kasus_polisi` int(1) DEFAULT NULL COMMENT '1=ya, 2=tidak',
  `menikah` int(1) DEFAULT '0' COMMENT '1=ya, 2 tidak',
  `id_ppk` int(11) DEFAULT '0',
  `tanggal_ppk` date DEFAULT '2014-01-01',
  `no_pendaftaran` int(11) DEFAULT NULL,
  `id_pangkat` int(11) DEFAULT NULL,
  `nip` char(30) DEFAULT NULL,
  `nik` char(30) DEFAULT NULL,
  `alergi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pasien`),
  UNIQUE KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `nama` (`nama`),
  KEY `id_desa` (`id_desa`),
  KEY `poli_inap` (`poli_inap`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_unit` (`id_unit`),
  KEY `id_pengirim` (`id_pengirim`),
  KEY `id_petugas` (`id_petugas`),
  KEY `id_register` (`id_register`)
) ENGINE=MyISAM AUTO_INCREMENT=19294 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien_copy` */

DROP TABLE IF EXISTS `mr_pasien_copy`;

CREATE TABLE `mr_pasien_copy` (
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `id_register` int(8) NOT NULL DEFAULT '0',
  `nama` char(60) NOT NULL DEFAULT '-',
  `alamat` char(60) NOT NULL DEFAULT '-',
  `id_desa` int(11) NOT NULL DEFAULT '0',
  `id_kecamatan` int(11) NOT NULL DEFAULT '0',
  `id_kabupaten` int(11) NOT NULL DEFAULT '0',
  `id_propinsi` int(11) NOT NULL DEFAULT '0',
  `sex` int(3) NOT NULL DEFAULT '0' COMMENT '1=laki,2=perempuan',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_lahir` date NOT NULL DEFAULT '2013-01-01',
  `tempat` char(30) NOT NULL DEFAULT '-',
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_kunjungan` date NOT NULL DEFAULT '2013-01-01',
  `jam_kunjungan` char(8) NOT NULL DEFAULT '00:00:00',
  `poli_inap` int(1) NOT NULL DEFAULT '1' COMMENT '1=poli,2=inap',
  `id_unit` int(3) NOT NULL DEFAULT '0',
  `id_dokter` int(3) NOT NULL DEFAULT '0',
  `id_pengirim` int(3) NOT NULL DEFAULT '0',
  `id_asuransi` int(3) NOT NULL DEFAULT '0',
  `id_petugas` int(11) NOT NULL DEFAULT '0',
  `id_pendidikan` int(3) NOT NULL DEFAULT '0',
  `id_agama` int(3) NOT NULL DEFAULT '0',
  `id_pekerjaan` int(3) NOT NULL DEFAULT '0',
  `nama_ortu` char(60) NOT NULL DEFAULT '-',
  `telp` char(25) NOT NULL DEFAULT '-',
  `no_periksa` int(3) NOT NULL DEFAULT '0',
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif, 0=tidak aktif',
  `kelas` char(1) NOT NULL DEFAULT '3',
  `id_petugas_tpp` int(11) NOT NULL DEFAULT '0',
  `tgl_inap` date NOT NULL DEFAULT '2013-01-01',
  `jam_inap` char(8) NOT NULL DEFAULT '00:00:00',
  `tgl_pulang` date NOT NULL DEFAULT '2013-01-01',
  `jam_pulang` char(8) NOT NULL DEFAULT '00:00:00',
  `no_bed` char(3) NOT NULL DEFAULT '0',
  `icd` char(15) NOT NULL DEFAULT '0',
  `kunjungan` int(11) NOT NULL DEFAULT '0',
  `id_keluarga` int(11) NOT NULL DEFAULT '0',
  `alamat_ortu` char(60) NOT NULL DEFAULT '-',
  `id_pekerjaan_ortu` int(11) NOT NULL DEFAULT '0',
  `golongan_darah` char(2) NOT NULL DEFAULT '-',
  `id_kasus_polisi` int(1) NOT NULL COMMENT '1=ya, 2=tidak',
  `menikah` int(1) NOT NULL DEFAULT '0' COMMENT '1=ya, 2 tidak',
  `id_ppk` int(11) NOT NULL DEFAULT '0',
  `tanggal_ppk` date NOT NULL DEFAULT '2014-01-01',
  `no_pendaftaran` int(11) NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  `nip` char(30) NOT NULL,
  `nik` char(30) DEFAULT NULL,
  `alergi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pasien`),
  UNIQUE KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `nama` (`nama`),
  KEY `id_desa` (`id_desa`),
  KEY `poli_inap` (`poli_inap`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_unit` (`id_unit`),
  KEY `id_pengirim` (`id_pengirim`),
  KEY `id_petugas` (`id_petugas`),
  KEY `id_register` (`id_register`)
) ENGINE=MyISAM AUTO_INCREMENT=14282 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien_lama` */

DROP TABLE IF EXISTS `mr_pasien_lama`;

CREATE TABLE `mr_pasien_lama` (
  `no_cm` char(12) DEFAULT NULL,
  `nama` char(100) DEFAULT NULL,
  `alamat` char(150) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=29101 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien_lama_asli` */

DROP TABLE IF EXISTS `mr_pasien_lama_asli`;

CREATE TABLE `mr_pasien_lama_asli` (
  `no_cm` int(8) DEFAULT NULL,
  `nama` char(100) DEFAULT NULL,
  `alamat` char(150) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_pasien`),
  KEY `no_cm` (`no_cm`)
) ENGINE=InnoDB AUTO_INCREMENT=32403 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien_lama_int` */

DROP TABLE IF EXISTS `mr_pasien_lama_int`;

CREATE TABLE `mr_pasien_lama_int` (
  `no_cm` int(12) DEFAULT NULL,
  `nama` char(100) DEFAULT NULL,
  `alamat` char(150) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien_pulang` */

DROP TABLE IF EXISTS `mr_pasien_pulang`;

CREATE TABLE `mr_pasien_pulang` (
  `id_pasien_pulang` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `umur_hari` int(11) NOT NULL DEFAULT '0',
  `umur_bulan` int(11) NOT NULL DEFAULT '0',
  `umur_tahun` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '2014-01-01',
  `tgl_pulang` date NOT NULL DEFAULT '2013-01-01',
  `jam_pulang` char(8) NOT NULL DEFAULT '00:00:00',
  `id_kondisi_pulang` int(11) NOT NULL DEFAULT '0',
  `id_dirujuk` int(11) NOT NULL DEFAULT '0',
  `lama_dirawat` int(11) NOT NULL DEFAULT '0',
  `kelas` char(2) NOT NULL DEFAULT '-',
  `icd_utama` char(10) NOT NULL DEFAULT '-',
  `icd_1` char(10) NOT NULL DEFAULT '-',
  `icd_2` char(10) NOT NULL DEFAULT '-',
  `icd_3` char(10) NOT NULL DEFAULT '-',
  `icd_4` char(10) NOT NULL DEFAULT '-',
  `icd_5` char(10) NOT NULL DEFAULT '-',
  `icd_6` char(10) NOT NULL DEFAULT '-',
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `poli_inap` int(11) NOT NULL DEFAULT '0',
  `icd9_1` char(10) NOT NULL DEFAULT '-',
  `icd9_2` char(10) NOT NULL DEFAULT '-',
  `icd9_3` char(10) NOT NULL DEFAULT '-',
  `icd9_4` char(10) NOT NULL DEFAULT '-',
  `icd9_5` char(10) NOT NULL DEFAULT '-',
  `id_unit` int(11) DEFAULT NULL,
  `bl` int(11) DEFAULT NULL,
  `id_mr_bl` int(11) DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `tgl_kunjungan` date DEFAULT NULL,
  `jam_kunjungan` char(8) DEFAULT NULL,
  PRIMARY KEY (`id_pasien_pulang`)
) ENGINE=MyISAM AUTO_INCREMENT=80073 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasien_tmp` */

DROP TABLE IF EXISTS `mr_pasien_tmp`;

CREATE TABLE `mr_pasien_tmp` (
  `no_cm` int(8) NOT NULL DEFAULT '0',
  `nama` char(50) DEFAULT NULL,
  `alamat` char(70) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no_urut`)
) ENGINE=MyISAM AUTO_INCREMENT=78100 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pasienx` */

DROP TABLE IF EXISTS `mr_pasienx`;

CREATE TABLE `mr_pasienx` (
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(8) DEFAULT '0',
  `id_register` int(8) DEFAULT '0',
  `nama` char(60) DEFAULT '-',
  `alamat` char(60) DEFAULT '-',
  `id_desa` char(15) DEFAULT '0',
  `id_kecamatan` char(15) DEFAULT '0',
  `id_kabupaten` char(15) DEFAULT '0',
  `id_propinsi` char(15) DEFAULT '0',
  `sex` int(3) DEFAULT '0',
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_lahir` date DEFAULT '2013-01-01',
  `tempat` char(30) DEFAULT '-',
  `tgl_kunjungan` date DEFAULT '2013-01-01',
  `jam_kunjungan` char(8) DEFAULT '00:00:00',
  `poli_inap` int(1) DEFAULT '1',
  `id_unit` int(3) DEFAULT '0',
  `id_dokter` int(3) DEFAULT '0',
  `id_pengirim` int(3) DEFAULT '0',
  `id_asuransi` int(3) DEFAULT '0',
  `id_petugas` int(11) DEFAULT '0',
  `id_pendidikan` int(3) DEFAULT '0',
  `id_agama` int(3) DEFAULT '0',
  `id_pekerjaan` int(3) DEFAULT '0',
  `nama_ortu` char(60) DEFAULT '-',
  `telp` int(20) DEFAULT '0',
  `no_periksa` int(3) DEFAULT '0',
  `aktif` int(1) DEFAULT '1',
  `kelas` char(1) DEFAULT '3',
  `id_petugas_tpp` int(11) DEFAULT '0',
  `tgl_inap` date DEFAULT '2013-01-01',
  `jam_inap` char(8) DEFAULT '00:00:00',
  `tgl_pulang` date DEFAULT '2013-01-01',
  `jam_pulang` char(8) DEFAULT '00:00:00',
  `no_bed` int(11) DEFAULT '0',
  `icd` char(15) DEFAULT '0',
  `kunjungan` int(11) DEFAULT '0',
  `id_keluarga` int(11) DEFAULT '0',
  `alamat_ortu` char(60) DEFAULT '-',
  `id_pekerjaan_ortu` int(11) DEFAULT '0',
  PRIMARY KEY (`id_pasien`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pekerjaan` */

DROP TABLE IF EXISTS `mr_pekerjaan`;

CREATE TABLE `mr_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pendaftaran` */

DROP TABLE IF EXISTS `mr_pendaftaran`;

CREATE TABLE `mr_pendaftaran` (
  `id_mr_pendaftaran` int(11) NOT NULL AUTO_INCREMENT,
  `no_pendaftaran` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_mr_pendaftaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pendidikan` */

DROP TABLE IF EXISTS `mr_pendidikan`;

CREATE TABLE `mr_pendidikan` (
  `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_pengirim` */

DROP TABLE IF EXISTS `mr_pengirim`;

CREATE TABLE `mr_pengirim` (
  `id_pengirim` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengirim` char(60) NOT NULL DEFAULT '-',
  `alamat_pengirim` char(60) NOT NULL DEFAULT '-',
  `telp` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pengirim`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_poli_inap` */

DROP TABLE IF EXISTS `mr_poli_inap`;

CREATE TABLE `mr_poli_inap` (
  `id_poli_inap` int(11) NOT NULL AUTO_INCREMENT,
  `nama_poli_inap` char(40) NOT NULL,
  PRIMARY KEY (`id_poli_inap`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_ppk` */

DROP TABLE IF EXISTS `mr_ppk`;

CREATE TABLE `mr_ppk` (
  `id_ppk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ppk` char(50) NOT NULL,
  `alamat_ppk` char(50) NOT NULL,
  `telp` char(20) NOT NULL,
  PRIMARY KEY (`id_ppk`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_profesi` */

DROP TABLE IF EXISTS `mr_profesi`;

CREATE TABLE `mr_profesi` (
  `id_profesi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_profesi` char(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_profesi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_propinsi` */

DROP TABLE IF EXISTS `mr_propinsi`;

CREATE TABLE `mr_propinsi` (
  `id_propinsi` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(5) DEFAULT '-',
  `nama` char(40) DEFAULT '-',
  PRIMARY KEY (`id_propinsi`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_propinsi_bps` */

DROP TABLE IF EXISTS `mr_propinsi_bps`;

CREATE TABLE `mr_propinsi_bps` (
  `kode_propinsi` int(11) NOT NULL,
  `nama_propinsi` char(50) NOT NULL,
  `id_propinsi` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_propinsi`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_rla` */

DROP TABLE IF EXISTS `mr_rla`;

CREATE TABLE `mr_rla` (
  `id_rla` int(10) NOT NULL AUTO_INCREMENT,
  `icd` char(10) NOT NULL DEFAULT '0',
  `7_28hr` int(4) NOT NULL DEFAULT '0',
  `28_1th` int(4) NOT NULL DEFAULT '0',
  `1_4th` int(4) NOT NULL DEFAULT '0',
  `5_14th` int(4) NOT NULL DEFAULT '0',
  `15_24th` int(4) NOT NULL DEFAULT '0',
  `25_44th` int(4) NOT NULL DEFAULT '0',
  `45_64th` int(4) NOT NULL DEFAULT '0',
  `65th` int(4) NOT NULL DEFAULT '0',
  `laki` int(4) NOT NULL DEFAULT '0',
  `perempuan` int(4) NOT NULL DEFAULT '0',
  `hidup` int(4) NOT NULL DEFAULT '0',
  `mati` int(4) NOT NULL DEFAULT '0',
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `bl` int(1) NOT NULL DEFAULT '0',
  `poli_inap` int(1) NOT NULL DEFAULT '0',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_mr_bl` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `0_6hr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rla`)
) ENGINE=MyISAM AUTO_INCREMENT=83707 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_rla_copy` */

DROP TABLE IF EXISTS `mr_rla_copy`;

CREATE TABLE `mr_rla_copy` (
  `id_rla` int(10) NOT NULL AUTO_INCREMENT,
  `icd` char(10) NOT NULL DEFAULT '0',
  `0_28hr` int(4) NOT NULL DEFAULT '0',
  `28_1th` int(4) NOT NULL DEFAULT '0',
  `1_4th` int(4) NOT NULL DEFAULT '0',
  `5_14th` int(4) NOT NULL DEFAULT '0',
  `15_24th` int(4) NOT NULL DEFAULT '0',
  `25_44th` int(4) NOT NULL DEFAULT '0',
  `45_64th` int(4) NOT NULL DEFAULT '0',
  `65th` int(4) NOT NULL DEFAULT '0',
  `laki` int(4) NOT NULL DEFAULT '0',
  `perempuan` int(4) NOT NULL DEFAULT '0',
  `hidup` int(4) NOT NULL DEFAULT '0',
  `mati` int(4) NOT NULL DEFAULT '0',
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bl` int(1) NOT NULL DEFAULT '0',
  `poli_inap` int(1) NOT NULL DEFAULT '0',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_mr_bl` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rla`)
) ENGINE=MyISAM AUTO_INCREMENT=197395 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_rla_copy1` */

DROP TABLE IF EXISTS `mr_rla_copy1`;

CREATE TABLE `mr_rla_copy1` (
  `id_rla` int(10) NOT NULL AUTO_INCREMENT,
  `icd` char(10) NOT NULL DEFAULT '0',
  `7_28hr` int(4) NOT NULL DEFAULT '0',
  `28_1th` int(4) NOT NULL DEFAULT '0',
  `1_4th` int(4) NOT NULL DEFAULT '0',
  `5_14th` int(4) NOT NULL DEFAULT '0',
  `15_24th` int(4) NOT NULL DEFAULT '0',
  `25_44th` int(4) NOT NULL DEFAULT '0',
  `45_64th` int(4) NOT NULL DEFAULT '0',
  `65th` int(4) NOT NULL DEFAULT '0',
  `laki` int(4) NOT NULL DEFAULT '0',
  `perempuan` int(4) NOT NULL DEFAULT '0',
  `hidup` int(4) NOT NULL DEFAULT '0',
  `mati` int(4) NOT NULL DEFAULT '0',
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `tanggal` date DEFAULT NULL,
  `bl` int(1) NOT NULL DEFAULT '0',
  `poli_inap` int(1) NOT NULL DEFAULT '0',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_mr_bl` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `0_6hr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rla`)
) ENGINE=MyISAM AUTO_INCREMENT=8800 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_rla_tmp` */

DROP TABLE IF EXISTS `mr_rla_tmp`;

CREATE TABLE `mr_rla_tmp` (
  `id_rla_tmp` int(10) NOT NULL AUTO_INCREMENT,
  `icd` char(10) NOT NULL DEFAULT '0',
  `0_6hrlk` int(4) DEFAULT NULL,
  `7_28hrlk` int(4) NOT NULL DEFAULT '0',
  `28_1thlk` int(4) NOT NULL DEFAULT '0',
  `1_4thlk` int(4) NOT NULL DEFAULT '0',
  `5_14thlk` int(4) NOT NULL DEFAULT '0',
  `15_24thlk` int(4) NOT NULL DEFAULT '0',
  `25_44thlk` int(4) NOT NULL DEFAULT '0',
  `45_64thlk` int(4) NOT NULL DEFAULT '0',
  `65thlk` int(4) NOT NULL DEFAULT '0',
  `laki` int(4) NOT NULL DEFAULT '0',
  `perempuan` int(4) NOT NULL DEFAULT '0',
  `hiduplk` int(4) NOT NULL DEFAULT '0',
  `matilk` int(4) NOT NULL DEFAULT '0',
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bl` int(1) NOT NULL DEFAULT '0',
  `poli_inap` int(1) NOT NULL DEFAULT '0',
  `0_6hrpr` int(11) DEFAULT NULL,
  `7_28hrpr` int(11) DEFAULT NULL,
  `28_1thpr` int(11) DEFAULT NULL,
  `1_4thpr` int(11) DEFAULT NULL,
  `5_14thpr` int(11) DEFAULT NULL,
  `15_24thpr` int(11) DEFAULT NULL,
  `25_44thpr` int(11) DEFAULT NULL,
  `45_64thpr` int(11) DEFAULT NULL,
  `65thpr` int(11) DEFAULT NULL,
  `kode_rs` char(10) DEFAULT NULL,
  `hiduppr` int(11) DEFAULT NULL,
  `matipr` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rla_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_rlax` */

DROP TABLE IF EXISTS `mr_rlax`;

CREATE TABLE `mr_rlax` (
  `id_rla` int(10) NOT NULL AUTO_INCREMENT,
  `icd` char(10) NOT NULL DEFAULT '0',
  `0_28hr` int(4) NOT NULL DEFAULT '0',
  `28_1th` int(4) NOT NULL DEFAULT '0',
  `1_4th` int(4) NOT NULL DEFAULT '0',
  `5_14th` int(4) NOT NULL DEFAULT '0',
  `15_24th` int(4) NOT NULL DEFAULT '0',
  `25_44th` int(4) NOT NULL DEFAULT '0',
  `45_64th` int(4) NOT NULL DEFAULT '0',
  `65th` int(4) NOT NULL DEFAULT '0',
  `laki` int(4) NOT NULL DEFAULT '0',
  `perempuan` int(4) NOT NULL DEFAULT '0',
  `hidup` int(4) NOT NULL DEFAULT '0',
  `mati` int(4) NOT NULL DEFAULT '0',
  `id_catatan_medik` int(8) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bl` int(1) NOT NULL DEFAULT '0',
  `poli_inap` int(1) NOT NULL DEFAULT '0',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_mr_bl` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rla`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `mr_sensus_ranap` */

DROP TABLE IF EXISTS `mr_sensus_ranap`;

CREATE TABLE `mr_sensus_ranap` (
  `id_sensus_ranap` int(11) NOT NULL AUTO_INCREMENT,
  `id_unit` int(11) DEFAULT NULL,
  `awal_v` int(11) DEFAULT NULL,
  `awal_1` int(11) DEFAULT NULL,
  `masuk_v` int(11) DEFAULT NULL,
  `pindahan_v` int(11) DEFAULT NULL,
  `di_pindahkan_v` int(11) DEFAULT NULL,
  `keluar_hidup_v` int(11) DEFAULT NULL,
  `aps_v` int(11) DEFAULT NULL,
  `di_rujuk_v` int(11) DEFAULT NULL,
  `mati_krng48_v` int(11) DEFAULT NULL,
  `mati_lbh48_v` int(11) DEFAULT NULL,
  `lama_v` int(11) DEFAULT NULL,
  `keluar_masuk_v` int(11) DEFAULT NULL,
  `hari_perawatan_v` int(11) DEFAULT NULL,
  `validasi` char(1) DEFAULT NULL,
  `id_petugas` char(10) DEFAULT NULL,
  `tgl_entri` date DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_entri` char(8) DEFAULT NULL,
  `awal_2` int(11) DEFAULT NULL,
  `awal_3` int(11) DEFAULT NULL,
  `masuk_1` int(11) DEFAULT NULL,
  `masuk_2` int(11) DEFAULT NULL,
  `masuk_3` int(11) DEFAULT NULL,
  `pindahan_1` int(11) DEFAULT NULL,
  `pindahan_2` int(11) DEFAULT NULL,
  `pindahan_3` int(11) DEFAULT NULL,
  `di_pindahkan_1` int(11) DEFAULT NULL,
  `di_pindahkan_2` int(11) DEFAULT NULL,
  `di_pindahkan_3` int(11) DEFAULT NULL,
  `keluar_hidup_1` int(11) DEFAULT NULL,
  `keluar_hidup_2` int(11) DEFAULT NULL,
  `keluar_hidup_3` int(11) DEFAULT NULL,
  `aps_1` int(11) DEFAULT NULL,
  `aps_2` int(11) DEFAULT NULL,
  `aps_3` int(11) DEFAULT NULL,
  `di_rujuk_1` int(11) DEFAULT NULL,
  `di_rujuk_2` int(11) DEFAULT NULL,
  `di_rujuk_3` int(11) DEFAULT NULL,
  `mati_krng48_1` int(11) DEFAULT NULL,
  `mati_krng48_2` int(11) DEFAULT NULL,
  `mati_krng48_3` int(11) DEFAULT NULL,
  `mati_lbh48_1` int(11) DEFAULT NULL,
  `mati_lbh48_2` int(11) DEFAULT NULL,
  `mati_lbh48_3` int(11) DEFAULT NULL,
  `lama_1` int(11) DEFAULT NULL,
  `lama_2` int(11) DEFAULT NULL,
  `lama_3` int(11) DEFAULT NULL,
  `keluar_masuk_1` int(11) DEFAULT NULL,
  `keluar_masuk_2` int(11) DEFAULT NULL,
  `keluar_masuk_3` int(11) DEFAULT NULL,
  `hari_perawatan_1` int(11) DEFAULT NULL,
  `hari_perawatan_2` int(11) DEFAULT NULL,
  `hari_perawatan_3` int(11) DEFAULT NULL,
  `tt_v` int(2) DEFAULT NULL,
  `tt_1` int(2) DEFAULT NULL,
  `tt_2` int(2) DEFAULT NULL,
  `tt_3` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_sensus_ranap`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_sex` */

DROP TABLE IF EXISTS `mr_sex`;

CREATE TABLE `mr_sex` (
  `id_sex` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sex` char(10) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_sex`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_shift` */

DROP TABLE IF EXISTS `mr_shift`;

CREATE TABLE `mr_shift` (
  `id_mr_shift` int(11) NOT NULL AUTO_INCREMENT,
  `nama_shift` char(8) DEFAULT NULL,
  PRIMARY KEY (`id_mr_shift`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_sjr` */

DROP TABLE IF EXISTS `mr_sjr`;

CREATE TABLE `mr_sjr` (
  `id_sjr` int(11) NOT NULL AUTO_INCREMENT,
  `no_sjr` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_register` int(8) NOT NULL,
  `id_pengirim` int(8) NOT NULL,
  `diagnosa` char(200) NOT NULL,
  `id_catatan_medik` int(8) NOT NULL,
  `tgl_pulang` date NOT NULL DEFAULT '2014-01-01',
  `id_kondisi` int(8) NOT NULL,
  `ket_periksa` char(255) NOT NULL,
  `ket_diagnosa` char(255) NOT NULL,
  `ket_obat` char(255) NOT NULL,
  `ket_anjuran` char(255) NOT NULL,
  `id_dokter` int(8) NOT NULL,
  `umur_th` int(11) NOT NULL,
  `umur_bln` int(11) NOT NULL,
  `umur_hr` int(11) NOT NULL,
  PRIMARY KEY (`id_sjr`)
) ENGINE=MyISAM AUTO_INCREMENT=14469 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_tmp` */

DROP TABLE IF EXISTS `mr_tmp`;

CREATE TABLE `mr_tmp` (
  `no_cm` int(8) DEFAULT NULL,
  `no_reg` int(8) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `alamat` char(100) DEFAULT NULL,
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_tt` */

DROP TABLE IF EXISTS `mr_tt`;

CREATE TABLE `mr_tt` (
  `id_mr_tt` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` char(5) DEFAULT NULL,
  `no_bed` char(3) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `rencana_pulang` char(70) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `ket_antri` int(1) DEFAULT NULL,
  `vk` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_mr_tt`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_unit` */

DROP TABLE IF EXISTS `mr_unit`;

CREATE TABLE `mr_unit` (
  `id_unit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_unit` char(30) NOT NULL DEFAULT '-',
  `kelompok` int(11) NOT NULL DEFAULT '0' COMMENT '1=POLI,2=inap,3penunjang',
  `tempat_tidur` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `satu` int(11) NOT NULL,
  `dua` int(11) NOT NULL,
  `tiga` int(11) NOT NULL,
  `aktif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_unit_copy` */

DROP TABLE IF EXISTS `mr_unit_copy`;

CREATE TABLE `mr_unit_copy` (
  `id_unit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_unit` char(30) NOT NULL DEFAULT '-',
  `kelompok` int(11) NOT NULL DEFAULT '0' COMMENT '1=POLI,2=inap,3penunjang',
  `tempat_tidur` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `satu` int(11) NOT NULL,
  `dua` int(11) NOT NULL,
  `tiga` int(11) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_unitx` */

DROP TABLE IF EXISTS `mr_unitx`;

CREATE TABLE `mr_unitx` (
  `id_unit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_unit` char(30) NOT NULL DEFAULT '-',
  `kelompok` int(11) NOT NULL DEFAULT '0' COMMENT '1=POLI,2=inap,3penunjang',
  `tempat_tidur` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `satu` int(11) NOT NULL,
  `dua` int(11) NOT NULL,
  `tiga` int(11) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Table structure for table `mr_var_tmp` */

DROP TABLE IF EXISTS `mr_var_tmp`;

CREATE TABLE `mr_var_tmp` (
  `id_mr_var_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `mr_var_tmp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mr_var_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Table structure for table `mst_unit` */

DROP TABLE IF EXISTS `mst_unit`;

CREATE TABLE `mst_unit` (
  `id_mst_unit` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_trn_unit` int(11) NOT NULL DEFAULT '0',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `biaya` int(11) NOT NULL DEFAULT '0',
  `lunas` int(11) NOT NULL DEFAULT '0' COMMENT '1=lunas, 2 belum',
  PRIMARY KEY (`id_mst_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pasien_tmp` */

DROP TABLE IF EXISTS `pasien_tmp`;

CREATE TABLE `pasien_tmp` (
  `no_rm` char(8) DEFAULT NULL,
  `nm_pas` char(80) DEFAULT NULL,
  `no_id` char(8) DEFAULT NULL,
  `alamat` char(80) DEFAULT NULL,
  `kel` char(30) DEFAULT NULL,
  `kec` char(30) DEFAULT NULL,
  `kab` char(30) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `tp_lahir` char(20) DEFAULT NULL,
  `tg_lahir` char(10) DEFAULT NULL,
  `no_urut` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no_urut`)
) ENGINE=InnoDB AUTO_INCREMENT=78021 DEFAULT CHARSET=latin1;

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `profesi` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pendidikan` varchar(5) NOT NULL,
  `no_str` varchar(100) NOT NULL,
  `tanggal_str` date NOT NULL,
  `no_sip` varchar(100) NOT NULL,
  `tanggal_sip` date NOT NULL,
  `status_kepegawaian` varchar(10) NOT NULL,
  `status_bekerja` varchar(10) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_aplikasi` */

DROP TABLE IF EXISTS `psdi_aplikasi`;

CREATE TABLE `psdi_aplikasi` (
  `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_aplikasi` char(40) NOT NULL,
  PRIMARY KEY (`id_aplikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_jabatan` */

DROP TABLE IF EXISTS `psdi_jabatan`;

CREATE TABLE `psdi_jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` char(40) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_lap_pegawai` */

DROP TABLE IF EXISTS `psdi_lap_pegawai`;

CREATE TABLE `psdi_lap_pegawai` (
  `id_lap_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nama_petugas` char(50) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lap_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_md5` */

DROP TABLE IF EXISTS `psdi_md5`;

CREATE TABLE `psdi_md5` (
  `id_md5` int(11) NOT NULL AUTO_INCREMENT,
  `password` char(60) NOT NULL,
  PRIMARY KEY (`id_md5`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_petugas` */

DROP TABLE IF EXISTS `psdi_petugas`;

CREATE TABLE `psdi_petugas` (
  `nama` char(60) NOT NULL DEFAULT '-',
  `tempat` char(30) NOT NULL,
  `tgl_lahir` date NOT NULL DEFAULT '2014-01-01',
  `sex` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `nomor_str` char(50) NOT NULL,
  `nomor_sip` char(50) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `fungsional` char(40) NOT NULL,
  `profesi` char(40) NOT NULL,
  `pendidikan_terakhir` char(40) NOT NULL,
  `jurusan` char(40) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` char(20) NOT NULL,
  `password` char(60) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_aplikasi` int(11) NOT NULL,
  `alamat` char(50) NOT NULL,
  `hapus` int(1) DEFAULT NULL,
  `gudang` int(1) DEFAULT NULL,
  `laporan` int(1) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `nik` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_petugas`),
  KEY `id_aplikasi` (`id_aplikasi`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_petugas_copy` */

DROP TABLE IF EXISTS `psdi_petugas_copy`;

CREATE TABLE `psdi_petugas_copy` (
  `nama` char(60) NOT NULL DEFAULT '-',
  `tempat` char(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `sex` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `nomor_str` char(50) NOT NULL,
  `nomor_sip` char(50) NOT NULL,
  `jabatan` char(40) NOT NULL,
  `fungsional` char(40) NOT NULL,
  `profesi` char(40) NOT NULL,
  `pendidikan_terakhir` char(40) NOT NULL,
  `jurusan` char(40) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` char(20) NOT NULL,
  `password` char(60) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_aplikasi` int(11) NOT NULL,
  `alamat` char(50) NOT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_petugas_copyx` */

DROP TABLE IF EXISTS `psdi_petugas_copyx`;

CREATE TABLE `psdi_petugas_copyx` (
  `nama` char(60) NOT NULL DEFAULT '-',
  `tempat` char(30) NOT NULL,
  `tgl_lahir` date NOT NULL DEFAULT '2014-01-01',
  `sex` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `nomor_str` char(50) NOT NULL,
  `nomor_sip` char(50) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `fungsional` char(40) NOT NULL,
  `profesi` char(40) NOT NULL,
  `pendidikan_terakhir` char(40) NOT NULL,
  `jurusan` char(40) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` char(20) NOT NULL,
  `password` char(60) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_aplikasi` int(11) NOT NULL,
  `alamat` char(50) NOT NULL,
  `hapus` int(1) DEFAULT NULL,
  `gudang` int(1) DEFAULT NULL,
  `laporan` int(1) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `nik` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_petugas`),
  KEY `id_aplikasi` (`id_aplikasi`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_petugasx` */

DROP TABLE IF EXISTS `psdi_petugasx`;

CREATE TABLE `psdi_petugasx` (
  `nama` char(60) NOT NULL DEFAULT '-',
  `tempat` char(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `sex` char(1) NOT NULL,
  `status` char(2) NOT NULL,
  `nomor_str` char(50) NOT NULL,
  `nomor_sip` char(50) NOT NULL,
  `jabatan` char(40) NOT NULL,
  `fungsional` char(40) NOT NULL,
  `profesi` char(40) NOT NULL,
  `pendidikan_terakhir` char(40) NOT NULL,
  `jurusan` char(40) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_petugas`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_riw_aplikasi` */

DROP TABLE IF EXISTS `psdi_riw_aplikasi`;

CREATE TABLE `psdi_riw_aplikasi` (
  `id_riw_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(11) DEFAULT NULL,
  `id_aplikasi` int(11) DEFAULT NULL,
  `transaksi` int(1) DEFAULT NULL COMMENT '1= ya, 2 = tidak',
  `data` int(1) DEFAULT NULL COMMENT '1 = ya, 2 tidak',
  `laporan` int(1) DEFAULT NULL,
  `hapus` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_riw_aplikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_rs` */

DROP TABLE IF EXISTS `psdi_rs`;

CREATE TABLE `psdi_rs` (
  `id_rs` int(11) NOT NULL AUTO_INCREMENT,
  `kode_rs` int(11) NOT NULL DEFAULT '0',
  `nama_rs` char(60) NOT NULL DEFAULT '-',
  `alamat_rs` char(100) NOT NULL DEFAULT '-',
  `telp_rs` char(30) NOT NULL DEFAULT '0',
  `email_rs` char(30) DEFAULT NULL,
  `fax_rs` char(30) NOT NULL,
  `kabupaten_rs` char(40) DEFAULT NULL,
  `server_php` char(100) DEFAULT NULL,
  `alamat_nota` char(100) DEFAULT NULL,
  `set_logo` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_rs`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_rs_copy` */

DROP TABLE IF EXISTS `psdi_rs_copy`;

CREATE TABLE `psdi_rs_copy` (
  `id_rs` int(11) NOT NULL AUTO_INCREMENT,
  `kode_rs` int(11) NOT NULL DEFAULT '0',
  `nama_rs` char(60) NOT NULL DEFAULT '-',
  `alamat_rs` char(100) NOT NULL DEFAULT '-',
  `telp_rs` char(30) NOT NULL DEFAULT '0',
  `email_rs` char(30) NOT NULL,
  `fax_rs` char(30) NOT NULL,
  `kabupaten_rs` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_rs`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `psdi_status_petugas` */

DROP TABLE IF EXISTS `psdi_status_petugas`;

CREATE TABLE `psdi_status_petugas` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `nama_status` char(20) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_cetak_trn` */

DROP TABLE IF EXISTS `ro_cetak_trn`;

CREATE TABLE `ro_cetak_trn` (
  `id ro_cetak_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_no_trn` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `nama_petugas` char(60) DEFAULT NULL,
  PRIMARY KEY (`id ro_cetak_trn`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_det_trn` */

DROP TABLE IF EXISTS `ro_det_trn`;

CREATE TABLE `ro_det_trn` (
  `id_ro_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `id_ro_trn` int(11) NOT NULL DEFAULT '0',
  `id_ro_tarif` int(11) NOT NULL DEFAULT '0',
  `hasil` text NOT NULL,
  `bhp` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `amplop` int(11) NOT NULL,
  `jasa_petugas` int(11) NOT NULL,
  `operator` int(11) NOT NULL,
  `manajemen` int(11) NOT NULL,
  `pengirim` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `kesan` text NOT NULL,
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `hepar` text,
  `lien` text,
  `ren` text,
  `vf` text,
  `pankreas` text,
  `vu` text,
  `kesan_usg` text,
  `rujukan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ro_det_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_ro_trn` (`id_ro_trn`),
  KEY `id_ro_tarif` (`id_ro_tarif`),
  KEY `id_unit` (`id_unit`),
  KEY `id_dokter` (`id_dokter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `ro_det_trn_copy` */

DROP TABLE IF EXISTS `ro_det_trn_copy`;

CREATE TABLE `ro_det_trn_copy` (
  `id_ro_det_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `id_ro_trn` int(11) NOT NULL DEFAULT '0',
  `id_ro_tarif` int(11) NOT NULL DEFAULT '0',
  `hasil` text NOT NULL,
  `bhp` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `amplop` int(11) NOT NULL,
  `jasa_petugas` int(11) NOT NULL,
  `operator` int(11) NOT NULL,
  `manajemen` int(11) NOT NULL,
  `pengirim` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `kesan` text NOT NULL,
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `hepar` text,
  `lien` text,
  `ren` text,
  `vf` text,
  `pankreas` text,
  `vu` text,
  `kesan_usg` text,
  PRIMARY KEY (`id_ro_det_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_ro_trn` (`id_ro_trn`),
  KEY `id_ro_tarif` (`id_ro_tarif`),
  KEY `id_unit` (`id_unit`),
  KEY `id_dokter` (`id_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=4210 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_kelompok` */

DROP TABLE IF EXISTS `ro_kelompok`;

CREATE TABLE `ro_kelompok` (
  `ro_kelompok` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelompok` char(30) NOT NULL,
  PRIMARY KEY (`ro_kelompok`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_lap_kunj_poli_inap` */

DROP TABLE IF EXISTS `ro_lap_kunj_poli_inap`;

CREATE TABLE `ro_lap_kunj_poli_inap` (
  `id_ro_lap_kunj_poli_inap` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(8) DEFAULT NULL,
  `id_register` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `alamat` char(70) DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `nama_unit` char(30) DEFAULT NULL,
  `nama_asuransi` char(30) DEFAULT NULL,
  `nama_dokter` char(50) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ro_lap_kunj_poli_inap`)
) ENGINE=MyISAM AUTO_INCREMENT=5406 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_lap_pendapatan` */

DROP TABLE IF EXISTS `ro_lap_pendapatan`;

CREATE TABLE `ro_lap_pendapatan` (
  `id_ro_lap_pendapatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(3) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `id_catatan_medik` int(8) DEFAULT NULL,
  `id_register` int(8) DEFAULT NULL,
  `id_ro_trn` int(11) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `qty` int(3) DEFAULT NULL,
  `alat` int(11) DEFAULT NULL,
  `bhp` int(11) DEFAULT NULL,
  `amplop` int(11) DEFAULT NULL,
  `jasa_petugas` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `manajemen` int(11) DEFAULT NULL,
  `bhp1` int(11) DEFAULT NULL,
  `pengirim` int(11) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `jam` char(8) DEFAULT NULL,
  `iol` int(1) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `nama_pasien` char(60) DEFAULT NULL,
  `alat1` int(11) DEFAULT NULL,
  `amplop1` int(11) DEFAULT NULL,
  `nama_asuransi` char(50) DEFAULT NULL,
  `jasa_petugas1` int(11) DEFAULT NULL,
  `operator1` int(11) DEFAULT NULL,
  `manajemen1` int(11) DEFAULT NULL,
  `pengirim1` int(11) DEFAULT NULL,
  `sisa1` int(11) DEFAULT NULL,
  `biaya1` int(11) DEFAULT NULL,
  `nama_dokter` char(70) DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `rujukan` int(11) DEFAULT NULL,
  `rujukan1` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ro_lap_pendapatan`)
) ENGINE=MyISAM AUTO_INCREMENT=3833 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_lap_tmp` */

DROP TABLE IF EXISTS `ro_lap_tmp`;

CREATE TABLE `ro_lap_tmp` (
  `id_lap_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `id_petugas` int(10) DEFAULT NULL,
  `nama_petugas` char(50) DEFAULT NULL,
  `iol` int(11) DEFAULT NULL,
  `kode_rujukan` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_lap_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_rujuk` */

DROP TABLE IF EXISTS `ro_rujuk`;

CREATE TABLE `ro_rujuk` (
  `id_ro_rujuk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rujukan` char(50) NOT NULL,
  PRIMARY KEY (`id_ro_rujuk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_tarif` */

DROP TABLE IF EXISTS `ro_tarif`;

CREATE TABLE `ro_tarif` (
  `id_ro_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(60) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL DEFAULT '0',
  `bhp` int(11) NOT NULL DEFAULT '0',
  `alat` int(11) NOT NULL DEFAULT '0',
  `amplop` int(11) NOT NULL DEFAULT '0',
  `jasa_petugas` int(11) NOT NULL DEFAULT '0',
  `operator` int(11) NOT NULL DEFAULT '0',
  `manajemen` int(11) NOT NULL DEFAULT '0',
  `pengirim` int(11) NOT NULL DEFAULT '0',
  `sisa` int(11) NOT NULL DEFAULT '0',
  `tarif` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `radiologi` int(3) DEFAULT '0',
  `rujukan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ro_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_tarif_copy` */

DROP TABLE IF EXISTS `ro_tarif_copy`;

CREATE TABLE `ro_tarif_copy` (
  `id_ro_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(60) NOT NULL DEFAULT '-',
  `kel` int(3) NOT NULL DEFAULT '0',
  `bhp` int(11) NOT NULL DEFAULT '0',
  `alat` int(11) NOT NULL DEFAULT '0',
  `amplop` int(11) NOT NULL DEFAULT '0',
  `jasa_petugas` int(11) NOT NULL DEFAULT '0',
  `operator` int(11) NOT NULL DEFAULT '0',
  `manajemen` int(11) NOT NULL DEFAULT '0',
  `pengirim` int(11) NOT NULL DEFAULT '0',
  `sisa` int(11) NOT NULL DEFAULT '0',
  `tarif` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '2014-01-01',
  `radiologi` int(3) DEFAULT '0',
  PRIMARY KEY (`id_ro_tarif`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Table structure for table `ro_trn` */

DROP TABLE IF EXISTS `ro_trn`;

CREATE TABLE `ro_trn` (
  `id_ro_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `kelas` char(5) NOT NULL DEFAULT '-',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_asuransi` int(11) NOT NULL DEFAULT '0',
  `biaya` int(11) NOT NULL DEFAULT '0',
  `lunas` int(1) NOT NULL DEFAULT '0',
  `id_petugas` int(11) NOT NULL DEFAULT '0',
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `id_rujuk` int(11) NOT NULL,
  `umur_th` int(11) NOT NULL,
  `umur_bln` int(11) NOT NULL,
  `umur_hr` int(11) NOT NULL,
  `icd` char(10) NOT NULL,
  `iol` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ro_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_unit` (`id_unit`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_petugas` (`id_petugas`),
  KEY `id_dokter` (`id_dokter`),
  KEY `id_pengirim` (`id_pengirim`),
  KEY `id_rujuk` (`id_rujuk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `ro_trn_copy` */

DROP TABLE IF EXISTS `ro_trn_copy`;

CREATE TABLE `ro_trn_copy` (
  `id_ro_trn` int(11) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(11) NOT NULL DEFAULT '0',
  `id_register` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `jam` char(8) NOT NULL DEFAULT '00:00:00',
  `kelas` char(1) NOT NULL DEFAULT '-',
  `id_unit` int(11) NOT NULL DEFAULT '0',
  `id_asuransi` int(11) NOT NULL DEFAULT '0',
  `biaya` int(11) NOT NULL DEFAULT '0',
  `lunas` int(1) NOT NULL DEFAULT '0',
  `id_petugas` int(11) NOT NULL DEFAULT '0',
  `id_dokter` int(11) NOT NULL DEFAULT '0',
  `id_pengirim` int(11) NOT NULL DEFAULT '0',
  `id_rujuk` int(11) NOT NULL,
  `umur_th` int(11) NOT NULL,
  `umur_bln` int(11) NOT NULL,
  `umur_hr` int(11) NOT NULL,
  `icd` char(10) NOT NULL,
  `iol` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ro_trn`),
  KEY `id_catatan_medik` (`id_catatan_medik`),
  KEY `id_register` (`id_register`),
  KEY `id_unit` (`id_unit`),
  KEY `id_asuransi` (`id_asuransi`),
  KEY `id_petugas` (`id_petugas`),
  KEY `id_dokter` (`id_dokter`),
  KEY `id_pengirim` (`id_pengirim`),
  KEY `id_rujuk` (`id_rujuk`)
) ENGINE=MyISAM AUTO_INCREMENT=4105 DEFAULT CHARSET=latin1;

/*Table structure for table `sep_tmp` */

DROP TABLE IF EXISTS `sep_tmp`;

CREATE TABLE `sep_tmp` (
  `id_septmp` int(11) NOT NULL AUTO_INCREMENT,
  `no_kpsta` char(20) DEFAULT NULL,
  `no_sep` char(20) DEFAULT NULL,
  `id_register` int(11) DEFAULT NULL,
  `id_catatan_medik` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_septmp`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Table structure for table `sesi` */

DROP TABLE IF EXISTS `sesi`;

CREATE TABLE `sesi` (
  `id_sesi` int(1) NOT NULL,
  `nama_sesi` varchar(5) NOT NULL,
  PRIMARY KEY (`id_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `surat_eksternal` */

DROP TABLE IF EXISTS `surat_eksternal`;

CREATE TABLE `surat_eksternal` (
  `no` int(100) NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `nomor_surat` (`nomor_surat`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `surat_internal` */

DROP TABLE IF EXISTS `surat_internal`;

CREATE TABLE `surat_internal` (
  `no` int(100) NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `nomor_surat` (`nomor_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `surat_masuk` */

DROP TABLE IF EXISTS `surat_masuk`;

CREATE TABLE `surat_masuk` (
  `no` int(100) NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `nomor_surat` (`nomor_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `tumbang` */

DROP TABLE IF EXISTS `tumbang`;

CREATE TABLE `tumbang` (
  `id_tumbang` int(100) NOT NULL AUTO_INCREMENT,
  `id_catatan_medik` int(8) NOT NULL,
  `id_petugas` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `jadwal` date NOT NULL,
  `id_sesi` int(1) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(8) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=Belum Datang, 1=Datang',
  `keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tumbang`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tumbang_petugas` */

DROP TABLE IF EXISTS `tumbang_petugas`;

CREATE TABLE `tumbang_petugas` (
  `id_petugas` int(10) NOT NULL AUTO_INCREMENT,
  `nama_petugas` varchar(50) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1=Aktif, 0=Nonaktif',
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `v_far_faktur_total_poli` */

DROP TABLE IF EXISTS `v_far_faktur_total_poli`;

CREATE TABLE `v_far_faktur_total_poli` (
  `id_no_sp` int(11) NOT NULL DEFAULT '0',
  `grand_total` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `waktu` */

DROP TABLE IF EXISTS `waktu`;

CREATE TABLE `waktu` (
  `id_waktu` int(11) NOT NULL,
  `tanggal` char(10) NOT NULL,
  `jam` char(8) NOT NULL,
  `tanggal_date` date NOT NULL,
  `jam_time` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_sensus` date DEFAULT NULL,
  PRIMARY KEY (`id_waktu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Trigger structure for table `far_stok` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trgFarUpdStok` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trgFarUpdStok` AFTER UPDATE ON `far_stok` FOR EACH ROW BEGIN
     INSERT INTO far_log_stok SET
  stok_poli = NEW.stok_poli, stok_inap=New.stok_inap, kode=new.no_urut ,  tanggal=CURDATE(),jam=CURTIME();
 
    END */$$


DELIMITER ;

/* Trigger structure for table `mr_pasien` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trgIdCatatanMedik` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trgIdCatatanMedik` BEFORE INSERT ON `mr_pasien` FOR EACH ROW BEGIN
    DECLARE no_cm INT;
    DECLARE no_reg INT;
    DECLARE tgllahir CHAR(10);
    DECLARE tahun,bulan,hari INT;
    DECLARE umur CHAR(20);
    
    SELECT MAX(id_catatan_medik),MAX(id_register),new.tgl_lahir FROM mr_pasien INTO no_cm,no_reg,tgllahir;
    SET new.id_catatan_medik=no_cm+1;
    SET new.id_register=no_reg+1;
    
 SELECT   FLOOR(DATEDIFF(CURDATE(),tgllahir)/365) years
            , FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12) months
            , CEILING((((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12)
            - FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12))* 30) days INTO tahun,bulan,hari;
    
    INSERT INTO mr_bl (id_catatan_medik,id_register,bl,id_unit,iol,id_asuransi,id_dokter,umur_th,umur_bln,umur_hr,jam,id_pengirim,tanggal) VALUES
     (no_cm+1,no_reg+1,1,new.id_unit,1,new.id_asuransi,new.id_dokter,tahun,bulan,hari,CURTIME(),new.id_pengirim,CURDATE());
    
    INSERT INTO ksr_trn (id_catatan_medik,id_register,id_unit,iol,id_asuransi,id_dokter,id_pengirim,jam_kunj,tgl_kunj,kelas,diskon,bayar,titip) VALUES
    (no_cm+1,no_reg+1,new.id_unit,1,new.id_asuransi,new.id_dokter,new.id_pengirim,CURTIME(),CURDATE(),3,0,0,0);
     
    IF (new.id_pengirim <> 1) THEN
    INSERT INTO mr_sjr (umur_th,umur_bln,umur_hr,id_catatan_medik,id_register,id_pengirim,id_dokter) VALUES 
    (tahun,bulan,hari,no_cm+1,no_reg+1,new.id_pengirim,new.id_dokter);
    END IF;
    
    END */$$


DELIMITER ;

/* Procedure structure for procedure `spALergi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spALergi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spALergi`(inIdCatatanMedik INT)
BEGIN
 UPDATE mr_pasien SET alergi=1 WHERE id_catatan_medik=inIdCatatanMedik;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spBayarPinjamObat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spBayarPinjamObat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spBayarPinjamObat`(inQty INT,
inIdPetugas INT,inAsal INT,inTujuan INT,inIdPinjamObat INT)
BEGIN
DECLARE vStokInap INT;
DECLARE vStokPoli INT;
DECLARE vIsi INT;
DECLARE vAsal INT;
DECLARE vTujuan INT;
DECLARE vIdBarang INT;
SELECT asal,tujuan,id_barang FROM far_pinjam_obat WHERE id_pinjam_obat=inIdPinjamObat
INTO vAsal,vTujuan,vIdBarang;
SELECT isi,stok_inap,stok_poli FROM far_stok WHERE 
no_urut =vIdBarang INTO vIsi,vStokInap,vStokPoli;
IF ((inAsal=1) AND (inTujuan=2)) THEN
  UPDATE far_stok SET stok_poli=stok_poli-(inQty),
  stok_inap=stok_inap+(inQty) WHERE no_urut =vIdBarang;
  INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
  (NOW(),CURRENT_TIME(),0,vIdBarang,'0',inQty,vStokInap-inQty,inIdPetugas,9,2,2);
  INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
  (NOW(),CURRENT_TIME(),0,vIdBarang,inQty,0,vStokPoli+inQty,inIdPetugas,10,2,1);
END IF;
IF ((inAsal=2) AND (inTujuan=1)) THEN
  UPDATE far_stok SET stok_poli=stok_poli+(inQty),
  stok_inap=stok_inap-(inQty) WHERE no_urut =vIdBarang;
  INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
  (NOW(),CURRENT_TIME(),0,vIdBarang,'0',inQty,vStokPoli-inQty,inIdPetugas,10,2,1);
  INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
  (NOW(),CURRENT_TIME(),0,vIdBarang,inQty,0,vStokInap+inQty,inIdPetugas,9,2,2);
END IF;
UPDATE far_pinjam_obat SET kembali=inQty,tanggal_kembali=CURDATE(),
jam_kembali=CURTIME(),id_petugas_kembali=inIdPetugas WHERE id_pinjam_obat=inIdPinjamObat;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCreateMd5` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCreateMd5` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCreateMd5`(inMd5 char(20),inIdPetugas char(5))
BEGIN
  declare vmd5 char(60);
  select md5(inMd5) into vmd5;
  update psdi_petugas set password=vmd5 where id_petugas=inIdPetugas;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCrudDes` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCrudDes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCrudDes`(inNamaDes CHAR(100),inNavi INT,inIdDes INT,
inIdKec INT)
BEGIN
DECLARE vKode INT;
IF (inNavi=1) THEN
SELECT MAX(kode_desa)+1 FROM mr_desa_bps INTO vKode;
INSERT INTO mr_desa_bps (kode_desa,nama_desa,kode_kecamatan)
VALUES (vKode,inNamaDes,inIdKec);
END IF;
IF (inNavi=2) THEN
UPDATE  mr_desa_bps SET nama_desa=inNamaDes
WHERE id_desa=inIdDes;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCrudKab` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCrudKab` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCrudKab`(inNamaKab CHAR(100),inNavi INT,inIdKab INT,
inIdProp int)
BEGIN
DECLARE vKode INT;
IF (inNavi=1) THEN
SELECT MAX(kode_kabupaten)+1 FROM mr_kabupaten_bps INTO vKode;
INSERT INTO mr_kabupaten_bps (kode_kabupaten,nama_kabupaten,kode_propinsi)
VALUES (vKode,inNamaKab,inIdProp);
END IF;
IF (inNavi=2) THEN
UPDATE  mr_kabupaten_bps SET nama_kabupaten=inNamaKab
WHERE id_kabupaten=inIdKab;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCrudKec` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCrudKec` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCrudKec`(inNamaKec CHAR(100),inNavi INT,inIdKec INT,
inIdKab INT)
BEGIN
DECLARE vKode INT;
IF (inNavi=1) THEN
SELECT MAX(kode_kecamatan)+1 FROM mr_kecamatan_bps INTO vKode;
INSERT INTO mr_kecamatan_bps (kode_kecamatan,nama_kecamatan,kode_kabupaten)
VALUES (vKode,inNamaKec,inIdKab);
END IF;
IF (inNavi=2) THEN
UPDATE  mr_kecamatan_bps SET nama_kecamatan=inNamaKec
WHERE id_kecamatan=inIdKec;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCrudProp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCrudProp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCrudProp`(inNamaProp char(100),inNavi int,inIdProp int)
BEGIN
declare vKode int;
if (inNavi=1) then
select max(kode_propinsi)+1 from mr_propinsi_bps into vKode;
insert into mr_propinsi_bps (kode_propinsi,nama_propinsi)
values (vKode,inNamaProp);
end if;
IF (inNavi=2) THEN
update  mr_propinsi_bps set nama_propinsi=inNamaProp
where id_propinsi=inIdProp;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCursorMrDiagnosaUnit` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCursorMrDiagnosaUnit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCursorMrDiagnosaUnit`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
begin
declare vIdUnit int;
DECLARE vJumlah INT;
DECLARE kursor CURSOR FOR SELECT id_unit FROM mr_unit where kelompok not like 2;
TRUNCATE mr_lap_10_diagnosa;
OPEN kursor;
REPEAT
FETCH kursor INTO vIdUnit;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_laki,total,id_unit)
SELECT a.icd,COUNT(a.hidup),COUNT(a.hidup),a.id_unit FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.id_unit=vIdUnit
AND b.id_kondisi_pulang NOT LIKE 4 AND a.laki=1 GROUP BY a.icd order by count(a.hidup) desc limit 10;
UNTIL FALSE END REPEAT;
CLOSE kursor;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spCursorMrRla` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCursorMrRla` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCursorMrRla`()
BEGIN
DECLARE icd_baru CHAR(10);
DECLARE icd_lama CHAR(10);
DECLARE nomor INT;
DECLARE inIdCatatanMedik INT;
DECLARE idCatatanMedikBaru INT;
DECLARE vJumlah INT;
DECLARE kursor CURSOR FOR SELECT icd,id_rla,id_catatan_medik FROM mr_rla;
OPEN kursor;
REPEAT
FETCH kursor INTO icd_lama,nomor,inIdCatatanMedik;
SELECT COUNT(icd) FROM mr_rla WHERE icd=icd_lama AND id_catatan_medik=inIdCatatanMedik AND id_rla<=nomor INTO vJumlah;
IF (vJumlah=1) THEN
   UPDATE mr_rla SET bl=1 WHERE id_rla=nomor;
   ELSE
   UPDATE mr_rla SET bl=2 WHERE id_rla=nomor;
END IF;
UNTIL FALSE END REPEAT;
CLOSE kursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCursorPasienPulang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCursorPasienPulang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCursorPasienPulang`()
BEGIN
    DECLARE vIdUnit INT;
    DECLARE vBl INT;
    DECLARE vIdRegister INT;
    declare vIol int;
    DECLARE kursor CURSOR FOR SELECT id_unit,bl,id_register,iol FROM mr_bl;
    OPEN kursor;
    REPEAT 
    FETCH kursor INTO vIdUnit,vBl,vIdRegister,vIol;
    UPDATE mr_pasien_pulang SET id_unit=vIdUnit,bl=vBl,poli_inap=vIol WHERE id_register=vIdRegister;
    UNTIL FALSE END REPEAT;
    CLOSE kursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spEksportInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spEksportInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spEksportInap`(inIdMrTt INT,inIdRegister INT)
BEGIN
DECLARE vKelas CHAR(5);
DECLARE vNoBed INT;
DECLARE vUnit INT;
UPDATE mr_tt SET id_register=inIdRegister,ket_antri=1 WHERE id_mr_tt=inIdMrTt;
SELECT kelas,no_bed,id_unit FROM mr_tt WHERE id_mr_tt=inIdMrTt INTO vKelas,vNoBed,vUnit;
UPDATE mr_pasien SET no_bed=vNoBed,kelas=vKelas,id_unit=vUnit WHERE id_register=inIdRegister;
UPDATE ksr_trn SET kelas=vKelas,id_unit=vUnit WHERE id_register=inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarAntrian` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarAntrian` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarAntrian`(inIdFarTrn INT)
BEGIN
    DECLARE noAntrian INT;
    SELECT COUNT(tanggal) FROM far_trn WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND poli_inap  LIKE 1 INTO noAntrian;
    
    IF (noAntrian=1) THEN
    SET noAntrian=1;
       ELSE
     SELECT MAX(no_psn)+1 FROM far_trn WHERE tanggal LIKE CONCAT(CURDATE(),"%")   INTO noAntrian;     
    END IF;
    UPDATE far_trn SET no_psn=noAntrian WHERE id_far_trn=inIdFarTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarBackupStokOpname` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarBackupStokOpname` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarBackupStokOpname`()
BEGIN
delete from far_stok_opname;
INSERT INTO far_stok_opname
SELECT * FROM far_stok;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarCopyResepTmp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarCopyResepTmp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarCopyResepTmp`(inIdRegister INT,inNamaPetugas  CHAR(70))
BEGIN
DECLARE vTotal INT;
    delete from far_copy_resep_tmp;
    SELECT SUM(a.subtotal) FROM far_det_trn_fix a
    INNER JOIN far_trn b ON a.id_far_trn=b.id_far_trn WHERE b.id_register=inIdRegister INTO vTotal; 
    INSERT INTO far_copy_resep_tmp (id_register,nama_petugas,total) VALUES(inIdRegister,inNamaPetugas,vTotal);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarCtkRetur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarCtkRetur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarCtkRetur`(inIdRetur INT,inNama CHAR(50))
BEGIN
DELETE FROM far_ctk_retur;
INSERT INTO far_ctk_retur (id_retur,nama_petugas) VALUES (inIdRetur,inNama);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarCtkSp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarCtkSp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarCtkSp`(inIdTrn  INT(8),inIol INT,inStri CHAR(30),inNamaAPoteker CHAR(50))
BEGIN
TRUNCATE far_ctk_sp_tmp;
INSERT INTO far_ctk_sp_tmp(id_trn,iol,str,nama_apoteker) VALUES
(inIdTrn,inIol,inStri,inNamaApoteker);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarCursorRetur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarCursorRetur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarCursorRetur`(inIdReturPoli INT,inPoliInap INT,inPetugas INT,
  inIdUnit INT)
BEGIN
DECLARE vStokBaru INT;
DECLARE vIdDetilReturPoli INT;
DECLARE vIdReturPoli INT;
DECLARE vIdBarang INT;
DECLARE vQty INT;
DECLARE vStokDepoPoli INT;
DECLARE vStokDepoInap INT;
DECLARE vIsi INT;
declare  vTotal int;
DECLARE habis BOOLEAN DEFAULT FALSE;
DECLARE kursor CURSOR FOR SELECT a.id_detil_retur_poli,a.id_retur_poli,a.id_barang,a.qty,b.stok_poli,b.stok_inap,b.isi 
FROM far_detil_retur_poli a
INNER JOIN far_stok b ON a.id_barang=b.no_urut WHERE a.id_retur_poli =inIdReturPoli;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
    SET habis = TRUE;
    OPEN kursor;
    REPEAT 
    FETCH kursor INTO vIdDetilReturPoli,vIdReturPoli, vIdBarang, vQty,vStokDepoPoli,vStokDepoInap,vIsi;
    IF habis = FALSE THEN
    IF (inPoliInap=1) THEN
      SET vStokBaru=vStokDepoPoli-(vQty*vIsi);
      UPDATE far_stok SET stok_poli=vStokBaru WHERE no_urut=vIdBarang;
      
      INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
      (NOW(),CURRENT_TIME(),inIdReturPoli,vIdBarang,'0',vQty*vIsi,vStokBaru,inPetugas,inPoliInap,inIdUnit,inPoliInap);           
	
    END IF;
    
    END IF;
    
    UNTIL habis END REPEAT;
    CLOSE kursor;     
   SELECT SUM(qty*harga_beli) AS total FROM far_detil_retur_poli WHERE id_retur_poli=inIdReturPoli INTO vTotal;
   UPDATE far_retur_poli SET total=vTotal WHERE id_retur_poli=inIdReturPoli ;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarCursorReturInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarCursorReturInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarCursorReturInap`(inIdReturPoli INT,inPoliInap INT,inPetugas INT,
  inIdUnit INT)
BEGIN
DECLARE vStokBaru INT;
DECLARE vIdDetilReturPoli INT;
DECLARE vIdReturPoli INT;
DECLARE vIdBarang INT;
DECLARE vQty INT;
DECLARE vStokDepoPoli INT;
DECLARE vStokDepoInap INT;
DECLARE vIsi INT;
DECLARE habis BOOLEAN DEFAULT FALSE;
DECLARE kursor CURSOR FOR SELECT a.id_detil_retur_inap,a.id_retur_inap,a.id_barang,a.qty,b.stok_poli,b.stok_inap,b.isi 
FROM far_detil_retur_inap a
INNER JOIN far_stok b ON a.id_barang=b.no_urut WHERE a.id_retur_inap =inIdReturPoli;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
    SET habis = TRUE;
    OPEN kursor;
    REPEAT 
    FETCH kursor INTO vIdDetilReturPoli,vIdReturPoli, vIdBarang, vQty,vStokDepoPoli,vStokDepoInap,vIsi;
    IF habis = FALSE THEN
    
      SET vStokBaru=vStokDepoInap-(vQty*vIsi);
      UPDATE far_stok SET stok_inap=vStokBaru WHERE no_urut=vIdBarang;
      
      INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
      (NOW(),CURRENT_TIME(),inIdReturPoli,vIdBarang,'0',vQty*vIsi,vStokBaru,inPetugas,inPoliInap,inIdUnit,inPoliInap);
      
  
    
    END IF;
    
    UNTIL habis END REPEAT;
   
    CLOSE kursor;     
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarCursorTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarCursorTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarCursorTransaksi`(inIdFarTrn INT,inPoliInap INT,inPetugas INT,inIdUnit INT,inIdRegister INT)
BEGIN
    DECLARE vIdFarDetTrn INT;    
    DECLARE vPoliInap INT;
    DECLARE vIdObat INT;
    DECLARE vStokPoli CHAR(10);
    DECLARE vStokInap CHAR(10);
    DECLARE vStokBaru CHAR(10);
    DECLARE vQty CHAR(10);
    DECLARE vTotal INT;
    DECLARE vPpn INT;
    DECLARE vPph INT;
    DECLARE vMargin INT;
    DECLARE vHp INT;
    DECLARE vResep INT;
    DECLARE vEmbalase INT;
    DECLARE habis BOOLEAN DEFAULT FALSE;
    DECLARE kursor CURSOR FOR SELECT a.id_far_det_trn,a.poli_inap,a.id_obat,b.stok_poli,b.stok_inap,a.qty ,
    b.ppn,b.ppn_keluaran,b.margin,b.harga_pokok,resep,embalase
    FROM far_det_trn a INNER JOIN far_stok b
    ON a.id_obat=b.no_urut  WHERE a.id_far_trn=inIdFarTrn;
       
   
     DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
     SET habis = TRUE;
    OPEN kursor;
    REPEAT 
    FETCH kursor INTO vIdFarDetTrn,vPoliInap, vIdObat, vStokPoli,vStokInap,vQty,vPpn,vPph,vMargin,vHp,vResep,vEmbalase;
    
    IF habis = FALSE THEN
    
    IF (inPoliInap=1) THEN    
        SET vStokBaru=vStokPoli-vQty;
        UPDATE far_stok SET stok_poli=vStokBaru WHERE no_urut=vIdObat;
        
        INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap,id_register) VALUES
	(NOW(),CURRENT_TIME(),inIdFarTrn,vIdObat,'0',vQty,vStokBaru,inPetugas,vPoliInap,inIdUnit,inPoliInap,inIdRegister);
  
        INSERT INTO far_det_trn_fix (resep,embalase,id_far_trn,qty,idx,harga,subtotal,dosis,hari,id_far_satuan_minum,poli_inap,id_obat,
        ppn,pph,margin,hp)
        SELECT vResep,vEmbalase,id_far_trn,qty,idx,harga,subtotal,dosis,hari,id_far_satuan_minum,poli_inap,id_obat,vPpn,
        vPph,vMargin,vHp FROM far_det_trn
        WHERE id_far_det_trn=vIdFarDetTrn;
    END IF;
    
    IF (inPoliInap=2) THEN    
        SET vStokBaru=vStokInap-vQty;
        UPDATE far_stok SET stok_inap=vStokBaru WHERE no_urut=vIdObat;
        
        INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap,id_register) VALUES
	(NOW(),CURRENT_TIME(),inIdFarTrn,vIdObat,'0',vQty,vStokBaru,inPetugas,vPoliInap,inIdUnit,inPoliInap,inIdRegister);
  
         INSERT INTO far_det_trn_fix (resep,embalase,id_far_trn,qty,idx,harga,subtotal,dosis,hari,id_far_satuan_minum,poli_inap,id_obat,
        ppn,pph,margin,hp)
        SELECT vResep,vEmbalase,id_far_trn,qty,idx,harga,subtotal,dosis,hari,id_far_satuan_minum,poli_inap,id_obat,vPpn,
        vPph,vMargin,vHp FROM far_det_trn
        WHERE id_far_det_trn=vIdFarDetTrn;
    END IF;    
  
    END IF;
    
    UNTIL habis END REPEAT;
    SELECT SUM(subtotal) FROM far_det_trn_fix WHERE id_far_trn=inIdFarTrn INTO vTotal;
    UPDATE far_trn SET biaya=vTotal WHERE  id_far_trn=inIdfarTrn;
    DELETE FROM far_det_trn WHERE id_far_trn=inIdFarTrn;
    CLOSE kursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarDeleteReturPoli` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarDeleteReturPoli` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarDeleteReturPoli`(inIdDetilRetur INT,
inIdRetur INT)
BEGIN
DECLARE vTotal INT;
DELETE FROM far_detil_retur_poli WHERE od_detil_retur_poli = inIdDetilRetur;
SELECT SUM(qty*(harga_beli-diskon)) FROM far_detil_retur_poli WHERE id_retur_poli=inIdDetilRetur
INTO vTotal;
UPDATE far_retur_poli SET total=vTotal WHERE id_retur_poli=inIdRetur;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarDeleteTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarDeleteTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarDeleteTransaksi`(inIdDetTrn INT,inIdPoliInap INT,inQty CHAR(10),inIdObat INT,inIdFarTrn INT)
BEGIN
DECLARE vStokInap CHAR(10);
DECLARE vStokPoli CHAR(10);
DECLARE vTotal INT;
DECLARE vdiskon INT;
DELETE FROM far_det_trn WHERE id_far_det_trn =inIdDetTrn;
SELECT stok_inap,stok_poli FROM far_stok WHERE no_urut =inIdObat INTO vStokInap,vStokPoli;
/*IF (inIdPoliInap=1) THEN
UPDATE far_stok SET stok_poli=vStokPoli+inQty WHERE no_urut=inIdObat;
END IF;
IF (inIdPoliInap=2) THEN
UPDATE far_stok SET stok_inap=vStokInap+inQty WHERE no_urut=inIdObat;
END IF;
*/
SELECT SUM(subtotal),SUM((harga*qty)-(subtotal)) AS diskon FROM  far_det_trn WHERE id_far_trn=inIdFarTrn INTO vTotal,vDiskon;
UPDATE far_trn SET biaya=vTotal WHERE id_far_trn=inIdFarTrn;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarDeleteTransaksiFix` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarDeleteTransaksiFix` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarDeleteTransaksiFix`(inIdDetTrn INT,inIdPoliInap INT,inQty CHAR(10),inIdObat INT,inIdFarTrn INT,inIdPetugas INT)
BEGIN
DECLARE vStokInap char(10);
DECLARE vStokPoli CHAR(10);
DECLARE vTotal INT;
DECLARE vdiskon INT;
DELETE FROM far_det_trn_fix WHERE id_far_det_trn =inIdDetTrn;
SELECT stok_inap,stok_poli FROM far_stok WHERE no_urut =inIdObat INTO vStokInap,vStokPoli;
IF (inIdPoliInap=1) THEN
UPDATE far_stok SET stok_poli=vStokPoli+inQty WHERE no_urut=inIdObat;
INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
  (1,NOW(),CURRENT_TIME(),inIdDetTrn,inIdObat,inQty,'0',vStokPoli+inQty,inIdPetugas,inIdPoliInap,12);
END IF;
IF (inIdPoliInap=2) THEN
UPDATE far_stok SET stok_inap=vStokInap+inQty WHERE no_urut=inIdObat;
INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
  (2,NOW(),CURRENT_TIME(),inIdDetTrn,inIdObat,inQty,'0',vStokInap+inQty,inIdPetugas,inIdPoliInap,12);
END IF;
SELECT SUM(subtotal),SUM((harga*qty)-(subtotal)) AS diskon FROM  far_det_trn_fix WHERE id_far_trn=inIdFarTrn INTO vTotal,vDiskon;
UPDATE far_trn SET biaya=IFNULL(vTotal,0) WHERE id_far_trn=inIdFarTrn;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarFakturCetak` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarFakturCetak` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarFakturCetak`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inNamaPetugas CHAR(50),inIol INT)
BEGIN
DECLARE vTotal DOUBLE;
TRUNCATE far_faktur_cetak;
IF (inIol=1) THEN
SELECT SUM(total) FROM far_nosp WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO far_faktur_cetak (no_sp,suplier,jumlah,diskon,ppn,total,tanggal,faktur,iol,nama_petugas,tglAwal,tglAkhir,grand_total)
SELECT
  `a`.`id_no_sp`       AS `id_no_sp`,
  `b`.`nama`           AS `nama_suplier`,
  `a`.`jumlah`         AS `jumlah`,
  `a`.`disc`           AS `disc`,
  `a`.`ppn`            AS `ppn`,
  `a`.`total`          AS `total`,
  `a`.`tanggal_faktur` AS `tanggal_faktur`,
  `a`.`faktur`         AS `faktur`,
  inIol,inNamaPetugas,inTglAwal,inTglAkhir,vTotal
FROM (`far_nosp` `a`
   JOIN `far_suplier` `b`
     ON ((`a`.`id_suplier` = `b`.`id_far_suplier`))) WHERE a.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir;
END IF;
IF (inIol=2) THEN
SELECT SUM(total) FROM far_nosp_inap WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO far_faktur_cetak (no_sp,suplier,jumlah,diskon,ppn,total,tanggal,faktur,iol,nama_petugas,tglAwal,tglAkhir,grand_total)
SELECT
  `a`.`id_no_sp`       AS `id_no_sp`,
  `b`.`nama`           AS `nama_suplier`,
  `a`.`jumlah`         AS `jumlah`,
  `a`.`disc`           AS `disc`,
  `a`.`ppn`            AS `ppn`,
  `a`.`total`          AS `total`,
  `a`.`tanggal_faktur` AS `tanggal_faktur`,
  `a`.`faktur`         AS `faktur`,
  inIol,inNamaPetugas,inTglAwal,inTglAkhir,vTotal
FROM (`far_nosp_inap` `a`
   JOIN `far_suplier` `b`
     ON ((`a`.`id_suplier` = `b`.`id_far_suplier`))) WHERE a.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarFakturCetakSuplier` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarFakturCetakSuplier` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarFakturCetakSuplier`(inIdSuplier INT,inTglAwal CHAR(10),inTglAkhir CHAR(10),inNamaPetugas CHAR(50),inIol INT)
BEGIN
DECLARE vTotal DOUBLE;
TRUNCATE far_faktur_cetak;
IF (inIol=1) THEN
SELECT SUM(total) FROM far_nosp WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND id_suplier=inIdSuplier INTO vTotal;
INSERT INTO far_faktur_cetak (no_sp,suplier,jumlah,diskon,ppn,total,tanggal,faktur,iol,nama_petugas,tglAwal,tglAkhir,grand_total)
SELECT
  `a`.`id_no_sp`       AS `id_no_sp`,
  `b`.`nama`           AS `nama_suplier`,
  `a`.`jumlah`         AS `jumlah`,
  `a`.`disc`           AS `disc`,
  `a`.`ppn`            AS `ppn`,
  `a`.`total`          AS `total`,
  `a`.`tanggal_faktur` AS `tanggal_faktur`,
  `a`.`faktur`         AS `faktur`,
  inIol,inNamaPetugas,inTglAwal,inTglAkhir,vTotal
FROM (`far_nosp` `a`
   JOIN `far_suplier` `b`
     ON ((`a`.`id_suplier` = `b`.`id_far_suplier`))) WHERE a.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND a.id_suplier=inIdSuplier;
END IF;
IF (inIol=2) THEN
SELECT SUM(total) FROM far_nosp_inap WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND id_suplier=inIdSuplier INTO vTotal;
INSERT INTO far_faktur_cetak (no_sp,suplier,jumlah,diskon,ppn,total,tanggal,faktur,iol,nama_petugas,tglAwal,tglAkhir,grand_total)
SELECT
  `a`.`id_no_sp`       AS `id_no_sp`,
  `b`.`nama`           AS `nama_suplier`,
  `a`.`jumlah`         AS `jumlah`,
  `a`.`disc`           AS `disc`,
  `a`.`ppn`            AS `ppn`,
  `a`.`total`          AS `total`,
  `a`.`tanggal_faktur` AS `tanggal_faktur`,
  `a`.`faktur`         AS `faktur`,
  inIol,inNamaPetugas,inTglAwal,inTglAkhir,vTotal
FROM (`far_nosp_inap` `a`
   JOIN `far_suplier` `b`
     ON ((`a`.`id_suplier` = `b`.`id_far_suplier`))) WHERE a.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND a.id_suplier=inIdSuplier;
END IF;   
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarHapusTerimaBarang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarHapusTerimaBarang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarHapusTerimaBarang`(inIdDetilNoSp INT,inIdNoSp INT,inIdBarang INT
,inIdPetugas INT,inPoliInap INT)
BEGIN
DECLARE vStokPoli INT;
DECLARE vStokInap INT;
DECLARE vIsi INT;
DECLARE vKirim INT;
DECLARE inSubTotal BIGINT;
 
 IF (inPoliInap=1) THEN
  SELECT a.stok_inap,a.stok_poli,(a.isi*b.qty) AS jml,b.kirim FROM far_stok a 
 INNER JOIN far_det_nosp b ON a.no_urut=b.id_barang WHERE  no_sp=inIdNoSp AND b.id_barang =inIdBarang
 INTO vStokInap,vStokPoli,vIsi,vKirim;
 
   IF (vKirim=1) THEN
     UPDATE far_stok SET stok_poli=vStokPoli-vIsi WHERE no_urut=inIdBarang;
    END IF;
 DELETE FROM  far_det_nosp WHERE id_det_no_sp=inIdDetilNoSp;
 SELECT SUM(hp*qty) FROM far_det_nosp WHERE no_sp=inIdNoSp INTO inSubTotal;
 UPDATE far_nosp SET jumlah=inSubTotal WHERE id_no_sp=inIdNoSp;
   INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                       (1,NOW(),CURRENT_TIME(),inIdNoSp,inIdBarang,0,vIsi,vStokPoli-vIsi,
                        inIdPetugas,3,2);
 END IF;
 
 IF (inPoliInap=2) THEN
  SELECT a.stok_inap,a.stok_poli,(a.isi*b.qty) AS jml,b.kirim FROM far_stok a 
 INNER JOIN far_det_nosp_inap b ON a.no_urut=b.id_barang WHERE  no_sp=inIdNoSp AND b.id_barang =inIdBarang
 INTO vStokInap,vStokPoli,vIsi,vKirim;
   IF (vKirim=1) THEN
    UPDATE far_stok SET stok_inap=vStokInap-vIsi WHERE no_urut=inIdBarang;
   END IF;
  DELETE FROM  far_det_nosp_inap WHERE id_det_no_sp=inIdDetilNoSp;
   SELECT SUM(hp*qty) FROM far_det_nosp_inap WHERE no_sp=inIdNoSp INTO inSubTotal;
 UPDATE far_nosp_inap SET jumlah=inSubTotal WHERE id_no_sp=inIdNoSp;
    INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                       (2,NOW(),CURRENT_TIME(),inIdNoSp,inIdBarang,0,vIsi,vStokInap-vIsi,
                        inIdPetugas,3,2);
 END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarInitSuplier` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarInitSuplier` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarInitSuplier`()
BEGIN
SET @row_num = 0;
UPDATE far_suplier SET id_tmp=@row_num:=@row_num+1 ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarInsertTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarInsertTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarInsertTransaksi`(inIdFarTrn INT,inIdObat INT,inQty CHAR(10),
inIndex CHAR(5),inHarga INT,inSubTotal CHAR(10),inPoliInap INT,inDosis INT,inHari CHAR(5),inIdSatuanMinum INT,
inResep INT,inEmbalase INT)
BEGIN
DECLARE vStokInap CHAR(10);
DECLARE vStokPoli CHAR(10);
DECLARE vTotal INT;
DECLARE vDiskon INT;
INSERT INTO far_det_trn (resep,embalase,dosis,hari,id_far_satuan_minum,id_far_Trn,id_obat,qty,idx,harga,subtotal,poli_inap) VALUES
(inResep,inEmbalase,inDosis,inHari,inIdSatuanMinum,inIdFarTrn,inIdObat,inQty,inIndex,inHarga,inSubTotal,inPoliInap);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarInsertTransaksiFix` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarInsertTransaksiFix` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarInsertTransaksiFix`(inIdFarTrn INT,inIdObat INT,inQty CHAR(10),
inIndex CHAR(5),inHarga INT,inSubTotal CHAR(10),inPoliInap INT,inDosis INT,inHari CHAR(5),inIdSatuanMinum INT,inIdPetugas INT,
inResep INT,inEmbalase INT)
BEGIN
DECLARE vStokInap CHAR(10);
DECLARE vStokPoli CHAR(10);
DECLARE vTotal INT;
DECLARE vDiskon INT;
INSERT INTO far_det_trn_fix (resep,embalase,dosis,hari,id_far_satuan_minum,id_far_Trn,id_obat,qty,idx,harga,subtotal,poli_inap) VALUES
                            (inResep,inEmbalase,inDosis,inHari,inIdSatuanMinum,inIdFarTrn,inIdObat,inQty,inIndex,inHarga,inSubTotal,inPoliInap);
SELECT stok_inap,stok_poli FROM far_stok WHERE no_urut=inIdObat INTO vStokInap,vStokPoli;
IF (inPoliInap=1) THEN
UPDATE far_stok SET stok_poli=vStokPoli-inQty WHERE no_urut =inIdObat;
INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
  (1,NOW(),CURRENT_TIME(),inIdFarTrn,inIdObat,'0',inQty,vStokPoli-inQty,inIdPetugas,inPoliInap,2);
END IF;
IF (inPoliInap=2) THEN
UPDATE far_stok SET stok_inap=vStokInap-inQty WHERE no_urut =inIdObat;
INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
  (2,NOW(),CURRENT_TIME(),inIdFarTrn,inIdObat,'0',inQty,vStokInap-inQty,inIdPetugas,inPoliInap,2);
END IF;
SELECT SUM(subtotal),SUM((harga*qty)-(subtotal)) AS diskon FROM  far_det_trn_fix WHERE id_far_trn=inIdFarTrn INTO vTotal,vDiskon;
UPDATE far_trn SET biaya=vTotal WHERE id_far_trn=inIdFarTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarInsReturInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarInsReturInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarInsReturInap`(inIdBarang INT,inIdReturPoli INT,inNoSP INT,inQTy INT,inCatatan CHAR(150),
inHargaBeli INT,inFaktur CHAR(25))
BEGIN
DECLARE vTotal INT;
DECLARE vPpn INT;
DECLARE vDisc INT;
SELECT disc,ppn FROM far_det_nosp_inap WHERE no_sp LIKE inNoSp AND id_barang LIKE inIdBarang INTO vDisc,vPpn;
INSERT INTO far_detil_retur_inap (id_retur_inap,id_barang,qty,catatan,harga_beli,no_sp,ppn,diskon) VALUES
(inIdReturPoli,inIdBarang,inQty,inCatatan,inHargaBeli,inNoSp,vPpn,vDisc);
SELECT  SUM(qty*((harga_beli-diskon)+((harga_beli-diskon)*(ppn/100))))
 FROM far_detil_retur_inap WHERE id_retur_inap=inIdReturPoli INTO vTotal;
UPDATE far_retur_inap SET id_no_sp=inNoSp,faktur=infaktur,total=vTotal WHERE id_retur_inap=inIdReturPoli;
  
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarInsReturPoli` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarInsReturPoli` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarInsReturPoli`(inIdBarang INT,inIdReturPoli INT,inNoSP INT,inQTy INT,inCatatan CHAR(150),
inHargaBeli INT,inFaktur CHAR(25))
BEGIN
DECLARE vTotal INT;
DECLARE vPpn INT;
DECLARE vDisc INT;
SELECT disc,ppn FROM far_det_nosp WHERE no_sp LIKE inNoSp AND id_barang LIKE inIdBarang INTO vDisc,vPpn;
INSERT INTO far_detil_retur_poli (id_retur_poli,id_barang,qty,catatan,harga_beli,no_sp,ppn,diskon,faktur) VALUES
(inIdReturPoli,inIdBarang,inQty,inCatatan,inHargaBeli,inNoSp,vPpn,vDisc,inFaktur);
SELECT  SUM(qty*((harga_beli-diskon)+((harga_beli-diskon)*(ppn/100))))
 FROM far_detil_retur_poli WHERE id_retur_poli=inIdReturPoli INTO vTotal;
UPDATE far_retur_poli SET id_no_sp=inNoSp,faktur=infaktur,total=vTotal WHERE id_retur_poli=inIdReturPoli;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarJurnalTerima` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarJurnalTerima` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarJurnalTerima`(inSubTotal char(10),inPpn char(10),inGrandTotal char(12),
         inIdNoSp char(10))
BEGIN
update far_nosp set jumlah=inSubTotal,ppn=inPpn,total=inGrandTotal where id_no_sp=inIdNoSp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarJurnalTerimaRalan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarJurnalTerimaRalan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarJurnalTerimaRalan`(inSubTotal CHAR(20),inPpn CHAR(20),inGrandTotal CHAR(25),
         inIdNoSp CHAR(10))
BEGIN
DECLARE vAda INT;
DECLARE vNoJurnal INT;
UPDATE far_nosp SET jumlah=inSubTotal,ppn=inPpn,total=inGrandTotal WHERE id_no_sp=inIdNoSp;
SELECT COUNT(*) FROM ksr_jurnal_pembelian_farmasi_ralan WHERE id_no_sp=inIdNoSp INTO vAda;
IF (vAda=0) THEN
   INSERT INTO ksr_jurnal_pembelian_farmasi_ralan (tanggal,jam,id_no_sp,uraian,faktur,iol)
   SELECT tanggal,jam,inIdNoSp,'Pembelian Farmasi Ralan',faktur,1 FROM far_nosp WHERE id_no_sp=inIdNoSp;
 
   SELECT id_ksr_jurnal_pembelian_farmasi_ralan FROM ksr_jurnal_pembelian_farmasi_ralan WHERE id_no_sp=inIdNoSp INTO vNoJurnal;  
END IF;
IF (vAda=1) THEN   
   SELECT id_ksr_jurnal_pembelian_farmasi_ralan FROM ksr_jurnal_pembelian_farmasi_ralan WHERE id_no_sp=inIdNoSp INTO vNoJurnal;
   DELETE FROM ksr_detil_jurnal_pembelian_farmasi_ralan WHERE id_ksr_jurnal_pembelian_farmasi_ralan=vNoJurnal;
END IF;
INSERT INTO ksr_detil_jurnal_pembelian_farmasi_ralan (id_ksr_jurnal_pembelian_farmasi_ralan,kode,debet,kredit,posisi,awal)
   VALUES (vNoJurnal,'114110',inGrandTotal,0,1,1);
INSERT INTO ksr_detil_jurnal_pembelian_farmasi_ralan (id_ksr_jurnal_pembelian_farmasi_ralan,kode,debet,kredit,posisi,awal)
   VALUES (vNoJurnal,'211100',0,inGrandTotal,2,1);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarJurnalTerimaRanap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarJurnalTerimaRanap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarJurnalTerimaRanap`(inSubTotal CHAR(20),inPpn CHAR(20),inGrandTotal CHAR(25),
         inIdNoSp CHAR(10))
BEGIN
DECLARE vAda INT;
DECLARE vNoJurnal INT;
UPDATE far_nosp_inap SET jumlah=inSubTotal,ppn=inPpn,total=inGrandTotal WHERE id_no_sp=inIdNoSp;
SELECT COUNT(*) FROM ksr_jurnal_pembelian_farmasi_ranap WHERE id_no_sp_inap=inIdNoSp INTO vAda;
IF (vAda=0) THEN
   INSERT INTO ksr_jurnal_pembelian_farmasi_ranap (tanggal,jam,id_no_sp_inap,uraian,faktur,iol,no_inkaso)
   SELECT tanggal,jam,inIdNoSp,'Pembelian Farmasi Ranap',faktur,1,0 FROM far_nosp_inap WHERE id_no_sp=inIdNoSp;
 
   SELECT id_ksr_jurnal_pembelian_farmasi_ranap FROM ksr_jurnal_pembelian_farmasi_ranap WHERE id_no_sp_inap=inIdNoSp INTO vNoJurnal;  
END IF;
IF (vAda=1) THEN   
   SELECT id_ksr_jurnal_pembelian_farmasi_ranap FROM ksr_jurnal_pembelian_farmasi_ranap WHERE id_no_sp_inap=inIdNoSp INTO vNoJurnal;
   DELETE FROM ksr_detil_jurnal_pembelian_farmasi_ranap WHERE id_ksr_jurnal_pembelian_farmasi_ranap=vNoJurnal;
END IF;
INSERT INTO ksr_detil_jurnal_pembelian_farmasi_ranap (id_ksr_jurnal_pembelian_farmasi_ranap,kode,debet,kredit,posisi,awal)
   VALUES (vNoJurnal,'114110',inGrandTotal,0,1,1);
INSERT INTO ksr_detil_jurnal_pembelian_farmasi_ranap (id_ksr_jurnal_pembelian_farmasi_ranap,kode,debet,kredit,posisi,awal)
   VALUES (vNoJurnal,'211100',0,inGrandTotal,2,1);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapAnfrah` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapAnfrah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapAnfrah`(inTglAwal CHAR(10),inTglAkhir CHAR(10),
inIol CHAR(3),inNamaPetugas CHAR(60),inNavi INT,inIdUnit INT)
BEGIN
DELETE FROM far_lap_anfrah;
IF (inNavi=1) THEN 
INSERT INTO far_lap_anfrah (tgl_awal,tgl_akhir,poli_inap,nama_petugas,id_barang,nama,jumlah,satuan,
nama_unit,kelompok,navi, harga_pokok,total) 
SELECT inTglAwal,inTglAkhir,inIol,inNamaPetugas ,
  `b`.`id_barang`                  AS `id_barang`,
  `d`.`nama`                       AS `nama`, 
  SUM(`b`.`jumlah`)                     AS `jumlah`, 
  `f`.`nama`                       AS `satuan_jual`  ,
  `c`.`nama_unit`                  AS `unt`,
  `e`.`nama`                       AS `poli`,1,
  b.harga_pokok,SUM(b.harga_pokok*b.jumlah)
FROM (((((`far_trn_stok_keluar` `a`
       JOIN `far_det_trn_stok_keluar` `b`
         ON ((`a`.`id_far_stok_keluar` = `b`.`id_trn`)))
      LEFT JOIN `mr_unit` `c`
        ON ((`a`.`id_unit` = `c`.`id_unit`)))
     LEFT JOIN `far_stok` `d`
       ON ((`b`.`id_barang` = `d`.`no_urut`)))
    LEFT JOIN `mr_iol` `e`
      ON ((`a`.`iol` = `e`.`id_mr_iol`)))
   LEFT JOIN `far_satuan` `f`
     ON ((`b`.`id_satuan` = `f`.`id_satuan`)))
   WHERE a.tgl_respon BETWEEN inTglAwal AND inTglAkhir   
      GROUP BY b.id_barang
  ORDER BY d.nama;
END IF;
IF (inNavi=2) THEN 
INSERT INTO far_lap_anfrah (tgl_awal,tgl_akhir,poli_inap,nama_petugas,id_barang,nama,jumlah,satuan,
nama_unit,kelompok,navi, harga_pokok,total) 
SELECT inTglAwal,inTglAkhir,inIol,inNamaPetugas ,
  `b`.`id_barang`                  AS `id_barang`,
  `d`.`nama`                       AS `nama`, 
  SUM(`b`.`jumlah`)                     AS `jumlah`, 
  `f`.`nama`                       AS `satuan_jual`  ,
  `c`.`nama_unit`                  AS `unt`,
  `e`.`nama`                       AS `poli`,2,
   b.harga_pokok,SUM(b.harga_pokok*b.jumlah)
FROM (((((`far_trn_stok_keluar` `a`
       JOIN `far_det_trn_stok_keluar` `b`
         ON ((`a`.`id_far_stok_keluar` = `b`.`id_trn`)))
      LEFT JOIN `mr_unit` `c`
        ON ((`a`.`id_unit` = `c`.`id_unit`)))
     LEFT JOIN `far_stok` `d`
       ON ((`b`.`id_barang` = `d`.`no_urut`)))
    LEFT JOIN `mr_iol` `e`
      ON ((`a`.`iol` = `e`.`id_mr_iol`)))
   LEFT JOIN `far_satuan` `f`
     ON ((`b`.`id_satuan` = `f`.`id_satuan`)))
   WHERE a.tgl_respon BETWEEN inTglAwal AND inTglAkhir AND   a.id_unit =inIdUnit 
   AND a.iol LIKE inIol
      GROUP BY b.id_barang
  ORDER BY d.nama;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapCtkAnfrah` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapCtkAnfrah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapCtkAnfrah`(inNamaPetugas CHAR(50),
inNoTrn INT)
BEGIN
DELETE FROM far_lap_ctk_anfrah;
INSERT INTO far_lap_ctk_anfrah (nama_petugas,no_sp) VALUES
 (inNamaPetugas,inNoTrn);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapPembelianObat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapPembelianObat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapPembelianObat`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inPoliInap INT)
BEGIN
DECLARE vMasterTotal INT;
delete from far_lap_pembelian_obat;
IF (inPoliInap=1) THEN
SELECT SUM(total) FROM far_nosp WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND total>0 INTO vMasterTotal;
INSERT INTO far_lap_pembelian_obat 
SELECT
  `a`.`id_det_no_sp`   AS `id_det_no_sp`,
  `a`.`no_sp`          AS `no_sp`,
  `c`.`tanggal_faktur` AS `tanggal_faktur`,
  `c`.`tanggal_tempo`  AS `tanggal_tempo`,
  `a`.`id_barang`      AS `id_barang`,
  `b`.`nama`           AS `nama`,
  `d`.`nama`           AS `nama_suplier`,
  `a`.`qty`            AS `qty`,
  `a`.`harga_beli`     AS `harga_beli`,
  `a`.`disc`           AS `disc`,
  `c`.`meterai`        AS `meterai`,
  `c`.`faktur`         AS `faktur`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 1.1),0.1) ELSE (`a`.`harga_beli` - `a`.`disc`) END) AS `hpp`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 0.1),0.1) ELSE 0 END) AS `ppn`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`harga_beli` + ((`a`.`harga_beli` - `a`.`disc`) * 0.1)),0.1) ELSE `a`.`harga_beli` END) AS `sub_total`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`qty` * ((`a`.`harga_beli` - `a`.`disc`) * 1.1)),0.1) ELSE (`a`.`qty` * (`a`.`harga_beli` - `a`.`disc`)) END) AS `grand_total`,
  vMasterTotal
FROM (((`far_det_nosp` `a`
     JOIN `far_stok` `b`
       ON ((`a`.`id_barang` = `b`.`no_urut`)))
    JOIN `far_nosp` `c`
      ON ((`a`.`no_sp` = `c`.`id_no_sp`)))
   JOIN `far_suplier` `d`
     ON ((`d`.`id_far_suplier` = `c`.`id_suplier`)))
WHERE (`c`.`total` > 0) AND
 c.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir;
 ELSE
 SELECT SUM(total) FROM far_nosp_inap WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND total>0 INTO vMasterTotal;
INSERT INTO far_lap_pembelian_obat 
SELECT
  `a`.`id_det_no_sp`   AS `id_det_no_sp`,
  `a`.`no_sp`          AS `no_sp`,
  `c`.`tanggal_faktur` AS `tanggal_faktur`,
  `c`.`tanggal_tempo`  AS `tanggal_tempo`,
  `a`.`id_barang`      AS `id_barang`,
  `b`.`nama`           AS `nama`,
  `d`.`nama`           AS `nama_suplier`,
  `a`.`qty`            AS `qty`,
  `a`.`harga_beli`     AS `harga_beli`,
  `a`.`disc`           AS `disc`,
  `c`.`meterai`        AS `meterai`,
  `c`.`faktur`         AS `faktur`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 1.1),0.1) ELSE (`a`.`harga_beli` - `a`.`disc`) END) AS `hpp`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 0.1),0.1) ELSE 0 END) AS `ppn`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`harga_beli` + ((`a`.`harga_beli` - `a`.`disc`) * 0.1)),0.1) ELSE `a`.`harga_beli` END) AS `sub_total`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`qty` * ((`a`.`harga_beli` - `a`.`disc`) * 1.1)),0.1) ELSE (`a`.`qty` * (`a`.`harga_beli` - `a`.`disc`)) END) AS `grand_total`,
  vMasterTotal
FROM (((`far_det_nosp_inap` `a`
     JOIN `far_stok` `b`
       ON ((`a`.`id_barang` = `b`.`no_urut`)))
    JOIN `far_nosp_inap` `c`
      ON ((`a`.`no_sp` = `c`.`id_no_sp`)))
   JOIN `far_suplier` `d`
     ON ((`d`.`id_far_suplier` = `c`.`id_suplier`)))
WHERE (`c`.`total` > 0) AND
 c.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir;
END IF; 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapPembelianObatSuplier` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapPembelianObatSuplier` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapPembelianObatSuplier`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inPoliInap INT,inIdSuplier INT)
BEGIN
DECLARE vMasterTotal INT;
delete from far_lap_pembelian_obat;
IF (inPoliInap=1) THEN
SELECT SUM(total) FROM far_nosp WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND total>0 AND id_suplier=inIdSuplier INTO vMasterTotal;
INSERT INTO far_lap_pembelian_obat 
SELECT
  `a`.`id_det_no_sp`   AS `id_det_no_sp`,
  `a`.`no_sp`          AS `no_sp`,
  `c`.`tanggal_faktur` AS `tanggal_faktur`,
  `c`.`tanggal_tempo`  AS `tanggal_tempo`,
  `a`.`id_barang`      AS `id_barang`,
  `b`.`nama`           AS `nama`,
  `d`.`nama`           AS `nama_suplier`,
  `a`.`qty`            AS `qty`,
  `a`.`harga_beli`     AS `harga_beli`,
  `a`.`disc`           AS `disc`,
  `c`.`meterai`        AS `meterai`,
  `c`.`faktur`         AS `faktur`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 1.1),0.1) ELSE (`a`.`harga_beli` - `a`.`disc`) END) AS `hpp`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 0.1),0.1) ELSE 0 END) AS `ppn`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`harga_beli` + ((`a`.`harga_beli` - `a`.`disc`) * 0.1)),0.1) ELSE `a`.`harga_beli` END) AS `sub_total`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`qty` * ((`a`.`harga_beli` - `a`.`disc`) * 1.1)),0.1) ELSE (`a`.`qty` * (`a`.`harga_beli` - `a`.`disc`)) END) AS `grand_total`,
  vMasterTotal
FROM (((`far_det_nosp` `a`
     JOIN `far_stok` `b`
       ON ((`a`.`id_barang` = `b`.`no_urut`)))
    JOIN `far_nosp` `c`
      ON ((`a`.`no_sp` = `c`.`id_no_sp`)))
   JOIN `far_suplier` `d`
     ON ((`d`.`id_far_suplier` = `c`.`id_suplier`)))
WHERE (`c`.`total` > 0) AND
 c.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND c.id_suplier=inIdSuplier;
 ELSE
 SELECT SUM(total) FROM far_nosp_inap WHERE tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND total>0 INTO vMasterTotal;
INSERT INTO far_lap_pembelian_obat 
SELECT
  `a`.`id_det_no_sp`   AS `id_det_no_sp`,
  `a`.`no_sp`          AS `no_sp`,
  `c`.`tanggal_faktur` AS `tanggal_faktur`,
  `c`.`tanggal_tempo`  AS `tanggal_tempo`,
  `a`.`id_barang`      AS `id_barang`,
  `b`.`nama`           AS `nama`,
  `d`.`nama`           AS `nama_suplier`,
  `a`.`qty`            AS `qty`,
  `a`.`harga_beli`     AS `harga_beli`,
  `a`.`disc`           AS `disc`,
  `c`.`meterai`        AS `meterai`,
  `c`.`faktur`         AS `faktur`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 1.1),0.1) ELSE (`a`.`harga_beli` - `a`.`disc`) END) AS `hpp`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND(((`a`.`harga_beli` - `a`.`disc`) * 0.1),0.1) ELSE 0 END) AS `ppn`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`harga_beli` + ((`a`.`harga_beli` - `a`.`disc`) * 0.1)),0.1) ELSE `a`.`harga_beli` END) AS `sub_total`,
  (CASE WHEN (`c`.`ppn` > 0) THEN ROUND((`a`.`qty` * ((`a`.`harga_beli` - `a`.`disc`) * 1.1)),0.1) ELSE (`a`.`qty` * (`a`.`harga_beli` - `a`.`disc`)) END) AS `grand_total`,
  vMasterTotal
FROM (((`far_det_nosp_inap` `a`
     JOIN `far_stok` `b`
       ON ((`a`.`id_barang` = `b`.`no_urut`)))
    JOIN `far_nosp_inap` `c`
      ON ((`a`.`no_sp` = `c`.`id_no_sp`)))
   JOIN `far_suplier` `d`
     ON ((`d`.`id_far_suplier` = `c`.`id_suplier`)))
WHERE (`c`.`total` > 0) AND
 c.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir AND c.id_suplier=inIdSuplier;
END IF; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapPeminjamanObat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapPeminjamanObat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapPeminjamanObat`(inTglAwal CHAR(10),
inTglAkhir CHAR(10),inNamaPetugas CHAR(50))
BEGIN
DELETE FROM far_lap_penjualan_tmp;
INSERT INTO far_lap_penjualan_tmp (tgl_awal,tgl_akhir,nama_petugas)
      VALUES (inTglAwal,inTglAkhir,inNamaPetugas);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapPenjualan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapPenjualan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapPenjualan`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inNamaPetugas CHAR(50),
inNamaAsuransi CHAR(50),inIol INT)
BEGIN
DECLARE vTotal BIGINT;
DELETE FROM far_lap_penjualan_tmp;
INSERT INTO far_lap_penjualan_tmp (tgl_awal,tgl_akhir,nama_petugas,nama_asuransi,poli_inap)
VALUES (inTglAwal,inTglAkhir,inNamaPetugas,inNamaAsuransi,inIol);
IF (inNamaAsuransi="0") THEN
  SELECT SUM(a.subtotal) FROM far_det_trn_fix a
  INNER JOIN far_trn b ON a.id_far_trn=b.id_far_trn
  INNER JOIN far_stok c ON a.id_obat =c.no_urut
  WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND b.poli_inap=inIol INTO vTotal;
  END IF;
IF (inNamaAsuransi!="0") THEN
  SELECT SUM(a.subtotal) FROM far_det_trn_fix a
  INNER JOIN far_trn b ON a.id_far_trn=b.id_far_trn
  INNER JOIN far_stok c ON a.id_obat =c.no_urut
  WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND b.poli_inap=inIol AND b.id_asuransi=inNamaAsuransi INTO vTotal;
END IF;
UPDATE far_lap_penjualan_tmp SET total=vTotal;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapRetur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapRetur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapRetur`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inNamaPetugas CHAR(50),
inNamaAsuransi CHAR(50),inIol INT)
BEGIN
DELETE FROM far_lap_tmp;
INSERT INTO far_lap_tmp (tanggal_awal,tanggal_akhir,nama_petugas,iol)
VALUES (inTglAwal,inTglAkhir,inNamaPetugas,inIol);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapStokElk` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapStokElk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapStokElk`(inKode INT,inTglAwal CHAR(10),inTglAkhir CHAR(10),
inNamaPetugas CHAR(45),inIol char(1))
BEGIN
DELETE FROM far_lap_stok_elk;
INSERT INTO far_lap_stok_elk 
(nama,ket_stok,masuk,keluar,sisa,nama_satuan,tanggal,jam,id_register,id_trn,id_petugas,id_barang,nama_unit,
tgl_awal,tgl_akhir,nama_petugas)
SELECT
  
  `b`.`nama`            AS `nama`,
  `d`.`nama`            AS `ket_stok`,
  `a`.`masuk`           AS `masuk`,
  `a`.`keluar`          AS `keluar`,
  `a`.`sisa`            AS `sisa`,
  `c`.`nama`            AS `nama_satuan`,
  `a`.`tanggal`         AS `tanggal`,
  `a`.`jam`             AS `jam`,
  `a`.`id_register`     AS `id_register`,
  `a`.`id_trn`          AS `id_trn`,
  `a`.`id_petugas`      AS `id_petugas`,
  `a`.`id_barang`       AS `id_barang`,
  `e`.`nama_unit`       AS `nama_unit`,
  inTglAwal,inTglAkhir,inNamaPetugas
FROM ((((`far_stok_elk` `a`
      LEFT JOIN `far_stok` `b`
        ON ((`a`.`id_barang` = `b`.`no_urut`)))
     LEFT JOIN `far_satuan` `c`
       ON ((`b`.`satuan` = `c`.`id_satuan`)))
    LEFT JOIN `far_ket_stok` `d`
      ON ((`a`.`stok` = `d`.`id_far_ket_stok`)))
   LEFT JOIN `mr_unit` `e`
     ON ((`a`.`id_unit` = `e`.`id_unit`)))
     WHERE a.id_barang=inKode AND a.tanggal BETWEEN inTglAwal AND inTglAkhir
      and a.poli_inap=inIol;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarLapTrmBrg` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarLapTrmBrg` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarLapTrmBrg`(inNoSp INT,inNamaPetugas CHAR(50),
inSip CHAR(20))
BEGIN
DELETE FROM far_lap_trm_brg;
INSERT INTO  far_lap_trm_brg (no_sp,nama_petugas,sip) VALUES
(inNoSp,inNamaPetugas,inSip);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarNotaTmp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarNotaTmp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarNotaTmp`(inIdFarTrn INT,inNamaPetugas  CHAR(70))
BEGIN
    DECLARE vTotal INT;
    delete from far_nota_tmp;
    SELECT SUM(subtotal) FROM far_det_trn WHERE id_far_trn=inIdFarTrn INTO vTotal;
    INSERT INTO far_nota_tmp (id_far_trn,total,nama_petugas) VALUES(inIdFarTrn,vTotal,inNamaPetugas);
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarNotaTmpUlang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarNotaTmpUlang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarNotaTmpUlang`(inIdFarTrn INT,inNamaPetugas  CHAR(70))
BEGIN
    DECLARE vTotal INT;
    delete from far_nota_tmp;
    SELECT SUM(subtotal) FROM far_det_trn_fix WHERE id_far_trn=inIdFarTrn INTO vTotal;
    INSERT INTO far_nota_tmp (id_far_trn,total,nama_petugas) VALUES(inIdFarTrn,vTotal,inNamaPetugas);
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarPenggunaanObat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarPenggunaanObat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarPenggunaanObat`(inTglAwal CHAR(10),inTglAkhir CHAR(10),
inNamaPetugas CHAR(60),inPoliInap INT)
BEGIN
DELETE FROM far_lap_penggunaan_obat;
INSERT INTO far_lap_penggunaan_obat (tgl_awal,tgl_akhir,nama_petugas,poli_inap) VALUES
(inTglAwal,inTglAkhir,inNamaPetugas,inPoliInap);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarRekapAnfrah` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarRekapAnfrah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarRekapAnfrah`(inTglAwal CHAR(10),inTglAkhir CHAR(10),
inNamaPetugas CHAR(50),inIdunit INT,inIol INT)
BEGIN
DELETE FROM far_lap_tmp;
INSERT INTO far_lap_tmp(tanggal_awal,tanggal_akhir,nama_petugas,id_unit,iol)
            VALUES(inTglAwal,inTglAkhir,inNamapetugas,inIdUnit,inIol);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarRstAnfrah` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarRstAnfrah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarRstAnfrah`(inNoUrut INT,inUnit CHAR(4),inIol INT,
inIdPetugas CHAR(8))
BEGIN
DECLARE vStokInapLama CHAR(6);
DECLARE vStokPoliLama CHAR(6);
DECLARE vkelompok INT(4);
DECLARE vjumlahsisa INT(6);
DECLARE vStokDepoPoli CHAR(6);
DECLARE vStokDepoInap CHAR(6);
DECLARE vSisa DOUBLE;
DECLARE inJumlah INT;
DECLARE inNoTrn INT;
DECLARE inKode CHAR(5);
SELECT id_trn,jumlah,id_barang FROM far_det_trn_stok_keluar WHERE id_far_det_trn_stok_keluar=inNoUrut
 INTO inNoTrn,inJumlah,inKode;
SET inJumlah=0-inJumlah;
SELECT kelompok FROM mr_unit WHERE id_unit=inUnit INTO vkelompok;
UPDATE far_det_trn_stok_keluar SET jumlah=jumlah+inJumlah WHERE id_far_det_trn_stok_keluar=inNoUrut;
UPDATE far_trn_stok_keluar SET kirim='B',id_petugas=inIdPetugas, jam_respon=NOW(),tgl_respon=NOW() WHERE id_far_stok_keluar=inNoTrn;
SELECT stok_depo_inap,stok_depo_poli,stok_inap,stok_poli FROM far_stok WHERE no_urut =inKode 
INTO vStokDepoInap,vStokDepoPoli,vStokInapLama,vStokPoliLama;
IF inIol='1' THEN
  
  IF (inUnit=2) THEN 
     UPDATE far_stok SET stok_poli=(stok_poli+inJumlah),stok_depo_poli=(stok_depo_poli-inJumlah)
      WHERE no_urut=inKode;
     
     INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                             (1,NOW(),CURRENT_TIME(),inNoTrn,inKode,inJumlah,0,inJumlah+vStokPoliLama,
                             inIdPetugas,inIol,inUnit);    
     INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                             (1,NOW(),CURRENT_TIME(),inNoTrn,inKode,0,inJumlah,vStokDepoPoli-inJumlah,
                             inIdPetugas,3,inUnit);                             
     ELSE
     UPDATE far_stok SET stok_poli=(stok_poli-inJumlah) WHERE no_urut=inKode;
     INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
     (1,NOW(),CURRENT_TIME(),inNoTrn,inKode,'0',inJumlah,vStokPoliLama-inJumlah,inIdPetugas,inIol,inUnit);    
  END IF;
END IF;
IF inIol='2' THEN
    
    IF (inUnit=2) THEN  
      UPDATE far_stok SET stok_inap=(stok_inap+inJumlah),stok_depo_inap=(stok_depo_inap-inJumlah) WHERE no_urut=inKode;
      INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                             (2,NOW(),CURRENT_TIME(),inNoTrn,inKode,inJumlah,0,inJumlah+vStokInapLama,
                             inIdPetugas,inIol,inUnit);  
      INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                             (2,NOW(),CURRENT_TIME(),inNoTrn,inKode,0,inJumlah,vStokDepoInap-inJumlah,
                             inIdPetugas,4,inUnit);
      ELSE
      UPDATE far_stok SET stok_inap=(stok_inap-inJumlah) WHERE no_urut=inKode;
      INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                            (2,NOW(),CURRENT_TIME(),inNoTrn,inKode,'0',inJumlah,vStokInapLama-inJumlah,
                            inIdPetugas,inIol,inUnit);    
    END IF;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarSp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarSp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarSp`(inIdSuplier int,inIdPetugas int,inIol int)
BEGIN
    insert into far_nosp(iol,id_suplier,id_petugas,tanggal,jam)
    values (inIol,inIdSuplier,inIdPetugas,curdate(),curtime());
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarStokLimit` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarStokLimit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarStokLimit`(inNamaPetugas CHAR(50),inKelStok INT)
BEGIN
DELETE FROM far_lap_stok_limit;
INSERT INTO far_lap_stok_limit (tanggal,nama_petugas,kel_stok) VALUES 
(CURDATE(),inNamaPetugas,inKelStok);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarStokMak` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarStokMak` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarStokMak`(inNamaPetugas CHAR(50),inKelStok INT)
BEGIN
DELETE FROM far_lap_stok_limit;
INSERT INTO far_lap_stok_limit (tanggal,nama_petugas,kel_stok) VALUES 
(CURDATE(),inNamaPetugas,inKelStok);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spfarStokUpdate` */

/*!50003 DROP PROCEDURE IF EXISTS  `spfarStokUpdate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spfarStokUpdate`(
       inStokPoli INT,inStokInap INT,inNoUrut INT,inIdPetugas INT)
BEGIN
DECLARE vStokPoli INT;
DECLARE vStokInap INT;
SELECT stok_poli,stok_inap FROM far_stok WHERE no_urut=inNoUrut 
INTO vStokPoli,vStokInap;
UPDATE far_stok SET  stok_poli=stok_poli+inStokPoli,stok_inap=stok_inap+inStokInap
WHERE no_urut=inNoUrut;
IF (inStokPoli<>0) THEN
 INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
 (1,NOW(),CURRENT_TIME(),0,inNoUrut,inStokPoli,0,vStokPoli+inStokPoli,inIdPetugas,5,2);
END IF;
IF (inStokInap<>0) THEN
 INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
 (2,NOW(),CURRENT_TIME(),0,inNoUrut,inStokInap,0,vStokInap+inStokInap,inIdPetugas,6,2);
END IF;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarStokUpdateUnit` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarStokUpdateUnit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarStokUpdateUnit`(inUnit INT,inNoUrut INT,inIdPetugas INT,
inJumlah INT)
BEGIN
DECLARE vkelompok INT(4);
SELECT kelompok FROM mr_unit WHERE id_unit=inUnit INTO vkelompok;
IF (inUnit=9) THEN       
       UPDATE far_stok SET stok_pringgondani=(stok_pringgondani+inJumlah) WHERE no_urut=inNoUrut;      
END IF;    
IF ((inUnit=10) OR (inUnit=66)) THEN       
       UPDATE far_stok SET stok_kahyangan=(stok_Kahyangan+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=21) THEN       
       UPDATE far_stok SET stok_punokawan=(stok_punokawan+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=40) THEN       
       UPDATE far_stok SET stok_taman_sari=(stok_taman_sari+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=67) THEN       
       UPDATE far_stok SET stok_hcu=(stok_hcu+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=68) THEN       
       UPDATE far_stok SET stok_ok=(stok_ok+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=15) THEN       
       UPDATE far_stok SET stok_fisioteraphi=(stok_fisioteraphi+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=11) THEN       
       UPDATE far_stok SET stok_laboratorium=(stok_laboratorium+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=13) THEN       
       UPDATE far_stok SET stok_radiologi=(stok_radiologi+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF (inUnit=1) THEN       
       UPDATE far_stok SET stok_igd=(stok_igd+inJumlah) WHERE no_urut=inNoUrut;
END IF;    
IF ((inUnit!=9)AND (vkelompok=1)) THEN       
       UPDATE far_stok SET stok_non_igd=(stok_non_igd+inJumlah) WHERE no_urut=inNoUrut;
END IF;  
 INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
 (NOW(),CURRENT_TIME(),0,inNoUrut,inJumlah,0,0,inIdPetugas,9,inUnit); 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarTerimaBarang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarTerimaBarang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarTerimaBarang`(inIdDetNoSp INT,inHargaBeliSuplier INT,inHargaBeli CHAR(8),inHargaJual INT,inHp INT,inDiskon CHAR(10),inPpn INT,
inBatch CHAR(20),inTglEd CHAR(10),inIdPetugas INT,inIdBarang INT,inIsi INT,inPoliInap INT,inMargin INT,inJumlah INT,inPpnKeluaran INT,inIdNoSp CHAR(10))
BEGIN
DECLARE vStokPoli INT;
DECLARE vStokInap INT;
DECLARE inSubTotal BIGINT;
SELECT stok_inap,stok_poli FROM far_stok WHERE no_urut=inIdBarang INTO vStokInap,vStokPoli;
IF (inPoliInap=1) THEN/*ralan*/
 UPDATE  far_det_nosp SET kirim=1,harga_beli_suplier=inHargaBeliSuplier,harga_beli=inHargaBeliSuplier,harga_jual=inHargaJual,hp=inHp,disc=inDiskon,
 ppn=inPpn,batch=inBatch,tgl_ed=inTglEd,petugas_pencatat=inIdPetugas,qty=inJumlah,isi=inIsi,ppn_keluaran=inPpnKeluaran WHERE id_det_no_sp LIKE inIdDetNoSp;
 
 INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                       (1,NOW(),CURRENT_TIME(),inIdDetNoSp,inIdBarang,(inJumlah*inIsi),0,vStokPoli+(inJumlah*inIsi),
                        inIdPetugas,3,2);
 
 UPDATE far_stok SET stok_poli=vStokPoli+(inJumlah*inIsi),margin=inMargin,ppn=inPpn,tgl_ed=inTglEd,batch=inBatch,disc=inDiskon,
 harga_jual=inHargaJual,harga_beli=inHargaBeliSuplier,harga_pokok=inHp,ppn_keluaran=inPpnKeluaran,
 isi=inIsi WHERE no_urut=inIdBarang;
 
 SELECT CASE WHEN qty<=100 THEN SUM((((harga_beli-((disc/100)*harga_beli))*qty))*((ppn+100)/100))   ELSE SUM(((harga_beli-disc)*qty)*((ppn+100)/100))
  END  FROM far_det_nosp WHERE no_sp=inIdNoSp INTO inSubTotal;
 UPDATE far_nosp SET jumlah=inSubTotal WHERE id_no_sp=inIdNoSp;
END IF;
IF (inPoliInap=2) THEN/*ranap*/
 UPDATE  far_det_nosp_inap SET kirim=1,harga_beli_suplier=inHargaBeliSuplier,harga_beli=inHargaBeliSuplier,harga_jual=inHargaJual,hp=inHp,disc=inDiskon,
 ppn=inPpn,batch=inBatch,tgl_ed=inTglEd,petugas_pencatat=inIdPetugas,qty=inJumlah,isi=inIsi,ppn_keluaran=inPpnKeluaran WHERE id_det_no_sp LIKE inIdDetNoSp;
 
 INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
 (2,NOW(),CURRENT_TIME(),inIdDetNoSp,inIdBarang,(inJumlah*inIsi),0,vStokInap+(inJumlah*inIsi),
 inIdPetugas,4,2);
 
 UPDATE far_stok SET stok_inap=vStokInap+(inJumlah*inIsi),margin=inMargin,ppn=inPpn,tgl_ed=inTglEd,batch=inBatch,disc=inDiskon,
 harga_jual=inHargaJual,harga_beli=inHargaBeliSuplier,harga_pokok=inHp, ppn_keluaran=inPpnKeluaran,
 isi=inIsi WHERE no_urut=inIdBarang;
 
SELECT CASE WHEN qty<=100 THEN SUM((((harga_beli-((disc/100)*harga_beli))*qty))*((ppn+100)/100))   ELSE SUM(((harga_beli-disc)*qty)*((ppn+100)/100))
 END  FROM far_det_nosp_inap WHERE no_sp=inIdNoSp INTO inSubTotal;
  
 UPDATE far_nosp_inap SET jumlah=inSubTotal WHERE id_no_sp=inIdNoSp;
 
END IF;
 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarUpdAnfrah` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarUpdAnfrah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarUpdAnfrah`(inJumlah INT,inNoTrn INT,
inKode CHAR(8),inNoUrut INT,inIol INT,
inIdPetugas CHAR(8),inUnit CHAR(4))
BEGIN
DECLARE vStokInapLama CHAR(6);
DECLARE vStokPoliLama CHAR(6);
DECLARE vkelompok INT(4);
DECLARE vjumlahsisa INT(6);
DECLARE vStokDepoPoli CHAR(6);
DECLARE vStokDepoInap CHAR(6);
DECLARE vSisa DOUBLE;
DECLARE vHp INT;
SELECT kelompok FROM mr_unit WHERE id_unit=inUnit INTO vkelompok;
UPDATE far_trn_stok_keluar SET kirim='S',id_petugas=inIdPetugas, jam_respon=curtime(),tgl_respon=curdate() WHERE id_far_stok_keluar=inNoTrn;
SELECT stok_inap,stok_poli,harga_pokok FROM far_stok WHERE no_urut =inKode 
INTO vStokInapLama,vStokPoliLama,vHp;
UPDATE far_det_trn_stok_keluar SET jumlah=inJumlah,harga_pokok =vHp WHERE id_far_det_trn_stok_keluar=inNoUrut;
IF inIol='1' THEN
  
  IF (inUnit=2) THEN 
     UPDATE far_stok SET stok_poli=(stok_poli+inJumlah)
      WHERE no_urut=inKode;
     
     INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                             (NOW(),CURRENT_TIME(),inNoTrn,inKode,inJumlah,0,inJumlah+vStokPoliLama,
                             inIdPetugas,'7',inUnit);    
                            
     ELSE
     UPDATE far_stok SET stok_poli=(stok_poli-inJumlah) WHERE no_urut=inKode;
     INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
     (NOW(),CURRENT_TIME(),inNoTrn,inKode,'0',inJumlah,vStokPoliLama-inJumlah,inIdPetugas,'7',inUnit);    
  END IF;
END IF;
IF inIol='2' THEN
    
    IF (inUnit=2) THEN  
      UPDATE far_stok SET stok_inap=(stok_inap+inJumlah) WHERE no_urut=inKode;
      INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                             (1,NOW(),CURRENT_TIME(),inNoTrn,inKode,inJumlah,0,inJumlah+vStokInapLama,
                             inIdPetugas,'8',inUnit);  
      ELSE
      UPDATE far_stok SET stok_inap=(stok_inap-inJumlah) WHERE no_urut=inKode;
      INSERT INTO far_stok_elk(poli_inap,tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit) VALUES
                            (2,NOW(),CURRENT_TIME(),inNoTrn,inKode,'0',inJumlah,vStokInapLama-inJumlah,
                            inIdPetugas,'8',inUnit);    
    END IF;    
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFarValNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFarValNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFarValNota`(inNoReg CHAR(8))
BEGIN
UPDATE far_trn SET val_farmasi=1 WHERE id_register =inNoReg;
UPDATE mr_bl SET val_farmasi=1 WHERE id_register =inNoReg;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFisAntrian` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFisAntrian` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFisAntrian`(inIdFisTrn INT)
BEGIN
    DECLARE noAntrian INT;
    SELECT COUNT(tanggal) FROM fis_trn WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND iol  LIKE 1 INTO noAntrian;
    
    IF (noAntrian=1) THEN
    SET noAntrian=1;
       ELSE
     SELECT MAX(no_psn)+1 FROM fis_trn WHERE tanggal LIKE CONCAT(CURDATE(),"%")   INTO noAntrian;     
    END IF;
    UPDATE fis_trn SET no_psn=noAntrian WHERE id_far_trn=inIdFisTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFisCetakNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFisCetakNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFisCetakNota`(inNoTrn INT,inNamaPetugas CHAR(50))
BEGIN
DECLARE vDiskon INT;
DECLARE vSubTotal INT;
DECLARE vGrandTotal INT;
TRUNCATE fis_cetak_trn;
INSERT INTO fis_cetak_trn (id_no_trn,nama_petugas) VALUES (inNoTrn,inNamaPetugas);
SELECT SUM(diskon*jumlah),SUM(tarif*jumlah), SUM(total) FROM fis_det_trn WHERE id_fis_trn=inNoTrn
INTO vDiskon,vSubTotal,vGrandTotal;
UPDATE fis_cetak_trn SET diskon=vDiskon,sub_total=vSubTotal,grand_total=vGrandTotal WHERE id_no_trn= inNoTrn;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFisInsertTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFisInsertTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFisInsertTransaksi`(inIdCatatanMedik INT,inIdRegister INT,inIdFisTrn INT,inIdUnit INT,inJumlah INT,inDiskon INT,inIdFisTarif INT,inIdPetugas INT)
BEGIN
INSERT INTO fis_det_trn (id_catatan_medik,id_register,id_fis_trn,jumlah,diskon,id_fis_tarif,tarif,
                konsul,koperasi,rumah,alat,invest,bhp,bensin,tim,dr_sunu,jasa,total,id_petugas) 
                SELECT inIdCatatanMedik,inIdRegister,inIdfisTrn,inJumlah,inDiskon,inIdFisTarif,total,
                konsul,koperasi,rumah,alat,invest,bhp,bensin,tim,dr_sunu,jasa,((total-indiskon)*inJumlah),inIdPetugas
                 FROM fis_tarif WHERE id_fis_tarif=inIdFisTarif;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spFisLapKunjungan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFisLapKunjungan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFisLapKunjungan`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spFisUpdateNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spFisUpdateNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spFisUpdateNota`(inIdFisTrn INT,inTotal INT)
BEGIN
    UPDATE  fis_trn SET biaya=inTotal WHERE id_fis_trn=inIdFisTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spHapusAlergi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spHapusAlergi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spHapusAlergi`(inIdAlergi INT,inIdCatatanMedik CHAR(8))
BEGIN
DECLARE vJml INT;
DELETE FROM mr_alergi WHERE id_alergi=inIdAlergi;
SELECT COUNT(id_alergi) FROM mr_alergi WHERE id_alergi=inIdAlergi INTO vJml;
IF (vJml=0) THEN
 UPDATE mr_pasien SET alergi=0 WHERE id_catatan_medik=inIdCatatanMedik;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spHapusNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spHapusNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spHapusNota`(inIdLabTrn INT,inIdPetugas INT,inIdAplikasi INT,inIdRegister INT,inIdCatatanMedik INT)
BEGIN
 IF (inIdAplikasi=5) THEN
     DELETE FROM lab_trn WHERE id_lab_trn=inIdLabTrn;
     DELETE FROM lab_det_trn WHERE id_lab_trn=inIdLabTrn;
  END IF;     
  /*IF (inIdAplikasi=5) THEN
     DELETE FROM ro_trn WHERE id_ro_trn=inIdLabTrn;
     DELETE FROM ro_det_trn WHERE id_ro_trn=inIdLabTrn;
  END IF;   
   IF (inIdAplikasi=7) THEN
     DELETE FROM fis_trn WHERE id_fis_trn=inIdLabTrn;
     DELETE FROM fis_det_trn WHERE id_fis_trn=inIdLabTrn;
  END IF;   */
     INSERT INTO log_transaksi (id_trn,id_petugas,tanggal,jam,id_aplikasi,id_register,id_catatan_medik)
      VALUES (inIdLabTrn,inIdPetugas,CURDATE(),CURTIME(),inIdAplikasi,inIdRegister,inIdCatatanMedik);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spHitungTglLahir` */

/*!50003 DROP PROCEDURE IF EXISTS  `spHitungTglLahir` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spHitungTglLahir`(inUmur int)
BEGIN
    
    UPDATE waktu SET tanggal=CURRENT_DATE(),jam=CURRENT_TIME(),tanggal_date=CURRENT_DATE(),jam_time=CURRENT_TIME(),
    tgl_lahir= DATE_SUB(CURDATE(),INTERVAL inUmur YEAR) ;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertPasienBaru` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertPasienBaru` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertPasienBaru`(inNama char(50))
BEGIN
    insert into mr_pasien (nama) values (inNama);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertPasienLama` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertPasienLama` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertPasienLama`(inIdCatatanMedik CHAR(8),inIdUnit INT,inIdDokter INT,inIdAsuransi INT,inIdPetugas INT,inIdPengirim INT,inDaftar INT)
BEGIN
    DECLARE no_reg INT;
    DECLARE tgllahir CHAR(10);
    DECLARE tahun,bulan,hari INT;
    DECLARE umur CHAR(20);
    DECLARE noPendaftaran INT;
    DECLARE no_reg_lama INT;
    DECLARE noPeriksa INT;
    SELECT tgl_lahir,id_register FROM mr_pasien WHERE id_catatan_medik=inIdCatatanMedik INTO tgllahir,no_reg_lama;
    SELECT MAX(id_register)+1 FROM mr_pasien  INTO no_reg;
   
   
    IF (inDaftar <> 1) THEN
       SET no_reg=no_reg_lama;
       UPDATE ksr_trn SET id_asuransi=inIdAsuransi WHERE id_register=no_reg;
       ELSE
       INSERT INTO ksr_trn(id_catatan_medik,id_register,tgl_kunj,jam_kunj,id_unit,iol,id_asuransi,id_dokter,id_pengirim,kelas,diskon,bayar,titip) VALUES
       (inIdCatatanMedik,no_reg,CURDATE(),CURTIME(),inidUnit,1,inIdAsuransi,inIdDokter,inIdPengirim,3,0,0,0);
    END IF;   
 
    UPDATE mr_pasien SET tgl_kunjungan=CURDATE(),jam_kunjungan=CURTIME(),poli_inap=1,id_register=no_reg,id_unit=inIdUnit,id_dokter=inIdDokter,
    id_asuransi=inIdAsuransi,id_pengirim=inIdPengirim,aktif=1,kelas="3" WHERE id_catatan_medik=inIdCatatanMedik;
  
 SELECT   FLOOR(DATEDIFF(CURDATE(),tgllahir)/365) years
            , FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12) months
            , CEILING((((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12)
            - FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12))* 30) days INTO tahun,bulan,hari;    
    
    SELECT COUNT(*)+1 FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") INTO noPendaftaran;
    
    
   
    SELECT COUNT(*) FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND id_dokter LIKE inIdDokter AND id_unit LIKE inIdUnit INTO noPeriksa;
    IF (noPeriksa=0) THEN
    SET noPeriksa=1;
    ELSE
     SELECT MAX(no_periksa)+1 FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND id_dokter LIKE inIdDokter AND id_unit LIKE inIdUnit INTO noPeriksa;
    END IF;
    
    INSERT INTO mr_bl (daftar_ke,no_periksa,no_pendaftaran,id_register,id_catatan_medik,bl,id_unit,iol,id_dokter,id_asuransi,umur_th,umur_bln,umur_hr,id_petugas,jam,id_pengirim,tanggal)
    VALUES (inDaftar,noPeriksa,noPendaftaran,no_reg,inIdCatatanMedik,2,inIdUnit,1,inIdDokter,inIdAsuransi,tahun,bulan,hari,inIdPetugas,CURTIME(),inIdPengirim,CURDATE()); 
     
    
     
    IF (inIdPengirim<>1)THEN
    INSERT INTO mr_sjr (umur_th,umur_bln,umur_hr,id_catatan_medik,id_register,id_pengirim,id_dokter) VALUES
     (tahun,bulan,hari,inIdCatatanMedik,no_reg,inIdPengirim,inIdDokter);
    END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertPasienPulang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertPasienPulang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertPasienPulang`(inIdCatatanMedik INT,inIdRegister INT,inIdDirujuk INT,
            inLama INT,inIdKondisiPulang INT,inIcdUtama CHAR(10),inIcd1 CHAR(10),inIcd2 CHAR(10),inIcd3 CHAR(10),inIcd4 CHAR(10),inIcd5 CHAR(10)
            ,inIcd6 CHAR(10),inIdDokter INT,inIcd91 CHAR(10),inIcd92 CHAR(10),inIcd93 CHAR(10),inIcd94 CHAR(10),inIcd95 CHAR(10))
BEGIN
    DECLARE tgllahir CHAR(10);
    DECLARE tglInap CHAR(10);
    DECLARE jamInap CHAR(8);
    DECLARE tglPulang CHAR(10);
    DECLARE jamPulang CHAR(8);
    DECLARE tglKunjungan CHAR(10);
    DECLARE jamKunjungan CHAR(8);
    DECLARE tahun,bulan,hari INT;
    DECLARE umur CHAR(20);
    DECLARE vKelas CHAR(2);
    DECLARE vPoliInap INT;
    DECLARE vBaruLama INT;
    DECLARE vJumlah INT;
    DECLARE vSex INT;
    DECLARE vRla INT;
    DECLARE vHidup INT;
    DECLARE vMati INT;
    DECLARE vIdUnit INT;
    DECLARE vBl INT;
  
    
    SELECT tgl_kunjungan,jam_kunjungan,tgl_lahir,tgl_inap,jam_inap,tgl_pulang,jam_pulang,kelas,poli_inap,sex,id_unit FROM mr_pasien WHERE id_catatan_medik=inIdCatatanMedik 
    INTO tglKunjungan,jamKunjungan,tgllahir,tglInap,jamInap,tglPulang,jamPulang,vKelas,vPoliInap,vSex,vIdUnit;
    
     SELECT   FLOOR(DATEDIFF(CURDATE(),tgllahir)/365) years
            , FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12) months
            , CEILING((((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12)
            - FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12))* 30) days INTO tahun,bulan,hari;   
    
    SELECT bl FROM mr_bl WHERE id_register=inIdRegister LIMIT 1 INTO vBl;
    INSERT INTO mr_pasien_pulang (id_mr_bl,tgl_kunjungan,jam_kunjungan,jam,tanggal,bl,id_unit,id_catatan_medik,id_register,umur_tahun,umur_bulan,umur_hari,tgl_pulang,jam_pulang,id_kondisi_pulang,
    id_dirujuk,lama_dirawat,kelas,icd_utama,icd_1,icd_2,icd_3,icd_4,icd_5,icd_6 ,id_dokter,poli_inap,icd9_1,icd9_2,icd9_3,icd9_4,icd9_5) 
    VALUES (0,tglKunjungan,jamKunjungan,CURTIME(),CURDATE(),vBl,vIdUnit,inIdCatatanMedik,inIdRegister,tahun,bulan,hari,tglPulang,jamPulang,inIdKondisiPulang,inIdDirujuk,inLama,vKelas,inIcdUtama,inIcd1,
    inIcd2,inIcd3,inIcd4,inIcd5,inIcd6,inIdDokter,vPoliInap,inIcd91,inIcd92,inIcd93,inIcd94,inIcd95);
    
    UPDATE mr_sjr SET diagnosa= inIcdUtama,tgl_pulang=tglPulang,id_kondisi=inIdKondisiPulang WHERE id_register=inIdRegister;   
    
    SELECT COUNT(*) FROM mr_rla WHERE id_catatan_medik =inIdCatatanMedik INTO vJumlah;    
  
    IF (inIdKondisiPulang=4) THEN
     SET vMati=1;
     SET vHidup=0;     
      ELSE
      SET vMati=0;
      SET vHidup=1;
    END IF;
    
   IF (inIcdUtama <> "-")  THEN  
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
   IF (inIcd1 <> "-")  THEN  
    SET inIcdUtama=inIcd1;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd2 <> "-")  THEN  
    SET inIcdUtama=inIcd2;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
      IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd3 <> "-")  THEN  
    SET inIcdUtama=inIcd3;   
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd4 <> "-")  THEN  
    SET inIcdUtama=inIcd4;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd5 <> "-")  THEN  
    SET inIcdUtama=inIcd5;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd6 <> "-")  THEN  
    SET inIcdUtama=inIcd6;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdRegister, inIdCatatanMedik,inIcdUtama,1,vPoliInap,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
    SELECT  COUNT(iol)  FROM mr_bl WHERE id_register=inIdRegister AND iol=2 INTO vJumlah;
    IF (vJumlah=0) THEN
       UPDATE mr_pasien SET poli_inap=0,aktif=0 WHERE     id_catatan_medik=inIdCatatanMedik;    
    ELSE 
       UPDATE mr_pasien SET poli_inap=0 WHERE     id_catatan_medik=inIdCatatanMedik;  
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertPasienPulangPoli` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertPasienPulangPoli` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertPasienPulangPoli`(inIdMrBl INT,inIdRegister INT,inIdDirujuk INT,
            inLama INT,inIdKondisiPulang INT,inIcdUtama CHAR(10),inIcd1 CHAR(10),inIcd2 CHAR(10),inIcd3 CHAR(10),inIcd4 CHAR(10),inIcd5 CHAR(10)
            ,inIcd6 CHAR(10),inIdDokter INT,inIcd91 CHAR(10),inIcd92 CHAR(10),inIcd93 CHAR(10),inIcd94 CHAR(10),inIcd95 CHAR(10))
BEGIN
    DECLARE tgllahir CHAR(10);
    DECLARE tglInap CHAR(10);
    DECLARE jamInap CHAR(8);
    DECLARE tglPulang CHAR(10);
    DECLARE jamPulang CHAR(8);
    DECLARE tglKunjungan CHAR(10);
    DECLARE jamKunjungan CHAR(8);
    DECLARE tahun,bulan,hari INT;
    DECLARE umur CHAR(20);
    DECLARE vKelas CHAR(2);
    DECLARE vPoliInap INT;
    DECLARE vBaruLama INT;
    DECLARE vJumlah INT;
    DECLARE vSex INT;
    DECLARE vRla INT;
    DECLARE vHidup INT;
    DECLARE vMati INT;
    DECLARE vIdUnit INT;
    DECLARE vBl INT;
    DECLARE inIdCatatanMedik INT;
  
    SELECT tanggal,jam,bl,id_catatan_medik,id_unit FROM mr_bl WHERE id_mr_bl=inIdMrBl INTO tglKunjungan,jamKunjungan,
    vBl,inIdCatatanMedik,vIdUnit;
    SELECT tgl_lahir,tgl_inap,jam_inap,tgl_pulang,jam_pulang,kelas,poli_inap,sex FROM mr_pasien WHERE id_catatan_medik=inIdCatatanMedik 
    INTO tgllahir,tglInap,jamInap,tglPulang,jamPulang,vKelas,vPoliInap,vSex;
    
     SELECT   FLOOR(DATEDIFF(CURDATE(),tgllahir)/365) years
            , FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12) months
            , CEILING((((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12)
            - FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12))* 30) days INTO tahun,bulan,hari;    
    
    INSERT INTO mr_pasien_pulang (tgl_kunjungan,jam_kunjungan,tanggal,jam,id_mr_bl,bl,id_unit,id_catatan_medik,id_register,umur_tahun,umur_bulan,umur_hari,tgl_pulang,jam_pulang,id_kondisi_pulang,
    id_dirujuk,lama_dirawat,kelas,icd_utama,icd_1,icd_2,icd_3,icd_4,icd_5,icd_6 ,id_dokter,poli_inap,icd9_1,icd9_2,icd9_3,icd9_4,icd9_5) 
    VALUES (tglKunjungan,jamKunjungan,CURDATE(),CURTIME(),inIdMrBl,vBl,vIdUnit,inIdCatatanMedik,inIdRegister,tahun,bulan,hari,tglPulang,jamPulang,inIdKondisiPulang,inIdDirujuk,inLama,vKelas,inIcdUtama,inIcd1,
    inIcd2,inIcd3,inIcd4,inIcd5,inIcd6,inIdDokter,1,inIcd91,inIcd92,inIcd93,inIcd94,inIcd95);
    
    UPDATE mr_sjr SET diagnosa= inIcdUtama,tgl_pulang=tglPulang,id_kondisi=inIdKondisiPulang WHERE id_register=inIdRegister;   
    
    SELECT COUNT(*) FROM mr_rla WHERE id_catatan_medik =inIdCatatanMedik INTO vJumlah;    
    IF (inIdKondisiPulang=4) THEN
     SET vMati=1;
     SET vHidup=0;     
      ELSE
      SET vMati=0;
      SET vHidup=1;
    END IF;
    
   IF (inIcdUtama <> "-")  THEN  
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<=4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
   IF (inIcd1 <> "-")  THEN  
    SET inIcdUtama=inIcd1;
     SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd2 <> "-")  THEN  
    SET inIcdUtama=inIcd2;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd3 <> "-")  THEN  
    SET inIcdUtama=inIcd3;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd4 <> "-")  THEN  
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd5 <> "-")  THEN  
    SET inIcdUtama=inIcd5;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd6 <> "-")  THEN  
    SET inIcdUtama=inIcd6;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
        IF (bulan=0 AND tahun=0 AND (hari>6  AND hari<28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun=0 AND bulan >0 OR (bulan=0 AND hari>=28)) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (tglKunjungan,jamKunjungan,inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
          
    
    
    IF (vPoliInap=2) THEN
     
      
         UPDATE mr_bl SET iol=0 WHERE id_mr_bl =inIdMrBl; 
       
             
       ELSE 
         SELECT COUNT(iol) FROM mr_bl WHERE id_register=inIdRegister INTO vJumlah;       
         IF (vJumlah>1) THEN       
              UPDATE mr_pasien SET poli_inap=0 WHERE     id_catatan_medik=inIdCatatanMedik; 
           ELSE
              UPDATE mr_pasien SET poli_inap=0,aktif=0 WHERE     id_catatan_medik=inIdCatatanMedik;  
         END IF;               
       UPDATE mr_bl SET iol=0 WHERE id_mr_bl =inIdMrBl;       
     END IF;  
     
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsPinjamObat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsPinjamObat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsPinjamObat`(inQty INT,inIdBarang INT,
inAsal INT,inTujuan INT,inIdPetugas INT,inNavi INT)
BEGIN
DECLARE vStokInap INT;
DECLARE vStokPoli INT;
DECLARE vIsi INT;
SELECT isi,stok_inap,stok_poli FROM far_stok WHERE 
no_urut =inIdBarang INTO vIsi,vStokInap,vStokPoli;
IF ((inAsal=1) AND (inTujuan=2)) THEN
UPDATE far_stok SET stok_poli=stok_poli-(inQty),
stok_inap=stok_inap+(inQty) WHERE no_urut =inIdBarang;
INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
(NOW(),CURRENT_TIME(),0,inIdBarang,'0',inQty,vStokPoli-inQty,inIdPetugas,10,2,1);
INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
(NOW(),CURRENT_TIME(),0,inIdBarang,inQty,0,vStokInap+inQty,inIdPetugas,9,2,2);
END IF;
IF ((inAsal=2) AND (inTujuan=1)) THEN
UPDATE far_stok SET stok_poli=stok_poli+(inQty),
stok_inap=stok_inap-(inQty) WHERE no_urut =inIdBarang;
INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
(NOW(),CURRENT_TIME(),0,inIdBarang,'0',inQty,vStokInap-inQty,inIdPetugas,9,2,2);
INSERT INTO far_stok_elk(tanggal,jam,id_trn,id_barang,masuk,keluar,sisa,id_petugas,stok,id_unit,poli_inap) VALUES
(NOW(),CURRENT_TIME(),0,inIdBarang,inQty,0,vStokPoli+inQty,inIdPetugas,10,2,1);
END IF;
INSERT INTO far_pinjam_obat(tanggal,jam,jumlah,id_barang,asal,tujuan,id_petugas,navi,kembali)
VALUES (CURDATE(),CURTIME(),inQty,inIdBarang,inAsal,inTujuan,inIdPetugas,inNavi,0);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKepIndKep` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKepIndKep` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKepIndKep`(inNamaPetugas CHAR(60),inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdUnit INT)
BEGIN
  delete from kep_mutu_tmp;
  INSERT INTO kep_mutu_tmp (nama_petugas,tanggal_awal,tanggal_akhir, id_unit) VALUES
  (inNamaPetugas,inTglAwal,inTglAkhir, inIdUnit);
  
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrCtkNotaTmp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrCtkNotaTmp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrCtkNotaTmp`(inIdRegister INT,inNamaPetugas CHAR(50),inDiskon INT, inBayar DOUBLE,inLunas INT,inSubTotal DOUBLE,inIdPetugas INT,inTglPulang CHAR(20),inJamPulang CHAR(10),inTitip INT,inJamKunj CHAR(10))
BEGIN
DECLARE vDiskon INT;
DECLARE vSubTotal INT;
DECLARE vGrandTotal INT;
delete from ksr_ctk_nota_tmp;
UPDATE ksr_trn SET tgl_pulang=inTglPulang,jam_pulang=inJamPulang,id_petugas=inIdPetugas,diskon=inDiskon,bayar=inBayar,lunas=inLunas,biaya=inSubTotal,titip=inTitip,jam_kunj=inJamKunj WHERE id_register=inIdRegister;
SELECT
  SUM((CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * `a`.`tarif`) ELSE `a`.`tarif` END)) AS `sub_total`,
  SUM((CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * `a`.`diskon`) ELSE `a`.`diskon` END)) AS `total_diskon`,
  SUM((CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * (`a`.`tarif` - `a`.`diskon`)) ELSE `a`.`tarif` END)) AS `grand_total`
FROM (`ksr_det_trn` `a`
   LEFT JOIN `ksr_tarif` `b`
     ON ((`a`.`kode` = `b`.`kode`)))
  WHERE a.id_register=inIdRegister INTO vSubTotal,vDiskon,vGrandTotal ;
INSERT INTO ksr_ctk_nota_tmp (id_register,id_catatan_medik,kode,kelompok_unit,nama_tarif,jumlah,tarif,diskon,
nama_unit,nama_asuransi,kelas,nama,alamat,tgl_masuk,jam_masuk,tgl_pulang,jam_pulang,rawat,nama_dokter,tgl_lahir,iol,sub_total,sub_diskon,grand_total,total,petugas,bayar,titip)
SELECT
  `a`.`id_register`      AS `id_register`,
  `c`.`id_catatan_medik` AS `id_catatan_medik`,
  `a`.`kode`             AS `kode`,
  `a`.`kelompok_unit`    AS `kelompok_unit`,
  (CASE WHEN (`a`.`kode` = 1002) THEN 'FARMASI' WHEN (`a`.`kode` = 1001) THEN 'LABORATORIUM' WHEN (`a`.`kode` = 1003) THEN 'RADIOLOGI' WHEN (`a`.`kode` = 1004) THEN 'FISIOTERAPHI' WHEN (`a`.`kode` >= 10000) THEN `b`.`nama` END) AS `nama_tarif`,
  `a`.`jumlah`           AS `jumlah`,
  (CASE WHEN (`a`.`kode` >= 10000) THEN ((`a`.`jumlah` * `a`.`tarif`) - (`a`.`jumlah` * `a`.`diskon`)) ELSE `a`.`tarif` END) AS `tarif`,
  (CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * `a`.`diskon`) ELSE `a`.`diskon` END) AS `diskon`,
  (CASE WHEN (`a`.`kode` = 1002) THEN 'FARMASI' WHEN (`a`.`kode` = 1001) THEN 'LABORATORIUM' WHEN (`a`.`kode` = 1003) THEN 'RADIOLOGI' WHEN (`a`.`kode` = 1004) THEN 'FISIOTERAPHI' WHEN (`a`.`kode` >= 10000) THEN `d`.`nama_unit` END) AS `nama_unit`,
  `e`.`nama`             AS `nama_asuransi`,
  `c`.`kelas`            AS `kelas`,
  `f`.`nama`             AS `nama`,
  `f`.`alamat`           AS `alamat`,
  (CASE WHEN (`c`.`iol` = 1) THEN `c`.`tgl_kunj` ELSE `c`.`tgl_inap` END) AS `tgl_masuk`,
  (CASE WHEN (`c`.`iol` = 1) THEN `c`.`jam_kunj` ELSE `c`.`jam_inap` END) AS `jam_masuk`,
  `c`.`tgl_pulang`       AS `tgl_pulang`,
  `c`.`jam_pulang`       AS `jam_pulang`,
  (CASE WHEN (`c`.`iol` = 1) THEN 'RAWAT JALAN' ELSE 'RAWAT INAP' END) AS `rawat`,
  `g`.`nama_dokter`      AS `nama_dokter`,
  `f`.`tgl_lahir`        AS `tgl_lahir`,
  `c`.`iol`              AS `iol`,vGrandTotal,inDiskon,(vGrandTotal-inDiskon),
    (CASE WHEN (`a`.`kode` >= 10000) THEN ((`a`.`jumlah` * `a`.`tarif`) ) ELSE `a`.`tarif` END) AS `total`,
    inNamaPetugas,inBayar,inTitip
FROM ((((((`ksr_det_trn` `a`
        LEFT JOIN `ksr_tarif` `b`
          ON ((`a`.`kode` = `b`.`kode`)))
       LEFT JOIN `ksr_trn` `c`
         ON ((`a`.`id_register` = `c`.`id_register`)))
      LEFT JOIN `mr_unit` `d`
        ON ((`c`.`id_unit` = `d`.`id_unit`)))
     LEFT JOIN `mr_asuransi` `e`
       ON ((`c`.`id_asuransi` = `e`.`id_asuransi`)))
    LEFT JOIN `mr_pasien` `f`
      ON ((`c`.`id_catatan_medik` = `f`.`id_catatan_medik`)))
   LEFT JOIN `mr_dokter` `g`
     ON ((`c`.`id_dokter` = `g`.`id_dokter`)))
     WHERE a.id_register=inIdRegister
ORDER BY (CASE WHEN(`a`.`kode` = 1002)THEN 'FARMASI' WHEN(`a`.`kode` = 1001)THEN 'LABORATORIUM' WHEN(`a`.`kode` = 1003)THEN 'RADIOLOGI' WHEN(`a`.`kode` = 1004)THEN 'FISIOTERAPHI' WHEN(`a`.`kode` >= 10000)THEN `b`.`nama` END);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrCtkNotaTmpAngsuran` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrCtkNotaTmpAngsuran` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrCtkNotaTmpAngsuran`(inIdRegister INT,inNamaPetugas CHAR(50))
BEGIN
DECLARE vDiskon INT;
DECLARE vSubTotal INT;
DECLARE vGrandTotal INT;
TRUNCATE ksr_ctk_nota_tmp;
SELECT
  SUM((CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * `a`.`tarif`) ELSE `a`.`tarif` END)) AS `sub_total`,
  SUM((CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * `a`.`diskon`) ELSE `a`.`diskon` END)) AS `total_diskon`,
  SUM((CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * (`a`.`tarif` - `a`.`diskon`)) ELSE `a`.`tarif` END)) AS `grand_total`
FROM (`ksr_det_trn` `a`
   LEFT JOIN `ksr_tarif` `b`
     ON ((`a`.`kode` = `b`.`kode`)))
  WHERE a.id_register=inIdRegister INTO vSubTotal,vDiskon,vGrandTotal ;
INSERT INTO ksr_ctk_nota_tmp (id_register,id_catatan_medik,kode,kelompok_unit,nama_tarif,jumlah,tarif,diskon,
nama_unit,nama_asuransi,kelas,nama,alamat,tgl_masuk,jam_masuk,tgl_pulang,jam_pulang,rawat,nama_dokter,tgl_lahir,iol,
sub_total,sub_diskon,grand_total,total,petugas)
SELECT
  `a`.`id_register`      AS `id_register`,
  `c`.`id_catatan_medik` AS `id_catatan_medik`,
  `a`.`kode`             AS `kode`,
  `a`.`kelompok_unit`    AS `kelompok_unit`,
  (CASE WHEN (`a`.`kode` = 1002) THEN 'FARMASI' WHEN (`a`.`kode` = 1001) THEN 'LABORATORIUM' WHEN (`a`.`kode` = 1003) THEN 'RADIOLOGI' WHEN (`a`.`kode` = 1004) THEN 'FISIOTERAPHI' WHEN (`a`.`kode` >= 10000) THEN `b`.`nama` END) AS `nama_tarif`,
  `a`.`jumlah`           AS `jumlah`,
  (CASE WHEN (`a`.`kode` >= 10000) THEN ((`a`.`jumlah` * `a`.`tarif`) - (`a`.`jumlah` * `a`.`diskon`)) ELSE `a`.`tarif` END) AS `tarif`,
  (CASE WHEN (`a`.`kode` >= 10000) THEN (`a`.`jumlah` * `a`.`diskon`) ELSE `a`.`diskon` END) AS `diskon`,
  (CASE WHEN (`a`.`kode` = 1002) THEN 'FARMASI' WHEN (`a`.`kode` = 1001) THEN 'LABORATORIUM' WHEN (`a`.`kode` = 1003) THEN 'RADIOLOGI' WHEN (`a`.`kode` = 1004) THEN 'FISIOTERAPHI' WHEN (`a`.`kode` >= 10000) THEN `d`.`nama_unit` END) AS `nama_unit`,
  `e`.`nama`             AS `nama_asuransi`,
  `c`.`kelas`            AS `kelas`,
  `f`.`nama`             AS `nama`,
  `f`.`alamat`           AS `alamat`,
  (CASE WHEN (`c`.`iol` = 1) THEN `c`.`tgl_kunj` ELSE `c`.`tgl_inap` END) AS `tgl_masuk`,
  (CASE WHEN (`c`.`iol` = 1) THEN `c`.`jam_kunj` ELSE `c`.`jam_inap` END) AS `jam_masuk`,
  `c`.`tgl_pulang`       AS `tgl_pulang`,
  `c`.`jam_pulang`       AS `jam_pulang`,
  (CASE WHEN (`c`.`iol` = 1) THEN 'RAWAT JALAN' ELSE 'RAWAT INAP' END) AS `rawat`,
  `g`.`nama_dokter`      AS `nama_dokter`,
  `f`.`tgl_lahir`        AS `tgl_lahir`,
  `c`.`iol`              AS `iol`,vGrandTotal,vDiskon,(vGrandTotal-vDiskon),
    (CASE WHEN (`a`.`kode` >= 10000) THEN ((`a`.`jumlah` * `a`.`tarif`) ) ELSE `a`.`tarif` END) AS `total`,
    inNamaPetugas
FROM ((((((`ksr_det_trn` `a`
        LEFT JOIN `ksr_tarif` `b`
          ON ((`a`.`kode` = `b`.`kode`)))
       LEFT JOIN `ksr_trn` `c`
         ON ((`a`.`id_register` = `c`.`id_register`)))
      LEFT JOIN `mr_unit` `d`
        ON ((`c`.`id_unit` = `d`.`id_unit`)))
     LEFT JOIN `mr_asuransi` `e`
       ON ((`c`.`id_asuransi` = `e`.`id_asuransi`)))
    LEFT JOIN `mr_pasien` `f`
      ON ((`c`.`id_catatan_medik` = `f`.`id_catatan_medik`)))
   LEFT JOIN `mr_dokter` `g`
     ON ((`c`.`id_dokter` = `g`.`id_dokter`)))
     WHERE a.id_register=inIdRegister
ORDER BY (CASE WHEN(`a`.`kode` = 1002)THEN 'FARMASI' WHEN(`a`.`kode` = 1001)THEN 'LABORATORIUM' WHEN(`a`.`kode` = 1003)THEN 'RADIOLOGI' WHEN(`a`.`kode` = 1004)THEN 'FISIOTERAPHI' WHEN(`a`.`kode` >= 10000)THEN `b`.`nama` END);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrCtkPiutang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrCtkPiutang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrCtkPiutang`(inIdRegister INT,inIdCatatanMedik INT)
BEGIN
DECLARE vJumlah INT;
DECLARE vNama CHAR(50);
DECLARE vTotal INT;
UPDATE ksr_piutang SET cetak=0;
UPDATE ksr_piutang SET cetak=1,id_catatan_medik=inIdCatatanMedik WHERE id_register=inIdRegister;
SELECT COUNT(*) FROM ksr_det_piutang WHERE id_register=inIdRegister INTO vJumlah;
SELECT nama_penanggung,uang_muka FROM ksr_piutang WHERE id_register=inIdRegister INTO 
vNama,vTotal;
IF (vJumlah=0) THEN
INSERT INTO ksr_det_piutang (id_register,tanggal,nama,jumlah,sub_total)
VALUES(inIdRegister,CURDATE(),vNama,vTotal,vTotal);
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrDetFaktur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrDetFaktur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrDetFaktur`(inIdKsrDetFaktur INT,inIdKsrFaktur INT,inIdNoSp INT)
BEGIN
 DECLARE vGrandTotal INT;
 DELETE FROM ksr_det_faktur WHERE id_ksr_det_faktur=inIdKsrDetFaktur;
 SELECT SUM(sub_total) FROM ksr_det_faktur WHERE id_ksr_faktur=inIdKsrFaktur INTO vGrandTotal;
 UPDATE ksr_faktur SET total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE ksr_det_faktur SET grand_total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE far_nosp SET valid_keu =0 WHERE id_no_sp=inIdNoSp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrDetFakturInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrDetFakturInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrDetFakturInap`(inIdKsrDetFaktur INT,inIdKsrFaktur INT,inIdNoSp INT)
BEGIN
 DECLARE vGrandTotal INT;
 DELETE FROM ksr_det_faktur_inap WHERE id_ksr_det_faktur=inIdKsrDetFaktur;
 SELECT SUM(sub_total) FROM ksr_det_faktur_inap WHERE id_ksr_faktur=inIdKsrFaktur INTO vGrandTotal;
 UPDATE ksr_faktur_inap SET total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE ksr_det_faktur_inap SET grand_total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE far_nosp_inap SET valid_keu =0 WHERE id_no_sp=inIdNoSp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrDetHapusTrn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrDetHapusTrn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrDetHapusTrn`(inNo CHAR(10),
inNoReg CHAR(10))
BEGIN
DELETE FROM ksr_det_trn WHERE id_ksr_det_trn =inNo;
UPDATE mr_bl  SET  jasa=-1 WHERE id_register=inNoReg;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrFaktur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrFaktur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrFaktur`(inFaktur CHAR(30),inSubTotal INT,inIdNoSp INT,inIdKsrFaktur INT, inIdSuplier INT)
BEGIN
DECLARE vGrandTotal INT;
INSERT INTO ksr_det_faktur (faktur,sub_total,id_no_sp,id_ksr_faktur,id_suplier) VALUES
 (inFaktur,inSubTotal,inIdNoSp,inIdKsrFaktur , inIdSuplier);
   SELECT SUM(sub_total)FROM ksr_det_faktur WHERE id_ksr_faktur=inIdKsrFaktur INTO vGrandTotal;
 UPDATE ksr_faktur SET total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE ksr_det_faktur SET grand_total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE far_nosp SET valid_keu=1 WHERE id_no_sp=inIdNoSp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrFakturCetak` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrFakturCetak` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrFakturCetak`(inIdKsrFaktur INT,inNamaPetugas CHAR(60),inNoInkaso INT,inBiaya CHAR(12))
BEGIN
DECLARE vAda INT;
DECLARE vNoJurnal INT;
TRUNCATE ksr_val_faktur;
INSERT INTO ksr_val_faktur (nama_suplier,faktur,sub_total,grand_total,nama_penerima,nama_petugas,tanggal,jam,id_ksr_faktur)
SELECT c.nama AS nama_suplier,b.faktur,b.sub_total,a.total,a.cp_suplier,inNamaPetugas,a.tanggal,a.jam,a.id_ksr_faktur FROM ksr_faktur a
INNER JOIN ksr_det_faktur b ON a.id_ksr_faktur=b.id_ksr_faktur
INNER JOIN ksr_faktur d ON  a.id_ksr_faktur=d.id_ksr_faktur
INNER JOIN far_suplier c ON d.id_suplier=c.id_far_suplier WHERE a.id_ksr_faktur=inIdKsrFaktur;
UPDATE ksr_faktur SET lunas=1 WHERE id_ksr_faktur=inIdksrFaktur;
SELECT COUNT(*) FROM ksr_jurnal_pembelian_farmasi_ralan WHERE no_inkaso=inNoInkaso INTO vAda;
IF (vAda=0) THEN   
   INSERT INTO ksr_jurnal_pembelian_farmasi_ralan (tanggal,jam,no_inkaso,uraian,faktur,iol)
   VALUES (CURDATE(),CURTIME(),inNoInkaso,'Pelunasan Farmasi Ralan',0,1);
   SELECT id_ksr_jurnal_pembelian_farmasi_ralan FROM ksr_jurnal_pembelian_farmasi_ralan WHERE no_inkaso=inNoInkaso INTO vNoJurnal; 
END IF ;   
IF (vAda=1) THEN   
   SELECT id_ksr_jurnal_pembelian_farmasi_ralan FROM ksr_jurnal_pembelian_farmasi_ralan WHERE no_inkaso=inNoInkaso INTO vNoJurnal; 
   DELETE FROM ksr_detil_jurnal_pembelian_farmasi_ralan WHERE id_ksr_jurnal_pembelian_farmasi_ralan=vNoJurnal;
END IF;
INSERT INTO ksr_detil_jurnal_pembelian_farmasi_ralan (id_ksr_jurnal_pembelian_farmasi_ralan,kode,debet,kredit,posisi,awal)
   VALUES (vNoJurnal,'521000',inBiaya,0,1,1);
INSERT INTO ksr_detil_jurnal_pembelian_farmasi_ralan (id_ksr_jurnal_pembelian_farmasi_ralan,kode,debet,kredit,posisi,awal)
   VALUES (vNoJurnal,'111200',0,inBiaya,2,1);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrFakturCetakInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrFakturCetakInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrFakturCetakInap`(inIdKsrFaktur INT,inNamaPetugas CHAR(60))
BEGIN
TRUNCATE ksr_val_faktur;
INSERT INTO ksr_val_faktur (nama_suplier,faktur,sub_total,grand_total,nama_penerima,nama_petugas,tanggal,jam,id_ksr_faktur)
SELECT c.nama AS nama_suplier,b.faktur,b.sub_total,a.total,a.cp_suplier,inNamaPetugas,a.tanggal,a.jam,a.id_ksr_faktur FROM ksr_faktur_inap a
INNER JOIN ksr_det_faktur_inap b ON a.id_ksr_faktur=b.id_ksr_faktur
INNER JOIN ksr_faktur_inap d ON a.id_ksr_faktur=d.id_ksr_faktur
INNER JOIN far_suplier c ON d.id_suplier=c.id_far_suplier
 WHERE a.id_ksr_faktur=inIdKsrFaktur;
UPDATE ksr_faktur_inap SET lunas=1 WHERE id_ksr_faktur=inIdksrFaktur;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrFakturInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrFakturInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrFakturInap`(inFaktur CHAR(30),inSubTotal INT,inIdNoSp INT,inIdKsrFaktur INT, inIdSuplier INT)
BEGIN
DECLARE vGrandTotal INT;
INSERT INTO ksr_det_faktur_inap (faktur,sub_total,id_no_sp,id_ksr_faktur,id_suplier) VALUES
 (inFaktur,inSubTotal,inIdNoSp,inIdKsrFaktur , inIdSuplier);
    SELECT SUM(sub_total)FROM ksr_det_faktur_inap WHERE id_ksr_faktur=inIdKsrFaktur INTO vGrandTotal;
    
 UPDATE ksr_faktur_inap SET total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE ksr_det_faktur_inap SET grand_total=vGrandTotal WHERE id_ksr_faktur=inIdKsrFaktur;
 UPDATE far_nosp_inap SET valid_keu=1 WHERE id_no_sp=inIdNoSp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrGenAkun` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrGenAkun` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrGenAkun`(inIdRegister INT,inIdTransaksi INT, inIdUnit INT)
BEGIN
DECLARE vIdKsrJurnal INT;
DECLARE vTotal INT;
DECLARE vAdm INT;
INSERT INTO ksr_jurnal (tanggal,jam,no_bukti,uraian,id_unit,id_register,id_transaksi) VALUES
                       (CURDATE(),CURTIME(),0,'Transaksi kasir',inIdUnit,inIdRegister,inIdTransaksi);
SELECT id_ksr_jurnal FROM ksr_jurnal WHERE id_unit=inIdUnit AND id_register=inIdRegister AND id_transaksi=inIdTransaki
INTO vIdKsrJurnal;
SELECT tarif,adm FROM ksr_det_trn WHERE id_ksr_det_trn=inIdTransaksi 
INTO vTotal,vAdm;
IF (vTotal>0) THEN
  INSERT INTO ksr_detil_jurnal (id_ksr_jurnal,kode,debet,kredit) VALUES
                               (vIdKsrJurnal,'1-11100',vTotal);
END IF;
IF (vAdm>0) THEN
INSERT INTO ksr_detil_jurnal (id_ksr_jurnal,kode,debet,kredit) VALUES
                             (vIdKsrJurnal,'4-10100',vAdm);                             
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrHapusTrn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrHapusTrn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrHapusTrn`(inIdKsrTrn INT(8))
BEGIN
DELETE FROM ksr_trn WHERE id_ksr_trn=inIdKsrTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrInitAwal` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrInitAwal` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrInitAwal`(inIdRegister INT)
BEGIN
IF (inIdRegister > 0) THEN
       INSERT INTO ksr_trn(id_catatan_medik,id_register,tgl_kunj,jam_kunj,id_unit,iol,id_asuransi,id_dokter,id_pengirim,kelas,diskon,bayar,titip) 
       SELECT id_catatan_medik,id_register,tgl_kunjungan,jam_kunjungan,id_unit,poli_inap,id_asuransi,id_dokter,id_pengirim,kelas,0,0,0
        FROM mr_pasien WHERE id_register =inIdRegister LIMIT 1;
END IF;        
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrInsertPiutang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrInsertPiutang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrInsertPiutang`(inTgl CHAR(10),inNama CHAR(50),inJumlah INT
  ,inIdRegister INT,inDel CHAR(1),inNoUrut INT)
BEGIN
DECLARE vSubTotal INT;
DECLARE vBiaya INT;
DECLARE vLunas INT;
IF (inDel=1) THEN
  INSERT INTO ksr_det_piutang (id_register,nama,tanggal,jumlah)
  VALUES (inIdRegister,inNama,inTgl,inJUmlah);
  END IF;
  IF (inDel=2) THEN
  DELETE FROM ksr_det_piutang WHERE id_ksr_det_piutang =inNoUrut;
  END IF;
  SELECT SUM(jumlah) FROM ksr_det_piutang WHERE id_register LIKE inIdRegister INTO vSubTotal;
  UPDATE ksr_det_piutang SET sub_total=vSubTotal WHERE id_register=inIdRegister;
  
   SELECT biaya FROM ksr_trn WHERE   id_register=inIdRegister INTO vBiaya;
   IF (vBiaya<=vSubTotal) THEN
      SET vLunas=1;
      ELSE
      SET vLunas=0;
   END IF;
   UPDATE ksr_trn SET bayar=vSubTotal,lunas=vLunas WHERE id_register=inIdRegister;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrInsertTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrInsertTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrInsertTransaksi`(inIdKsrDetTrn INT,
                 inIdRegister INT,inCatatanMedik INT,inPelaksana INT,
                 inKode INT,inOperator INT,
                 inAnestesi INT,inDokterSpAnak INT,inAss1 INT,inAss2 INT,inPenata INT,inOnloop INT,
                 inInsentif INT,
                 inJumlah CHAR(5),inDiskon INT,
                 inTarif INT, inIdUnit INT,inIol INT,inIdPetugas INT,inAss2Jaga INT,inOnloopJaga INT
                 ,inCekDr INT,inIdResiden INT)
BEGIN
INSERT INTO ksr_det_trn (kelompok_unit,asuransi,kelas,adm,operator,anestesi,sp_anak,ass_1,
ass_2,penata,on_loop,insentif,bhp,sewa_r,sewa_a,rs,pelaksana,id_operator,id_anestesi,id_dokter_sp_anak,
id_ass_1,
id_ass_2,id_penata,id_on_loop,id_insentif,id_petugas,jumlah,diskon,tarif,id_catatan_medik,id_register,
id_unit,tanggal,jam,iol,kode,total,ass_2_jaga, onloop_jaga,diskon_dr,id_residen_operator)
SELECT kelompok_unit,bpjs,kelas,inJumlah*adm,inJumlah*operator,inJumlah*anestesi,
inJumlah*sp_anak,inJumlah*ass_1,
CASE WHEN inAss2Jaga=1  THEN inJumlah*ass_1/*60000 */
          WHEN  inAss2Jaga=2  THEN inJumlah*ass_2 
          WHEN    inAss2Jaga=3 THEN inJumlah*ass_1 END
,inJumlah*penata,
CASE WHEN inOnloopJaga=1 THEN inJumlah*on_loop/*30000 */
ELSE  inJumlah*on_loop END ,
inJumlah*insentif,inJumlah*bhp,inJumlah*sewa_r,inJumlah*sewa_a,
inJumlah*rs,inPelaksana,inOperator,inAnestesi,inDokterSpAnak, 
 inAss1,inAss2,inPenata,inOnloop, inInsentif,inIdPetugas,inJumlah,inDiskon, tarif,inCatatanMedik,
  inIdRegister,inIdUnit,CURDATE(),CURTIME(),inIol,kode,inJumlah*(tarif-inDiskon),inAss2Jaga,inOnloopJaga,
 inCekDr,inIdResiden   FROM ksr_tarif WHERE kode LIKE inKode;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrInsertTransaksi1` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrInsertTransaksi1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrInsertTransaksi1`(inIdKsrDetTrn INT,
                 inIdRegister INT,inCatatanMedik INT,inPelaksana INT,
                 inKode INT,inOperator INT,
                 inAnestesi INT,inDokterSpAnak INT,inAss1 INT,inAss2 INT,inPenata INT,inOnloop INT,
                 inInsentif INT,
                 inJumlah CHAR(5),inDiskon INT,
                 inTarif INT, inIdUnit INT,inIol INT,inIdPetugas INT,inAss2Jaga INT,inOnloopJaga INT
                 ,inCekDr INT,inIdResiden INT,inIdMrBl INT)
BEGIN
INSERT INTO ksr_det_trn (kelompok_unit,asuransi,kelas,adm,operator,anestesi,sp_anak,ass_1,
ass_2,penata,on_loop,insentif,bhp,sewa_r,sewa_a,rs,pelaksana,id_operator,id_anestesi,id_dokter_sp_anak,
id_ass_1,
id_ass_2,id_penata,id_on_loop,id_insentif,id_petugas,jumlah,diskon,tarif,id_catatan_medik,id_register,
id_unit,tanggal,jam,iol,kode,total,ass_2_jaga, onloop_jaga,diskon_dr,id_residen_operator,id_mr_bl)
SELECT kelompok_unit,bpjs,kelas,inJumlah*adm,inJumlah*operator,inJumlah*anestesi,
inJumlah*sp_anak,inJumlah*ass_1,
CASE WHEN inAss2Jaga=1  THEN inJumlah*ass_1/*60000 */
          WHEN  inAss2Jaga=2  THEN inJumlah*ass_2 
          WHEN    inAss2Jaga=3 THEN inJumlah*ass_1 END
,inJumlah*penata,
CASE WHEN inOnloopJaga=1 THEN inJumlah*on_loop/*30000 */
ELSE  inJumlah*on_loop END ,
inJumlah*insentif,inJumlah*bhp,inJumlah*sewa_r,inJumlah*sewa_a,
inJumlah*rs,inPelaksana,inOperator,inAnestesi,inDokterSpAnak, 
 inAss1,inAss2,inPenata,inOnloop, inInsentif,inIdPetugas,inJumlah,inDiskon, tarif,inCatatanMedik,
  inIdRegister,inIdUnit,CURDATE(),CURTIME(),inIol,kode,inJumlah*(tarif-inDiskon),inAss2Jaga,inOnloopJaga,
 inCekDr,inIdResiden,inIdMrBl   FROM ksr_tarif WHERE kode LIKE inKode;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrJurnalHapus` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrJurnalHapus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrJurnalHapus`(inIdKsrJurnal INT)
BEGIN
DELETE FROM ksr_jurnal WHERE id_ksr_jurnal=inIdKsrJurnal ;
DELETE FROM ksr_detil_jurnal WHERE id_ksr_jurnal=inIdKsrJurnal ;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrKuitansi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrKuitansi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrKuitansi`(inNomor CHAR(10),inNama CHAR(60),
              inKet CHAR(150),inRupiah INT,inNamaPetugas CHAR(60),inTanggal CHAR(10),inDari CHAR(50))
BEGIN
  UPDATE ksr_trn SET kuitansi=inKet,dari=inDari WHERE id_ksr_trn=inNomor;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrKuitansi1` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrKuitansi1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spKsrKuitansi1`(inNomor CHAR(10),inNama CHAR(60),
              inKet CHAR(150),inRupiah INT,inNamaPetugas CHAR(60),inTanggal CHAR(10),inDari CHAR(50),
              inTglKuitansi char(15))
BEGIN
  UPDATE ksr_trn SET kuitansi=inKet,dari=inDari, tgl_kuitansi=inTglKuitansi WHERE id_ksr_trn=inNomor;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrKuitansiAngsuran` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrKuitansiAngsuran` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrKuitansiAngsuran`(inNomor CHAR(10),inNama CHAR(60),
              inKet CHAR(150),inRupiah INT,inNamaPetugas CHAR(60),inTanggal CHAR(10),inDari CHAR(50))
BEGIN
TRUNCATE ksr_kuitansi;
INSERT INTO ksr_kuitansi (nama,nomor,keterangan,rupiah,nama_petugas,tanggal) VALUES
  (inDari,inNomor,inKet,inRupiah,inNamaPetugas,inTanggal);
  UPDATE ksr_det_piutang SET keterangan=inKet,nama=inNama WHERE id_ksr_det_piutang=inNomor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrlapDetTrn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrlapDetTrn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrlapDetTrn`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdAsuransi INT,inNamaPetugas CHAR(50),inNamaAsuransi CHAR(50))
BEGIN
delete from ksr_lap_det_trn;
IF (inIdAsuransi=0) THEN
INSERT INTO ksr_lap_det_trn (id_dokter_operator,id_dokter_anestesi,id_dokter1,id_register,kelompok_unit,asuransi,kelas,bhp,adm,tim,r_obat
   ,tindakan,operator,anestesi,assisten_nama,assistensi,
   jasa_rs,perujuk,peng_ugd,koperasi,keuangan,yayasan,lebaran,igd,lebaran_igd,konsul_gizi,lebaran_gizi,embalase,rohani,sanitasi
   ,linen,kamar,ac,rumah,snak,visit_umum,makan,skp,telp,alat,alat_rc,observasi,keb_peri,kode,jumlah,tarif,tanggal,jam,diskon,operator_ke,
   anestesi_ke,
   dokter_ke,inloop_ke,id_unit,iol,id_dokter_konsul,konsul_sp,id_cyto,publish_operator,publish_anestesi,publish_inloop,
   publish_visit_dokter,publish_konsul_sp,id_dokter2,dokter_ke1,adm_klaim, tindakan_bidan, imunisasi, asper, invest,nama_petugas,
   tgl_awal,tgl_akhir,nama_asuransi,nama_tarif,paket_ranap,bensin)
   
   SELECT a.id_dokter_operator,a.id_dokter_anestesi,a.id_dokter1,a.id_register,a.kelompok_unit,a.asuransi,a.kelas,a.bhp,a.adm,a.tim,a.r_obat
   ,a.tindakan,a.operator,a.anestesi,a.assisten_nama,a.assistensi,
   a.jasa_rs,a.perujuk,a.peng_ugd,a.koperasi,a.keuangan,a.yayasan,a.lebaran,a.igd,a.lebaran_igd,a.konsul_gizi,a.lebaran_gizi,a.embalase,
   a.rohani,a.sanitasi
   ,a.linen,a.kamar,a.ac,a.rumah,a.snak,a.visit_umum,a.makan,a.skp,a.telp,a.alat,a.alat_rc,a.observasi,
   a.keb_peri,a.kode,a.jumlah,a.tarif,a.tanggal,a.jam,a.diskon,a.operator_ke,a.anestesi_ke,a.
   dokter_ke,a.inloop_ke,a.id_unit,a.iol,a.id_dokter_konsul,a.konsul_sp,a.id_cyto,a.publish_operator,
   a.publish_anestesi,a.publish_inloop,a.publish_visit_dokter,a.publish_konsul_sp,a.id_dokter2,a.dokter_ke1,a.adm_klaim,
   a. tindakan_bidan,a.imunisasi,a.asper,a.invest,inNamaPetugas,inTglAwal,inTglAkhir,inNamaAsuransi,
   (CASE WHEN (`a`.`kode` = 1002) THEN 'FARMASI' WHEN (`a`.`kode` = 1001) THEN 'LABORATORIUM' 
   WHEN (`a`.`kode` = 1003) THEN 'RADIOLOGI' WHEN (`a`.`kode` = 1004) THEN 'FISIOTERAPHI'
    WHEN (`a`.`kode` >= 10000) THEN `c`.`nama` END) AS `nama`
   ,a.paket_ranap,a.bensin
   FROM ksr_det_trn a INNER JOIN ksr_trn b ON a.id_register=b.id_register
   LEFT JOIN ksr_tarif c ON a.kode=c.kode
   WHERE b.tgl_pulang BETWEEN inTglAwal AND inTglAkhir ;
END IF;
IF (inIdAsuransi >0 ) THEN
INSERT INTO ksr_lap_det_trn (id_dokter_operator,id_dokter_anestesi,id_dokter1,id_register,kelompok_unit,asuransi,kelas,bhp,adm,tim,r_obat
   ,tindakan,operator,anestesi,assisten_nama,assistensi,
   jasa_rs,perujuk,peng_ugd,koperasi,keuangan,yayasan,lebaran,igd,lebaran_igd,konsul_gizi,lebaran_gizi,embalase,rohani,sanitasi
   ,linen,kamar,ac,rumah,snak,visit_umum,makan,skp,telp,alat,alat_rc,observasi,keb_peri,kode,jumlah,tarif,tanggal,jam,diskon,operator_ke,
   anestesi_ke,
   dokter_ke,inloop_ke,id_unit,iol,id_dokter_konsul,konsul_sp,id_cyto,publish_operator,publish_anestesi,publish_inloop,
   publish_visit_dokter,publish_konsul_sp,id_dokter2,dokter_ke1,adm_klaim, tindakan_bidan, imunisasi, asper, invest,nama_petugas,
   tgl_awal,tgl_akhir,nama_asuransi,nama_tarif,paket_ranap,bensin)
   
   SELECT a.id_dokter_operator,a.id_dokter_anestesi,a.id_dokter1,a.id_register,a.kelompok_unit,a.asuransi,a.kelas,a.bhp,a.adm,a.tim,a.r_obat
   ,a.tindakan,a.operator,a.anestesi,a.assisten_nama,a.assistensi,
   a.jasa_rs,a.perujuk,a.peng_ugd,a.koperasi,a.keuangan,a.yayasan,a.lebaran,a.igd,a.lebaran_igd,a.konsul_gizi,a.lebaran_gizi,a.embalase,
   a.rohani,a.sanitasi
   ,a.linen,a.kamar,a.ac,a.rumah,a.snak,a.visit_umum,a.makan,a.skp,a.telp,a.alat,a.alat_rc,a.observasi,
   a.keb_peri,a.kode,a.jumlah,a.tarif,a.tanggal,a.jam,a.diskon,a.operator_ke,a.anestesi_ke,a.
   dokter_ke,a.inloop_ke,a.id_unit,a.iol,a.id_dokter_konsul,a.konsul_sp,a.id_cyto,a.publish_operator,
   a.publish_anestesi,a.publish_inloop,a.publish_visit_dokter,a.publish_konsul_sp,a.id_dokter2,a.dokter_ke1,a.adm_klaim,
   a. tindakan_bidan,a.imunisasi,a.asper,a.invest,inNamaPetugas,inTglAwal,inTglAkhir,inNamaAsuransi,
      (CASE WHEN (`a`.`kode` = 1002) THEN 'FARMASI' WHEN (`a`.`kode` = 1001) THEN 'LABORATORIUM' 
   WHEN (`a`.`kode` = 1003) THEN 'RADIOLOGI' WHEN (`a`.`kode` = 1004) THEN 'FISIOTERAPHI'
    WHEN (`a`.`kode` >= 10000) THEN `c`.`nama` END) AS `nama`
   ,a.paket_ranap,a.bensin
   FROM ksr_det_trn a INNER JOIN ksr_trn b ON a.id_register=b.id_register
   LEFT JOIN ksr_tarif c ON a.kode=c.kode
   WHERE b.tgl_pulang BETWEEN inTglAwal AND inTglAkhir AND a.asuransi=inIdAsuransi;
 END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapFarmasi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapFarmasi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapFarmasi`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inNama CHAR(60),inIol INT)
BEGIN
DECLARE vTotal INT;
delete from ksr_lap;
IF (inIol=1) THEN
SELECT SUM(a.total) FROM  far_nosp a LEFT JOIN far_suplier b ON a.id_suplier=b.id_far_suplier
 WHERE a.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO ksr_lap (tanggal_awal,tanggal_akhir,nama_suplier,jumlah,disc,ppn,total,tanggal,tanggal_tempo,
tanggal_terima,tanggal_faktur,faktur,grand_total,nama_petugas)
SELECT inTglAwal,inTglAkhir,b.nama,a.jumlah,a.disc,a.ppn,a.total,a.tanggal,a.tanggal_tempo,
a.tanggal_terima,a.tanggal_faktur,a.faktur,vTotal,inNama FROM far_nosp a LEFT JOIN
far_suplier b ON a.id_suplier=b.id_far_suplier WHERE a.tanggal_faktur BETWEEN
inTglAwal AND inTglAkhir ORDER BY b.nama;
END IF;
IF (inIol=2) THEN
SELECT SUM(a.total) FROM  far_nosp_inap a LEFT JOIN far_suplier b ON a.id_suplier=b.id_far_suplier
 WHERE a.tanggal_faktur BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO ksr_lap (tanggal_awal,tanggal_akhir,nama_suplier,jumlah,disc,ppn,total,tanggal,tanggal_tempo,
tanggal_terima,tanggal_faktur,faktur,grand_total,nama_petugas)
SELECT inTglAwal,inTglAkhir,b.nama,a.jumlah,a.disc,a.ppn,a.total,a.tanggal,a.tanggal_tempo,
a.tanggal_terima,a.tanggal_faktur,a.faktur,vTotal,inNama FROM far_nosp_inap a LEFT JOIN
far_suplier b ON a.id_suplier=b.id_far_suplier WHERE a.tanggal_faktur BETWEEN
inTglAwal AND inTglAkhir ORDER BY b.nama;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapJasaAlat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapJasaAlat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapJasaAlat`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdYt INT,inNamaPetugas CHAR(50))
BEGIN
DELETE FROM ksr_lap_jasa_alat;
INSERT INTO ksr_lap_jasa_alat (kelompok_unit,tgl_pulang,jam_pulang,
nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,operator_ke,nama_petugas,tgl_awal,tgl_akhir,
id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,
g.nama_unit,f.nama AS nama_asuransi
,a.alat*a.jumlah,c.nama_dokter,a.id_cyto,operator_ke,
inNamaPetugas,inTglAwal,inTglAkhir,
d.id_catatan_medik,d.id_register,inIdYt
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_dokter_operator=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND a.publish_alat LIKE inIdYt
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapJasaAssisten` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapJasaAssisten` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapJasaAssisten`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPublish INT,
inNamaPetugas CHAR(50))
BEGIN
DELETE FROM ksr_lap_jasa_assisten;
INSERT INTO ksr_lap_jasa_assisten (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,publish,nama_petugas,tgl_awal,tgl_akhir,id_catatan_medik,id_register)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,f.nama AS nama_asuransi
,a.assisten_nama*a.jumlah ,inIdPublish,inNamaPetugas,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' 
AND d.posting LIKE 1
AND a.assisten_nama>0 AND a.publish_inloop=inIdPublish AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapPendapatanInloop` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapPendapatanInloop` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapPendapatanInloop`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas INT,inNamaPetugas CHAR(50))
BEGIN
delete from ksr_lap_pendapatan_per_dokter;
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,operator_ke,nama_petugas,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,f.nama AS nama_asuransi
,a.assisten_nama,c.nama AS nama_petugas,a.id_cyto,a.inloop_ke,inNamaPetugas,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'INLOOP'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN psdi_petugas c ON a.id_asisten=c.id_petugas
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_petugas LIKE inIdPetugas
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapPendapatanParaPerUnit` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapPendapatanParaPerUnit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapPendapatanParaPerUnit`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdUnit INT,inNamaPetugas CHAR(50))
BEGIN
DELETE FROM ksr_lap_pendapatan_para_per_unit;
INSERT INTO ksr_lap_pendapatan_para_per_unit (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,
kelas,nama_unit,nama_asuransi,
nama_dokter,cyto,operator_ke,nama_petugas,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan,
r_obat,tind_bidan,igd,embalase,asper,tim,skp,assisten,operator,tindakan,perujuk,observasi
)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,
a.kelas,g.nama_unit,f.nama AS nama_asuransi
,c.nama_dokter,a.id_cyto,operator_ke,inNamaPetugas,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'UTAMA',
(a.r_obat*a.jumlah),(a.tindakan_bidan*a.jumlah),(a.igd*a.jumlah),(a.embalase*a.jumlah),(a.asper*a.jumlah),
(a.tim*a.jumlah),(a.skp*a.jumlah),(a.assistensi*a.jumlah),(a.operator*a.jumlah),(a.tindakan*a.jumlah),(a.perujuk*a.jumlah),(a.observasi*a.jumlah)
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_dokter_operator=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND g.id_unit LIKE inIdUnit 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapPendapatanPerDokter` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapPendapatanPerDokter` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapPendapatanPerDokter`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdDokter INT,inNamaPetugas CHAR(50))
BEGIN
DELETE FROM ksr_lap_pendapatan_per_dokter;
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.operator)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'UTAMA'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_operator=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir;
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.anestesi)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'ANESTESI'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_dokter_anestesi=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapPendapatanPerDokterPoliInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapPendapatanPerDokterPoliInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapPendapatanPerDokterPoliInap`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdDokter INT,
inNamaPetugas CHAR(50),inIol INT)
BEGIN
delete from ksr_lap_pendapatan_per_dokter;
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.operator)*a.jumlah,c.nama_dokter
,case when a.id_cyto=1 then 'YA' else 'Tidak' end,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'UTAMA'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_operator=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir
and a.iol=inIol;
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.anestesi)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'ANESTESI'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_dokter_anestesi=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir
AND a.iol=inIol;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapPendapatanPerDokterPoliInapAsuransi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapPendapatanPerDokterPoliInapAsuransi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapPendapatanPerDokterPoliInapAsuransi`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdDokter INT,
inNamaPetugas CHAR(50),inIol INT,inIdKelAsuransi INT)
BEGIN
delete from ksr_lap_pendapatan_per_dokter;
IF (inIdKelAsuransi=1) THEN
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.operator)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'UTAMA'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_operator=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir
AND a.iol=inIol and d.id_asuransi like '1';
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.anestesi)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'ANESTESI'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_dokter_anestesi=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir
AND a.iol=inIol AND d.id_asuransi LIKE '1';
end if;
IF (inIdKelAsuransi=2) THEN
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.operator)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'UTAMA'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_operator=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir
AND a.iol=inIol AND d.id_asuransi not LIKE '1';
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.anestesi)*a.jumlah,c.nama_dokter
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'ANESTESI'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN mr_dokter c ON a.id_dokter_anestesi=c.id_dokter
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir
AND a.iol=inIol AND d.id_asuransi not LIKE '1';
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrLapPendapatanPerParamedis` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrLapPendapatanPerParamedis` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrLapPendapatanPerParamedis`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdDokter INT,inNamaPetugas CHAR(50))
BEGIN
DELETE FROM ksr_lap_pendapatan_per_dokter;
INSERT INTO ksr_lap_pendapatan_per_dokter (kelompok_unit,tgl_pulang,jam_pulang,nama_pas,nama_pemeriksaan,kelas,nama_unit,
nama_asuransi,jasa,nama_dokter,cyto,tgl_awal,tgl_akhir,id_catatan_medik,id_register,keterangan)
SELECT a.kelompok_unit,d.tgl_pulang,d.jam_pulang,e.nama AS nama_pas,b.nama,a.kelas,g.nama_unit,
f.nama AS nama_asuransi
,(a.operator)*a.jumlah,c.nama
,CASE WHEN a.id_cyto=1 THEN 'YA' ELSE 'Tidak' END,inTglAwal,inTglAkhir,d.id_catatan_medik,d.id_register,'UTAMA'
 FROM ksr_det_trn a
INNER JOIN ksr_tarif b ON a.kode=b.kode
INNER JOIN psdi_petugas c ON a.id_petugas=c.id_petugas
INNER JOIN ksr_trn d ON a.id_register=d.id_register
INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik
INNER JOIN mr_asuransi f ON d.id_asuransi=f.id_asuransi
INNER JOIN mr_unit g ON a.id_unit=g.id_unit
WHERE a.kelompok_unit NOT LIKE '-' AND c.id_petugas LIKE inIdDokter 
AND d.posting LIKE 1 AND d.tgl_pulang BETWEEN inTglAwal AND inTglAkhir and a.pelaksana like '2';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrpembebasan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrpembebasan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrpembebasan`(inIdRegister CHAR(8),inNamaPetugas CHAR(100),inIdPetugas INT,
inTotal CHAR(12),inDiskon CHAR(12),inSubTotal CHAR(12),inTitip CHAR(12),inBayar CHAR(12))
BEGIN
DELETE FROM ksr_lap_tmp;
UPDATE ksr_trn SET biaya=inTotal,titip=inTitip,diskon=inDiskon,bayar=inBayar
 WHERE id_register =inIdRegister;
INSERT INTO ksr_lap_tmp (id_register,nama_petugas,id_petugas) VALUES
(inIdRegister,inNamaPetugas,inIdPetugas);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrPendPara` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrPendPara` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spKsrPendPara`(inTglAwal CHAR(10),
intTglAkhir CHAR(10))
BEGIN
DELETE FROM ksr_pend_per_para;
/*
INSERT INTO ksr_pend_per_para(id_petugas,nama,operator)
 SELECT c.id_petugas,c.nama,
  SUM(a.operator*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_operator=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
 */
  INSERT INTO ksr_pend_per_para(id_petugas,nama,ass_1)
 SELECT c.id_petugas,c.nama,
  SUM(a.ass_1*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_ass_1=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
  
    INSERT INTO ksr_pend_per_para(id_petugas,nama,ass_2)
 SELECT c.id_petugas,c.nama,
  SUM(a.ass_2*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_ass_2=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
  
      INSERT INTO ksr_pend_per_para(id_petugas,nama,penata)
 SELECT c.id_petugas,c.nama,
  SUM(a.penata*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_penata=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
  
        INSERT INTO ksr_pend_per_para(id_petugas,nama,on_loop)
 SELECT c.id_petugas,c.nama,
  SUM(a.on_loop*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_on_loop=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
  
     /*     INSERT INTO ksr_pend_per_para(id_petugas,nama,on_loop)
 SELECT c.id_petugas,c.nama,
  SUM(a.on_loop*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_on_loop=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
  */
            INSERT INTO ksr_pend_per_para(id_petugas,nama,insentif)
 SELECT c.id_petugas,c.nama,
  SUM(a.insentif*a.jumlah ) AS total FROM ksr_det_trn a 
  INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN psdi_petugas c ON 
  a.id_insentif=c.id_petugas INNER JOIN ksr_trn d ON a.id_register=d.id_register 
  INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN mr_asuransi 
  f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON a.id_unit=g.id_unit LEFT 
  JOIN mr_dokter h ON a.id_residen_operator=h.id_dokter WHERE a.kelompok_unit NOT
   LIKE '-' AND d.posting = 1  
  AND d.tgl_pulang BETWEEN inTglAwal AND intTglAkhir GROUP BY c.id_petugas;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrPosting` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrPosting` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrPosting`(inIdRegister INT)
BEGIN
     UPDATE mr_pasien SET aktif=0, tgl_pulang=CURDATE(),jam_pulang=CURTIME() WHERE id_register=inIdRegister;
     UPDATE ksr_trn SET posting=1 WHERE id_register=inIdRegister;
     UPDATE far_trn SET lunas=1 WHERE id_register=inIdRegister;
     UPDATE fis_trn SET lunas=1 WHERE id_register=inIdRegister;
     UPDATE lab_trn SET lunas=1 WHERE id_register=inIdRegister;
     UPDATE ro_trn SET lunas=1 WHERE id_register=inIdRegister;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrRekapCetak` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrRekapCetak` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrRekapCetak`(inTglAwal CHAR(20),inTglAkhir CHAR(20),inNamaPetugas CHAR(60),inIdAsuransi INT)
BEGIN
DELETE FROM ksr_rekap_tmp;
DELETE FROM ksr_rekap_cetak_tmp;
IF (inIdAsuransi=0) THEN
INSERT INTO ksr_rekap_tmp (total,titip,kurang,tgl_awal,tgl_akhir,nama_petugas)
SELECT SUM(biaya) AS biaya,SUM(CASE WHEN (biaya-(titip+bayar)<=0) THEN titip ELSE (titip+bayar)  END) AS titip ,
SUM(biaya)-SUM(CASE WHEN (biaya-(titip+bayar)<=0) THEN biaya ELSE (titip+bayar)  END),inTglawal,inTglAkhir,inNamaPetugas
FROM ksr_trn WHERE tgl_pulang BETWEEN inTglAwal AND inTglAkhir AND posting=1;
INSERT INTO ksr_rekap_cetak_tmp (id_register,id_catatan_medik,tgl_kunj,jam_kunj,tgl_pulang,jam_pulang,nama,biaya,titip,bayar,kurang,alamat,kelas,unit
,asuransi,tgl_awal,tgl_akhir,poli_inap,lunas,nama_petugas)
SELECT
  `a`.`id_register`      AS `id_register`,
  `a`.`id_catatan_medik` AS `id_catatan_medik`,
  `a`.`tgl_kunj`         AS `tgl_kunj`,
  `a`.`jam_kunj`         AS `jam_kunj`,
  `a`.`tgl_pulang`       AS `tgl_pulang`,
  `a`.`jam_pulang`       AS `jam_pulang`,
  `e`.`nama`             AS `nama`,
  `a`.`biaya`            AS `biaya`,
  `a`.`titip`            AS `titip`,
  (CASE WHEN ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) THEN 0 ELSE `a`.`bayar` END) AS `bayar`,
  (CASE WHEN ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) THEN 0 ELSE (`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) END) AS `kurang`,
  `e`.`alamat`           AS `alamat`,
  `a`.`kelas`            AS `kelas`,
  `b`.`nama_unit`        AS `nama_unit`,
  `c`.`nama`             AS `nama_asuransi`,
  MID(inTglAwal,1,10),
  MID(inTglAkhir,1,10),
  (CASE WHEN (`a`.`iol` = 1) THEN 'POLI' ELSE 'INAP' END) AS `rawat`,
  (CASE WHEN (`a`.`lunas` = 1) THEN 'SUDAH' ELSE 'BELUM' END) AS `lunas`,inNamaPetugas
FROM ((((`ksr_trn` `a`
      JOIN `mr_unit` `b`
        ON ((`a`.`id_unit` = `b`.`id_unit`)))
     JOIN `mr_asuransi` `c`
       ON ((`a`.`id_asuransi` = `c`.`id_asuransi`)))
    JOIN `mr_dokter` `d`
      ON ((`a`.`id_dokter` = `d`.`id_dokter`)))
   JOIN `mr_pasien` `e`
     ON ((`a`.`id_catatan_medik` = `e`.`id_catatan_medik`)))
WHERE (`a`.`posting` > 0) AND a.tgl_pulang >=inTglAwal AND a.tgl_pulang<=inTglAkhir;
END IF;
IF (inIdAsuransi >0) THEN
INSERT INTO ksr_rekap_tmp (total,titip,kurang,tgl_awal,tgl_akhir,nama_petugas)
SELECT SUM(biaya) AS biaya,SUM(CASE WHEN (biaya-(titip+bayar)<=0) THEN titip ELSE (titip+bayar)  END) AS titip ,
SUM(biaya)-SUM(CASE WHEN (biaya-(titip+bayar)<=0) THEN biaya ELSE (titip+bayar)  END),inTglawal,inTglAkhir,inNamaPetugas
FROM ksr_trn WHERE tgl_pulang BETWEEN inTglAwal AND inTglAkhir AND posting=1;
INSERT INTO ksr_rekap_cetak_tmp (id_register,id_catatan_medik,tgl_kunj,jam_kunj,tgl_pulang,jam_pulang,nama,biaya,titip,bayar,kurang,alamat,kelas,unit
,asuransi,tgl_awal,tgl_akhir,poli_inap,lunas,nama_petugas)
SELECT
  `a`.`id_register`      AS `id_register`,
  `a`.`id_catatan_medik` AS `id_catatan_medik`,
  `a`.`tgl_kunj`         AS `tgl_kunj`,
  `a`.`jam_kunj`         AS `jam_kunj`,
  `a`.`tgl_pulang`       AS `tgl_pulang`,
  `a`.`jam_pulang`       AS `jam_pulang`,
  `e`.`nama`             AS `nama`,
  `a`.`biaya`            AS `biaya`,
  `a`.`titip`            AS `titip`,
  (CASE WHEN ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) THEN 0 ELSE `a`.`bayar` END) AS `bayar`,
  (CASE WHEN ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) THEN 0 ELSE (`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) END) AS `kurang`,
  `e`.`alamat`           AS `alamat`,
  `a`.`kelas`            AS `kelas`,
  `b`.`nama_unit`        AS `nama_unit`,
  `c`.`nama`             AS `nama_asuransi`,
  MID(inTglAwal,1,10),
  MID(inTglAkhir,1,10),
  (CASE WHEN (`a`.`iol` = 1) THEN 'POLI' ELSE 'INAP' END) AS `rawat`,
  (CASE WHEN (`a`.`lunas` = 1) THEN 'SUDAH' ELSE 'BELUM' END) AS `lunas`,inNamaPetugas
FROM ((((`ksr_trn` `a`
      JOIN `mr_unit` `b`
        ON ((`a`.`id_unit` = `b`.`id_unit`)))
     JOIN `mr_asuransi` `c`
       ON ((`a`.`id_asuransi` = `c`.`id_asuransi`)))
    JOIN `mr_dokter` `d`
      ON ((`a`.`id_dokter` = `d`.`id_dokter`)))
   JOIN `mr_pasien` `e`
     ON ((`a`.`id_catatan_medik` = `e`.`id_catatan_medik`)))
WHERE (`a`.`posting` > 0) AND a.tgl_pulang >=inTglAwal AND a.tgl_pulang<=inTglAkhir AND a.id_asuransi=inIdAsuransi;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrRekapFarmasi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrRekapFarmasi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrRekapFarmasi`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inNamaPetugas CHAR(60)
,inIol INT(1))
BEGIN
DECLARE vTotal INT;
delete from ksr_rekap_farmasi_tmp;
SELECT SUM(total) FROM ksr_faktur  WHERE lunas LIKE 1 AND tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO ksr_rekap_farmasi_tmp (tgl_awal,tgl_akhir,nama_petugas,total,iol,nama_suplier,cp_suplier,tanggal,jam,tarif,no_inkaso)
 SELECT inTglAwal,inTglAkhir,inNamaPetugas,vTotal,inIol,b.nama,a.cp_suplier,a.tanggal,a.jam,a.total,id_ksr_faktur FROM ksr_faktur a
 INNER JOIN far_suplier b ON a.id_suplier=b.id_far_suplier
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.lunas LIKE 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrRekapFarmasiInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrRekapFarmasiInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrRekapFarmasiInap`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inNamaPetugas CHAR(60)
,inIol INT(1))
BEGIN
DECLARE vTotal INT;
delete from ksr_rekap_farmasi_tmp;
SELECT SUM(total) FROM ksr_faktur_inap  WHERE lunas LIKE 1 AND tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO ksr_rekap_farmasi_tmp (tgl_awal,tgl_akhir,nama_petugas,total,iol,nama_suplier,cp_suplier,tanggal,jam,tarif,no_inkaso)
 SELECT inTglAwal,inTglAkhir,inNamaPetugas,vTotal,inIol,b.nama,a.cp_suplier,a.tanggal,a.jam,a.total,id_ksr_faktur FROM ksr_faktur_inap a
 INNER JOIN far_suplier b ON a.id_suplier=b.id_far_suplier
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.lunas LIKE 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrRekapTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrRekapTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrRekapTransaksi`(inTglAwal CHAR(20),inTglAkhir CHAR(20))
BEGIN
delete from ksr_rekap_tmp;
INSERT INTO ksr_rekap_tmp (total,titip,kurang)
SELECT SUM(biaya) AS biaya,SUM(CASE WHEN (biaya-(titip+bayar)<=0) THEN biaya ELSE (titip+bayar)  END) AS titip ,
SUM(biaya)-SUM(CASE WHEN (biaya-(titip+bayar)<=0) THEN biaya ELSE (titip+bayar)  END) FROM ksr_trn WHERE tgl_pulang
 BETWEEN inTglAwal AND inTglAkhir 
AND posting=1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrTambahTarif` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrTambahTarif` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrTambahTarif`(inIdKsrTarif INT)
BEGIN
    DECLARE vNomor INT;
     SELECT MAX(kode) FROM ksr_tarif INTO vNomor;
     UPDATE ksr_tarif SET kode=vNomor+1 WHERE id_ksr_tarif=inIdKsrTarif;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrTitip` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrTitip` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrTitip`(inIdCatatanMedik INT,inIdRegister INT,inTotal INT,inGuna CHAR(149),inDari CHAR(60))
BEGIN
 INSERT INTO ksr_titip(id_catatan_medik,id_register,tanggal,jam,total,kode,keterangan,nama) VALUES
 (inIdCatatanMedik,inIdRegister,CURDATE(),CURTIME(),inTotal,0,inGuna,inDari);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrTransaksi`(inIdRegister INT)
BEGIN
DECLARE vLaboratorium INT;
DECLARE vDiskonLaboratorium INT;
DECLARE vGrandTotalLaboratorium INT;
DECLARE vFarmasi INT;
DECLARE vDiskonFarmasi INT;
DECLARE vGrandTotalFarmasi INT;
DECLARE vRadiologi INT;
DECLARE vFisioteraphi INT;
DECLARE vJumlah INT;
DECLARE vAda INT;
DECLARE vPosting INT;
SELECT posting FROM ksr_trn WHERE id_register=inIdRegister INTO vPosting;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1001 INTO vAda;
SELECT COUNT(id_register),SUM(biaya),SUM((IFNULL(`diskon`,0) * `biaya`) / 100) AS diskon,
 SUM(IFNULL((`biaya` - ((IFNULL(`diskon`,0) * `biaya`) / 100)),0)) AS grand_total FROM lab_trn WHERE id_register=inIdRegister 
 INTO vJumlah,vLaboratorium,vDiskonLaboratorium,vGrandTotalLaboratorium;
IF (vAda=0) THEN
   IF (vJumlah>0) THEN
       INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,diskon,total) VALUES 
       (1001,inIdRegister,CURDATE(),CURTIME(),1,vLaboratorium,vDiskonLaboratorium,vGrandTotalLaboratorium);     
   END IF;
  ELSE
     IF (vPosting=1) THEN
     UPDATE ksr_det_trn SET  jumlah=1,tarif=vLaboratorium,total=vGrandTotalLaboratorium,diskon=vDiskonLaboratorium WHERE id_register=inIdRegister AND 
     kode=1001;
     ELSE
     UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vLaboratorium,total=vGrandTotalLaboratorium,diskon=vDiskonLaboratorium WHERE id_register=inIdRegister AND 
     kode=1001;
     END IF;
END IF;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1002 INTO vAda;
SELECT COUNT(id_register),SUM(biaya),SUM((IFNULL(`diskon`,0) * `biaya`) / 100) AS diskon,
 SUM(IFNULL((`biaya` - ((IFNULL(`diskon`,0) * `biaya`) / 100)),0)) AS grand_total
  FROM far_trn WHERE id_register=inIdRegister INTO vJumlah,vFarmasi,vDiskonFarmasi,vGrandTotalFarmasi;
IF (vAda=0)THEN
     IF (vJumlah>0) THEN
     INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,diskon,total) VALUES 
     (1002,inIdRegister,CURDATE(),CURTIME(),1,vFarmasi,vDiskonFarmasi,vGrandTotalFarmasi);
     END IF;
   ELSE
     IF (vPosting=1) THEN
     UPDATE ksr_det_trn SET jumlah=1,tarif=vFarmasi,total=vGrandTotalFarmasi,diskon=vDiskonFarmasi WHERE id_register=inIdRegister AND 
     kode=1002;
     ELSE
     UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vFarmasi,total=vGrandTotalFarmasi,diskon=vDiskonFarmasi WHERE id_register=inIdRegister AND 
     kode=1002;
     END IF;
END IF;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1003 INTO vAda;
SELECT COUNT(id_register),SUM(biaya) FROM ro_trn WHERE id_register=inIdRegister INTO vJumlah,vRadiologi;
IF (vAda=0)THEN   
   
     IF (vJumlah>0) THEN
     INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,total) VALUES (1003,inIdRegister,CURDATE(),CURTIME(),1,vRadiologi,vRadiologi);
     END IF;
   ELSE
        IF (vPosting=1) THEN
        UPDATE ksr_det_trn SET jumlah=1,tarif=vRadiologi,total=vRadiologi WHERE id_register=inIdRegister AND 
        kode=1003;
        ELSE
        UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vRadiologi,total=vRadiologi WHERE id_register=inIdRegister AND 
        kode=1003;
        END IF;
END IF;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1004 INTO vAda;
SELECT COUNT(id_register),SUM(biaya) FROM fis_trn WHERE id_register=inIdRegister INTO vJumlah,vFisioteraphi;
IF (vAda=0)THEN   
   
     IF (vJumlah>0) THEN
     INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,total) VALUES (1004,inIdRegister,CURDATE(),CURTIME(),1,vFisioteraphi,vFisioteraphi);
     END IF;
   ELSE
        IF (vPosting=1) THEN
        UPDATE ksr_det_trn SET  jumlah=1,tarif=vFisioteraphi,total=vFisioteraphi WHERE id_register=inIdRegister AND 
        kode=1004;
        ELSE
        UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vFisioteraphi,total=vFisioteraphi WHERE id_register=inIdRegister AND 
        kode=1004;
        END IF;
END IF;
 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrTransaksi1` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrTransaksi1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrTransaksi1`(inIdRegister INT,inIdUnit INT)
BEGIN
DECLARE vLaboratorium INT;
DECLARE vDiskonLaboratorium INT;
DECLARE vGrandTotalLaboratorium INT;
DECLARE vFarmasi INT;
DECLARE vDiskonFarmasi INT;
DECLARE vGrandTotalFarmasi INT;
DECLARE vRadiologi INT;
DECLARE vFisioteraphi INT;
DECLARE vJumlah INT;
DECLARE vAda INT;
DECLARE vBl INT;
DECLARE vJmlPend INT;
SELECT bl FROM mr_bl WHERE id_register LIKE inIdRegister LIMIT 1 INTO vBl;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1001 INTO vAda;
SELECT COUNT(id_register),SUM(biaya),SUM((IFNULL(`diskon`,0) * `biaya`) / 100) AS diskon,
 SUM(IFNULL((`biaya` - ((IFNULL(`diskon`,0) * `biaya`) / 100)),0)) AS grand_total FROM lab_trn WHERE id_register=inIdRegister 
 INTO vJumlah,vLaboratorium,vDiskonLaboratorium,vGrandTotalLaboratorium;
 
 IF (vbl=1)THEN
 SELECT COUNT(*) FROM ksr_det_trn   WHERE id_register LIKE inIdRegister AND kode LIKE '10001' INTO vJmlPend;
    IF (vJmlPend=0) THEN
       INSERT INTO ksr_det_trn   (kelompok_unit,asuransi,kelas,adm,operator,anestesi,sp_anak,ass_1,
	ass_2,penata,on_loop,insentif,bhp,sewa_r,sewa_a,rs,pelaksana,id_operator,id_anestesi,id_dokter_sp_anak,
	id_ass_1,
	id_ass_2,id_penata,id_on_loop,id_insentif,id_petugas,jumlah,diskon,tarif,id_catatan_medik,id_register,
	id_unit,tanggal,jam,iol,kode,total,ass_2_jaga, onloop_jaga,diskon_dr,id_residen_operator,id_mr_bl)
	SELECT kelompok_unit,bpjs,kelas,adm,operator,anestesi,sp_anak,ass_1,ass_2
	,penata,on_loop ,insentif,bhp,sewa_r,sewa_a,rs,2,0,0,0,0,0,0,0,0,0,1,0,tarif,0,
	inIdRegister,inIdUnit,CURDATE(),CURTIME(),1,kode,tarif,0,0,
	0,0,0   FROM ksr_tarif WHERE kode LIKE '10001';
    END IF;
 END IF;
IF (vbl=2)THEN
 SELECT COUNT(*) FROM ksr_det_trn   WHERE id_register LIKE inIdRegister AND kode LIKE '10002' INTO vJmlPend;
    IF (vJmlPend=0) THEN
       INSERT INTO ksr_det_trn   (kelompok_unit,asuransi,kelas,adm,operator,anestesi,sp_anak,ass_1,
	ass_2,penata,on_loop,insentif,bhp,sewa_r,sewa_a,rs,pelaksana,id_operator,id_anestesi,id_dokter_sp_anak,
	id_ass_1,
	id_ass_2,id_penata,id_on_loop,id_insentif,id_petugas,jumlah,diskon,tarif,id_catatan_medik,id_register,
	id_unit,tanggal,jam,iol,kode,total,ass_2_jaga, onloop_jaga,diskon_dr,id_residen_operator,id_mr_bl)
	SELECT kelompok_unit,bpjs,kelas,adm,operator,anestesi,sp_anak,ass_1,ass_2
	,penata,on_loop ,insentif,bhp,sewa_r,sewa_a,rs,2,0,0,0,0,0,0,0,0,0,1,0,tarif,0,
	inIdRegister,inIdUnit,CURDATE(),CURTIME(),1,kode,tarif,0,0,
	0,0,0   FROM ksr_tarif WHERE kode LIKE '10002';
    END IF;
 END IF; 
IF (vAda=0) THEN
   IF (vJumlah>0) THEN
       INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,diskon,total) VALUES 
       (1001,inIdRegister,CURDATE(),CURTIME(),1,vLaboratorium,vDiskonLaboratorium,vGrandTotalLaboratorium);     
   END IF;
  ELSE
     UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vLaboratorium,total=vGrandTotalLaboratorium,diskon=vDiskonLaboratorium WHERE id_register=inIdRegister AND 
     kode=1001;
END IF;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1002 INTO vAda;
SELECT COUNT(id_register),SUM(biaya),SUM((IFNULL(`diskon`,0) * `biaya`) / 100) AS diskon,
 SUM(IFNULL((`biaya` - ((IFNULL(`diskon`,0) * `biaya`) / 100)),0)) AS grand_total
  FROM far_trn WHERE id_register=inIdRegister INTO vJumlah,vFarmasi,vDiskonFarmasi,vGrandTotalFarmasi;
IF (vAda=0)THEN
     IF (vJumlah>0) THEN
     INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,diskon,total) VALUES 
     (1002,inIdRegister,CURDATE(),CURTIME(),1,vFarmasi,vDiskonFarmasi,vGrandTotalFarmasi);
     END IF;
   ELSE
     UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vFarmasi,total=vGrandTotalFarmasi,diskon=vDiskonFarmasi WHERE id_register=inIdRegister AND 
     kode=1002;
   
END IF;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1003 INTO vAda;
SELECT COUNT(id_register),SUM(biaya) FROM ro_trn WHERE id_register=inIdRegister INTO vJumlah,vRadiologi;
IF (vAda=0)THEN   
   
     IF (vJumlah>0) THEN
     INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,total) VALUES (1003,inIdRegister,CURDATE(),CURTIME(),1,vRadiologi,vRadiologi);
     END IF;
   ELSE
        UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vRadiologi,total=vRadiologi WHERE id_register=inIdRegister AND 
     kode=1003;
END IF;
SELECT COUNT(id_ksr_det_trn) FROM ksr_det_trn WHERE id_register=inIdRegister AND kode=1004 INTO vAda;
SELECT COUNT(id_register),SUM(biaya) FROM fis_trn WHERE id_register=inIdRegister INTO vJumlah,vFisioteraphi;
IF (vAda=0)THEN   
   
     IF (vJumlah>0) THEN
     INSERT INTO ksr_det_trn (kode,id_register,tanggal,jam,jumlah,tarif,total) VALUES (1004,inIdRegister,CURDATE(),CURTIME(),1,vFisioteraphi,vFisioteraphi);
     END IF;
   ELSE
        UPDATE ksr_det_trn SET tanggal=CURDATE(),jam=CURTIME(),jumlah=1,tarif=vFisioteraphi,total=vFisioteraphi WHERE id_register=inIdRegister AND 
     kode=1004;
END IF;
 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrTrn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrTrn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrTrn`(inIdCatatanMedik INT,inIdRegister INT)
BEGIN
DECLARE vJumlah INT;
SELECT COUNT(id_catatan_medik) FROM ksr_trn WHERE id_register=inIdRegister INTO vJumlah;
IF (vJumlah=0) THEN
  INSERT INTO ksr_trn (id_catatan_medik) VALUES (inIdCatatanMedik);
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrUnPosting` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrUnPosting` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spKsrUnPosting`(inIdRegister INT)
BEGIN
     UPDATE mr_pasien SET aktif=1, tgl_pulang=CURDATE(),jam_pulang=CURTIME() WHERE id_register=inIdRegister;
     UPDATE ksr_trn SET posting=0 WHERE id_register=inIdRegister;
     UPDATE far_trn SET lunas=0 WHERE id_register=inIdRegister;
     UPDATE fis_trn SET lunas=0 WHERE id_register=inIdRegister;
     UPDATE lab_trn SET lunas=0 WHERE id_register=inIdRegister;
     UPDATE ro_trn SET lunas=0 WHERE id_register=inIdRegister;
     
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrUpd` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrUpd` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrUpd`(inNoReg INT,inDiskon INT,
inIdKsrTrn INT,inSubTotal INT,inGrandTotal INT,inTitip int,inTglPulang CHAR(20),inJamPulang CHAR(10),
inBayar int,inLunas int)
BEGIN
UPDATE ksr_trn SET diskon=inDiskon,biaya=inSubTotal,total=inGrandTotal+inTitip
 , tgl_pulang=inTglPulang,jam_pulang=inJamPulang,bayar=inBayar,lunas=inLunas WHERE id_ksr_trn LIKE inIdKsrTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrUpdateTitip` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrUpdateTitip` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrUpdateTitip`(inIdCatatanMedik INT, inIdRegister INT,inKode INT)
BEGIN
DECLARE vLaborat INT;
DECLARE vLabTotal INT;
DECLARE vFis INT;
DECLARE vFisTotal INT;
DECLARE vRo INT;
DECLARE vRoTotal INT;
DECLARE vFar INT;
DECLARE vFarTotal INT;
SELECT COUNT(kode) FROM ksr_titip WHERE id_register=inIdRegister AND kode =1001 INTO vLaborat;
 IF (inKode=1001) THEN
   SELECT SUM(biaya) FROM lab_trn WHERE id_register=inIdRegister AND lunas =1 INTO vLabTotal;
   IF (vLaborat > 0) THEN
     UPDATE ksr_titip SET total=vLabTotal,tanggal=CURDATE(),jam=CURTIME(),nama='-',keterangan='-' WHERE id_register=inIdRegister AND kode=1001;
     ELSE
     INSERT INTO ksr_titip (id_catatan_medik,id_register,kode,total,tanggal,jam,nama,keterangan) VALUES
     (inIdCatatanMedik,inIdRegister,1001,vLabTotal,CURDATE(),CURTIME(),'-','-');
   END IF;
 END IF;
 
 SELECT COUNT(kode) FROM ksr_titip WHERE id_register=inIdRegister AND kode=1002 INTO vFar;
 IF (inKode=1002) THEN
   SELECT SUM(biaya) FROM far_trn WHERE id_register=inIdRegister AND lunas =1 INTO vFarTotal;
   IF (vFar > 0) THEN
     UPDATE ksr_titip SET total=vFarTotal,tanggal=CURDATE(),jam=CURTIME(),nama='-',keterangan='-' WHERE id_register=inIdRegister AND kode=1002;
     ELSE
     INSERT INTO ksr_titip (id_catatan_medik,id_register,kode,total,tanggal,jam,nama,keterangan) VALUES
     (inIdCatatanMedik,inIdRegister,1002,vFarTotal,CURDATE(),CURTIME(),'-','-');
   END IF;
 END IF; 
 
 
 SELECT COUNT(kode) FROM ksr_titip WHERE id_register=inIdRegister AND kode=1003 INTO vRo;
 IF (inKode=1003) THEN
   SELECT SUM(biaya) FROM ro_trn WHERE id_register=inIdRegister AND lunas =1 INTO vRoTotal;
   IF (vRo > 0) THEN
     UPDATE ksr_titip SET total=vRoTotal,tanggal=CURDATE(),jam=CURTIME(),nama='-',keterangan='-' WHERE id_register=inIdRegister AND kode=1003;
     ELSE
     INSERT INTO ksr_titip (id_catatan_medik,id_register,kode,total,tanggal,jam,nama,keterangan) VALUES
     (inIdCatatanMedik,inIdRegister,1003,vRoTotal,CURDATE(),CURTIME(),'-','-');
   END IF;
 END IF; 
 
 SELECT COUNT(kode) FROM ksr_titip WHERE id_register=inIdRegister AND kode=1004 INTO vFis;
 IF (inKode=1004) THEN
   SELECT SUM(biaya) FROM fis_trn WHERE id_register=inIdRegister AND lunas =1 INTO vFisTotal;
   IF (vFis > 0) THEN
     UPDATE ksr_titip SET total=vFisTotal,tanggal=CURDATE(),jam=CURTIME(),nama='-',keterangan='-' WHERE id_register=inIdRegister AND kode=1004;
     ELSE
     INSERT INTO ksr_titip (id_catatan_medik,id_register,kode,total,tanggal,jam,nama,keterangan) VALUES
     (inIdCatatanMedik,inIdRegister,1004,vFisTotal,CURDATE(),CURTIME(),'-','-');
   END IF;
 END IF;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrUpdTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrUpdTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spKsrUpdTransaksi`(inIdKsrDetTrn INT,
                 inIdRegister INT,inCatatanMedik int,inPelaksana INT,
                 inKode INT,inOperator INT,
                 inAnestesi INT,inDokterSpAnak INT,inAss1 INT,inAss2 INT,inPenata INT,inOnloop INT,
                 inInsentif int,inIdPetugas int,
                 inJumlah CHAR(5),inDiskon INT,
                 inTarif INT, inIdUnit INT,inIol INT)
BEGIN
INSERT INTO ksr_det_trn (kelompok_unit,asuransi,kelas,adm,operator,anestesi,sp_anak,ass_1,
ass_2,penata,on_loop,insentif,bhp,sewa_r,sewa_a,rs,pelaksana,id_operator,id_anestesi,id_sp_anak,
id_ass_1,
id_ass_2,id_penata,id_on_loop,id_insentif,id_petugas,jumlah,diskon,tarif,id_catatan_medik,id_register,
id_unit,tanggal,jam,iol)
SELECT kelompok_unit,asuransi,kelas,adm,operator,anestesi,sp_anak,ass_1,ass_2,penata,
on_loop,insentif,bhp,sewa_r,sewa_a,rs,inPelaksana,inOperator,inAnestesi,inDokterSpAnak, 
 inAss1,inAss2,inPenata,inOnloop, inInsentif,inIdPetugas,inJumlah,inDiskon,tarif,inCatatanMedik,
  inIdRegister,inIdUnit,curdate(),curtime(),inIol  FROM ksr_tarif WHERE kode LIKE inKode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spKsrValFaktur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spKsrValFaktur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spKsrValFaktur`(inKel CHAR(100))
BEGIN
DECLARE vTotal INT;
SELECT SUM(sub_total) FROM ksr_val_faktur WHERE kelompok IN (inKel) INTO vTotal;
UPDATE ksr_val_faktur SET grand_total=vTotal WHERE kelompok IN(inKel);
UPDATE far_nosp SET valid_keu=1 WHERE id_no_sp IN (inKel) ;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabLap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabLap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLabLap`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas CHAR(10),inNamaPetugas CHAR(50),
inIol INT,inKode CHAR(3))
BEGIN
DELETE FROM lab_lap_tmp;
INSERT INTO lab_lap_tmp (tgl_awal,tgl_akhir,id_petugas,nama_petugas,iol,kode_rujukan) VALUES
    (inTglAwal,inTglAkhir,inIdPetugas,inNamaPetugas,inIol,inKode);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabLapKunjPoliInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabLapKunjPoliInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spLabLapKunjPoliInap`(inTglAwal CHAR(10),inTglAkhir CHAR(10),InNamaPetugas CHAR(50),inIol INT)
BEGIN
DECLARE vTotal INT;
delete from lab_lap_kunj_poli_inap;
SELECT SUM(a.biaya) FROM lab_trn a 
INNER JOIN mr_unit b ON a.id_unit=b.id_unit
INNER JOIN mr_asuransi c ON a.id_asuransi=c.id_asuransi
INNER JOIN mr_pasien d ON a.id_catatan_medik=d.id_catatan_medik
INNER JOIN mr_dokter e ON a.id_dokter=e.id_dokter
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.iol=inIol INTO vTotal;
INSERT INTO lab_lap_kunj_poli_inap (iol,total,id_catatan_medik,id_register,tanggal,nama,alamat,jam,biaya,kelas,nama_unit,nama_asuransi,nama_dokter,nama_petugas)
SELECT inIol,vTotal,a.id_catatan_medik,a.id_register,a.tanggal,d.nama,d.alamat,a.jam,a.biaya,a.kelas,b.nama_unit,c.nama AS nama_asuransi,
e.nama_dokter,inNamaPetugas FROM lab_trn a
INNER JOIN mr_unit b ON a.id_unit=b.id_unit
INNER JOIN mr_asuransi c ON a.id_asuransi=c.id_asuransi
INNER JOIN mr_pasien d ON a.id_catatan_medik=d.id_catatan_medik
INNER JOIN mr_dokter e ON a.id_dokter=e.id_dokter
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.iol=inIol;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabLapPendapatan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabLapPendapatan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spLabLapPendapatan`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas INT,inIol INT,inNamaPetugas CHAR(60))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vInfra INT;
DECLARE vRujuk INT;
DECLARE vJasaRs INT;
DECLARE vRujukan INT;
DELETE FROM lab_lap_pendapatan;
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.infrastruktur) AS infrastruktur1,SUM(a.rujuk) AS rujuk1,
SUM(a.jasa_rs)AS jasa_rs1, SUM(a.rujukan) AS rujukan1 FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn WHERE a.harga > 0 AND
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp,vInfra,vRujuk,vJasaRs,vRujukan;
 
IF (inIdPetugas>0) THEN
INSERT INTO lab_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_lab_trn,nama,qty,alat,bhp,infrastruktur,
rujuk,jasa_rs,alat1,bhp1,infrastruktur1,rujuk1,jasa_rs1,nama_pasien,rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_lab_trn,
b.nama,a.qty,a.alat,a.bhp,a.infrastruktur,a.rujuk,a.jasa_rs ,
vAlat,vBhp,vInfra,vRujuk,vJasaRs,d.nama AS nama_pasien,a.rujukan,vRujukan
FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE a.harga > 0 AND
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF; 
IF (inIdPetugas=0) THEN
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.infrastruktur) AS infrastruktur1,SUM(a.rujuk) AS rujuk1,
SUM(a.jasa_rs)AS jasa_rs1,SUM(a.rujukan) AS rujukan1 FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn WHERE a.harga > 0 AND
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp,vInfra,vRujuk,vJasaRs,vRujukan;
 
INSERT INTO lab_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_lab_trn,nama,qty,alat,bhp,infrastruktur,
rujuk,jasa_rs,alat1,bhp1,infrastruktur1,rujuk1,jasa_rs1,nama_pasien,rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_lab_trn,
b.nama,a.qty,a.alat,a.bhp,a.infrastruktur,a.rujuk,a.jasa_rs ,
vAlat,vBhp,vInfra,vRujuk,vJasaRs,d.nama AS nama_pasien,a.rujukan,vRujukan
FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE a.harga > 0 AND
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabLapPendapatanAsuransi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabLapPendapatanAsuransi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLabLapPendapatanAsuransi`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas INT,inIol INT,inNamaPetugas CHAR(60),inIdAsuransi INT,inNamaAsuransi CHAR(50))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vInfra INT;
DECLARE vRujuk INT;
DECLARE vJasaRs INT;
DECLARE vRujukan INT;
declare vHarga int;
DELETE FROM lab_lap_pendapatan;
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.infrastruktur) AS infrastruktur1,SUM(a.rujuk) AS rujuk1,
SUM(a.jasa_rs)AS jasa_rs1, SUM(a.rujukan) AS rujukan1,sum(a.harga) FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn WHERE a.harga > 0 AND
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir 
AND c.id_asuransi=inIdAsuransi INTO
 vAlat,vBhp,vInfra,vRujuk,vJasaRs,vRujukan, vHarga;
 INSERT INTO lab_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_lab_trn,nama,qty,alat,bhp,infrastruktur,
rujuk,jasa_rs,alat1,bhp1,infrastruktur1,rujuk1,jasa_rs1,nama_pasien,rujukan,rujukan1,nama_asuransi,
total,total1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_lab_trn,
b.nama,a.qty,a.alat,a.bhp,a.infrastruktur,a.rujuk,a.jasa_rs ,
vAlat,vBhp,vInfra,vRujuk,vJasaRs,d.nama AS nama_pasien,a.rujukan,vRujukan,inNamaAsuransi,
a.harga,vHarga
FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
AND c.id_asuransi=inIdAsuransi
WHERE a.harga > 0 AND
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabLapPendapatanDokter` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabLapPendapatanDokter` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLabLapPendapatanDokter`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdDokter INT,inIol INT,inNamaDokter CHAR(60))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vInfra INT;
DECLARE vRujuk INT;
DECLARE vJasaRs INT;
DELETE FROM lab_lap_pendapatan;
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.infrastruktur) AS infrastruktur1,SUM(a.rujuk) AS rujuk1,
SUM(a.jasa_rs)AS jasa_rs1 FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn WHERE a.jasa_rs > 0 AND
c.id_dokter=inIdDokter AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vAlat,vBhp,vInfra,vRujuk,vJasaRs;
INSERT INTO lab_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,id_petugas,kelas,id_catatan_medik,id_register,id_lab_trn,nama,qty,alat,bhp,infrastruktur,
rujuk,jasa_rs,alat1,bhp1,infrastruktur1,rujuk1,jasa_rs1,nama_pasien)
SELECT inTglAwal,inTglAkhir,inNamaDokter,inIol,c.tanggal,c.jam,c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_lab_trn,b.nama,a.qty,a.alat,a.bhp,a.infrastruktur,a.rujuk,a.jasa_rs ,
vAlat,vBhp,vInfra,vRujuk,vJasaRs
,d.nama AS nama_pasien
FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE a.jasa_rs > 0 AND
c.id_dokter=inIdDokter AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabLapPendpatanPtgAsu` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabLapPendpatanPtgAsu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLabLapPendpatanPtgAsu`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas INT,inIol INT,inNamaPetugas CHAR(60), inIdAsuransi INT)
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vInfra INT;
DECLARE vRujuk INT;
DECLARE vJasaRs INT;
DECLARE vRujukan INT;
DECLARE vTotal BIGINT;
DELETE FROM lab_lap_pendapatan;
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.infrastruktur) AS infrastruktur1,SUM(a.rujuk) AS rujuk1,
SUM(a.jasa_rs)AS jasa_rs1, SUM(a.rujukan) AS rujukan1,SUM(a.harga) FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn WHERE a.harga > 0 AND
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir
AND c.id_asuransi LIKE inIdAsuransi
 INTO
 vAlat,vBhp,vInfra,vRujuk,vJasaRs,vRujukan,vTotal;
 
IF (inIdPetugas>0) THEN
INSERT INTO lab_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_lab_trn,nama,qty,alat,bhp,infrastruktur,
rujuk,jasa_rs,alat1,bhp1,infrastruktur1,rujuk1,jasa_rs1,nama_pasien,rujukan,rujukan1,
nama_asuransi,total,total1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_lab_trn,
b.nama,a.qty,a.alat,a.bhp,a.infrastruktur,a.rujuk,a.jasa_rs ,
vAlat,vBhp,vInfra,vRujuk,vJasaRs,d.nama AS nama_pasien,a.rujukan,vRujukan,e.nama,a.harga,vTotal
FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
INNER JOIN mr_asuransi e ON c.id_asuransi=e.id_asuransi
WHERE a.harga > 0 AND
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir
AND c.id_asuransi LIKE inIdAsuransi;
END IF; 
IF (inIdPetugas=0) THEN
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.infrastruktur) AS infrastruktur1,SUM(a.rujuk) AS rujuk1,
SUM(a.jasa_rs)AS jasa_rs1,SUM(a.rujukan) AS rujukan1, SUM(a.harga) FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn WHERE a.harga > 0 AND
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir 
 AND c.id_asuransi LIKE inIdAsuransi INTO
 vAlat,vBhp,vInfra,vRujuk,vJasaRs,vRujukan,vTotal;
 
INSERT INTO lab_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_lab_trn,nama,qty,alat,bhp,infrastruktur,
rujuk,jasa_rs,alat1,bhp1,infrastruktur1,rujuk1,jasa_rs1,nama_pasien,rujukan,rujukan1,nama_asuransi,
total,total1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_lab_trn,
b.nama,a.qty,a.alat,a.bhp,a.infrastruktur,a.rujuk,a.jasa_rs ,
vAlat,vBhp,vInfra,vRujuk,vJasaRs,d.nama AS nama_pasien,a.rujukan,vRujukan,e.nama,a.harga,vTotal
FROM lab_det_trn a
INNER JOIN lab_tarif b ON a.id_lab_tarif=b.id_lab_tarif
INNER JOIN lab_trn c ON a.id_lab_trn=c.id_lab_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
INNER JOIN mr_asuransi e ON c.id_asuransi=e.id_asuransi
WHERE a.harga > 0 AND
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir
 AND c.id_asuransi LIKE inIdAsuransi;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLabValNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLabValNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLabValNota`(inNoReg CHAR(8))
BEGIN
UPDATE lab_trn SET val_lab=1 WHERE id_register =inNoReg;
UPDATE mr_bl SET val_lab=1 WHERE id_register =inNoReg;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLapDiagnosa` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLapDiagnosa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLapDiagnosa`(inTglAwal char(10),inTglAkhir char(10),inIol char(1))
BEGIN
   delete from mr_lap_diagnosa;
    insert into mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_utama FROM mr_pasien_pulang a
    where a.tanggal between inTglAwal and inTglAkhir and a.poli_inap=inIol;
    INSERT INTO mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_1 FROM mr_pasien_pulang a
    WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir and a.icd_1 not like '-' AND a.poli_inap=inIol;
        INSERT INTO mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_2 FROM mr_pasien_pulang a
    WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.icd_2 NOT LIKE '-' AND a.poli_inap=inIol;
        INSERT INTO mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_3 FROM mr_pasien_pulang a
    WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.icd_3 NOT LIKE '-' AND a.poli_inap=inIol;
        INSERT INTO mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_4 FROM mr_pasien_pulang a
    WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.icd_4 NOT LIKE '-' AND a.poli_inap=inIol;
        INSERT INTO mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_5 FROM mr_pasien_pulang a
    WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.icd_5 NOT LIKE '-' AND a.poli_inap=inIol;
        INSERT INTO mr_lap_diagnosa (tanggal,id_catatan_medik,id_unit,bl,umur_hr,umur_bln,umur_th,icd)
    SELECT a.tanggal,a.id_catatan_medik,a.id_unit,a.bl,a.umur_hari,a.umur_bulan,a.umur_tahun,a.icd_6 FROM mr_pasien_pulang a
    WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.icd_6 NOT LIKE '-' AND a.poli_inap=inIol;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLapPembObat` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLapPembObat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLapPembObat`(inTglAwal CHAR(10),inTglAkhir CHAR(10),
inIdObat INT,inNamaPetugas CHAR(80),inIol CHAR(1))
BEGIN
DELETE FROM far_lap_tmp;
INSERT INTO far_lap_tmp (tanggal_awal,tanggal_akhir,nama_petugas,id_obat,iol) VALUES
(inTglAwal,inTglAkhir,inNamaPetugas,inIdObat,inIol);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spLogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `spLogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spLogin`(inUser CHAR(30),inPassword CHAR(50))
BEGIN
select password from psdi_petugas where nama_user=inUser and password=md5(inPassword);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMd5` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMd5` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMd5`(inPasswordBaru CHAR(50),inUser CHAR(8))
BEGIN
    UPDATE psdi_petugas SET PASSWORD=MD5(inPasswordBaru) WHERE nama_user=inUser;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMigtoNoCm` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMigtoNoCm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMigtoNoCm`()
BEGIN
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMr10Diagnosa` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMr10Diagnosa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMr10Diagnosa`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
delete from mr_lap_10_diagnosa;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_laki,total)
SELECT a.icd,COUNT(a.hidup),COUNT(a.hidup) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND b.poli_inap=inKel
AND b.id_kondisi_pulang NOT LIKE 4 AND a.laki=1 GROUP BY a.icd;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_mati_laki,total)
SELECT a.icd,COUNT(a.mati),COUNT(a.mati) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND b.poli_inap=inKel
AND b.id_kondisi_pulang=4 AND laki=1 GROUP BY a.icd;
 
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_perempuan,total)
SELECT a.icd,COUNT(a.hidup),COUNT(a.hidup) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND b.poli_inap=inKel
AND b.id_kondisi_pulang NOT LIKE 4 AND a.perempuan=1 GROUP BY a.icd;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_mati_perempuan,total)
SELECT a.icd,COUNT(a.mati),COUNT(a.mati) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND b.poli_inap=inKel
AND b.id_kondisi_pulang=4 AND perempuan=1 GROUP BY a.icd;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMr10DiagnosaUnit` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMr10DiagnosaUnit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMr10DiagnosaUnit`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
delete from mr_lap_10_diagnosa;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_laki,total)
SELECT a.icd,COUNT(a.hidup),COUNT(a.hidup) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.id_unit=inKel
AND b.id_kondisi_pulang NOT LIKE 4 AND a.laki=1 GROUP BY a.icd;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_mati_laki,total)
SELECT a.icd,COUNT(a.mati),COUNT(a.mati) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.id_unit=inKel
AND b.id_kondisi_pulang=4 AND laki=1 GROUP BY a.icd;
 
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_perempuan,total)
SELECT a.icd,COUNT(a.hidup),COUNT(a.hidup) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.id_unit=inKel
AND b.id_kondisi_pulang NOT LIKE 4 AND a.perempuan=1 GROUP BY a.icd;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_mati_perempuan,total)
SELECT a.icd,COUNT(a.mati),COUNT(a.mati) FROM mr_rla a 
INNER JOIN mr_pasien_pulang b ON a.id_register=b.id_register WHERE b.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.id_unit=inKel
AND b.id_kondisi_pulang=4 AND perempuan=1 GROUP BY a.icd;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMr10Procedur` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMr10Procedur` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMr10Procedur`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
DELETE FROM mr_lap_10_diagnosa;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_laki,total)
SELECT a.icd9_1,COUNT(a.icd9_1) AS jml,COUNT(a.icd9_1)  FROM  mr_pasien_pulang a INNER JOIN mr_pasien b ON a.id_catatan_medik=
b.id_catatan_medik WHERE a.tgl_kunjungan
BETWEEN inTglAwal AND inTglAkhir AND a.poli_inap LIKE inKel
AND a.id_kondisi_pulang NOT LIKE 4 AND b.sex LIKE '1' GROUP BY  a.icd9_1;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_mati_laki,total)
SELECT a.icd9_1,COUNT(a.icd9_1) AS jml ,COUNT(a.icd9_1) FROM  mr_pasien_pulang a INNER JOIN mr_pasien b ON a.id_catatan_medik=
b.id_catatan_medik WHERE a.tgl_kunjungan
BETWEEN inTglAwal AND inTglAkhir AND a.poli_inap LIKE inKel
AND a.id_kondisi_pulang  LIKE 4 AND b.sex LIKE '1' GROUP BY  a.icd9_1;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_perempuan,total)
SELECT a.icd9_1,COUNT(a.icd9_1) AS jml,COUNT(a.icd9_1)  FROM  mr_pasien_pulang a INNER JOIN mr_pasien b ON a.id_catatan_medik=
b.id_catatan_medik WHERE a.tgl_kunjungan
BETWEEN inTglAwal AND inTglAkhir AND a.poli_inap LIKE inKel
AND a.id_kondisi_pulang NOT LIKE 4 AND b.sex  NOT LIKE '1' GROUP BY  a.icd9_1;
INSERT INTO mr_lap_10_diagnosa (icd,keluar_hidup_perempuan,total)
SELECT a.icd9_1,COUNT(a.icd9_1) AS jml ,COUNT(a.icd9_1) FROM  mr_pasien_pulang a INNER JOIN mr_pasien b ON a.id_catatan_medik=
b.id_catatan_medik WHERE a.tgl_kunjungan
BETWEEN inTglAwal AND inTglAkhir AND a.poli_inap LIKE inKel
AND a.id_kondisi_pulang  LIKE 4 AND b.sex NOT LIKE '1' GROUP BY  a.icd9_1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrBaruLama` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrBaruLama` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrBaruLama`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
    delete from mr_laporan_baru_lama;
    INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"BARU",COUNT(bl) AS jml,
    "LAKI-LAKI", "POLI" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE bl LIKE 1 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND (a.iol LIKE 1 OR a.iol LIKE 0) AND b.sex=1 GROUP BY LEFT(a.tanggal,7);
    
    INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"BARU",COUNT(bl) AS jml,
    "PEREMPUAN", "POLI" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE bl LIKE 1 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND (a.iol LIKE 1 OR a.iol LIKE 0) AND b.sex=2 GROUP BY LEFT(a.tanggal,7);    
    
      INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"LAMA",COUNT(bl) AS jml,
    "LAKI-LAKI", "POLI" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE a.bl LIKE 2 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND (a.iol NOT LIKE 2) AND b.sex=1 GROUP BY LEFT(a.tanggal,7);
    
    INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"LAMA",COUNT(bl) AS jml,
    "PEREMPUAN", "POLI" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE a.bl LIKE 2 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND (a.iol NOT LIKE 2) AND b.sex=2 GROUP BY LEFT(a.tanggal,7); 
    
    INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"BARU",COUNT(bl) AS jml,
    "LAKI-LAKI", "INAP" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE a.bl LIKE 1 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND a.iol LIKE 2 AND b.sex=1 GROUP BY LEFT(a.tanggal,7);
    
    INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"BARU",COUNT(bl) AS jml,
    "PEREMPUAN", "INAP" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE a.bl LIKE 1 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND a.iol LIKE 2 AND b.sex=2 GROUP BY LEFT(a.tanggal,7);
    
   INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"LAMA",COUNT(bl) AS jml,
    "LAKI-LAKI", "INAP" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE a.bl LIKE 2 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND a.iol LIKE 2 AND b.sex=1 GROUP BY LEFT(a.tanggal,7);
    
    INSERT INTO mr_laporan_baru_lama (bulan,nama,jumlah,sex,iol) 
    SELECT LEFT(a.tanggal,7),"LAMA",COUNT(bl) AS jml,
    "PEREMPUAN", "INAP" FROM mr_bl a 
    INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik   
    WHERE a.bl LIKE 2 AND a.tanggal
    BETWEEN inTglAwal AND inTglAkhir  AND a.iol LIKE 2 AND b.sex=2 GROUP BY LEFT(a.tanggal,7);    
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrBatalPeriksa` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrBatalPeriksa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrBatalPeriksa`(inIdCatatanMedik INT,inIdRegister INT,inIdPetugas INT)
BEGIN
     INSERT INTO mr_batal_periksa (tanggal,jam,id_catatan_medik,id_register,id_petugas)
     VALUES (CURDATE(),CURTIME(),inIdCatatanMedik,inIdRegister,inIdPetugas);
     DELETE FROM ksr_trn WHERE id_register=inIdRegister;
     DELETE FROM mr_bl WHERE id_register=inIdRegister;
     DELETE FROM mr_sjr WHERE id_register=inIdRegister;
     UPDATE mr_pasien SET poli_inap=0, aktif=0 WHERE id_register=inIdRegister;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrEditCetakresep` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrEditCetakresep` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrEditCetakresep`(inIdMrbl INT,inIdDokter INT,inIdUnit INT,inIdAsuransi INT,inIdCatatanMedik INT,inIdRegister INT)
BEGIN
 DECLARE noPeriksa INT;
 
   
    SELECT COUNT(*) FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND id_dokter LIKE inIdDokter AND id_unit LIKE inIdUnit INTO noPeriksa;
    IF (noPeriksa=0) THEN
    SET noPeriksa=1;
    ELSE
     SELECT MAX(no_periksa)+1 FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND id_dokter LIKE inIdDokter AND id_unit LIKE inIdUnit 
     INTO noPeriksa;
    END IF;
 UPDATE mr_bl SET no_periksa=noPeriksa WHERE id_mr_bl=inIdMrBl;
 UPDATE mr_pasien SET id_asuransi=inIdAsuransi  WHERE id_catatan_medik=inIdCatatanMedik;
 UPDATE ksr_trn SET id_asuransi=inIdAsuransi,id_unit=inIdUnit WHERE id_register=inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrEditPasienPulang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrEditPasienPulang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrEditPasienPulang`(inIdCatatanMedik INT,inIdPasienPulang INT,inLamaDirawat INT,
inIdKondisiPulang INT,inIdDirujuk INT,inIdDokter INT,
inIcdUtama CHAR(10),inIcd1 CHAR(10),inIcd2 CHAR(10),inIcd3 CHAR(10),inIcd4 CHAR(10),inIcd5 CHAR(10),inIcd6 CHAR(10),
inIcd91 CHAR(10),inIcd92 CHAR(10),inIcd93 CHAR(10),inIcd94 CHAR(10),inIcd95 CHAR(10))
BEGIN
DECLARE vJumlah INT;
DECLARE vBaruLama INT;
DECLARE vMati INT;
DECLARE vHidup INT;
DECLARE vPoliInap INT;
DECLARE vMrBl INT;
DECLARE vSex INT;
DECLARE tgllahir CHAR(10);
DECLARE tahun,bulan,hari INT;
DECLARE umur CHAR(20);
DECLARE inIdMrBl INT;
DECLARE inIdRegister INT;
DECLARE vIdUnit INT;
UPDATE mr_pasien_pulang SET lama_dirawat=inLamaDirawat,id_kondisi_pulang=inIdKondisiPulang,id_dirujuk=inIdDirujuk,
id_dokter=inIdDokter,icd_utama=inIcdUtama,icd_1=inIcd1,icd_2=inIcd2,icd_3=inIcd3,icd_4=inIcd4,icd_5=inIcd5,icd_6 =inIcd6
,icd9_1=inIcd91,icd9_2=inIcd92,icd9_3=inIcd93,icd9_4=inIcd94,icd9_5=inIcd95 WHERE id_pasien_pulang LIKE inIdPasienPulang;
    SELECT COUNT(*) FROM mr_rla WHERE id_catatan_medik =inIdCatatanMedik INTO vJumlah;    
    
    IF (inIdKondisiPulang=4) THEN
     SET vMati=1;
     SET vHidup=0;     
      ELSE
      SET vMati=0;
      SET vHidup=1;
    END IF;
    SELECT sex,tgl_lahir FROM mr_pasien WHERE id_catatan_medik=inIdCatatanMedik INTO vSex,tgllahir;  
    
    
     SELECT   FLOOR(DATEDIFF(CURDATE(),tgllahir)/365) years
            , FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12) months
            , CEILING((((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12)
            - FLOOR((DATEDIFF(CURDATE(),tgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),tgllahir)/365))* 12))* 30) days INTO tahun,bulan,hari;   
SELECT poli_inap,id_mr_bl,id_register,id_unit FROM mr_pasien_pulang WHERE id_pasien_pulang=inIdPasienPulang INTO vPoliInap,inIdMrBl,inIdRegister,
vIdUnit;    
IF (vPoliInap=1) THEN
  DELETE FROM mr_rla WHERE id_mr_bl=inIdMrBl;
  
  
  IF (inIcdUtama <> "-")  THEN  
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
   IF (inIcd1 <> "-")  THEN  
    SET inIcdUtama=inIcd1;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd2 <> "-")  THEN  
    SET inIcdUtama=inIcd2;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd3 <> "-")  THEN  
    SET inIcdUtama=inIcd3;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd4 <> "-")  THEN  
    SET inIcdUtama=inIcd4;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd5 <> "-")  THEN  
    SET inIcdUtama=inIcd5;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd6 <> "-")  THEN  
    SET inIcdUtama=inIcd6;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
       IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_mr_bl, id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdMrBl,inIdRegister,inIdCatatanMedik,inIcdUtama,1,1,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
  
  
END IF;
IF (vPoliInap=2) THEN
  DELETE FROM mr_rla WHERE id_register=inIdRegister;
  
     IF (inIcdUtama <> "-")  THEN  
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama2,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
   IF (inIcd1 <> "-")  THEN  
    SET inIcdUtama=inIcd1;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd2 <> "-")  THEN  
    SET inIcdUtama=inIcd2;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
      IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd3 <> "-")  THEN  
    SET inIcdUtama=inIcd3;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd4 <> "-")  THEN  
    SET inIcdUtama=inIcd4;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd5 <> "-")  THEN  
    SET inIcdUtama=inIcd5;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
    
      
   IF (inIcd6 <> "-")  THEN  
    SET inIcdUtama=inIcd6;
    SELECT COUNT(icd) FROM mr_rla WHERE icd=inIcdUtama AND id_catatan_medik=inIdCatatanMedik INTO vJumlah;
    IF (vjumlah=0) THEN
        SET vBaruLama=1;
        ELSE
        SET vBaruLama=2;
    END IF;
    IF (vSex=1) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,laki,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
   
IF (vSex=2) THEN
     IF (bulan=0 AND tahun=0 AND hari<7) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,0_6hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (bulan=0 AND tahun=0 AND hari>6) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,7_28hr,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun=0) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,28_1th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=1) AND (tahun<4) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,1_4th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=5) AND (tahun<=14) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,5_14th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=15) AND (tahun<=24) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,15_24th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=25) AND (tahun<=44) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,25_44th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
      IF (tahun>=45) AND (tahun<=64) THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,45_64th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
     IF (tahun>=65)  THEN
       INSERT INTO mr_rla (tanggal,jam,id_register,id_catatan_medik,icd,65th,poli_inap,perempuan,bl,hidup,mati,id_unit) VALUES (CURDATE(),CURTIME(),inIdRegister, inIdCatatanMedik,inIcdUtama,1,2,1,vBaruLama,vHidup,vMati,vIdUnit);
      END IF;
    END IF  ;
    END IF;
END IF;
update mr_sjr set id_kondisi=inIdKondisiPulang,diagnosa=inIcdUtama where id_register=inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrHapusEditPasienPulang` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrHapusEditPasienPulang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrHapusEditPasienPulang`(inIdMrBl char(8),inIdPasienPulang int,inIdRegister int)
BEGIN
delete from mr_pasien_pulang where id_pasien_pulang=inIdPasienPulang;
delete from mr_rla where id_mr_bl=inIdMrBl and id_register=inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrInsertNoCm` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrInsertNoCm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrInsertNoCm`(inNoCm CHAR(8),inNama CHAR(70))
BEGIN
delete from mr_var_tmp;
insert into mr_var_tmp (mr_var_tmp) values (1);
INSERT INTO mr_pasien (id_catatan_medik,nama,tgl_kunjungan,jam_kunjungan) VALUES
(inNoCm,inNama,CURDATE(),CURTIME());
update mr_var_tmp set mr_var_tmp=0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapEwar` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapEwar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapEwar`(inTglAwal char(10),inTglAkhir char(10))
BEGIN
declare i int;
declare jumlah int;
    delete from mr_lap_ewar;
    set i=1;
    while i<=54 do
    insert into mr_lap_ewar (minggu) values(i);
    set i=i+1;
    end while;
        insert into mr_lap_ewar (minggu,a)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'A' and a.tanggal between inTglAwal and inTglAkhir GROUP BY WEEK(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,b)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'B'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,c)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'C'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);	
        INSERT INTO mr_lap_ewar (minggu,d)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'D'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,e)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'E'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,f)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'F'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);		
       INSERT INTO mr_lap_ewar (minggu,g)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'G'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,h)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'H'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,i)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'I'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);	
        INSERT INTO mr_lap_ewar (minggu,j)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'J'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,k)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'K'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,l)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'L'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);	
		
        INSERT INTO mr_lap_ewar (minggu,m)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'M'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,n)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'N'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,p)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'P'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);	
        INSERT INTO mr_lap_ewar (minggu,q)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'Q'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,r)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'R'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,s)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'S'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);		
       INSERT INTO mr_lap_ewar (minggu,t)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'T'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,u)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'U'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,v)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'V'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);	
        INSERT INTO mr_lap_ewar (minggu,w)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'W'  	and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,yy)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'Y'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);
	
        INSERT INTO mr_lap_ewar (minggu,z)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'Z'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);		
	
	INSERT INTO mr_lap_ewar (minggu,xx)
        SELECT WEEK(a.tanggal),COUNT(b.ewar) FROM mr_rla a INNER JOIN mr_icd b
	ON a.icd=b.icd WHERE b.ewar LIKE 'X'  and a.tanggal between inTglAwal and inTglAkhir  group by week(a.tanggal);			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjBlPoli` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjBlPoli` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjBlPoli`(inTglAwal CHAR(10),inTglAkhir CHAR(10),
     inNamaPetugas CHAR(60))
BEGIN
DECLARE vTotal INT;
DELETE FROM mr_lap_kunj_bl_poli;
SELECT COUNT(a.bl) FROM mr_bl a INNER JOIN
 mr_unit b ON a.id_unit=b.id_unit
 INNER JOIN ksr_trn c ON a.id_register=c.id_register WHERE 
 a.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO mr_lap_kunj_bl_poli (kode,nama,baru,lama,total,nama_petugas,tgl_awal,tgl_akhir,laki,perempuan)
SELECT a.id_unit,b.nama_unit,CASE WHEN a.bl=1 THEN 1 END AS baru,
CASE WHEN a.bl=2 THEN 1 END AS lama, 
vTotal,inNamaPetugas,inTglAwal,inTglAkhir,
CASE WHEN 
d.sex ='1' THEN 1 END AS laki,
CASE WHEN 
d.sex ='2' THEN 1 END AS pr  FROM mr_bl a INNER JOIN
 mr_unit b ON a.id_unit=b.id_unit
 INNER JOIN ksr_trn c ON a.id_register=c.id_register
INNER JOIN mr_pasien d ON a.id_catatan_medik=d.id_catatan_medik  
  WHERE 
 a.tanggal BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjDetInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjDetInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjDetInap`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdUnit int)
BEGIN
DECLARE vTotal INT;
DELETE FROM mr_lap_kunjungan_per_dokter;
SELECT COUNT(a.tanggal) FROM mr_log_pasien_inap a
INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik 
INNER JOIN mr_unit c ON a.id_unit=c.id_unit
INNER JOIN mr_asuransi d ON a.id_asuransi=d.id_asuransi 
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.id_unit=inIdUnit INTO vTotal;
INSERT INTO mr_lap_kunjungan_per_dokter 
      (tanggal,id_catatan_medik,id_register,nama,nama_unit,nama_asuransi,total,jam,nama_dokter,id_asuransi)
SELECT a.tanggal,a.id_catatan_medik,a.id_register,b.nama,
c.nama_unit,d.nama AS nama_asuransi,vTotal,'00:00','-',a.id_asuransi FROM mr_log_pasien_inap a
INNER JOIN mr_pasien b ON a.id_catatan_medik=b.id_catatan_medik 
INNER JOIN mr_unit c ON a.id_unit=c.id_unit
INNER JOIN mr_asuransi d ON a.id_asuransi=d.id_asuransi 
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir and a.id_unit=inIdUnit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjInap`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
    DECLARE vTotal INT;
    DELETE FROM mr_lap_kunjungan_poliklinik;
    SELECT COUNT(a.id_unit) FROM mr_log_pasien_inap a INNER JOIN mr_unit b ON a.id_unit=b.id_unit
    WHERE 
    a.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
    INSERT INTO mr_lap_kunjungan_poliklinik (nama_unit,jumlah,total,id_unit)
    SELECT b.nama_unit,COUNT(a.id_unit),vTotal,a.id_unit FROM mr_log_pasien_inap a
    iNNER JOIN mr_unit b ON a.id_unit=b.id_unit WHERE 
    a.tanggal BETWEEN inTglAwal AND inTglAkhir GROUP BY b.nama_unit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjunganDetilKecamatan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjunganDetilKecamatan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjunganDetilKecamatan`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
DECLARE vTotal INT;
delete from mr_lap_kunjungan_per_kecamatan;
SELECT COUNT(a.tanggal) FROM mr_bl a INNER JOIN mr_dokter b
ON a.id_dokter=b.id_dokter
INNER JOIN mr_pasien c ON a.id_catatan_medik=c.id_catatan_medik
INNER JOIN mr_unit d ON a.id_unit=d.id_unit
INNER JOIN mr_asuransi e ON a.id_asuransi=e.id_asuransi WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
     INSERT INTO mr_lap_kunjungan_per_kecamatan (id_kecamatan,alamat,tanggal,jam,id_catatan_medik,id_register,nama_dokter,nama,nama_unit,id_dokter,total,id_unit,nama_asuransi,id_asuransi)
     SELECT c.id_kecamatan,CONCAT(`c`.`alamat`,' ',`f`.`nama_desa`,' ',`g`.`nama_kecamatan`,' ',`h`.`nama_kabupaten`),a.tanggal,a.jam,a.id_catatan_medik,a.id_register,b.nama_dokter,c.nama,d.nama_unit,a.id_dokter,vTotal,a.id_unit ,e.nama,a.id_asuransi 
     FROM mr_bl a INNER JOIN mr_dokter b
ON a.id_dokter=b.id_dokter
INNER JOIN mr_pasien c ON a.id_catatan_medik=c.id_catatan_medik
INNER JOIN mr_unit d ON a.id_unit=d.id_unit
INNER JOIN mr_asuransi e ON a.id_asuransi=e.id_asuransi
     LEFT JOIN `mr_desa_bps` `f`
       ON ((`c`.`id_desa` = `f`.`kode_desa`))
    LEFT JOIN `mr_kecamatan_bps` `g`
      ON ((`c`.`id_kecamatan` = `g`.`kode_kecamatan`))
   LEFT JOIN `mr_kabupaten_bps` `h`
     ON ((`c`.`id_kabupaten` = `h`.`kode_kabupaten`))
 WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjunganDetilPoliklinik` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjunganDetilPoliklinik` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjunganDetilPoliklinik`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
DECLARE vTotal INT;
delete from mr_lap_kunjungan_per_dokter;
SELECT COUNT(a.tanggal) FROM mr_bl a INNER JOIN mr_dokter b
ON a.id_dokter=b.id_dokter
INNER JOIN mr_pasien c ON a.id_catatan_medik=c.id_catatan_medik
INNER JOIN mr_unit d ON a.id_unit=d.id_unit
INNER JOIN mr_asuransi e ON a.id_asuransi=e.id_asuransi WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
     INSERT INTO mr_lap_kunjungan_per_dokter (tanggal,jam,id_catatan_medik,id_register,nama_dokter,nama,nama_unit,id_dokter,total,id_unit,nama_asuransi,id_asuransi)
     SELECT a.tanggal,a.jam,a.id_catatan_medik,a.id_register,b.nama_dokter,c.nama,d.nama_unit,a.id_dokter,vTotal,a.id_unit ,e.nama,a.id_asuransi FROM mr_bl a INNER JOIN mr_dokter b
ON a.id_dokter=b.id_dokter
INNER JOIN mr_pasien c ON a.id_catatan_medik=c.id_catatan_medik
INNER JOIN mr_unit d ON a.id_unit=d.id_unit
INNER JOIN mr_asuransi e ON a.id_asuransi=e.id_asuransi WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjunganDokter` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjunganDokter` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjunganDokter`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
    DECLARE vTotal INT;
    delete from mr_lap_kunjungan_dokter;
    SELECT COUNT(a.iol) FROM mr_bl a INNER JOIN mr_dokter b ON a.id_dokter=b.id_dokter WHERE 
    a.tanggal BETWEEN inTglAwal AND inTglAkhir  INTO vTotal;
    INSERT INTO mr_lap_kunjungan_dokter (nama_dokter,jumlah,total,id_dokter)
    SELECT b.nama_dokter,COUNT(a.iol),vTotal,a.id_dokter FROM mr_bl a INNER JOIN mr_dokter b ON a.id_dokter=b.id_dokter WHERE 
    a.tanggal BETWEEN inTglAwal AND inTglAkhir GROUP BY a.id_dokter;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjunganKecamatan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjunganKecamatan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjunganKecamatan`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
DECLARE vTotal INT;
delete from mr_lap_kunjungan_kecamatan;
SELECT COUNT(a.id_catatan_medik) FROM mr_bl a INNER JOIN mr_pasien b ON 
a.id_catatan_medik=b.id_catatan_medik INNER JOIN mr_kecamatan_bps c ON b.id_kecamatan=c.kode_kecamatan 
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
INSERT INTO mr_lap_kunjungan_kecamatan (nama_kecamatan,jumlah,total,kode_kecamatan)
SELECT c.nama_kecamatan,COUNT(a.id_catatan_medik),vTotal,c.kode_kecamatan FROM mr_bl a INNER JOIN mr_pasien b ON 
a.id_catatan_medik=b.id_catatan_medik
INNER JOIN mr_kecamatan_bps c ON b.id_kecamatan=c.kode_kecamatan WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir
 GROUP BY c.kode_kecamatan ORDER BY c.kode_kecamatan;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapKunjunganPoliklinik` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapKunjunganPoliklinik` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapKunjunganPoliklinik`(inTglAwal CHAR(10),inTglAkhir CHAR(10))
BEGIN
    DECLARE vTotal INT;
    delete from mr_lap_kunjungan_poliklinik;
    SELECT COUNT(a.iol) FROM mr_bl a INNER JOIN mr_unit b ON a.id_unit=b.id_unit WHERE 
    a.tanggal BETWEEN inTglAwal AND inTglAkhir INTO vTotal;
    INSERT INTO mr_lap_kunjungan_poliklinik (nama_unit,jumlah,total,id_unit)
    SELECT b.nama_unit,COUNT(a.iol),vTotal,a.id_unit FROM mr_bl a INNER JOIN mr_unit b ON a.id_unit=b.id_unit WHERE 
    a.tanggal BETWEEN inTglAwal AND inTglAkhir GROUP BY b.nama_unit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapLb1` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapLb1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapLb1`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
   delete from mr_rla_tmp;
   INSERT INTO mr_rla_tmp (0_6hrlk,7_28hrlk,28_1thlk,1_4thlk,5_14thlk,15_24thlk,25_44thlk,45_64thlk,65thlk,laki,hiduplk,matilk,icd)
   SELECT SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(laki),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd WHERE laki=1 AND tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
   bl=inKel  GROUP BY mr_rla.icd;
   INSERT INTO mr_rla_tmp (0_6hrpr,7_28hrpr,28_1thpr,1_4thpr,5_14thpr,15_24thpr,25_44thpr,45_64thpr,65thpr,perempuan,hiduppr,matipr,icd)  
   SELECT SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(perempuan),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd WHERE perempuan=1 AND tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
    bl=inKel GROUP BY mr_rla.icd;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLapPerdiagnosaRalanRanap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLapPerdiagnosaRalanRanap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLapPerdiagnosaRalanRanap`(inTglAwal char(10),inTglAkhir char(10),inIcd char(10))
BEGIN
truncate mr_lap_per_diagnosa_ralan_ranap;
insert into mr_lap_per_diagnosa_ralan_ranap (tanggal,jam,nama,alamat,unit,id_catatan_medik,id_register,icd,sex,
rawat,th,bln,hr)
SELECT a.tanggal,a.jam,c.nama,c.alamat,b.nama_unit,a.id_catatan_medik,a.id_register,a.icd,
  (CASE WHEN (`c`.`sex` = 1) THEN 'Laki-laki' ELSE 'Perempuan' END) AS `sex`,
  (CASE WHEN (`a`.`poli_inap` = 1) THEN 'Poli' ELSE 'Inap' END) AS `rawat`,
  FLOOR(((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365)) AS `years`,
  FLOOR(((((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365) - FLOOR(((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365))) * 12)) AS `months`,
  CEILING(((((((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365) - FLOOR(((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365))) * 12) - FLOOR(((((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365) - FLOOR(((TO_DAYS(CURDATE()) - TO_DAYS(`c`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days`
 FROM mr_rla a
 INNER JOIN mr_unit b ON a.id_unit=b.id_unit
 INNER JOIN mr_pasien c ON a.id_catatan_medik=c.id_catatan_medik 
 where a.icd=inIcd and a.tanggal between inTglAwal and inTglAkhir;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLb1Kecamatan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLb1Kecamatan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLb1Kecamatan`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT,inIdKecamatan INT)
BEGIN
   delete from mr_rla_tmp;
   INSERT INTO mr_rla_tmp (0_6hrlk,7_28hrlk,28_1thlk,1_4thlk,5_14thlk,15_24thlk,25_44thlk,45_64thlk,65thlk,laki,hiduplk,matilk,icd)
   SELECT SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(laki),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd
   INNER JOIN mr_pasien a ON mr_rla.id_catatan_medik=a.id_catatan_medik   
    WHERE laki LIKE 1 AND mr_rla.tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
   bl=inKel AND a.id_kecamatan = inIdKecamatan  GROUP BY mr_rla.icd;
   INSERT INTO mr_rla_tmp (0_6hrpr,7_28hrpr,28_1thpr,1_4thpr,5_14thpr,15_24thpr,25_44thpr,45_64thpr,65thpr,perempuan,hiduppr,matipr,icd)  
   SELECT SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(perempuan),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd
   INNER JOIN mr_pasien a ON mr_rla.id_catatan_medik=a.id_catatan_medik   
    WHERE perempuan LIKE 1 AND mr_rla.tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
   bl=inKel AND a.id_kecamatan = inIdKecamatan  GROUP BY mr_rla.icd;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrLogEditPasienInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrLogEditPasienInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrLogEditPasienInap`(inIdCatatanMedik INT,inIdRegister INT,inBed CHAR(3),inKelas CHAR(10),
                                         inIdAsuransi INT,inIdUnit INT,inIdPetugas INT,inBedAwal CHAR(3),inKelasAwal CHAR(10),inAsuransiAwal INT,inUnitAwal INT)
BEGIN
  INSERT INTO mr_log_edit_pasien_inap (id_catatan_medik,id_register,unit1,asuransi1,kelas1,bed1,bed2,kelas2,asuransi2,unit2,id_petugas,tanggal,jam)
  SELECT inIdCatatanMedik,inIdRegister,inUnitAwal,inAsuransiAwal,inKelasAwal,inBedAwal,inBed,inKelas,inIdAsuransi,inIdUnit,inIdPetugas,CURDATE(),CURTIME() FROM mr_pasien WHERE id_register=inIdRegister; 
  
  UPDATE ksr_trn SET id_unit=inIdUnit,id_asuransi=inIdAsuransi,kelas=inKelas WHERE id_register=inIdRegister;
  UPDATE mr_pasien SET id_unit=inIdUnit,id_asuransi=inIdAsuransi,kelas=inKelas WHERE id_register=inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrPindah` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrPindah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `spMrPindah`(inIdMrTtLama INT,inIdRegister INT,
inKelasAwal CHAR(5),inKelasAkhir CHAR(5),inNoBedAwal CHAR(5),inNoBedAkhir CHAR(5),inIdPetugas INT,inIdUnit INT)
BEGIN
UPDATE mr_tt SET id_register=123 WHERE id_mr_tt=inIdMrTtLama;
UPDATE mr_tt SET id_register=inIdRegister WHERE id_unit=inIdUnit AND kelas=inKelasAkhir AND no_bed=inNoBedAkhir;
UPDATE mr_pasien SET no_bed=inNoBedAkhir,kelas=inKelasAkhir,id_unit=inIdUnit WHERE id_register=inIdRegister;
INSERT INTO log_mr_tt_pindah (tanggal,jam,id_register,kelas_awal,no_bed_awal,kelas_akhir,no_bed_akhir,id_petugas)
VALUES (CURDATE(),CURTIME(),inIdRegister,inKelasAwal,inKelasAkhir,inNoBedAwal,inNoBedAkhir,inIdPetugas);
UPDATE ksr_trn SET kelas =inKelasAkhir,id_unit= inIdUnit WHERE id_register LIKE inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrPsnInapPlg` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrPsnInapPlg` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrPsnInapPlg`(inNoReg CHAR(10),inNoCm CHAR(8),inIdMrTt CHAR(8))
BEGIN
/*UPDATE gz_pesan_diet SET cetak='BATAL', ket_psn ='Pulang' WHERE id_register =inNoReg;*/
UPDATE mr_tt SET id_register=123 WHERE id_mr_tt LIKE inIdMrTt;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrReset` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrReset` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrReset`(inIdPasien INT,inIdDokter INT,inIdUnit INT)
BEGIN
DECLARE noPendaftaran INT;
DECLARE noPeriksa INT;
DECLARE vidRegister INT;
SELECT COUNT(*) FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") INTO noPendaftaran;
    SELECT COUNT(*) FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND id_dokter LIKE inIdDokter AND id_unit LIKE inIdUnit INTO noPeriksa;
   IF (noPeriksa=0) THEN
    SET noPeriksa=1;
    ELSE
     SELECT MAX(no_periksa)+1 FROM mr_bl WHERE tanggal LIKE CONCAT(CURDATE(),"%") AND id_dokter LIKE inIdDokter AND id_unit LIKE inIdUnit INTO noPeriksa;
    END IF;
SELECT id_register FROM mr_pasien WHERE id_pasien LIKE inIdPasien INTO vidRegister;
UPDATE mr_bl SET no_periksa=noPeriksa,no_pendaftaran=noPendaftaran WHERE id_register=vidRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrRl4` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrRl4` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrRl4`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
TRUNCATE mr_rla_tmp;
INSERT INTO mr_rla_tmp (0_6hrlk,7_28hrlk,28_1thlk,1_4thlk,5_14thlk,15_24thlk,25_44thlk,45_64thlk,65thlk,laki,hiduplk,matilk,icd)
   SELECT SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(laki),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd WHERE laki=1 AND tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
   poli_inap=inKel AND dtd NOT LIKE '' AND mr_rla.bl=1 GROUP BY mr_rla.icd;
  
   INSERT INTO mr_rla_tmp (0_6hrpr,7_28hrpr,28_1thpr,1_4thpr,5_14thpr,15_24thpr,25_44thpr,45_64thpr,65thpr,perempuan,hiduppr,matipr,icd) 
   SELECT SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(perempuan),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd WHERE perempuan=1 AND tanggal BETWEEN inTglAwal  AND inTglAkhir AND
    poli_inap=inKel AND dtd NOT LIKE ''  AND mr_rla.bl=1 GROUP BY mr_rla.icd;
  
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrRlaTmp` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrRlaTmp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrRlaTmp`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inKel INT)
BEGIN
   DELETE FROM mr_rla_tmp;
   INSERT INTO mr_rla_tmp (id_register,id_catatan_medik,0_6hrlk,7_28hrlk,28_1thlk,1_4thlk,5_14thlk,15_24thlk,25_44thlk,45_64thlk,65thlk,laki,hiduplk,matilk,icd)
   SELECT id_register,id_catatan_medik,SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(laki),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd WHERE laki=1 AND tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
   poli_inap=inKel AND stp NOT LIKE '' AND mr_rla.bl=1 GROUP BY mr_rla.icd;
   INSERT INTO mr_rla_tmp (id_register,id_catatan_medik,0_6hrpr,7_28hrpr,28_1thpr,1_4thpr,5_14thpr,15_24thpr,25_44thpr,45_64thpr,65thpr,perempuan,hiduppr,matipr,icd)  
   SELECT id_register,id_catatan_medik,SUM(0_6hr),SUM(7_28hr),SUM(28_1th),SUM(1_4th),SUM(5_14th),SUM(15_24th),SUM(25_44th),SUM(45_64th),SUM(65th),SUM(perempuan),
   SUM(hidup),SUM(mati),mr_rla.icd 
   FROM mr_rla INNER JOIN mr_icd ON mr_rla.icd=mr_icd.icd WHERE perempuan=1 AND tanggal BETWEEN inTglAwal  AND inTglAkhir AND 
   poli_inap=inKel AND stp NOT LIKE '' AND mr_rla.bl=1 GROUP BY mr_rla.icd;
  END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrUpdateInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrUpdateInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrUpdateInap`(inKelas char(2),inIcd char(10),inNoBed int,idPengirim int,
         inKasus int,inGolonganDarah char(2),inKunjungan int,
         inIdcatatanMedik INT,inIdRegister INT,inIdUnit INT,inIdPetugas INT,inIdAsuransi INT,
         idIdDokter int)
BEGIN
       update mr_pasien set kunjungan=inKunjungan,golongan_darah=inGolonganDarah,
        id_kasus_polisi=inKasus,id_pengirim=inIdPengirim,id_unit=inIdUnit,no_bed=inNoBed,
        id_dokter=inIdDokter,icd=inIcd,kelas=inKelas,id_asuransi=inIdAsuransi where id_catatan_medik=inIdCatatanMedik;
        
       INSERT INTO mr_log_pasien_inap (id_catatan_medik,id_register,id_unit,id_petugas,id_asuransi) VALUES
       (inIdCatatanMedik,inIdRegister,inIdUnit,inIdPetugas,inIdAsuransi);
       UPDATE mr_pasien SET jam_inap=CURTIME()  WHERE id_catatan_medik=inIdCatatanMedik;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrUpdateSensusTt` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrUpdateSensusTt` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrUpdateSensusTt`(inIdUnit INT,inIdSensusRanap INT)
BEGIN
DECLARE vV INT;
DECLARE v1 INT;
DECLARE v2 INT;
DECLARE v3 INT;
SELECT COUNT(*) FROM mr_tt WHERE kelas='V' AND id_unit=inIdUnit INTO vV;
SELECT COUNT(*) FROM mr_tt WHERE kelas='1' AND id_unit=inIdUnit INTO v1;
SELECT COUNT(*) FROM mr_tt WHERE kelas='2' AND id_unit=inIdUnit INTO v2;
SELECT COUNT(*) FROM mr_tt WHERE kelas='3' AND id_unit=inIdUnit INTO v3;
UPDATE mr_sensus_ranap SET tt_v=vV,tt_1=v1,tt_2=v2,tt_3=v3 WHERE id_sensus_ranap=inIdSensusRanap;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spMrUpdUnit` */

/*!50003 DROP PROCEDURE IF EXISTS  `spMrUpdUnit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spMrUpdUnit`(inNoReg CHAR(10),
inIdUnitLama INT,inIdUnitBaru INT)
BEGIN
 UPDATE  far_trn SET  id_unit=inIdUnitBaru WHERE id_register=inNoReg AND id_unit=inIdUnitLama;
 UPDATE  lab_trn SET  id_unit=inIdUnitBaru WHERE id_register=inNoReg AND id_unit=inIdUnitLama;
 UPDATE  ro_trn SET  id_unit=inIdUnitBaru WHERE id_register=inNoReg AND id_unit=inIdUnitLama;
 /*UPDATE  fis_trn SET  id_unit=inIdUnitBaru WHERE id_register=inNoReg AND id_unit=inIdUnitLama;*/
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spPolVal` */

/*!50003 DROP PROCEDURE IF EXISTS  `spPolVal` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spPolVal`(inNomor INT,inIdDokter INT,
inNoReg INT)
BEGIN
DECLARE vJasa INT;
DECLARE vDiskon INT;
SELECT SUM(CASE WHEN IFNULL(a.diskon_dr,0)=1
   THEN (a.operator-a.diskon)*a.jumlah ELSE a.operator*a.jumlah END) AS jasa_operator
   ,  SUM(CASE WHEN IFNULL(a.diskon_dr,0)=1  THEN a.jumlah*a.diskon ELSE 0  END)
    AS ket_diskon FROM ksr_det_trn a
   INNER JOIN ksr_tarif b ON a.kode=b.kode INNER JOIN mr_dokter c ON
   a.id_operator=c.id_dokter INNER JOIN ksr_trn d ON a.id_register=d.id_register
   INNER JOIN mr_pasien e ON d.id_catatan_medik=e.id_catatan_medik INNER JOIN
   mr_asuransi f ON d.id_asuransi=f.id_asuransi INNER JOIN mr_unit g ON
   a.id_unit=g.id_unit WHERE
   a.kelompok_unit NOT LIKE '-' AND c.id_dokter LIKE inIdDokter   
   AND a.id_register= inNoReg AND a.iol LIKE 1 AND a.pelaksana LIKE 1 INTO vJasa, vDiskon;
    UPDATE mr_bl SET jasa=vJasa WHERE id_mr_bl LIKE inNomor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spPsdiLapPegawai` */

/*!50003 DROP PROCEDURE IF EXISTS  `spPsdiLapPegawai` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spPsdiLapPegawai`(inNamaPetugas CHAR(50),inIdPegawai INT)
BEGIN
DELETE FROM psdi_lap_pegawai;
INSERT INTO psdi_lap_pegawai (nama_petugas,id_petugas) VALUES (inNamaPetugas,inIdPegawai);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRepairNocm` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRepairNocm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRepairNocm`(inNoCmBaru CHAR(8),inNoCmLama CHAR(8))
BEGIN
DECLARE vIdRegisterBaru INT;
DECLARE vIdRegisterLama INT;
SELECT id_register FROM mr_pasien WHERE id_catatan_medik =inNoCmBaru INTO vIdRegisterBaru;
SELECT id_register FROM mr_pasien WHERE id_catatan_medik =inNoCmLama INTO vIdRegisterLama;
UPDATE mr_pasien SET poli_inap=2 WHERE id_register=vidRegisterLama;
UPDATE mr_pasien SET poli_inap=0 WHERE id_register=vidRegisterBaru;
UPDATE mr_bl SET iol=2 WHERE id_register=vidRegisterLama;
UPDATE mr_bl SET iol=0 WHERE id_register=vidRegisterBaru;
UPDATE ksr_trn SET iol=2 WHERE id_register=vidRegisterLama;
UPDATE ksr_trn SET iol=0 WHERE id_register=vidRegisterBaru;
UPDATE ksr_det_trn SET id_register=vIdRegisterLama WHERE id_register=vidRegisterBaru;
UPDATE far_trn SET id_register=vIdRegisterLama WHERE id_register=vidRegisterBaru;
UPDATE lab_trn SET id_register=vIdRegisterLama WHERE id_register=vidRegisterBaru;
UPDATE fis_trn SET id_register=vIdRegisterLama WHERE id_register=vidRegisterBaru;
UPDATE ro_trn SET id_register=vIdRegisterLama WHERE id_register=vidRegisterBaru;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoCetakNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoCetakNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoCetakNota`(inNoTrn INT,inNamaPetugas CHAR(50))
BEGIN
DECLARE vDiskon INT;
DECLARE vSubTotal INT;
DECLARE vGrandTotal INT;
delete from ro_cetak_trn;
INSERT INTO ro_cetak_trn (id_no_trn,nama_petugas) VALUES (inNoTrn,inNamaPetugas);
SELECT SUM(diskon*jumlah),SUM(tarif*jumlah), SUM(tarif*jumlah) FROM ro_det_trn WHERE id_ro_trn=inNoTrn
INTO vDiskon,vSubTotal,vGrandTotal;
UPDATE ro_cetak_trn SET diskon=vDiskon,sub_total=vSubTotal,grand_total=vGrandTotal WHERE id_no_trn= inNoTrn;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoCursor` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoCursor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoCursor`()
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vAmplop INT;
DECLARE vJasaPetugas INT;
DECLARE vOperator INT;
DECLARE vManajemen INT;
DECLARE vPengirim INT;
DECLARE vSisa INT;
DECLARE vBiaya INT;
DECLARE vNo INT;
DECLARE kursor CURSOR FOR SELECT  a.alat,a.bhp,a.amplop,a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,a.id_ro_tarif FROM ro_tarif a;    
OPEN kursor;
REPEAT
FETCH kursor INTO vAlat,vBhp, vAmplop , vJasaPetugas , vOperator , vManajemen , vPengirim , vSisa , vBiaya ,vNo; 
UPDATE ro_det_trn a SET a.alat=vAlat,a.bhp=vBhp,a.amplop=vAmplop,a.jasa_petugas=vJasaPetugas,a.operator=vOperator,a.manajemen=vManajemen,a.pengirim=vPengirim,a.sisa=vSisa WHERE id_ro_tarif = vNo;  
UNTIL FALSE END REPEAT;
CLOSE kursor;    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoCursorIol` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoCursorIol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoCursorIol`()
BEGIN
DECLARE vIdUnit INT;
DECLARE vKel INT;
DECLARE kursor CURSOR FOR SELECT  id_unit,kelompok FROM mr_unit;
OPEN kursor;
REPEAT
FETCH kursor INTO vIdUnit,vKel;
IF (vKel=2) THEN
UPDATE ro_trn SET iol=2 WHERE id_unit=vIdUnit;
ELSE
UPDATE ro_trn SET iol=1 WHERE id_unit=vIdUnit;
END IF;
UNTIL FALSE END REPEAT;
CLOSE kursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoInsertTransaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoInsertTransaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoInsertTransaksi`(inIdCatatanMedik INT,inIdRegister INT,
inIdRoTrn INT,inIdUnit INT,inJumlah INT,inDiskon INT,inIdRoTarif INT)
BEGIN
DECLARE vtarif INT;
DECLARE vbhp INT;
DECLARE valat INT;
DECLARE vamplop INT;
SELECT tarif,bhp,alat,amplop FROM ro_tarif WHERE id_ro_tarif=inIdRoTarif INTO vtarif,vbhp,valat,vamplop;
INSERT INTO ro_det_trn (id_catatan_medik,id_register,id_ro_trn,id_unit,jumlah,
diskon,id_ro_tarif,tarif,bhp,alat,amplop,jasa_petugas,operator,manajemen,pengirim,sisa,rujukan) 
SELECT inIdCatatanMedik,inIdRegister,inIdRoTrn,inIdUnit,inJumlah,
inDiskon,inIdRoTarif,tarif,bhp,alat,amplop,jasa_petugas,operator,manajemen,pengirim,sisa,rujukan
 FROM ro_tarif WHERE id_ro_tarif=inIdRoTarif;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoLap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoLap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoLap`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas CHAR(10),inNamaPetugas CHAR(50),
inIol INT,inKode CHAR(3))
BEGIN
DELETE FROM ro_lap_tmp;
INSERT INTO ro_lap_tmp (tgl_awal,tgl_akhir,id_petugas,nama_petugas,iol,kode_rujukan) VALUES
    (inTglAwal,inTglAkhir,inIdPetugas,inNamaPetugas,inIol,inKode);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoLapKunjPoliInap` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoLapKunjPoliInap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoLapKunjPoliInap`(inTglAwal CHAR(10),inTglAkhir CHAR(10)
,InNamaPetugas CHAR(50),inIol INT)
BEGIN
DECLARE vTotal INT;
DELETE FROM ro_lap_kunj_poli_inap;
SELECT SUM(a.biaya) FROM ro_trn a 
INNER JOIN mr_unit b ON a.id_unit=b.id_unit
INNER JOIN mr_asuransi c ON a.id_asuransi=c.id_asuransi
INNER JOIN mr_pasien d ON a.id_catatan_medik=d.id_catatan_medik
INNER JOIN mr_dokter e ON a.id_dokter=e.id_dokter
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.iol=inIol INTO vTotal;
INSERT INTO ro_lap_kunj_poli_inap (iol,total,id_catatan_medik,id_register,tanggal,nama,alamat,jam,biaya,kelas,nama_unit,nama_asuransi,nama_dokter,nama_petugas)
SELECT inIol,vTotal,a.id_catatan_medik,a.id_register,a.tanggal,d.nama,d.alamat,a.jam,a.biaya,a.kelas,b.nama_unit,c.nama AS nama_asuransi,
e.nama_dokter,inNamaPetugas FROM ro_trn a
INNER JOIN mr_unit b ON a.id_unit=b.id_unit
INNER JOIN mr_asuransi c ON a.id_asuransi=c.id_asuransi
INNER JOIN mr_pasien d ON a.id_catatan_medik=d.id_catatan_medik
INNER JOIN mr_dokter e ON a.id_dokter=e.id_dokter
WHERE a.tanggal BETWEEN inTglAwal AND inTglAkhir AND a.iol=inIol;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoLapPendapatan` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoLapPendapatan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoLapPendapatan`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas INT,inIol INT,inNamaPetugas CHAR(60))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vAmplop INT;
DECLARE vJasaPetugas INT;
DECLARE vOperator INT;
DECLARE vManajemen INT;
DECLARE vPengirim INT;
DECLARE vSisa INT;
DECLARE vBiaya INT;
DECLARE vJml INT;
DECLARE vRujukan INT;
DELETE FROM ro_lap_pendapatan;
 
IF (inIdPetugas>0) THEN
IF (inIol=1) THEN
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1, SUM(a.jumlah),
SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
 WHERE
c.id_petugas=inIdPetugas AND c.iol=inIol  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vJml, vRujukan;
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1, qty1,rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,vJml,a.rujukan,vRujukan
FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE 
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF; 
IF (inIol=2) THEN
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.jumlah),
SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
 WHERE
c.id_petugas=inIdPetugas AND  c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,vJml,vRujukan;
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,qty1,rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,vJml,a.rujukan,vRujukan FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
 
WHERE 
c.id_petugas=inIdPetugas AND c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF; 
END IF;
IF (inIdPetugas=0) THEN
IF (inIol=1) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.jumlah),
SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
INNER JOIN mr_unit d ON a.id_unit=d.id_unit WHERE
  c.iol=inIol  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vJml, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,qty1, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,vJml,a.rujukan,vRujukan
 FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE 
c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
IF (inIol=2) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.jumlah),
SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
 WHERE
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vJml, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,qty1, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,vJml,a.rujukan,vRujukan
FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE 
 c.iol=inIol AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoLapPendapatanAsuransi` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoLapPendapatanAsuransi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoLapPendapatanAsuransi`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdPetugas INT,inIol INT,inNamaPetugas CHAR(60),inIdAsuransi INT,inNamaAsuransi CHAR(50))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vAmplop INT;
DECLARE vJasaPetugas INT;
DECLARE vOperator INT;
DECLARE vManajemen INT;
DECLARE vPengirim INT;
DECLARE vSisa INT;
DECLARE vBiaya INT;
DECLARE vQty INT;
DECLARE vRujukan INT;
DELETE FROM ro_lap_pendapatan;
 
IF (inIol=1) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.jumlah) ,
SUM(a.rujukan)
FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
INNER JOIN mr_unit d ON a.id_unit=d.id_unit WHERE
  c.iol=inIol  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir AND c.id_asuransi=inIdAsuransi INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,vQty, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,nama_asuransi,qty1,rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,inNamaAsuransi,vQty,a.rujukan, vRujukan
 FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE 
c.iol=inIol AND c.id_asuransi=inIdAsuransi AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
IF (inIol=2) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1, SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
 WHERE
 c.iol=inIol AND c.id_asuransi=inIdAsuransi AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,nama_asuransi,qty1, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya,inNamaAsuransi, vQty,a.rujukan, vRujukan
FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE  c.iol=inIol AND c.id_asuransi=inIdAsuransi AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoLapPendapatanDokter` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoLapPendapatanDokter` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoLapPendapatanDokter`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdDokter INT,inIol INT,inNamaDokter CHAR(60),inNamaPetugas CHAR(50))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vAmplop INT;
DECLARE vJasaPetugas INT;
DECLARE vOperator INT;
DECLARE vManajemen INT;
DECLARE vPengirim INT;
DECLARE vSisa INT;
DECLARE vBiaya INT;
DECLARE vRujukan INT;
DELETE FROM ro_lap_pendapatan;
 
IF (inIol=1) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
INNER JOIN mr_unit d ON a.id_unit=d.id_unit WHERE
  c.iol=inIol AND c.id_dokter=inIdDokter AND c.tanggal BETWEEN inTglAwal AND inTglAkhir  INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,nama_dokter, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, inNamaDokter,a.rujukan,vRujukan
 FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE 
c.iol=inIol AND c.id_dokter=inIdDokter  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
IF (inIol=2) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
 WHERE
 c.iol=inIol AND c.id_dokter=inIdDokter AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,nama_dokter, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, inNamaDokter,a.rujukan,vRujukan
FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE  c.iol=inIol AND c.id_dokter=inIdDokter  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoLapPendapatanPxDirujuk` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoLapPendapatanPxDirujuk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoLapPendapatanPxDirujuk`(inTglAwal CHAR(10),inTglAkhir CHAR(10),inIdRujukan INT,inIol INT,inNamaRujukan CHAR(60),inNamaPetugas CHAR(50))
BEGIN
DECLARE vAlat INT;
DECLARE vBhp INT;
DECLARE vAmplop INT;
DECLARE vJasaPetugas INT;
DECLARE vOperator INT;
DECLARE vManajemen INT;
DECLARE vPengirim INT;
DECLARE vSisa INT;
DECLARE vBiaya INT;
DECLARE vRujukan INT;
DELETE FROM ro_lap_pendapatan;
 
IF (inIol=1) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
INNER JOIN mr_unit d ON a.id_unit=d.id_unit WHERE
  c.iol=inIol AND b.radiologi=inIdRujukan AND c.tanggal BETWEEN inTglAwal AND inTglAkhir  INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,nama_dokter, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, inNamaRujukan,a.rujukan,vRujukan
 FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE 
c.iol=inIol AND b.radiologi=inIdRujukan  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
IF (inIol=2) THEN 
SELECT SUM(a.alat) AS alat1,SUM(a.bhp) AS bhp1,SUM(a.amplop) AS amplop1,SUM(a.jasa_petugas) 
AS jasa_petugas1,SUM(a.operator)AS operator1, SUM(a.manajemen) AS manajemen1,
SUM(a.pengirim) AS pengirim1,SUM(a.sisa) AS sisa1,SUM(a.tarif) AS biaya1,SUM(a.rujukan) FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn
 WHERE
 c.iol=inIol AND b.radiologi=inIdRujukan AND c.tanggal BETWEEN inTglAwal AND inTglAkhir INTO
 vAlat,vBhp, vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, vRujukan;
 
INSERT INTO ro_lap_pendapatan (tgl_awal,tgl_akhir,nama_petugas,iol,tanggal,jam,
id_petugas,kelas,
id_catatan_medik,id_register,id_ro_trn,nama,qty,alat,bhp,amplop,
jasa_petugas,operator,manajemen,pengirim,sisa,biaya,nama_pasien,
alat1,bhp1,amplop1,
jasa_petugas1,operator1,manajemen1,pengirim1,sisa1,biaya1,nama_dokter, rujukan,rujukan1)
SELECT inTglAwal,inTglAkhir,inNamaPetugas,inIol,c.tanggal,c.jam,
c.id_petugas,c.kelas,a.id_catatan_medik,a.id_register,a.id_ro_trn,
b.nama,a.jumlah,a.alat,a.bhp,a.amplop,
a.jasa_petugas,a.operator,a.manajemen,a.pengirim,a.sisa,a.tarif,d.nama AS nama_pasien,
vAlat,vBhp,vAmplop, vJasaPetugas, vOperator , vManajemen, vPengirim 
 , vSisa ,vBiaya, inNamaRujukan,a.rujukan,vRujukan
FROM ro_det_trn a
INNER JOIN ro_tarif b ON a.id_ro_tarif=b.id_ro_tarif
INNER JOIN ro_trn c ON a.id_ro_trn=c.id_ro_trn 
INNER JOIN mr_pasien d ON c.id_catatan_medik=d.id_catatan_medik
WHERE  c.iol=inIol AND b.radiologi=inIdRujukan  AND c.tanggal BETWEEN inTglAwal AND inTglAkhir;
END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRoUpdateNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRoUpdateNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRoUpdateNota`(inIdRoTrn CHAR(8),inTotal INT(8))
BEGIN
    UPDATE  ro_trn SET biaya=inTotal WHERE id_ro_trn=inIdRoTrn;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `spSep` */

/*!50003 DROP PROCEDURE IF EXISTS  `spSep` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spSep`(inSep CHAR(20),inIdRegister CHAR(8),inIdCatatanMedik CHAR(8))
BEGIN
DELETE FROM sep_tmp;
INSERT INTO sep_tmp (no_kpsta,id_register,id_catatan_medik)
 VALUES (inSep,inIdRegister,inIdCatatanMedik);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateTglLahir` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateTglLahir` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateTglLahir`(inIdCatatanMedik CHAR(8),inIdRegister INT,inIdAsuransi INT,inIdUnit INT)
BEGIN
DECLARE vTglLahir CHAR(10);
  DECLARE tahun,bulan,hari INT;
    DECLARE umur CHAR(20);
SELECT tgl_lahir FROM mr_pasien WHERE id_catatan_medik=inIdCatatanMedik INTO vTglLahir;
    
    
 SELECT   FLOOR(DATEDIFF(CURDATE(),vTgllahir)/365) years
            , FLOOR((DATEDIFF(CURDATE(),vTgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),vTgllahir)/365))* 12) months
            , CEILING((((DATEDIFF(CURDATE(),vTgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),vTgllahir)/365))* 12)
            - FLOOR((DATEDIFF(CURDATE(),vTgllahir)/365 - FLOOR(DATEDIFF(CURDATE(),vTgllahir)/365))* 12))* 30) days INTO tahun,bulan,hari;       
    
      
      UPDATE mr_bl SET umur_th=tahun,umur_bln=bulan,umur_hr=hari,id_asuransi=inIdAsuransi WHERE id_catatan_medik=inIdCatatanMedik AND id_register LIKE inIdRegister;
      UPDATE ksr_trn SET id_asuransi=inIdAsuransi,id_unit=inIdUnit WHERE id_register=inIdRegister;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spWaktu` */

/*!50003 DROP PROCEDURE IF EXISTS  `spWaktu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spWaktu`()
BEGIN
DECLARE vTgl CHAR(10);
SELECT DATE_SUB(NOW(),INTERVAL 1 DAY) INTO vTgl;
    UPDATE waktu SET tanggal=CURRENT_DATE(),jam=CURRENT_TIME(),tanggal_date=CURRENT_DATE(),jam_time=CURRENT_TIME(),
    tgl_sensus=vTgl;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_insert_mr_log_pasien_inap` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_insert_mr_log_pasien_inap` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_mr_log_pasien_inap`(inKelas CHAR(5),inIdcatatanMedik INT,inIdRegister INT,inIdUnit INT,inIdPetugas INT,inIdAsuransi INT,inIcd CHAR(10),InNoBed CHAR(3))
BEGIN
       INSERT INTO mr_log_pasien_inap (id_catatan_medik,id_register,id_unit,id_petugas,id_asuransi) VALUES
       (inIdCatatanMedik,inIdRegister,inIdUnit,inIdPetugas,inIdAsuransi);
       UPDATE mr_pasien SET jam_inap=CURTIME(),tgl_inap=CURDATE()  WHERE id_catatan_medik=inIdCatatanMedik;
       UPDATE mr_bl SET iol=2 WHERE id_register=inIdRegister;
       UPDATE ksr_trn SET iol=2,tgl_inap=CURDATE(),jam_inap=CURTIME(),id_unit=inIdUnit,id_asuransi=inIdAsuransi,kelas=inKelas 
       WHERE id_register=inIdRegister;
       UPDATE igd_register SET icd=inIcd WHERE id_register=inIdRegister;
       UPDATE mr_tt SET id_register=inIdRegister WHERE kelas =inKelas AND no_bed=inNoBed AND id_unit=inIdUnit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mr_lama` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mr_lama` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mr_lama`(inIdCatatanMedik int)
BEGIN
     declare vlama int;     
     declare vTglAwal date;
     declare vTglPulang date;
     
     select tgl_kunjungan,tgl_pulang from mr_pasien where id_catatan_medik=inIdCatatanMedik into vTglAwal,vTglPulang;
     select datediff(vTglPulang,vTglAwal) into vlama;
     update mr_lama set lama=vlama;
     
     
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mr_log_edit_cm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mr_log_edit_cm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mr_log_edit_cm`(inIdPasien INT, inIdCmLama INT,inIdCmBaru INT,
inNamaLama CHAR(50),inNamaBaru CHAR(50),inAlamatLama CHAR(50),inAlamatbaru CHAR(50),
inIdPetugas INT,inIdRegisterLama INT,inIdRegisterBaru INT)
BEGIN
declare vKelas char(1);
declare vUnit char(4);
declare vAsuransi char(4);
INSERT INTO mr_log_edit_cm (id_pasien,id_catatan_medik_lama,id_catatan_medik_baru,nama_lama,nama_baru,alamat_lama,alamat_baru,id_petugas,id_register_lama,id_register_baru)
 VALUES (inIdPasien, inIdCmLama,inIdCmBaru,inNamaLama,inNamaBaru,inAlamatLama ,inAlamatbaru,inIdPetugas,inIdRegisterLama,inIdRegisterBaru);
 select id_unit,id_asuransi,kelas from mr_pasien where id_register=inIdRegisterBaru into
 vUnit,vAsuransi,vKelas;
 update ksr_trn set id_unit=vUnit,id_asuransi=vAsuransi,kelas=vKelas where id_register=inIdRegisterBaru;
 update mr_bl SET id_unit=vUnit,id_asuransi=vAsuransi WHERE id_register=inIdRegisterBaru;
END */$$
DELIMITER ;

/*Table structure for table `vBangsalAntrianKamar` */

DROP TABLE IF EXISTS `vBangsalAntrianKamar`;

/*!50001 DROP VIEW IF EXISTS `vBangsalAntrianKamar` */;
/*!50001 DROP TABLE IF EXISTS `vBangsalAntrianKamar` */;

/*!50001 CREATE TABLE  `vBangsalAntrianKamar`(
 `id_bangsal_antrian_kamar` int(11) ,
 `nama` char(40) ,
 `alamat` char(60) ,
 `tanggal` date ,
 `jam` char(8) ,
 `no_bed` char(3) ,
 `nama_unit` char(30) ,
 `nama_sex` varchar(18) ,
 `telpon` char(20) 
)*/;

/*Table structure for table `v_bangsal_icd` */

DROP TABLE IF EXISTS `v_bangsal_icd`;

/*!50001 DROP VIEW IF EXISTS `v_bangsal_icd` */;
/*!50001 DROP TABLE IF EXISTS `v_bangsal_icd` */;

/*!50001 CREATE TABLE  `v_bangsal_icd`(
 `id_bangsal_diagnosa` int(11) ,
 `icd` char(10) ,
 `diagnosa` varchar(150) ,
 `catatan` char(200) ,
 `ke` int(11) ,
 `id_register` int(11) 
)*/;

/*Table structure for table `v_bangsal_icd9` */

DROP TABLE IF EXISTS `v_bangsal_icd9`;

/*!50001 DROP VIEW IF EXISTS `v_bangsal_icd9` */;
/*!50001 DROP TABLE IF EXISTS `v_bangsal_icd9` */;

/*!50001 CREATE TABLE  `v_bangsal_icd9`(
 `id_bangsal_diagnosa` int(11) ,
 `icd` char(10) ,
 `diagnosa` varchar(150) ,
 `catatan` char(200) ,
 `ke` char(15) ,
 `id_register` int(11) 
)*/;

/*Table structure for table `v_data_pegawai` */

DROP TABLE IF EXISTS `v_data_pegawai`;

/*!50001 DROP VIEW IF EXISTS `v_data_pegawai` */;
/*!50001 DROP TABLE IF EXISTS `v_data_pegawai` */;

/*!50001 CREATE TABLE  `v_data_pegawai`(
 `nik` char(30) ,
 `nama` char(60) ,
 `alamat` char(50) ,
 `tempat` char(30) ,
 `tgl_lahir` date ,
 `jenis_kelamin` varchar(1) ,
 `tanggal_masuk` date ,
 `tanggal_keluar` date ,
 `nama_jabatan` char(40) ,
 `nama_aplikasi` char(40) ,
 `nama_status` char(20) ,
 `nomor_str` char(50) ,
 `nomor_sip` char(50) ,
 `fungsional` char(40) ,
 `profesi` char(40) ,
 `pendidikan_terakhir` char(40) ,
 `jurusan` char(40) ,
 `tahun_lulus` int(11) ,
 `nama_unit` char(30) ,
 `nama_user` char(20) 
)*/;

/*Table structure for table `v_desa` */

DROP TABLE IF EXISTS `v_desa`;

/*!50001 DROP VIEW IF EXISTS `v_desa` */;
/*!50001 DROP TABLE IF EXISTS `v_desa` */;

/*!50001 CREATE TABLE  `v_desa`(
 `id_desa` int(11) ,
 `kode_kecamatan` int(11) ,
 `kode_desa` int(11) ,
 `nama_desa` char(60) ,
 `nama_kecamatan` char(60) 
)*/;

/*Table structure for table `v_far_copy_resep` */

DROP TABLE IF EXISTS `v_far_copy_resep`;

/*!50001 DROP VIEW IF EXISTS `v_far_copy_resep` */;
/*!50001 DROP TABLE IF EXISTS `v_far_copy_resep` */;

/*!50001 CREATE TABLE  `v_far_copy_resep`(
 `id_far_det_trn` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_far_trn` int(11) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_obat` char(100) ,
 `qty` double ,
 `idx` double ,
 `harga` int(11) ,
 `subtotal` double ,
 `id_obat` int(11) ,
 `rawat` varchar(11) ,
 `dosis` varchar(77) ,
 `id_far_satuan_minum` int(11) ,
 `nama_unit` char(30) ,
 `id_register` int(8) ,
 `id_catatan_medik` int(8) ,
 `nama_dokter` char(50) 
)*/;

/*Table structure for table `v_far_daftar_nota` */

DROP TABLE IF EXISTS `v_far_daftar_nota`;

/*!50001 DROP VIEW IF EXISTS `v_far_daftar_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_far_daftar_nota` */;

/*!50001 CREATE TABLE  `v_far_daftar_nota`(
 `lunas` varchar(14) ,
 `id_far_trn` int(10) ,
 `id_catatan_medik` int(8) ,
 `id_register` int(8) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama` varchar(70) ,
 `alamat` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `kelas` char(5) ,
 `biaya` int(11) ,
 `id_unit` int(11) ,
 `id_asuransi` int(11) ,
 `id_dokter` int(11) ,
 `nama_dokter` char(50) ,
 `poli_inap` int(1) ,
 `val_farmasi` varchar(17) ,
 `alergi` varchar(9) ,
 `diskon` bigint(11) ,
 `grand_total` decimal(25,4) 
)*/;

/*Table structure for table `v_far_daftar_obat` */

DROP TABLE IF EXISTS `v_far_daftar_obat`;

/*!50001 DROP VIEW IF EXISTS `v_far_daftar_obat` */;
/*!50001 DROP TABLE IF EXISTS `v_far_daftar_obat` */;

/*!50001 CREATE TABLE  `v_far_daftar_obat`(
 `no_urut` int(10) ,
 `nama` char(100) ,
 `harga_pokok` int(11) ,
 `harga_beli` int(11) ,
 `harga_jual` int(11) ,
 `stok_inap` double ,
 `stok_poli` double ,
 `satuan` varchar(50) ,
 `nama_asuransi` char(30) ,
 `asuransi` int(11) 
)*/;

/*Table structure for table `v_far_daftar_sp_inap` */

DROP TABLE IF EXISTS `v_far_daftar_sp_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_daftar_sp_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_daftar_sp_inap` */;

/*!50001 CREATE TABLE  `v_far_daftar_sp_inap`(
 `id_no_sp` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama` char(40) ,
 `petugas` char(60) ,
 `id_suplier` int(3) ,
 `id_petugas` int(11) ,
 `tanggal_tempo` date ,
 `tanggal_terima` date ,
 `tanggal_faktur` date ,
 `faktur` varchar(40) ,
 `pembayaran` int(1) ,
 `id_penerima` int(11) ,
 `total` bigint(11) ,
 `jumlah` int(11) ,
 `meterai` int(11) ,
 `valid_keu` varchar(14) 
)*/;

/*Table structure for table `v_far_daftar_sp_poli` */

DROP TABLE IF EXISTS `v_far_daftar_sp_poli`;

/*!50001 DROP VIEW IF EXISTS `v_far_daftar_sp_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_far_daftar_sp_poli` */;

/*!50001 CREATE TABLE  `v_far_daftar_sp_poli`(
 `id_no_sp` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama` char(40) ,
 `petugas` char(60) ,
 `id_suplier` int(3) ,
 `id_petugas` int(11) ,
 `tanggal_tempo` date ,
 `tanggal_terima` date ,
 `tanggal_faktur` date ,
 `faktur` varchar(40) ,
 `pembayaran` int(1) ,
 `id_penerima` int(11) ,
 `total` bigint(11) ,
 `jumlah` int(11) ,
 `meterai` int(11) ,
 `valid_keu` varchar(14) 
)*/;

/*Table structure for table `v_far_daftar_trn_stok_keluar` */

DROP TABLE IF EXISTS `v_far_daftar_trn_stok_keluar`;

/*!50001 DROP VIEW IF EXISTS `v_far_daftar_trn_stok_keluar` */;
/*!50001 DROP TABLE IF EXISTS `v_far_daftar_trn_stok_keluar` */;

/*!50001 CREATE TABLE  `v_far_daftar_trn_stok_keluar`(
 `id_far_stok_keluar` int(11) ,
 `id_far_det_trn_stok_keluar` int(11) ,
 `unt` char(30) ,
 `tgl` timestamp ,
 `id_pemesan` int(3) ,
 `poli` char(30) ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `permintaan` int(11) ,
 `id_satuan` int(3) ,
 `jumlah` int(11) ,
 `id_unit` int(3) ,
 `iol` int(1) ,
 `satuan_jual` varchar(50) ,
 `penuhi` varchar(14) 
)*/;

/*Table structure for table `v_far_depo` */

DROP TABLE IF EXISTS `v_far_depo`;

/*!50001 DROP VIEW IF EXISTS `v_far_depo` */;
/*!50001 DROP TABLE IF EXISTS `v_far_depo` */;

/*!50001 CREATE TABLE  `v_far_depo`(
 `nama` char(100) ,
 `nama_kel` char(30) ,
 `harga_pokok` int(11) ,
 `stok_inap` double ,
 `batas_stok_inap` int(11) ,
 `stok_poli` double ,
 `batas_stok_poli` int(11) 
)*/;

/*Table structure for table `v_far_det_trn_stok_keluar` */

DROP TABLE IF EXISTS `v_far_det_trn_stok_keluar`;

/*!50001 DROP VIEW IF EXISTS `v_far_det_trn_stok_keluar` */;
/*!50001 DROP TABLE IF EXISTS `v_far_det_trn_stok_keluar` */;

/*!50001 CREATE TABLE  `v_far_det_trn_stok_keluar`(
 `id_far_det_trn_stok_keluar` int(11) ,
 `id_barang` int(8) ,
 `jumlah` int(11) ,
 `id_trn` int(11) ,
 `nama_satuan` varchar(50) ,
 `permintaan` int(11) ,
 `nama` char(100) ,
 `nama_far_asuransi` char(30) 
)*/;

/*Table structure for table `v_far_detil_retur_inap` */

DROP TABLE IF EXISTS `v_far_detil_retur_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_detil_retur_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_detil_retur_inap` */;

/*!50001 CREATE TABLE  `v_far_detil_retur_inap`(
 `id_detil_retur_inap` int(11) ,
 `no_sp` int(11) ,
 `id_retur_inap` int(11) ,
 `batch` char(20) ,
 `id_barang` int(11) ,
 `nama` char(100) ,
 `qty` int(11) ,
 `harga_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `catatan` char(150) ,
 `diskon` int(11) ,
 `ppn` int(11) ,
 `total` decimal(26,4) 
)*/;

/*Table structure for table `v_far_detil_retur_poli` */

DROP TABLE IF EXISTS `v_far_detil_retur_poli`;

/*!50001 DROP VIEW IF EXISTS `v_far_detil_retur_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_far_detil_retur_poli` */;

/*!50001 CREATE TABLE  `v_far_detil_retur_poli`(
 `id_detil_retur_poli` int(11) ,
 `no_sp` int(11) ,
 `id_retur_poli` int(11) ,
 `batch` char(20) ,
 `id_barang` int(11) ,
 `nama` char(100) ,
 `qty` int(11) ,
 `harga_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `catatan` char(150) ,
 `diskon` int(11) ,
 `ppn` int(11) ,
 `total` decimal(36,4) 
)*/;

/*Table structure for table `v_far_faktur_inap` */

DROP TABLE IF EXISTS `v_far_faktur_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_faktur_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_faktur_inap` */;

/*!50001 CREATE TABLE  `v_far_faktur_inap`(
 `id_no_sp` int(11) ,
 `nama_suplier` char(40) ,
 `jumlah` int(11) ,
 `disc` int(11) ,
 `meterai` int(11) ,
 `ppn` int(11) ,
 `total` int(11) ,
 `tanggal_faktur` date ,
 `faktur` char(40) ,
 `aksi` varchar(14) ,
 `valid_keu` int(1) 
)*/;

/*Table structure for table `v_far_faktur_inap_cetak` */

DROP TABLE IF EXISTS `v_far_faktur_inap_cetak`;

/*!50001 DROP VIEW IF EXISTS `v_far_faktur_inap_cetak` */;
/*!50001 DROP TABLE IF EXISTS `v_far_faktur_inap_cetak` */;

/*!50001 CREATE TABLE  `v_far_faktur_inap_cetak`(
 `id_no_sp` int(11) ,
 `nama_suplier` char(40) ,
 `jumlah` int(11) ,
 `disc` int(11) ,
 `meterai` int(11) ,
 `ppn` int(11) ,
 `total` int(11) ,
 `tanggal_faktur` date ,
 `faktur` char(40) ,
 `id_suplier` int(3) ,
 `aksi` varchar(14) ,
 `valid_keu` int(1) 
)*/;

/*Table structure for table `v_far_faktur_poli` */

DROP TABLE IF EXISTS `v_far_faktur_poli`;

/*!50001 DROP VIEW IF EXISTS `v_far_faktur_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_far_faktur_poli` */;

/*!50001 CREATE TABLE  `v_far_faktur_poli`(
 `id_no_sp` int(11) ,
 `nama_suplier` char(40) ,
 `jumlah` int(11) ,
 `disc` int(11) ,
 `meterai` int(11) ,
 `ppn` int(11) ,
 `total` int(11) ,
 `tanggal_faktur` date ,
 `faktur` char(40) ,
 `aksi` varchar(14) ,
 `valid_keu` int(1) 
)*/;

/*Table structure for table `v_far_faktur_poli_cetak` */

DROP TABLE IF EXISTS `v_far_faktur_poli_cetak`;

/*!50001 DROP VIEW IF EXISTS `v_far_faktur_poli_cetak` */;
/*!50001 DROP TABLE IF EXISTS `v_far_faktur_poli_cetak` */;

/*!50001 CREATE TABLE  `v_far_faktur_poli_cetak`(
 `id_no_sp` int(11) ,
 `nama_suplier` char(40) ,
 `jumlah` int(11) ,
 `disc` int(11) ,
 `meterai` int(11) ,
 `ppn` int(11) ,
 `total` int(11) ,
 `tanggal_faktur` date ,
 `faktur` char(40) ,
 `id_suplier` int(3) ,
 `aksi` varchar(14) ,
 `valid_keu` int(1) 
)*/;

/*Table structure for table `v_far_lap_pembelian` */

DROP TABLE IF EXISTS `v_far_lap_pembelian`;

/*!50001 DROP VIEW IF EXISTS `v_far_lap_pembelian` */;
/*!50001 DROP TABLE IF EXISTS `v_far_lap_pembelian` */;

/*!50001 CREATE TABLE  `v_far_lap_pembelian`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `tanggal_faktur` date ,
 `tanggal_tempo` date ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `nama_suplier` char(40) ,
 `qty` int(11) ,
 `harga_beli` int(11) ,
 `disc` double ,
 `meterai` int(11) ,
 `faktur` char(40) ,
 `hpp` double ,
 `ppn` double(17,0) ,
 `sub_total` double(17,0) ,
 `grand_total` double 
)*/;

/*Table structure for table `v_far_lap_pembelian_inap` */

DROP TABLE IF EXISTS `v_far_lap_pembelian_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_lap_pembelian_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_lap_pembelian_inap` */;

/*!50001 CREATE TABLE  `v_far_lap_pembelian_inap`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `tanggal_faktur` date ,
 `tanggal_tempo` date ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `nama_suplier` char(40) ,
 `qty` int(11) ,
 `harga_beli` int(11) ,
 `disc` double ,
 `meterai` int(11) ,
 `faktur` char(40) ,
 `hpp` double ,
 `ppn` double(17,0) ,
 `sub_total` double(17,0) ,
 `grand_total` double 
)*/;

/*Table structure for table `v_far_per_obat` */

DROP TABLE IF EXISTS `v_far_per_obat`;

/*!50001 DROP VIEW IF EXISTS `v_far_per_obat` */;
/*!50001 DROP TABLE IF EXISTS `v_far_per_obat` */;

/*!50001 CREATE TABLE  `v_far_per_obat`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `tanggal` date ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `faktur` char(40) ,
 `batch` char(20) ,
 `qty` int(11) ,
 `harga_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `isi` int(11) ,
 `disc` double ,
 `hp` int(11) ,
 `harga_jual` int(11) ,
 `nama_suplier` char(40) 
)*/;

/*Table structure for table `v_far_per_obat_inap` */

DROP TABLE IF EXISTS `v_far_per_obat_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_per_obat_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_per_obat_inap` */;

/*!50001 CREATE TABLE  `v_far_per_obat_inap`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `tanggal` date ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `faktur` char(40) ,
 `batch` char(20) ,
 `qty` int(11) ,
 `harga_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `isi` int(11) ,
 `disc` double ,
 `hp` int(11) ,
 `harga_jual` int(11) ,
 `nama_suplier` char(40) 
)*/;

/*Table structure for table `v_far_pinajm_obat` */

DROP TABLE IF EXISTS `v_far_pinajm_obat`;

/*!50001 DROP VIEW IF EXISTS `v_far_pinajm_obat` */;
/*!50001 DROP TABLE IF EXISTS `v_far_pinajm_obat` */;

/*!50001 CREATE TABLE  `v_far_pinajm_obat`(
 `id_pinjam_obat` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `poli_inap` int(1) ,
 `id_barang` int(11) ,
 `nama` char(100) ,
 `jumlah` int(11) ,
 `nama_asal` char(40) ,
 `nama_tujuan` char(40) ,
 `nama_satuan_beli` varchar(50) ,
 `nama_satuan_jual` varchar(50) ,
 `asal` int(11) ,
 `tujuan` int(11) ,
 `id_petugas` int(11) ,
 `keterangan` char(100) ,
 `satuan` varchar(50) ,
 `nama_petugas` char(60) 
)*/;

/*Table structure for table `v_far_pinjam_obat` */

DROP TABLE IF EXISTS `v_far_pinjam_obat`;

/*!50001 DROP VIEW IF EXISTS `v_far_pinjam_obat` */;
/*!50001 DROP TABLE IF EXISTS `v_far_pinjam_obat` */;

/*!50001 CREATE TABLE  `v_far_pinjam_obat`(
 `id_pinjam_obat` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `poli_inap` int(1) ,
 `id_barang` int(11) ,
 `nama` char(100) ,
 `jumlah` int(11) ,
 `nama_asal` char(40) ,
 `nama_tujuan` char(40) ,
 `nama_satuan_beli` varchar(50) ,
 `nama_satuan_jual` varchar(50) ,
 `asal` int(11) ,
 `tujuan` int(11) ,
 `id_petugas` int(11) ,
 `keterangan` char(100) ,
 `kembali` int(11) ,
 `satuan` varchar(50) ,
 `nama_petugas` char(60) 
)*/;

/*Table structure for table `v_far_retur_inap` */

DROP TABLE IF EXISTS `v_far_retur_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_retur_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_retur_inap` */;

/*!50001 CREATE TABLE  `v_far_retur_inap`(
 `id_retur_inap` int(11) ,
 `faktur` char(30) ,
 `id_no_sp` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_pegawai` int(11) ,
 `nama_petugas` char(60) ,
 `nama_suplier` char(40) ,
 `tanggal_faktur` date ,
 `total` int(11) ,
 `id_far_suplier` int(11) 
)*/;

/*Table structure for table `v_far_retur_poli` */

DROP TABLE IF EXISTS `v_far_retur_poli`;

/*!50001 DROP VIEW IF EXISTS `v_far_retur_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_far_retur_poli` */;

/*!50001 CREATE TABLE  `v_far_retur_poli`(
 `id_retur_poli` int(11) ,
 `faktur` char(30) ,
 `id_no_sp` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_pegawai` int(11) ,
 `nama_petugas` char(60) ,
 `nama_suplier` char(40) ,
 `tanggal_faktur` date ,
 `total` int(11) ,
 `id_far_suplier` int(11) 
)*/;

/*Table structure for table `v_far_satuan_jual` */

DROP TABLE IF EXISTS `v_far_satuan_jual`;

/*!50001 DROP VIEW IF EXISTS `v_far_satuan_jual` */;
/*!50001 DROP TABLE IF EXISTS `v_far_satuan_jual` */;

/*!50001 CREATE TABLE  `v_far_satuan_jual`(
 `nama` varchar(50) ,
 `id_satuan` int(11) 
)*/;

/*Table structure for table `v_far_sp_cetak` */

DROP TABLE IF EXISTS `v_far_sp_cetak`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_cetak` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_cetak` */;

/*!50001 CREATE TABLE  `v_far_sp_cetak`(
 `id_no_sp` int(11) ,
 `id_det_no_sp` int(11) ,
 `nama` char(100) ,
 `isi` int(11) ,
 `nama_satuan_beli` varchar(50) ,
 `nama_suplier` char(40) ,
 `id_barang` int(8) ,
 `qty` int(11) ,
 `tgl_pesan` date ,
 `petugas_pesan` char(60) ,
 `asuransi` int(11) ,
 `faktur` char(40) ,
 `tanggal_faktur` date ,
 `tanggal_tempo` date ,
 `iol` varchar(4) ,
 `penerima` char(60) ,
 `batch` char(20) ,
 `harga_beli` int(11) ,
 `disc` double ,
 `sub_total` double ,
 `total` int(11) ,
 `ppn` int(11) ,
 `meterai` int(11) ,
 `jumlah` int(11) 
)*/;

/*Table structure for table `v_far_sp_cetak_inap` */

DROP TABLE IF EXISTS `v_far_sp_cetak_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_cetak_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_cetak_inap` */;

/*!50001 CREATE TABLE  `v_far_sp_cetak_inap`(
 `id_no_sp` int(11) ,
 `id_det_no_sp` int(11) ,
 `nama` char(100) ,
 `isi` int(11) ,
 `nama_satuan_beli` varchar(50) ,
 `nama_suplier` char(40) ,
 `id_barang` int(8) ,
 `qty` int(11) ,
 `tgl_pesan` date ,
 `petugas_pesan` char(60) ,
 `asuransi` int(11) ,
 `faktur` char(40) ,
 `tanggal_faktur` date ,
 `tanggal_tempo` date ,
 `iol` varchar(4) ,
 `penerima` char(60) ,
 `batch` char(20) ,
 `harga_beli` int(11) ,
 `disc` double ,
 `sub_total` double ,
 `total` int(11) ,
 `ppn` int(11) ,
 `meterai` int(11) ,
 `jumlah` int(11) 
)*/;

/*Table structure for table `v_far_sp_detil_inap` */

DROP TABLE IF EXISTS `v_far_sp_detil_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_inap` */;

/*!50001 CREATE TABLE  `v_far_sp_detil_inap`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `batch` char(20) ,
 `qty` int(11) ,
 `harga_beli_tmp` int(11) ,
 `hp` int(11) ,
 `harga_beli_suplier` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `id_satuan_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `faktur` char(30) ,
 `tgl_ed` date ,
 `stok_poli` double ,
 `asuransi` int(11) ,
 `nama_far_asuransi` char(30) ,
 `sub_total` double ,
 `total` double ,
 `kirim` varchar(14) ,
 `harga_jual` int(11) ,
 `isi` int(11) ,
 `ppn` int(11) ,
 `margin` int(11) ,
 `ppn_keluaran` int(11) ,
 `id_suplier` int(3) ,
 `nama_suplier` char(40) 
)*/;

/*Table structure for table `v_far_sp_detil_inap_retur` */

DROP TABLE IF EXISTS `v_far_sp_detil_inap_retur`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_inap_retur` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_inap_retur` */;

/*!50001 CREATE TABLE  `v_far_sp_detil_inap_retur`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `batch` char(20) ,
 `qty` int(11) ,
 `harga_beli_tmp` int(11) ,
 `hp` int(11) ,
 `harga_beli_suplier` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `id_satuan_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `tgl_ed` date ,
 `stok_inap` double ,
 `asuransi` int(11) ,
 `nama_far_asuransi` char(30) ,
 `sub_total` double ,
 `total` double ,
 `kirim` varchar(14) ,
 `harga_jual` int(11) ,
 `isi` int(11) ,
 `ppn` int(11) ,
 `margin` int(11) ,
 `id_suplier` int(3) ,
 `faktur` char(40) 
)*/;

/*Table structure for table `v_far_sp_detil_poli` */

DROP TABLE IF EXISTS `v_far_sp_detil_poli`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_poli` */;

/*!50001 CREATE TABLE  `v_far_sp_detil_poli`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `batch` char(20) ,
 `qty` int(11) ,
 `harga_beli_tmp` int(11) ,
 `hp` int(11) ,
 `harga_beli_suplier` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `id_satuan_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `faktur` char(30) ,
 `tgl_ed` date ,
 `stok_poli` double ,
 `asuransi` int(11) ,
 `nama_far_asuransi` char(30) ,
 `sub_total` double ,
 `total` double ,
 `kirim` varchar(14) ,
 `harga_jual` int(11) ,
 `isi` int(11) ,
 `ppn` int(11) ,
 `margin` int(11) ,
 `ppn_keluaran` int(11) ,
 `id_suplier` int(3) ,
 `nama_suplier` char(40) 
)*/;

/*Table structure for table `v_far_sp_detil_poli_retur` */

DROP TABLE IF EXISTS `v_far_sp_detil_poli_retur`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_poli_retur` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_poli_retur` */;

/*!50001 CREATE TABLE  `v_far_sp_detil_poli_retur`(
 `id_det_no_sp` int(11) ,
 `no_sp` int(11) ,
 `id_barang` int(8) ,
 `nama` char(100) ,
 `batch` char(20) ,
 `qty` int(11) ,
 `harga_beli_tmp` int(11) ,
 `hp` int(11) ,
 `harga_beli_suplier` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `id_satuan_beli` int(11) ,
 `satuan_beli` varchar(50) ,
 `tgl_ed` date ,
 `stok_poli` double ,
 `asuransi` int(11) ,
 `nama_far_asuransi` char(30) ,
 `sub_total` double ,
 `total` double ,
 `kirim` varchar(14) ,
 `harga_jual` int(11) ,
 `isi` int(11) ,
 `ppn` int(11) ,
 `margin` int(11) ,
 `id_suplier` int(3) ,
 `faktur` char(40) ,
 `nama_suplier` char(40) 
)*/;

/*Table structure for table `v_far_sp_total` */

DROP TABLE IF EXISTS `v_far_sp_total`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_total` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_total` */;

/*!50001 CREATE TABLE  `v_far_sp_total`(
 `no_sp` int(11) ,
 `sub_total_sp` double ,
 `sub_total` double ,
 `total` double 
)*/;

/*Table structure for table `v_far_sp_total_inap` */

DROP TABLE IF EXISTS `v_far_sp_total_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_sp_total_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_sp_total_inap` */;

/*!50001 CREATE TABLE  `v_far_sp_total_inap`(
 `no_sp` int(11) ,
 `sub_total_sp` double ,
 `sub_total` double ,
 `total` double 
)*/;

/*Table structure for table `v_far_stok` */

DROP TABLE IF EXISTS `v_far_stok`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok` */;

/*!50001 CREATE TABLE  `v_far_stok`(
 `nama` char(100) ,
 `no_urut` int(10) ,
 `satuan_beli` varchar(50) ,
 `satuan_jual` varchar(50) 
)*/;

/*Table structure for table `v_far_stok_all` */

DROP TABLE IF EXISTS `v_far_stok_all`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok_all` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok_all` */;

/*!50001 CREATE TABLE  `v_far_stok_all`(
 `no_urut` int(10) ,
 `batch` char(20) ,
 `nama` char(100) ,
 `nama_kel` char(30) ,
 `nama_suplier` char(40) ,
 `nama_generik` char(20) ,
 `nama_kode_lain` char(30) ,
 `nama_far_asuransi` char(30) ,
 `stok_poli` double ,
 `stok_inap` double ,
 `nama_satuan_beli` varchar(50) ,
 `nama_satuan_jual` varchar(50) ,
 `isi` int(11) ,
 `harga_beli` int(11) ,
 `harga_pokok` int(11) ,
 `disc` double ,
 `harga_jual` int(11) ,
 `nama_pabrik` char(30) 
)*/;

/*Table structure for table `v_far_stok_elk` */

DROP TABLE IF EXISTS `v_far_stok_elk`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok_elk` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok_elk` */;

/*!50001 CREATE TABLE  `v_far_stok_elk`(
 `id_far_stok_elk` int(11) ,
 `nama` char(100) ,
 `ket_stok` char(20) ,
 `masuk` decimal(10,2) ,
 `keluar` decimal(10,2) ,
 `sisa` decimal(10,2) ,
 `nama_satuan` varchar(50) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_register` int(8) ,
 `id_trn` int(11) ,
 `id_petugas` int(11) ,
 `id_barang` int(11) ,
 `nama_unit` char(30) 
)*/;

/*Table structure for table `v_far_stok_inap` */

DROP TABLE IF EXISTS `v_far_stok_inap`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok_inap` */;

/*!50001 CREATE TABLE  `v_far_stok_inap`(
 `nama` char(100) ,
 `kel` int(3) ,
 `harga_pokok` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `harga_jual` int(11) ,
 `batas` int(11) ,
 `suplier` int(3) ,
 `pabrik` int(30) ,
 `isi` int(11) ,
 `satuan` int(10) ,
 `generik` int(1) ,
 `kode_lain` int(3) ,
 `petugas` int(11) ,
 `tanggal` timestamp ,
 `batch` char(20) ,
 `tgl_ed` date ,
 `inorder` int(2) ,
 `no_urut` int(10) ,
 `stok_inap` double ,
 `batas_stok_inap` int(11) ,
 `stok_poli` double ,
 `batas_stok_poli` int(11) ,
 `tuslah` int(11) ,
 `asuransi` int(11) ,
 `satuan_beli` varchar(50) ,
 `filter_inap` int(1) ,
 `Filter_poli` int(1) ,
 `harga` int(11) ,
 `id_satuan_beli` int(11) ,
 `nama_far_asuransi` char(30) ,
 `stok_depo_inap` int(11) ,
 `satuan_jual` varchar(50) 
)*/;

/*Table structure for table `v_far_stok_inap_lab` */

DROP TABLE IF EXISTS `v_far_stok_inap_lab`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok_inap_lab` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok_inap_lab` */;

/*!50001 CREATE TABLE  `v_far_stok_inap_lab`(
 `nama` char(100) ,
 `kel` int(3) ,
 `harga_pokok` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `harga_jual` int(11) ,
 `batas` int(11) ,
 `suplier` int(3) ,
 `pabrik` int(30) ,
 `isi` int(11) ,
 `satuan` int(10) ,
 `generik` int(1) ,
 `kode_lain` int(3) ,
 `petugas` int(11) ,
 `batch` char(20) ,
 `inorder` int(2) ,
 `no_urut` int(10) ,
 `stok_inap` double ,
 `batas_stok_inap` int(11) ,
 `stok_poli` double ,
 `batas_stok_poli` int(11) ,
 `tuslah` int(11) ,
 `asuransi` int(11) ,
 `satuan_beli` varchar(50) ,
 `filter_inap` int(1) ,
 `Filter_poli` int(1) ,
 `harga` int(11) ,
 `id_satuan_beli` int(11) ,
 `nama_far_asuransi` char(30) ,
 `satuan_jual` varchar(50) 
)*/;

/*Table structure for table `v_far_stok_opname` */

DROP TABLE IF EXISTS `v_far_stok_opname`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok_opname` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok_opname` */;

/*!50001 CREATE TABLE  `v_far_stok_opname`(
 `no_urut` int(10) ,
 `batch` char(20) ,
 `nama` char(100) ,
 `nama_kel` char(30) ,
 `nama_satuan` varchar(50) ,
 `nama_generik` char(20) ,
 `stok_poli` double ,
 `stok_inap` double ,
 `nama_far_asuransi` char(30) ,
 `nama_suplier` char(40) ,
 `isi` int(11) ,
 `harga_beli` int(11) ,
 `harga_pokok` int(11) ,
 `disc` double ,
 `harga_jual` int(11) 
)*/;

/*Table structure for table `v_far_stok_poli` */

DROP TABLE IF EXISTS `v_far_stok_poli`;

/*!50001 DROP VIEW IF EXISTS `v_far_stok_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_far_stok_poli` */;

/*!50001 CREATE TABLE  `v_far_stok_poli`(
 `nama` char(100) ,
 `kel` int(3) ,
 `harga_pokok` int(11) ,
 `disc` double ,
 `harga_beli` int(11) ,
 `harga_jual` int(11) ,
 `batas` int(11) ,
 `suplier` int(3) ,
 `pabrik` int(30) ,
 `isi` int(11) ,
 `satuan` int(10) ,
 `generik` int(1) ,
 `kode_lain` int(3) ,
 `petugas` int(11) ,
 `tanggal` timestamp ,
 `batch` char(20) ,
 `tgl_ed` date ,
 `inorder` int(2) ,
 `no_urut` int(10) ,
 `stok_inap` double ,
 `batas_stok_inap` int(11) ,
 `stok_poli` double ,
 `batas_stok_poli` int(11) ,
 `tuslah` int(11) ,
 `asuransi` int(11) ,
 `satuan_beli` varchar(50) ,
 `filter_inap` int(1) ,
 `Filter_poli` int(1) ,
 `harga` int(11) ,
 `id_satuan_beli` int(11) ,
 `nama_far_asuransi` char(30) ,
 `stok_depo_poli` int(11) ,
 `stok_depo_inap` int(11) ,
 `satuan_jual` varchar(50) 
)*/;

/*Table structure for table `v_far_total` */

DROP TABLE IF EXISTS `v_far_total`;

/*!50001 DROP VIEW IF EXISTS `v_far_total` */;
/*!50001 DROP TABLE IF EXISTS `v_far_total` */;

/*!50001 CREATE TABLE  `v_far_total`(
 `subtotal` double ,
 `diskon` double ,
 `id_far_trn` int(11) 
)*/;

/*Table structure for table `v_far_total_fix` */

DROP TABLE IF EXISTS `v_far_total_fix`;

/*!50001 DROP VIEW IF EXISTS `v_far_total_fix` */;
/*!50001 DROP TABLE IF EXISTS `v_far_total_fix` */;

/*!50001 CREATE TABLE  `v_far_total_fix`(
 `subtotal` double ,
 `diskon` double ,
 `id_far_trn` int(11) 
)*/;

/*Table structure for table `v_far_total_fix_reg` */

DROP TABLE IF EXISTS `v_far_total_fix_reg`;

/*!50001 DROP VIEW IF EXISTS `v_far_total_fix_reg` */;
/*!50001 DROP TABLE IF EXISTS `v_far_total_fix_reg` */;

/*!50001 CREATE TABLE  `v_far_total_fix_reg`(
 `total` decimal(32,0) ,
 `id_register` int(8) 
)*/;

/*Table structure for table `v_farm_daftar_obat` */

DROP TABLE IF EXISTS `v_farm_daftar_obat`;

/*!50001 DROP VIEW IF EXISTS `v_farm_daftar_obat` */;
/*!50001 DROP TABLE IF EXISTS `v_farm_daftar_obat` */;

/*!50001 CREATE TABLE  `v_farm_daftar_obat`(
 `no_urut` int(10) ,
 `nama` char(100) ,
 `harga_pokok` int(11) ,
 `harga_beli` int(11) ,
 `harga_jual` int(11) ,
 `stok_inap` double ,
 `stok_poli` double ,
 `satuan` varchar(50) ,
 `nama_asuransi` char(30) ,
 `asuransi` int(11) 
)*/;

/*Table structure for table `v_farm_det_trn` */

DROP TABLE IF EXISTS `v_farm_det_trn`;

/*!50001 DROP VIEW IF EXISTS `v_farm_det_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_farm_det_trn` */;

/*!50001 CREATE TABLE  `v_farm_det_trn`(
 `id_far_det_trn` int(11) ,
 `id_far_trn` int(11) ,
 `nama` char(100) ,
 `harga` int(11) ,
 `qty` double ,
 `subtotal` double ,
 `no_urut` int(10) ,
 `dosis` varchar(77) ,
 `resep` int(11) ,
 `embalase` int(11) 
)*/;

/*Table structure for table `v_farm_det_trn_fix` */

DROP TABLE IF EXISTS `v_farm_det_trn_fix`;

/*!50001 DROP VIEW IF EXISTS `v_farm_det_trn_fix` */;
/*!50001 DROP TABLE IF EXISTS `v_farm_det_trn_fix` */;

/*!50001 CREATE TABLE  `v_farm_det_trn_fix`(
 `id_far_det_trn` int(11) ,
 `id_far_trn` int(11) ,
 `nama` char(100) ,
 `harga` int(11) ,
 `qty` double ,
 `subtotal` double ,
 `no_urut` int(10) ,
 `dosis` varchar(77) ,
 `resep` int(11) ,
 `embalase` int(11) 
)*/;

/*Table structure for table `v_farm_pasien_aktif_inap` */

DROP TABLE IF EXISTS `v_farm_pasien_aktif_inap`;

/*!50001 DROP VIEW IF EXISTS `v_farm_pasien_aktif_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_farm_pasien_aktif_inap` */;

/*!50001 CREATE TABLE  `v_farm_pasien_aktif_inap`(
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `id_register` int(8) ,
 `nama_pasien` char(60) ,
 `alamat` char(60) ,
 `desa` char(60) ,
 `kecamatan` char(60) ,
 `nama_unit` char(30) ,
 `kelas` char(5) ,
 `id_unit` int(3) ,
 `id_asuransi` int(3) ,
 `namaasuransi` char(40) ,
 `kunjungan` int(11) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) 
)*/;

/*Table structure for table `v_farm_pasien_aktif_poli` */

DROP TABLE IF EXISTS `v_farm_pasien_aktif_poli`;

/*!50001 DROP VIEW IF EXISTS `v_farm_pasien_aktif_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_farm_pasien_aktif_poli` */;

/*!50001 CREATE TABLE  `v_farm_pasien_aktif_poli`(
 `tanggal` date ,
 `jam` char(8) ,
 `iol` int(1) ,
 `aktif` int(1) ,
 `poli_inap` varchar(13) ,
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `nama_poli_inap` char(40) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_lahir` date ,
 `nama_sex` varchar(9) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_asuransi` char(40) ,
 `nama_ortu` char(60) ,
 `id_unit` int(11) ,
 `id_asuransi` int(11) ,
 `id_pengirim` int(11) ,
 `id_dokter` int(11) ,
 `kelas` char(5) ,
 `no_bed` char(3) ,
 `id_register` int(8) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `tgl_pulang` date ,
 `jam_Pulang` char(8) ,
 `icd` varchar(10) ,
 `diagnosa` varchar(150) ,
 `id_mr_bl` int(20) unsigned ,
 `nama_unit` char(30) ,
 `no_periksa` int(11) ,
 `no_pendaftaran` int(11) 
)*/;

/*Table structure for table `v_farm_trn` */

DROP TABLE IF EXISTS `v_farm_trn`;

/*!50001 DROP VIEW IF EXISTS `v_farm_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_farm_trn` */;

/*!50001 CREATE TABLE  `v_farm_trn`(
 `id_far_trn` int(10) ,
 `id_catatan_medik` int(8) ,
 `id_register` int(8) ,
 `tanggal` date ,
 `nama_unit` char(30) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_dokter` char(50) 
)*/;

/*Table structure for table `v_fis_cetak_nota` */

DROP TABLE IF EXISTS `v_fis_cetak_nota`;

/*!50001 DROP VIEW IF EXISTS `v_fis_cetak_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_fis_cetak_nota` */;

/*!50001 CREATE TABLE  `v_fis_cetak_nota`(
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_fis_det_trn` int(11) ,
 `id_fis_trn` int(11) ,
 `nama` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `diagnosa` varchar(150) ,
 `kelas` char(1) ,
 `nama_tarif` char(50) ,
 `tarif` int(11) ,
 `jumlah` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_dokter` char(50) ,
 `nama_pengirim` char(60) ,
 `alamat` char(60) ,
 `sex` varchar(9) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `v_fis_det_trn` */

DROP TABLE IF EXISTS `v_fis_det_trn`;

/*!50001 DROP VIEW IF EXISTS `v_fis_det_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_fis_det_trn` */;

/*!50001 CREATE TABLE  `v_fis_det_trn`(
 `id_fis_det_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_fis_trn` int(11) ,
 `id_fis_tarif` int(11) ,
 `nama` char(50) ,
 `diskon` int(11) ,
 `jumlah` int(11) ,
 `total` int(11) ,
 `tarif` int(11) ,
 `nama_petugas` char(60) ,
 `id_petugas` int(11) 
)*/;

/*Table structure for table `v_fis_jasa_petugas` */

DROP TABLE IF EXISTS `v_fis_jasa_petugas`;

/*!50001 DROP VIEW IF EXISTS `v_fis_jasa_petugas` */;
/*!50001 DROP TABLE IF EXISTS `v_fis_jasa_petugas` */;

/*!50001 CREATE TABLE  `v_fis_jasa_petugas`(
 `id_fis_det_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_fis_trn` int(11) ,
 `id_petugas` int(11) ,
 `id_fis_tarif` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_pasien` char(60) ,
 `alamat` char(60) ,
 `nama` char(50) ,
 `kelas` char(1) ,
 `jumlah` int(11) ,
 `jasa` int(11) ,
 `nama_unit` char(30) ,
 `total` bigint(21) ,
 `nama_asuransi` char(40) 
)*/;

/*Table structure for table `v_fis_nota` */

DROP TABLE IF EXISTS `v_fis_nota`;

/*!50001 DROP VIEW IF EXISTS `v_fis_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_fis_nota` */;

/*!50001 CREATE TABLE  `v_fis_nota`(
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `id_fis_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `kelas` char(1) ,
 `id_asuransi` int(11) ,
 `biaya` int(11) ,
 `id_petugas` int(11) ,
 `umur_th` int(11) ,
 `umur_bln` int(11) ,
 `umur_hr` int(11) ,
 `nama_dokter` char(50) ,
 `nama_pengirim` char(60) ,
 `ket_lunas` varchar(14) ,
 `diagnosa` varchar(150) ,
 `id_unit` int(11) ,
 `iol` int(11) 
)*/;

/*Table structure for table `v_fis_total` */

DROP TABLE IF EXISTS `v_fis_total`;

/*!50001 DROP VIEW IF EXISTS `v_fis_total` */;
/*!50001 DROP TABLE IF EXISTS `v_fis_total` */;

/*!50001 CREATE TABLE  `v_fis_total`(
 `sub_total` decimal(43,0) ,
 `grand_total` decimal(42,0) ,
 `diskon` decimal(42,0) ,
 `id_fis_trn` int(11) 
)*/;

/*Table structure for table `v_icd` */

DROP TABLE IF EXISTS `v_icd`;

/*!50001 DROP VIEW IF EXISTS `v_icd` */;
/*!50001 DROP TABLE IF EXISTS `v_icd` */;

/*!50001 CREATE TABLE  `v_icd`(
 `diagnnosa` varchar(163) ,
 `icd` varchar(10) 
)*/;

/*Table structure for table `v_icd9` */

DROP TABLE IF EXISTS `v_icd9`;

/*!50001 DROP VIEW IF EXISTS `v_icd9` */;
/*!50001 DROP TABLE IF EXISTS `v_icd9` */;

/*!50001 CREATE TABLE  `v_icd9`(
 `diagnosa` varchar(73) ,
 `icd9` char(10) ,
 `id_icd9` int(11) 
)*/;

/*Table structure for table `v_igd_register` */

DROP TABLE IF EXISTS `v_igd_register`;

/*!50001 DROP VIEW IF EXISTS `v_igd_register` */;
/*!50001 DROP TABLE IF EXISTS `v_igd_register` */;

/*!50001 CREATE TABLE  `v_igd_register`(
 `id_igd_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `tanggal_masuk` date ,
 `jam_masuk` char(8) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `id_triase` int(11) ,
 `nama_kasus` char(40) ,
 `nama_peralatan` char(40) ,
 `nama_tindak_lanjut` char(40) ,
 `nama_triase` char(40) ,
 `nama_dokter` char(50) ,
 `diagnosa` varchar(150) ,
 `nama_asuransi` char(40) ,
 `nama_unit_perawatan` char(40) ,
 `jenis_kelamin` varchar(1) ,
 `umur` varchar(54) ,
 `baru_lama` varchar(4) ,
 `rujukan` varchar(14) ,
 `tb` decimal(10,0) ,
 `bb` decimal(10,2) ,
 `anamnese` text ,
 `tek_atas` int(11) ,
 `tek_bawah` int(11) ,
 `pernapasan` int(11) ,
 `nadi` int(11) ,
 `suhu` decimal(10,1) ,
 `id_register` int(11) ,
 `alergi` varchar(9) 
)*/;

/*Table structure for table `v_igd_register_gawat` */

DROP TABLE IF EXISTS `v_igd_register_gawat`;

/*!50001 DROP VIEW IF EXISTS `v_igd_register_gawat` */;
/*!50001 DROP TABLE IF EXISTS `v_igd_register_gawat` */;

/*!50001 CREATE TABLE  `v_igd_register_gawat`(
 `id_igd_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `tanggal_masuk` date ,
 `jam_masuk` char(8) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `id_triase` int(11) ,
 `nama_kasus` char(40) ,
 `nama_peralatan` char(40) ,
 `nama_tindak_lanjut` char(40) ,
 `nama_triase` char(40) ,
 `nama_dokter` char(50) ,
 `diagnosa` varchar(150) ,
 `nama_asuransi` char(40) ,
 `jenis_kelamin` varchar(1) ,
 `umur` varchar(54) ,
 `baru_lama` varchar(4) ,
 `rujukan` varchar(14) 
)*/;

/*Table structure for table `v_igd_register_non_gawat` */

DROP TABLE IF EXISTS `v_igd_register_non_gawat`;

/*!50001 DROP VIEW IF EXISTS `v_igd_register_non_gawat` */;
/*!50001 DROP TABLE IF EXISTS `v_igd_register_non_gawat` */;

/*!50001 CREATE TABLE  `v_igd_register_non_gawat`(
 `id_igd_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `tanggal_masuk` date ,
 `jam_masuk` char(8) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `id_triase` int(11) ,
 `nama_kasus` char(40) ,
 `nama_peralatan` char(40) ,
 `nama_tindak_lanjut` char(40) ,
 `nama_triase` char(40) ,
 `nama_dokter` char(50) ,
 `diagnosa` varchar(150) ,
 `nama_asuransi` char(40) ,
 `jenis_kelamin` varchar(1) ,
 `umur` varchar(54) ,
 `baru_lama` varchar(4) ,
 `rujukan` varchar(14) 
)*/;

/*Table structure for table `v_kabupaten` */

DROP TABLE IF EXISTS `v_kabupaten`;

/*!50001 DROP VIEW IF EXISTS `v_kabupaten` */;
/*!50001 DROP TABLE IF EXISTS `v_kabupaten` */;

/*!50001 CREATE TABLE  `v_kabupaten`(
 `id_kabupaten` int(11) ,
 `kode_propinsi` int(11) ,
 `kode_kabupaten` int(11) ,
 `nama_kabupaten` char(60) ,
 `nama_propinsi` char(50) 
)*/;

/*Table structure for table `v_kecamatan` */

DROP TABLE IF EXISTS `v_kecamatan`;

/*!50001 DROP VIEW IF EXISTS `v_kecamatan` */;
/*!50001 DROP TABLE IF EXISTS `v_kecamatan` */;

/*!50001 CREATE TABLE  `v_kecamatan`(
 `id_kecamatan` int(11) ,
 `kode_kabupaten` int(11) ,
 `kode_kecamatan` int(11) ,
 `nama_kecamatan` char(60) ,
 `nama_kabupaten` char(60) 
)*/;

/*Table structure for table `v_kep_mutu` */

DROP TABLE IF EXISTS `v_kep_mutu`;

/*!50001 DROP VIEW IF EXISTS `v_kep_mutu` */;
/*!50001 DROP TABLE IF EXISTS `v_kep_mutu` */;

/*!50001 CREATE TABLE  `v_kep_mutu`(
 `no_urut` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_unit` int(3) ,
 `nama_unit` char(30) 
)*/;

/*Table structure for table `v_ksr_akun` */

DROP TABLE IF EXISTS `v_ksr_akun`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_akun` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_akun` */;

/*!50001 CREATE TABLE  `v_ksr_akun`(
 `id_ksr_akun` int(11) ,
 `kode_akun` char(15) ,
 `nama_akun` char(50) ,
 `nama_tipe_akun` char(30) ,
 `saldo_awal` int(11) ,
 `aktif` varchar(5) ,
 `nama` varchar(66) 
)*/;

/*Table structure for table `v_ksr_daftar_nota` */

DROP TABLE IF EXISTS `v_ksr_daftar_nota`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_daftar_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_daftar_nota` */;

/*!50001 CREATE TABLE  `v_ksr_daftar_nota`(
 `id_ksr_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `tgl_kunj` date ,
 `jam_kunj` char(8) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `tgl_pulang` datetime ,
 `jam_pulang` char(8) ,
 `rawat` varchar(4) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `kelas` char(5) ,
 `biaya` int(11) ,
 `lunas` varchar(14) ,
 `sudah` varchar(13) ,
 `id_petugas` int(3) ,
 `titip` int(11) ,
 `titip_bayar` bigint(12) ,
 `titip1` int(11) ,
 `nama_dokter` char(50) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `bayar` bigint(12) ,
 `kurang` bigint(13) 
)*/;

/*Table structure for table `v_ksr_daftar_pasien` */

DROP TABLE IF EXISTS `v_ksr_daftar_pasien`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_daftar_pasien` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_daftar_pasien` */;

/*!50001 CREATE TABLE  `v_ksr_daftar_pasien`(
 `id_ksr_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tgl_kunj` date ,
 `jam_kunj` char(8) ,
 `tgl_pulang` datetime ,
 `jam_pulang` char(8) ,
 `jam_inap` char(8) ,
 `tgl_inap` date ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_dokter` char(50) ,
 `iol` int(1) ,
 `nama_poli_inap` char(40) ,
 `id_unit` int(11) ,
 `id_pengirim` int(3) ,
 `id_asuransi` int(11) ,
 `kelas` char(5) ,
 `biaya` int(11) ,
 `lunas` char(1) ,
 `id_petugas` int(3) ,
 `titip` int(11) ,
 `hak_kelas` int(11) ,
 `id_dokter` int(3) ,
 `aksi` varchar(13) ,
 `bpjs` int(11) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_ksr_daftar_pasien_ulang` */

DROP TABLE IF EXISTS `v_ksr_daftar_pasien_ulang`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_daftar_pasien_ulang` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_daftar_pasien_ulang` */;

/*!50001 CREATE TABLE  `v_ksr_daftar_pasien_ulang`(
 `id_ksr_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tgl_kunj` date ,
 `jam_kunj` char(8) ,
 `tgl_pulang` datetime ,
 `jam_pulang` char(8) ,
 `jam_inap` char(8) ,
 `tgl_inap` date ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_dokter` char(50) ,
 `iol` int(1) ,
 `nama_poli_inap` char(40) ,
 `id_unit` int(11) ,
 `id_pengirim` int(3) ,
 `id_asuransi` int(11) ,
 `kelas` char(5) ,
 `biaya` int(11) ,
 `lunas` char(1) ,
 `id_petugas` int(3) ,
 `titip` int(11) ,
 `hak_kelas` int(11) ,
 `id_dokter` int(3) ,
 `aksi` varchar(13) ,
 `bpjs` int(0) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_ksr_det_faktur` */

DROP TABLE IF EXISTS `v_ksr_det_faktur`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_det_faktur` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_det_faktur` */;

/*!50001 CREATE TABLE  `v_ksr_det_faktur`(
 `id_ksr_det_faktur` int(11) ,
 `faktur` char(50) ,
 `nama` char(40) ,
 `sub_total` int(11) ,
 `grand_total` int(11) ,
 `id_no_sp` int(11) ,
 `id_suplier` int(11) ,
 `id_ksr_faktur` int(11) 
)*/;

/*Table structure for table `v_ksr_det_faktur_inap` */

DROP TABLE IF EXISTS `v_ksr_det_faktur_inap`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_det_faktur_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_det_faktur_inap` */;

/*!50001 CREATE TABLE  `v_ksr_det_faktur_inap`(
 `id_ksr_det_faktur` int(11) ,
 `faktur` char(50) ,
 `nama` char(40) ,
 `sub_total` int(11) ,
 `grand_total` int(11) ,
 `id_no_sp` int(11) ,
 `id_suplier` int(11) ,
 `id_ksr_faktur` int(11) 
)*/;

/*Table structure for table `v_ksr_detil_transaksi` */

DROP TABLE IF EXISTS `v_ksr_detil_transaksi`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_detil_transaksi` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_detil_transaksi` */;

/*!50001 CREATE TABLE  `v_ksr_detil_transaksi`(
 `tanggal` date ,
 `jam` char(8) ,
 `id_register` int(11) ,
 `kode` int(11) ,
 `id_ksr_det_trn` int(11) ,
 `kelompok_unit` char(4) ,
 `nama` varchar(80) ,
 `jumlah` double ,
 `nama_dokter` char(50) ,
 `nama_anestesi` char(50) ,
 `dokter_anak` char(50) ,
 `nama_petugas` char(60) ,
 `nama_ass_1` char(60) ,
 `nama_ass_2` varchar(60) ,
 `nama_penata` char(60) ,
 `nama_on_loop` varchar(60) ,
 `nama_insentif` char(60) ,
 `nama_unit` char(30) ,
 `diskon` int(11) ,
 `tarif` int(11) ,
 `total` int(11) ,
 `ass_2_jaga` int(1) ,
 `onloop_jaga` int(1) ,
 `nama_petugas_luar` char(50) 
)*/;

/*Table structure for table `v_ksr_faktur` */

DROP TABLE IF EXISTS `v_ksr_faktur`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_faktur` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_faktur` */;

/*!50001 CREATE TABLE  `v_ksr_faktur`(
 `id_ksr_faktur` int(11) ,
 `nama_petugas` char(60) ,
 `tanggal` date ,
 `jam` char(8) ,
 `cp_suplier` char(50) ,
 `total` int(11) ,
 `nama_suplier` char(40) ,
 `lunas` varchar(14) ,
 `ket` int(11) 
)*/;

/*Table structure for table `v_ksr_faktur_inap` */

DROP TABLE IF EXISTS `v_ksr_faktur_inap`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_faktur_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_faktur_inap` */;

/*!50001 CREATE TABLE  `v_ksr_faktur_inap`(
 `id_ksr_faktur` int(11) ,
 `nama_petugas` char(60) ,
 `tanggal` date ,
 `jam` char(8) ,
 `cp_suplier` char(50) ,
 `total` int(11) ,
 `nama_suplier` char(40) ,
 `lunas` varchar(14) ,
 `ket` int(11) 
)*/;

/*Table structure for table `v_ksr_far_trn` */

DROP TABLE IF EXISTS `v_ksr_far_trn`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_far_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_far_trn` */;

/*!50001 CREATE TABLE  `v_ksr_far_trn`(
 `aksi` varchar(14) ,
 `id_far_trn` int(10) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_register` int(8) ,
 `biaya` int(11) ,
 `nama` varchar(70) ,
 `diskon` bigint(11) ,
 `grand_total` decimal(25,4) 
)*/;

/*Table structure for table `v_ksr_fis_trn` */

DROP TABLE IF EXISTS `v_ksr_fis_trn`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_fis_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_fis_trn` */;

/*!50001 CREATE TABLE  `v_ksr_fis_trn`(
 `aksi` varchar(14) ,
 `id_fis_trn` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `kelas` char(1) ,
 `biaya` int(11) 
)*/;

/*Table structure for table `v_ksr_jurnal` */

DROP TABLE IF EXISTS `v_ksr_jurnal`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_jurnal` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_jurnal` */;

/*!50001 CREATE TABLE  `v_ksr_jurnal`(
 `id_ksr_detil_jurnal` int(11) ,
 `id_ksr_jurnal` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `no_bukti` char(20) ,
 `nama_unit` char(30) ,
 `uraian` char(50) ,
 `kode` char(12) ,
 `nama_akun` char(50) ,
 `debet` int(11) ,
 `kredit` int(11) ,
 `posisi` int(11) 
)*/;

/*Table structure for table `v_ksr_kelompok_unit` */

DROP TABLE IF EXISTS `v_ksr_kelompok_unit`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_kelompok_unit` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_kelompok_unit` */;

/*!50001 CREATE TABLE  `v_ksr_kelompok_unit`(
 `id_ksr_kelompok_unit` int(11) ,
 `kode_kelompok_unit` char(4) ,
 `nama_kelompok_unit` char(30) ,
 `kelompok` char(50) 
)*/;

/*Table structure for table `v_ksr_lab_trn` */

DROP TABLE IF EXISTS `v_ksr_lab_trn`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_lab_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_lab_trn` */;

/*!50001 CREATE TABLE  `v_ksr_lab_trn`(
 `aksi` varchar(14) ,
 `id_lab_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `kelas` char(5) ,
 `biaya` int(11) ,
 `nama` varchar(70) ,
 `diskon` bigint(11) ,
 `grand_total` decimal(25,4) 
)*/;

/*Table structure for table `v_ksr_piutang` */

DROP TABLE IF EXISTS `v_ksr_piutang`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_piutang` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_piutang` */;

/*!50001 CREATE TABLE  `v_ksr_piutang`(
 `id_ksr_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `tgl_kunj` date ,
 `jam_kunj` char(8) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `tgl_pulang` datetime ,
 `jam_pulang` char(8) ,
 `rawat` varchar(4) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `kelas` char(5) ,
 `biaya` int(11) ,
 `lunas` varchar(14) ,
 `sudah` varchar(13) ,
 `id_petugas` int(3) ,
 `titip` int(11) ,
 `titip_bayar` bigint(12) ,
 `titip1` int(11) ,
 `nama_dokter` char(50) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `bayar` bigint(11) ,
 `kurang` bigint(13) 
)*/;

/*Table structure for table `v_ksr_rekening` */

DROP TABLE IF EXISTS `v_ksr_rekening`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_rekening` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_rekening` */;

/*!50001 CREATE TABLE  `v_ksr_rekening`(
 `id_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `kode` int(11) ,
 `id_ksr_det_trn` int(11) ,
 `kelompok_unit` char(4) ,
 `nama_tarif` varchar(80) ,
 `jumlah` double ,
 `tarif` double ,
 `diskon` double ,
 `nama_unit` varchar(30) ,
 `nama_asuransi` char(40) ,
 `kelas` char(5) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_masuk` date ,
 `jam_masuk` varchar(8) ,
 `tgl_pulang` datetime ,
 `jam_pulang` char(8) ,
 `rawat` varchar(11) ,
 `nama_dokter` char(50) ,
 `tgl_lahir` date ,
 `iol` int(1) 
)*/;

/*Table structure for table `v_ksr_ro_trn` */

DROP TABLE IF EXISTS `v_ksr_ro_trn`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_ro_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_ro_trn` */;

/*!50001 CREATE TABLE  `v_ksr_ro_trn`(
 `aksi` varchar(14) ,
 `id_ro_trn` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `kelas` char(5) ,
 `biaya` int(11) 
)*/;

/*Table structure for table `v_ksr_set_akun` */

DROP TABLE IF EXISTS `v_ksr_set_akun`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_set_akun` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_set_akun` */;

/*!50001 CREATE TABLE  `v_ksr_set_akun`(
 `id_ksr_set_akun` int(11) ,
 `uraian` char(200) ,
 `kode_akun` char(15) ,
 `nama_akun` char(50) ,
 `nama` char(30) ,
 `keterangan` char(100) 
)*/;

/*Table structure for table `v_ksr_set_dr_residen` */

DROP TABLE IF EXISTS `v_ksr_set_dr_residen`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_set_dr_residen` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_set_dr_residen` */;

/*!50001 CREATE TABLE  `v_ksr_set_dr_residen`(
 `id_ksr_set_residen` int(11) ,
 `id_dokter` int(11) ,
 `id_dr_residen` int(11) ,
 `aktif` int(1) ,
 `nama_dokter` char(50) ,
 `nama_dr_residen` char(50) ,
 `ket` varchar(5) 
)*/;

/*Table structure for table `v_ksr_titip` */

DROP TABLE IF EXISTS `v_ksr_titip`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_titip` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_titip` */;

/*!50001 CREATE TABLE  `v_ksr_titip`(
 `id_ksr_titip` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` tinytext ,
 `total` int(11) ,
 `keterangan` varchar(150) ,
 `nama` varchar(60) ,
 `ket` varchar(12) 
)*/;

/*Table structure for table `v_ksr_titip_total` */

DROP TABLE IF EXISTS `v_ksr_titip_total`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_titip_total` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_titip_total` */;

/*!50001 CREATE TABLE  `v_ksr_titip_total`(
 `total` decimal(32,0) ,
 `id_register` int(11) 
)*/;

/*Table structure for table `v_ksr_total` */

DROP TABLE IF EXISTS `v_ksr_total`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_total` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_total` */;

/*!50001 CREATE TABLE  `v_ksr_total`(
 `id_register` int(11) ,
 `sub_total` double ,
 `total_diskon` double ,
 `grand_total` double 
)*/;

/*Table structure for table `v_ksr_trn` */

DROP TABLE IF EXISTS `v_ksr_trn`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_trn` */;

/*!50001 CREATE TABLE  `v_ksr_trn`(
 `id_ksr_trn` int(11) ,
 `tgl_kunj` date ,
 `jam_kunj` char(8) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `kelas` char(5) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) 
)*/;

/*Table structure for table `v_ksr_trn_layanan` */

DROP TABLE IF EXISTS `v_ksr_trn_layanan`;

/*!50001 DROP VIEW IF EXISTS `v_ksr_trn_layanan` */;
/*!50001 DROP TABLE IF EXISTS `v_ksr_trn_layanan` */;

/*!50001 CREATE TABLE  `v_ksr_trn_layanan`(
 `id_ksr_det_trn` int(11) ,
 `kelas` char(5) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tgl_kunj` date ,
 `jam_kunj` char(8) ,
 `id_dokter` int(3) ,
 `kode` int(11) ,
 `nama_pasien` char(60) ,
 `nama_unit` char(30) ,
 `ket_iol` varchar(4) ,
 `nama` char(80) ,
 `nama_dokter` char(50) ,
 `tarif` int(11) ,
 `jumlah` double ,
 `diskon` int(11) ,
 `total` int(11) ,
 `operator` int(11) 
)*/;

/*Table structure for table `v_laborat_hasil` */

DROP TABLE IF EXISTS `v_laborat_hasil`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_hasil` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_hasil` */;

/*!50001 CREATE TABLE  `v_laborat_hasil`(
 `id_petugas` int(11) ,
 `id_lab_tarif` int(11) ,
 `id_lab_det_trn` int(11) ,
 `id_lab_trn` int(11) ,
 `id_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `nama` char(100) ,
 `hasil` varchar(42) ,
 `satuan` char(20) ,
 `harga_normal` char(30) ,
 `tarif` int(11) ,
 `bawah` char(50) ,
 `atas` double ,
 `qty` char(40) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_sampel` char(40) ,
 `nama_dokter` char(50) ,
 `alamat` char(60) ,
 `kelas` char(5) ,
 `nama_sex` char(10) ,
 `nama_pasien` varchar(70) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) ,
 `keterangan` text ,
 `kode_rujukan` char(3) 
)*/;

/*Table structure for table `v_laborat_hasil_by_kelas` */

DROP TABLE IF EXISTS `v_laborat_hasil_by_kelas`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_hasil_by_kelas` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_hasil_by_kelas` */;

/*!50001 CREATE TABLE  `v_laborat_hasil_by_kelas`(
 `id_lab_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `namapasien` char(60) ,
 `tanggal` date ,
 `kelas` char(5) 
)*/;

/*Table structure for table `v_laborat_nota` */

DROP TABLE IF EXISTS `v_laborat_nota`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_nota` */;

/*!50001 CREATE TABLE  `v_laborat_nota`(
 `id_lab_det_trn` int(11) ,
 `id_lab_trn` int(11) ,
 `id_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `nama` char(100) ,
 `hasil` varchar(42) ,
 `satuan` char(20) ,
 `harga_normal` char(30) ,
 `tarif` int(11) ,
 `bawah` char(50) ,
 `atas` double ,
 `qty` char(40) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_sampel` char(40) ,
 `nama_dokter` char(50) ,
 `alamat` char(60) ,
 `kelas` char(5) ,
 `umur_hr` int(9) ,
 `umur_bln` bigint(14) ,
 `umur_th` bigint(17) ,
 `nama_sex` char(10) ,
 `nama_pasien` char(60) ,
 `id_lab_tarif` int(11) 
)*/;

/*Table structure for table `v_laborat_pasien_aktif` */

DROP TABLE IF EXISTS `v_laborat_pasien_aktif`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_pasien_aktif` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_pasien_aktif` */;

/*!50001 CREATE TABLE  `v_laborat_pasien_aktif`(
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `id_register` int(8) ,
 `nama_pasien` char(60) ,
 `alamat` char(60) ,
 `desa` char(60) ,
 `kecamatan` char(60) ,
 `nama_unit` char(30) ,
 `kelas` char(5) ,
 `id_unit` int(3) ,
 `id_asuransi` int(3) ,
 `namaasuransi` char(40) ,
 `kunjungan` int(11) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) 
)*/;

/*Table structure for table `v_laborat_pasien_ceklab` */

DROP TABLE IF EXISTS `v_laborat_pasien_ceklab`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_pasien_ceklab` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_pasien_ceklab` */;

/*!50001 CREATE TABLE  `v_laborat_pasien_ceklab`(
 `id_lab_trn` int(11) ,
 `id_pasien` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `namapasien` varchar(70) ,
 `alamat` char(60) ,
 `desa` char(60) ,
 `kecamatan` char(60) ,
 `tanggal` date ,
 `jam` char(8) ,
 `kelas` char(5) ,
 `unit` char(30) ,
 `pengirim` char(60) ,
 `biaya` int(11) ,
 `asuransi` char(40) ,
 `lunas` varchar(14) ,
 `diskon` bigint(11) ,
 `grand_total` decimal(25,4) ,
 `val_lab` varchar(17) 
)*/;

/*Table structure for table `v_laborat_pendapatan_groupbyasuransi` */

DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbyasuransi`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_pendapatan_groupbyasuransi` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbyasuransi` */;

/*!50001 CREATE TABLE  `v_laborat_pendapatan_groupbyasuransi`(
 `id_lab_trn` int(11) ,
 `tanggal` date ,
 `jumlahtrx` bigint(21) ,
 `asuransi` char(40) ,
 `pendapatan` decimal(32,0) 
)*/;

/*Table structure for table `v_laborat_pendapatan_groupbytanggal` */

DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbytanggal`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_pendapatan_groupbytanggal` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbytanggal` */;

/*!50001 CREATE TABLE  `v_laborat_pendapatan_groupbytanggal`(
 `id_lab_trn` int(11) ,
 `tanggal` date ,
 `jumlahpemeriksaan` bigint(21) ,
 `jumlahpendapatan` decimal(32,0) 
)*/;

/*Table structure for table `v_laborat_pendapatan_groupbyunit` */

DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbyunit`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_pendapatan_groupbyunit` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbyunit` */;

/*!50001 CREATE TABLE  `v_laborat_pendapatan_groupbyunit`(
 `id_lab_trn` int(11) ,
 `tanggal` date ,
 `jumlahtrx` bigint(21) ,
 `nama_unit` char(30) ,
 `pendapatan` decimal(32,0) 
)*/;

/*Table structure for table `v_laborat_tarif` */

DROP TABLE IF EXISTS `v_laborat_tarif`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_tarif` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_tarif` */;

/*!50001 CREATE TABLE  `v_laborat_tarif`(
 `id_lab_tarif` int(11) ,
 `nama` char(100) ,
 `bawah` char(50) ,
 `atas` double 
)*/;

/*Table structure for table `v_laborat_tariftunggal` */

DROP TABLE IF EXISTS `v_laborat_tariftunggal`;

/*!50001 DROP VIEW IF EXISTS `v_laborat_tariftunggal` */;
/*!50001 DROP TABLE IF EXISTS `v_laborat_tariftunggal` */;

/*!50001 CREATE TABLE  `v_laborat_tariftunggal`(
 `id_lab_tarif` int(11) ,
 `nama` char(100) ,
 `kel` char(100) 
)*/;

/*Table structure for table `v_lap_parameter` */

DROP TABLE IF EXISTS `v_lap_parameter`;

/*!50001 DROP VIEW IF EXISTS `v_lap_parameter` */;
/*!50001 DROP TABLE IF EXISTS `v_lap_parameter` */;

/*!50001 CREATE TABLE  `v_lap_parameter`(
 `id_lab_det_trn` int(11) ,
 `id_lab_trn` int(11) ,
 `id_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `nama` char(100) ,
 `hasil` varchar(42) ,
 `satuan` char(20) ,
 `harga_normal` char(30) ,
 `tarif` int(11) ,
 `bawah` char(50) ,
 `atas` double ,
 `qty` char(40) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_sampel` char(40) ,
 `nama_dokter` char(50) ,
 `alamat` char(60) ,
 `kelas` char(5) ,
 `umur_hr` int(9) ,
 `umur_bln` bigint(14) ,
 `umur_th` bigint(17) ,
 `nama_sex` char(10) ,
 `nama_pasien` char(60) ,
 `id_lab_tarif` int(11) 
)*/;

/*Table structure for table `v_mr_10_diagnosa` */

DROP TABLE IF EXISTS `v_mr_10_diagnosa`;

/*!50001 DROP VIEW IF EXISTS `v_mr_10_diagnosa` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_10_diagnosa` */;

/*!50001 CREATE TABLE  `v_mr_10_diagnosa`(
 `icd` char(10) ,
 `diagnosa` varchar(150) ,
 `laki_hidup` decimal(32,0) ,
 `perempuan_hidup` decimal(32,0) ,
 `laki_mati` decimal(32,0) ,
 `perempuan_mati` decimal(32,0) ,
 `total` decimal(32,0) 
)*/;

/*Table structure for table `v_mr_10_procedur` */

DROP TABLE IF EXISTS `v_mr_10_procedur`;

/*!50001 DROP VIEW IF EXISTS `v_mr_10_procedur` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_10_procedur` */;

/*!50001 CREATE TABLE  `v_mr_10_procedur`(
 `icd` char(10) ,
 `diagnosa` char(60) ,
 `keluar_hidup_laki` decimal(32,0) ,
 `keluar_mati_laki` decimal(32,0) ,
 `keluar_hidup_perempuan` decimal(32,0) ,
 `keluar_mati_perempuan` decimal(32,0) ,
 `total` decimal(32,0) 
)*/;

/*Table structure for table `v_mr_alergi` */

DROP TABLE IF EXISTS `v_mr_alergi`;

/*!50001 DROP VIEW IF EXISTS `v_mr_alergi` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_alergi` */;

/*!50001 CREATE TABLE  `v_mr_alergi`(
 `daftar_alergi` text ,
 `id_catatan_medik` int(11) 
)*/;

/*Table structure for table `v_mr_catatan_medik` */

DROP TABLE IF EXISTS `v_mr_catatan_medik`;

/*!50001 DROP VIEW IF EXISTS `v_mr_catatan_medik` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_catatan_medik` */;

/*!50001 CREATE TABLE  `v_mr_catatan_medik`(
 `id_catatan_medik` int(8) ,
 `id_pasien` int(11) 
)*/;

/*Table structure for table `v_mr_cetak_halaman_depan` */

DROP TABLE IF EXISTS `v_mr_cetak_halaman_depan`;

/*!50001 DROP VIEW IF EXISTS `v_mr_cetak_halaman_depan` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_cetak_halaman_depan` */;

/*!50001 CREATE TABLE  `v_mr_cetak_halaman_depan`(
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `id_register` int(8) ,
 `nama` varchar(60) ,
 `alamat` varchar(60) ,
 `desa` char(60) ,
 `kecamatan` char(60) ,
 `kabupaten` char(60) ,
 `telp` char(25) ,
 `nama_sex` char(10) ,
 `golongan_darah` char(2) ,
 `tempat` char(30) ,
 `tgl_lahir` date ,
 `nama_agama` char(40) ,
 `nama_pendidikan` char(30) ,
 `nama_pekerjaan` char(30) ,
 `nama_ortu` char(60) ,
 `nama_keluarga` char(30) ,
 `alamat_ortu` char(60) ,
 `nama_pekerjaan_ortu` char(30) ,
 `nama_pengirim` char(60) ,
 `nama_asuransi` char(40) ,
 `menikah` varchar(11) ,
 `nama_unit` char(30) ,
 `nip` char(30) ,
 `nik` char(30) ,
 `nama_pangkat` char(50) ,
 `kelas_perawatan` int(11) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_mr_desa` */

DROP TABLE IF EXISTS `v_mr_desa`;

/*!50001 DROP VIEW IF EXISTS `v_mr_desa` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_desa` */;

/*!50001 CREATE TABLE  `v_mr_desa`(
 `alamat` varchar(124) ,
 `kode` char(12) ,
 `desa` char(40) ,
 `kec` char(40) ,
 `kab` char(40) ,
 `kode_kec` char(10) ,
 `kd_kab` char(10) 
)*/;

/*Table structure for table `v_mr_desa_bps` */

DROP TABLE IF EXISTS `v_mr_desa_bps`;

/*!50001 DROP VIEW IF EXISTS `v_mr_desa_bps` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_desa_bps` */;

/*!50001 CREATE TABLE  `v_mr_desa_bps`(
 `id_desa` int(11) ,
 `kode_desa` int(11) ,
 `nama_desa` char(60) ,
 `kode_kecamatan` int(11) ,
 `nama_kecamatan` char(60) ,
 `kode_kabupaten` int(11) ,
 `nama_kabupaten` char(60) ,
 `kode_propinsi` int(11) ,
 `nama_propinsi` char(50) ,
 `alamat` varchar(233) 
)*/;

/*Table structure for table `v_mr_dokter` */

DROP TABLE IF EXISTS `v_mr_dokter`;

/*!50001 DROP VIEW IF EXISTS `v_mr_dokter` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_dokter` */;

/*!50001 CREATE TABLE  `v_mr_dokter`(
 `id_dokter` int(11) ,
 `nama_dokter` char(50) 
)*/;

/*Table structure for table `v_mr_edit_pasien_pulang` */

DROP TABLE IF EXISTS `v_mr_edit_pasien_pulang`;

/*!50001 DROP VIEW IF EXISTS `v_mr_edit_pasien_pulang` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_edit_pasien_pulang` */;

/*!50001 CREATE TABLE  `v_mr_edit_pasien_pulang`(
 `id_pasien_pulang` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `id_mr_bl` int(11) ,
 `nama_unit` char(30) ,
 `nama_dokter` char(50) ,
 `jam` char(8) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_poli_inap` varchar(4) 
)*/;

/*Table structure for table `v_mr_edit_unit` */

DROP TABLE IF EXISTS `v_mr_edit_unit`;

/*!50001 DROP VIEW IF EXISTS `v_mr_edit_unit` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_edit_unit` */;

/*!50001 CREATE TABLE  `v_mr_edit_unit`(
 `id_unit` int(11) ,
 `nama_unit` char(30) ,
 `kelompok` int(11) ,
 `tempat_tidur` int(11) ,
 `vip` int(11) ,
 `satu` int(11) ,
 `dua` int(11) ,
 `tiga` int(11) 
)*/;

/*Table structure for table `v_mr_ewar` */

DROP TABLE IF EXISTS `v_mr_ewar`;

/*!50001 DROP VIEW IF EXISTS `v_mr_ewar` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_ewar` */;

/*!50001 CREATE TABLE  `v_mr_ewar`(
 `id_lap_ewar` int(11) ,
 `minggu` int(11) ,
 `a` decimal(32,0) ,
 `b` decimal(32,0) ,
 `c` decimal(32,0) ,
 `d` decimal(32,0) ,
 `e` decimal(32,0) ,
 `f` decimal(32,0) ,
 `g` decimal(32,0) ,
 `h` decimal(32,0) ,
 `i` decimal(32,0) ,
 `j` decimal(32,0) ,
 `k` decimal(32,0) ,
 `l` decimal(32,0) ,
 `m` decimal(32,0) ,
 `n` decimal(32,0) ,
 `p` decimal(32,0) ,
 `q` decimal(32,0) ,
 `r` decimal(32,0) ,
 `s` decimal(32,0) ,
 `t` decimal(32,0) ,
 `u` decimal(32,0) ,
 `v` decimal(32,0) ,
 `w` decimal(32,0) ,
 `y` decimal(32,0) ,
 `z` decimal(32,0) ,
 `x` decimal(32,0) 
)*/;

/*Table structure for table `v_mr_history_diagnosa` */

DROP TABLE IF EXISTS `v_mr_history_diagnosa`;

/*!50001 DROP VIEW IF EXISTS `v_mr_history_diagnosa` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_history_diagnosa` */;

/*!50001 CREATE TABLE  `v_mr_history_diagnosa`(
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `poli` varchar(11) ,
 `nama_unit` char(30) ,
 `icd` varchar(10) ,
 `diagnosa` varchar(150) ,
 `id_register` int(11) ,
 `id_rla` int(10) 
)*/;

/*Table structure for table `v_mr_history_farmasi` */

DROP TABLE IF EXISTS `v_mr_history_farmasi`;

/*!50001 DROP VIEW IF EXISTS `v_mr_history_farmasi` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_history_farmasi` */;

/*!50001 CREATE TABLE  `v_mr_history_farmasi`(
 `id_far_det_trn` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `id_far_trn` int(11) ,
 `nama` char(100) ,
 `qty` double ,
 `idx` double ,
 `harga` int(11) ,
 `subtotal` double ,
 `id_obat` int(11) ,
 `rawat` varchar(11) ,
 `dosis` varchar(77) ,
 `id_far_satuan_minum` int(11) ,
 `nama_unit` char(30) ,
 `id_register` int(8) ,
 `id_catatan_medik` int(8) ,
 `nama_dokter` char(50) 
)*/;

/*Table structure for table `v_mr_history_fisioteraphi` */

DROP TABLE IF EXISTS `v_mr_history_fisioteraphi`;

/*!50001 DROP VIEW IF EXISTS `v_mr_history_fisioteraphi` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_history_fisioteraphi` */;

/*!50001 CREATE TABLE  `v_mr_history_fisioteraphi`(
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_fis_trn` int(11) ,
 `id_fis_tarif` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama` char(50) ,
 `id_fis_det_trn` int(11) 
)*/;

/*Table structure for table `v_mr_history_hasil_laborat` */

DROP TABLE IF EXISTS `v_mr_history_hasil_laborat`;

/*!50001 DROP VIEW IF EXISTS `v_mr_history_hasil_laborat` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_history_hasil_laborat` */;

/*!50001 CREATE TABLE  `v_mr_history_hasil_laborat`(
 `id_lab_tarif` int(11) ,
 `id_lab_det_trn` int(11) ,
 `id_lab_trn` int(11) ,
 `id_register` int(11) ,
 `id_catatan_medik` int(11) ,
 `nama` char(100) ,
 `hasil` varchar(42) ,
 `satuan` char(20) ,
 `harga_normal` char(30) ,
 `tarif` int(11) ,
 `bawah` char(50) ,
 `atas` double ,
 `qty` char(40) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_sampel` char(40) ,
 `nama_dokter` char(50) ,
 `alamat` char(60) ,
 `kelas` char(5) ,
 `nama_sex` char(10) ,
 `nama_pasien` char(60) 
)*/;

/*Table structure for table `v_mr_history_radiologi` */

DROP TABLE IF EXISTS `v_mr_history_radiologi`;

/*!50001 DROP VIEW IF EXISTS `v_mr_history_radiologi` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_history_radiologi` */;

/*!50001 CREATE TABLE  `v_mr_history_radiologi`(
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_ro_det_trn` int(11) ,
 `id_ro_trn` int(11) ,
 `nama` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `diagnosa` varchar(150) ,
 `kelas` char(5) ,
 `nama_tarif` char(60) ,
 `hasil1` mediumtext ,
 `kesan` mediumtext ,
 `tarif` int(11) ,
 `jumlah` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_dokter` char(50) ,
 `penanggung` char(50) ,
 `nama_pengirim` char(60) ,
 `alamat` char(60) ,
 `sex` varchar(9) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `v_mr_icd` */

DROP TABLE IF EXISTS `v_mr_icd`;

/*!50001 DROP VIEW IF EXISTS `v_mr_icd` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_icd` */;

/*!50001 CREATE TABLE  `v_mr_icd`(
 `diagnosa` varchar(163) ,
 `icd` varchar(10) ,
 `no_urut` int(20) unsigned ,
 `dtd` char(10) ,
 `stp` char(6) ,
 `ewar` char(10) 
)*/;

/*Table structure for table `v_mr_kecamatan_lb1` */

DROP TABLE IF EXISTS `v_mr_kecamatan_lb1`;

/*!50001 DROP VIEW IF EXISTS `v_mr_kecamatan_lb1` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_kecamatan_lb1` */;

/*!50001 CREATE TABLE  `v_mr_kecamatan_lb1`(
 `kode_kabupaten` int(11) ,
 `kode_kecamatan` int(11) ,
 `nama_kecamatan` char(60) ,
 `id_kecamatan` int(11) 
)*/;

/*Table structure for table `v_mr_kelas_sekarang` */

DROP TABLE IF EXISTS `v_mr_kelas_sekarang`;

/*!50001 DROP VIEW IF EXISTS `v_mr_kelas_sekarang` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_kelas_sekarang` */;

/*!50001 CREATE TABLE  `v_mr_kelas_sekarang`(
 `kelas` char(5) ,
 `id_unit` int(11) 
)*/;

/*Table structure for table `v_mr_label` */

DROP TABLE IF EXISTS `v_mr_label`;

/*!50001 DROP VIEW IF EXISTS `v_mr_label` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_label` */;

/*!50001 CREATE TABLE  `v_mr_label`(
 `id_catatan_medik` varchar(34) ,
 `id_pasien` int(11) ,
 `nama` varchar(68) ,
 `unit` varchar(67) ,
 `alamat` char(60) 
)*/;

/*Table structure for table `v_mr_lap_diagnosa` */

DROP TABLE IF EXISTS `v_mr_lap_diagnosa`;

/*!50001 DROP VIEW IF EXISTS `v_mr_lap_diagnosa` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_lap_diagnosa` */;

/*!50001 CREATE TABLE  `v_mr_lap_diagnosa`(
 `id_rla` int(10) ,
 `laki` int(4) ,
 `perempuan` int(4) ,
 `tanggal` date ,
 `id_catatan_medik` int(8) ,
 `bl` varchar(4) ,
 `poli_inap` int(1) ,
 `id_unit` int(11) ,
 `icd` char(10) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `sex` varchar(9) ,
 `nama_unit` char(30) ,
 `diagnosa` varchar(150) ,
 `umur` varchar(19) 
)*/;

/*Table structure for table `v_mr_lap_kunj_bl_poli` */

DROP TABLE IF EXISTS `v_mr_lap_kunj_bl_poli`;

/*!50001 DROP VIEW IF EXISTS `v_mr_lap_kunj_bl_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_lap_kunj_bl_poli` */;

/*!50001 CREATE TABLE  `v_mr_lap_kunj_bl_poli`(
 `kode` int(11) ,
 `nama` char(60) ,
 `baru` bigint(21) ,
 `lama` bigint(21) ,
 `subTotal` bigint(22) ,
 `laki` bigint(21) ,
 `perempuan` bigint(21) ,
 `total` int(11) ,
 `nama_petugas` char(50) ,
 `tgl_awal` date ,
 `tgl_akhir` date 
)*/;

/*Table structure for table `v_mr_lap_kunjungan_per_kecamatan` */

DROP TABLE IF EXISTS `v_mr_lap_kunjungan_per_kecamatan`;

/*!50001 DROP VIEW IF EXISTS `v_mr_lap_kunjungan_per_kecamatan` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_lap_kunjungan_per_kecamatan` */;

/*!50001 CREATE TABLE  `v_mr_lap_kunjungan_per_kecamatan`(
 `id_catatan_medik` int(8) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama` char(60) ,
 `alamat` varchar(243) ,
 `id_kecamatan` int(11) ,
 `id_mr_bl` int(20) unsigned ,
 `nama_unit` char(30) ,
 `nama_kecamatan` char(60) 
)*/;

/*Table structure for table `v_mr_lap_per_diagnosa` */

DROP TABLE IF EXISTS `v_mr_lap_per_diagnosa`;

/*!50001 DROP VIEW IF EXISTS `v_mr_lap_per_diagnosa` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_lap_per_diagnosa` */;

/*!50001 CREATE TABLE  `v_mr_lap_per_diagnosa`(
 `id_rla` int(10) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_unit` char(30) ,
 `id_catatan_medik` int(8) ,
 `id_register` int(11) ,
 `icd` char(10) ,
 `poli_inap` int(1) ,
 `id_unit` int(11) ,
 `sex` varchar(9) ,
 `rawat` varchar(4) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_mr_lap_stp` */

DROP TABLE IF EXISTS `v_mr_lap_stp`;

/*!50001 DROP VIEW IF EXISTS `v_mr_lap_stp` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_lap_stp` */;

/*!50001 CREATE TABLE  `v_mr_lap_stp`(
 `stp` char(6) ,
 `dtd` char(10) ,
 `ewar` char(10) ,
 `icd` char(10) ,
 `kode_rs` char(10) ,
 `diagnosa` varchar(150) ,
 `0_6hrlk` decimal(32,0) ,
 `7_28hrlk` decimal(32,0) ,
 `28_1thlk` decimal(32,0) ,
 `1_4thlk` decimal(32,0) ,
 `5_14thlk` decimal(32,0) ,
 `15_24thlk` decimal(32,0) ,
 `25_44thlk` decimal(32,0) ,
 `45_64thlk` decimal(32,0) ,
 `65thlk` decimal(32,0) ,
 `laki` decimal(32,0) ,
 `hiduplk` decimal(32,0) ,
 `matilk` decimal(32,0) ,
 `0_6hrpr` decimal(32,0) ,
 `7_28hrpr` decimal(32,0) ,
 `28_1thpr` decimal(32,0) ,
 `1_4thpr` decimal(32,0) ,
 `5_14thpr` decimal(32,0) ,
 `15_24thpr` decimal(32,0) ,
 `25_44thpr` decimal(32,0) ,
 `45_64thpr` decimal(32,0) ,
 `65thpr` decimal(32,0) ,
 `perempuan` decimal(32,0) ,
 `hiduppr` decimal(32,0) ,
 `matipr` decimal(32,0) 
)*/;

/*Table structure for table `v_mr_pasien` */

DROP TABLE IF EXISTS `v_mr_pasien`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pasien` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pasien` */;

/*!50001 CREATE TABLE  `v_mr_pasien`(
 `iol` varchar(13) ,
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `nama_poli_inap` char(40) ,
 `nama` char(60) ,
 `tgl_lahir` date ,
 `nama_sex` char(10) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_ortu` char(60) ,
 `id_unit` int(3) ,
 `id_asuransi` int(3) ,
 `id_pengirim` int(3) ,
 `id_dokter` int(3) ,
 `id_register` int(8) ,
 `alamat_lengkap` varchar(243) ,
 `alamat` varchar(60) ,
 `alergi` varchar(9) ,
 `nama_dokter` char(50) 
)*/;

/*Table structure for table `v_mr_pasien_inap` */

DROP TABLE IF EXISTS `v_mr_pasien_inap`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_inap` */;

/*!50001 CREATE TABLE  `v_mr_pasien_inap`(
 `iol` varchar(13) ,
 `poli_inap` int(1) ,
 `aktif` int(1) ,
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `nama_poli_inap` char(40) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_lahir` date ,
 `nama_sex` char(10) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_ortu` char(60) ,
 `id_unit` int(3) ,
 `id_asuransi` int(3) ,
 `id_pengirim` int(3) ,
 `id_dokter` int(3) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `id_register` int(8) ,
 `kelas` char(5) ,
 `no_bed` char(3) ,
 `alergi` varchar(9) 
)*/;

/*Table structure for table `v_mr_pasien_inap_total` */

DROP TABLE IF EXISTS `v_mr_pasien_inap_total`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_inap_total` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_inap_total` */;

/*!50001 CREATE TABLE  `v_mr_pasien_inap_total`(
 `total` bigint(21) ,
 `id_unit` int(3) ,
 `nama_unit` char(40) 
)*/;

/*Table structure for table `v_mr_pasien_periksa` */

DROP TABLE IF EXISTS `v_mr_pasien_periksa`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_periksa` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_periksa` */;

/*!50001 CREATE TABLE  `v_mr_pasien_periksa`(
 `iol` varchar(13) ,
 `poli_inap` int(1) ,
 `aktif` int(1) ,
 `id_pasien` int(11) ,
 `tanggal` date ,
 `id_register` int(8) ,
 `id_catatan_medik` int(8) ,
 `nama_poli_inap` char(40) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_lahir` date ,
 `nama_sex` char(10) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_ortu` char(60) ,
 `id_unit` int(11) ,
 `id_asuransi` int(11) ,
 `id_pengirim` int(11) ,
 `id_dokter` int(11) ,
 `nama_dokter` char(50) ,
 `no_periksa` int(11) ,
 `no_pendaftaran` int(11) ,
 `kelas` char(5) ,
 `diagnosa` varchar(150) ,
 `id_mr_bl` int(20) unsigned ,
 `bl` int(1) ,
 `alergi` varchar(9) ,
 `val_poli` varchar(16) ,
 `tgl_hpl` date ,
 `tgl_m_t` date ,
 `val_farmasi_ket` varchar(5) ,
 `val_lab_ket` varchar(5) ,
 `val_farmasi` varchar(11) ,
 `val_lab` varchar(11) 
)*/;

/*Table structure for table `v_mr_pasien_pulang` */

DROP TABLE IF EXISTS `v_mr_pasien_pulang`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_pulang` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_pulang` */;

/*!50001 CREATE TABLE  `v_mr_pasien_pulang`(
 `poli_inap` int(1) ,
 `aktif` int(1) ,
 `iol` varchar(13) ,
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `nama_poli_inap` char(40) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_lahir` date ,
 `nama_sex` char(10) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `nama_ortu` char(60) ,
 `id_unit` int(3) ,
 `id_asuransi` int(3) ,
 `id_pengirim` int(3) ,
 `id_dokter` int(3) ,
 `kelas` char(5) ,
 `no_bed` char(3) ,
 `id_register` int(8) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `tgl_pulang` date ,
 `jam_pulang` char(8) ,
 `diagnosa` varchar(150) ,
 `icd` char(15) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_mr_pasien_pulang_poli` */

DROP TABLE IF EXISTS `v_mr_pasien_pulang_poli`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_pulang_poli` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_pulang_poli` */;

/*!50001 CREATE TABLE  `v_mr_pasien_pulang_poli`(
 `tanggal` date ,
 `jam` char(8) ,
 `iol` int(1) ,
 `aktif` int(1) ,
 `poli_inap` varchar(13) ,
 `id_pasien` int(11) ,
 `id_catatan_medik` int(8) ,
 `nama_poli_inap` char(40) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_lahir` date ,
 `nama_sex` varchar(9) ,
 `tgl_kunjungan` date ,
 `jam_kunjungan` char(8) ,
 `nama_asuransi` char(40) ,
 `nama_ortu` char(60) ,
 `id_unit` int(11) ,
 `id_asuransi` int(11) ,
 `id_pengirim` int(11) ,
 `id_dokter` int(11) ,
 `kelas` char(5) ,
 `no_bed` char(3) ,
 `id_register` int(8) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `tgl_pulang` date ,
 `jam_Pulang` char(8) ,
 `icd` varchar(10) ,
 `diagnosa` varchar(150) ,
 `id_mr_bl` int(20) unsigned ,
 `nama_unit` char(30) ,
 `no_periksa` int(11) ,
 `no_pendaftaran` int(11) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_mr_pekerjaan` */

DROP TABLE IF EXISTS `v_mr_pekerjaan`;

/*!50001 DROP VIEW IF EXISTS `v_mr_pekerjaan` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_pekerjaan` */;

/*!50001 CREATE TABLE  `v_mr_pekerjaan`(
 `id_pekerjaan` int(11) ,
 `nama` char(30) 
)*/;

/*Table structure for table `v_mr_posting` */

DROP TABLE IF EXISTS `v_mr_posting`;

/*!50001 DROP VIEW IF EXISTS `v_mr_posting` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_posting` */;

/*!50001 CREATE TABLE  `v_mr_posting`(
 `id_ksr_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_asuransi` int(11) ,
 `posting` int(1) 
)*/;

/*Table structure for table `v_mr_resep` */

DROP TABLE IF EXISTS `v_mr_resep`;

/*!50001 DROP VIEW IF EXISTS `v_mr_resep` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_resep` */;

/*!50001 CREATE TABLE  `v_mr_resep`(
 `id_pasien` int(11) ,
 `nama_dokter` char(50) ,
 `nama` char(60) ,
 `alamat` char(60) ,
 `tgl_kunjungan` date ,
 `id_catatan_medik` int(8) ,
 `umur` varchar(54) ,
 `nomor` varchar(23) ,
 `lama` varchar(4) ,
 `id_mr_bl` int(20) unsigned ,
 `nama_unit` char(30) ,
 `id_unit` int(11) ,
 `id_dokter` int(11) ,
 `nama_asuransi` char(40) ,
 `tgl_lahir` date 
)*/;

/*Table structure for table `v_mr_sjr` */

DROP TABLE IF EXISTS `v_mr_sjr`;

/*!50001 DROP VIEW IF EXISTS `v_mr_sjr` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_sjr` */;

/*!50001 CREATE TABLE  `v_mr_sjr`(
 `id_sjr` int(11) ,
 `no_sjr` varchar(25) ,
 `tanggal` timestamp ,
 `id_register` int(8) ,
 `id_catatan_medik` int(8) ,
 `nama` char(60) ,
 `diagnosa` varchar(150) ,
 `alamat` varchar(243) ,
 `nama_pengirim` char(60) ,
 `nama_dokter` char(50) ,
 `ket_periksa` char(255) ,
 `ket_diagnosa` char(255) ,
 `ket_obat` char(255) ,
 `ket_anjuran` char(255) ,
 `tgl_pulang` date ,
 `sex` varchar(9) ,
 `umur` varchar(56) ,
 `nama_kondisi_pulang` char(40) 
)*/;

/*Table structure for table `v_mr_tt` */

DROP TABLE IF EXISTS `v_mr_tt`;

/*!50001 DROP VIEW IF EXISTS `v_mr_tt` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_tt` */;

/*!50001 CREATE TABLE  `v_mr_tt`(
 `id_mr_tt` int(11) ,
 `kelas` char(5) ,
 `no_bed` char(3) ,
 `id_unit` int(11) ,
 `id_register` bigint(11) ,
 `nama` char(60) ,
 `nama_sex` varchar(18) ,
 `ket_antri` varchar(15) ,
 `warna` varchar(11) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `tgl_inap` date ,
 `jam_inap` char(8) ,
 `id_catatan_medik` int(8) ,
 `rencana_pulang` char(70) ,
 `alergi` varchar(9) ,
 `alamat` char(60) ,
 `urutan` int(11) ,
 `diagnosa` varchar(150) ,
 `icd` char(15) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) ,
 `id_asuransi` int(3) ,
 `id_ket_antri` int(1) 
)*/;

/*Table structure for table `v_mr_tt_kelas` */

DROP TABLE IF EXISTS `v_mr_tt_kelas`;

/*!50001 DROP VIEW IF EXISTS `v_mr_tt_kelas` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_tt_kelas` */;

/*!50001 CREATE TABLE  `v_mr_tt_kelas`(
 `kelas` char(5) ,
 `id_unit` int(11) ,
 `id_mr_tt` int(11) 
)*/;

/*Table structure for table `v_mr_tt_kelas_sensus` */

DROP TABLE IF EXISTS `v_mr_tt_kelas_sensus`;

/*!50001 DROP VIEW IF EXISTS `v_mr_tt_kelas_sensus` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_tt_kelas_sensus` */;

/*!50001 CREATE TABLE  `v_mr_tt_kelas_sensus`(
 `kelas` char(5) ,
 `id_unit` int(11) ,
 `id_mr_tt` int(11) 
)*/;

/*Table structure for table `v_mr_tt_sensus` */

DROP TABLE IF EXISTS `v_mr_tt_sensus`;

/*!50001 DROP VIEW IF EXISTS `v_mr_tt_sensus` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_tt_sensus` */;

/*!50001 CREATE TABLE  `v_mr_tt_sensus`(
 `id_sensus_ranap` int(11) ,
 `tanggal` date ,
 `nama_unit` char(30) ,
 `tgl_entri` date ,
 `id_unit` int(11) 
)*/;

/*Table structure for table `v_mr_tt_unit` */

DROP TABLE IF EXISTS `v_mr_tt_unit`;

/*!50001 DROP VIEW IF EXISTS `v_mr_tt_unit` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_tt_unit` */;

/*!50001 CREATE TABLE  `v_mr_tt_unit`(
 `no_bed` char(3) ,
 `id_unit` int(11) ,
 `kelas` char(5) ,
 `id_mr_tt` int(11) 
)*/;

/*Table structure for table `v_mr_unit_inap` */

DROP TABLE IF EXISTS `v_mr_unit_inap`;

/*!50001 DROP VIEW IF EXISTS `v_mr_unit_inap` */;
/*!50001 DROP TABLE IF EXISTS `v_mr_unit_inap` */;

/*!50001 CREATE TABLE  `v_mr_unit_inap`(
 `id_unit` int(11) ,
 `nama_unit` char(30) ,
 `kelompok` int(11) 
)*/;

/*Table structure for table `v_pekerjaan` */

DROP TABLE IF EXISTS `v_pekerjaan`;

/*!50001 DROP VIEW IF EXISTS `v_pekerjaan` */;
/*!50001 DROP TABLE IF EXISTS `v_pekerjaan` */;

/*!50001 CREATE TABLE  `v_pekerjaan`(
 `id_pekerjaan` int(11) ,
 `nama` char(30) 
)*/;

/*Table structure for table `v_psdi_mst_petugas` */

DROP TABLE IF EXISTS `v_psdi_mst_petugas`;

/*!50001 DROP VIEW IF EXISTS `v_psdi_mst_petugas` */;
/*!50001 DROP TABLE IF EXISTS `v_psdi_mst_petugas` */;

/*!50001 CREATE TABLE  `v_psdi_mst_petugas`(
 `id_petugas` int(11) ,
 `nama` char(60) ,
 `nama_user` char(20) ,
 `id_unit` int(11) ,
 `unit` char(30) ,
 `jabatan` int(11) ,
 `id_aplikasi` int(11) 
)*/;

/*Table structure for table `v_psdi_petugas` */

DROP TABLE IF EXISTS `v_psdi_petugas`;

/*!50001 DROP VIEW IF EXISTS `v_psdi_petugas` */;
/*!50001 DROP TABLE IF EXISTS `v_psdi_petugas` */;

/*!50001 CREATE TABLE  `v_psdi_petugas`(
 `id_petugas` int(11) ,
 `nama` char(60) ,
 `nama_user` char(20) ,
 `id_unit` int(11) ,
 `unit` char(30) ,
 `jabatan` int(11) ,
 `id_aplikasi` int(11) ,
 `id_jabatan` int(11) 
)*/;

/*Table structure for table `v_psdi_riw_aplikasi` */

DROP TABLE IF EXISTS `v_psdi_riw_aplikasi`;

/*!50001 DROP VIEW IF EXISTS `v_psdi_riw_aplikasi` */;
/*!50001 DROP TABLE IF EXISTS `v_psdi_riw_aplikasi` */;

/*!50001 CREATE TABLE  `v_psdi_riw_aplikasi`(
 `id_riw_aplikasi` int(11) ,
 `id_petugas` int(11) ,
 `id_aplikasi` int(11) ,
 `nama_aplikasi` char(40) ,
 `transaksi` varchar(5) ,
 `data` varchar(5) ,
 `laporan` varchar(5) ,
 `hapus` varchar(5) 
)*/;

/*Table structure for table `v_ro_cetak_nota` */

DROP TABLE IF EXISTS `v_ro_cetak_nota`;

/*!50001 DROP VIEW IF EXISTS `v_ro_cetak_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_ro_cetak_nota` */;

/*!50001 CREATE TABLE  `v_ro_cetak_nota`(
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `id_ro_det_trn` int(11) ,
 `id_ro_trn` int(11) ,
 `nama` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `diagnosa` varchar(150) ,
 `kelas` char(5) ,
 `nama_tarif` char(60) ,
 `hasil` text ,
 `kesan` text ,
 `tarif` int(11) ,
 `jumlah` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `nama_dokter` char(50) ,
 `penanggung` char(50) ,
 `nama_pengirim` char(60) ,
 `alamat` char(60) ,
 `sex` varchar(9) ,
 `total` bigint(21) ,
 `kesan_usg` text ,
 `hepar` text ,
 `lien` text ,
 `ren` text ,
 `vf` text ,
 `pankreas` text ,
 `vu` text ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_ro_det_trn` */

DROP TABLE IF EXISTS `v_ro_det_trn`;

/*!50001 DROP VIEW IF EXISTS `v_ro_det_trn` */;
/*!50001 DROP TABLE IF EXISTS `v_ro_det_trn` */;

/*!50001 CREATE TABLE  `v_ro_det_trn`(
 `nama` char(60) ,
 `id_ro_det_trn` int(11) ,
 `id_ro_trn` int(11) ,
 `jumlah` int(11) ,
 `tarif` int(11) ,
 `total` bigint(22) ,
 `diskon` int(11) 
)*/;

/*Table structure for table `v_ro_hasil` */

DROP TABLE IF EXISTS `v_ro_hasil`;

/*!50001 DROP VIEW IF EXISTS `v_ro_hasil` */;
/*!50001 DROP TABLE IF EXISTS `v_ro_hasil` */;

/*!50001 CREATE TABLE  `v_ro_hasil`(
 `id_ro_det_trn` int(11) ,
 `id_ro_trn` int(11) ,
 `nama` char(60) ,
 `hasil` text ,
 `kesan` text ,
 `hepar` text ,
 `lien` text ,
 `ren` text ,
 `vf` text ,
 `pankreas` text ,
 `vu` text 
)*/;

/*Table structure for table `v_ro_nota` */

DROP TABLE IF EXISTS `v_ro_nota`;

/*!50001 DROP VIEW IF EXISTS `v_ro_nota` */;
/*!50001 DROP TABLE IF EXISTS `v_ro_nota` */;

/*!50001 CREATE TABLE  `v_ro_nota`(
 `nama` char(60) ,
 `alamat` char(60) ,
 `nama_unit` char(30) ,
 `nama_asuransi` char(40) ,
 `id_ro_trn` int(11) ,
 `id_catatan_medik` int(11) ,
 `id_register` int(11) ,
 `tanggal` date ,
 `jam` char(8) ,
 `kelas` char(5) ,
 `id_asuransi` int(11) ,
 `biaya` int(11) ,
 `id_petugas` int(11) ,
 `umur_th` int(11) ,
 `umur_bln` int(11) ,
 `umur_hr` int(11) ,
 `nama_dokter` char(50) ,
 `nama_pengirim` char(60) ,
 `nama_rujukan` char(50) ,
 `ket_lunas` varchar(14) ,
 `diagnosa` varchar(150) ,
 `years` int(9) ,
 `months` bigint(14) ,
 `days` bigint(17) 
)*/;

/*Table structure for table `v_ro_total` */

DROP TABLE IF EXISTS `v_ro_total`;

/*!50001 DROP VIEW IF EXISTS `v_ro_total` */;
/*!50001 DROP TABLE IF EXISTS `v_ro_total` */;

/*!50001 CREATE TABLE  `v_ro_total`(
 `sub_total` decimal(43,0) ,
 `grand_total` decimal(42,0) ,
 `diskon` decimal(42,0) ,
 `id_ro_trn` int(11) 
)*/;

/*Table structure for table `v_tanggal_jam` */

DROP TABLE IF EXISTS `v_tanggal_jam`;

/*!50001 DROP VIEW IF EXISTS `v_tanggal_jam` */;
/*!50001 DROP TABLE IF EXISTS `v_tanggal_jam` */;

/*!50001 CREATE TABLE  `v_tanggal_jam`(
 `tanggal` date ,
 `jam` time 
)*/;

/*Table structure for table `v_test_tanggal` */

DROP TABLE IF EXISTS `v_test_tanggal`;

/*!50001 DROP VIEW IF EXISTS `v_test_tanggal` */;
/*!50001 DROP TABLE IF EXISTS `v_test_tanggal` */;

/*!50001 CREATE TABLE  `v_test_tanggal`(
 `id_pasien` int(11) ,
 `CAST(DATE(tanggal)AS CHAR(10))` varchar(10) ,
 `CAST(TIME(tanggal) AS CHAR(7))` varchar(7) 
)*/;

/*View structure for view vBangsalAntrianKamar */

/*!50001 DROP TABLE IF EXISTS `vBangsalAntrianKamar` */;
/*!50001 DROP VIEW IF EXISTS `vBangsalAntrianKamar` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vBangsalAntrianKamar` AS (select `a`.`id_bangsal_antrian_kamar` AS `id_bangsal_antrian_kamar`,`a`.`nama` AS `nama`,`a`.`alamat` AS `alamat`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`no_bed` AS `no_bed`,`b`.`nama_unit` AS `nama_unit`,(case when (`a`.`sex` = 1) then '/img/laki.png' else '/img/perempuan.png' end) AS `nama_sex`,`a`.`telpon` AS `telpon` from (`bangsal_antrian_kamar` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) where (`a`.`aktif` = 1)) */;

/*View structure for view v_bangsal_icd */

/*!50001 DROP TABLE IF EXISTS `v_bangsal_icd` */;
/*!50001 DROP VIEW IF EXISTS `v_bangsal_icd` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bangsal_icd` AS (select `a`.`id_bangsal_diagnosa` AS `id_bangsal_diagnosa`,`a`.`icd` AS `icd`,`b`.`diagnosa` AS `diagnosa`,`a`.`catatan` AS `catatan`,`a`.`ke` AS `ke`,`a`.`id_register` AS `id_register` from (`bangsal_diagnosa` `a` join `mr_icd` `b` on((`a`.`icd` = `b`.`icd`)))) */;

/*View structure for view v_bangsal_icd9 */

/*!50001 DROP TABLE IF EXISTS `v_bangsal_icd9` */;
/*!50001 DROP VIEW IF EXISTS `v_bangsal_icd9` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bangsal_icd9` AS (select `a`.`id_bangsal_diagnosa` AS `id_bangsal_diagnosa`,`a`.`icd` AS `icd`,`b`.`diagnosa` AS `diagnosa`,`a`.`catatan` AS `catatan`,`c`.`bangsal_status_icd` AS `ke`,`a`.`id_register` AS `id_register` from ((`bangsal_diagnosa` `a` join `MR_ICD` `b` on((`a`.`icd` = `b`.`icd`))) join `bangsal_status_icd` `c` on((`a`.`ke` = `c`.`id_bangsal_status_icd`)))) */;

/*View structure for view v_data_pegawai */

/*!50001 DROP TABLE IF EXISTS `v_data_pegawai` */;
/*!50001 DROP VIEW IF EXISTS `v_data_pegawai` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_data_pegawai` AS (select `a`.`nik` AS `nik`,`a`.`nama` AS `nama`,`a`.`alamat` AS `alamat`,`a`.`tempat` AS `tempat`,`a`.`tgl_lahir` AS `tgl_lahir`,(case when (`a`.`sex` = 1) then 'L' else 'P' end) AS `jenis_kelamin`,`a`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`tanggal_keluar` AS `tanggal_keluar`,`d`.`nama_jabatan` AS `nama_jabatan`,`e`.`nama_aplikasi` AS `nama_aplikasi`,`b`.`nama_status` AS `nama_status`,`a`.`nomor_str` AS `nomor_str`,`a`.`nomor_sip` AS `nomor_sip`,`a`.`fungsional` AS `fungsional`,`a`.`profesi` AS `profesi`,`a`.`pendidikan_terakhir` AS `pendidikan_terakhir`,`a`.`jurusan` AS `jurusan`,`a`.`tahun_lulus` AS `tahun_lulus`,`c`.`nama_unit` AS `nama_unit`,`a`.`nama_user` AS `nama_user` from ((((`psdi_petugas` `a` left join `psdi_status_petugas` `b` on((`a`.`status` = `b`.`id_status`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `psdi_jabatan` `d` on((`a`.`id_jabatan` = `d`.`id_jabatan`))) left join `psdi_aplikasi` `e` on((`a`.`id_aplikasi` = `e`.`id_aplikasi`)))) */;

/*View structure for view v_desa */

/*!50001 DROP TABLE IF EXISTS `v_desa` */;
/*!50001 DROP VIEW IF EXISTS `v_desa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_desa` AS (select `a`.`id_desa` AS `id_desa`,`a`.`kode_kecamatan` AS `kode_kecamatan`,`a`.`kode_desa` AS `kode_desa`,`a`.`nama_desa` AS `nama_desa`,`b`.`nama_kecamatan` AS `nama_kecamatan` from (`mr_desa_bps` `a` left join `mr_kecamatan_bps` `b` on((`a`.`kode_kecamatan` = `b`.`kode_kecamatan`)))) */;

/*View structure for view v_far_copy_resep */

/*!50001 DROP TABLE IF EXISTS `v_far_copy_resep` */;
/*!50001 DROP VIEW IF EXISTS `v_far_copy_resep` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_copy_resep` AS (select `a`.`id_far_det_trn` AS `id_far_det_trn`,`d`.`tanggal` AS `tanggal`,`d`.`jam` AS `jam`,`a`.`id_far_trn` AS `id_far_trn`,`g`.`nama` AS `nama`,`g`.`alamat` AS `alamat`,`c`.`nama` AS `nama_obat`,`a`.`qty` AS `qty`,`a`.`idx` AS `idx`,`a`.`harga` AS `harga`,`a`.`subtotal` AS `subtotal`,`a`.`id_obat` AS `id_obat`,(case when (`a`.`poli_inap` = 1) then 'Rawat Jalan' else 'Rawat Inap' end) AS `rawat`,concat(`a`.`dosis`,' X ',`a`.`hari`,' ',`b`.`nama_satuan_minum`) AS `dosis`,`a`.`id_far_satuan_minum` AS `id_far_satuan_minum`,`e`.`nama_unit` AS `nama_unit`,`d`.`id_register` AS `id_register`,`d`.`id_catatan_medik` AS `id_catatan_medik`,`f`.`nama_dokter` AS `nama_dokter` from ((((((`far_det_trn_fix` `a` left join `far_satuan_minum` `b` on((`a`.`id_far_satuan_minum` = `b`.`id_far_satuan_minum`))) left join `far_stok` `c` on((`a`.`id_obat` = `c`.`no_urut`))) left join `far_trn` `d` on((`a`.`id_far_trn` = `d`.`id_far_trn`))) left join `mr_unit` `e` on((`d`.`id_unit` = `e`.`id_unit`))) left join `mr_dokter` `f` on((`d`.`id_dokter` = `f`.`id_dokter`))) left join `mr_pasien` `g` on((`d`.`id_catatan_medik` = `g`.`id_catatan_medik`)))) */;

/*View structure for view v_far_daftar_nota */

/*!50001 DROP TABLE IF EXISTS `v_far_daftar_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_far_daftar_nota` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_daftar_nota` AS (select (case when (`a`.`lunas` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `lunas`,`a`.`id_far_trn` AS `id_far_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,(case when (`c`.`id_catatan_medik` like 10000000) then `a`.`nama` else `c`.`nama` end) AS `nama`,`c`.`alamat` AS `alamat`,`b`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_dokter` AS `id_dokter`,`e`.`nama_dokter` AS `nama_dokter`,`a`.`poli_inap` AS `poli_inap`,(case when (`a`.`val_farmasi` = 1) then '/img/formulir.png' end) AS `val_farmasi`,(case when (`c`.`alergi` = 1) then 'color:red' else 'color:' end) AS `alergi`,ifnull(`a`.`diskon`,0) AS `diskon`,ifnull((`a`.`biaya` - ((ifnull(`a`.`diskon`,0) * `a`.`biaya`) / 100)),0) AS `grand_total` from ((((`far_trn` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) join `mr_pasien` `c` on((`a`.`id_catatan_medik` = `c`.`id_catatan_medik`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) join `mr_dokter` `e` on((`a`.`id_dokter` = `e`.`id_dokter`))) order by `a`.`id_far_trn` desc) */;

/*View structure for view v_far_daftar_obat */

/*!50001 DROP TABLE IF EXISTS `v_far_daftar_obat` */;
/*!50001 DROP VIEW IF EXISTS `v_far_daftar_obat` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_daftar_obat` AS (select sql_cache `fs`.`no_urut` AS `no_urut`,`fs`.`nama` AS `nama`,`fs`.`harga_pokok` AS `harga_pokok`,`fs`.`harga_beli` AS `harga_beli`,`fs`.`harga_jual` AS `harga_jual`,`fs`.`stok_inap` AS `stok_inap`,`fs`.`stok_poli` AS `stok_poli`,`sat`.`nama` AS `satuan`,`a`.`nama_far_asuransi` AS `nama_asuransi`,`fs`.`asuransi` AS `asuransi` from ((`far_stok` `fs` straight_join `far_satuan` `sat` on((`sat`.`id_satuan` = `fs`.`satuan`))) straight_join `far_asuransi` `a` on((`fs`.`asuransi` = `a`.`id_far_asuransi`))) order by `fs`.`nama`) */;

/*View structure for view v_far_daftar_sp_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_daftar_sp_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_daftar_sp_inap` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_daftar_sp_inap` AS (select `a`.`id_no_sp` AS `id_no_sp`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`b`.`nama` AS `nama`,`c`.`nama` AS `petugas`,`a`.`id_suplier` AS `id_suplier`,`a`.`id_petugas` AS `id_petugas`,`a`.`tanggal_tempo` AS `tanggal_tempo`,`a`.`tanggal_terima` AS `tanggal_terima`,`a`.`tanggal_faktur` AS `tanggal_faktur`,ifnull(`a`.`faktur`,'0') AS `faktur`,`a`.`pembayaran` AS `pembayaran`,`a`.`id_penerima` AS `id_penerima`,ifnull(`a`.`total`,0) AS `total`,`a`.`jumlah` AS `jumlah`,`a`.`meterai` AS `meterai`,(case when (`a`.`valid_keu` = 0) then '/img/belum.png' else '/img/sudah.png' end) AS `valid_keu` from ((`far_nosp_inap` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`))) join `psdi_petugas` `c` on((`a`.`id_petugas` = `c`.`id_petugas`)))) */;

/*View structure for view v_far_daftar_sp_poli */

/*!50001 DROP TABLE IF EXISTS `v_far_daftar_sp_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_far_daftar_sp_poli` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_daftar_sp_poli` AS (select `a`.`id_no_sp` AS `id_no_sp`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`b`.`nama` AS `nama`,`c`.`nama` AS `petugas`,`a`.`id_suplier` AS `id_suplier`,`a`.`id_petugas` AS `id_petugas`,`a`.`tanggal_tempo` AS `tanggal_tempo`,`a`.`tanggal_terima` AS `tanggal_terima`,`a`.`tanggal_faktur` AS `tanggal_faktur`,ifnull(`a`.`faktur`,'0') AS `faktur`,`a`.`pembayaran` AS `pembayaran`,`a`.`id_penerima` AS `id_penerima`,ifnull(`a`.`total`,0) AS `total`,`a`.`jumlah` AS `jumlah`,`a`.`meterai` AS `meterai`,(case when (`a`.`valid_keu` = 0) then '/img/belum.png' else '/img/sudah.png' end) AS `valid_keu` from ((`far_nosp` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`))) join `psdi_petugas` `c` on((`a`.`id_petugas` = `c`.`id_petugas`))) order by `a`.`tanggal` desc) */;

/*View structure for view v_far_daftar_trn_stok_keluar */

/*!50001 DROP TABLE IF EXISTS `v_far_daftar_trn_stok_keluar` */;
/*!50001 DROP VIEW IF EXISTS `v_far_daftar_trn_stok_keluar` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_daftar_trn_stok_keluar` AS (select `a`.`id_far_stok_keluar` AS `id_far_stok_keluar`,`b`.`id_far_det_trn_stok_keluar` AS `id_far_det_trn_stok_keluar`,`c`.`nama_unit` AS `unt`,`a`.`tgl` AS `tgl`,`a`.`id_pemesan` AS `id_pemesan`,`e`.`nama` AS `poli`,`b`.`id_barang` AS `id_barang`,`d`.`nama` AS `nama`,`b`.`permintaan` AS `permintaan`,`b`.`id_satuan` AS `id_satuan`,`b`.`jumlah` AS `jumlah`,`a`.`id_unit` AS `id_unit`,`a`.`iol` AS `iol`,`f`.`nama` AS `satuan_jual`,(case when (`b`.`jumlah` > 0) then '/img/sudah.png' else '/img/belum.png' end) AS `penuhi` from (((((`far_trn_stok_keluar` `a` join `far_det_trn_stok_keluar` `b` on((`a`.`id_far_stok_keluar` = `b`.`id_trn`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `far_stok` `d` on((`b`.`id_barang` = `d`.`no_urut`))) left join `mr_iol` `e` on((`a`.`iol` = `e`.`id_mr_iol`))) left join `far_satuan` `f` on((`b`.`id_satuan` = `f`.`id_satuan`))) order by `a`.`id_far_stok_keluar` desc) */;

/*View structure for view v_far_depo */

/*!50001 DROP TABLE IF EXISTS `v_far_depo` */;
/*!50001 DROP VIEW IF EXISTS `v_far_depo` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_depo` AS (select `a`.`nama` AS `nama`,`b`.`nama` AS `nama_kel`,`a`.`harga_pokok` AS `harga_pokok`,`a`.`stok_inap` AS `stok_inap`,`a`.`batas_stok_inap` AS `batas_stok_inap`,`a`.`stok_poli` AS `stok_poli`,`a`.`batas_stok_poli` AS `batas_stok_poli` from (`far_stok` `a` left join `far_kel` `b` on((`a`.`kel` = `b`.`id_far_kel`)))) */;

/*View structure for view v_far_det_trn_stok_keluar */

/*!50001 DROP TABLE IF EXISTS `v_far_det_trn_stok_keluar` */;
/*!50001 DROP VIEW IF EXISTS `v_far_det_trn_stok_keluar` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_det_trn_stok_keluar` AS (select `a`.`id_far_det_trn_stok_keluar` AS `id_far_det_trn_stok_keluar`,`a`.`id_barang` AS `id_barang`,`a`.`jumlah` AS `jumlah`,`a`.`id_trn` AS `id_trn`,`d`.`nama` AS `nama_satuan`,`a`.`permintaan` AS `permintaan`,`b`.`nama` AS `nama`,`c`.`nama_far_asuransi` AS `nama_far_asuransi` from (((`far_det_trn_stok_keluar` `a` left join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_asuransi` `c` on((`b`.`asuransi` = `c`.`id_far_asuransi`))) left join `far_satuan` `d` on((`a`.`id_satuan` = `d`.`id_satuan`)))) */;

/*View structure for view v_far_detil_retur_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_detil_retur_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_detil_retur_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_detil_retur_inap` AS (select `a`.`id_detil_retur_inap` AS `id_detil_retur_inap`,`a`.`no_sp` AS `no_sp`,`a`.`id_retur_inap` AS `id_retur_inap`,`b`.`batch` AS `batch`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli`,`c`.`nama` AS `satuan_beli`,`a`.`catatan` AS `catatan`,`a`.`diskon` AS `diskon`,`a`.`ppn` AS `ppn`,((`a`.`qty` * (`a`.`harga_beli` - `a`.`diskon`)) + ((`a`.`harga_beli` - `a`.`diskon`) * (`a`.`ppn` / 100))) AS `total` from ((`far_detil_retur_inap` `a` left join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`)))) */;

/*View structure for view v_far_detil_retur_poli */

/*!50001 DROP TABLE IF EXISTS `v_far_detil_retur_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_far_detil_retur_poli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_detil_retur_poli` AS (select `a`.`id_detil_retur_poli` AS `id_detil_retur_poli`,`a`.`no_sp` AS `no_sp`,`a`.`id_retur_poli` AS `id_retur_poli`,`b`.`batch` AS `batch`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli`,`c`.`nama` AS `satuan_beli`,`a`.`catatan` AS `catatan`,`a`.`diskon` AS `diskon`,`a`.`ppn` AS `ppn`,(`a`.`qty` * ((`a`.`harga_beli` - `a`.`diskon`) + ((`a`.`harga_beli` - `a`.`diskon`) * (`a`.`ppn` / 100)))) AS `total` from ((`far_detil_retur_poli` `a` left join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`)))) */;

/*View structure for view v_far_faktur_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_faktur_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_faktur_inap` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_faktur_inap` AS (select `a`.`id_no_sp` AS `id_no_sp`,`b`.`nama` AS `nama_suplier`,`a`.`jumlah` AS `jumlah`,`a`.`disc` AS `disc`,`a`.`meterai` AS `meterai`,`a`.`ppn` AS `ppn`,`a`.`total` AS `total`,`a`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`faktur` AS `faktur`,(case when (`a`.`valid_keu` = 0) then '/img/belum.png' else '/img/sudah.png' end) AS `aksi`,`a`.`valid_keu` AS `valid_keu` from (`far_nosp_inap` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`)))) */;

/*View structure for view v_far_faktur_inap_cetak */

/*!50001 DROP TABLE IF EXISTS `v_far_faktur_inap_cetak` */;
/*!50001 DROP VIEW IF EXISTS `v_far_faktur_inap_cetak` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_faktur_inap_cetak` AS (select `a`.`id_no_sp` AS `id_no_sp`,`b`.`nama` AS `nama_suplier`,`a`.`jumlah` AS `jumlah`,`a`.`disc` AS `disc`,`a`.`meterai` AS `meterai`,`a`.`ppn` AS `ppn`,`a`.`total` AS `total`,`a`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`faktur` AS `faktur`,`a`.`id_suplier` AS `id_suplier`,(case when (`a`.`valid_keu` = 0) then '/img/belum.png' else '/img/sudah.png' end) AS `aksi`,`a`.`valid_keu` AS `valid_keu` from (`far_nosp_inap` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`)))) */;

/*View structure for view v_far_faktur_poli */

/*!50001 DROP TABLE IF EXISTS `v_far_faktur_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_far_faktur_poli` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_faktur_poli` AS (select `a`.`id_no_sp` AS `id_no_sp`,`b`.`nama` AS `nama_suplier`,`a`.`jumlah` AS `jumlah`,`a`.`disc` AS `disc`,`a`.`meterai` AS `meterai`,`a`.`ppn` AS `ppn`,`a`.`total` AS `total`,`a`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`faktur` AS `faktur`,(case when (`a`.`valid_keu` = 0) then '/img/belum.png' else '/img/sudah.png' end) AS `aksi`,`a`.`valid_keu` AS `valid_keu` from (`far_nosp` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`)))) */;

/*View structure for view v_far_faktur_poli_cetak */

/*!50001 DROP TABLE IF EXISTS `v_far_faktur_poli_cetak` */;
/*!50001 DROP VIEW IF EXISTS `v_far_faktur_poli_cetak` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_faktur_poli_cetak` AS (select `a`.`id_no_sp` AS `id_no_sp`,`b`.`nama` AS `nama_suplier`,`a`.`jumlah` AS `jumlah`,`a`.`disc` AS `disc`,`a`.`meterai` AS `meterai`,`a`.`ppn` AS `ppn`,`a`.`total` AS `total`,`a`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`faktur` AS `faktur`,`a`.`id_suplier` AS `id_suplier`,(case when (`a`.`valid_keu` = 0) then '/img/belum.png' else '/img/sudah.png' end) AS `aksi`,`a`.`valid_keu` AS `valid_keu` from (`far_nosp` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`)))) */;

/*View structure for view v_far_lap_pembelian */

/*!50001 DROP TABLE IF EXISTS `v_far_lap_pembelian` */;
/*!50001 DROP VIEW IF EXISTS `v_far_lap_pembelian` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_lap_pembelian` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`c`.`tanggal_faktur` AS `tanggal_faktur`,`c`.`tanggal_tempo` AS `tanggal_tempo`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`d`.`nama` AS `nama_suplier`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli`,`a`.`disc` AS `disc`,`c`.`meterai` AS `meterai`,`c`.`faktur` AS `faktur`,(case when (`c`.`ppn` > 0) then round(((`a`.`harga_beli` - `a`.`disc`) * 1.1),0.1) else (`a`.`harga_beli` - `a`.`disc`) end) AS `hpp`,(case when (`c`.`ppn` > 0) then round(((`a`.`harga_beli` - `a`.`disc`) * 0.1),0.1) else 0 end) AS `ppn`,(case when (`c`.`ppn` > 0) then round((`a`.`harga_beli` + ((`a`.`harga_beli` - `a`.`disc`) * 0.1)),0.1) else `a`.`harga_beli` end) AS `sub_total`,(case when (`c`.`ppn` > 0) then round((`a`.`qty` * ((`a`.`harga_beli` - `a`.`disc`) * 1.1)),0.1) else (`a`.`qty` * (`a`.`harga_beli` - `a`.`disc`)) end) AS `grand_total` from (((`far_det_nosp` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) join `far_nosp` `c` on((`a`.`no_sp` = `c`.`id_no_sp`))) join `far_suplier` `d` on((`d`.`id_far_suplier` = `c`.`id_suplier`))) where (`c`.`total` > 0)) */;

/*View structure for view v_far_lap_pembelian_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_lap_pembelian_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_lap_pembelian_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_lap_pembelian_inap` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`c`.`tanggal_faktur` AS `tanggal_faktur`,`c`.`tanggal_tempo` AS `tanggal_tempo`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`d`.`nama` AS `nama_suplier`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli`,`a`.`disc` AS `disc`,`c`.`meterai` AS `meterai`,`c`.`faktur` AS `faktur`,(case when (`c`.`ppn` > 0) then round(((`a`.`harga_beli` - `a`.`disc`) * 1.1),0.1) else (`a`.`harga_beli` - `a`.`disc`) end) AS `hpp`,(case when (`c`.`ppn` > 0) then round(((`a`.`harga_beli` - `a`.`disc`) * 0.1),0.1) else 0 end) AS `ppn`,(case when (`c`.`ppn` > 0) then round((`a`.`harga_beli` + ((`a`.`harga_beli` - `a`.`disc`) * 0.1)),0.1) else `a`.`harga_beli` end) AS `sub_total`,(case when (`c`.`ppn` > 0) then round((`a`.`qty` * ((`a`.`harga_beli` - `a`.`disc`) * 1.1)),0.1) else (`a`.`qty` * (`a`.`harga_beli` - `a`.`disc`)) end) AS `grand_total` from (((`far_det_nosp_inap` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) join `far_nosp_inap` `c` on((`a`.`no_sp` = `c`.`id_no_sp`))) join `far_suplier` `d` on((`d`.`id_far_suplier` = `c`.`id_suplier`))) where (`c`.`total` > 0)) */;

/*View structure for view v_far_per_obat */

/*!50001 DROP TABLE IF EXISTS `v_far_per_obat` */;
/*!50001 DROP VIEW IF EXISTS `v_far_per_obat` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_per_obat` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`d`.`tanggal` AS `tanggal`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`d`.`faktur` AS `faktur`,`a`.`batch` AS `batch`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli`,`c`.`nama` AS `satuan_beli`,`a`.`isi` AS `isi`,`a`.`disc` AS `disc`,`a`.`hp` AS `hp`,`a`.`harga_jual` AS `harga_jual`,`e`.`nama` AS `nama_suplier` from ((((`far_det_nosp` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) join `far_nosp` `d` on((`a`.`no_sp` = `d`.`id_no_sp`))) join `far_suplier` `e` on((`d`.`id_suplier` = `e`.`id_far_suplier`)))) */;

/*View structure for view v_far_per_obat_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_per_obat_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_per_obat_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_per_obat_inap` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`d`.`tanggal` AS `tanggal`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`d`.`faktur` AS `faktur`,`a`.`batch` AS `batch`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli`,`c`.`nama` AS `satuan_beli`,`a`.`isi` AS `isi`,`a`.`disc` AS `disc`,`a`.`hp` AS `hp`,`a`.`harga_jual` AS `harga_jual`,`e`.`nama` AS `nama_suplier` from ((((`far_det_nosp_inap` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) join `far_nosp_inap` `d` on((`a`.`no_sp` = `d`.`id_no_sp`))) join `far_suplier` `e` on((`d`.`id_suplier` = `e`.`id_far_suplier`)))) */;

/*View structure for view v_far_pinajm_obat */

/*!50001 DROP TABLE IF EXISTS `v_far_pinajm_obat` */;
/*!50001 DROP VIEW IF EXISTS `v_far_pinajm_obat` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_pinajm_obat` AS (select `a`.`id_pinjam_obat` AS `id_pinjam_obat`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`poli_inap` AS `poli_inap`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`a`.`jumlah` AS `jumlah`,`c`.`nama_kel_stok` AS `nama_asal`,`d`.`nama_kel_stok` AS `nama_tujuan`,`e`.`nama` AS `nama_satuan_beli`,`f`.`nama` AS `nama_satuan_jual`,`a`.`asal` AS `asal`,`a`.`tujuan` AS `tujuan`,`a`.`id_petugas` AS `id_petugas`,`a`.`keterangan` AS `keterangan`,(case when (`a`.`tujuan` <= 2) then `e`.`nama` when (`a`.`tujuan` >= 3) then `f`.`nama` end) AS `satuan`,`g`.`nama` AS `nama_petugas` from ((((((`far_pinjam_obat` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_kel_stok` `c` on((`a`.`asal` = `c`.`id_kel_stok`))) left join `far_kel_stok` `d` on((`a`.`tujuan` = `d`.`id_kel_stok`))) left join `far_satuan` `e` on((`b`.`satuan_beli` = `e`.`id_satuan`))) left join `far_satuan` `f` on((`b`.`satuan` = `f`.`id_satuan`))) left join `psdi_petugas` `g` on((`a`.`id_petugas` = `g`.`id_petugas`)))) */;

/*View structure for view v_far_pinjam_obat */

/*!50001 DROP TABLE IF EXISTS `v_far_pinjam_obat` */;
/*!50001 DROP VIEW IF EXISTS `v_far_pinjam_obat` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_pinjam_obat` AS (select `a`.`id_pinjam_obat` AS `id_pinjam_obat`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`poli_inap` AS `poli_inap`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`a`.`jumlah` AS `jumlah`,`c`.`nama_kel_stok` AS `nama_asal`,`d`.`nama_kel_stok` AS `nama_tujuan`,`e`.`nama` AS `nama_satuan_beli`,`f`.`nama` AS `nama_satuan_jual`,`a`.`asal` AS `asal`,`a`.`tujuan` AS `tujuan`,`a`.`id_petugas` AS `id_petugas`,`a`.`keterangan` AS `keterangan`,`a`.`kembali` AS `kembali`,`f`.`nama` AS `satuan`,`g`.`nama` AS `nama_petugas` from ((((((`far_pinjam_obat` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_kel_stok` `c` on((`a`.`asal` = `c`.`id_kel_stok`))) left join `far_kel_stok` `d` on((`a`.`tujuan` = `d`.`id_kel_stok`))) left join `far_satuan` `e` on((`b`.`satuan_beli` = `e`.`id_satuan`))) left join `far_satuan` `f` on((`b`.`satuan` = `f`.`id_satuan`))) left join `psdi_petugas` `g` on((`a`.`id_petugas` = `g`.`id_petugas`)))) */;

/*View structure for view v_far_retur_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_retur_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_retur_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_retur_inap` AS (select `a`.`id_retur_inap` AS `id_retur_inap`,`a`.`faktur` AS `faktur`,`a`.`id_no_sp` AS `id_no_sp`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`id_pegawai` AS `id_pegawai`,`b`.`nama` AS `nama_petugas`,`d`.`nama` AS `nama_suplier`,`c`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`total` AS `total`,`d`.`id_far_suplier` AS `id_far_suplier` from (((`far_retur_inap` `a` left join `psdi_petugas` `b` on((`b`.`id_petugas` = `a`.`id_pegawai`))) left join `far_nosp_inap` `c` on((`a`.`id_no_sp` = `c`.`id_no_sp`))) left join `far_suplier` `d` on((`c`.`id_suplier` = `d`.`id_far_suplier`)))) */;

/*View structure for view v_far_retur_poli */

/*!50001 DROP TABLE IF EXISTS `v_far_retur_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_far_retur_poli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_retur_poli` AS (select `a`.`id_retur_poli` AS `id_retur_poli`,`a`.`faktur` AS `faktur`,`a`.`id_no_sp` AS `id_no_sp`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`id_pegawai` AS `id_pegawai`,`b`.`nama` AS `nama_petugas`,`d`.`nama` AS `nama_suplier`,`c`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`total` AS `total`,`d`.`id_far_suplier` AS `id_far_suplier` from (((`far_retur_poli` `a` left join `psdi_petugas` `b` on((`b`.`id_petugas` = `a`.`id_pegawai`))) left join `far_nosp` `c` on((`a`.`id_no_sp` = `c`.`id_no_sp`))) left join `far_suplier` `d` on((`a`.`id_far_suplier` = `d`.`id_far_suplier`)))) */;

/*View structure for view v_far_satuan_jual */

/*!50001 DROP TABLE IF EXISTS `v_far_satuan_jual` */;
/*!50001 DROP VIEW IF EXISTS `v_far_satuan_jual` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_satuan_jual` AS (select `far_satuan`.`nama` AS `nama`,`far_satuan`.`id_satuan` AS `id_satuan` from `far_satuan`) */;

/*View structure for view v_far_sp_cetak */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_cetak` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_cetak` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_cetak` AS (select `a`.`id_no_sp` AS `id_no_sp`,`b`.`id_det_no_sp` AS `id_det_no_sp`,`c`.`nama` AS `nama`,`c`.`isi` AS `isi`,`f`.`nama` AS `nama_satuan_beli`,`e`.`nama` AS `nama_suplier`,`b`.`id_barang` AS `id_barang`,`b`.`qty` AS `qty`,`b`.`tgl_pesan` AS `tgl_pesan`,`g`.`nama` AS `petugas_pesan`,`c`.`asuransi` AS `asuransi`,`a`.`faktur` AS `faktur`,`a`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`tanggal_tempo` AS `tanggal_tempo`,(case when (`a`.`iol` = 1) then 'Poli' end) AS `iol`,`h`.`nama` AS `penerima`,`c`.`batch` AS `batch`,`b`.`harga_beli` AS `harga_beli`,`b`.`disc` AS `disc`,((case when (`b`.`kirim` = 1) then (case when (`b`.`disc` <= 100) then (`b`.`qty` * (`b`.`harga_beli_suplier` - (`b`.`harga_beli_suplier` * (`b`.`disc` / 100)))) else (`b`.`qty` * (`b`.`harga_beli_suplier` - `b`.`disc`)) end) else 0 end) * ((`b`.`ppn` + 100) / 100)) AS `sub_total`,`a`.`total` AS `total`,`a`.`ppn` AS `ppn`,`a`.`meterai` AS `meterai`,`a`.`jumlah` AS `jumlah` from (((((((`far_nosp` `a` join `far_det_nosp` `b` on((`a`.`id_no_sp` = `b`.`no_sp`))) join `far_stok` `c` on((`b`.`id_barang` = `c`.`no_urut`))) join `mr_iol` `d` on((`a`.`iol` = `d`.`id_mr_iol`))) join `far_suplier` `e` on((`a`.`id_suplier` = `e`.`id_far_suplier`))) left join `far_satuan` `f` on((`c`.`satuan_beli` = `f`.`id_satuan`))) left join `psdi_petugas` `g` on((`a`.`id_petugas` = `g`.`id_petugas`))) left join `psdi_petugas` `h` on((`a`.`id_penerima` = `h`.`id_petugas`)))) */;

/*View structure for view v_far_sp_cetak_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_cetak_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_cetak_inap` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_cetak_inap` AS (select `a`.`id_no_sp` AS `id_no_sp`,`b`.`id_det_no_sp` AS `id_det_no_sp`,`c`.`nama` AS `nama`,`c`.`isi` AS `isi`,`f`.`nama` AS `nama_satuan_beli`,`e`.`nama` AS `nama_suplier`,`b`.`id_barang` AS `id_barang`,`b`.`qty` AS `qty`,`b`.`tgl_pesan` AS `tgl_pesan`,`g`.`nama` AS `petugas_pesan`,`c`.`asuransi` AS `asuransi`,`a`.`faktur` AS `faktur`,`a`.`tanggal_faktur` AS `tanggal_faktur`,`a`.`tanggal_tempo` AS `tanggal_tempo`,(case when (`a`.`iol` = 2) then 'Inap' end) AS `iol`,`h`.`nama` AS `penerima`,`c`.`batch` AS `batch`,`b`.`harga_beli` AS `harga_beli`,`b`.`disc` AS `disc`,((case when (`b`.`kirim` = 1) then (case when (`b`.`disc` <= 100) then (`b`.`qty` * (`b`.`harga_beli_suplier` - (`b`.`harga_beli_suplier` * (`b`.`disc` / 100)))) else (`b`.`qty` * (`b`.`harga_beli_suplier` - `b`.`disc`)) end) else 0 end) * ((`b`.`ppn` + 100) / 100)) AS `sub_total`,`a`.`total` AS `total`,`a`.`ppn` AS `ppn`,`a`.`meterai` AS `meterai`,`a`.`jumlah` AS `jumlah` from (((((((`far_nosp_inap` `a` join `far_det_nosp_inap` `b` on((`a`.`id_no_sp` = `b`.`no_sp`))) join `far_stok` `c` on((`b`.`id_barang` = `c`.`no_urut`))) join `mr_iol` `d` on((`a`.`iol` = `d`.`id_mr_iol`))) join `far_suplier` `e` on((`a`.`id_suplier` = `e`.`id_far_suplier`))) left join `far_satuan` `f` on((`c`.`satuan_beli` = `f`.`id_satuan`))) left join `psdi_petugas` `g` on((`a`.`id_petugas` = `g`.`id_petugas`))) left join `psdi_petugas` `h` on((`a`.`id_penerima` = `h`.`id_petugas`)))) */;

/*View structure for view v_far_sp_detil_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_inap` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_detil_inap` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`b`.`batch` AS `batch`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli_tmp`,`a`.`hp` AS `hp`,`a`.`harga_beli_suplier` AS `harga_beli_suplier`,`a`.`disc` AS `disc`,`b`.`harga_beli` AS `harga_beli`,`b`.`satuan_beli` AS `id_satuan_beli`,`c`.`nama` AS `satuan_beli`,`a`.`faktur` AS `faktur`,`a`.`tgl_ed` AS `tgl_ed`,`b`.`stok_poli` AS `stok_poli`,`b`.`asuransi` AS `asuransi`,`d`.`nama_far_asuransi` AS `nama_far_asuransi`,((case when (`a`.`disc` <= 100) then (`a`.`qty` * (`a`.`harga_beli_suplier` - (`a`.`harga_beli_suplier` * (`a`.`disc` / 100)))) else (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) end) * ((`a`.`ppn` + 100) / 100)) AS `sub_total`,((case when (`a`.`kirim` = 1) then (case when (`a`.`disc` <= 100) then (`a`.`qty` * (`a`.`harga_beli_suplier` - (`a`.`harga_beli_suplier` * (`a`.`disc` + 100)))) else (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) end) else 0 end) * ((`a`.`ppn` / 100) / 100)) AS `total`,(case when (`a`.`kirim` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `kirim`,`a`.`harga_jual` AS `harga_jual`,`b`.`isi` AS `isi`,`b`.`ppn` AS `ppn`,`b`.`margin` AS `margin`,`a`.`ppn_keluaran` AS `ppn_keluaran`,`e`.`id_suplier` AS `id_suplier`,`f`.`nama` AS `nama_suplier` from (((((`far_det_nosp_inap` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) left join `far_asuransi` `d` on((`b`.`asuransi` = `d`.`id_far_asuransi`))) left join `far_nosp_inap` `e` on((`a`.`no_sp` = `e`.`id_no_sp`))) left join `far_suplier` `f` on((`f`.`id_far_suplier` = `e`.`id_suplier`))) where (`b`.`filter_inap` = 1) order by `b`.`nama`) */;

/*View structure for view v_far_sp_detil_inap_retur */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_inap_retur` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_inap_retur` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_detil_inap_retur` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`b`.`batch` AS `batch`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli_tmp`,`a`.`hp` AS `hp`,`a`.`harga_beli_suplier` AS `harga_beli_suplier`,`a`.`disc` AS `disc`,`b`.`harga_beli` AS `harga_beli`,`b`.`satuan_beli` AS `id_satuan_beli`,`c`.`nama` AS `satuan_beli`,`a`.`tgl_ed` AS `tgl_ed`,`b`.`stok_inap` AS `stok_inap`,`b`.`asuransi` AS `asuransi`,`d`.`nama_far_asuransi` AS `nama_far_asuransi`,(`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) AS `sub_total`,(case when (`a`.`kirim` = 1) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end) AS `total`,(case when (`a`.`kirim` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `kirim`,`a`.`harga_jual` AS `harga_jual`,`b`.`isi` AS `isi`,`b`.`ppn` AS `ppn`,`b`.`margin` AS `margin`,`e`.`id_suplier` AS `id_suplier`,`e`.`faktur` AS `faktur` from ((((`far_det_nosp_inap` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) left join `far_asuransi` `d` on((`b`.`asuransi` = `d`.`id_far_asuransi`))) left join `far_nosp_inap` `e` on((`a`.`no_sp` = `e`.`id_no_sp`))) where (`b`.`filter_inap` = 1) order by `b`.`nama`) */;

/*View structure for view v_far_sp_detil_poli */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_poli` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_detil_poli` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`b`.`batch` AS `batch`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli_tmp`,`a`.`hp` AS `hp`,`a`.`harga_beli_suplier` AS `harga_beli_suplier`,`a`.`disc` AS `disc`,`b`.`harga_beli` AS `harga_beli`,`b`.`satuan_beli` AS `id_satuan_beli`,`c`.`nama` AS `satuan_beli`,`a`.`faktur` AS `faktur`,`a`.`tgl_ed` AS `tgl_ed`,`b`.`stok_poli` AS `stok_poli`,`b`.`asuransi` AS `asuransi`,`d`.`nama_far_asuransi` AS `nama_far_asuransi`,((case when (`a`.`disc` <= 100) then (`a`.`qty` * (`a`.`harga_beli_suplier` - (`a`.`harga_beli_suplier` * (`a`.`disc` / 100)))) else (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) end) * ((`a`.`ppn` + 100) / 100)) AS `sub_total`,((case when (`a`.`kirim` = 1) then (case when (`a`.`disc` <= 100) then (`a`.`qty` * (`a`.`harga_beli_suplier` - (`a`.`harga_beli_suplier` * (`a`.`disc` / 100)))) else (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) end) else 0 end) * ((`a`.`ppn` + 100) / 100)) AS `total`,(case when (`a`.`kirim` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `kirim`,`a`.`harga_jual` AS `harga_jual`,`b`.`isi` AS `isi`,`b`.`ppn` AS `ppn`,`b`.`margin` AS `margin`,`a`.`ppn_keluaran` AS `ppn_keluaran`,`e`.`id_suplier` AS `id_suplier`,`f`.`nama` AS `nama_suplier` from (((((`far_det_nosp` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) left join `far_asuransi` `d` on((`b`.`asuransi` = `d`.`id_far_asuransi`))) left join `far_nosp` `e` on((`a`.`no_sp` = `e`.`id_no_sp`))) left join `far_suplier` `f` on((`f`.`id_far_suplier` = `e`.`id_suplier`))) where (`b`.`Filter_poli` = 1) order by `b`.`nama`) */;

/*View structure for view v_far_sp_detil_poli_retur */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_detil_poli_retur` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_detil_poli_retur` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_detil_poli_retur` AS (select `a`.`id_det_no_sp` AS `id_det_no_sp`,`a`.`no_sp` AS `no_sp`,`a`.`id_barang` AS `id_barang`,`b`.`nama` AS `nama`,`b`.`batch` AS `batch`,`a`.`qty` AS `qty`,`a`.`harga_beli` AS `harga_beli_tmp`,`a`.`hp` AS `hp`,`a`.`harga_beli_suplier` AS `harga_beli_suplier`,`a`.`disc` AS `disc`,`b`.`harga_beli` AS `harga_beli`,`b`.`satuan_beli` AS `id_satuan_beli`,`c`.`nama` AS `satuan_beli`,`a`.`tgl_ed` AS `tgl_ed`,`b`.`stok_poli` AS `stok_poli`,`b`.`asuransi` AS `asuransi`,`d`.`nama_far_asuransi` AS `nama_far_asuransi`,(`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) AS `sub_total`,(case when (`a`.`kirim` = 1) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end) AS `total`,(case when (`a`.`kirim` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `kirim`,`a`.`harga_jual` AS `harga_jual`,`b`.`isi` AS `isi`,`b`.`ppn` AS `ppn`,`b`.`margin` AS `margin`,`e`.`id_suplier` AS `id_suplier`,`e`.`faktur` AS `faktur`,`f`.`nama` AS `nama_suplier` from (((((`far_det_nosp` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) left join `far_asuransi` `d` on((`b`.`asuransi` = `d`.`id_far_asuransi`))) left join `far_nosp` `e` on((`a`.`no_sp` = `e`.`id_no_sp`))) left join `far_suplier` `f` on((`e`.`id_suplier` = `f`.`id_far_suplier`))) where (`b`.`Filter_poli` = 1) order by `b`.`nama`) */;

/*View structure for view v_far_sp_total */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_total` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_total` AS (select `a`.`no_sp` AS `no_sp`,sum((case when (`a`.`kirim` = 0) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end)) AS `sub_total_sp`,sum((case when (`a`.`kirim` = 1) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end)) AS `sub_total`,sum((case when (`a`.`kirim` = 1) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end)) AS `total` from (((`far_det_nosp` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) left join `far_asuransi` `d` on((`b`.`asuransi` = `d`.`id_far_asuransi`))) where (`b`.`Filter_poli` = 1) group by `a`.`no_sp` order by `b`.`nama`) */;

/*View structure for view v_far_sp_total_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_sp_total_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_sp_total_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_sp_total_inap` AS (select `a`.`no_sp` AS `no_sp`,sum((case when (`a`.`kirim` = 0) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end)) AS `sub_total_sp`,sum((case when (`a`.`kirim` = 1) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end)) AS `sub_total`,sum((case when (`a`.`kirim` = 1) then (`a`.`qty` * (`a`.`harga_beli_suplier` - `a`.`disc`)) else 0 end)) AS `total` from (((`far_det_nosp_inap` `a` join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan_beli` = `c`.`id_satuan`))) left join `far_asuransi` `d` on((`b`.`asuransi` = `d`.`id_far_asuransi`))) where (`b`.`filter_inap` = 1) group by `a`.`no_sp` order by `b`.`nama`) */;

/*View structure for view v_far_stok */

/*!50001 DROP TABLE IF EXISTS `v_far_stok` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_stok` AS (select `a`.`nama` AS `nama`,`a`.`no_urut` AS `no_urut`,`b`.`nama` AS `satuan_beli`,`c`.`nama` AS `satuan_jual` from ((`far_stok` `a` left join `far_satuan` `b` on((`a`.`satuan_beli` = `b`.`id_satuan`))) left join `v_far_satuan_jual` `c` on((`a`.`satuan` = `c`.`id_satuan`)))) */;

/*View structure for view v_far_stok_all */

/*!50001 DROP TABLE IF EXISTS `v_far_stok_all` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok_all` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_stok_all` AS (select `a`.`no_urut` AS `no_urut`,`a`.`batch` AS `batch`,`a`.`nama` AS `nama`,`b`.`nama` AS `nama_kel`,`f`.`nama` AS `nama_suplier`,`d`.`nama_generik` AS `nama_generik`,`i`.`nama` AS `nama_kode_lain`,`e`.`nama_far_asuransi` AS `nama_far_asuransi`,`a`.`stok_poli` AS `stok_poli`,`a`.`stok_inap` AS `stok_inap`,`j`.`nama` AS `nama_satuan_beli`,`c`.`nama` AS `nama_satuan_jual`,`a`.`isi` AS `isi`,`a`.`harga_beli` AS `harga_beli`,`a`.`harga_pokok` AS `harga_pokok`,`a`.`disc` AS `disc`,`a`.`harga_jual` AS `harga_jual`,`g`.`nama` AS `nama_pabrik` from ((((((((`far_stok` `a` left join `far_kel` `b` on((`a`.`kel` = `b`.`id_far_kel`))) left join `far_satuan` `c` on((`a`.`satuan` = `c`.`id_satuan`))) left join `far_generik` `d` on((`a`.`generik` = `d`.`id_far_generik`))) left join `far_asuransi` `e` on((`a`.`asuransi` = `e`.`id_far_asuransi`))) left join `far_suplier` `f` on((`a`.`suplier` = `f`.`id_far_suplier`))) left join `far_pabrik` `g` on((`a`.`pabrik` = `g`.`id_far_pabrik`))) left join `far_kode_lain` `i` on((`a`.`kode_lain` = `i`.`no_urut`))) left join `far_satuan` `j` on((`a`.`satuan_beli` = `j`.`id_satuan`))) order by `a`.`nama`) */;

/*View structure for view v_far_stok_elk */

/*!50001 DROP TABLE IF EXISTS `v_far_stok_elk` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok_elk` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_stok_elk` AS (select `a`.`id_far_stok_elk` AS `id_far_stok_elk`,`b`.`nama` AS `nama`,`d`.`nama` AS `ket_stok`,`a`.`masuk` AS `masuk`,`a`.`keluar` AS `keluar`,`a`.`sisa` AS `sisa`,`c`.`nama` AS `nama_satuan`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`id_register` AS `id_register`,`a`.`id_trn` AS `id_trn`,`a`.`id_petugas` AS `id_petugas`,`a`.`id_barang` AS `id_barang`,`e`.`nama_unit` AS `nama_unit` from ((((`far_stok_elk` `a` left join `far_stok` `b` on((`a`.`id_barang` = `b`.`no_urut`))) left join `far_satuan` `c` on((`b`.`satuan` = `c`.`id_satuan`))) left join `far_ket_stok` `d` on((`a`.`stok` = `d`.`id_far_ket_stok`))) left join `mr_unit` `e` on((`a`.`id_unit` = `e`.`id_unit`)))) */;

/*View structure for view v_far_stok_inap */

/*!50001 DROP TABLE IF EXISTS `v_far_stok_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok_inap` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_stok_inap` AS (select `far_stok`.`nama` AS `nama`,`far_stok`.`kel` AS `kel`,`far_stok`.`harga_pokok` AS `harga_pokok`,`far_stok`.`disc` AS `disc`,`far_stok`.`harga_beli` AS `harga_beli`,`far_stok`.`harga_jual` AS `harga_jual`,`far_stok`.`batas` AS `batas`,`far_stok`.`suplier` AS `suplier`,`far_stok`.`pabrik` AS `pabrik`,`far_stok`.`isi` AS `isi`,`far_stok`.`satuan` AS `satuan`,`far_stok`.`generik` AS `generik`,`far_stok`.`kode_lain` AS `kode_lain`,`far_stok`.`petugas` AS `petugas`,`far_stok`.`tanggal` AS `tanggal`,`far_stok`.`batch` AS `batch`,`far_stok`.`tgl_ed` AS `tgl_ed`,`far_stok`.`inorder` AS `inorder`,`far_stok`.`no_urut` AS `no_urut`,`far_stok`.`stok_inap` AS `stok_inap`,`far_stok`.`batas_stok_inap` AS `batas_stok_inap`,`far_stok`.`stok_poli` AS `stok_poli`,`far_stok`.`batas_stok_poli` AS `batas_stok_poli`,`far_stok`.`tuslah` AS `tuslah`,`far_stok`.`asuransi` AS `asuransi`,`a`.`nama` AS `satuan_beli`,`far_stok`.`filter_inap` AS `filter_inap`,`far_stok`.`Filter_poli` AS `Filter_poli`,`far_stok`.`harga` AS `harga`,`far_stok`.`satuan_beli` AS `id_satuan_beli`,`b`.`nama_far_asuransi` AS `nama_far_asuransi`,`far_stok`.`stok_depo_inap` AS `stok_depo_inap`,`c`.`nama` AS `satuan_jual` from (((`far_stok` join `far_satuan` `a` on((`far_stok`.`satuan_beli` = `a`.`id_satuan`))) join `far_asuransi` `b` on((`far_stok`.`asuransi` = `b`.`id_far_asuransi`))) join `far_satuan` `c` on((`far_stok`.`satuan` = `c`.`id_satuan`))) where (`far_stok`.`filter_inap` like 1)) */;

/*View structure for view v_far_stok_inap_lab */

/*!50001 DROP TABLE IF EXISTS `v_far_stok_inap_lab` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok_inap_lab` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_stok_inap_lab` AS (select `far_stok`.`nama` AS `nama`,`far_stok`.`kel` AS `kel`,`far_stok`.`harga_pokok` AS `harga_pokok`,`far_stok`.`disc` AS `disc`,`far_stok`.`harga_beli` AS `harga_beli`,`far_stok`.`harga_jual` AS `harga_jual`,`far_stok`.`batas` AS `batas`,`far_stok`.`suplier` AS `suplier`,`far_stok`.`pabrik` AS `pabrik`,`far_stok`.`isi` AS `isi`,`far_stok`.`satuan` AS `satuan`,`far_stok`.`generik` AS `generik`,`far_stok`.`kode_lain` AS `kode_lain`,`far_stok`.`petugas` AS `petugas`,`far_stok`.`batch` AS `batch`,`far_stok`.`inorder` AS `inorder`,`far_stok`.`no_urut` AS `no_urut`,`far_stok`.`stok_inap` AS `stok_inap`,`far_stok`.`batas_stok_inap` AS `batas_stok_inap`,`far_stok`.`stok_poli` AS `stok_poli`,`far_stok`.`batas_stok_poli` AS `batas_stok_poli`,`far_stok`.`tuslah` AS `tuslah`,`far_stok`.`asuransi` AS `asuransi`,`a`.`nama` AS `satuan_beli`,`far_stok`.`filter_inap` AS `filter_inap`,`far_stok`.`Filter_poli` AS `Filter_poli`,`far_stok`.`harga` AS `harga`,`far_stok`.`satuan_beli` AS `id_satuan_beli`,`b`.`nama_far_asuransi` AS `nama_far_asuransi`,`c`.`nama` AS `satuan_jual` from (((`far_stok` join `far_satuan` `a` on((`far_stok`.`satuan_beli` = `a`.`id_satuan`))) join `far_asuransi` `b` on((`far_stok`.`asuransi` = `b`.`id_far_asuransi`))) join `far_satuan` `c` on((`far_stok`.`satuan` = `c`.`id_satuan`))) where (`far_stok`.`filter_inap` like 1)) */;

/*View structure for view v_far_stok_opname */

/*!50001 DROP TABLE IF EXISTS `v_far_stok_opname` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok_opname` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_far_stok_opname` AS (select `a`.`no_urut` AS `no_urut`,`a`.`batch` AS `batch`,`a`.`nama` AS `nama`,`b`.`nama` AS `nama_kel`,`c`.`nama` AS `nama_satuan`,`d`.`nama_generik` AS `nama_generik`,`a`.`stok_poli` AS `stok_poli`,`a`.`stok_inap` AS `stok_inap`,`e`.`nama_far_asuransi` AS `nama_far_asuransi`,`f`.`nama` AS `nama_suplier`,`a`.`isi` AS `isi`,`a`.`harga_beli` AS `harga_beli`,`a`.`harga_pokok` AS `harga_pokok`,`a`.`disc` AS `disc`,`a`.`harga_jual` AS `harga_jual` from (((((`far_stok` `a` left join `far_kel` `b` on((`a`.`kel` = `b`.`id_far_kel`))) left join `far_satuan` `c` on((`a`.`satuan` = `c`.`id_satuan`))) left join `far_generik` `d` on((`a`.`generik` = `d`.`id_far_generik`))) left join `far_asuransi` `e` on((`a`.`asuransi` = `e`.`id_far_asuransi`))) left join `far_suplier` `f` on((`a`.`suplier` = `f`.`id_far_suplier`))) order by `a`.`nama`) */;

/*View structure for view v_far_stok_poli */

/*!50001 DROP TABLE IF EXISTS `v_far_stok_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_far_stok_poli` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_stok_poli` AS (select `far_stok`.`nama` AS `nama`,`far_stok`.`kel` AS `kel`,`far_stok`.`harga_pokok` AS `harga_pokok`,`far_stok`.`disc` AS `disc`,`far_stok`.`harga_beli` AS `harga_beli`,`far_stok`.`harga_jual` AS `harga_jual`,`far_stok`.`batas` AS `batas`,`far_stok`.`suplier` AS `suplier`,`far_stok`.`pabrik` AS `pabrik`,`far_stok`.`isi` AS `isi`,`far_stok`.`satuan` AS `satuan`,`far_stok`.`generik` AS `generik`,`far_stok`.`kode_lain` AS `kode_lain`,`far_stok`.`petugas` AS `petugas`,`far_stok`.`tanggal` AS `tanggal`,`far_stok`.`batch` AS `batch`,`far_stok`.`tgl_ed` AS `tgl_ed`,`far_stok`.`inorder` AS `inorder`,`far_stok`.`no_urut` AS `no_urut`,`far_stok`.`stok_inap` AS `stok_inap`,`far_stok`.`batas_stok_inap` AS `batas_stok_inap`,`far_stok`.`stok_poli` AS `stok_poli`,`far_stok`.`batas_stok_poli` AS `batas_stok_poli`,`far_stok`.`tuslah` AS `tuslah`,`far_stok`.`asuransi` AS `asuransi`,`a`.`nama` AS `satuan_beli`,`far_stok`.`filter_inap` AS `filter_inap`,`far_stok`.`Filter_poli` AS `Filter_poli`,`far_stok`.`harga` AS `harga`,`far_stok`.`satuan_beli` AS `id_satuan_beli`,`b`.`nama_far_asuransi` AS `nama_far_asuransi`,`far_stok`.`stok_depo_poli` AS `stok_depo_poli`,`far_stok`.`stok_depo_inap` AS `stok_depo_inap`,`c`.`nama` AS `satuan_jual` from (((`far_stok` join `far_satuan` `a` on((`far_stok`.`satuan_beli` = `a`.`id_satuan`))) join `far_asuransi` `b` on((`far_stok`.`asuransi` = `b`.`id_far_asuransi`))) join `far_satuan` `c` on((`far_stok`.`satuan` = `c`.`id_satuan`))) where (`far_stok`.`Filter_poli` like 1)) */;

/*View structure for view v_far_total */

/*!50001 DROP TABLE IF EXISTS `v_far_total` */;
/*!50001 DROP VIEW IF EXISTS `v_far_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_total` AS (select sum(`far_det_trn`.`subtotal`) AS `subtotal`,sum(((`far_det_trn`.`harga` * `far_det_trn`.`qty`) - `far_det_trn`.`subtotal`)) AS `diskon`,`far_det_trn`.`id_far_trn` AS `id_far_trn` from `far_det_trn` group by `far_det_trn`.`id_far_trn`) */;

/*View structure for view v_far_total_fix */

/*!50001 DROP TABLE IF EXISTS `v_far_total_fix` */;
/*!50001 DROP VIEW IF EXISTS `v_far_total_fix` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_total_fix` AS (select sum(`far_det_trn_fix`.`subtotal`) AS `subtotal`,sum(((`far_det_trn_fix`.`harga` * `far_det_trn_fix`.`qty`) - `far_det_trn_fix`.`subtotal`)) AS `diskon`,`far_det_trn_fix`.`id_far_trn` AS `id_far_trn` from `far_det_trn_fix` group by `far_det_trn_fix`.`id_far_trn`) */;

/*View structure for view v_far_total_fix_reg */

/*!50001 DROP TABLE IF EXISTS `v_far_total_fix_reg` */;
/*!50001 DROP VIEW IF EXISTS `v_far_total_fix_reg` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_far_total_fix_reg` AS (select sum(`far_trn`.`biaya`) AS `total`,`far_trn`.`id_register` AS `id_register` from `far_trn` group by `far_trn`.`id_register`) */;

/*View structure for view v_farm_daftar_obat */

/*!50001 DROP TABLE IF EXISTS `v_farm_daftar_obat` */;
/*!50001 DROP VIEW IF EXISTS `v_farm_daftar_obat` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_farm_daftar_obat` AS select sql_cache `fs`.`no_urut` AS `no_urut`,`fs`.`nama` AS `nama`,`fs`.`harga_pokok` AS `harga_pokok`,`fs`.`harga_beli` AS `harga_beli`,`fs`.`harga_jual` AS `harga_jual`,`fs`.`stok_inap` AS `stok_inap`,`fs`.`stok_poli` AS `stok_poli`,`sat`.`nama` AS `satuan`,`a`.`nama_far_asuransi` AS `nama_asuransi`,`fs`.`asuransi` AS `asuransi` from ((`far_stok` `fs` straight_join `far_satuan` `sat` on((`sat`.`id_satuan` = `fs`.`satuan`))) straight_join `far_asuransi` `a` on((`fs`.`asuransi` = `a`.`id_far_asuransi`))) order by `fs`.`nama` */;

/*View structure for view v_farm_det_trn */

/*!50001 DROP TABLE IF EXISTS `v_farm_det_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_farm_det_trn` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_farm_det_trn` AS (select `dettrn`.`id_far_det_trn` AS `id_far_det_trn`,`dettrn`.`id_far_trn` AS `id_far_trn`,`stok`.`nama` AS `nama`,`dettrn`.`harga` AS `harga`,`dettrn`.`qty` AS `qty`,`dettrn`.`subtotal` AS `subtotal`,`stok`.`no_urut` AS `no_urut`,concat(`dettrn`.`dosis`,' x ',`dettrn`.`hari`,' ',`a`.`nama_satuan_minum`) AS `dosis`,`dettrn`.`resep` AS `resep`,`dettrn`.`embalase` AS `embalase` from ((`far_det_trn` `dettrn` straight_join `far_stok` `stok` on((`stok`.`no_urut` = `dettrn`.`id_obat`))) straight_join `far_satuan_minum` `a` on((`dettrn`.`id_far_satuan_minum` = `a`.`id_far_satuan_minum`))) order by `dettrn`.`id_far_trn`) */;

/*View structure for view v_farm_det_trn_fix */

/*!50001 DROP TABLE IF EXISTS `v_farm_det_trn_fix` */;
/*!50001 DROP VIEW IF EXISTS `v_farm_det_trn_fix` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_farm_det_trn_fix` AS (select `dettrn`.`id_far_det_trn` AS `id_far_det_trn`,`dettrn`.`id_far_trn` AS `id_far_trn`,`stok`.`nama` AS `nama`,`dettrn`.`harga` AS `harga`,`dettrn`.`qty` AS `qty`,`dettrn`.`subtotal` AS `subtotal`,`stok`.`no_urut` AS `no_urut`,concat(`dettrn`.`dosis`,' x ',`dettrn`.`hari`,' ',`a`.`nama_satuan_minum`) AS `dosis`,`dettrn`.`resep` AS `resep`,`dettrn`.`embalase` AS `embalase` from ((`far_det_trn_fix` `dettrn` straight_join `far_stok` `stok` on((`stok`.`no_urut` = `dettrn`.`id_obat`))) straight_join `far_satuan_minum` `a` on((`dettrn`.`id_far_satuan_minum` = `a`.`id_far_satuan_minum`))) order by `dettrn`.`id_far_trn`) */;

/*View structure for view v_farm_pasien_aktif_inap */

/*!50001 DROP TABLE IF EXISTS `v_farm_pasien_aktif_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_farm_pasien_aktif_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_farm_pasien_aktif_inap` AS (select sql_cache `p`.`id_pasien` AS `id_pasien`,`p`.`id_catatan_medik` AS `id_catatan_medik`,`p`.`id_register` AS `id_register`,`p`.`nama` AS `nama_pasien`,`p`.`alamat` AS `alamat`,`d`.`nama_desa` AS `desa`,`k`.`nama_kecamatan` AS `kecamatan`,`u`.`nama_unit` AS `nama_unit`,`p`.`kelas` AS `kelas`,`p`.`id_unit` AS `id_unit`,`p`.`id_asuransi` AS `id_asuransi`,`ass`.`nama` AS `namaasuransi`,`p`.`kunjungan` AS `kunjungan`,`p`.`tgl_kunjungan` AS `tgl_kunjungan`,`p`.`jam_kunjungan` AS `jam_kunjungan` from ((((`mr_pasien` `p` straight_join `mr_desa_bps` `d` on((`d`.`kode_desa` = `p`.`id_desa`))) straight_join `mr_kecamatan_bps` `k` on((`k`.`kode_kecamatan` = `p`.`id_kecamatan`))) straight_join `mr_unit` `u` on((`u`.`id_unit` = `p`.`id_unit`))) straight_join `mr_asuransi` `ass` on((`ass`.`id_asuransi` = `p`.`id_asuransi`))) where ((`p`.`aktif` = 1) and (`p`.`poli_inap` = 2))) */;

/*View structure for view v_farm_pasien_aktif_poli */

/*!50001 DROP TABLE IF EXISTS `v_farm_pasien_aktif_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_farm_pasien_aktif_poli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_farm_pasien_aktif_poli` AS (select `a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`iol` AS `iol`,`b`.`aktif` AS `aktif`,(case when (`a`.`iol` = 1) then '/img/poli.png' when (`a`.`iol` = 2) then '/img/inap.png' end) AS `poli_inap`,`b`.`id_pasien` AS `id_pasien`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`c`.`nama_poli_inap` AS `nama_poli_inap`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`b`.`tgl_lahir` AS `tgl_lahir`,(case when (`b`.`sex` = 1) then 'LAKI-LAKI' else 'PEREMPUAN' end) AS `nama_sex`,`b`.`tgl_kunjungan` AS `tgl_kunjungan`,`b`.`jam_kunjungan` AS `jam_kunjungan`,`d`.`nama` AS `nama_asuransi`,`b`.`nama_ortu` AS `nama_ortu`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_dokter` AS `id_dokter`,`b`.`kelas` AS `kelas`,`b`.`no_bed` AS `no_bed`,`a`.`id_register` AS `id_register`,`b`.`tgl_inap` AS `tgl_inap`,`b`.`jam_inap` AS `jam_inap`,`b`.`tgl_pulang` AS `tgl_pulang`,`b`.`jam_pulang` AS `jam_Pulang`,`e`.`icd` AS `icd`,`e`.`diagnosa` AS `diagnosa`,`a`.`id_mr_bl` AS `id_mr_bl`,`f`.`nama_unit` AS `nama_unit`,`a`.`no_periksa` AS `no_periksa`,`a`.`no_pendaftaran` AS `no_pendaftaran` from (((((`mr_bl` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) left join `mr_poli_inap` `c` on((`a`.`iol` = `c`.`id_poli_inap`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_icd` `e` on((`b`.`icd` = `e`.`icd`))) left join `mr_unit` `f` on((`a`.`id_unit` = `f`.`id_unit`))) where ((not((`b`.`nama` like ''))) and (`a`.`iol` like 1)) order by `b`.`nama`) */;

/*View structure for view v_farm_trn */

/*!50001 DROP TABLE IF EXISTS `v_farm_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_farm_trn` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_farm_trn` AS (select sql_cache `trn`.`id_far_trn` AS `id_far_trn`,`trn`.`id_catatan_medik` AS `id_catatan_medik`,`trn`.`id_register` AS `id_register`,`trn`.`tanggal` AS `tanggal`,`unit`.`nama_unit` AS `nama_unit`,`pas`.`nama` AS `nama`,`pas`.`alamat` AS `alamat`,`dok`.`nama_dokter` AS `nama_dokter` from (((`far_trn` `trn` straight_join `mr_pasien` `pas` on((`pas`.`id_catatan_medik` = `trn`.`id_catatan_medik`))) straight_join `mr_dokter` `dok` on((`dok`.`id_dokter` = `trn`.`id_dokter`))) straight_join `mr_unit` `unit` on((`unit`.`id_unit` = `trn`.`id_unit`))) order by `trn`.`id_catatan_medik`,`trn`.`id_register`) */;

/*View structure for view v_fis_cetak_nota */

/*!50001 DROP TABLE IF EXISTS `v_fis_cetak_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_fis_cetak_nota` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fis_cetak_nota` AS (select `a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_fis_det_trn` AS `id_fis_det_trn`,`a`.`id_fis_trn` AS `id_fis_trn`,`f`.`nama` AS `nama`,`d`.`nama_unit` AS `nama_unit`,`e`.`nama` AS `nama_asuransi`,`h`.`diagnosa` AS `diagnosa`,`c`.`kelas` AS `kelas`,`b`.`nama` AS `nama_tarif`,`a`.`tarif` AS `tarif`,`a`.`jumlah` AS `jumlah`,`c`.`tanggal` AS `tanggal`,`c`.`jam` AS `jam`,`i`.`nama_dokter` AS `nama_dokter`,`j`.`nama_pengirim` AS `nama_pengirim`,`f`.`alamat` AS `alamat`,(case when (`f`.`sex` = 1) then 'Laki-laki' else 'Perempuan' end) AS `sex`,(`a`.`tarif` * `a`.`jumlah`) AS `total` from ((((((((`fis_det_trn` `a` join `fis_tarif` `b` on((`a`.`id_fis_tarif` = `b`.`id_fis_tarif`))) join `fis_trn` `c` on((`a`.`id_fis_trn` = `c`.`id_fis_trn`))) join `mr_unit` `d` on((`c`.`id_unit` = `d`.`id_unit`))) join `mr_asuransi` `e` on((`c`.`id_asuransi` = `e`.`id_asuransi`))) join `mr_pasien` `f` on((`a`.`id_catatan_medik` = `f`.`id_catatan_medik`))) left join `mr_icd` `h` on((`c`.`icd` = `h`.`icd`))) left join `mr_dokter` `i` on((`c`.`id_dokter` = `i`.`id_dokter`))) left join `mr_pengirim` `j` on((`c`.`id_pengirim` = `j`.`id_pengirim`)))) */;

/*View structure for view v_fis_det_trn */

/*!50001 DROP TABLE IF EXISTS `v_fis_det_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_fis_det_trn` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fis_det_trn` AS (select `a`.`id_fis_det_trn` AS `id_fis_det_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_fis_trn` AS `id_fis_trn`,`a`.`id_fis_tarif` AS `id_fis_tarif`,`b`.`nama` AS `nama`,`a`.`diskon` AS `diskon`,`a`.`jumlah` AS `jumlah`,`a`.`total` AS `total`,`a`.`tarif` AS `tarif`,`c`.`nama` AS `nama_petugas`,`a`.`id_petugas` AS `id_petugas` from ((`fis_det_trn` `a` join `fis_tarif` `b` on((`a`.`id_fis_tarif` = `b`.`id_fis_tarif`))) left join `psdi_petugas` `c` on((`a`.`id_petugas` = `c`.`id_petugas`)))) */;

/*View structure for view v_fis_jasa_petugas */

/*!50001 DROP TABLE IF EXISTS `v_fis_jasa_petugas` */;
/*!50001 DROP VIEW IF EXISTS `v_fis_jasa_petugas` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fis_jasa_petugas` AS (select `a`.`id_fis_det_trn` AS `id_fis_det_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_fis_trn` AS `id_fis_trn`,`a`.`id_petugas` AS `id_petugas`,`a`.`id_fis_tarif` AS `id_fis_tarif`,`c`.`tanggal` AS `tanggal`,`c`.`jam` AS `jam`,`e`.`nama` AS `nama_pasien`,`e`.`alamat` AS `alamat`,`b`.`nama` AS `nama`,`c`.`kelas` AS `kelas`,`a`.`jumlah` AS `jumlah`,`a`.`jasa` AS `jasa`,`d`.`nama_unit` AS `nama_unit`,(`a`.`jumlah` * `a`.`jasa`) AS `total`,`f`.`nama` AS `nama_asuransi` from (((((`fis_det_trn` `a` join `fis_tarif` `b` on((`a`.`id_fis_tarif` = `b`.`id_fis_tarif`))) join `fis_trn` `c` on((`a`.`id_fis_trn` = `c`.`id_fis_trn`))) join `mr_unit` `d` on((`c`.`id_unit` = `d`.`id_unit`))) join `mr_pasien` `e` on((`a`.`id_catatan_medik` = `e`.`id_catatan_medik`))) join `mr_asuransi` `f` on((`c`.`id_asuransi` = `f`.`id_asuransi`)))) */;

/*View structure for view v_fis_nota */

/*!50001 DROP TABLE IF EXISTS `v_fis_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_fis_nota` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fis_nota` AS (select `b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`a`.`id_fis_trn` AS `id_fis_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`kelas` AS `kelas`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`biaya` AS `biaya`,`a`.`id_petugas` AS `id_petugas`,`a`.`umur_th` AS `umur_th`,`a`.`umur_bln` AS `umur_bln`,`a`.`umur_hr` AS `umur_hr`,`f`.`nama_dokter` AS `nama_dokter`,`g`.`nama_pengirim` AS `nama_pengirim`,(case when (`a`.`lunas` = 1) then '/img/lunas.png' else '/img/belum.png' end) AS `ket_lunas`,`e`.`diagnosa` AS `diagnosa`,`a`.`id_unit` AS `id_unit`,`a`.`iol` AS `iol` from ((((((`fis_trn` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_icd` `e` on((`a`.`icd` = `e`.`icd`))) join `mr_dokter` `f` on((`a`.`id_dokter` = `f`.`id_dokter`))) join `mr_pengirim` `g` on((`a`.`id_pengirim` = `g`.`id_pengirim`))) order by `a`.`id_fis_trn` desc) */;

/*View structure for view v_fis_total */

/*!50001 DROP TABLE IF EXISTS `v_fis_total` */;
/*!50001 DROP VIEW IF EXISTS `v_fis_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fis_total` AS (select sum(((`a`.`tarif` * `a`.`jumlah`) - (`a`.`jumlah` * `a`.`diskon`))) AS `sub_total`,sum((`a`.`tarif` * `a`.`jumlah`)) AS `grand_total`,sum((`a`.`jumlah` * `a`.`diskon`)) AS `diskon`,`a`.`id_fis_trn` AS `id_fis_trn` from `fis_det_trn` `a` group by `a`.`id_fis_trn`) */;

/*View structure for view v_icd */

/*!50001 DROP TABLE IF EXISTS `v_icd` */;
/*!50001 DROP VIEW IF EXISTS `v_icd` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_icd` AS (select concat('(',`mr_icd`.`icd`,') ',`mr_icd`.`diagnosa`) AS `diagnnosa`,`mr_icd`.`icd` AS `icd` from `mr_icd`) */;

/*View structure for view v_icd9 */

/*!50001 DROP TABLE IF EXISTS `v_icd9` */;
/*!50001 DROP VIEW IF EXISTS `v_icd9` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_icd9` AS (select concat('(',`mr_icd9`.`icd9`,') ',`mr_icd9`.`diagnosa`) AS `diagnosa`,`mr_icd9`.`icd9` AS `icd9`,`mr_icd9`.`id_icd9` AS `id_icd9` from `mr_icd9` order by `mr_icd9`.`diagnosa`) */;

/*View structure for view v_igd_register */

/*!50001 DROP TABLE IF EXISTS `v_igd_register` */;
/*!50001 DROP VIEW IF EXISTS `v_igd_register` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_igd_register` AS (select `a`.`id_igd_register` AS `id_igd_register`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`jam_masuk` AS `jam_masuk`,`i`.`nama` AS `nama`,`i`.`alamat` AS `alamat`,`a`.`id_triase` AS `id_triase`,`b`.`nama_kasus` AS `nama_kasus`,`c`.`nama_peralatan` AS `nama_peralatan`,`d`.`nama_tindak_lanjut` AS `nama_tindak_lanjut`,`e`.`nama_triase` AS `nama_triase`,`f`.`nama_dokter` AS `nama_dokter`,`g`.`diagnosa` AS `diagnosa`,`h`.`nama` AS `nama_asuransi`,`j`.`nama_unit_perawatan` AS `nama_unit_perawatan`,(case when (`i`.`sex` = 1) then 'L' else 'P' end) AS `jenis_kelamin`,concat(floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365)),' th, ',floor(((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12)),' bln, ',ceiling(((((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12))) * 30)),' hr') AS `umur`,(case when (`a`.`bl` = 1) then 'Baru' else 'Lama' end) AS `baru_lama`,(case when (`a`.`rujukan` = 1) then 'Datang Sendiri' else 'Rujukan' end) AS `rujukan`,`a`.`tb` AS `tb`,`a`.`bb` AS `bb`,`a`.`anamnese` AS `anamnese`,`a`.`tek_atas` AS `tek_atas`,`a`.`tek_bawah` AS `tek_bawah`,`a`.`pernapasan` AS `pernapasan`,`a`.`nadi` AS `nadi`,`a`.`suhu` AS `suhu`,`a`.`id_register` AS `id_register`,(case when (`i`.`alergi` = 1) then 'color:red' else 'color:' end) AS `alergi` from (((((((((`igd_register` `a` left join `igd_kasus` `b` on((`a`.`id_kasus` = `b`.`id_igd_kasus`))) left join `igd_peralatan` `c` on((`a`.`id_peralatan` = `c`.`id_igd_peralatan`))) left join `igd_tindak_lanjut` `d` on((`a`.`id_tindak_lanjut` = `d`.`id_igd_tindak_lanjut`))) left join `igd_triase` `e` on((`a`.`id_triase` = `e`.`id_igd_triase`))) left join `mr_dokter` `f` on((`a`.`id_dokter` = `f`.`id_dokter`))) left join `mr_icd` `g` on((`a`.`icd` = `g`.`icd`))) left join `mr_asuransi` `h` on((`a`.`id_asuransi` = `h`.`id_asuransi`))) join `mr_pasien` `i` on((`a`.`id_catatan_medik` = `i`.`id_catatan_medik`))) join `igd_unit_perawatan` `j` on((`a`.`id_unit_perawatan` = `j`.`id_igd_unit_perawatan`))) order by `i`.`nama`) */;

/*View structure for view v_igd_register_gawat */

/*!50001 DROP TABLE IF EXISTS `v_igd_register_gawat` */;
/*!50001 DROP VIEW IF EXISTS `v_igd_register_gawat` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_igd_register_gawat` AS (select `a`.`id_igd_register` AS `id_igd_register`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`jam_masuk` AS `jam_masuk`,`i`.`nama` AS `nama`,`i`.`alamat` AS `alamat`,`a`.`id_triase` AS `id_triase`,`b`.`nama_kasus` AS `nama_kasus`,`c`.`nama_peralatan` AS `nama_peralatan`,`d`.`nama_tindak_lanjut` AS `nama_tindak_lanjut`,`e`.`nama_triase` AS `nama_triase`,`f`.`nama_dokter` AS `nama_dokter`,`g`.`diagnosa` AS `diagnosa`,`h`.`nama` AS `nama_asuransi`,(case when (`i`.`sex` = 1) then 'L' else 'P' end) AS `jenis_kelamin`,concat(floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365)),' th, ',floor(((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12)),' bln, ',ceiling(((((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12))) * 30)),' hr') AS `umur`,(case when (`a`.`bl` = 1) then 'Baru' else 'Lama' end) AS `baru_lama`,(case when (`a`.`rujukan` = 1) then 'Datang Sendiri' else 'Rujukan' end) AS `rujukan` from ((((((((`igd_register` `a` left join `igd_kasus` `b` on((`a`.`id_kasus` = `b`.`id_igd_kasus`))) left join `igd_peralatan` `c` on((`a`.`id_peralatan` = `c`.`id_igd_peralatan`))) left join `igd_tindak_lanjut` `d` on((`a`.`id_tindak_lanjut` = `d`.`id_igd_tindak_lanjut`))) left join `igd_triase` `e` on((`a`.`id_triase` = `e`.`id_igd_triase`))) left join `mr_dokter` `f` on((`a`.`id_dokter` = `f`.`id_dokter`))) left join `mr_icd` `g` on((`a`.`icd` = `g`.`icd`))) left join `mr_asuransi` `h` on((`a`.`id_asuransi` = `h`.`id_asuransi`))) join `mr_pasien` `i` on((`a`.`id_catatan_medik` = `i`.`id_catatan_medik`))) where (not((`a`.`id_triase` like 1))) order by `i`.`nama`) */;

/*View structure for view v_igd_register_non_gawat */

/*!50001 DROP TABLE IF EXISTS `v_igd_register_non_gawat` */;
/*!50001 DROP VIEW IF EXISTS `v_igd_register_non_gawat` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_igd_register_non_gawat` AS (select `a`.`id_igd_register` AS `id_igd_register`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`jam_masuk` AS `jam_masuk`,`i`.`nama` AS `nama`,`i`.`alamat` AS `alamat`,`a`.`id_triase` AS `id_triase`,`b`.`nama_kasus` AS `nama_kasus`,`c`.`nama_peralatan` AS `nama_peralatan`,`d`.`nama_tindak_lanjut` AS `nama_tindak_lanjut`,`e`.`nama_triase` AS `nama_triase`,`f`.`nama_dokter` AS `nama_dokter`,`g`.`diagnosa` AS `diagnosa`,`h`.`nama` AS `nama_asuransi`,(case when (`i`.`sex` = 1) then 'L' else 'P' end) AS `jenis_kelamin`,concat(floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365)),' th, ',floor(((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12)),' bln, ',ceiling(((((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`i`.`tgl_lahir`)) / 365))) * 12))) * 30)),' hr') AS `umur`,(case when (`a`.`bl` = 1) then 'Baru' else 'Lama' end) AS `baru_lama`,(case when (`a`.`rujukan` = 1) then 'Datang Sendiri' else 'Rujukan' end) AS `rujukan` from ((((((((`igd_register` `a` left join `igd_kasus` `b` on((`a`.`id_kasus` = `b`.`id_igd_kasus`))) left join `igd_peralatan` `c` on((`a`.`id_peralatan` = `c`.`id_igd_peralatan`))) left join `igd_tindak_lanjut` `d` on((`a`.`id_tindak_lanjut` = `d`.`id_igd_tindak_lanjut`))) left join `igd_triase` `e` on((`a`.`id_triase` = `e`.`id_igd_triase`))) left join `mr_dokter` `f` on((`a`.`id_dokter` = `f`.`id_dokter`))) left join `mr_icd` `g` on((`a`.`icd` = `g`.`icd`))) left join `mr_asuransi` `h` on((`a`.`id_asuransi` = `h`.`id_asuransi`))) join `mr_pasien` `i` on((`a`.`id_catatan_medik` = `i`.`id_catatan_medik`))) where (`a`.`id_triase` like 1) order by `i`.`nama`) */;

/*View structure for view v_kabupaten */

/*!50001 DROP TABLE IF EXISTS `v_kabupaten` */;
/*!50001 DROP VIEW IF EXISTS `v_kabupaten` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kabupaten` AS (select `a`.`id_kabupaten` AS `id_kabupaten`,`a`.`kode_propinsi` AS `kode_propinsi`,`a`.`kode_kabupaten` AS `kode_kabupaten`,`a`.`nama_kabupaten` AS `nama_kabupaten`,`b`.`nama_propinsi` AS `nama_propinsi` from (`mr_kabupaten_bps` `a` left join `mr_propinsi_bps` `b` on((`a`.`kode_propinsi` = `b`.`kode_propinsi`)))) */;

/*View structure for view v_kecamatan */

/*!50001 DROP TABLE IF EXISTS `v_kecamatan` */;
/*!50001 DROP VIEW IF EXISTS `v_kecamatan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kecamatan` AS (select `a`.`id_kecamatan` AS `id_kecamatan`,`a`.`kode_kabupaten` AS `kode_kabupaten`,`a`.`kode_kecamatan` AS `kode_kecamatan`,`a`.`nama_kecamatan` AS `nama_kecamatan`,`b`.`nama_kabupaten` AS `nama_kabupaten` from (`mr_kecamatan_bps` `a` left join `mr_kabupaten_bps` `b` on((`a`.`kode_kabupaten` = `b`.`kode_kabupaten`)))) */;

/*View structure for view v_kep_mutu */

/*!50001 DROP TABLE IF EXISTS `v_kep_mutu` */;
/*!50001 DROP VIEW IF EXISTS `v_kep_mutu` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kep_mutu` AS (select `a`.`no_urut` AS `no_urut`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`id_unit` AS `id_unit`,`b`.`nama_unit` AS `nama_unit` from (`kep_mutu` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) order by `a`.`tanggal` desc,`b`.`nama_unit`) */;

/*View structure for view v_ksr_akun */

/*!50001 DROP TABLE IF EXISTS `v_ksr_akun` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_akun` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_akun` AS (select `a`.`id_ksr_akun` AS `id_ksr_akun`,`a`.`kode_akun` AS `kode_akun`,`a`.`nama_akun` AS `nama_akun`,`b`.`nama_tipe_akun` AS `nama_tipe_akun`,`a`.`saldo_awal` AS `saldo_awal`,(case when (`a`.`aktif` = 'A') then 'AKTIF' else '-' end) AS `aktif`,concat(`a`.`kode_akun`,' ',`a`.`nama_akun`) AS `nama` from (`ksr_akun` `a` left join `ksr_tipe_akun` `b` on((`a`.`tipe_akun` = `b`.`id_ksr_tipe_akun`))) order by `a`.`kode_akun`) */;

/*View structure for view v_ksr_daftar_nota */

/*!50001 DROP TABLE IF EXISTS `v_ksr_daftar_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_daftar_nota` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_daftar_nota` AS (select `a`.`id_ksr_trn` AS `id_ksr_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`tgl_kunj` AS `tgl_kunj`,`a`.`jam_kunj` AS `jam_kunj`,`a`.`tgl_inap` AS `tgl_inap`,`a`.`jam_inap` AS `jam_inap`,`a`.`tgl_pulang` AS `tgl_pulang`,`a`.`jam_pulang` AS `jam_pulang`,(case when (`a`.`iol` = 1) then 'POLI' else 'INAP' end) AS `rawat`,`b`.`nama_unit` AS `nama_unit`,`c`.`nama` AS `nama_asuransi`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya`,(case when (`a`.`lunas` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `lunas`,(case when (`a`.`posting` = 2) then '/img/bank.png' end) AS `sudah`,`a`.`id_petugas` AS `id_petugas`,`a`.`titip` AS `titip`,(case when ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) then `a`.`biaya` else (`a`.`titip` + `a`.`bayar`) end) AS `titip_bayar`,`a`.`titip` AS `titip1`,`d`.`nama_dokter` AS `nama_dokter`,`e`.`nama` AS `nama`,`e`.`alamat` AS `alamat`,(case when ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) then (`a`.`titip` + `a`.`bayar`) else `a`.`bayar` end) AS `bayar`,(case when ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) then 0 else (`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) end) AS `kurang` from ((((`ksr_trn` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) join `mr_asuransi` `c` on((`a`.`id_asuransi` = `c`.`id_asuransi`))) join `mr_dokter` `d` on((`a`.`id_dokter` = `d`.`id_dokter`))) join `mr_pasien` `e` on((`a`.`id_catatan_medik` = `e`.`id_catatan_medik`))) where (`a`.`posting` > 0) order by `a`.`tgl_pulang` desc,`a`.`jam_pulang` desc) */;

/*View structure for view v_ksr_daftar_pasien */

/*!50001 DROP TABLE IF EXISTS `v_ksr_daftar_pasien` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_daftar_pasien` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_daftar_pasien` AS (select `a`.`id_ksr_trn` AS `id_ksr_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tgl_kunj` AS `tgl_kunj`,`a`.`jam_kunj` AS `jam_kunj`,`a`.`tgl_pulang` AS `tgl_pulang`,`a`.`jam_pulang` AS `jam_pulang`,`a`.`jam_inap` AS `jam_inap`,`a`.`tgl_inap` AS `tgl_inap`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`e`.`nama_dokter` AS `nama_dokter`,`a`.`iol` AS `iol`,`f`.`nama_poli_inap` AS `nama_poli_inap`,`a`.`id_unit` AS `id_unit`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya`,`a`.`lunas` AS `lunas`,`a`.`id_petugas` AS `id_petugas`,`a`.`titip` AS `titip`,`a`.`hak_kelas` AS `hak_kelas`,`a`.`id_dokter` AS `id_dokter`,(case when (`a`.`iol` = 1) then '/img/poli.png' else '/img/inap.png' end) AS `aksi`,`d`.`bpjs` AS `bpjs`,floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((`ksr_trn` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) join `mr_dokter` `e` on((`a`.`id_dokter` = `e`.`id_dokter`))) join `mr_poli_inap` `f` on((`a`.`iol` = `f`.`id_poli_inap`))) where (`b`.`aktif` = 1) order by `b`.`nama`) */;

/*View structure for view v_ksr_daftar_pasien_ulang */

/*!50001 DROP TABLE IF EXISTS `v_ksr_daftar_pasien_ulang` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_daftar_pasien_ulang` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_daftar_pasien_ulang` AS (select `a`.`id_ksr_trn` AS `id_ksr_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tgl_kunj` AS `tgl_kunj`,`a`.`jam_kunj` AS `jam_kunj`,`a`.`tgl_pulang` AS `tgl_pulang`,`a`.`jam_pulang` AS `jam_pulang`,`a`.`jam_inap` AS `jam_inap`,`a`.`tgl_inap` AS `tgl_inap`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`e`.`nama_dokter` AS `nama_dokter`,`a`.`iol` AS `iol`,`f`.`nama_poli_inap` AS `nama_poli_inap`,`a`.`id_unit` AS `id_unit`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya`,`a`.`lunas` AS `lunas`,`a`.`id_petugas` AS `id_petugas`,`a`.`titip` AS `titip`,`a`.`hak_kelas` AS `hak_kelas`,`a`.`id_dokter` AS `id_dokter`,(case when (`a`.`iol` = 1) then '/img/poli.png' else '/img/inap.png' end) AS `aksi`,(case when ((`a`.`id_asuransi` = 13) or (`a`.`id_asuransi` = 5) or (`a`.`id_asuransi` = 6)) then 1 else 0 end) AS `bpjs`,floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tgl_kunj`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((`mr_pasien` `b` left join `ksr_trn` `a` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) join `mr_dokter` `e` on((`a`.`id_dokter` = `e`.`id_dokter`))) join `mr_poli_inap` `f` on((`a`.`iol` = `f`.`id_poli_inap`))) order by `b`.`nama`) */;

/*View structure for view v_ksr_det_faktur */

/*!50001 DROP TABLE IF EXISTS `v_ksr_det_faktur` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_det_faktur` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_det_faktur` AS (select `a`.`id_ksr_det_faktur` AS `id_ksr_det_faktur`,`a`.`faktur` AS `faktur`,`b`.`nama` AS `nama`,`a`.`sub_total` AS `sub_total`,`a`.`grand_total` AS `grand_total`,`a`.`id_no_sp` AS `id_no_sp`,`a`.`id_suplier` AS `id_suplier`,`a`.`id_ksr_faktur` AS `id_ksr_faktur` from (`ksr_det_faktur` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`)))) */;

/*View structure for view v_ksr_det_faktur_inap */

/*!50001 DROP TABLE IF EXISTS `v_ksr_det_faktur_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_det_faktur_inap` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_det_faktur_inap` AS (select `a`.`id_ksr_det_faktur` AS `id_ksr_det_faktur`,`a`.`faktur` AS `faktur`,`b`.`nama` AS `nama`,`a`.`sub_total` AS `sub_total`,`a`.`grand_total` AS `grand_total`,`a`.`id_no_sp` AS `id_no_sp`,`a`.`id_suplier` AS `id_suplier`,`a`.`id_ksr_faktur` AS `id_ksr_faktur` from (`ksr_det_faktur_inap` `a` join `far_suplier` `b` on((`a`.`id_suplier` = `b`.`id_far_suplier`)))) */;

/*View structure for view v_ksr_detil_transaksi */

/*!50001 DROP TABLE IF EXISTS `v_ksr_detil_transaksi` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_detil_transaksi` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_detil_transaksi` AS (select `a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`id_register` AS `id_register`,`a`.`kode` AS `kode`,`a`.`id_ksr_det_trn` AS `id_ksr_det_trn`,`a`.`kelompok_unit` AS `kelompok_unit`,(case when (`a`.`kode` = 1002) then 'FARMASI' when (`a`.`kode` = 1001) then 'LABORATORIUM' when (`a`.`kode` = 1003) then 'RADIOLOGI' when (`a`.`kode` = 1004) then 'FISIOTERAPHI' when (`a`.`kode` >= 10000) then `b`.`nama` end) AS `nama`,`a`.`jumlah` AS `jumlah`,`c`.`nama_dokter` AS `nama_dokter`,`d`.`nama_dokter` AS `nama_anestesi`,`e`.`nama_dokter` AS `dokter_anak`,`f`.`nama` AS `nama_petugas`,`h`.`nama` AS `nama_ass_1`,ifnull(`i`.`nama`,'') AS `nama_ass_2`,`j`.`nama` AS `nama_penata`,ifnull(`k`.`nama`,'') AS `nama_on_loop`,`l`.`nama` AS `nama_insentif`,`g`.`nama_unit` AS `nama_unit`,`a`.`diskon` AS `diskon`,`a`.`tarif` AS `tarif`,`a`.`total` AS `total`,`a`.`ass_2_jaga` AS `ass_2_jaga`,`a`.`onloop_jaga` AS `onloop_jaga`,`m`.`nama` AS `nama_petugas_luar` from ((((((((((((`ksr_det_trn` `a` left join `ksr_tarif` `b` on((`a`.`kode` = `b`.`kode`))) left join `mr_dokter` `c` on((`a`.`id_operator` = `c`.`id_dokter`))) left join `mr_dokter` `d` on((`a`.`id_anestesi` = `d`.`id_dokter`))) left join `mr_dokter` `e` on((`a`.`id_dokter_sp_anak` = `e`.`id_dokter`))) left join `psdi_petugas` `f` on((`a`.`id_petugas` = `f`.`id_petugas`))) left join `mr_unit` `g` on((`a`.`id_unit` = `g`.`id_unit`))) left join `psdi_petugas` `h` on((`a`.`id_ass_1` = `h`.`id_petugas`))) left join `psdi_petugas` `i` on((`a`.`id_ass_2` = `i`.`id_petugas`))) left join `psdi_petugas` `j` on((`a`.`id_penata` = `j`.`id_petugas`))) left join `psdi_petugas` `k` on((`a`.`id_on_loop` = `k`.`id_petugas`))) left join `psdi_petugas` `l` on((`a`.`id_insentif` = `l`.`id_petugas`))) left join `ksr_petugas_luar` `m` on((`a`.`id_petugas_luar` = `m`.`id_ksr_petugas_luar`))) order by `b`.`nama`) */;

/*View structure for view v_ksr_faktur */

/*!50001 DROP TABLE IF EXISTS `v_ksr_faktur` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_faktur` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_faktur` AS (select `a`.`id_ksr_faktur` AS `id_ksr_faktur`,`b`.`nama` AS `nama_petugas`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`cp_suplier` AS `cp_suplier`,`a`.`total` AS `total`,`c`.`nama` AS `nama_suplier`,(case when (`a`.`lunas` = 1) then '/img/lunas.png' else '/img/belum.png' end) AS `lunas`,`a`.`lunas` AS `ket` from ((`ksr_faktur` `a` join `psdi_petugas` `b` on((`a`.`id_petugas` = `b`.`id_petugas`))) left join `far_suplier` `c` on((`a`.`id_suplier` = `c`.`id_far_suplier`))) order by `a`.`id_ksr_faktur` desc) */;

/*View structure for view v_ksr_faktur_inap */

/*!50001 DROP TABLE IF EXISTS `v_ksr_faktur_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_faktur_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_faktur_inap` AS (select `a`.`id_ksr_faktur` AS `id_ksr_faktur`,`b`.`nama` AS `nama_petugas`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`cp_suplier` AS `cp_suplier`,`a`.`total` AS `total`,`c`.`nama` AS `nama_suplier`,(case when (`a`.`lunas` = 1) then '/img/lunas.png' else '/img/belum.png' end) AS `lunas`,`a`.`lunas` AS `ket` from ((`ksr_faktur_inap` `a` join `psdi_petugas` `b` on((`a`.`id_petugas` = `b`.`id_petugas`))) left join `far_suplier` `c` on((`a`.`id_suplier` = `c`.`id_far_suplier`))) order by `a`.`id_ksr_faktur` desc) */;

/*View structure for view v_ksr_far_trn */

/*!50001 DROP TABLE IF EXISTS `v_ksr_far_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_far_trn` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_far_trn` AS (select (case when (`a`.`lunas` = 1) then '/img/lunas.png' else '' end) AS `aksi`,`a`.`id_far_trn` AS `id_far_trn`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`id_register` AS `id_register`,`a`.`biaya` AS `biaya`,(case when (`a`.`id_catatan_medik` like 10000000) then `a`.`nama` else `b`.`nama` end) AS `nama`,ifnull(`a`.`diskon`,0) AS `diskon`,ifnull((`a`.`biaya` - ((ifnull(`a`.`diskon`,0) * `a`.`biaya`) / 100)),0) AS `grand_total` from (`far_trn` `a` left join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`)))) */;

/*View structure for view v_ksr_fis_trn */

/*!50001 DROP TABLE IF EXISTS `v_ksr_fis_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_fis_trn` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_fis_trn` AS (select (case when (`a`.`lunas` = 1) then '/img/lunas.png' else '' end) AS `aksi`,`a`.`id_fis_trn` AS `id_fis_trn`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya` from `fis_trn` `a`) */;

/*View structure for view v_ksr_jurnal */

/*!50001 DROP TABLE IF EXISTS `v_ksr_jurnal` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_jurnal` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_jurnal` AS (select `a`.`id_ksr_detil_jurnal` AS `id_ksr_detil_jurnal`,`b`.`id_ksr_jurnal` AS `id_ksr_jurnal`,`b`.`tanggal` AS `tanggal`,`b`.`jam` AS `jam`,`b`.`no_bukti` AS `no_bukti`,`c`.`nama_unit` AS `nama_unit`,`b`.`uraian` AS `uraian`,`a`.`kode` AS `kode`,`d`.`nama_akun` AS `nama_akun`,`a`.`debet` AS `debet`,`a`.`kredit` AS `kredit`,`a`.`posisi` AS `posisi` from (((`ksr_detil_jurnal` `a` join `ksr_jurnal` `b` on((`a`.`id_ksr_jurnal` = `b`.`id_ksr_jurnal`))) left join `mr_unit` `c` on((`b`.`id_unit` = `c`.`id_unit`))) join `ksr_akun` `d` on((`a`.`kode` = `d`.`kode_akun`))) order by `b`.`id_ksr_jurnal` desc) */;

/*View structure for view v_ksr_kelompok_unit */

/*!50001 DROP TABLE IF EXISTS `v_ksr_kelompok_unit` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_kelompok_unit` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_kelompok_unit` AS (select `a`.`id_ksr_kelompok_unit` AS `id_ksr_kelompok_unit`,`a`.`kode_kelompok_unit` AS `kode_kelompok_unit`,`a`.`nama_kelompok_unit` AS `nama_kelompok_unit`,`b`.`nama_kelompok_unit` AS `kelompok` from (`ksr_kelompok_unit` `a` left join `mr_kelompok_unit` `b` on((`a`.`id_mr_kelompok_unit` = `b`.`id_kelompok_unit`))) order by `a`.`nama_kelompok_unit`) */;

/*View structure for view v_ksr_lab_trn */

/*!50001 DROP TABLE IF EXISTS `v_ksr_lab_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_lab_trn` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_lab_trn` AS (select (case when (`a`.`lunas` = 1) then '/img/lunas.png' else '' end) AS `aksi`,`a`.`id_lab_trn` AS `id_lab_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya`,(case when (`a`.`id_catatan_medik` like 10000000) then `a`.`nama` else `b`.`nama` end) AS `nama`,ifnull(`a`.`diskon`,0) AS `diskon`,ifnull((`a`.`biaya` - ((ifnull(`a`.`diskon`,0) * `a`.`biaya`) / 100)),0) AS `grand_total` from (`lab_trn` `a` left join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`)))) */;

/*View structure for view v_ksr_piutang */

/*!50001 DROP TABLE IF EXISTS `v_ksr_piutang` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_piutang` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_piutang` AS (select `a`.`id_ksr_trn` AS `id_ksr_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`tgl_kunj` AS `tgl_kunj`,`a`.`jam_kunj` AS `jam_kunj`,`a`.`tgl_inap` AS `tgl_inap`,`a`.`jam_inap` AS `jam_inap`,`a`.`tgl_pulang` AS `tgl_pulang`,`a`.`jam_pulang` AS `jam_pulang`,(case when (`a`.`iol` = 1) then 'POLI' else 'INAP' end) AS `rawat`,`b`.`nama_unit` AS `nama_unit`,`c`.`nama` AS `nama_asuransi`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya`,(case when (`a`.`lunas` = 1) then '/img/sudah.png' else '/img/belum.png' end) AS `lunas`,(case when (`a`.`posting` = 2) then '/img/bank.png' end) AS `sudah`,`a`.`id_petugas` AS `id_petugas`,`a`.`titip` AS `titip`,(case when ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) then `a`.`biaya` else (`a`.`titip` + `a`.`bayar`) end) AS `titip_bayar`,`a`.`titip` AS `titip1`,`d`.`nama_dokter` AS `nama_dokter`,`e`.`nama` AS `nama`,`e`.`alamat` AS `alamat`,(case when ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) then `a`.`biaya` else `a`.`bayar` end) AS `bayar`,(case when ((`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) < 0) then 0 else (`a`.`biaya` - (`a`.`titip` + `a`.`bayar`)) end) AS `kurang` from ((((`ksr_trn` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) join `mr_asuransi` `c` on((`a`.`id_asuransi` = `c`.`id_asuransi`))) join `mr_dokter` `d` on((`a`.`id_dokter` = `d`.`id_dokter`))) join `mr_pasien` `e` on((`a`.`id_catatan_medik` = `e`.`id_catatan_medik`))) where (`a`.`posting` > 0) order by `a`.`tgl_pulang` desc,`a`.`jam_pulang` desc) */;

/*View structure for view v_ksr_rekening */

/*!50001 DROP TABLE IF EXISTS `v_ksr_rekening` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_rekening` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_rekening` AS (select `a`.`id_register` AS `id_register`,`c`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`kode` AS `kode`,`a`.`id_ksr_det_trn` AS `id_ksr_det_trn`,`a`.`kelompok_unit` AS `kelompok_unit`,(case when (`a`.`kode` = 1002) then 'FARMASI' when (`a`.`kode` = 1001) then 'LABORATORIUM' when (`a`.`kode` = 1003) then 'RADIOLOGI' when (`a`.`kode` = 1004) then 'FISIOTERAPHI' when (`a`.`kode` >= 10000) then `b`.`nama` end) AS `nama_tarif`,`a`.`jumlah` AS `jumlah`,(case when (`a`.`kode` >= 10000) then ((`a`.`jumlah` * `a`.`tarif`) - (`a`.`jumlah` * `a`.`diskon`)) else `a`.`tarif` end) AS `tarif`,(case when (`a`.`kode` >= 10000) then (`a`.`jumlah` * `a`.`diskon`) else `a`.`diskon` end) AS `diskon`,(case when (`a`.`kode` = 1002) then 'FARMASI' when (`a`.`kode` = 1001) then 'LABORATORIUM' when (`a`.`kode` = 1003) then 'RADIOLOGI' when (`a`.`kode` = 1004) then 'FISIOTERAPHI' when (`a`.`kode` >= 10000) then `d`.`nama_unit` end) AS `nama_unit`,`e`.`nama` AS `nama_asuransi`,`c`.`kelas` AS `kelas`,`f`.`nama` AS `nama`,`f`.`alamat` AS `alamat`,(case when (`c`.`iol` = 1) then `c`.`tgl_kunj` else `c`.`tgl_kunj` end) AS `tgl_masuk`,(case when (`c`.`iol` = 1) then `c`.`jam_kunj` else `c`.`jam_kunj` end) AS `jam_masuk`,`c`.`tgl_pulang` AS `tgl_pulang`,`c`.`jam_pulang` AS `jam_pulang`,(case when (`c`.`iol` = 1) then 'RAWAT JALAN' else 'RAWAT INAP' end) AS `rawat`,`g`.`nama_dokter` AS `nama_dokter`,`f`.`tgl_lahir` AS `tgl_lahir`,`c`.`iol` AS `iol` from ((((((`ksr_det_trn` `a` left join `ksr_tarif` `b` on((`a`.`kode` = `b`.`kode`))) left join `ksr_trn` `c` on((`a`.`id_register` = `c`.`id_register`))) left join `mr_unit` `d` on((`c`.`id_unit` = `d`.`id_unit`))) left join `mr_asuransi` `e` on((`c`.`id_asuransi` = `e`.`id_asuransi`))) left join `mr_pasien` `f` on((`c`.`id_catatan_medik` = `f`.`id_catatan_medik`))) left join `mr_dokter` `g` on((`c`.`id_dokter` = `g`.`id_dokter`))) order by (case when (`a`.`kode` = 1002) then 'FARMASI' when (`a`.`kode` = 1001) then 'LABORATORIUM' when (`a`.`kode` = 1003) then 'RADIOLOGI' when (`a`.`kode` = 1004) then 'FISIOTERAPHI' when (`a`.`kode` >= 10000) then `b`.`nama` end)) */;

/*View structure for view v_ksr_ro_trn */

/*!50001 DROP TABLE IF EXISTS `v_ksr_ro_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_ro_trn` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_ro_trn` AS (select (case when (`a`.`lunas` = 1) then '/img/lunas.png' else '' end) AS `aksi`,`a`.`id_ro_trn` AS `id_ro_trn`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`kelas` AS `kelas`,`a`.`biaya` AS `biaya` from `ro_trn` `a`) */;

/*View structure for view v_ksr_set_akun */

/*!50001 DROP TABLE IF EXISTS `v_ksr_set_akun` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_set_akun` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_set_akun` AS (select `a`.`id_ksr_set_akun` AS `id_ksr_set_akun`,`a`.`uraian` AS `uraian`,`b`.`kode_akun` AS `kode_akun`,`b`.`nama_akun` AS `nama_akun`,`c`.`nama` AS `nama`,`a`.`keterangan` AS `keterangan` from ((`ksr_set_akun` `a` left join `ksr_akun` `b` on((`a`.`kode_akun` = `b`.`kode_akun`))) left join `ksr_jurnal_posisi` `c` on((`a`.`posisi` = `c`.`id_ksr_jurnal_posisi`)))) */;

/*View structure for view v_ksr_set_dr_residen */

/*!50001 DROP TABLE IF EXISTS `v_ksr_set_dr_residen` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_set_dr_residen` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_ksr_set_dr_residen` AS (select `a`.`id_ksr_set_residen` AS `id_ksr_set_residen`,`a`.`id_dokter` AS `id_dokter`,`a`.`id_dr_residen` AS `id_dr_residen`,`a`.`aktif` AS `aktif`,`b`.`nama_dokter` AS `nama_dokter`,`c`.`nama_dokter` AS `nama_dr_residen`,(case when (`a`.`aktif` = 1) then 'Aktif' else 'Tidak' end) AS `ket` from ((`ksr_set_residen` `a` join `mr_dokter` `b` on((`a`.`id_dokter` = `b`.`id_dokter`))) join `mr_dokter` `c` on((`a`.`id_dr_residen` = `c`.`id_dokter`)))) */;

/*View structure for view v_ksr_titip */

/*!50001 DROP TABLE IF EXISTS `v_ksr_titip` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_titip` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_titip` AS (select `a`.`id_ksr_titip` AS `id_ksr_titip`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`total` AS `total`,(case when ((`a`.`keterangan` = '-') and (`a`.`kode` = 1001)) then 'titip pembayaran pelayanan Laborat' when ((`a`.`keterangan` = '-') and (`a`.`kode` = 1002)) then 'titip pembayaran pelayanan Farmasi' when ((`a`.`keterangan` = '-') and (`a`.`kode` = 1003)) then 'titip pembayaran pelayanan Radiologi' when ((`a`.`keterangan` = '-') and (`a`.`kode` = 1004)) then 'titip pembayaran pelayanan Fisioteraphi' else `a`.`keterangan` end) AS `keterangan`,(case when (`a`.`nama` = '-') then `b`.`nama` else `a`.`nama` end) AS `nama`,(case when (`a`.`kode` = 1001) then 'LABORAT' when (`a`.`kode` = 1002) then 'FARMASI' when (`a`.`kode` = 1003) then 'RADIOLOGI' when (`a`.`kode` = 1004) then 'FISIOTERAPHI' when (`a`.`kode` = 0) then 'KASIR' end) AS `ket` from (`ksr_titip` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`)))) */;

/*View structure for view v_ksr_titip_total */

/*!50001 DROP TABLE IF EXISTS `v_ksr_titip_total` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_titip_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_titip_total` AS (select sum(`ksr_titip`.`total`) AS `total`,`ksr_titip`.`id_register` AS `id_register` from `ksr_titip` group by `ksr_titip`.`id_register`) */;

/*View structure for view v_ksr_total */

/*!50001 DROP TABLE IF EXISTS `v_ksr_total` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_total` AS (select `a`.`id_register` AS `id_register`,sum((case when (`a`.`kode` >= 10000) then (`a`.`jumlah` * `a`.`tarif`) else `a`.`tarif` end)) AS `sub_total`,sum((case when (`a`.`kode` >= 10000) then (`a`.`jumlah` * `a`.`diskon`) else `a`.`diskon` end)) AS `total_diskon`,sum((case when (`a`.`kode` >= 10000) then (`a`.`jumlah` * (`a`.`tarif` - `a`.`diskon`)) else `a`.`tarif` end)) AS `grand_total` from (`ksr_det_trn` `a` left join `ksr_tarif` `b` on((`a`.`kode` = `b`.`kode`))) group by `a`.`id_register`) */;

/*View structure for view v_ksr_trn */

/*!50001 DROP TABLE IF EXISTS `v_ksr_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_trn` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ksr_trn` AS (select `a`.`id_ksr_trn` AS `id_ksr_trn`,`a`.`tgl_kunj` AS `tgl_kunj`,`a`.`jam_kunj` AS `jam_kunj`,`a`.`tgl_inap` AS `tgl_inap`,`a`.`jam_inap` AS `jam_inap`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`kelas` AS `kelas`,`b`.`nama_unit` AS `nama_unit`,`c`.`nama` AS `nama_asuransi` from ((`ksr_trn` `a` left join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) left join `mr_asuransi` `c` on((`a`.`id_asuransi` = `c`.`id_asuransi`)))) */;

/*View structure for view v_ksr_trn_layanan */

/*!50001 DROP TABLE IF EXISTS `v_ksr_trn_layanan` */;
/*!50001 DROP VIEW IF EXISTS `v_ksr_trn_layanan` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_ksr_trn_layanan` AS (select `a`.`id_ksr_det_trn` AS `id_ksr_det_trn`,`c`.`kelas` AS `kelas`,`c`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`c`.`tgl_kunj` AS `tgl_kunj`,`c`.`jam_kunj` AS `jam_kunj`,`c`.`id_dokter` AS `id_dokter`,`a`.`kode` AS `kode`,`e`.`nama` AS `nama_pasien`,`f`.`nama_unit` AS `nama_unit`,(case when (`c`.`iol` = 1) then 'POLI' else 'INAP' end) AS `ket_iol`,`b`.`nama` AS `nama`,`d`.`nama_dokter` AS `nama_dokter`,`a`.`tarif` AS `tarif`,`a`.`jumlah` AS `jumlah`,`a`.`diskon` AS `diskon`,`a`.`total` AS `total`,`a`.`operator` AS `operator` from (((((`ksr_det_trn` `a` join `ksr_tarif` `b` on((`a`.`kode` = `b`.`kode`))) join `ksr_trn` `c` on((`a`.`id_register` = `c`.`id_register`))) join `mr_dokter` `d` on((`c`.`id_dokter` = `d`.`id_dokter`))) join `mr_pasien` `e` on((`c`.`id_catatan_medik` = `e`.`id_catatan_medik`))) join `mr_unit` `f` on((`c`.`id_unit` = `f`.`id_unit`))) where (`a`.`pelaksana` = 1)) */;

/*View structure for view v_laborat_hasil */

/*!50001 DROP TABLE IF EXISTS `v_laborat_hasil` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_hasil` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_hasil` AS select sql_cache `trn`.`id_petugas` AS `id_petugas`,`tar`.`id_lab_tarif` AS `id_lab_tarif`,`det`.`id_lab_det_trn` AS `id_lab_det_trn`,`det`.`id_lab_trn` AS `id_lab_trn`,`det`.`id_register` AS `id_register`,`det`.`id_catatan_medik` AS `id_catatan_medik`,`tar`.`nama` AS `nama`,if(((cast((`det`.`hasil` * 100) as unsigned) > (`tar`.`atas` * 100)) or (cast((`det`.`hasil` * 100) as unsigned) < (`tar`.`bawah` * 100))),concat(`det`.`hasil`,' *'),`det`.`hasil`) AS `hasil`,`tar`.`satuan` AS `satuan`,`tar`.`harga_normal` AS `harga_normal`,`det`.`harga` AS `tarif`,`tar`.`bawah` AS `bawah`,`tar`.`atas` AS `atas`,`det`.`qty` AS `qty`,`trn`.`tanggal` AS `tanggal`,`trn`.`jam` AS `jam`,`unit`.`nama_unit` AS `nama_unit`,`asu`.`nama` AS `nama_asuransi`,`sampel`.`nama_sampel` AS `nama_sampel`,`dokter`.`nama_dokter` AS `nama_dokter`,`pasien`.`alamat` AS `alamat`,`trn`.`kelas` AS `kelas`,`sex`.`nama_sex` AS `nama_sex`,(case when (`pasien`.`id_catatan_medik` like 10000000) then `trn`.`nama` else `pasien`.`nama` end) AS `nama_pasien`,floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days`,`trn`.`keterangan` AS `keterangan`,`tar`.`kode_rujukan` AS `kode_rujukan` from ((((((((`lab_det_trn` `det` straight_join `lab_tarif` `tar` on((`tar`.`id_lab_tarif` = `det`.`id_lab_tarif`))) straight_join `lab_trn` `trn` on((`trn`.`id_lab_trn` = `det`.`id_lab_trn`))) left join `mr_unit` `unit` on((`trn`.`id_unit` = `unit`.`id_unit`))) left join `mr_asuransi` `asu` on((`trn`.`id_asuransi` = `asu`.`id_asuransi`))) left join `lab_sampel` `sampel` on((`trn`.`id_sampel` = `sampel`.`id_sampel`))) left join `mr_dokter` `dokter` on((`trn`.`id_dokter` = `dokter`.`id_dokter`))) left join `mr_pasien` `pasien` on((`trn`.`id_catatan_medik` = `pasien`.`id_catatan_medik`))) left join `mr_sex` `sex` on((`pasien`.`sex` = `sex`.`id_sex`))) where (`det`.`hilang` like 0) order by `tar`.`urutan` */;

/*View structure for view v_laborat_hasil_by_kelas */

/*!50001 DROP TABLE IF EXISTS `v_laborat_hasil_by_kelas` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_hasil_by_kelas` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_hasil_by_kelas` AS select sql_cache `lab`.`id_lab_trn` AS `id_lab_trn`,`lab`.`id_catatan_medik` AS `id_catatan_medik`,`lab`.`id_register` AS `id_register`,`pas`.`nama` AS `namapasien`,cast(`lab`.`tanggal` as date) AS `tanggal`,`lab`.`kelas` AS `kelas` from (`lab_trn` `lab` straight_join `mr_pasien` `pas` on((`pas`.`id_catatan_medik` = `lab`.`id_catatan_medik`))) order by `lab`.`id_catatan_medik` */;

/*View structure for view v_laborat_nota */

/*!50001 DROP TABLE IF EXISTS `v_laborat_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_nota` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_nota` AS (select sql_cache `det`.`id_lab_det_trn` AS `id_lab_det_trn`,`det`.`id_lab_trn` AS `id_lab_trn`,`det`.`id_register` AS `id_register`,`det`.`id_catatan_medik` AS `id_catatan_medik`,`tar`.`nama` AS `nama`,if(((cast(`det`.`hasil` as unsigned) > `tar`.`atas`) or (cast(`det`.`hasil` as unsigned) < `tar`.`bawah`)),concat(`det`.`hasil`,' *'),`det`.`hasil`) AS `hasil`,`tar`.`satuan` AS `satuan`,`tar`.`harga_normal` AS `harga_normal`,`det`.`harga` AS `tarif`,`tar`.`bawah` AS `bawah`,`tar`.`atas` AS `atas`,`det`.`qty` AS `qty`,`trn`.`tanggal` AS `tanggal`,`trn`.`jam` AS `jam`,`unit`.`nama_unit` AS `nama_unit`,`asu`.`nama` AS `nama_asuransi`,`sampel`.`nama_sampel` AS `nama_sampel`,`dokter`.`nama_dokter` AS `nama_dokter`,`pasien`.`alamat` AS `alamat`,`trn`.`kelas` AS `kelas`,floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365)) AS `umur_hr`,floor(((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12)) AS `umur_bln`,ceiling(((((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `umur_th`,`sex`.`nama_sex` AS `nama_sex`,`pasien`.`nama` AS `nama_pasien`,`tar`.`id_lab_tarif` AS `id_lab_tarif` from ((((((((`lab_det_trn` `det` straight_join `lab_tarif` `tar` on((`tar`.`id_lab_tarif` = `det`.`id_lab_tarif`))) straight_join `lab_trn` `trn` on((`trn`.`id_lab_trn` = `det`.`id_lab_trn`))) left join `mr_unit` `unit` on((`trn`.`id_unit` = `unit`.`id_unit`))) left join `mr_asuransi` `asu` on((`trn`.`id_asuransi` = `asu`.`id_asuransi`))) left join `lab_sampel` `sampel` on((`trn`.`id_sampel` = `sampel`.`id_sampel`))) left join `mr_dokter` `dokter` on((`trn`.`id_dokter` = `dokter`.`id_dokter`))) left join `mr_pasien` `pasien` on((`trn`.`id_catatan_medik` = `pasien`.`id_catatan_medik`))) left join `mr_sex` `sex` on((`pasien`.`sex` = `sex`.`id_sex`))) where (`det`.`harga` > 0)) */;

/*View structure for view v_laborat_pasien_aktif */

/*!50001 DROP TABLE IF EXISTS `v_laborat_pasien_aktif` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_pasien_aktif` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_pasien_aktif` AS select sql_cache `p`.`id_pasien` AS `id_pasien`,`p`.`id_catatan_medik` AS `id_catatan_medik`,`p`.`id_register` AS `id_register`,`p`.`nama` AS `nama_pasien`,`p`.`alamat` AS `alamat`,`d`.`nama_desa` AS `desa`,`k`.`nama_kecamatan` AS `kecamatan`,`u`.`nama_unit` AS `nama_unit`,`p`.`kelas` AS `kelas`,`p`.`id_unit` AS `id_unit`,`p`.`id_asuransi` AS `id_asuransi`,`ass`.`nama` AS `namaasuransi`,`p`.`kunjungan` AS `kunjungan`,`p`.`tgl_kunjungan` AS `tgl_kunjungan`,`p`.`jam_kunjungan` AS `jam_kunjungan` from ((((`mr_pasien` `p` straight_join `mr_desa_bps` `d` on((`d`.`kode_desa` = `p`.`id_desa`))) straight_join `mr_kecamatan_bps` `k` on((`k`.`kode_kecamatan` = `p`.`id_kecamatan`))) straight_join `mr_unit` `u` on((`u`.`id_unit` = `p`.`id_unit`))) straight_join `mr_asuransi` `ass` on((`ass`.`id_asuransi` = `p`.`id_asuransi`))) where ((`p`.`aktif` = 1) and (not((`p`.`nama` like '')))) order by `p`.`nama` */;

/*View structure for view v_laborat_pasien_ceklab */

/*!50001 DROP TABLE IF EXISTS `v_laborat_pasien_ceklab` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_pasien_ceklab` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_pasien_ceklab` AS select sql_cache `lab`.`id_lab_trn` AS `id_lab_trn`,`pas`.`id_pasien` AS `id_pasien`,`lab`.`id_catatan_medik` AS `id_catatan_medik`,`lab`.`id_register` AS `id_register`,(case when (`pas`.`id_catatan_medik` like 10000000) then `lab`.`nama` else `pas`.`nama` end) AS `namapasien`,`pas`.`alamat` AS `alamat`,`des`.`nama_desa` AS `desa`,`kec`.`nama_kecamatan` AS `kecamatan`,`lab`.`tanggal` AS `tanggal`,`lab`.`jam` AS `jam`,`lab`.`kelas` AS `kelas`,`unit`.`nama_unit` AS `unit`,`pengirim`.`nama_pengirim` AS `pengirim`,`lab`.`biaya` AS `biaya`,`asuransi`.`nama` AS `asuransi`,(case when (`lab`.`lunas` = 1) then '/img/lunas.png' else '/img/belum.png' end) AS `lunas`,ifnull(`lab`.`diskon`,0) AS `diskon`,ifnull((`lab`.`biaya` - ((ifnull(`lab`.`diskon`,0) * `lab`.`biaya`) / 100)),0) AS `grand_total`,(case when (`lab`.`val_lab` = 1) then '/img/formulir.png' end) AS `val_lab` from ((((((`lab_trn` `lab` left join `mr_pasien` `pas` on((`lab`.`id_catatan_medik` = `pas`.`id_catatan_medik`))) left join `mr_unit` `unit` on((`unit`.`id_unit` = `lab`.`id_unit`))) left join `mr_desa_bps` `des` on((`des`.`kode_desa` = `pas`.`id_desa`))) left join `mr_kecamatan_bps` `kec` on((`kec`.`kode_kecamatan` = `pas`.`id_kecamatan`))) left join `mr_pengirim` `pengirim` on((`pengirim`.`id_pengirim` = `lab`.`id_pengirim`))) left join `mr_asuransi` `asuransi` on((`asuransi`.`id_asuransi` = `lab`.`id_asuransi`))) order by `lab`.`id_lab_trn` desc */;

/*View structure for view v_laborat_pendapatan_groupbyasuransi */

/*!50001 DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbyasuransi` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_pendapatan_groupbyasuransi` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_pendapatan_groupbyasuransi` AS select sql_cache `l`.`id_lab_trn` AS `id_lab_trn`,cast(`l`.`tanggal` as date) AS `tanggal`,count(`l`.`id_asuransi`) AS `jumlahtrx`,`a`.`nama` AS `asuransi`,sum(`l`.`biaya`) AS `pendapatan` from (`lab_trn` `l` straight_join `mr_asuransi` `a` on((`a`.`id_asuransi` = `l`.`id_asuransi`))) group by `l`.`id_asuransi` order by `a`.`nama` */;

/*View structure for view v_laborat_pendapatan_groupbytanggal */

/*!50001 DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbytanggal` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_pendapatan_groupbytanggal` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_pendapatan_groupbytanggal` AS select sql_cache `lab_trn`.`id_lab_trn` AS `id_lab_trn`,cast(`lab_trn`.`tanggal` as date) AS `tanggal`,count(`lab_trn`.`id_lab_trn`) AS `jumlahpemeriksaan`,sum(`lab_trn`.`biaya`) AS `jumlahpendapatan` from `lab_trn` where (`lab_trn`.`lunas` = 1) group by cast(`lab_trn`.`tanggal` as date) order by cast(`lab_trn`.`tanggal` as date) */;

/*View structure for view v_laborat_pendapatan_groupbyunit */

/*!50001 DROP TABLE IF EXISTS `v_laborat_pendapatan_groupbyunit` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_pendapatan_groupbyunit` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_pendapatan_groupbyunit` AS select sql_cache `l`.`id_lab_trn` AS `id_lab_trn`,cast(`l`.`tanggal` as date) AS `tanggal`,count(`l`.`id_unit`) AS `jumlahtrx`,`u`.`nama_unit` AS `nama_unit`,sum(`l`.`biaya`) AS `pendapatan` from (`lab_trn` `l` straight_join `mr_unit` `u` on((`u`.`id_unit` = `l`.`id_unit`))) group by `l`.`id_unit` order by `u`.`nama_unit` */;

/*View structure for view v_laborat_tarif */

/*!50001 DROP TABLE IF EXISTS `v_laborat_tarif` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_tarif` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_tarif` AS select sql_cache `lab_tarif`.`id_lab_tarif` AS `id_lab_tarif`,`lab_tarif`.`nama` AS `nama`,`lab_tarif`.`bawah` AS `bawah`,`lab_tarif`.`atas` AS `atas` from `lab_tarif` */;

/*View structure for view v_laborat_tariftunggal */

/*!50001 DROP TABLE IF EXISTS `v_laborat_tariftunggal` */;
/*!50001 DROP VIEW IF EXISTS `v_laborat_tariftunggal` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_laborat_tariftunggal` AS select sql_cache `lab_tarif`.`id_lab_tarif` AS `id_lab_tarif`,`lab_tarif`.`nama` AS `nama`,`lab_tarif`.`kel` AS `kel` from `lab_tarif` where ((`lab_tarif`.`kel` = '-') or (`lab_tarif`.`kel` = `lab_tarif`.`id_lab_tarif`)) order by `lab_tarif`.`nama` */;

/*View structure for view v_lap_parameter */

/*!50001 DROP TABLE IF EXISTS `v_lap_parameter` */;
/*!50001 DROP VIEW IF EXISTS `v_lap_parameter` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lap_parameter` AS (select sql_cache `det`.`id_lab_det_trn` AS `id_lab_det_trn`,`det`.`id_lab_trn` AS `id_lab_trn`,`det`.`id_register` AS `id_register`,`det`.`id_catatan_medik` AS `id_catatan_medik`,`tar`.`nama` AS `nama`,if(((cast(`det`.`hasil` as unsigned) > `tar`.`atas`) or (cast(`det`.`hasil` as unsigned) < `tar`.`bawah`)),concat(`det`.`hasil`,' *'),`det`.`hasil`) AS `hasil`,`tar`.`satuan` AS `satuan`,`tar`.`harga_normal` AS `harga_normal`,`det`.`harga` AS `tarif`,`tar`.`bawah` AS `bawah`,`tar`.`atas` AS `atas`,`det`.`qty` AS `qty`,`trn`.`tanggal` AS `tanggal`,`trn`.`jam` AS `jam`,`unit`.`nama_unit` AS `nama_unit`,`asu`.`nama` AS `nama_asuransi`,`sampel`.`nama_sampel` AS `nama_sampel`,`dokter`.`nama_dokter` AS `nama_dokter`,`pasien`.`alamat` AS `alamat`,`trn`.`kelas` AS `kelas`,floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365)) AS `umur_hr`,floor(((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12)) AS `umur_bln`,ceiling(((((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365) - floor(((to_days(`trn`.`tanggal`) - to_days(`pasien`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `umur_th`,`sex`.`nama_sex` AS `nama_sex`,`pasien`.`nama` AS `nama_pasien`,`tar`.`id_lab_tarif` AS `id_lab_tarif` from ((((((((`lab_det_trn` `det` straight_join `lab_tarif` `tar` on((`tar`.`id_lab_tarif` = `det`.`id_lab_tarif`))) straight_join `lab_trn` `trn` on((`trn`.`id_lab_trn` = `det`.`id_lab_trn`))) left join `mr_unit` `unit` on((`trn`.`id_unit` = `unit`.`id_unit`))) left join `mr_asuransi` `asu` on((`trn`.`id_asuransi` = `asu`.`id_asuransi`))) left join `lab_sampel` `sampel` on((`trn`.`id_sampel` = `sampel`.`id_sampel`))) left join `mr_dokter` `dokter` on((`trn`.`id_dokter` = `dokter`.`id_dokter`))) left join `mr_pasien` `pasien` on((`trn`.`id_catatan_medik` = `pasien`.`id_catatan_medik`))) left join `mr_sex` `sex` on((`pasien`.`sex` = `sex`.`id_sex`)))) */;

/*View structure for view v_mr_10_diagnosa */

/*!50001 DROP TABLE IF EXISTS `v_mr_10_diagnosa` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_10_diagnosa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_10_diagnosa` AS (select `a`.`icd` AS `icd`,`b`.`diagnosa` AS `diagnosa`,sum(`a`.`keluar_hidup_laki`) AS `laki_hidup`,sum(`a`.`keluar_hidup_perempuan`) AS `perempuan_hidup`,sum(`a`.`keluar_mati_laki`) AS `laki_mati`,sum(`a`.`keluar_mati_perempuan`) AS `perempuan_mati`,sum(`a`.`total`) AS `total` from (`mr_lap_10_diagnosa` `a` join `mr_icd` `b` on((`a`.`icd` = `b`.`icd`))) group by `a`.`icd` order by sum(`a`.`total`) desc limit 100) */;

/*View structure for view v_mr_10_procedur */

/*!50001 DROP TABLE IF EXISTS `v_mr_10_procedur` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_10_procedur` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_mr_10_procedur` AS (select `a`.`icd` AS `icd`,`b`.`diagnosa` AS `diagnosa`,sum(ifnull(`a`.`keluar_hidup_laki`,0)) AS `keluar_hidup_laki`,sum(ifnull(`a`.`keluar_mati_laki`,0)) AS `keluar_mati_laki`,sum(ifnull(`a`.`keluar_hidup_perempuan`,0)) AS `keluar_hidup_perempuan`,sum(ifnull(`a`.`keluar_mati_perempuan`,0)) AS `keluar_mati_perempuan`,sum(ifnull(`a`.`total`,0)) AS `total` from (`mr_lap_10_diagnosa` `a` join `mr_icd9` `b` on((`a`.`icd` = `b`.`icd9`))) group by `a`.`icd`) */;

/*View structure for view v_mr_alergi */

/*!50001 DROP TABLE IF EXISTS `v_mr_alergi` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_alergi` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_alergi` AS (select group_concat(`mr_alergi`.`nama_obat` separator ',') AS `daftar_alergi`,`mr_alergi`.`id_catatan_medik` AS `id_catatan_medik` from `mr_alergi` group by `mr_alergi`.`id_catatan_medik`) */;

/*View structure for view v_mr_catatan_medik */

/*!50001 DROP TABLE IF EXISTS `v_mr_catatan_medik` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_catatan_medik` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_catatan_medik` AS (select `mr_pasien`.`id_catatan_medik` AS `id_catatan_medik`,`mr_pasien`.`id_pasien` AS `id_pasien` from `mr_pasien` limit 1) */;

/*View structure for view v_mr_cetak_halaman_depan */

/*!50001 DROP TABLE IF EXISTS `v_mr_cetak_halaman_depan` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_cetak_halaman_depan` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_cetak_halaman_depan` AS (select `a`.`id_pasien` AS `id_pasien`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,(case when (length(`a`.`nama`) >= 20) then concat(left(`a`.`nama`,20),'..') else `a`.`nama` end) AS `nama`,(case when (length(`a`.`alamat`) >= 25) then concat(left(`a`.`alamat`,25),'..') else `a`.`alamat` end) AS `alamat`,`b`.`nama_desa` AS `desa`,`b`.`nama_kecamatan` AS `kecamatan`,`b`.`nama_kabupaten` AS `kabupaten`,`a`.`telp` AS `telp`,`e`.`nama_sex` AS `nama_sex`,`a`.`golongan_darah` AS `golongan_darah`,`a`.`tempat` AS `tempat`,`a`.`tgl_lahir` AS `tgl_lahir`,`f`.`nama_agama` AS `nama_agama`,`g`.`nama` AS `nama_pendidikan`,`h`.`nama` AS `nama_pekerjaan`,`a`.`nama_ortu` AS `nama_ortu`,`i`.`nama_keluarga` AS `nama_keluarga`,`a`.`alamat_ortu` AS `alamat_ortu`,`j`.`nama` AS `nama_pekerjaan_ortu`,`k`.`nama_pengirim` AS `nama_pengirim`,`l`.`nama` AS `nama_asuransi`,(case when (`a`.`menikah` = 1) then 'SUDAH KAWIN' else 'BELUM KAWIN' end) AS `menikah`,`m`.`nama_unit` AS `nama_unit`,`a`.`nip` AS `nip`,`a`.`nik` AS `nik`,`n`.`nama_pangkat` AS `nama_pangkat`,`n`.`kelas_perawatan` AS `kelas_perawatan`,floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((((((((((`mr_pasien` `a` left join `v_mr_desa_bps` `b` on((`a`.`id_desa` = `b`.`kode_desa`))) left join `mr_kecamatan` `c` on((`a`.`id_kecamatan` = `c`.`kode`))) left join `mr_kabupaten` `d` on((`a`.`id_kabupaten` = `d`.`kode`))) left join `mr_sex` `e` on((`a`.`sex` = `e`.`id_sex`))) left join `mr_agama` `f` on((`a`.`id_agama` = `f`.`id_agama`))) left join `mr_pendidikan` `g` on((`a`.`id_pendidikan` = `g`.`id_pendidikan`))) left join `mr_pekerjaan` `h` on((`a`.`id_pekerjaan` = `h`.`id_pekerjaan`))) left join `mr_keluarga` `i` on((`a`.`id_keluarga` = `i`.`id_keluarga`))) left join `mr_pekerjaan` `j` on((`a`.`id_pekerjaan_ortu` = `j`.`id_pekerjaan`))) left join `mr_pengirim` `k` on((`a`.`id_pengirim` = `k`.`id_pengirim`))) left join `mr_asuransi` `l` on((`a`.`id_asuransi` = `l`.`id_asuransi`))) left join `mr_pangkat` `n` on((`a`.`id_pangkat` = `n`.`id_pangkat`))) left join `mr_unit` `m` on((`a`.`id_unit` = `m`.`id_unit`)))) */;

/*View structure for view v_mr_desa */

/*!50001 DROP TABLE IF EXISTS `v_mr_desa` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_desa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_desa` AS (select concat(`a`.`nama`,', ',`b`.`nama`,', ',`c`.`nama`) AS `alamat`,`a`.`kode` AS `kode`,`a`.`nama` AS `desa`,`b`.`nama` AS `kec`,`c`.`nama` AS `kab`,`a`.`kode_kec` AS `kode_kec`,`b`.`kd_kab` AS `kd_kab` from ((`mr_desa` `a` left join `mr_kecamatan` `b` on((`a`.`kode_kec` = `b`.`kode`))) left join `mr_kabupaten` `c` on((`b`.`kd_kab` = `c`.`kode`))) order by `a`.`nama` limit 0,1000) */;

/*View structure for view v_mr_desa_bps */

/*!50001 DROP TABLE IF EXISTS `v_mr_desa_bps` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_desa_bps` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_desa_bps` AS (select `a`.`id_desa` AS `id_desa`,`a`.`kode_desa` AS `kode_desa`,`a`.`nama_desa` AS `nama_desa`,`b`.`kode_kecamatan` AS `kode_kecamatan`,`b`.`nama_kecamatan` AS `nama_kecamatan`,`c`.`kode_kabupaten` AS `kode_kabupaten`,`c`.`nama_kabupaten` AS `nama_kabupaten`,`d`.`kode_propinsi` AS `kode_propinsi`,`d`.`nama_propinsi` AS `nama_propinsi`,concat(`a`.`nama_desa`,' ',`b`.`nama_kecamatan`,' ',`c`.`nama_kabupaten`,' ',`d`.`nama_propinsi`) AS `alamat` from (((`mr_desa_bps` `a` join `mr_kecamatan_bps` `b` on((`a`.`kode_kecamatan` = `b`.`kode_kecamatan`))) join `mr_kabupaten_bps` `c` on((`b`.`kode_kabupaten` = `c`.`kode_kabupaten`))) join `mr_propinsi_bps` `d` on((`c`.`kode_propinsi` = `d`.`kode_propinsi`))) order by `a`.`nama_desa`) */;

/*View structure for view v_mr_dokter */

/*!50001 DROP TABLE IF EXISTS `v_mr_dokter` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_dokter` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_dokter` AS (select `mr_dokter`.`id_dokter` AS `id_dokter`,`mr_dokter`.`nama_dokter` AS `nama_dokter` from `mr_dokter`) */;

/*View structure for view v_mr_edit_pasien_pulang */

/*!50001 DROP TABLE IF EXISTS `v_mr_edit_pasien_pulang` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_edit_pasien_pulang` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_edit_pasien_pulang` AS (select `a`.`id_pasien_pulang` AS `id_pasien_pulang`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`a`.`id_mr_bl` AS `id_mr_bl`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama_dokter` AS `nama_dokter`,`a`.`jam` AS `jam`,`a`.`tgl_kunjungan` AS `tgl_kunjungan`,`a`.`jam_kunjungan` AS `jam_kunjungan`,(case when (`a`.`poli_inap` = 1) then 'Poli' when (`a`.`poli_inap` = 2) then 'Inap' end) AS `nama_poli_inap` from (((`mr_pasien_pulang` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `mr_dokter` `d` on((`a`.`id_dokter` = `d`.`id_dokter`))) order by `a`.`id_pasien_pulang` desc) */;

/*View structure for view v_mr_edit_unit */

/*!50001 DROP TABLE IF EXISTS `v_mr_edit_unit` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_edit_unit` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_edit_unit` AS (select `mr_unit`.`id_unit` AS `id_unit`,`mr_unit`.`nama_unit` AS `nama_unit`,`mr_unit`.`kelompok` AS `kelompok`,`mr_unit`.`tempat_tidur` AS `tempat_tidur`,`mr_unit`.`vip` AS `vip`,`mr_unit`.`satu` AS `satu`,`mr_unit`.`dua` AS `dua`,`mr_unit`.`tiga` AS `tiga` from `mr_unit` where (`mr_unit`.`kelompok` = 2)) */;

/*View structure for view v_mr_ewar */

/*!50001 DROP TABLE IF EXISTS `v_mr_ewar` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_ewar` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_ewar` AS (select `mr_lap_ewar`.`id_lap_ewar` AS `id_lap_ewar`,`mr_lap_ewar`.`minggu` AS `minggu`,sum(`mr_lap_ewar`.`a`) AS `a`,sum(`mr_lap_ewar`.`b`) AS `b`,sum(`mr_lap_ewar`.`c`) AS `c`,sum(`mr_lap_ewar`.`d`) AS `d`,sum(`mr_lap_ewar`.`e`) AS `e`,sum(`mr_lap_ewar`.`f`) AS `f`,sum(`mr_lap_ewar`.`g`) AS `g`,sum(`mr_lap_ewar`.`h`) AS `h`,sum(`mr_lap_ewar`.`i`) AS `i`,sum(`mr_lap_ewar`.`j`) AS `j`,sum(`mr_lap_ewar`.`k`) AS `k`,sum(`mr_lap_ewar`.`l`) AS `l`,sum(`mr_lap_ewar`.`m`) AS `m`,sum(`mr_lap_ewar`.`n`) AS `n`,sum(`mr_lap_ewar`.`p`) AS `p`,sum(`mr_lap_ewar`.`q`) AS `q`,sum(`mr_lap_ewar`.`r`) AS `r`,sum(`mr_lap_ewar`.`s`) AS `s`,sum(`mr_lap_ewar`.`t`) AS `t`,sum(`mr_lap_ewar`.`u`) AS `u`,sum(`mr_lap_ewar`.`v`) AS `v`,sum(`mr_lap_ewar`.`w`) AS `w`,sum(`mr_lap_ewar`.`yy`) AS `y`,sum(`mr_lap_ewar`.`z`) AS `z`,sum(`mr_lap_ewar`.`xx`) AS `x` from `mr_lap_ewar` group by `mr_lap_ewar`.`minggu`) */;

/*View structure for view v_mr_history_diagnosa */

/*!50001 DROP TABLE IF EXISTS `v_mr_history_diagnosa` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_history_diagnosa` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_history_diagnosa` AS (select `d`.`tgl_kunjungan` AS `tgl_kunjungan`,`d`.`jam_kunjungan` AS `jam_kunjungan`,(case when (`a`.`poli_inap` = 1) then 'Rawat Jalan' else 'Rawat Inap' end) AS `poli`,`b`.`nama_unit` AS `nama_unit`,`c`.`icd` AS `icd`,`c`.`diagnosa` AS `diagnosa`,`a`.`id_register` AS `id_register`,`a`.`id_rla` AS `id_rla` from (((`mr_rla` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) join `mr_icd` `c` on((`a`.`icd` = `c`.`icd`))) join `mr_pasien_pulang` `d` on((`a`.`id_register` = `d`.`id_register`)))) */;

/*View structure for view v_mr_history_farmasi */

/*!50001 DROP TABLE IF EXISTS `v_mr_history_farmasi` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_history_farmasi` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_history_farmasi` AS (select `a`.`id_far_det_trn` AS `id_far_det_trn`,`d`.`tanggal` AS `tanggal`,`d`.`jam` AS `jam`,`a`.`id_far_trn` AS `id_far_trn`,`c`.`nama` AS `nama`,`a`.`qty` AS `qty`,`a`.`idx` AS `idx`,`a`.`harga` AS `harga`,`a`.`subtotal` AS `subtotal`,`a`.`id_obat` AS `id_obat`,(case when (`a`.`poli_inap` = 1) then 'Rawat Jalan' else 'Rawat Inap' end) AS `rawat`,concat(`a`.`dosis`,' X ',`a`.`hari`,' ',`b`.`nama_satuan_minum`) AS `dosis`,`a`.`id_far_satuan_minum` AS `id_far_satuan_minum`,`e`.`nama_unit` AS `nama_unit`,`d`.`id_register` AS `id_register`,`d`.`id_catatan_medik` AS `id_catatan_medik`,`f`.`nama_dokter` AS `nama_dokter` from (((((`far_det_trn_fix` `a` left join `far_satuan_minum` `b` on((`a`.`id_far_satuan_minum` = `b`.`id_far_satuan_minum`))) left join `far_stok` `c` on((`a`.`id_obat` = `c`.`no_urut`))) left join `far_trn` `d` on((`a`.`id_far_trn` = `d`.`id_far_trn`))) left join `mr_unit` `e` on((`d`.`id_unit` = `e`.`id_unit`))) left join `mr_dokter` `f` on((`d`.`id_dokter` = `f`.`id_dokter`)))) */;

/*View structure for view v_mr_history_fisioteraphi */

/*!50001 DROP TABLE IF EXISTS `v_mr_history_fisioteraphi` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_history_fisioteraphi` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_history_fisioteraphi` AS (select `a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_fis_trn` AS `id_fis_trn`,`a`.`id_fis_tarif` AS `id_fis_tarif`,`b`.`tanggal` AS `tanggal`,`b`.`jam` AS `jam`,`c`.`nama` AS `nama`,`a`.`id_fis_det_trn` AS `id_fis_det_trn` from ((`fis_det_trn` `a` join `fis_trn` `b` on((`a`.`id_fis_trn` = `b`.`id_fis_trn`))) join `fis_tarif` `c` on((`a`.`id_fis_tarif` = `c`.`id_fis_tarif`)))) */;

/*View structure for view v_mr_history_hasil_laborat */

/*!50001 DROP TABLE IF EXISTS `v_mr_history_hasil_laborat` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_history_hasil_laborat` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_history_hasil_laborat` AS (select sql_cache `tar`.`id_lab_tarif` AS `id_lab_tarif`,`det`.`id_lab_det_trn` AS `id_lab_det_trn`,`det`.`id_lab_trn` AS `id_lab_trn`,`det`.`id_register` AS `id_register`,`det`.`id_catatan_medik` AS `id_catatan_medik`,`tar`.`nama` AS `nama`,if(((cast((`det`.`hasil` * 100) as unsigned) > (`tar`.`atas` * 100)) or (cast((`det`.`hasil` * 100) as unsigned) < (`tar`.`bawah` * 100))),concat(`det`.`hasil`,' *'),`det`.`hasil`) AS `hasil`,`tar`.`satuan` AS `satuan`,`tar`.`harga_normal` AS `harga_normal`,`det`.`harga` AS `tarif`,`tar`.`bawah` AS `bawah`,`tar`.`atas` AS `atas`,`det`.`qty` AS `qty`,`trn`.`tanggal` AS `tanggal`,`trn`.`jam` AS `jam`,`unit`.`nama_unit` AS `nama_unit`,`asu`.`nama` AS `nama_asuransi`,`sampel`.`nama_sampel` AS `nama_sampel`,`dokter`.`nama_dokter` AS `nama_dokter`,`pasien`.`alamat` AS `alamat`,`trn`.`kelas` AS `kelas`,`sex`.`nama_sex` AS `nama_sex`,`pasien`.`nama` AS `nama_pasien` from ((((((((`lab_det_trn` `det` straight_join `lab_tarif` `tar` on((`tar`.`id_lab_tarif` = `det`.`id_lab_tarif`))) straight_join `lab_trn` `trn` on((`trn`.`id_lab_trn` = `det`.`id_lab_trn`))) left join `mr_unit` `unit` on((`trn`.`id_unit` = `unit`.`id_unit`))) left join `mr_asuransi` `asu` on((`trn`.`id_asuransi` = `asu`.`id_asuransi`))) left join `lab_sampel` `sampel` on((`trn`.`id_sampel` = `sampel`.`id_sampel`))) left join `mr_dokter` `dokter` on((`trn`.`id_dokter` = `dokter`.`id_dokter`))) left join `mr_pasien` `pasien` on((`trn`.`id_catatan_medik` = `pasien`.`id_catatan_medik`))) left join `mr_sex` `sex` on((`pasien`.`sex` = `sex`.`id_sex`))) where (`det`.`hilang` like 0) order by `trn`.`id_register`,`tar`.`id_lab_tarif`,`trn`.`tanggal`) */;

/*View structure for view v_mr_history_radiologi */

/*!50001 DROP TABLE IF EXISTS `v_mr_history_radiologi` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_history_radiologi` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_history_radiologi` AS (select `a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_ro_det_trn` AS `id_ro_det_trn`,`a`.`id_ro_trn` AS `id_ro_trn`,`f`.`nama` AS `nama`,`d`.`nama_unit` AS `nama_unit`,`e`.`nama` AS `nama_asuransi`,`h`.`diagnosa` AS `diagnosa`,`c`.`kelas` AS `kelas`,`b`.`nama` AS `nama_tarif`,(case when (`b`.`kel` = 1) then concat(`b`.`nama`,' :',`a`.`hasil`) when (`b`.`kel` = 2) then concat('Hepar ',':',`a`.`hepar`,', Lien',' :',`a`.`lien`,', Ren :',`a`.`ren`,', Vf :',`a`.`vf`,', Pankreas :',`a`.`pankreas`,', Vu :',`a`.`vu`) end) AS `hasil1`,(case when isnull(`a`.`kesan_usg`) then `a`.`kesan` else concat(`a`.`kesan`,' ',`a`.`kesan_usg`) end) AS `kesan`,`a`.`tarif` AS `tarif`,`a`.`jumlah` AS `jumlah`,`c`.`tanggal` AS `tanggal`,`c`.`jam` AS `jam`,`i`.`nama_dokter` AS `nama_dokter`,`k`.`nama_dokter` AS `penanggung`,`j`.`nama_pengirim` AS `nama_pengirim`,`f`.`alamat` AS `alamat`,(case when (`f`.`sex` = 1) then 'Laki-laki' else 'Perempuan' end) AS `sex`,(`a`.`tarif` * `a`.`jumlah`) AS `total` from (((((((((`ro_det_trn` `a` join `ro_tarif` `b` on((`a`.`id_ro_tarif` = `b`.`id_ro_tarif`))) join `ro_trn` `c` on((`a`.`id_ro_trn` = `c`.`id_ro_trn`))) join `mr_unit` `d` on((`c`.`id_unit` = `d`.`id_unit`))) join `mr_asuransi` `e` on((`c`.`id_asuransi` = `e`.`id_asuransi`))) join `mr_pasien` `f` on((`a`.`id_catatan_medik` = `f`.`id_catatan_medik`))) left join `mr_icd` `h` on((`c`.`icd` = `h`.`icd`))) left join `mr_dokter` `i` on((`c`.`id_dokter` = `i`.`id_dokter`))) left join `mr_pengirim` `j` on((`c`.`id_pengirim` = `j`.`id_pengirim`))) left join `mr_dokter` `k` on((`a`.`id_dokter` = `k`.`id_dokter`)))) */;

/*View structure for view v_mr_icd */

/*!50001 DROP TABLE IF EXISTS `v_mr_icd` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_icd` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_icd` AS (select concat('(',`mr_icd`.`icd`,') ',`mr_icd`.`diagnosa`) AS `diagnosa`,`mr_icd`.`icd` AS `icd`,`mr_icd`.`no_urut` AS `no_urut`,`mr_icd`.`dtd` AS `dtd`,`mr_icd`.`stp` AS `stp`,`mr_icd`.`ewar` AS `ewar` from `mr_icd` order by `mr_icd`.`diagnosa`) */;

/*View structure for view v_mr_kecamatan_lb1 */

/*!50001 DROP TABLE IF EXISTS `v_mr_kecamatan_lb1` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_kecamatan_lb1` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_kecamatan_lb1` AS (select `mr_kecamatan_bps`.`kode_kabupaten` AS `kode_kabupaten`,`mr_kecamatan_bps`.`kode_kecamatan` AS `kode_kecamatan`,`mr_kecamatan_bps`.`nama_kecamatan` AS `nama_kecamatan`,`mr_kecamatan_bps`.`id_kecamatan` AS `id_kecamatan` from `mr_kecamatan_bps` where (`mr_kecamatan_bps`.`kode_kabupaten` like 342) order by `mr_kecamatan_bps`.`nama_kecamatan`) */;

/*View structure for view v_mr_kelas_sekarang */

/*!50001 DROP TABLE IF EXISTS `v_mr_kelas_sekarang` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_kelas_sekarang` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_kelas_sekarang` AS (select distinct `mr_tt`.`kelas` AS `kelas`,`mr_tt`.`id_unit` AS `id_unit` from `mr_tt`) */;

/*View structure for view v_mr_label */

/*!50001 DROP TABLE IF EXISTS `v_mr_label` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_label` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_label` AS (select concat('MR : ',`a`.`id_catatan_medik`,' / ',`a`.`id_register`,' [',(case when (`a`.`sex` = 1) then 'L' else 'P' end),']') AS `id_catatan_medik`,`a`.`id_pasien` AS `id_pasien`,concat(`a`.`nama`,' (',`a`.`kelas`,')') AS `nama`,concat(floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365)),' th, ',floor(((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12)),' bln, ',ceiling(((((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12))) * 30)),' hr [',substr(`a`.`tgl_lahir`,9,2),'-',substr(`a`.`tgl_lahir`,6,2),'-',substr(`a`.`tgl_lahir`,1,4),']') AS `unit`,`a`.`alamat` AS `alamat` from ((`mr_pasien` `a` left join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) left join `mr_asuransi` `c` on((`a`.`id_asuransi` = `c`.`id_asuransi`)))) */;

/*View structure for view v_mr_lap_diagnosa */

/*!50001 DROP TABLE IF EXISTS `v_mr_lap_diagnosa` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_lap_diagnosa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_lap_diagnosa` AS (select `a`.`id_rla` AS `id_rla`,`a`.`laki` AS `laki`,`a`.`perempuan` AS `perempuan`,`a`.`tanggal` AS `tanggal`,`a`.`id_catatan_medik` AS `id_catatan_medik`,(case when (`a`.`bl` = 1) then 'BARU' else 'LAMA' end) AS `bl`,`a`.`poli_inap` AS `poli_inap`,`a`.`id_unit` AS `id_unit`,`a`.`icd` AS `icd`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,(case when (`b`.`sex` = 1) then 'LAKI-LAKI' else 'PEREMPUAN' end) AS `sex`,`c`.`nama_unit` AS `nama_unit`,`d`.`diagnosa` AS `diagnosa`,concat(substr(from_days(abs((to_days(`b`.`tgl_lahir`) - to_days(`a`.`tanggal`)))),3,2),' Th, ',substr(from_days(abs((to_days(`b`.`tgl_lahir`) - to_days(now())))),6,2),',Bln ',substr(from_days(abs((to_days(`b`.`tgl_lahir`) - to_days(now())))),9,2),' Hr') AS `umur` from (((`mr_rla` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) join `mr_icd` `d` on((`a`.`icd` = `d`.`icd`))) order by `a`.`tanggal`) */;

/*View structure for view v_mr_lap_kunj_bl_poli */

/*!50001 DROP TABLE IF EXISTS `v_mr_lap_kunj_bl_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_lap_kunj_bl_poli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_lap_kunj_bl_poli` AS (select `a`.`kode` AS `kode`,`a`.`nama` AS `nama`,count(`a`.`baru`) AS `baru`,count(`a`.`lama`) AS `lama`,(count(`a`.`baru`) + count(`a`.`lama`)) AS `subTotal`,count(`a`.`laki`) AS `laki`,count(`a`.`perempuan`) AS `perempuan`,`a`.`total` AS `total`,`a`.`nama_petugas` AS `nama_petugas`,`a`.`tgl_awal` AS `tgl_awal`,`a`.`tgl_akhir` AS `tgl_akhir` from `mr_lap_kunj_bl_poli` `a` group by `a`.`kode`) */;

/*View structure for view v_mr_lap_kunjungan_per_kecamatan */

/*!50001 DROP TABLE IF EXISTS `v_mr_lap_kunjungan_per_kecamatan` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_lap_kunjungan_per_kecamatan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_lap_kunjungan_per_kecamatan` AS (select `a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`b`.`nama` AS `nama`,concat(`b`.`alamat`,' ',`d`.`nama_desa`,' ',`c`.`nama_kecamatan`,' ',`e`.`nama_kabupaten`) AS `alamat`,`b`.`id_kecamatan` AS `id_kecamatan`,`a`.`id_mr_bl` AS `id_mr_bl`,`f`.`nama_unit` AS `nama_unit`,`c`.`nama_kecamatan` AS `nama_kecamatan` from (((((`mr_bl` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) join `mr_kecamatan_bps` `c` on((`b`.`id_kecamatan` = `c`.`kode_kecamatan`))) left join `mr_desa_bps` `d` on((`b`.`id_desa` = `d`.`kode_desa`))) left join `mr_kabupaten_bps` `e` on((`b`.`id_kabupaten` = `e`.`kode_kabupaten`))) join `mr_unit` `f` on((`a`.`id_unit` = `f`.`id_unit`)))) */;

/*View structure for view v_mr_lap_per_diagnosa */

/*!50001 DROP TABLE IF EXISTS `v_mr_lap_per_diagnosa` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_lap_per_diagnosa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_lap_per_diagnosa` AS (select `a`.`id_rla` AS `id_rla`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`c`.`nama` AS `nama`,`c`.`alamat` AS `alamat`,`b`.`nama_unit` AS `nama_unit`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`icd` AS `icd`,`a`.`poli_inap` AS `poli_inap`,`a`.`id_unit` AS `id_unit`,(case when (`c`.`sex` = 1) then 'Laki-laki' else 'Perempuan' end) AS `sex`,(case when (`a`.`poli_inap` = 1) then 'Poli' else 'Inap' end) AS `rawat`,floor(((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`c`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from ((`mr_rla` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) join `mr_pasien` `c` on((`a`.`id_catatan_medik` = `c`.`id_catatan_medik`))) order by `c`.`nama`) */;

/*View structure for view v_mr_lap_stp */

/*!50001 DROP TABLE IF EXISTS `v_mr_lap_stp` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_lap_stp` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_lap_stp` AS (select `b`.`stp` AS `stp`,`b`.`dtd` AS `dtd`,`b`.`ewar` AS `ewar`,`a`.`icd` AS `icd`,`a`.`kode_rs` AS `kode_rs`,`b`.`diagnosa` AS `diagnosa`,sum(`a`.`0_6hrlk`) AS `0_6hrlk`,sum(`a`.`7_28hrlk`) AS `7_28hrlk`,sum(`a`.`28_1thlk`) AS `28_1thlk`,sum(`a`.`1_4thlk`) AS `1_4thlk`,sum(`a`.`5_14thlk`) AS `5_14thlk`,sum(`a`.`15_24thlk`) AS `15_24thlk`,sum(`a`.`25_44thlk`) AS `25_44thlk`,sum(`a`.`45_64thlk`) AS `45_64thlk`,sum(`a`.`65thlk`) AS `65thlk`,sum(`a`.`laki`) AS `laki`,sum(`a`.`hiduplk`) AS `hiduplk`,sum(`a`.`matilk`) AS `matilk`,sum(`a`.`0_6hrpr`) AS `0_6hrpr`,sum(`a`.`7_28hrpr`) AS `7_28hrpr`,sum(`a`.`28_1thpr`) AS `28_1thpr`,sum(`a`.`1_4thpr`) AS `1_4thpr`,sum(`a`.`5_14thpr`) AS `5_14thpr`,sum(`a`.`15_24thpr`) AS `15_24thpr`,sum(`a`.`25_44thpr`) AS `25_44thpr`,sum(`a`.`45_64thpr`) AS `45_64thpr`,sum(`a`.`65thpr`) AS `65thpr`,sum(`a`.`perempuan`) AS `perempuan`,sum(`a`.`hiduppr`) AS `hiduppr`,sum(`a`.`matipr`) AS `matipr` from (`mr_rla_tmp` `a` join `mr_icd` `b` on((`a`.`icd` = `b`.`icd`))) group by `a`.`icd`) */;

/*View structure for view v_mr_pasien */

/*!50001 DROP TABLE IF EXISTS `v_mr_pasien` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pasien` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pasien` AS (select sql_cache (case when (`a`.`poli_inap` = 1) then '/img/poli.png' when (`a`.`poli_inap` = 2) then '/img/inap.png' end) AS `iol`,`a`.`id_pasien` AS `id_pasien`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`e`.`nama_poli_inap` AS `nama_poli_inap`,`a`.`nama` AS `nama`,`a`.`tgl_lahir` AS `tgl_lahir`,`b`.`nama_sex` AS `nama_sex`,`a`.`tgl_kunjungan` AS `tgl_kunjungan`,`a`.`jam_kunjungan` AS `jam_kunjungan`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`a`.`nama_ortu` AS `nama_ortu`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_dokter` AS `id_dokter`,`a`.`id_register` AS `id_register`,concat(`a`.`alamat`,' ',`f`.`nama_desa`,' ',`g`.`nama_kecamatan`,' ',`h`.`nama_kabupaten`) AS `alamat_lengkap`,(case when (length(`a`.`alamat`) > 20) then concat(left(`a`.`alamat`,20),'..') else `a`.`alamat` end) AS `alamat`,(case when (`a`.`alergi` = 1) then 'color:red' else 'color:' end) AS `alergi`,`i`.`nama_dokter` AS `nama_dokter` from ((((((((`mr_pasien` `a` left join `mr_sex` `b` on((`a`.`sex` = `b`.`id_sex`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_poli_inap` `e` on((`a`.`poli_inap` = `e`.`id_poli_inap`))) left join `mr_desa_bps` `f` on((`a`.`id_desa` = `f`.`kode_desa`))) left join `mr_kecamatan_bps` `g` on((`a`.`id_kecamatan` = `g`.`kode_kecamatan`))) left join `mr_kabupaten_bps` `h` on((`a`.`id_kabupaten` = `h`.`kode_kabupaten`))) left join `mr_dokter` `i` on((`a`.`id_dokter` = `i`.`id_dokter`))) order by `a`.`id_pasien` desc) */;

/*View structure for view v_mr_pasien_inap */

/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_inap` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pasien_inap` AS (select (case when (`a`.`poli_inap` = 1) then '/img/poli.png' else '/img/inap.png' end) AS `iol`,`a`.`poli_inap` AS `poli_inap`,`a`.`aktif` AS `aktif`,`a`.`id_pasien` AS `id_pasien`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`e`.`nama_poli_inap` AS `nama_poli_inap`,`a`.`nama` AS `nama`,`a`.`alamat` AS `alamat`,`a`.`tgl_lahir` AS `tgl_lahir`,`b`.`nama_sex` AS `nama_sex`,`a`.`tgl_kunjungan` AS `tgl_kunjungan`,`a`.`jam_kunjungan` AS `jam_kunjungan`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`a`.`nama_ortu` AS `nama_ortu`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_dokter` AS `id_dokter`,`a`.`tgl_inap` AS `tgl_inap`,`a`.`jam_inap` AS `jam_inap`,`a`.`id_register` AS `id_register`,`a`.`kelas` AS `kelas`,`a`.`no_bed` AS `no_bed`,(case when (`a`.`alergi` = 1) then 'color:red' else 'color:' end) AS `alergi` from ((((`mr_pasien` `a` left join `mr_sex` `b` on((`a`.`sex` = `b`.`id_sex`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_poli_inap` `e` on((`a`.`poli_inap` = `e`.`id_poli_inap`))) where ((`a`.`aktif` = 1) and (`a`.`poli_inap` = 2)) order by `a`.`nama`) */;

/*View structure for view v_mr_pasien_inap_total */

/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_inap_total` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_inap_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pasien_inap_total` AS (select count(`a`.`poli_inap`) AS `total`,`a`.`id_unit` AS `id_unit`,`d`.`nama` AS `nama_unit` from ((((`mr_pasien` `a` left join `mr_sex` `b` on((`a`.`sex` = `b`.`id_sex`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_poli_inap` `e` on((`a`.`poli_inap` = `e`.`id_poli_inap`))) where ((`a`.`aktif` = 1) and (`a`.`poli_inap` = 2))) */;

/*View structure for view v_mr_pasien_periksa */

/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_periksa` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_periksa` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pasien_periksa` AS (select (case when (`a`.`iol` = 1) then '/img/poli.png' when (`a`.`iol` = 2) then '/img/inap.png' end) AS `iol`,`a`.`iol` AS `poli_inap`,`b`.`aktif` AS `aktif`,`b`.`id_pasien` AS `id_pasien`,`a`.`tanggal` AS `tanggal`,`a`.`id_register` AS `id_register`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`c`.`nama_poli_inap` AS `nama_poli_inap`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`b`.`tgl_lahir` AS `tgl_lahir`,`d`.`nama_sex` AS `nama_sex`,`a`.`tanggal` AS `tgl_kunjungan`,`a`.`jam` AS `jam_kunjungan`,`e`.`nama_unit` AS `nama_unit`,`f`.`nama` AS `nama_asuransi`,`b`.`nama_ortu` AS `nama_ortu`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_dokter` AS `id_dokter`,`g`.`nama_dokter` AS `nama_dokter`,`a`.`no_periksa` AS `no_periksa`,`a`.`no_pendaftaran` AS `no_pendaftaran`,`b`.`kelas` AS `kelas`,`h`.`diagnosa` AS `diagnosa`,`a`.`id_mr_bl` AS `id_mr_bl`,`a`.`bl` AS `bl`,(case when (`b`.`alergi` = 1) then 'color:red' else 'color:' end) AS `alergi`,(case when (`a`.`jasa` >= 0) then '/img/favorit.png' else '/img/lihat.png' end) AS `val_poli`,(`a`.`tgl_m_t` + interval 280 day) AS `tgl_hpl`,`a`.`tgl_m_t` AS `tgl_m_t`,(case when (`a`.`val_farmasi` = 1) then 'Sudah' else 'Belum' end) AS `val_farmasi_ket`,(case when (`a`.`val_lab` = 1) then 'Sudah' else 'Belum' end) AS `val_lab_ket`,ifnull(`a`.`val_farmasi`,'0') AS `val_farmasi`,ifnull(`a`.`val_lab`,'0') AS `val_lab` from (((((((`mr_bl` `a` join `mr_pasien` `b` on((`a`.`id_register` = `b`.`id_register`))) join `mr_poli_inap` `c` on((`a`.`iol` = `c`.`id_poli_inap`))) join `mr_sex` `d` on((`b`.`sex` = `d`.`id_sex`))) join `mr_unit` `e` on((`a`.`id_unit` = `e`.`id_unit`))) join `mr_asuransi` `f` on((`a`.`id_asuransi` = `f`.`id_asuransi`))) join `mr_dokter` `g` on((`a`.`id_dokter` = `g`.`id_dokter`))) left join `mr_icd` `h` on((`b`.`icd` = `h`.`icd`))) where ((`b`.`aktif` = 1) and (`a`.`iol` = 1) and (not((`b`.`nama` like ''))) and (`a`.`tanggal` > (select (now() - interval 4 day) AS `tanggal`))) order by `b`.`nama`) */;

/*View structure for view v_mr_pasien_pulang */

/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_pulang` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_pulang` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pasien_pulang` AS (select sql_cache `a`.`poli_inap` AS `poli_inap`,`a`.`aktif` AS `aktif`,(case when (`a`.`poli_inap` = 1) then '/img/poli.png' when (`a`.`poli_inap` = 2) then '/img/inap.png' end) AS `iol`,`a`.`id_pasien` AS `id_pasien`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`e`.`nama_poli_inap` AS `nama_poli_inap`,`a`.`nama` AS `nama`,`a`.`alamat` AS `alamat`,`a`.`tgl_lahir` AS `tgl_lahir`,`b`.`nama_sex` AS `nama_sex`,`a`.`tgl_kunjungan` AS `tgl_kunjungan`,`a`.`jam_kunjungan` AS `jam_kunjungan`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`a`.`nama_ortu` AS `nama_ortu`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_dokter` AS `id_dokter`,`a`.`kelas` AS `kelas`,`a`.`no_bed` AS `no_bed`,`a`.`id_register` AS `id_register`,`a`.`tgl_inap` AS `tgl_inap`,`a`.`jam_inap` AS `jam_inap`,`a`.`tgl_pulang` AS `tgl_pulang`,`a`.`jam_pulang` AS `jam_pulang`,`f`.`diagnosa` AS `diagnosa`,`a`.`icd` AS `icd`,floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`a`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((`mr_pasien` `a` left join `mr_sex` `b` on((`a`.`sex` = `b`.`id_sex`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_poli_inap` `e` on((`a`.`poli_inap` = `e`.`id_poli_inap`))) left join `mr_icd` `f` on((`a`.`icd` = `f`.`icd`))) where ((not((`a`.`nama` like ''))) and (`a`.`poli_inap` like 2)) order by `a`.`nama`) */;

/*View structure for view v_mr_pasien_pulang_poli */

/*!50001 DROP TABLE IF EXISTS `v_mr_pasien_pulang_poli` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pasien_pulang_poli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pasien_pulang_poli` AS (select `a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`iol` AS `iol`,`b`.`aktif` AS `aktif`,(case when (`a`.`iol` = 1) then '/img/poli.png' when (`a`.`iol` = 2) then '/img/inap.png' end) AS `poli_inap`,`b`.`id_pasien` AS `id_pasien`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`c`.`nama_poli_inap` AS `nama_poli_inap`,`b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`b`.`tgl_lahir` AS `tgl_lahir`,(case when (`b`.`sex` = 1) then 'LAKI-LAKI' else 'PEREMPUAN' end) AS `nama_sex`,`b`.`tgl_kunjungan` AS `tgl_kunjungan`,`b`.`jam_kunjungan` AS `jam_kunjungan`,`d`.`nama` AS `nama_asuransi`,`b`.`nama_ortu` AS `nama_ortu`,`a`.`id_unit` AS `id_unit`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`id_pengirim` AS `id_pengirim`,`a`.`id_dokter` AS `id_dokter`,`b`.`kelas` AS `kelas`,`b`.`no_bed` AS `no_bed`,`a`.`id_register` AS `id_register`,`b`.`tgl_inap` AS `tgl_inap`,`b`.`jam_inap` AS `jam_inap`,`b`.`tgl_pulang` AS `tgl_pulang`,`b`.`jam_pulang` AS `jam_Pulang`,`e`.`icd` AS `icd`,`e`.`diagnosa` AS `diagnosa`,`a`.`id_mr_bl` AS `id_mr_bl`,`f`.`nama_unit` AS `nama_unit`,`a`.`no_periksa` AS `no_periksa`,`a`.`no_pendaftaran` AS `no_pendaftaran`,floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((`mr_bl` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) left join `mr_poli_inap` `c` on((`a`.`iol` = `c`.`id_poli_inap`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_icd` `e` on((`b`.`icd` = `e`.`icd`))) left join `mr_unit` `f` on((`a`.`id_unit` = `f`.`id_unit`))) where ((not((`b`.`nama` like ''))) and ((`a`.`iol` like 1) or (`a`.`iol` like 2))) order by `b`.`nama`) */;

/*View structure for view v_mr_pekerjaan */

/*!50001 DROP TABLE IF EXISTS `v_mr_pekerjaan` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_pekerjaan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_pekerjaan` AS (select `mr_pekerjaan`.`id_pekerjaan` AS `id_pekerjaan`,`mr_pekerjaan`.`nama` AS `nama` from `mr_pekerjaan`) */;

/*View structure for view v_mr_posting */

/*!50001 DROP TABLE IF EXISTS `v_mr_posting` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_posting` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_posting` AS (select `a`.`id_ksr_trn` AS `id_ksr_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`posting` AS `posting` from `ksr_trn` `a`) */;

/*View structure for view v_mr_resep */

/*!50001 DROP TABLE IF EXISTS `v_mr_resep` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_resep` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_resep` AS (select `a`.`id_pasien` AS `id_pasien`,`b`.`nama_dokter` AS `nama_dokter`,`a`.`nama` AS `nama`,`a`.`alamat` AS `alamat`,`a`.`tgl_kunjungan` AS `tgl_kunjungan`,`a`.`id_catatan_medik` AS `id_catatan_medik`,concat(floor(((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365)),' th, ',floor(((((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365))) * 12)),' bln, ',ceiling(((((((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365) - floor(((to_days(`c`.`tanggal`) - to_days(`a`.`tgl_lahir`)) / 365))) * 12))) * 30)),' hr') AS `umur`,concat(`c`.`no_pendaftaran`,'/',`c`.`no_periksa`) AS `nomor`,(case when (`c`.`bl` = 1) then 'Baru' when (`c`.`bl` = 2) then 'Lama' end) AS `lama`,`c`.`id_mr_bl` AS `id_mr_bl`,`d`.`nama_unit` AS `nama_unit`,`c`.`id_unit` AS `id_unit`,`c`.`id_dokter` AS `id_dokter`,`e`.`nama` AS `nama_asuransi`,`a`.`tgl_lahir` AS `tgl_lahir` from ((((`mr_pasien` `a` join `mr_bl` `c` on((`a`.`id_register` = `c`.`id_register`))) join `mr_dokter` `b` on((`c`.`id_dokter` = `b`.`id_dokter`))) join `mr_unit` `d` on((`c`.`id_unit` = `d`.`id_unit`))) join `mr_asuransi` `e` on((`c`.`id_asuransi` = `e`.`id_asuransi`))) order by `c`.`id_mr_bl` desc) */;

/*View structure for view v_mr_sjr */

/*!50001 DROP TABLE IF EXISTS `v_mr_sjr` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_sjr` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_sjr` AS (select `a`.`id_sjr` AS `id_sjr`,concat(`a`.`id_sjr`,'/RS-RC/',substr(`a`.`tanggal`,6,2),'/',left(`a`.`tanggal`,4)) AS `no_sjr`,`a`.`tanggal` AS `tanggal`,`a`.`id_register` AS `id_register`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`b`.`nama` AS `nama`,`h`.`diagnosa` AS `diagnosa`,concat(`b`.`alamat`,',',`e`.`nama_desa`,',',`f`.`nama_kecamatan`,',',`g`.`nama_kabupaten`) AS `alamat`,`c`.`nama_pengirim` AS `nama_pengirim`,`d`.`nama_dokter` AS `nama_dokter`,`a`.`ket_periksa` AS `ket_periksa`,`a`.`ket_diagnosa` AS `ket_diagnosa`,`a`.`ket_obat` AS `ket_obat`,`a`.`ket_anjuran` AS `ket_anjuran`,`a`.`tgl_pulang` AS `tgl_pulang`,(case when (`b`.`sex` = 1) then 'Laki-Laki' else 'Perempuan' end) AS `sex`,concat(`a`.`umur_th`,' th,',`a`.`umur_bln`,' Bln,',`a`.`umur_hr`,' hr/',`b`.`tgl_lahir`) AS `umur`,`i`.`nama_kondisi_pulang` AS `nama_kondisi_pulang` from ((((((((`mr_sjr` `a` left join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) left join `mr_pengirim` `c` on((`a`.`id_pengirim` = `c`.`id_pengirim`))) left join `mr_dokter` `d` on((`a`.`id_dokter` = `d`.`id_dokter`))) left join `mr_desa_bps` `e` on((`b`.`id_desa` = `e`.`kode_desa`))) left join `mr_kecamatan_bps` `f` on((`b`.`id_kecamatan` = `f`.`kode_kecamatan`))) left join `mr_kabupaten_bps` `g` on((`b`.`id_kabupaten` = `g`.`kode_kabupaten`))) left join `mr_icd` `h` on((`a`.`diagnosa` = `h`.`icd`))) left join `mr_kondisi_pulang` `i` on((`a`.`id_kondisi` = `i`.`id_kondisi_pulang`))) order by `a`.`id_sjr` desc) */;

/*View structure for view v_mr_tt */

/*!50001 DROP TABLE IF EXISTS `v_mr_tt` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_tt` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_tt` AS (select `a`.`id_mr_tt` AS `id_mr_tt`,`a`.`kelas` AS `kelas`,`a`.`no_bed` AS `no_bed`,`a`.`id_unit` AS `id_unit`,(case when (`a`.`id_register` = 123) then 0 else `a`.`id_register` end) AS `id_register`,`b`.`nama` AS `nama`,(case when (`b`.`sex` = 1) then '/img/laki.png' when (`b`.`sex` = 2) then '/img/perempuan.png' else '0' end) AS `nama_sex`,(case when (`a`.`ket_antri` = 1) then '/img/red.png' when (`a`.`ket_antri` = 2) then '/img/yellow.png' when (`a`.`ket_antri` = 3) then '/img/green.png' when (`a`.`ket_antri` = 4) then '/img/bed.png' end) AS `ket_antri`,(case when (`a`.`vk` = 1) then 'color:green' when (`a`.`vk` = 2) then 'color:red' end) AS `warna`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`b`.`tgl_inap` AS `tgl_inap`,`b`.`jam_inap` AS `jam_inap`,`b`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`rencana_pulang` AS `rencana_pulang`,(case when (`b`.`alergi` = 1) then 'color:red' else 'color:' end) AS `alergi`,`b`.`alamat` AS `alamat`,`a`.`urutan` AS `urutan`,`e`.`diagnosa` AS `diagnosa`,`b`.`icd` AS `icd`,floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(curdate()) - to_days(`b`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days`,`b`.`id_asuransi` AS `id_asuransi`,`a`.`ket_antri` AS `id_ket_antri` from ((((`mr_tt` `a` left join `mr_pasien` `b` on((`a`.`id_register` = `b`.`id_register`))) left join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) left join `mr_asuransi` `d` on((`b`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_icd` `e` on((`b`.`icd` = `e`.`icd`))) order by `a`.`id_unit`,`a`.`urutan`) */;

/*View structure for view v_mr_tt_kelas */

/*!50001 DROP TABLE IF EXISTS `v_mr_tt_kelas` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_tt_kelas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_tt_kelas` AS (select distinct `mr_tt`.`kelas` AS `kelas`,`mr_tt`.`id_unit` AS `id_unit`,`mr_tt`.`id_mr_tt` AS `id_mr_tt` from `mr_tt`) */;

/*View structure for view v_mr_tt_kelas_sensus */

/*!50001 DROP TABLE IF EXISTS `v_mr_tt_kelas_sensus` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_tt_kelas_sensus` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_tt_kelas_sensus` AS (select distinct `mr_tt`.`kelas` AS `kelas`,`mr_tt`.`id_unit` AS `id_unit`,`mr_tt`.`id_mr_tt` AS `id_mr_tt` from `mr_tt`) */;

/*View structure for view v_mr_tt_sensus */

/*!50001 DROP TABLE IF EXISTS `v_mr_tt_sensus` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_tt_sensus` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_tt_sensus` AS (select `a`.`id_sensus_ranap` AS `id_sensus_ranap`,`a`.`tanggal` AS `tanggal`,`b`.`nama_unit` AS `nama_unit`,`a`.`tgl_entri` AS `tgl_entri`,`a`.`id_unit` AS `id_unit` from (`mr_sensus_ranap` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`))) order by `a`.`tgl_entri` desc,`b`.`nama_unit`) */;

/*View structure for view v_mr_tt_unit */

/*!50001 DROP TABLE IF EXISTS `v_mr_tt_unit` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_tt_unit` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_tt_unit` AS (select `a`.`no_bed` AS `no_bed`,`a`.`id_unit` AS `id_unit`,`a`.`kelas` AS `kelas`,`a`.`id_mr_tt` AS `id_mr_tt` from `mr_tt` `a`) */;

/*View structure for view v_mr_unit_inap */

/*!50001 DROP TABLE IF EXISTS `v_mr_unit_inap` */;
/*!50001 DROP VIEW IF EXISTS `v_mr_unit_inap` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mr_unit_inap` AS (select `mr_unit`.`id_unit` AS `id_unit`,`mr_unit`.`nama_unit` AS `nama_unit`,`mr_unit`.`kelompok` AS `kelompok` from `mr_unit` where (`mr_unit`.`kelompok` = 2) order by `mr_unit`.`nama_unit`) */;

/*View structure for view v_pekerjaan */

/*!50001 DROP TABLE IF EXISTS `v_pekerjaan` */;
/*!50001 DROP VIEW IF EXISTS `v_pekerjaan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pekerjaan` AS (select `mr_pekerjaan`.`id_pekerjaan` AS `id_pekerjaan`,`mr_pekerjaan`.`nama` AS `nama` from `mr_pekerjaan`) */;

/*View structure for view v_psdi_mst_petugas */

/*!50001 DROP TABLE IF EXISTS `v_psdi_mst_petugas` */;
/*!50001 DROP VIEW IF EXISTS `v_psdi_mst_petugas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_psdi_mst_petugas` AS (select `a`.`id_petugas` AS `id_petugas`,`a`.`nama` AS `nama`,`a`.`nama_user` AS `nama_user`,`a`.`id_unit` AS `id_unit`,`b`.`nama_unit` AS `unit`,`a`.`jabatan` AS `jabatan`,`a`.`id_aplikasi` AS `id_aplikasi` from (`psdi_petugas` `a` left join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`)))) */;

/*View structure for view v_psdi_petugas */

/*!50001 DROP TABLE IF EXISTS `v_psdi_petugas` */;
/*!50001 DROP VIEW IF EXISTS `v_psdi_petugas` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_psdi_petugas` AS (select `a`.`id_petugas` AS `id_petugas`,`a`.`nama` AS `nama`,`a`.`nama_user` AS `nama_user`,`a`.`id_unit` AS `id_unit`,`b`.`nama_unit` AS `unit`,`a`.`jabatan` AS `jabatan`,`a`.`id_aplikasi` AS `id_aplikasi`,`a`.`id_jabatan` AS `id_jabatan` from (`psdi_petugas` `a` join `mr_unit` `b` on((`a`.`id_unit` = `b`.`id_unit`)))) */;

/*View structure for view v_psdi_riw_aplikasi */

/*!50001 DROP TABLE IF EXISTS `v_psdi_riw_aplikasi` */;
/*!50001 DROP VIEW IF EXISTS `v_psdi_riw_aplikasi` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_psdi_riw_aplikasi` AS (select `a`.`id_riw_aplikasi` AS `id_riw_aplikasi`,`a`.`id_petugas` AS `id_petugas`,`a`.`id_aplikasi` AS `id_aplikasi`,`b`.`nama_aplikasi` AS `nama_aplikasi`,(case when (`a`.`transaksi` = 1) then 'Ya' else 'Tidak' end) AS `transaksi`,(case when (`a`.`data` = 1) then 'Ya' else 'Tidak' end) AS `data`,(case when (`a`.`laporan` = 1) then 'Ya' else 'Tidak' end) AS `laporan`,(case when (`a`.`hapus` = 1) then 'Ya' else 'Tidak' end) AS `hapus` from (`psdi_riw_aplikasi` `a` join `psdi_aplikasi` `b` on((`a`.`id_aplikasi` = `b`.`id_aplikasi`)))) */;

/*View structure for view v_ro_cetak_nota */

/*!50001 DROP TABLE IF EXISTS `v_ro_cetak_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_ro_cetak_nota` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ro_cetak_nota` AS (select `a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`id_ro_det_trn` AS `id_ro_det_trn`,`a`.`id_ro_trn` AS `id_ro_trn`,`f`.`nama` AS `nama`,`d`.`nama_unit` AS `nama_unit`,`e`.`nama` AS `nama_asuransi`,`h`.`diagnosa` AS `diagnosa`,`c`.`kelas` AS `kelas`,`b`.`nama` AS `nama_tarif`,`a`.`hasil` AS `hasil`,`a`.`kesan` AS `kesan`,`a`.`tarif` AS `tarif`,`a`.`jumlah` AS `jumlah`,`c`.`tanggal` AS `tanggal`,`c`.`jam` AS `jam`,`i`.`nama_dokter` AS `nama_dokter`,`k`.`nama_dokter` AS `penanggung`,`j`.`nama_pengirim` AS `nama_pengirim`,`f`.`alamat` AS `alamat`,(case when (`f`.`sex` = 1) then 'Laki-laki' else 'Perempuan' end) AS `sex`,(`a`.`tarif` * `a`.`jumlah`) AS `total`,`a`.`kesan_usg` AS `kesan_usg`,`a`.`hepar` AS `hepar`,`a`.`lien` AS `lien`,`a`.`ren` AS `ren`,`a`.`vf` AS `vf`,`a`.`pankreas` AS `pankreas`,`a`.`vu` AS `vu`,floor(((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365) - floor(((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365) - floor(((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365) - floor(((to_days(`c`.`tanggal`) - to_days(`f`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((((((`ro_det_trn` `a` join `ro_tarif` `b` on((`a`.`id_ro_tarif` = `b`.`id_ro_tarif`))) join `ro_trn` `c` on((`a`.`id_ro_trn` = `c`.`id_ro_trn`))) join `mr_unit` `d` on((`c`.`id_unit` = `d`.`id_unit`))) join `mr_asuransi` `e` on((`c`.`id_asuransi` = `e`.`id_asuransi`))) join `mr_pasien` `f` on((`a`.`id_catatan_medik` = `f`.`id_catatan_medik`))) left join `mr_icd` `h` on((`c`.`icd` = `h`.`icd`))) left join `mr_dokter` `i` on((`c`.`id_dokter` = `i`.`id_dokter`))) left join `mr_pengirim` `j` on((`c`.`id_pengirim` = `j`.`id_pengirim`))) left join `mr_dokter` `k` on((`a`.`id_dokter` = `k`.`id_dokter`)))) */;

/*View structure for view v_ro_det_trn */

/*!50001 DROP TABLE IF EXISTS `v_ro_det_trn` */;
/*!50001 DROP VIEW IF EXISTS `v_ro_det_trn` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ro_det_trn` AS (select `b`.`nama` AS `nama`,`a`.`id_ro_det_trn` AS `id_ro_det_trn`,`a`.`id_ro_trn` AS `id_ro_trn`,`a`.`jumlah` AS `jumlah`,`a`.`tarif` AS `tarif`,((`a`.`jumlah` * `a`.`tarif`) - (`a`.`jumlah` * `a`.`diskon`)) AS `total`,`a`.`diskon` AS `diskon` from (`ro_det_trn` `a` join `ro_tarif` `b` on((`a`.`id_ro_tarif` = `b`.`id_ro_tarif`)))) */;

/*View structure for view v_ro_hasil */

/*!50001 DROP TABLE IF EXISTS `v_ro_hasil` */;
/*!50001 DROP VIEW IF EXISTS `v_ro_hasil` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ro_hasil` AS (select `a`.`id_ro_det_trn` AS `id_ro_det_trn`,`a`.`id_ro_trn` AS `id_ro_trn`,`b`.`nama` AS `nama`,`a`.`hasil` AS `hasil`,`a`.`kesan` AS `kesan`,`a`.`hepar` AS `hepar`,`a`.`lien` AS `lien`,`a`.`ren` AS `ren`,`a`.`vf` AS `vf`,`a`.`pankreas` AS `pankreas`,`a`.`vu` AS `vu` from (`ro_det_trn` `a` join `ro_tarif` `b` on((`a`.`id_ro_tarif` = `b`.`id_ro_tarif`)))) */;

/*View structure for view v_ro_nota */

/*!50001 DROP TABLE IF EXISTS `v_ro_nota` */;
/*!50001 DROP VIEW IF EXISTS `v_ro_nota` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ro_nota` AS (select `b`.`nama` AS `nama`,`b`.`alamat` AS `alamat`,`c`.`nama_unit` AS `nama_unit`,`d`.`nama` AS `nama_asuransi`,`a`.`id_ro_trn` AS `id_ro_trn`,`a`.`id_catatan_medik` AS `id_catatan_medik`,`a`.`id_register` AS `id_register`,`a`.`tanggal` AS `tanggal`,`a`.`jam` AS `jam`,`a`.`kelas` AS `kelas`,`a`.`id_asuransi` AS `id_asuransi`,`a`.`biaya` AS `biaya`,`a`.`id_petugas` AS `id_petugas`,`a`.`umur_th` AS `umur_th`,`a`.`umur_bln` AS `umur_bln`,`a`.`umur_hr` AS `umur_hr`,`f`.`nama_dokter` AS `nama_dokter`,`g`.`nama_pengirim` AS `nama_pengirim`,`h`.`nama_rujukan` AS `nama_rujukan`,(case when (`a`.`lunas` = 1) then '/img/lunas.png' else '/img/belum.png' end) AS `ket_lunas`,`e`.`diagnosa` AS `diagnosa`,floor(((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365)) AS `years`,floor(((((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12)) AS `months`,ceiling(((((((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12) - floor(((((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365) - floor(((to_days(`a`.`tanggal`) - to_days(`b`.`tgl_lahir`)) / 365))) * 12))) * 30)) AS `days` from (((((((`ro_trn` `a` join `mr_pasien` `b` on((`a`.`id_catatan_medik` = `b`.`id_catatan_medik`))) join `mr_unit` `c` on((`a`.`id_unit` = `c`.`id_unit`))) join `mr_asuransi` `d` on((`a`.`id_asuransi` = `d`.`id_asuransi`))) left join `mr_icd` `e` on((`a`.`icd` = `e`.`icd`))) join `mr_dokter` `f` on((`a`.`id_dokter` = `f`.`id_dokter`))) join `mr_pengirim` `g` on((`a`.`id_pengirim` = `g`.`id_pengirim`))) join `ro_rujuk` `h` on((`a`.`id_rujuk` = `h`.`id_ro_rujuk`))) order by `a`.`id_ro_trn` desc) */;

/*View structure for view v_ro_total */

/*!50001 DROP TABLE IF EXISTS `v_ro_total` */;
/*!50001 DROP VIEW IF EXISTS `v_ro_total` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ro_total` AS (select sum(((`a`.`tarif` * `a`.`jumlah`) - (`a`.`jumlah` * `a`.`diskon`))) AS `sub_total`,sum((`a`.`tarif` * `a`.`jumlah`)) AS `grand_total`,sum((`a`.`jumlah` * `a`.`diskon`)) AS `diskon`,`a`.`id_ro_trn` AS `id_ro_trn` from `ro_det_trn` `a` group by `a`.`id_ro_trn`) */;

/*View structure for view v_tanggal_jam */

/*!50001 DROP TABLE IF EXISTS `v_tanggal_jam` */;
/*!50001 DROP VIEW IF EXISTS `v_tanggal_jam` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tanggal_jam` AS (select curdate() AS `tanggal`,curtime() AS `jam`) */;

/*View structure for view v_test_tanggal */

/*!50001 DROP TABLE IF EXISTS `v_test_tanggal` */;
/*!50001 DROP VIEW IF EXISTS `v_test_tanggal` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_test_tanggal` AS select `mr_pasien`.`id_pasien` AS `id_pasien`,cast(cast(`mr_pasien`.`tanggal` as date) as char(10) charset utf8) AS `CAST(DATE(tanggal)AS CHAR(10))`,cast(cast(`mr_pasien`.`tanggal` as time) as char(7) charset utf8) AS `CAST(TIME(tanggal) AS CHAR(7))` from `mr_pasien` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
