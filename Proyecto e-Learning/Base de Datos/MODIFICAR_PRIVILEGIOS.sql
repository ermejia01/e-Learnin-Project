USE [ELEARNING]
GO
/****** Object:  StoredProcedure [dbo].[MODIFICAR_CATEGORIA]    Script Date: 6/12/2020 10:09:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[MODIFICAR_PRIVILEGIOS]
(
	@ID_PRIV	INT,
	@NOMBRE_PRIV	VARCHAR(100)
)
AS 
BEGIN
	UPDATE 
		PRIVILEGIOS
	SET
		NOMBRE_PRIVILEGIO =  @NOMBRE_PRIV
	WHERE
		ID_PRIVILEGIO = @ID_PRIV
END
 