SELECT
    (u.user) AS pessoa_usuaria,
    COUNT(p.user_id) AS musicas_ouvidas,
    ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM
    users u
        INNER JOIN
    playback_history p ON u.user_id = p.user_id
        INNER JOIN
    songs s ON p.song_id = s.song_id
GROUP BY u.user
ORDER BY u.user;