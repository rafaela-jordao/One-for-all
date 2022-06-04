SELECT m.nome_musica AS cancao, COUNT(h.musica_id) AS reproducoes
 FROM SpotifyClone.historicos AS h
 INNER JOIN SpotifyClone.musicas AS m
 ON h.musica_id = m.musica_id
 GROUP BY h.musica_id
 ORDER BY reproducoes DESC, cancao
 LIMIT 2;