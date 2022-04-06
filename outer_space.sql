-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE orbits (
  id SERIAL PRIMARY KEY,
  planet_id INT NOT NULL REFERENCES planets ON DELETE CASCADE,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL
);

CREATE TABLE galaxys (
  id SERIAL PRIMARY KEY,
  planet_id INT NOT NULL REFERENCES planets ON DELETE CASCADE,
  galaxy TEXT NOT NULL,
  moons TEXT[]
);

INSERT INTO planets
  (name)
VALUES
  ('Earth'),
  ('Mars'),
  ('Venus'),
  ('Neptune'),
  ('Proxima Centauri b'),
  ('Gliese 876 b');

  INSERT INTO orbits(planet_id,orbital_period_in_years,orbits_around) VALUES
  (1,1.00, 'The Sun'),
  (2, 1.88, 'The Sun'),
  (3, 0.62, 'The Sun'),
  ( 4, 164.8, 'The Sun'),
  (5, 0.03, 'Proxima Centauri'),
  ( 6, 0.23, 'Gliese 876');

  INSERT INTO galaxys(planet_id,galaxy,moons) VALUES
  (1, 'Milky Way', '{"The Moon"}'),
  (2, 'Milky Way', '{"Phobos", "Deimos"}'),
  (3, 'Milky Way', '{}'),
  (4, 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  (5, 'Milky Way', '{}'),
  (6, 'Milky Way', '{}');