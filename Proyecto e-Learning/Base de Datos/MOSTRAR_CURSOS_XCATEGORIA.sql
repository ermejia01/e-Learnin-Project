USE [ELEARNING]
GO

/****** Object:  StoredProcedure [dbo].[MOSTRAR_CURSOS_XCATEGORIA]    Script Date: 28/11/2020 16:12:46 ******/
DROP PROCEDURE [dbo].[MOSTRAR_CURSOS_XCATEGORIA]
GO

/****** Object:  StoredProcedure [dbo].[MOSTRAR_CURSOS_XCATEGORIA]    Script Date: 28/11/2020 16:12:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MOSTRAR_CURSOS_XCATEGORIA]
(
	@ID_CATEGORIA INT
)
AS BEGIN
	SELECT
		ID_CURSO,
		NOMBRE_CURSO,
		ESTADO,
		ID_CATEGORIA
	FROM
		CURSOS
	WHERE
		ID_CATEGORIA = @ID_CATEGORIA
END
GO

