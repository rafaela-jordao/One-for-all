SELECT COUNT(DISTINCT(m.nome_musica)) AS cancoes,
COUNT(DISTINCT(a.nome_artista)) AS artistas,
COUNT(DISTINCT(t.titulo)) AS albuns
FROM SpotifyClone.musicas AS m,
SpotifyClone.artistas AS a,
SpotifyClone.albuns AS t;