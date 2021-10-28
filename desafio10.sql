USE SpotifyClone;

DELIMITER $$;

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE result INT;
	SELECT 
    COUNT(*)
FROM
    SpotifyClone.historico_de_reproducoes hr
WHERE
    hr.usuario_id = user_id INTO result;
    RETURN result;
END $$;

DELIMITER ;
