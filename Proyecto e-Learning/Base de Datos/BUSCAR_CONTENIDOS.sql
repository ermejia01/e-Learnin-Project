USE [ELEARNING]
GO

/****** Object:  StoredProcedure [dbo].[BUSCAR_CONTENIDOS]    Script Date: 28/11/2020 21:25:35 ******/
DROP PROCEDURE [dbo].[BUSCAR_CONTENIDOS]
GO

/****** Object:  StoredProcedure [dbo].[BUSCAR_CONTENIDOS]    Script Date: 28/11/2020 21:25:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BUSCAR_CONTENIDOS]
(
	@ID_CONTENIDO	INT,
	@DESCRIPCION	VARCHAR(100)
)
AS 
BEGIN
	IF (@ID_CONTENIDO>0)
	BEGIN
		IF EXISTS (SELECT * FROM CONTENIDOS WHERE ID_CONTENIDO = @ID_CONTENIDO)
			SELECT ID_CONTENIDO, DESCRIPCION, TIPO, ID_CATEGORIA, ID_CURSO, ID_TEMA, ARCHIVO
			FROM CONTENIDOS WHERE ID_CONTENIDO = @ID_CONTENIDO
		ELSE
			SELECT -1 AS ID_CONTENIDO
	END
	ELSE IF (LEN(RTRIM(@DESCRIPCION))>0 OR @DESCRIPCION<>'')
	BEGIN
		IF EXISTS(SELECT * FROM CONTENIDOS WHERE DESCRIPCION LIKE '%'+@DESCRIPCION+'%')
			SELECT ID_CONTENIDO, DESCRIPCION, TIPO, ID_CATEGORIA, ID_CURSO, ID_TEMA, ARCHIVO
			FROM CONTENIDOS WHERE DESCRIPCION LIKE '%'+@DESCRIPCION+'%'
		ELSE
			SELECT -1 AS ID_CONTENIDO
	END
END
GO

