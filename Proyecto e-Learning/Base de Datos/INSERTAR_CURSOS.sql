USE [ELEARNING]
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_CATEGORIAS]    Script Date: 5/12/2020 03:39:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERTAR_CURSOS]
(
	@NOMBRE_CURSO   VARCHAR(50),
	@ESTADO		    INT,
	@ID_CATEGORIA   INT
)
AS BEGIN
	 
	INSERT INTO CURSOS(NOMBRE_CURSO,ESTADO,ID_CATEGORIA) VALUES(@NOMBRE_CURSO,	@ESTADO,@ID_CATEGORIA)
END
