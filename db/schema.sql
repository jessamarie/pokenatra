DROP TABLE pokemons;
DROP TABLE trainers;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  poke_type TEXT,
  cp INTEGER,
  img_url TEXT,
  trainer_id INTEGER
);


CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name TEXT,
  level INTEGER,
  img_url TEXT,
  team_id INTEGER
);
