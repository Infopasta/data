TYPE=VIEW
query=(select `tarea2`.`temas`.`nombre_tema` AS `nombre_tema`,`tarea2`.`temas`.`autor_tema` AS `autor_tema`,`tarea2`.`temas`.`fecha_tema` AS `fecha_tema`,`tarea2`.`temas`.`privacidad` AS `privacidad` from `tarea2`.`temas` order by `tarea2`.`temas`.`fecha_tema` desc)
md5=4e01bf5758e897fa78a831decf868b1c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2015-12-22 15:58:32
create-version=1
source=(select `temas`.`nombre_tema` AS `nombre_tema`,`temas`.`autor_tema` AS `autor_tema`,`temas`.`fecha_tema` AS `fecha_tema`,`temas`.`privacidad` AS `privacidad` from `temas` order by `temas`.`fecha_tema` desc)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=(select `tarea2`.`temas`.`nombre_tema` AS `nombre_tema`,`tarea2`.`temas`.`autor_tema` AS `autor_tema`,`tarea2`.`temas`.`fecha_tema` AS `fecha_tema`,`tarea2`.`temas`.`privacidad` AS `privacidad` from `tarea2`.`temas` order by `tarea2`.`temas`.`fecha_tema` desc)
