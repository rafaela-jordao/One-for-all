SELECT u.nome_usuario AS usuario, COUNT(h.musica_id) AS qtde_musicas_ouvidas, 
ROUND(SUM(d.duracao) / 60, 2) AS total_minutos FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicos AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS d
ON d.musica_id = h.musica_id
GROUP BY u.usuario_id
ORDER BY u.nome_usuario;

