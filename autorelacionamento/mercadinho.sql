-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Dez-2020 às 16:49
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mercadinho`
--
CREATE DATABASE IF NOT EXISTS `mercadinho` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mercadinho`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `sobrenome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `nasDia` int(11) DEFAULT NULL,
  `nasMes` int(11) DEFAULT NULL,
  `nasAno` int(11) DEFAULT NULL,
  `telFixo` varchar(255) DEFAULT NULL,
  `telCel` varchar(255) DEFAULT NULL,
  `telRecado` varchar(255) DEFAULT NULL,
  `telOutro` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `codCliente` int(11) NOT NULL,
  `rg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`sobrenome`, `nome`, `cidade`, `cep`, `logradouro`, `rua`, `uf`, `num`, `bairro`, `complemento`, `nasDia`, `nasMes`, `nasAno`, `telFixo`, `telCel`, `telRecado`, `telOutro`, `cpf`, `email`, `codCliente`, `rg`) VALUES
('Mirio', 'Sorocaba', 'Ribeirão Pires', '453-45678', 'av.francisco moteiro', 'av.francisco moteiro', 'SP', '56', 'Santana', 'b', 12, 12, 2000, '1164736789', '11967564567', '11967895678', '1194567890', '65264836472', 'Mari@gmail.com', 1, '57839452'),
('Hix', 'Max', 'Ribeirão Pires', '453-48878', 'av.marcio monteiro', 'av.marcio moteiro', 'SP', '56', 'Santana', 'b', 12, 12, 2000, '1164799789', '11967564567', '11967895678', '1194567890', '65269936472', 'Valder@yahoo.com', 2, '57899452'),
('Hix', 'Carminha', 'Ribeirão Pires', '453-48478', 'av.marcio monteiro', 'av.marcio moteiro', 'SP', '56', 'Santana', 'b', 12, 11, 2000, '1164499789', '11467564567', '11944895678', '1194567890', '65264436472', 'Vanin@yahoo.com', 3, '57899452'),
('Maria', 'Vanessa', 'Ribeirão Pires', '453-47878', 'av.marcio monteiro', 'av.marcio moteiro', 'RJ', '56', 'Santana', 'a', 4, 12, 2000, '1164799789', '11967564567', '11967895678', '1194567890', '65269936472', 'Vinicius@yahoo.com', 4, '57899452'),
('da silva', 'Enzo', 'Ribeirão Pires', '453-58878', 'av.marcio monteiro', 'av.marcio moteiro', 'SP', '56', 'Santana', 'b', 12, 12, 2010, '1164799789', '11967564567', '11967895678', '1194577890', '65277936472', 'Catarine@yahoo.com', 5, '57877452');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `hora` int(11) DEFAULT NULL,
  `minuto` int(11) DEFAULT NULL,
  `precoTotal` decimal(7,2) DEFAULT NULL,
  `codCompra` int(11) NOT NULL,
  `codCliente` int(11) DEFAULT NULL,
  `codFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`dia`, `mes`, `ano`, `hora`, `minuto`, `precoTotal`, `codCompra`, `codCliente`, `codFuncionario`) VALUES
(11, 2, 2020, 11, 50, '50.20', 1, 1, 1),
(11, 2, 2020, 8, 50, '50.20', 2, 3, 2),
(11, 2, 2020, 12, 50, '50.20', 3, 2, 3),
(11, 2, 2020, 14, 50, '50.20', 4, 4, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `tipo` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `codDoc` int(11) NOT NULL,
  `codFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`tipo`, `descricao`, `codDoc`, `codFuncionario`) VALUES
('curriculo', 'curriculo 1', 1, 1),
('atestado médico', 'atestado de falta', 2, 4),
('atestado médico', 'atestado de falta', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornece`
--

CREATE TABLE `fornece` (
  `codFornecedor` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornece`
--

INSERT INTO `fornece` (`codFornecedor`, `codProduto`) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 1),
(1, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `num` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `codFornecedor` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`num`, `cidade`, `cep`, `logradouro`, `bairro`, `complemento`, `rua`, `uf`, `codFornecedor`, `email`, `cnpj`, `tel`, `nome`, `descricao`) VALUES
('25', 'rio de janeiro', '258-25896', NULL, 'acari', NULL, 'rua Bahia', 'RJ', 1, 'npao@gmail.com', '000123450001', '94756-1010', 'Pãozinho', 'comida'),
('25', 'rio de janeiro', '258-25896', NULL, 'acari', NULL, 'rua Bahia', 'RJ', 2, 'npao@gmail.com', '000123450001', '94756-1010', 'Atacado', 'comida'),
('25', 'rio de janeiro', '258-25896', NULL, 'acari', NULL, 'rua Bahia', 'RJ', 3, 'npao@gmail.com', '000123450001', '94756-1010', 'Vila Doce Alimentos', 'comida'),
('25', 'rio de janeiro', '258-25896', NULL, 'acari', NULL, 'rua Bahia', 'RJ', 4, 'npao@gmail.com', '000123450001', '94756-1010', 'Macaron', 'comida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
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
  `codFuncionario` int(11) NOT NULL,
  `nasDia` int(11) DEFAULT NULL,
  `dasMes` int(11) DEFAULT NULL,
  `nasAno` int(11) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `telFixo` varchar(255) DEFAULT NULL,
  `telCel` varchar(255) DEFAULT NULL,
  `telRecado` varchar(255) DEFAULT NULL,
  `telOutro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`email`, `rua`, `logradouro`, `complemento`, `cidade`, `cep`, `num`, `uf`, `bairro`, `rg`, `codFuncionario`, `nasDia`, `dasMes`, `nasAno`, `sobrenome`, `nome`, `cpf`, `telFixo`, `telCel`, `telRecado`, `telOutro`) VALUES
('Mari@gmail.com', 'av.francisco moteiro', 'av.francisco moteiro', 'b', 'Ribeirão Pires', '453-45678', '56', 'SP', 'Santana', '57839452', 1, 12, 12, 2000, 'Felix', 'Maria', '65264836472', '1164736789', '11967564567', '11967895678', '1194567890'),
('Valder@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48878', '56', 'SP', 'Santana', '57899452', 2, 12, 12, 2000, 'Hix', 'valder', '65269936472', '1164799789', '11967564567', '11967895678', '1194567890'),
('Vanin@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-48478', '56', 'SP', 'Santana', '57899452', 3, 12, 11, 2000, 'Hix', 'vanin', '65264436472', '1164499789', '11467564567', '11944895678', '1194567890'),
('Vinicius@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'a', 'Ribeirão Pires', '453-47878', '56', 'RJ', 'Santana', '57899452', 4, 4, 12, 2000, 'Hix', 'vinicius', '65269936472', '1164799789', '11967564567', '11967895678', '1194567890'),
('Catarine@yahoo.com', 'av.marcio moteiro', 'av.marcio monteiro', 'b', 'Ribeirão Pires', '453-58878', '56', 'SP', 'Santana', '57877452', 5, 12, 12, 2010, 'da silva', 'catarina', '65277936472', '1164799789', '11967564567', '11967895678', '1194577890');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `tel` varchar(255) DEFAULT NULL,
  `codMarca` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`tel`, `codMarca`, `nome`, `cnpj`, `email`) VALUES
('94756-1010', 1, 'Puma', '000123450001', 'npao@gmail.com'),
('94756-1010', 2, 'Nestle', '000123450001', 'npao@gmail.com'),
('94756-1010', 3, 'Camil', '000123450001', 'npao@gmail.com'),
('94756-1010', 4, 'Piracanjuba', '000123450001', 'npao@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `nome` varchar(50) DEFAULT NULL,
  `codProduto` int(11) NOT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `qtde` decimal(7,2) DEFAULT NULL,
  `líquido` int(11) DEFAULT NULL,
  `solido` int(11) DEFAULT NULL,
  `perecivel` int(11) DEFAULT NULL,
  `quilograma` int(11) DEFAULT NULL,
  `litro` int(11) DEFAULT NULL,
  `codFornecedor` int(11) DEFAULT NULL,
  `codMarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`nome`, `codProduto`, `preco`, `qtde`, `líquido`, `solido`, `perecivel`, `quilograma`, `litro`, `codFornecedor`, `codMarca`) VALUES
('panetone', 6, '7.00', '0.00', NULL, 1, 1, 1, NULL, 2, 2),
('macarrão', 7, '3.00', '0.00', NULL, 2, NULL, 2, NULL, 1, 2),
('iogurte', 8, '2.00', '1.00', 1, NULL, 2, NULL, 1, 1, 2),
('chocolate', 9, '4.00', '0.00', NULL, 3, NULL, 3, NULL, 2, 1),
('leite', 10, '3.00', '1.00', 2, NULL, 3, NULL, 2, 3, 4),
('pão de forma', 11, '4.00', '0.00', NULL, 4, 4, 4, NULL, 4, 3),
('bolacha', 12, '3.00', '1.00', 2, NULL, 3, NULL, 2, 3, 4),
('carne', 13, '4.00', '0.00', NULL, 4, 4, 4, NULL, 4, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacao`
--

CREATE TABLE `relacao` (
  `qtde` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  `codCompra` int(11) DEFAULT NULL,
  `precoUni` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `relacao`
--

INSERT INTO `relacao` (`qtde`, `codProduto`, `codCompra`, `precoUni`) VALUES
(5, 1, 1, '10.00'),
(1, 2, 1, '20.00'),
(3, 3, 1, '15.00'),
(5, 5, 2, '50.00'),
(4, 4, 3, '50.00'),
(5, 6, 3, '50.00'),
(5, 4, 4, '50.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`codCompra`),
  ADD KEY `codCliente` (`codCliente`),
  ADD KEY `codFuncionario` (`codFuncionario`);

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`codDoc`),
  ADD KEY `codFuncionario` (`codFuncionario`);

--
-- Índices para tabela `fornece`
--
ALTER TABLE `fornece`
  ADD KEY `codFornecedor` (`codFornecedor`),
  ADD KEY `codProduto` (`codProduto`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`codFornecedor`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codFuncionario`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codMarca`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codProduto`),
  ADD KEY `codMarca` (`codMarca`),
  ADD KEY `codFornecedor` (`codFornecedor`);

--
-- Índices para tabela `relacao`
--
ALTER TABLE `relacao`
  ADD KEY `codProduto` (`codProduto`),
  ADD KEY `codCompra` (`codCompra`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `codCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `codDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `codFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`codFuncionario`) REFERENCES `funcionario` (`codFuncionario`);

--
-- Limitadores para a tabela `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`codFuncionario`) REFERENCES `funcionario` (`codFuncionario`);

--
-- Limitadores para a tabela `fornece`
--
ALTER TABLE `fornece`
  ADD CONSTRAINT `fornece_ibfk_1` FOREIGN KEY (`codFornecedor`) REFERENCES `fornecedor` (`codFornecedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fornece_ibfk_2` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`codMarca`) REFERENCES `marca` (`codMarca`),
  ADD CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`codFornecedor`) REFERENCES `fornecedor` (`codFornecedor`);

--
-- Limitadores para a tabela `relacao`
--
ALTER TABLE `relacao`
  ADD CONSTRAINT `relacao_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`),
  ADD CONSTRAINT `relacao_ibfk_2` FOREIGN KEY (`codCompra`) REFERENCES `compra` (`codCompra`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
