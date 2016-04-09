TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `restar_coment_tema` AFTER DELETE ON `comentarios`\n FOR EACH ROW UPDATE temas\n    SET cantidad_coments = cantidad_coments - 1\n    WHERE nombre_tema = OLD.tema_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER `restar_coment_user` BEFORE DELETE ON `comentarios`\n FOR EACH ROW UPDATE usuarios\n	SET numero_coments = numero_coments - 1\n	WHERE nombre_user = OLD.autor_coment' 'CREATE DEFINER=`root`@`localhost` TRIGGER `sum_coment_tema` AFTER INSERT ON `comentarios`\n FOR EACH ROW UPDATE temas\n    SET cantidad_coments = cantidad_coments + 1\n    WHERE nombre_tema = NEW.tema_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER `sumar_coment_user` BEFORE INSERT ON `comentarios`\n FOR EACH ROW UPDATE usuarios\n	SET numero_coments = numero_coments + 1\n	WHERE nombre_user = NEW.autor_coment'
sql_modes=524288 524288 524288 524288
definers='root@localhost' 'root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
