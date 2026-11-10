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


--data spp
$table->id('id_spp'); 
            $table->integer('tahun');
            $table->integer('nominal');
            $table->string('keterangan', 100)->nullable();
            $table->timestamps();


--data siswa
 $table->char('nisn', 10)->primary(); 
            $table->char('nis', 8);
            $table->string('nama', 50);
            $table->unsignedBigInteger('id_kelas');
            $table->foreign('id_kelas')->references('id_kelas')->on('kelas')->onDelete('cascade');
            $table->text('alamat')->nullable();
            $table->string('no_telp', 15)->nullable();
            $table->unsignedBigInteger('id_spp');
            $table->foreign('id_spp')->references('id_spp')->on('spp')->onDelete('cascade');
            $table->timestamps();


--data kelas
 $table->id('id_kelas'); 
            $table->string('nama_kelas', 15);
            $table->string('kompetensi_keahlian', 50);
            $table->timestamps();

--data petugas
$table->id('id_petugas');
            $table->string('username', 30);
            $table->string('password', 255);
            $table->string('nama_petugas', 50);
            $table->enum('level', ['admin', 'petugas']); 
            $table->timestamps();


--data pembayaran 
$table->id('id_pembayaran'); 
            $table->unsignedBigInteger('id_petugas');
            $table->foreign('id_petugas')->references('id_petugas')->on('petugas')->onDelete('cascade');
            $table->char('nisn', 10);
            $table->foreign('nisn')->references('nisn')->on('siswa')->onDelete('cascade');
            $table->date('tgl_bayar');
            $table->string('bulan_dibayar', 15);
            $table->string('tahun_dibayar', 4); 
            $table->unsignedBigInteger('id_spp');
            $table->foreign('id_spp')->references('id_spp')->on('spp')->onDelete('cascade');  
            $table->integer('jumlah_bayar');
            $table->timestamps();