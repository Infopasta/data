TYPE=VIEW
query=(select `tarea2`.`categorias`.`nombre_cat` AS `nombre_cat`,sum(`tarea2`.`temas`.`cantidad_coments`) AS `coment_totales` from (`tarea2`.`categorias` join `tarea2`.`temas`) where (`tarea2`.`categorias`.`nombre_cat` = `tarea2`.`temas`.`cat_nombre`) group by `tarea2`.`categorias`.`nombre_cat`)
md5=134be39642315c18a5adbbbde6a6e399
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2015-12-22 15:58:32
create-version=1
source=(select `categorias`.`nombre_cat` AS `nombre_cat`,sum(`temas`.`cantidad_coments`) AS `coment_totales` from (`categorias` join `temas`) where (`categorias`.`nombre_cat` = `temas`.`cat_nombre`) group by `categorias`.`nombre_cat`)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=(select `tarea2`.`categorias`.`nombre_cat` AS `nombre_cat`,sum(`tarea2`.`temas`.`cantidad_coments`) AS `coment_totales` from (`tarea2`.`categorias` join `tarea2`.`temas`) where (`tarea2`.`categorias`.`nombre_cat` = `tarea2`.`temas`.`cat_nombre`) group by `tarea2`.`categorias`.`nombre_cat`)
