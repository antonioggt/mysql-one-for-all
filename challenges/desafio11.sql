SELECT a.album_name AS album, COUNT(fs.song_id) AS favoritadas
FROM albuns AS a
INNER JOIN songs AS s
INNER JOIN favorite_songs AS fs
ON a.album_id = s.album_id AND s.song_id = fs.song_id
GROUP BY a.album_name
ORDER BY favoritadas DESC, album
LIMIT 3;