CREATE OR REPLACE FUNCTION modificacion_usuario() RETURNS TRIGGER AS $mod_usuario$
BEGIN
	IF(TG_OP = 'UPDATE') THEN
    	UPDATE Usuarios SET ultima_modificacion_usuario = now();
	END IF;
END;
$mod_usuario$ LANGUAGE plpgsql;

CREATE TRIGGER modificacion_usuario AFTER UPDATE ON Usuarios
FOR EACH ROW EXECUTE PROCEDURE modificacion_usuario();