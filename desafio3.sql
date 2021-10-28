USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome `usuario`, m.titulo `nome`
    FROM
        SpotifyClone.historico_de_reproducoes hr
            INNER JOIN
        SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
            INNER JOIN
        SpotifyClone.musicas m ON m.musica_id = hr.musica_id
    ORDER BY `usuario` , `nome`;
