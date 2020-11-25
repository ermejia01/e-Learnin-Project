USE [ELEARNING]
GO

/****** Object:  StoredProcedure [dbo].[MOSTRAR_CONTENIDO_XTEMA]    Script Date: 24/11/2020 00:05:34 ******/
DROP PROCEDURE [dbo].[MOSTRAR_CONTENIDO_XTEMA]
GO

/****** Object:  StoredProcedure [dbo].[MOSTRAR_CONTENIDO_XTEMA]    Script Date: 24/11/2020 00:05:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MOSTRAR_CONTENIDO_XTEMA]
(
	@ID_TEMA	INT
)
AS
BEGIN
	SELECT
		ROW_NUMBER() OVER(ORDER BY ID_CATEGORIA) AS ORDEN,
		ID_CONTENIDO AS CODIGO,
		DESCRIPCION,
		TIPO
	FROM
		CONTENIDOS
	WHERE
		ID_TEMA = @ID_TEMA
END
GO


