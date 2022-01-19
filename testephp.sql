-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jan-2022 às 15:24
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testephp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_estoque`
--

CREATE TABLE `tb_estoque` (
  `id_estoque` int(11) NOT NULL,
  `cod_prod` int(8) NOT NULL,
  `loj_prod` int(8) NOT NULL,
  `qtd_prod` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_estoque`
--

INSERT INTO `tb_estoque` (`id_estoque`, `cod_prod`, `loj_prod`, `qtd_prod`) VALUES
(1, 170, 2, 10),
(2, 171, 2, 5),
(3, 172, 1, 15),
(4, 173, 1, 2),
(5, 174, 1, 6),
(6, 175, 2, 3),
(7, 155, 1, 5),
(8, 164, 2, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_lojas`
--

CREATE TABLE `tb_lojas` (
  `loj_prod` int(11) NOT NULL,
  `desc_loj` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_lojas`
--

INSERT INTO `tb_lojas` (`loj_prod`, `desc_loj`) VALUES
(1, 'Loja 1'),
(2, 'Loja 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `cod_prod` int(8) NOT NULL,
  `loj_prod` int(8) NOT NULL,
  `desc_prod` varchar(40) NOT NULL,
  `dt_inclu_prod` date NOT NULL,
  `preco_prod` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`cod_prod`, `loj_prod`, `desc_prod`, `dt_inclu_prod`, `preco_prod`) VALUES
(170, 2, 'LEITE CONDESADO MOCOCA', '2010-12-01', 95.4),
(171, 2, 'LEITE DESNATADO', '2010-12-10', 20.4),
(172, 1, 'LEITE INTEGRAL PARMALAT', '2010-12-11', 10.4),
(173, 1, 'ARROZ INTEGRAL', '2010-12-20', 10.4),
(174, 1, 'ARROZ BRANCO', '2010-12-22', 26.4),
(175, 2, 'LEITE EM PÓ', '2010-12-30', 21.4),
(176, 2, 'LEITE EM PÓ DESNATADO', '2010-12-30', 21.5),
(177, 2, 'REFRIGERANTE', '2010-12-30', 10),
(178, 2, 'SUCO NATURAL', '2010-12-30', 5.5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_estoque`
--
ALTER TABLE `tb_estoque`
  ADD PRIMARY KEY (`id_estoque`);

--
-- Índices para tabela `tb_lojas`
--
ALTER TABLE `tb_lojas`
  ADD PRIMARY KEY (`loj_prod`);

--
-- Índices para tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`cod_prod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_estoque`
--
ALTER TABLE `tb_estoque`
  MODIFY `id_estoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_lojas`
--
ALTER TABLE `tb_lojas`
  MODIFY `loj_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
