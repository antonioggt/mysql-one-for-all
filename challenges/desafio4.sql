SELECT
    (u.user_name) AS pessoa_usuaria,
    IF(MAX(YEAR(p.playback_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM users AS u
INNER JOIN playback_history AS p
ON u.user_id = p.user_id
GROUP BY u.user_name
ORDER BY u.user_name;