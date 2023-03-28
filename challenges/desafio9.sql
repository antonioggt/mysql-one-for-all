SELECT COUNT(song_id) AS musicas_no_historico
FROM playback_history AS p
INNER JOIN users AS u
ON p.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';