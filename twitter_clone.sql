-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jul-2020 às 23:01
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `twitter_clone`
--
CREATE DATABASE IF NOT EXISTS `twitter_clone` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `twitter_clone`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `tweet` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tweets`
--

INSERT INTO `tweets` (`id`, `id_usuario`, `tweet`, `data`) VALUES
(1, 4, 'Alguma coisa!', '2020-06-27 17:02:39'),
(2, 4, 'Meu tweet.', '2020-06-27 17:03:26'),
(3, 4, 'Meu tweet.22', '2020-06-27 17:05:49'),
(4, 4, 'mais um pra teste', '2020-06-27 17:53:56'),
(5, 5, 'aeeee\r\n', '2020-06-27 21:56:15'),
(6, 5, 'da 10 ai prof', '2020-06-27 21:56:34'),
(7, 4, 'Valeu!', '2020-06-28 01:50:44'),
(8, 4, 'a', '2020-06-28 02:12:33'),
(9, 4, 'a', '2020-06-28 02:12:36'),
(10, 4, '1', '2020-06-28 02:17:55'),
(11, 5, 'a', '2020-06-28 15:44:44'),
(12, 5, 'as', '2020-06-28 15:44:47'),
(13, 5, 'teste', '2020-06-28 15:55:07'),
(14, 5, '', '2020-06-28 15:56:54'),
(15, 5, '333', '2020-07-02 18:51:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Priscila do Nascimento Silva', 'priscila_silva_paixao@hotmail.com', '35763825'),
(2, 'Rogerio', 'rogerio@gmail.com', '123456'),
(3, 'Maria', 'maria@gmail.com', '123456'),
(4, 'jonas', 'j@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Rogério Rodrigues', 'rogerio-lira05@outlook.com', 'cb3bae31bb1c443fbf3db8889055f2fe'),
(6, 'Rogério Rodrigues', 'r@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'joão', 'joão@gmail.com', '83cdcec08fbf90370fcf53bdd56604ff'),
(8, 'Ana', 'ana@gmail.com', 'a25e0e62a4702353f399953579424997'),
(9, 'Pedro', 'pedro@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 'jeniffer', 'jeny@gmail.com', '140f6969d5213fd0ece03148e62e461e'),
(11, 'Solange', 'solange@gmail.com', 'a25e0e62a4702353f399953579424997'),
(12, 'Andressa', 'andy@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(13, 'isaque', 'isaque@gmail.com', '733d7be2196ff70efaf6913fc8bdcabf'),
(14, 'Debora', 'debora@gmail.com', '733d7be2196ff70efaf6913fc8bdcabf'),
(15, 'Marina', 'marina@gmail.com', '550871828cc1bca1c0d7df8db25f80a6'),
(16, 'Elizeth', 'Elizeth@gmail.com', 'ad846fd1138e66a1cacd0fb4b8644671');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_seguidores`
--

DROP TABLE IF EXISTS `usuarios_seguidores`;
CREATE TABLE IF NOT EXISTS `usuarios_seguidores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_usuario_seguindo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios_seguidores`
--

INSERT INTO `usuarios_seguidores` (`id`, `id_usuario`, `id_usuario_seguindo`) VALUES
(9, 5, 2),
(12, 4, 3),
(13, 4, 2),
(14, 5, 4),
(16, 5, 3),
(17, 4, 1),
(18, 4, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
