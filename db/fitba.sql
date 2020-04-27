DROP TABLE players;
DROP TABLE games;
DROP TABLE teams;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    played INT,
    wins INT,
    draws INT,
    losses INT,
    goals_for INT,
    goals_against INT,
    points INT,
    active BOOLEAN
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    home_team_id INT REFERENCES teams(id) ON DELETE CASCADE,
    home_goals INT,
    away_team_id INT REFERENCES teams(id) ON DELETE CASCADE,
    away_goals INT
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    country_id INT REFERENCES teams(id) ON DELETE CASCADE,
    position VARCHAR(255),
    goals INT
);