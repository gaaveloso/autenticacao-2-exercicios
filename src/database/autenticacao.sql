-- Active: 1676482643990@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES
	("u001", "Fulano", "fulano@email.com", "$2y$12$FWUkMQLSJtCm3uHoNkID1ugQyW8TCk9nWD8ZScXvy.wjqitRQ0G0u", "NORMAL"),
	("u002", "Beltrana", "beltrana@email.com", "$2y$12$GXLEKGpD1MrkrU.PI9sfAukYXI3ORyMbN5invUQeNcD8TnqgdAqfC", "NORMAL"),
	("u003", "Astrodev", "astrodev@email.com", "$2y$12$cfECnwqrEJDoFxYamiXzluO84uQ1/yvSK48VS9KL7iAVcG3xlrf3K", "ADMIN");


SELECT * FROM users;

DROP Table users;