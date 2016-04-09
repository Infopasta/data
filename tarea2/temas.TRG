TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `restar_tema_categoria` AFTER DELETE ON `temas`\n FOR EACH ROW UPDATE categorias\n    SET cant_temas = cant_temas - 1\n    WHERE nombre_cat = OLD.cat_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER `sum_tema_categoria` AFTER INSERT ON `temas`\n FOR EACH ROW UPDATE categorias\n    SET cant_temas = cant_temas + 1\n    WHERE nombre_cat = NEW.cat_nombre'
sql_modes=524288 524288
definers='root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci'
