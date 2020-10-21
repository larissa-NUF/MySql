-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Out-2020 às 14:22
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
-- Banco de dados: `jornal_escolar`
--
CREATE DATABASE IF NOT EXISTS `jornal_escolar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal_escolar`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anosala`
--

CREATE TABLE `anosala` (
  `sala` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `codAnoSala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `anosala`
--

INSERT INTO `anosala` (`sala`, `ano`, `codAnoSala`) VALUES
('A', '1', 1),
('B', '1', 2),
('C', '1', 3),
('D', '1', 4),
('E', '1', 5),
('F', '1', 6),
('A', '2', 7),
('B', '2', 8),
('C', '2', 9),
('D', '2', 10),
('A', '3', 11),
('B', '3', 12),
('C', '3', 13),
('D', '3', 14),
('A', '1', 15),
('B', '1', 16),
('C', '1', 17),
('D', '1', 18),
('E', '1', 19),
('F', '1', 20),
('A', '2', 21),
('B', '2', 22),
('C', '2', 23),
('D', '2', 24),
('A', '3', 25),
('B', '3', 26),
('C', '3', 27),
('D', '3', 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Suspense'),
(2, 'Assassinato'),
(3, 'Sequestro'),
(4, 'Furto'),
(5, 'Clima'),
(6, 'História de vida'),
(7, 'Reportagem'),
(8, 'Suspense'),
(9, 'Assassinato'),
(10, 'Sequestro'),
(11, 'Furto'),
(12, 'Clima'),
(13, 'História de vida'),
(14, 'Reportagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

CREATE TABLE `funcao` (
  `funcao` varchar(255) DEFAULT NULL,
  `codFuncao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`funcao`, `codFuncao`) VALUES
('Diretor chefe', 1),
('Editor', 2),
('Revisor', 3),
('Reporter', 4),
('Fotografo', 5),
('Diretor chefe', 6),
('Editor', 7),
('Revisor', 8),
('Reporter', 9),
('Fotografo', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `rm` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `nasDia` int(11) DEFAULT NULL,
  `dasMes` int(11) DEFAULT NULL,
  `nasAno` int(11) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telFixo` varchar(255) DEFAULT NULL,
  `telCel` varchar(255) DEFAULT NULL,
  `telRecado` varchar(255) DEFAULT NULL,
  `telOutro` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `codFuncionario` int(11) NOT NULL,
  `codAnoSala` int(11) DEFAULT NULL,
  `codFuncao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`rm`, `logradouro`, `complemento`, `cidade`, `cep`, `num`, `uf`, `bairro`, `rua`, `nasDia`, `dasMes`, `nasAno`, `cpf`, `email`, `sobrenome`, `nome`, `telFixo`, `telCel`, `telRecado`, `telOutro`, `rg`, `codFuncionario`, `codAnoSala`, `codFuncao`) VALUES
('45769', 'av.francisco moteiro', 'b', 'Ribeirão Pires', '453-45678', '56', 'SP', 'Santana', 'av.francisco moteiro', 12, 12, 2000, '65264836472', 'Mari@gmail.com', 'Felix', 'Maria', '1164736789', '11967564567', '11967895678', '1194567890', '57839452', 1, 1, NULL),
('45769', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48878', '56', 'SP', 'Santana', 'av.marcio moteiro', 12, 12, 2000, '65269936472', 'Valder@yahoo.com', 'Hix', 'valder', '1164799789', '11967564567', '11967895678', '1194567890', '57899452', 2, 2, NULL),
('44469', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48478', '56', 'SP', 'Santana', 'av.marcio moteiro', 12, 11, 2000, '65264436472', 'Vanin@yahoo.com', 'Hix', 'vanin', '1164499789', '11467564567', '11944895678', '1194567890', '57899452', 3, 3, NULL),
('45769', 'av.marcio monteiro', 'a', 'Ribeirão Pires', '453-47878', '56', 'RJ', 'Santana', 'av.marcio moteiro', 4, 12, 2000, '65269936472', 'Vinicius@yahoo.com', 'Hix', 'vinicius', '1164799789', '11967564567', '11967895678', '1194567890', '57899452', 4, 6, NULL),
('45777', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-58878', '56', 'SP', 'Santana', 'av.marcio moteiro', 12, 12, 2010, '65277936472', 'Catarine@yahoo.com', 'da silva', 'catarina', '1164799789', '11967564567', '11967895678', '1194577890', '57877452', 5, 8, NULL),
('45769', 'av.francisco moteiro', 'b', 'Ribeirão Pires', '453-45678', '56', 'SP', 'Santana', 'av.francisco moteiro', 12, 12, 2000, '65264836472', 'Mari@gmail.com', 'Felix', 'Maria', '1164736789', '11967564567', '11967895678', '1194567890', '57839452', 6, 1, NULL),
('45769', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48878', '56', 'SP', 'Santana', 'av.marcio moteiro', 12, 12, 2000, '65269936472', 'Valder@yahoo.com', 'Hix', 'valder', '1164799789', '11967564567', '11967895678', '1194567890', '57899452', 7, 2, NULL),
('44469', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48478', '56', 'SP', 'Santana', 'av.marcio moteiro', 12, 11, 2000, '65264436472', 'Vanin@yahoo.com', 'Hix', 'vanin', '1164499789', '11467564567', '11944895678', '1194567890', '57899452', 8, 3, NULL),
('45769', 'av.marcio monteiro', 'a', 'Ribeirão Pires', '453-47878', '56', 'RJ', 'Santana', 'av.marcio moteiro', 4, 12, 2000, '65269936472', 'Vinicius@yahoo.com', 'Hix', 'vinicius', '1164799789', '11967564567', '11967895678', '1194567890', '57899452', 9, 6, NULL),
('45777', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-58878', '56', 'SP', 'Santana', 'av.marcio moteiro', 12, 12, 2010, '65277936472', 'Catarine@yahoo.com', 'da silva', 'catarina', '1164799789', '11967564567', '11967895678', '1194577890', '57877452', 10, 8, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `impressao`
--

CREATE TABLE `impressao` (
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `codImpressao` int(11) NOT NULL,
  `qtde` int(11) DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `codedicao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `impressao`
--

INSERT INTO `impressao` (`mes`, `dia`, `ano`, `codImpressao`, `qtde`, `lote`, `codedicao`) VALUES
(1, 1, 2020, 1, 10, '1', 1),
(12, 1, 2020, 2, 15, '2', 1),
(2, 2, 2020, 3, 40, '3', 2),
(22, 3, 2020, 4, 50, '4', 3),
(2, 4, 2020, 5, 10, '5', 4),
(8, 5, 2020, 6, 20, '6', 5),
(1, 6, 2020, 7, 23, '4', 6),
(5, 7, 2020, 8, 20, '8', 7),
(1, 1, 2020, 9, 10, '1', 1),
(12, 1, 2020, 10, 15, '2', 1),
(2, 2, 2020, 11, 40, '3', 2),
(22, 3, 2020, 12, 50, '4', 3),
(2, 4, 2020, 13, 10, '5', 4),
(8, 5, 2020, 14, 20, '6', 5),
(1, 6, 2020, 15, 23, '4', 6),
(5, 7, 2020, 16, 20, '8', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jornal`
--

CREATE TABLE `jornal` (
  `dia` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `edicao` varchar(255) DEFAULT NULL,
  `codedicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jornal`
--

INSERT INTO `jornal` (`dia`, `ano`, `mes`, `nome`, `edicao`, `codedicao`) VALUES
(1, 2020, 1, 'jornal pam', '1', 1),
(2, 2020, 2, 'jornal pam', '2', 2),
(22, 2020, 3, 'jornal pam', '3', 3),
(2, 2020, 4, 'jornal pam-edição especial', '3,5', 4),
(8, 2020, 5, 'jornal pam', '4', 5),
(1, 2020, 6, 'jornal pam', '5', 6),
(5, 2020, 7, 'jornal pam-fique em casa', '6', 7),
(1, 2020, 1, 'jornal pam', '1', 8),
(2, 2020, 2, 'jornal pam', '2', 9),
(22, 2020, 3, 'jornal pam', '3', 10),
(2, 2020, 4, 'jornal pam-edição especial', '3,5', 11),
(8, 2020, 5, 'jornal pam', '4', 12),
(1, 2020, 6, 'jornal pam', '5', 13),
(5, 2020, 7, 'jornal pam-fique em casa', '6', 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `codMateria` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codedicao` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`codMateria`, `titulo`, `texto`, `ano`, `mes`, `dia`, `codRedator`, `codedicao`, `codCategoria`) VALUES
(1, '8 habilidades e competências que valorizam o currículo', 'Habilidades e competências mais valorizadas\r\n1. Comunicação\r\nDesenvoltura, coerência entre o discurso e a ação, objetividade, capacidade de transmitir ideias, bom português, capacidade de escutar.', 2020, 1, 1, 1, 1, 1),
(2, 'Experiência como freelancer', 'Essa é uma habilidade para currículo que consegue condensar várias das soft skills mencionadas até aqui. Isso porque, normalmente, freelancers têm controle completo sobre suas atividades.', 2020, 1, 1, 2, 2, 2),
(3, 'Autoconfiança', 'Não poderíamos deixar de falar da autoconfiança, não é mesmo? Não por acaso, um profissional que se apresenta seguro das próprias habilidades profissionais e como uma pessoa capaz de dar conta do recado é muito mais bem-sucedido do que aqueles que não o f', 2020, 2, 2, 3, 3, 3),
(4, 'Capacidade de análise', 'Analisar, comparar, dar valor aos fatos, sintetizar, organizar as ideias, considerar as alternativas e suas possíveis consequências sem uma supervisão direta também é uma super-habilidade para se ter.', 2020, 3, 22, 4, 4, 4),
(5, 'O QUE É OU PODE SER CONSIDERADO UMA PESSOA PROATIVA', 'https://www.ibccoaching.com.br/portal/o-que-e-ou-pode-ser-considerado-uma-pessoa-proativa/', 2020, 4, 2, 5, 5, 5),
(6, 'Comentários ao tema de redação do TRF-4: “Proatividade: uma felicidade prometida”', 'https://www.estrategiaconcursos.com.br/blog/comentarios-ao-tema-de-redacao-do-trf-4-proatividade-uma-felicidade-prometida/', 2020, 5, 8, 5, 6, 6),
(7, '2 DISCOS RIGIDOS UM SISTEMA OPERACIONAL EM CADA UM', 'https://www.vivaolinux.com.br/topico/Suporte/2-discos-rigidos-um-sistema-operacional-em-cada-um', 2020, 6, 1, 1, 7, 7),
(8, 'JavaScript', 'https://developer.mozilla.org/pt-BR/docs/Web/JavaScript', 2020, 7, 5, 2, 2, 7),
(9, '8 habilidades e competências que valorizam o currículo', 'Habilidades e competências mais valorizadas\r\n1. Comunicação\r\nDesenvoltura, coerência entre o discurso e a ação, objetividade, capacidade de transmitir ideias, bom português, capacidade de escutar.', 2020, 1, 1, 1, 1, 1),
(10, 'Experiência como freelancer', 'Essa é uma habilidade para currículo que consegue condensar várias das soft skills mencionadas até aqui. Isso porque, normalmente, freelancers têm controle completo sobre suas atividades.', 2020, 1, 1, 2, 2, 2),
(11, 'Autoconfiança', 'Não poderíamos deixar de falar da autoconfiança, não é mesmo? Não por acaso, um profissional que se apresenta seguro das próprias habilidades profissionais e como uma pessoa capaz de dar conta do recado é muito mais bem-sucedido do que aqueles que não o f', 2020, 2, 2, 3, 3, 3),
(12, 'Capacidade de análise', 'Analisar, comparar, dar valor aos fatos, sintetizar, organizar as ideias, considerar as alternativas e suas possíveis consequências sem uma supervisão direta também é uma super-habilidade para se ter.', 2020, 3, 22, 4, 4, 4),
(13, 'O QUE É OU PODE SER CONSIDERADO UMA PESSOA PROATIVA', 'https://www.ibccoaching.com.br/portal/o-que-e-ou-pode-ser-considerado-uma-pessoa-proativa/', 2020, 4, 2, 5, 5, 5),
(14, 'Comentários ao tema de redação do TRF-4: “Proatividade: uma felicidade prometida”', 'https://www.estrategiaconcursos.com.br/blog/comentarios-ao-tema-de-redacao-do-trf-4-proatividade-uma-felicidade-prometida/', 2020, 5, 8, 5, 6, 6),
(15, '2 DISCOS RIGIDOS UM SISTEMA OPERACIONAL EM CADA UM', 'https://www.vivaolinux.com.br/topico/Suporte/2-discos-rigidos-um-sistema-operacional-em-cada-um', 2020, 6, 1, 1, 7, 7),
(16, 'JavaScript', 'https://developer.mozilla.org/pt-BR/docs/Web/JavaScript', 2020, 7, 5, 2, 2, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `email` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `rm` varchar(255) DEFAULT NULL,
  `codRedator` int(11) NOT NULL,
  `nasDia` int(11) DEFAULT NULL,
  `dasMes` int(11) DEFAULT NULL,
  `nasAno` int(11) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `telFixo` varchar(255) DEFAULT NULL,
  `telCel` varchar(255) DEFAULT NULL,
  `telRecado` varchar(255) DEFAULT NULL,
  `telOutro` varchar(255) DEFAULT NULL,
  `codAnoSala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`email`, `rua`, `logradouro`, `complemento`, `cidade`, `cep`, `num`, `uf`, `bairro`, `rg`, `rm`, `codRedator`, `nasDia`, `dasMes`, `nasAno`, `sobrenome`, `nome`, `cpf`, `telFixo`, `telCel`, `telRecado`, `telOutro`, `codAnoSala`) VALUES
('Mari@gmail.com', 'av.francisco moteiro', 'av.francisco moteiro', 'b', 'Ribeirão Pires', '453-45678', '56', 'SP', 'Santana', '57839452', '45769', 1, 12, 12, 2000, 'Felix', 'Maria', '65264836472', '1164736789', '11967564567', '11967895678', '1194567890', 1),
('Valder@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48878', '56', 'SP', 'Santana', '57899452', '45769', 2, 12, 12, 2000, 'Hix', 'valder', '65269936472', '1164799789', '11967564567', '11967895678', '1194567890', 2),
('Vanin@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48478', '56', 'SP', 'Santana', '57899452', '44469', 3, 12, 11, 2000, 'Hix', 'vanin', '65264436472', '1164499789', '11467564567', '11944895678', '1194567890', 3),
('Vinicius@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'a', 'Ribeirão Pires', '453-47878', '56', 'RJ', 'Santana', '57899452', '45769', 4, 4, 12, 2000, 'Hix', 'vinicius', '65269936472', '1164799789', '11967564567', '11967895678', '1194567890', 6),
('Catarine@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-58878', '56', 'SP', 'Santana', '57877452', '45777', 5, 12, 12, 2010, 'da silva', 'catarina', '65277936472', '1164799789', '11967564567', '11967895678', '1194577890', 8),
('Mari@gmail.com', 'av.francisco moteiro', 'av.francisco moteiro', 'b', 'Ribeirão Pires', '453-45678', '56', 'SP', 'Santana', '57839452', '45769', 6, 12, 12, 2000, 'Felix', 'Maria', '65264836472', '1164736789', '11967564567', '11967895678', '1194567890', 1),
('Valder@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48878', '56', 'SP', 'Santana', '57899452', '45769', 7, 12, 12, 2000, 'Hix', 'valder', '65269936472', '1164799789', '11967564567', '11967895678', '1194567890', 2),
('Vanin@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48478', '56', 'SP', 'Santana', '57899452', '44469', 8, 12, 11, 2000, 'Hix', 'vanin', '65264436472', '1164499789', '11467564567', '11944895678', '1194567890', 3),
('Vinicius@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'a', 'Ribeirão Pires', '453-47878', '56', 'RJ', 'Santana', '57899452', '45769', 9, 4, 12, 2000, 'Hix', 'vinicius', '65269936472', '1164799789', '11967564567', '11967895678', '1194567890', 6),
('Catarine@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-58878', '56', 'SP', 'Santana', '57877452', '45777', 10, 12, 12, 2010, 'da silva', 'catarina', '65277936472', '1164799789', '11967564567', '11967895678', '1194577890', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalha`
--

CREATE TABLE `trabalha` (
  `codFuncionario` int(11) DEFAULT NULL,
  `codedicao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `trabalha`
--

INSERT INTO `trabalha` (`codFuncionario`, `codedicao`) VALUES
(1, 1),
(5, 2),
(1, 1),
(1, 2),
(3, 3),
(1, 5),
(1, 2),
(6, 2),
(2, 3),
(2, 4),
(4, 2),
(5, 5),
(5, 6),
(5, 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anosala`
--
ALTER TABLE `anosala`
  ADD PRIMARY KEY (`codAnoSala`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`codFuncao`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codFuncionario`),
  ADD KEY `codAnoSala` (`codAnoSala`),
  ADD KEY `codFuncao` (`codFuncao`);

--
-- Índices para tabela `impressao`
--
ALTER TABLE `impressao`
  ADD PRIMARY KEY (`codImpressao`),
  ADD KEY `codedicao` (`codedicao`);

--
-- Índices para tabela `jornal`
--
ALTER TABLE `jornal`
  ADD PRIMARY KEY (`codedicao`);

--
-- Índices para tabela `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`codMateria`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `codedicao` (`codedicao`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codAnoSala` (`codAnoSala`);

--
-- Índices para tabela `trabalha`
--
ALTER TABLE `trabalha`
  ADD KEY `codFuncionario` (`codFuncionario`),
  ADD KEY `codedicao` (`codedicao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anosala`
--
ALTER TABLE `anosala`
  MODIFY `codAnoSala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `codFuncao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `impressao`
--
ALTER TABLE `impressao`
  MODIFY `codImpressao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `jornal`
--
ALTER TABLE `jornal`
  MODIFY `codedicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `materia`
--
ALTER TABLE `materia`
  MODIFY `codMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`codAnoSala`) REFERENCES `anosala` (`codAnoSala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`codFuncao`) REFERENCES `funcao` (`codFuncao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `impressao`
--
ALTER TABLE `impressao`
  ADD CONSTRAINT `impressao_ibfk_1` FOREIGN KEY (`codedicao`) REFERENCES `jornal` (`codedicao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_3` FOREIGN KEY (`codedicao`) REFERENCES `jornal` (`codedicao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codAnoSala`) REFERENCES `anosala` (`codAnoSala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `trabalha`
--
ALTER TABLE `trabalha`
  ADD CONSTRAINT `trabalha_ibfk_1` FOREIGN KEY (`codFuncionario`) REFERENCES `funcionario` (`codFuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trabalha_ibfk_2` FOREIGN KEY (`codedicao`) REFERENCES `jornal` (`codedicao`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
