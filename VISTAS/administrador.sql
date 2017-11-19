CREATE USER administrador PASSWORD 'admin123';

GRANT SELECT,UPDATE,INSERT,DELETE ON Ciudades,Paises,Agencias,Guias,Usuarios,Reservas,Destinos,Rutas,Servicios  TO administrador;