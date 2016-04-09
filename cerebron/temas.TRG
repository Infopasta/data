TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER sum_tema_sub_categoria\nAFTER INSERT ON temas\nFOR EACH ROW\n    UPDATE sub_categorias\n    SET cant_temas = cant_temas + 1\n    WHERE nombre_sub_cat = NEW.sub_cat_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER restar_tema_sub_categoria\nAFTER DELETE ON temas\nFOR EACH ROW\n    UPDATE sub_categorias\n    SET cant_temas = cant_temas - 1\n    WHERE nombre_sub_cat = OLD.sub_cat_nombre'
sql_modes=1073741824 1073741824
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
