USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
	SELECT m.titulo `cancao`,
    COUNT(*) `reproducoes`
    FROM SpotifyClone.historico_de_reproducoes hr
    INNER JOIN SpotifyClone.musicas m ON m.musica_id = hr.musica_id
    GROUP BY hr.musica_id
    ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
