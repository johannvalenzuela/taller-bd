CREATE USER usuario PASSWORD 'usuario';

CREATE VIEW reservas_usuario AS SELECT u.rut_usuario,u.nombre_usuario, s.nombre_servicio, r.fecha_inicio_reserva, r.fecha_final_reserva
FROM usuarios u,reservas r,servicio s WHERE u.id_usuario = r.usuario_reserva AND r.servicio_reserva = s.id_servicio;

GRANT SELECT ON reservas_usuario TO usuario;

CREATE VIEW datos_usuario AS SELECT u.rut_usuario,u.nombre_usuario, p.nombre_pais,u.password_usuario , u.registro_usuario
FROM Usuarios u,Paises p,
WHERE u.nacionalidad_usuario = p.id_pais

GRANT SELECT ON datos_usuario TO usuario;
