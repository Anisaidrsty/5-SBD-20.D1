-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2022 pada 04.47
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.5

START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: "klinik_312010040"
--
CREATE DATABASE IF NOT EXISTS "klinik_312010040" DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE klinik_312010040;

-- --------------------------------------------------------

--
-- Struktur dari tabel "berobat"
--

DROP TABLE IF EXISTS `berobat`;
CREATE TABLE "berobat" ;

--
-- Dumping data untuk tabel "berobat"
--

SET IDENTITY_INSERT "berobat" ON ;
INSERT INTO "berobat" ("id_berobat", "id_pasien", "id_dokter", "tgl_berobat", "keluhan_pasien", "hasil_diagnosa", "penatalaksanaan") VALUES
(2147483641, 12346, 4, '2022-04-21', 'lemas, tidak nafsu makan', 'Tipus', 'Rawat Inap'),
(2147483642, 12349, 5, '2022-04-18', 'tidak bisa mencium bau, panas', 'COVID-19', 'lainnya'),
(2147483643, 12346, 4, '2022-04-17', 'Pendarahan di jantung', 'Gagal Jantung', 'Rujuk'),
(2147483644, 12348, 5, '2022-04-17', 'Panas dalam, mual-mual', 'Asam Lambung', 'Rawat Jalan'),
(2147483645, 12347, 3, '2022-04-13', 'Susah Bab', 'Sembelit', 'Rawat Jalan'),
(2147483646, 12345, 5, '2022-03-21', 'susah tidur', 'insomnia', 'Rawat Jalan');

SET IDENTITY_INSERT "berobat" OFF;

-- --------------------------------------------------------

--
-- Struktur dari tabel "dokter"
--

DROP TABLE IF EXISTS `dokter`;
CREATE TABLE "dokter" ;

--
-- Dumping data untuk tabel "dokter"
--

SET IDENTITY_INSERT "dokter" ON ;
INSERT INTO "dokter" ("id_dokter", "nama_dokter") VALUES
(1, 'Dr.Inekeu'),
(2, 'Dr.Ozol'),
(3, 'Dr.Reza'),
(4, 'Dr.Sasty'),
(5, 'Dr.Ajie');

SET IDENTITY_INSERT "dokter" OFF;

-- --------------------------------------------------------

--
-- Struktur dari tabel "obat"
--

DROP TABLE IF EXISTS `obat`;
CREATE TABLE "obat" ;

--
-- Dumping data untuk tabel "obat"
--

SET IDENTITY_INSERT "obat" ON ;
INSERT INTO "obat" ("id_obat", "nama_obat") VALUES
(11112, 'AbacavirAcarboseACE InhibitorAcebutololAcetazolamide'),
(11113, 'Amylmetacresol'),
(11114, 'Bodrex'),
(11115, 'Cefpodoxime'),
(11116, 'Eplerenone'),
(11117, 'Indinavir');

SET IDENTITY_INSERT "obat" OFF;

-- --------------------------------------------------------

--
-- Struktur dari tabel "pasien"
--

DROP TABLE IF EXISTS `pasien`;
CREATE TABLE "pasien" ;

--
-- Dumping data untuk tabel "pasien"
--

SET IDENTITY_INSERT "pasien" ON ;
INSERT INTO "pasien" ("id_pasien", "nama_pasien", "jenis_kelamin", "umur") VALUES
(12345, 'Maya', 'P', 29),
(12346, 'Mae', 'P', 27),
(12347, 'Awan', 'L', 54),
(12348, 'Wiwi', 'P', 49),
(12349, 'Ani', 'P', 21);

SET IDENTITY_INSERT "pasien" OFF;

-- --------------------------------------------------------

--
-- Struktur dari tabel "resep_obat"
--

DROP TABLE IF EXISTS `resep_obat`;
CREATE TABLE "resep_obat" ;

--
-- Dumping data untuk tabel "resep_obat"
--

SET IDENTITY_INSERT "resep_obat" ON ;
INSERT INTO "resep_obat" ("id_resep", "id_berobat", "id_obat") VALUES
(2144443331, 2147483644, 11114),
(2144443333, 2147483642, 11114),
(2144443334, 2147483643, 11116),
(2144443336, 2147483643, 11117),
(2144443337, 2147483641, 11115),
(2144443338, 2147483645, 11116);

SET IDENTITY_INSERT "resep_obat" OFF;

-- --------------------------------------------------------

--
-- Struktur dari tabel "user"
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE "user" ;

--
-- Dumping data untuk tabel "user"
--

SET IDENTITY_INSERT "user" ON ;
INSERT INTO "user" ("id", "username", "password", "nama_lengkap") VALUES
(99991, 'adminklinik1', '312010040a', 'Anisa Setyawan'),
(99992, 'adminklinik2', '312010040b', 'Irga Ramdhan'),
(99993, 'adminklinik3', '312010040', 'Risma Dika'),
(99994, 'adminklinik4', '312010040e', 'Dina Fauziah'),
(99997, 'adminklinik6', '312010040h', 'Ambar Sari'),
(99999, 'adminklinik10', '312010040j', 'Sopiyatin');

SET IDENTITY_INSERT "user" OFF;
COMMIT;
