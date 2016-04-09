TYPE=VIEW
query=(select `cerebron`.`temas`.`nombre_tema` AS `nombre_tema`,sum(`cerebron`.`temas`.`cantidad_coments`) AS `coment_totales` from `cerebron`.`temas` join `cerebron`.`sub_categorias` where (`cerebron`.`temas`.`sub_cat_nombre` = `cerebron`.`sub_categorias`.`nombre_sub_cat`) group by `cerebron`.`temas`.`nombre_tema`)
md5=25de540057ca84b0f07317a2080f39a1
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2016-04-09 21:36:39
create-version=1
source=(select nombre_tema AS nombre_tema,sum(cantidad_coments) AS coment_totales from temas,sub_categorias where (sub_cat_nombre = nombre_sub_cat) group by nombre_tema)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `cerebron`.`temas`.`nombre_tema` AS `nombre_tema`,sum(`cerebron`.`temas`.`cantidad_coments`) AS `coment_totales` from `cerebron`.`temas` join `cerebron`.`sub_categorias` where (`cerebron`.`temas`.`sub_cat_nombre` = `cerebron`.`sub_categorias`.`nombre_sub_cat`) group by `cerebron`.`temas`.`nombre_tema`)
