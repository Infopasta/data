TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER sum_sub_cat_categoria\nAFTER INSERT ON sub_categorias\nFOR EACH ROW\n    UPDATE categorias\n    SET cant_sub_cat = cant_sub_cat + 1\n    WHERE nombre_cat = NEW.cat_nombre' 'CREATE DEFINER=`root`@`localhost` TRIGGER restar_sub_cat_categoria\nAFTER DELETE ON sub_categorias\nFOR EACH ROW\n    UPDATE categorias\n    SET cant_sub_cat = cant_sub_cat - 1\n    WHERE nombre_cat = OLD.cat_nombre'
sql_modes=1073741824 1073741824
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
