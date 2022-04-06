-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL
);

   CREATE TABLE airlines 
   (
    id SERIAL PRIMARY KEY,
    ticket_id INT  REFERENCES tickets ON DELETE CASCADE,
    airline_name TEXT NOT NULL,
    from_city TEXT NOT NULL,
    from_country TEXT NOT NULL,
    to_city TEXT NOT NULL,
    to_country TEXT NOT NULL
    );

INSERT INTO tickets
  (first_name, last_name, seat, departure, arrival)
VALUES
  ('Jennifer', 'Finch', '33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00'),
  ('Thadeus', 'Gathercoal', '8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00'),
  ('Sonja', 'Pauley', '12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00'),
  ('Jennifer', 'Finch', '20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00'),
  ('Waneta', 'Skeleton', '23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00'),
  ('Thadeus', 'Gathercoal', '18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00'),
  ('Berkie', 'Wycliff', '9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00'),
  ('Alvin', 'Leathes', '1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00'),
  ('Berkie', 'Wycliff', '32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00'),
  ('Cory', 'Squibbes', '10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00');


  INSERT INTO airlines(ticket_id,airline_name,from_city,from_country,to_city,to_country) VALUES
  (1,'United','Washington DC', 'United States', 'Seattle', 'United States'),
  (2,'British Airways', 'Tokyo', 'Japan', 'London', 'United Kingdom'),
  (3,'Delta', 'Los Angeles', 'United States', 'Las Vegas', 'United States'),
  (4,'Delta', 'Seattle', 'United States', 'Mexico City', 'Mexico'),
  (5,'TUI Fly Belgium', 'Paris', 'France', 'Casablanca', 'Morocco'),
  (6,'Air China', 'Dubai', 'UAE', 'Beijing', 'China'),
  (7,'United', 'New York', 'United States', 'Charlotte', 'United States'),
  (8,'American Airlines', 'Cedar Rapids', 'United States', 'Chicago', 'United States'),
  (9,'American Airlines', 'Charlotte', 'United States', 'New Orleans', 'United States'),
  (10,'Avianca Brasil', 'Sao Paolo', 'Brazil', 'Santiago', 'Chile');
  


