TYPE=VIEW
query=(select `tarea2`.`comentarios`.`tema_nombre` AS `tema_nombre`,`tarea2`.`comentarios`.`autor_coment` AS `autor_coment`,`tarea2`.`comentarios`.`fecha_coment` AS `fecha_coment`,`tarea2`.`categorias`.`nombre_cat` AS `nombre_cat`,`tarea2`.`temas`.`privacidad` AS `privacidad` from ((`tarea2`.`comentarios` join `tarea2`.`categorias`) join `tarea2`.`temas`) where ((`tarea2`.`comentarios`.`tema_nombre` = `tarea2`.`temas`.`nombre_tema`) and (`tarea2`.`categorias`.`nombre_cat` = `tarea2`.`temas`.`cat_nombre`)) order by `tarea2`.`comentarios`.`fecha_coment` desc)
md5=df8ef6a5405a928c221ef71e6cff193c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2015-12-22 15:58:32
create-version=1
source=(select `comentarios`.`tema_nombre` AS `tema_nombre`,`comentarios`.`autor_coment` AS `autor_coment`,`comentarios`.`fecha_coment` AS `fecha_coment`,`categorias`.`nombre_cat` AS `nombre_cat`,`temas`.`privacidad` AS `privacidad` from ((`comentarios` join `categorias`) join `temas`) where ((`comentarios`.`tema_nombre` = `temas`.`nombre_tema`) and (`categorias`.`nombre_cat` = `temas`.`cat_nombre`)) order by `comentarios`.`fecha_coment` desc)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=(select `tarea2`.`comentarios`.`tema_nombre` AS `tema_nombre`,`tarea2`.`comentarios`.`autor_coment` AS `autor_coment`,`tarea2`.`comentarios`.`fecha_coment` AS `fecha_coment`,`tarea2`.`categorias`.`nombre_cat` AS `nombre_cat`,`tarea2`.`temas`.`privacidad` AS `privacidad` from ((`tarea2`.`comentarios` join `tarea2`.`categorias`) join `tarea2`.`temas`) where ((`tarea2`.`comentarios`.`tema_nombre` = `tarea2`.`temas`.`nombre_tema`) and (`tarea2`.`categorias`.`nombre_cat` = `tarea2`.`temas`.`cat_nombre`)) order by `tarea2`.`comentarios`.`fecha_coment` desc)
