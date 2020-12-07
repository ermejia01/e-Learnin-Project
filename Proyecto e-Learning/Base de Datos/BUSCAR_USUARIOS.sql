CREATE PROCEDURE [dbo].[BUSCAR_USUARIOS]
(
	@COD_USUARIO  	 VARCHAR(100) 
)
AS 
BEGIN
	IF (LEN(RTRIM(@COD_USUARIO))>0 OR @COD_USUARIO<>'')
	BEGIN
		IF EXISTS (SELECT * FROM USUARIOS WHERE COD_USUARIO = @COD_USUARIO)
			SELECT  ID_USUARIO,COD_USUARIO,NOMBRE,APELLIDO,EDAD,SEXO,
					FECHA_NAC,PAIS,DEPTO,TELEFONO,EMAIL,PASWORD,IMAGEN,ID_PRIVILEGIO,
					FECHAREGISTRO FROM USUARIOS WHERE COD_USUARIO = @COD_USUARIO
		ELSE
			SELECT -1 AS ID_USUARIO
	END
	 
END