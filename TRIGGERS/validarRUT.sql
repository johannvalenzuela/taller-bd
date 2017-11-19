CREATE FUNCTION modulo11 (NUMERIC)
RETURNS CHAR AS
$$
DECLARE
sumar INT := 0;
factor INT := 2;
aux INT := $1;
digito INT;
div INT;

BEGIN
WHILE(aux > 0) LOOP
digito := aux % 10;
IF(factor = 8) THEN
factor := 2;
END IF;

sumar := sumar + (digito * factor);
aux := aux / 10;
factor := factor + 1;
END LOOP;

div := 11 - (sumar % 11);

IF(div = 10) THEN
RETURN 'K';
ELSIF(div = 11) THEN
RETURN 0;
ELSE
RETURN div;
END IF;

END;
$$
LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION validarRUT(rutIngresado VARCHAR(10)) 
RETURNS BOOLEAN AS 
$$
DECLARE
	resultado BOOLEAN := FALSE;
	verificador1 CHAR;
	verificador2 CHAR;
	rutaux VARCHAR(8);
	rutNum INTEGER;
	tamaño INTEGER;
BEGIN
	tamaño := char_length(rutIngresado); 
	
	rutAux := substring(rutIngresado from 0 for tamaño-1); 
	rutNum := CAST(rutAux AS INTEGER);
	verificador1 := MODULO11(rutNum);
	verificador2 := substring(rutIngresado from tamaño);

	IF verificador1 = verificador2 
	THEN resultado := TRUE;
	END IF;
	
	RETURN resultado;
END;
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION validar_rut() RETURNS TRIGGER AS $validar_rut$

BEGIN
    IF(SELECT validarrut(NEW.rut_usuario) = FALSE)THEN
    	RETURN NULL;
   	END IF;
	IF(TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN   
        RETURN NEW;
	END IF;
END;
$validar_rut$ LANGUAGE plpgsql;

CREATE TRIGGER validar_rut BEFORE INSERT OR UPDATE ON Usuarios
FOR EACH ROW EXECUTE PROCEDURE validar_rut();
