USE SpotifyClone;
DELIMITER $$;

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(40))
BEGIN
	SELECT ar.nome `artista`,
    al.titulo `album`
    FROM SpotifyClone.albuns al
    INNER JOIN SpotifyClone.artistas ar ON ar.artista_id = al.artista_id
    WHERE artist_name = ar.nome
    ORDER BY `album`;
END $$;

DELIMITER ;
