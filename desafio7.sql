SELECT a.nome_artista AS artista, t.titulo AS album, COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS t
ON a.artista_id = t.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON s.artista_id = a.artista_id
GROUP BY s.artista_id, t.titulo
ORDER BY seguidores DESC, artista, album;