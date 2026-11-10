-- Active: 1794273757253@@127.0.0.1@3306@db_spp_sekolah_xii
CREATE DATABASE db_spp_sekolah_xii;

CREATE TABLE spp (
    id_spp INT AUTO_INCREMENT PRIMARY KEY,
    tahun INT,
    nominal INT,
    keterangan VARCHAR(100)
);

CREATE Table siswa (
    nisn CHAR(10),
    nis CHAR(8),
    nama VARCHAR(50),
    id_kelas INT AUTO_INCREMENT PRIMARY KEY,
    alamat TEXT,
    no_telp VARCHAR(15),
    id_spp INT
);

CREATE TABLE kelas (
    id_kelas INT AUTO_INCREMENT PRIMARY KEY,
    nama_kelas VARCHAR(15),
    kompetensi_keahlian VARCHAR(50)
);

CREATE TABLE petugas (
    id_petugas INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30),
    password VARCHAR(255),
    nama_petugas VARCHAR(50),
    level BIGINT
);

CREATE TABLE pembayaran (
    id_pembayaran INT,
    id_petugas INT AUTO_INCREMENT PRIMARY KEY,
    nisn CHAR(10),
    tgl_bayar DATE,
    bulan_dibayar VARCHAR(15),
    tahun_dibayar VARCHAR(4),
    id_spp INT,
    jumlah_bayar INT
);

