CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255) NOT NULL,
    cover_state VARCHAR(4) NOT NULL,
    publish_date DATE NOT NULL
);

CREATE TABLE labels (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL
)

CREATE TABLE games (
    id  INT,
    multiplayer BOOLEAN,
    last_played_at DATE,
    publish_date DATE,
    FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE authors (
    id  INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);