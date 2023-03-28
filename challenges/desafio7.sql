SELECT
    (ar.artist_name) AS artista,
    (al.album_name) AS album,
    COUNT(uf.artist_id) AS pessoas_seguidoras
FROM
    artists AS ar
        INNER JOIN
    albuns AS al ON ar.artist_id = al.artist_id
        INNER JOIN
    user_follows AS uf ON uf.artist_id = ar.artist_id
GROUP BY ar.artist_name , al.album_name
ORDER BY COUNT(uf.artist_id) DESC, ar.artist_name, al.album_name;