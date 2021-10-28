USE SpotifyClone;

CREATE VIEW cancoes_premium AS
    SELECT 
        m.titulo `nome`, COUNT(*) `reproducoes`
    FROM
        SpotifyClone.usuarios u
            INNER JOIN
        SpotifyClone.historico_de_reproducoes hr ON hr.usuario_id = u.usuario_id
            INNER JOIN
        SpotifyClone.musicas m ON m.musica_id = hr.musica_id
    WHERE
        EXISTS( SELECT 
                *
            FROM
                SpotifyClone.planos p
            WHERE
                p.tipo IN ('familiar' , 'universitário')
                    AND u.plano_id = p.plano_id)
    GROUP BY hr.musica_id
    ORDER BY nome;
