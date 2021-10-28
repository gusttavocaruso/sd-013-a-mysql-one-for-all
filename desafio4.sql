USE SpotifyClone;

CREATE VIEW top_3_artistas AS
    SELECT 
        a.nome `artista`, COUNT(*) `seguidores`
    FROM
        SpotifyClone.usuarios_artistas ua
            INNER JOIN
        SpotifyClone.artistas a ON a.artista_id = ua.artista_id
    GROUP BY ua.artista_id
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
