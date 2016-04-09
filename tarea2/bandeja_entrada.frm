TYPE=VIEW
query=(select `tarea2`.`mensajes`.`destinatario` AS `destinatario`,count(`tarea2`.`mensajes`.`destinatario`) AS `mensajes_recibidos`,sum((case when (`tarea2`.`mensajes`.`leido` = 0) then 1 else 0 end)) AS `mensajes_no_leidos` from `tarea2`.`mensajes` group by `tarea2`.`mensajes`.`destinatario`)
md5=ff042c860da145b8044413f0651cd159
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2015-12-22 15:58:32
create-version=1
source=(select `mensajes`.`destinatario` AS `destinatario`,count(`mensajes`.`destinatario`) AS `mensajes_recibidos`,sum((case when (`mensajes`.`leido` = 0) then 1 else 0 end)) AS `mensajes_no_leidos` from `mensajes` group by `mensajes`.`destinatario`)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=(select `tarea2`.`mensajes`.`destinatario` AS `destinatario`,count(`tarea2`.`mensajes`.`destinatario`) AS `mensajes_recibidos`,sum((case when (`tarea2`.`mensajes`.`leido` = 0) then 1 else 0 end)) AS `mensajes_no_leidos` from `tarea2`.`mensajes` group by `tarea2`.`mensajes`.`destinatario`)
