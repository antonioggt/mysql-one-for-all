SELECT
    MIN(s.price) AS faturamento_minimo,
    MAX(s.price) AS faturamento_maximo,
    ROUND(AVG(s.price), 2) AS faturamento_medio,
    SUM(s.price) AS faturamento_total
FROM
    subscription_type AS s
        INNER JOIN
    users AS u ON u.subscription_type_id = s.subscription_type_id;
