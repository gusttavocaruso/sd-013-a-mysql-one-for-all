USE SpotifyClone;

CREATE VIEW perfil_artistas AS
	SELECT ar.nome `artista`,
    al.titulo `album`, (
		SELECT COUNT(*) FROM SpotifyClone.usuarios_artistas ua
        WHERE ua.artista_id = ar.artista_id
        GROUP BY ua.artista_id
    ) `seguidores`
    FROM SpotifyClone.albuns al
    INNER JOIN SpotifyClone.artistas ar ON ar.artista_id = al.artista_id
    ORDER BY `seguidores` DESC, `artista`, `album`;
