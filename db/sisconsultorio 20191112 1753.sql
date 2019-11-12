-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.27-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sisconsultorio
--

CREATE DATABASE IF NOT EXISTS sisconsultorio;
USE sisconsultorio;

--
-- Definition of table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pacientes_id` int(11) DEFAULT NULL,
  `medicos_id` int(11) NOT NULL,
  `especialidades_id` int(11) NOT NULL,
  `data_hora_inicio` datetime NOT NULL,
  `data_hora_fim` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_agenda_paciente_idx` (`pacientes_id`) USING BTREE,
  KEY `fk_agenda_medico1_idx` (`medicos_id`) USING BTREE,
  KEY `fk_agenda_especialidade1_idx` (`especialidades_id`) USING BTREE,
  CONSTRAINT `fk_agenda_especialidade1` FOREIGN KEY (`especialidades_id`) REFERENCES `especialidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_medico1` FOREIGN KEY (`medicos_id`) REFERENCES `medicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_paciente` FOREIGN KEY (`pacientes_id`) REFERENCES `pacientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


--
-- Definition of table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `especialidades`
--

/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;


--
-- Definition of table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
CREATE TABLE `medicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `rg` varchar(45) NOT NULL,
  `orgao_emissor_rg` varchar(45) NOT NULL,
  `data_emissao_rg` date NOT NULL,
  `uf_emissor_rg` varchar(2) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `crm` varchar(45) DEFAULT NULL,
  `uf_crm` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicos`
--

/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;


--
-- Definition of table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `orgao_emissor_rg` varchar(45) DEFAULT NULL,
  `data_emissao_rg` date DEFAULT NULL,
  `uf_emissor_rg` varchar(2) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pacientes`
--

/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
