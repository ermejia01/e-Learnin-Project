USE [ELEARNING]
GO

/****** Object:  StoredProcedure [dbo].[MOSTRAR_CATEGORIAS]    Script Date: 25/11/2020 22:58:44 ******/
DROP PROCEDURE [dbo].[MOSTRAR_CATEGORIAS]
GO

/****** Object:  StoredProcedure [dbo].[MOSTRAR_CATEGORIAS]    Script Date: 25/11/2020 22:58:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MOSTRAR_CATEGORIAS]
AS BEGIN
	SELECT
		ID_CATEGORIA AS CODIGO,
		NOMBRE_CAT AS NOMBRE
	FROM 
		CATEGORIAS
END
GO


