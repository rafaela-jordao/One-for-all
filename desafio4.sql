SELECT u.nome_usuario AS usuario,
 IF (MAX(YEAR(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
 FROM SpotifyClone.usuarios AS u
 INNER JOIN SpotifyClone.historicos AS h
 ON u.usuario_id = h.usuario_id
 GROUP BY u.nome_usuario
 ORDER BY u.nome_usuario;