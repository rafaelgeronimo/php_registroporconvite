-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.34-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php_registroporconvite
CREATE DATABASE IF NOT EXISTS `php_registroporconvite` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php_registroporconvite`;

-- Copiando estrutura para tabela php_registroporconvite.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT '0',
  `senha` varchar(32) DEFAULT '0',
  `codigo` varchar(32) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php_registroporconvite.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `email`, `senha`, `codigo`) VALUES
	(1, 'rafaelgeronimo@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', '123456'),
	(3, 'mussum@live.com', 'e10adc3949ba59abbe56e057f20f883e', '5211254'),
	(4, 'zacarias@live.com', 'e10adc3949ba59abbe56e057f20f883e', 'a989a884f9d73d5936e5569dd2f68301'),
	(5, 'michael@outlook.com', '202cb962ac59075b964b07152d234b70', '66d3af9425e54c6ed2c6e90f5250793f');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;