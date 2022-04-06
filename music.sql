-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    duration_in_seconds INTEGER NOT NULL,
    release_date DATE NOT NULL);

  CREATE TABLE artists(
    id SERIAL PRIMARY KEY,
    artist_id INT REFERENCES songs ON DELETE CASCADE,
    artists_names TEXT[] NOT NULL,
    album TEXT NOT NULL,
    producers TEXT[] NOT NULL
);

INSERT INTO songs
  (title, duration_in_seconds, release_date)
VALUES
  ('MMMBop', 238, '04-15-1997' ),
  ('Bohemian Rhapsody', 355, '10-31-1975'),
  ('One Sweet Day', 282, '11-14-1995'),
  ('Shallow', 216, '09-27-2018'),
  ('How You Remind Me', 223, '08-21-2001'),
  ('New York State of Mind', 276, '10-20-2009'),
  ('Dark Horse', 215, '12-17-2013'),
  ('Moves Like Jagger', 201, '06-21-2011'),
  ('Complicated', 244, '05-14-2002'),
  ('Say My Name', 240, '11-07-1999');


INSERT INTO artists (artist_id,artists_names,album,producers) VALUES
(1,'{"Hanson"}', 'Middle of Nowhere', '{"Dust Brothers", "Stephen Lironi"}'),
(2,'{"Queen"}', 'A Night at the Opera', '{"Roy Thomas Baker"}'),
( 3,'{"Mariah Cary", "Boyz II Men"}', 'Daydream', '{"Walter Afanasieff"}'),
(4,'{"Lady Gaga", "Bradley Cooper"}', 'A Star Is Born', '{"Benjamin Rice"}'),
( 5,'{"Nickelback"}', 'Silver Side Up', '{"Rick Parashar"}'),
( 6,'{"Jay Z", "Alicia Keys"}', 'The Blueprint 3', '{"Al Shux"}'),
( 7,'{"Katy Perry", "Juicy J"}', 'Prism', '{"Max Martin", "Cirkut"}'),
(8,'{"Maroon 5", "Christina Aguilera"}', 'Hands All Over', '{"Shellback", "Benny Blanco"}'),
(9,'{"Avril Lavigne"}', 'Let Go', '{"The Matrix"}'),
(10,'{"Destiny''s Child"}', 'The Writing''s on the Wall', '{"Darkchild"}');


