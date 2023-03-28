-- Descomente e altere as linhas abaixo:

-- CREATE TABLE SpotifyClone.tabela(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;

CREATE TABLE SpotifyClone.favorite_songs(
    user_id INT,
    song_id INT,
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id),
    CONSTRAINT PRIMARY KEY (user_id, song_id)
) engine = InnoDB;

-- INSERT INTO SpotifyClone.tabela (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO SpotifyClone.favorite_songs (user_id, song_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);
