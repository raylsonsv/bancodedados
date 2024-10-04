-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Out-2024 às 23:02
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolução` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolução`, `CodLivro`, `CodLeitor`) VALUES
(1, '2023-06-14', '2023-06-16', 1, 1),
(2, '2023-06-15', '2023-12-15', 2, 2),
(3, '2024-10-17', '2024-10-25', 2, 3),
(4, '2024-10-29', '2024-12-24', 1, 4),
(5, '2024-10-26', '2024-11-03', 3, 4),
(6, '2024-12-18', '2025-01-08', 4, 5),
(7, '2024-10-01', '2024-11-01', 5, 1),
(8, '2024-10-15', '2024-11-21', 4, 1),
(9, '2024-10-31', '2024-11-30', 1, 2),
(10, '2024-10-07', '2024-10-14', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Santos ', '1987-11-19', '(88)98788-2316', '', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '1987-11-19', '(11)98788-2311', '', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'Filipe Luis', '1987-11-19', '(87)9778-6667', '', 999666777, 'Rua do Mundo', '09', 'Ipojuca', 'Uberlândia'),
(4, 'Felipe Leonardo', '1987-11-19', '(90)97776-2312', '', 2147483647, 'Rua do Cão', '69', 'Felipe', 'Leonardo'),
(5, 'Julia Hernandes', '1987-11-19', '(00)97878-2424', '', 909090, 'Almeria\r\n', '00', 'Chinaland', 'Petroleia/SP'),
(6, 'Bruna de Almeida', '1985-11-19', '(11) 98744-8930', 'brunaalmida@gmail.com', 6456990, 'Rua da Amizade', '184', 'Paratibe', 'Paulista/PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, 'Biblia', 'Abraham Kuyper', 'KJA', 'A Bíblia é uma coleção de textos sagrados que narra a relação entre Deus e a humanidade, abordando a criação, a história de Israel e a vida de Jesus, oferecendo ensinamentos sobre fé e moral.', 2015, 'Religioso', 950),
(2, 'One Piece', 'Eichiro Oda', 'Toei', '\"One Piece\" segue Monkey D. Luffy, um jovem pirata que busca o tesouro \"One Piece\" para se tornar o Rei dos Piratas, enfrentando inimigos e explorando ilhas com sua tripulação.', 1997, 'Ação', 21000),
(3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'HarperCollins Brasil', 'O Pequeno Príncipe fala principalmente sobre a perda da inocência, da imaginação e da fantasia, conforme a vida adulta vai chegando. Mas essa mensagem não fica bem explícita ao longo da leitura, é preciso ler com atenção e compreender nas entrelinhas o qu', 1943, 'Literatura infantil,Fábula,Novela,Ficção especulativa', 96),
(4, 'Extraordinário', 'R. J. Palacio', 'Intrínseca', 'O livro Extraordinário conta a história de Auggie, um menino de 10 anos de idade que nasceu com uma deformidade genética no rosto. Ele passou por quase 30 cirurgias ao longo desses anos, o que dificultava seu ingresso na escola para estudar', 2012, 'Romance,Ficção,Literatura infantil', 320),
(5, 'Romeu e Julieta', 'William Shakespeare', 'Grupo Companhia das Letras', ' o romance entre Romeu Montéquio e Julieta Capuleto. Filhos de famílias inimigas e movidos por uma paixão arrebatadora, eles se casam secretamente, mas acabam traídos pelo destino, em uma trama cheia de reviravoltas que, há séculos, conquista leitores e p', 1597, 'Tragédia', 128);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodLeitor` (`CodLeitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leitores`
--
ALTER TABLE `leitores`
  MODIFY `CodLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `CodLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
