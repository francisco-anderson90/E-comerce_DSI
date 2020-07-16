-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 14-Jul-2020 às 23:35
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `lojavirtual`
--
CREATE DATABASE IF NOT EXISTS `lojavirtual` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lojavirtual`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE IF NOT EXISTS `arquivo` (
  `codigo` int(11) DEFAULT NULL,
  `arquivo` varchar(40) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `Nome` varchar(30) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `Telefone` bigint(15) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Senha` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`Nome`, `Endereco`, `DataNasc`, `Telefone`, `Sexo`, `Email`, `Senha`) VALUES
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('francisco@gmail.com', '', '1990-04-24', 11995310186, NULL, 'gustavo0056@hotmail.com', 'francisco1'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '0000-00-00', 11995310186, NULL, 'gustavo0056@hotmail.com', ''),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10'),
('gustavo', '', '1996-08-21', 11995310186, NULL, 'gustavo0056@hotmail.com', 'gustavo10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
  `Rua` int(40) DEFAULT NULL,
  `Numero` int(15) DEFAULT NULL,
  `Bairro` int(40) DEFAULT NULL,
  `Cidade` int(40) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL,
  `Pais` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `Nome` varchar(30) DEFAULT NULL,
  `Area` varchar(30) DEFAULT NULL,
  `Id` int(5) DEFAULT NULL,
  `Senha` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `Titulo` varchar(50) DEFAULT NULL,
  `Valor` bigint(20) DEFAULT NULL,
  `Descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_idx` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`usuario_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
