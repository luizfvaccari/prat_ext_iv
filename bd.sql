-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 17/12/2024 às 00:56
-- Versão do servidor: 8.0.40-0ubuntu0.24.04.1
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `arvdesk`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ativos`
--

CREATE TABLE `ativos` (
  `id` int NOT NULL,
  `status` smallint NOT NULL,
  `NumInventario` int NOT NULL,
  `tipo` smallint NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `dtaquisicao` date NOT NULL,
  `garantia` int NOT NULL,
  `setor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `idUsuario` int NOT NULL,
  `fabricante` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='tabela para cadastro de inventário';

--
-- Despejando dados para a tabela `ativos`
--

INSERT INTO `ativos` (`id`, `status`, `NumInventario`, `tipo`, `nome`, `dtaquisicao`, `garantia`, `setor`, `idUsuario`, `fabricante`, `modelo`, `descricao`) VALUES
(6, 1, 15, 1, 'Augusta', '0000-00-00', 0, '', 2, 'Acer', 'Aspire5', 'notebook'),
(7, 1, 4, 2, 'hp', '2020-05-05', 2, 'Financeiro', 3, 'Acer', 'Aspire5', 'teste'),
(8, 1, 33, 1, 'Notebook Dell ', '2020-06-02', 5, 'Marketing', 3, 'Dell', 'INSPIRON5', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamados`
--

CREATE TABLE `chamados` (
  `id` int NOT NULL,
  `tipo` int NOT NULL,
  `dtAbertura` date NOT NULL,
  `dtAtender` date DEFAULT NULL,
  `dtConcluir` date DEFAULT NULL,
  `NomeRequerente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `atribuicao` smallint NOT NULL,
  `setor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `idUsuario` int DEFAULT NULL,
  `nomeTecnico` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tpReparo` smallint NOT NULL,
  `numInventario` int NOT NULL,
  `idAtivo` int DEFAULT NULL,
  `status` smallint NOT NULL,
  `prioridade` smallint NOT NULL,
  `descricao` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `solucao` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `chamados`
--

INSERT INTO `chamados` (`id`, `tipo`, `dtAbertura`, `dtAtender`, `dtConcluir`, `NomeRequerente`, `atribuicao`, `setor`, `idUsuario`, `nomeTecnico`, `tpReparo`, `numInventario`, `idAtivo`, `status`, `prioridade`, `descricao`, `solucao`) VALUES
(3, 1, '2020-03-12', '2020-03-14', '1969-12-31', 'Augusta', 1, '', NULL, '', 0, 12, NULL, 0, 1, 'teste', '				'),
(4, 1, '2020-05-05', '2020-05-05', '2020-06-04', 'Augusta', 1, 'Financeiro', NULL, 'George', 0, 48, NULL, 0, 1, 'impressora sem tinta', 'teste'),
(5, 1, '2020-05-13', '2020-05-08', '2024-12-16', 'Josefo', 1, 'Financeiro', NULL, '', 0, 12, NULL, 2, 2, 'teste', '				'),
(6, 1, '2020-06-03', '2020-06-04', '2020-06-06', 'Adair', 2, 'Adm', NULL, NULL, 0, 123, NULL, 1, 3, 'kk', NULL),
(7, 1, '2020-06-02', '2020-06-02', '2024-12-17', 'Gisele', 2, 'Adm', NULL, 'p', 0, 321, NULL, 0, 1, 'll', '				'),
(11, 1, '2020-06-02', '2020-06-03', '2020-06-04', 'Regina', 0, 'Adm', NULL, NULL, 0, 126, NULL, 1, 1, 'teste', NULL),
(12, 1, '2020-06-02', '2020-06-03', '2024-12-17', 'Regina', 2, 'Adm', NULL, 'oioj', 0, 126, NULL, 0, 1, 'teste', '				'),
(13, 2, '2020-06-02', '2020-06-03', '2020-06-04', 'Carla', 2, 'Adm', NULL, NULL, 1, 123, NULL, 1, 3, 'teste', NULL),
(14, 1, '2020-06-03', '2020-06-03', '2024-12-15', 'Carla', 2, 'Adm', NULL, '', 1, 123, NULL, 0, 1, 'teste', '				'),
(15, 2, '2020-06-02', '2020-06-05', '2020-06-08', 'Vera', 2, 'Marketing', NULL, NULL, 2, 321, NULL, 0, 3, 'teste', NULL),
(16, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(17, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(18, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(19, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(20, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(21, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(22, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(23, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(24, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(25, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(26, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(27, 2, '2020-06-01', '2020-06-05', '2020-06-06', 'Vera', 2, 'Marketing', NULL, NULL, 4, 56, NULL, 2, 3, 'teste', NULL),
(28, 2, '2020-06-04', '2020-06-09', '2020-06-11', 'Giulia', 1, 'Gerência', NULL, NULL, 5, 111, NULL, 2, 2, 'teste', NULL),
(29, 2, '2020-06-04', '2020-06-09', '2020-06-11', 'Giulia', 1, 'Gerência', NULL, NULL, 5, 111, NULL, 2, 2, 'teste', NULL),
(30, 1, '2020-06-01', '2020-06-03', '2024-12-16', 'Carla', 1, 'Gerência', NULL, '', 3, 33, NULL, 0, 1, 'teste', '				'),
(31, 1, '2020-06-01', '2020-06-03', '1969-12-31', 'Carla', 1, 'Gerência', NULL, '', 3, 33, NULL, 0, 1, 'teste', '				'),
(32, 1, '2020-06-01', '2020-06-03', '1969-12-31', 'Carla', 1, 'Gerência', NULL, '', 3, 33, NULL, 0, 1, 'teste', '				'),
(33, 2, '2019-12-04', '2020-06-02', '2024-12-15', 'Carla', 2, 'Marketing', NULL, '', 2, 126, NULL, 0, 1, 'teste', '				'),
(34, 1, '2024-12-15', '2024-12-16', '1969-12-31', '0550235', 2, '000', NULL, '', 1, 40450, NULL, 2, 3, '2363636536', '				'),
(35, 1, '2024-12-15', '2024-12-15', '1969-12-31', '0550235', 2, '04045045', NULL, '', 4, 40450, NULL, 0, 2, 'fdsfsdfsd', '				'),
(36, 2, '2024-12-15', '2024-12-15', '2024-12-15', '00000', 1, '002002', NULL, NULL, 1, 20210, NULL, 1, 2, '000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(30) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `login` varchar(30) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `cpf`, `status`, `sexo`, `nome`, `sobrenome`, `cidade`, `login`, `senha`, `email`, `nivel`, `celular`, `descricao`) VALUES
(12, '111.111.111-11', 'habilitado', 'f', 'Administrador', 'Administrador', 'São Paulo', 'admin', '$2y$10$Sa.CFgf0PmjF6zPqZf9ETulWNJkWxukjBkZ6n2ilTt0UMV9/ep.gS', 'admin@teste.com', 'adm', '115449844888', ''),
(13, '222.222.222-22', 'habilitado', 'm', 'Luiz', 'Fernando', 'Joacaba', 'luiz', '$2y$10$Mu4WF/GvKtAXOy/1k2flku0xXqnJIoST/ZtaDBAVDOlwPDQe1Byyi', 'informatica@joacaba.sc.gov.br', 'comum', '49999212999', ''),
(14, '777.777.777-77', 'habilitado', 'm', 'Fernando', 'Luiz', 'Joacaba', 'fernando', '$2y$10$T8qqaLOmt.pW2L6nWqknpeIt8XKLhzw8WzuRmGj6Q7R7jxXPpY1CW', 'teste@teste.com', 'tec', '4999999999', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ativos`
--
ALTER TABLE `ativos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices de tabela `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAtivo` (`idAtivo`),
  ADD KEY `idTecnico` (`nomeTecnico`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ativos`
--
ALTER TABLE `ativos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
