SELECT a.nome_artista AS artista, al.titulo AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
HAVING artista = 'Walter Phoenix';