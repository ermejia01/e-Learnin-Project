USE ELEARNING
GO

CREATE PROCEDURE INSERTAR_ESTADO_CURSO
(
	@ID_CURSO		INT,
	@ID_USUARIO		INT
)
AS BEGIN
	INSERT INTO ESTADO_CURSO(ID_CURSO,ID_USUARIO) 
	VALUES(@ID_CURSO,@ID_USUARIO)
END
GO

CREATE PROCEDURE MODIFICAR_ESTADO_CURSO
(
	@ID_REGISTRO	INT,
	@ID_CURSO		INT,
	@ID_USUARIO		INT
)
AS BEGIN
	UPDATE ESTADO_CURSO
	SET
		ID_CURSO = @ID_CURSO,
		ID_USUARIO = @ID_USUARIO
	WHERE
		ID_REGISTRO = @ID_REGISTRO
END
GO

CREATE PROCEDURE ELIMINAR_ESTADO_CURSO
(
	@ID_REGISTRO INT
)
AS BEGIN
	DELETE FROM ESTADO_CURSO WHERE ID_REGISTRO = @ID_REGISTRO
END
GO

CREATE PROCEDURE CONSULTAR_ESTADO_CURSO
AS BEGIN
	SELECT
		ID_REGISTRO,
		ID_CURSO,
		ID_USUARIO
	FROM
		ESTADO_CURSO
END
GO