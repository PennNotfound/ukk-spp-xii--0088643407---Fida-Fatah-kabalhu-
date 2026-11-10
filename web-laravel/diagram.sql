CREATE DATABASE db_spp_sekolah_xii;

CREATE TABLE spp (
    id_spp INT AUTO_INCREMENT,
    tahun INT,
    nominal INT,
    keterangan VARCHAR(100),
);

CREATE Table siswa (
    nisn CHAR(10),
    nis CHAR(8),
    nama VARCHAR(50),
    id_kelas INT AUTO_INCREMENT,
    alamat TEXT,
    no_telp VARCHAR(15),
    id_spp INT,
);

CREATE TABLE kelas (
    id_kelas INT AUTO_INCREMENT,
    nama_kelas VARCHAR(15),
    kompetensi_keahlian VARCHAR(50),
);

CREATE TABLE petugas (
    id_petugas INT AUTO_INCREMENT,
    username VARCHAR(30),
    password VARCHAR(255),
    nama_petugas VARCHAR(50),
    level ENUM
);

CREATE DATABASE pembayaran (
    id_pembayaran INT,
    id_petugas INT AUTO_INCREMENT,
    nisn CHAR(10),
    tgl_bayar DATE,
    bulan_dibayar VARCHAR(15),
    tahun_dibayar VARCHAR(4),
    id_spp INT,
    jumlah_bayar INT
);