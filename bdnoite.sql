-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/07/2025 às 02:24
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdnoite`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `colaborador`
--

CREATE TABLE `colaborador` (
  `idColaborador` int(11) NOT NULL,
  `diagnostico` varchar(100) DEFAULT NULL,
  `especialidade` varchar(50) NOT NULL,
  `matricula` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `salario` float NOT NULL,
  `funcao` varchar(30) NOT NULL,
  `dataAdimissao` date NOT NULL,
  `registros` varchar(20) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `equipe` varchar(20) NOT NULL,
  `estado` char(1) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `idHospital` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `idEmail` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `colaborador`
--

INSERT INTO `colaborador` (`idColaborador`, `diagnostico`, `especialidade`, `matricula`, `departamento`, `salario`, `funcao`, `dataAdimissao`, `registros`, `cargo`, `equipe`, `estado`, `idPessoa`, `idHospital`, `idEndereco`, `idEmail`, `idTelefone`) VALUES
(1, 'Hipertensão controlada', 'Cardiologia', 1001, 'Clínico Geral', 7800, 'Médico', '2021-03-15', 'REG2021-001', 'Residência', 'Alpha', 'A', 1, 1, 1, 1, 1),
(2, NULL, 'Enfermagem', 1002, 'Pronto Atendimento', 4200.5, 'Enfermeiro', '2022-01-10', 'REG2022-002', 'Assistente', 'Bravo', 'A', 2, 1, 2, 2, 2),
(3, 'Asma leve', 'Pediatria', 1003, 'Pediatria', 8500, 'Médico', '2020-05-20', 'REG2020-003', 'Plantonista', 'Charlie', 'A', 3, 2, 3, 3, 3),
(4, NULL, 'Fisioterapia', 1004, 'Fisioterapia', 3500, 'Fisioterapeuta', '2023-04-01', 'REG2023-004', 'Auxiliar', 'Delta', 'A', 4, 2, 4, 4, 4),
(5, 'Diabetes tipo 2', 'Endocrinologia', 1005, 'Consultório', 9000, 'Médico', '2019-07-11', 'REG2019-005', 'Especialista', 'Echo', 'A', 5, 3, 5, 5, 5),
(6, NULL, 'Psicologia', 1006, 'Saúde Mental', 5100.75, 'Psicólogo', '2021-11-25', 'REG2021-006', 'Clínico', 'Foxtrot', 'A', 6, 3, 6, 6, 6),
(7, 'Enxaqueca crônica', 'Neurologia', 1007, 'Neurologia', 8900, 'Médico', '2018-02-17', 'REG2018-007', 'Chefe', 'Golf', 'A', 7, 4, 7, 7, 7),
(8, NULL, 'Enfermagem', 1008, 'UTI', 4700, 'Técnico', '2020-09-13', 'REG2020-008', 'Técnico', 'Hotel', 'A', 8, 4, 8, 8, 8),
(9, 'Coluna lombar lesionada', 'Ortopedia', 1009, 'Ortopedia', 8200, 'Médico', '2017-06-09', 'REG2017-009', 'Residente', 'India', 'A', 9, 5, 9, 9, 9),
(10, NULL, 'Nutrição', 1010, 'Ambulatório', 4000, 'Nutricionista', '2022-08-21', 'REG2022-010', 'Analista', 'Juliet', 'A', 10, 5, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `formadePagamento` varchar(30) NOT NULL,
  `valorTotal` int(11) NOT NULL,
  `dataCompra` date NOT NULL,
  `numeroDaNotaFiscal` int(11) NOT NULL,
  `horarioCompra` time NOT NULL,
  `idHospital` int(11) NOT NULL,
  `idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `compra`
--

INSERT INTO `compra` (`idCompra`, `formadePagamento`, `valorTotal`, `dataCompra`, `numeroDaNotaFiscal`, `horarioCompra`, `idHospital`, `idFornecedor`) VALUES
(1, 'Cartão de crédito', 12500, '2025-01-15', 10001, '10:30:00', 1, 1),
(2, 'Boleto bancário', 8500, '2025-02-10', 10002, '14:15:00', 2, 2),
(3, 'Transferência', 10400, '2025-03-05', 10003, '09:45:00', 1, 3),
(4, 'Dinheiro', 3000, '2025-03-20', 10004, '11:00:00', 3, 4),
(5, 'Cartão de débito', 7300, '2025-04-02', 10005, '13:25:00', 2, 5),
(6, 'Pix', 9400, '2025-04-15', 10006, '15:10:00', 4, 6),
(7, 'Cartão de crédito', 12000, '2025-05-01', 10007, '08:50:00', 3, 7),
(8, 'Transferência', 6700, '2025-05-20', 10008, '10:10:00', 1, 8),
(9, 'Boleto bancário', 5600, '2025-06-11', 10009, '16:40:00', 5, 9),
(10, 'Pix', 8900, '2025-07-01', 10010, '12:05:00', 4, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `dataConsulta` datetime NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `idExame` int(11) NOT NULL,
  `idHospital` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idPatrimonio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `dataConsulta`, `idPessoa`, `idExame`, `idHospital`, `idTelefone`, `idPatrimonio`) VALUES
(1, '2025-07-01 08:30:00', 1, 1, 1, 1, 1),
(2, '2025-07-02 09:00:00', 2, 2, 1, 2, 2),
(3, '2025-07-03 10:15:00', 3, 3, 2, 3, 3),
(4, '2025-07-04 11:45:00', 4, 1, 2, 4, 4),
(5, '2025-07-05 13:30:00', 5, 2, 3, 5, 5),
(6, '2025-07-06 14:00:00', 6, 4, 3, 6, 6),
(7, '2025-07-07 15:20:00', 7, 5, 4, 7, 7),
(8, '2025-07-08 16:10:00', 8, 6, 4, 8, 8),
(9, '2025-07-09 17:45:00', 9, 3, 5, 9, 9),
(10, '2025-07-10 18:00:00', 10, 4, 5, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `email`
--

CREATE TABLE `email` (
  `idEmail` int(11) NOT NULL,
  `emailPessoa` varchar(50) NOT NULL,
  `emailProfissional` varchar(50) NOT NULL,
  `emailAlternativo` varchar(50) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `email`
--

INSERT INTO `email` (`idEmail`, `emailPessoa`, `emailProfissional`, `emailAlternativo`, `idPessoa`, `idTelefone`) VALUES
(1, 'meuemail@email.com', 'mms@emes.com', 'outromail@mail.com', 1, 1),
(2, 'salamistos@hey', 'queijinho@ra', 'melem@saida', 3, 3),
(3, 'meuemaiewsl@email.com', 'aaewmms@emes.com', 'otromail@mail.com', 2, 2),
(4, 'ozzy@hey', 'blacksa@ra', 'bath@saida', 4, 4),
(5, 'night@hey', 'daty@ra', 'uepa@saida', 5, 5),
(6, 'puea@hey', 'rewsas@ra', 'redrum@saida', 6, 6),
(7, 'casabahia@hey', 'sombrero@ra', 'atomico@saida', 7, 7),
(8, 'espada@hey', 'machadinhanha@ra', 'lanacabeca@saida', 8, 8),
(9, 'tchuim@hey', 'tchuim@ra', 'tchumclain@saida', 9, 9),
(10, 'tabela@hey', 'talari@ra', 'talara@saida', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `rua` varchar(30) NOT NULL,
  `numero` int(20) NOT NULL,
  `cep` int(20) NOT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `idPessoa` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idEmail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `rua`, `numero`, `cep`, `bairro`, `estado`, `cidade`, `status`, `idPessoa`, `idTelefone`, `idEmail`) VALUES
(1, 'rua da esquina', 231, 5434345, 'joquinhas', 'rs', 'porto alegre', 'Ativo', 1, 1, 1),
(2, 'casa da dona lo', 231, 34554, 'jururuviras', 'rs', 'porto alegre', 'Ativo', 2, 2, 2),
(3, 'Avenida Paulista', 1578, 1310200, 'Cerqueira César', 'SP', 'São Paulo', 'Ativo', 3, 3, 3),
(4, 'Rua Augusta', 901, 1305000, 'Consolação', 'SP', 'São Paulo', 'Ativo', 4, 4, 4),
(5, 'Avenida Rio Branco', 200, 20040003, 'Centro', 'RJ', 'Rio de Janeiro', 'Ativo', 5, 5, 5),
(6, 'Rua dos Pinheiros', 550, 5413000, 'Pinheiros', 'SP', 'São Paulo', 'Inativo', 6, 6, 6),
(7, 'Praça da Liberdade', 10, 30140010, 'Savassi', 'MG', 'Belo Horizonte', 'Ativo', 7, 7, 7),
(8, 'Rua da Consolação', 2423, 1227200, 'Consolação', 'SP', 'São Paulo', 'Ativo', 8, 8, 8),
(9, 'Avenida Sete de Setembro', 850, 40060001, 'Centro', 'BA', 'Salvador', 'Inativo', 9, 9, 9),
(10, 'Rua XV de Novembro', 479, 80020310, 'Centro', 'PR', 'Curitiba', 'Ativo', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `idEstoque` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `acondicionamento` varchar(10) NOT NULL,
  `prateleira` int(11) NOT NULL,
  `corredor` int(11) NOT NULL,
  `nomeProduto` varchar(30) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `codigoDeBarra` bigint(20) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `valorUnitario` double NOT NULL,
  `idFornecedor` int(11) NOT NULL,
  `idHospital` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idEmail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`idEstoque`, `quantidade`, `acondicionamento`, `prateleira`, `corredor`, `nomeProduto`, `marca`, `codigoDeBarra`, `categoria`, `valorUnitario`, `idFornecedor`, `idHospital`, `idTelefone`, `idEmail`) VALUES
(1, 50, 'Caixa', 1, 1, 'Luvas Cirúrgicas', 'MediPro', 7891234567890, 'EPI', 25.9, 1, 1, 1, 1),
(2, 30, 'Pacote', 2, 1, 'Máscara N95', 'SafeBreath', 7891234567891, 'EPI', 14.5, 2, 1, 2, 2),
(3, 100, 'Unidade', 3, 2, 'Seringa 10ml', 'BioMed', 7891234567892, 'Descartáveis', 1.8, 3, 2, 3, 3),
(4, 200, 'Caixa', 4, 2, 'Álcool 70%', 'CleanLab', 7891234567893, 'Higiene', 12, 2, 2, 4, 4),
(5, 75, 'Caixa', 5, 3, 'Esparadrapo', 'MedFix', 7891234567894, 'Curativos', 5.2, 1, 3, 5, 5),
(6, 60, 'Pacote', 6, 3, 'Touca Descartável', 'ProSafe', 7891234567895, 'EPI', 3.75, 2, 3, 6, 6),
(7, 40, 'Unidade', 7, 4, 'Termômetro Digital', 'ThermoCheck', 7891234567896, 'Equipamentos', 59.9, 4, 4, 7, 7),
(8, 120, 'Pacote', 8, 4, 'Compressa de Gaze', 'BioCare', 7891234567897, 'Curativos', 8.3, 1, 4, 8, 8),
(9, 90, 'Caixa', 9, 5, 'Luvas de Procedimento', 'HealthMax', 7891234567898, 'EPI', 22.4, 3, 5, 9, 9),
(10, 35, 'Unidade', 10, 5, 'Oxímetro', 'PulseLife', 7891234567899, 'Equipamentos', 85, 4, 5, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `exame`
--

CREATE TABLE `exame` (
  `idExame` int(11) NOT NULL,
  `laudo` varchar(100) NOT NULL,
  `solicitacao` varchar(30) NOT NULL,
  `autorizacao` varchar(30) NOT NULL,
  `modoArmazenamento` varchar(15) NOT NULL,
  `idProcedimento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `exame`
--

INSERT INTO `exame` (`idExame`, `laudo`, `solicitacao`, `autorizacao`, `modoArmazenamento`, `idProcedimento`) VALUES
(1, 'Hemograma completo dentro dos parâmetros normais.', 'REQ20250701', 'AUT20250701', 'Digital', 1),
(2, 'Raio-X torácico revela leve infiltração pulmonar.', 'REQ20250702', 'AUT20250702', 'Digital', 2),
(3, 'Exame de urina indica infecção do trato urinário.', 'REQ20250703', 'AUT20250703', 'Impresso', 3),
(4, 'Tomografia abdominal sem alterações relevantes.', 'REQ20250704', 'AUT20250704', 'Digital', 4),
(5, 'Eletrocardiograma mostra ritmo sinusal normal.', 'REQ20250705', 'AUT20250705', 'Digital', 5),
(6, 'Ultrassonografia renal com sinais de inflamação.', 'REQ20250706', 'AUT20250706', 'Digital', 6),
(7, 'Ressonância magnética do crânio sem alterações.', 'REQ20250707', 'AUT20250707', 'Impresso', 7),
(8, 'Colonoscopia com identificação de pólipos benignos.', 'REQ20250708', 'AUT20250708', 'Digital', 8),
(9, 'Exame de sangue detecta anemia ferropriva.', 'REQ20250709', 'AUT20250709', 'Digital', 9),
(10, 'Teste ergométrico com boa resposta ao esforço.', 'REQ20250710', 'AUT20250710', 'Impresso', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `razaoSocial` varchar(50) NOT NULL,
  `nomeFantasia` varchar(30) NOT NULL,
  `inscricaoEstadual` bigint(20) NOT NULL,
  `idEmail` int(11) NOT NULL,
  `idHospital` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `cnpj`, `razaoSocial`, `nomeFantasia`, `inscricaoEstadual`, `idEmail`, `idHospital`, `idTelefone`, `idEndereco`) VALUES
(1, 12345678000101, 'Distribuidora Médica Vida LTDA', 'VidaMed', 9876543210001, 1, 1, 1, 1),
(2, 23456789000102, 'Comercial Hospitalar São Lucas SA', 'HospLucas', 8765432100002, 2, 1, 2, 2),
(3, 34567890000103, 'Suprimentos Médicos Brasil EIRELI', 'SupraMed', 7654321000003, 3, 2, 3, 3),
(4, 45678901000104, 'Equipamentos Cirúrgicos Alfa ME', 'AlfaCir', 6543210000004, 4, 2, 4, 4),
(5, 56789012000105, 'Laboratório MedTech LTDA', 'MedTech', 5432100000005, 5, 3, 5, 5),
(6, 67890123000106, 'Hospitalar Prime Suprimentos', 'PrimeHosp', 4321000000006, 6, 3, 6, 6),
(7, 78901234000107, 'BioDistribuidora Nacional SA', 'BioNacional', 3210000000007, 7, 4, 7, 7),
(8, 89012345000108, 'Global Medical Solutions LTDA', 'GMS', 2100000000008, 8, 4, 8, 8),
(9, 90123456000109, 'UniHosp Suprimentos Médicos EIRELI', 'UniHosp', 1098765432109, 9, 5, 9, 9),
(10, 12345098760010, 'Cirúrgica Avançada Brasil LTDA', 'CirurgBrasil', 1987654321010, 10, 5, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospital`
--

CREATE TABLE `hospital` (
  `idHospital` int(11) NOT NULL,
  `servicos` varchar(30) NOT NULL,
  `setores` varchar(30) NOT NULL,
  `convenio` varchar(30) NOT NULL,
  `ala` varchar(15) NOT NULL,
  `andar` int(11) NOT NULL,
  `predio` int(11) NOT NULL,
  `sanitario` int(11) NOT NULL,
  `leito` int(11) NOT NULL,
  `recepcao` int(11) NOT NULL,
  `idExame` int(11) NOT NULL,
  `idEmail` int(11) NOT NULL,
  `idPatrimonio` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `idProcedimento` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospital`
--

INSERT INTO `hospital` (`idHospital`, `servicos`, `setores`, `convenio`, `ala`, `andar`, `predio`, `sanitario`, `leito`, `recepcao`, `idExame`, `idEmail`, `idPatrimonio`, `idPessoa`, `idProcedimento`, `idTelefone`, `idFornecedor`) VALUES
(1, 'Pronto Socorro', 'Emergência', 'SUS', 'Ala A', 1, 1, 4, 20, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Internação', 'Clínico', 'Unimed', 'Ala B', 2, 1, 5, 25, 1, 2, 2, 2, 2, 2, 2, 2),
(3, 'UTI Geral', 'Intensiva', 'Particular', 'Ala C', 3, 2, 3, 10, 1, 3, 3, 3, 3, 3, 3, 3),
(4, 'Maternidade', 'Obstetrícia', 'Bradesco Saúde', 'Ala D', 2, 2, 6, 15, 1, 4, 4, 4, 4, 4, 4, 4),
(5, 'Pediatria', 'Infantil', 'SUS', 'Ala E', 1, 3, 4, 12, 1, 5, 5, 5, 5, 5, 5, 5),
(6, 'Oncologia', 'Especializada', 'Amil', 'Ala F', 4, 3, 5, 8, 1, 6, 6, 6, 6, 6, 6, 6),
(7, 'Ortopedia', 'Cirúrgico', 'Unimed', 'Ala G', 3, 4, 4, 10, 1, 7, 7, 7, 7, 7, 7, 7),
(8, 'Neurologia', 'Diagnóstico', 'Particular', 'Ala H', 2, 4, 3, 7, 1, 8, 8, 8, 8, 8, 8, 8),
(9, 'Psiquiatria', 'Mental', 'SUS', 'Ala I', 1, 5, 2, 6, 1, 9, 9, 9, 9, 9, 9, 9),
(10, 'Geral', 'Ambulatório', 'Bradesco Saúde', 'Ala J', 2, 5, 4, 14, 1, 10, 10, 10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `necroterio`
--

CREATE TABLE `necroterio` (
  `idNecroterio` int(11) NOT NULL,
  `causaMorte` varchar(30) DEFAULT NULL,
  `docOficiais` varchar(30) DEFAULT NULL,
  `cadaver` varchar(30) DEFAULT NULL,
  `idPessoa` int(11) NOT NULL,
  `idHospital` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `necroterio`
--

INSERT INTO `necroterio` (`idNecroterio`, `causaMorte`, `docOficiais`, `cadaver`, `idPessoa`, `idHospital`) VALUES
(1, 'Infarto agudo', 'DOC123', 'CAD001', 101, 1),
(2, 'Acidente trânsito', 'DOC124', 'CAD002', 102, 1),
(3, 'AVC hemorrágico', 'DOC125', 'CAD003', 103, 2),
(4, 'Homicídio', 'DOC126', 'CAD004', 104, 2),
(5, 'Câncer terminal', 'DOC127', 'CAD005', 105, 3),
(6, 'Suicídio', 'DOC128', 'CAD006', 106, 3),
(7, 'Afogamento', 'DOC129', 'CAD007', 107, 4),
(8, 'Overdose', 'DOC130', 'CAD008', 108, 4),
(9, 'Desconhecida', 'DOC131', 'CAD009', 109, 5),
(10, 'Queimaduras', 'DOC132', 'CAD010', 110, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `altura` float NOT NULL,
  `temperatura` float NOT NULL,
  `tipoSanguineo` char(3) NOT NULL,
  `medicacaoMedica` varchar(50) DEFAULT NULL,
  `acompanhante` varchar(50) DEFAULT NULL,
  `classificacao` varchar(20) NOT NULL,
  `pressao` varchar(10) NOT NULL,
  `historico` varchar(50) DEFAULT NULL,
  `sintomas` varchar(50) NOT NULL,
  `peso` float NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `idEmail` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idExame` int(11) NOT NULL,
  `idHospital` int(11) NOT NULL,
  `idProcedimento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `altura`, `temperatura`, `tipoSanguineo`, `medicacaoMedica`, `acompanhante`, `classificacao`, `pressao`, `historico`, `sintomas`, `peso`, `idPessoa`, `idEndereco`, `idEmail`, `idTelefone`, `idExame`, `idHospital`, `idProcedimento`) VALUES
(1, 1.75, 36.8, 'O+', 'Dipirona 500mg', 'Maria dos Santos', 'Amarela', '12x8', 'Asma na infância', 'Dor de cabeça', 72.5, 1, 1, 1, 1, 1, 1, 1),
(2, 1.62, 37.5, 'A-', NULL, 'João Lima', 'Verde', '11x7', NULL, 'Tosse seca', 65, 2, 2, 2, 2, 2, 2, 2),
(3, 1.85, 38.2, 'B+', 'Amoxicilina 500mg', NULL, 'Laranja', '13x9', 'Infecção recorrente', 'Febre, calafrios', 80, 3, 3, 3, 3, 3, 3, 3),
(4, 1.68, 39, 'AB', NULL, 'Carlos Mendes', 'Vermelha', '14x10', 'Alergia medicamentosa', 'Falta de ar', 58, 4, 4, 4, 4, 4, 4, 4),
(5, 1.73, 36.4, 'O-', NULL, NULL, 'Verde', '12x8', NULL, 'Dor abdominal', 70.2, 5, 5, 5, 5, 5, 5, 5),
(6, 1.8, 37, 'A+', 'Losartana 50mg', 'Luciana Pires', 'Amarela', '13x8', 'Hipertensão', 'Enjoo', 85, 6, 6, 6, 6, 6, 6, 6),
(7, 1.59, 38.5, 'B-', NULL, 'Marcos Silva', 'Laranja', '15x10', 'Cirurgia recente', 'Dor nas costas', 60.5, 7, 7, 7, 7, 7, 7, 7),
(8, 1.66, 36.9, 'AB+', NULL, NULL, 'Verde', '12x7', 'Gestante', 'Náusea matinal', 68, 8, 8, 8, 8, 8, 8, 8),
(9, 1.7, 37.3, 'O+', 'Ibuprofeno 400mg', 'Pedro Rocha', 'Amarela', '13x9', 'Histórico de enxaqueca', 'Dor ocular', 74.3, 9, 9, 9, 9, 9, 9, 9),
(10, 1.65, 36.6, 'A-', NULL, NULL, 'Verde', '12x8', NULL, 'Mal-estar geral', 63.7, 10, 10, 10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `patrimonio`
--

CREATE TABLE `patrimonio` (
  `idPatrimonio` int(11) NOT NULL,
  `divisao` varchar(20) NOT NULL,
  `instrumento` varchar(20) NOT NULL,
  `acomodacao` varchar(20) NOT NULL,
  `mobiliario` varchar(20) NOT NULL,
  `equipamento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `patrimonio`
--

INSERT INTO `patrimonio` (`idPatrimonio`, `divisao`, `instrumento`, `acomodacao`, `mobiliario`, `equipamento`) VALUES
(1, 'Clínica', 'Estetoscópio', 'Leito', 'Mesa inox', 'Monitor cardíaco'),
(2, 'Cirurgia', 'Bisturi elétrico', 'Maca', 'Bancada cirúrgica', 'Ventilador pulmonar'),
(3, 'UTI', 'Desfibrilador', 'Leito', 'Cadeira reclinável', 'Bomba de infusão'),
(4, 'Emergência', 'Otoscópio', 'Cadeira', 'Armário', 'Oxímetro'),
(5, 'Pediatria', 'Termômetro digital', 'Berço hospitalar', 'Poltrona', 'Aquecedor infantil'),
(6, 'Radiologia', 'Calibrador', 'Maca com trilho', 'Estante de chumbo', 'Aparelho de raio-x'),
(7, 'Laboratório', 'Microscópio', 'Bancada', 'Gaveteiro', 'Centrífuga'),
(8, 'Consultório', 'Esfigmomanômetro', 'Poltrona médica', 'Mesa de exame', 'Negatoscópio'),
(9, 'Fisioterapia', 'Dinamômetro', 'Colchonete', 'Bicicleta ergométric', 'Ultrassom terapêutic'),
(10, 'Odontologia', 'Sugador cirúrgico', 'Cadeira odontológica', 'Armário de aço', 'Autoclave');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL,
  `nomePessoa` varchar(50) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `rg` int(15) NOT NULL,
  `nomeMae` varchar(50) NOT NULL,
  `idade` int(4) NOT NULL,
  `dtNascimento` date NOT NULL,
  `nacionalidade` varchar(20) NOT NULL,
  `naturalidade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `nomePessoa`, `cpf`, `rg`, `nomeMae`, `idade`, `dtNascimento`, `nacionalidade`, `naturalidade`) VALUES
(1, 'Erasmo Carlos', '2147483647', 2132435465, 'Maria Tremenda', 69, '0000-00-00', 'Brasileiro', 'Porto Alegrense'),
(2, 'Roberto Carlos', '2147483647', 2147483647, 'Roberta Carla', 98, '1927-03-25', 'Brasileiro', 'Porto Alegrense'),
(3, 'Falcão Carlos', '2147483647', 245242465, 'Dona Ines', 35, '1990-03-25', 'Brasileiro', 'Porto Alegrense'),
(4, 'Rita Lee', '234142323', 245242465, 'Dona Rita', 38, '1987-09-22', 'Brasileiro', 'Porto Alegrense'),
(5, 'Sandoval Ual', '234143323', 245223465, 'Soraia neves', 42, '1983-07-12', 'Brasileiro', 'Porto Alegrense'),
(6, 'Gandalf', '234142123', 235542465, 'Dona Luz', 90, '1935-03-20', 'Istari', 'Porto Alegrense'),
(7, 'Donatello', '234872323', 274242465, 'Mestre Splinter', 22, '2023-03-11', 'Esgoto', 'Porto Alegrense'),
(8, 'Chaves', '234922323', 24524212, 'Desconhecida', 58, '1967-09-22', 'Mexicano', 'Do Oitense'),
(9, 'Inspetor Bugiganga', '287642323', 245579865, 'Mdme Gadget', 71, '1954-03-02', 'Americano', 'Nova Iorquino'),
(10, 'Christopher Lambert', '234143467', 242133465, 'senhora Lambert', 68, '1957-03-29', 'Americano', 'Nova Iorquino');

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimento`
--

CREATE TABLE `procedimento` (
  `idProcedimento` int(11) NOT NULL,
  `planoDeSaude` char(1) NOT NULL,
  `nomeProcedimento` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `procedimento`
--

INSERT INTO `procedimento` (`idProcedimento`, `planoDeSaude`, `nomeProcedimento`) VALUES
(1, 'p', 'injecao'),
(2, 'p', 'traquio'),
(3, 'p', 'remendar'),
(4, 'p', 'cola quete'),
(5, 'p', 'troca de coracao por bateria'),
(6, 'p', 'braco bionico'),
(7, 'p', 'remocao de dedo extra'),
(8, 'p', 'vida extra'),
(9, 'p', 'desgigantificacao'),
(10, 'p', 'transferencia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `telefone`
--

CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL,
  `telefonePessoal` int(15) NOT NULL,
  `telefoneComercial` int(15) NOT NULL,
  `telefoneResidencial` int(15) NOT NULL,
  `DDD` int(11) NOT NULL,
  `DDI` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `telefone`
--

INSERT INTO `telefone` (`idTelefone`, `telefonePessoal`, `telefoneComercial`, `telefoneResidencial`, `DDD`, `DDI`, `idPessoa`) VALUES
(1, 982323211, 982323211, 2147483647, 0, 0, 1),
(2, 982323211, 982323211, 2147483647, 0, 0, 2),
(3, 982323211, 982323211, 2147483647, 0, 0, 3),
(4, 982323211, 982323211, 2147483647, 0, 0, 4),
(5, 982323211, 982323211, 2147483647, 0, 0, 5),
(6, 982323211, 982323211, 2147483647, 0, 0, 6),
(7, 982323211, 982323211, 2147483647, 0, 0, 7),
(8, 982323211, 982323211, 2147483647, 0, 0, 8),
(9, 982323211, 982323211, 2147483647, 0, 0, 9),
(10, 982323211, 982323211, 2147483647, 0, 0, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idColaborador`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idHospital` (`idHospital`),
  ADD KEY `idEndereco` (`idEndereco`),
  ADD KEY `idEmail` (`idEmail`),
  ADD KEY `idTelefone` (`idTelefone`);

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idHospital` (`idHospital`),
  ADD KEY `idFornecedor` (`idFornecedor`);

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idExame` (`idExame`),
  ADD KEY `idHospital` (`idHospital`),
  ADD KEY `idTelefone` (`idTelefone`),
  ADD KEY `idPatrimonio` (`idPatrimonio`);

--
-- Índices de tabela `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`idEmail`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idTelefone` (`idTelefone`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idTelefone` (`idTelefone`),
  ADD KEY `idEmail` (`idEmail`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idEstoque`),
  ADD KEY `idFornecedor` (`idFornecedor`),
  ADD KEY `idHospital` (`idHospital`),
  ADD KEY `idTelefone` (`idTelefone`),
  ADD KEY `idEmail` (`idEmail`);

--
-- Índices de tabela `exame`
--
ALTER TABLE `exame`
  ADD PRIMARY KEY (`idExame`),
  ADD KEY `idProcedimento` (`idProcedimento`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`),
  ADD KEY `idEmail` (`idEmail`),
  ADD KEY `idHospital` (`idHospital`),
  ADD KEY `idTelefone` (`idTelefone`),
  ADD KEY `idEndereco` (`idEndereco`);

--
-- Índices de tabela `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`idHospital`),
  ADD KEY `idExame` (`idExame`),
  ADD KEY `idEmail` (`idEmail`),
  ADD KEY `idPatrimonio` (`idPatrimonio`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idProcedimento` (`idProcedimento`),
  ADD KEY `idTelefone` (`idTelefone`),
  ADD KEY `idFornecedor` (`idFornecedor`);

--
-- Índices de tabela `necroterio`
--
ALTER TABLE `necroterio`
  ADD PRIMARY KEY (`idNecroterio`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idHospital` (`idHospital`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD KEY `idPessoa` (`idPessoa`),
  ADD KEY `idEndereco` (`idEndereco`),
  ADD KEY `idEmail` (`idEmail`),
  ADD KEY `idTelefone` (`idTelefone`),
  ADD KEY `idExame` (`idExame`),
  ADD KEY `idHospital` (`idHospital`),
  ADD KEY `idProcedimento` (`idProcedimento`);

--
-- Índices de tabela `patrimonio`
--
ALTER TABLE `patrimonio`
  ADD PRIMARY KEY (`idPatrimonio`);

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`);

--
-- Índices de tabela `procedimento`
--
ALTER TABLE `procedimento`
  ADD PRIMARY KEY (`idProcedimento`);

--
-- Índices de tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `idPessoa` (`idPessoa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `idColaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `email`
--
ALTER TABLE `email`
  MODIFY `idEmail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `idEstoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `exame`
--
ALTER TABLE `exame`
  MODIFY `idExame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `hospital`
--
ALTER TABLE `hospital`
  MODIFY `idHospital` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `necroterio`
--
ALTER TABLE `necroterio`
  MODIFY `idNecroterio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `patrimonio`
--
ALTER TABLE `patrimonio`
  MODIFY `idPatrimonio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `procedimento`
--
ALTER TABLE `procedimento`
  MODIFY `idProcedimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  ADD CONSTRAINT `colaborador_ibfk_2` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`),
  ADD CONSTRAINT `colaborador_ibfk_3` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `colaborador_ibfk_4` FOREIGN KEY (`idEmail`) REFERENCES `email` (`idEmail`),
  ADD CONSTRAINT `colaborador_ibfk_5` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`);

--
-- Restrições para tabelas `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`);

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`idExame`) REFERENCES `exame` (`idExame`),
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`),
  ADD CONSTRAINT `consulta_ibfk_4` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`),
  ADD CONSTRAINT `consulta_ibfk_5` FOREIGN KEY (`idPatrimonio`) REFERENCES `patrimonio` (`idPatrimonio`);

--
-- Restrições para tabelas `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  ADD CONSTRAINT `email_ibfk_2` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`),
  ADD CONSTRAINT `endereco_ibfk_3` FOREIGN KEY (`idEmail`) REFERENCES `email` (`idEmail`);

--
-- Restrições para tabelas `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`),
  ADD CONSTRAINT `estoque_ibfk_2` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`),
  ADD CONSTRAINT `estoque_ibfk_3` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`),
  ADD CONSTRAINT `estoque_ibfk_4` FOREIGN KEY (`idEmail`) REFERENCES `email` (`idEmail`);

--
-- Restrições para tabelas `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`idEmail`) REFERENCES `email` (`idEmail`),
  ADD CONSTRAINT `fornecedor_ibfk_2` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`),
  ADD CONSTRAINT `fornecedor_ibfk_3` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`),
  ADD CONSTRAINT `fornecedor_ibfk_4` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`);

--
-- Restrições para tabelas `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`idExame`) REFERENCES `exame` (`idExame`),
  ADD CONSTRAINT `hospital_ibfk_2` FOREIGN KEY (`idEmail`) REFERENCES `email` (`idEmail`),
  ADD CONSTRAINT `hospital_ibfk_3` FOREIGN KEY (`idPatrimonio`) REFERENCES `patrimonio` (`idPatrimonio`),
  ADD CONSTRAINT `hospital_ibfk_4` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  ADD CONSTRAINT `hospital_ibfk_5` FOREIGN KEY (`idProcedimento`) REFERENCES `procedimento` (`idProcedimento`),
  ADD CONSTRAINT `hospital_ibfk_6` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`),
  ADD CONSTRAINT `idFornecedor` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`);

--
-- Restrições para tabelas `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`),
  ADD CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `paciente_ibfk_3` FOREIGN KEY (`idEmail`) REFERENCES `email` (`idEmail`),
  ADD CONSTRAINT `paciente_ibfk_4` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`),
  ADD CONSTRAINT `paciente_ibfk_5` FOREIGN KEY (`idExame`) REFERENCES `exame` (`idExame`),
  ADD CONSTRAINT `paciente_ibfk_6` FOREIGN KEY (`idHospital`) REFERENCES `hospital` (`idHospital`),
  ADD CONSTRAINT `paciente_ibfk_7` FOREIGN KEY (`idProcedimento`) REFERENCES `procedimento` (`idProcedimento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
