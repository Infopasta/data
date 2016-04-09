TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER restar_coment_tema\nAFTER DELETE ON comentarios\nFOR EACH ROW\n    UPDATE temas\n    SET cantidad_coments = cantidad_coments - 1\n    WHERE nombre_tema = OLD.tema_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER sum_coment_tema\nAFTER INSERT ON comentarios\nFOR EACH ROW\n    UPDATE temas\n    SET cantidad_coments = cantidad_coments + 1\n    WHERE nombre_tema = NEW.tema_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER restar_num_coment_usuarios\nBEFORE DELETE ON comentarios\nFOR EACH ROW\n    UPDATE usuarios\n    SET numero_coments= numero_coments - 1\n    WHERE nombre_user = OLD.autor_coment' 'CREATE DEFINER=`root`@`localhost` TRIGGER `sumar_num_coment_usuarios` BEFORE INSERT ON `comentarios` FOR EACH ROW UPDATE usuarios\n    SET numero_coments= numero_coments + 1\n    WHERE nombre_user = new.autor_coment'
sql_modes=1073741824 1073741824 1073741824 1073741824
definers='root@localhost' 'root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
