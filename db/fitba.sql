DROP TABLE games;
DROP TABLE teams;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    played INT,
    wins INT,
    draws INT,
    losses INT,
    goals_for INT,
    goals_against INT,
    points INT
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    home_team_id INT REFERENCES teams(id),
    home_goals INT,
    home_team_id INT REFERENCES teams(id),
    away_goals INT
);