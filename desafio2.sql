USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
	SELECT (
		SELECT COUNT(*) FROM SpotifyClone.musicas
    ) `cancoes`, (
		SELECT COUNT(*) FROM SpotifyClone.artistas
    ) `artistas`, (
		SELECT COUNT(*) FROM SpotifyClone.albuns
    ) `albuns`;
