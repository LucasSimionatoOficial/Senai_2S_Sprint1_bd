
CREATE FUNCTION dbo.Forca
(
@VidaBase INT
) 
RETURNS @ResultTable TABLE
( 
CharacterName VARCHAR(50), Health DECIMAL(7,2), StatusVida VARCHAR(50)
) AS BEGIN
        INSERT INTO @ResultTable
            SELECT Nome, CapMaxVida,  NULL
                FROM dbo.Personagens
UPDATE @ResultTable
            SET StatusVida = 
            CASE WHEN Health < @VidaBase THEN 'Fraco'
            ELSE 'Normal'
            END
        
RETURN
END

SELECT * FROM dbo.Forca(80)