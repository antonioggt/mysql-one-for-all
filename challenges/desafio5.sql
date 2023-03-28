SELECT
    (s.song_name) AS cancao, COUNT(p.song_id) AS reproducoes
FROM
songs AS s INNER JOIN playback_history AS p ON p.song_id = s.song_id
GROUP BY p.song_name
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;