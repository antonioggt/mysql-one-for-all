SELECT ar.artista AS artista, al.album_name AS album
FROM artist AS ar
INNER JOIN albuns AS al
ON ar.artist_id = al.artist_id
WHERE ar.artist_name = 'Elis Regina'
ORDER BY album;