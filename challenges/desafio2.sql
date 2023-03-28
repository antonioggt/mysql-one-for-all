USE 

SELECT
    COUNT(DISTINCT songs.song_id) AS cancoes,
    COUNT(DISTINCT artists.artist_id) AS artistas,
    COUNT(DISTINCT albuns.album_id) AS albuns
FROM
    albuns INNER JOIN songs INNER JOIN artists;