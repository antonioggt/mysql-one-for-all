SELECT
    COUNT(DISTINCT songs.id) AS cancoes,
    COUNT(DISTINCT artists.id) AS artistas,
    COUNT(DISTINCT albuns.id) AS albuns
FROM
    albuns INNER JOIN songs INNER JOIN artists;