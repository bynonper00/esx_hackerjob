-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Ağu 2019, 00:43:33
-- Sunucu sürümü: 10.3.16-MariaDB
-- PHP Sürümü: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `essentialmode`
--

-- --------------------------------------------------------


-- --------------------------------------------------------



--
-- Tablo döküm verisi `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('hackerjob', 'Hacker', 1);


-- --------------------------------------------------------


--
-- Tablo döküm verisi `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(88, 'hackerjob', 0, 'hacker', 'hacker', 0, '{}', '{}');

-- --------------------------------------------------------

