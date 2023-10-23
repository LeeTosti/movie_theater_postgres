CREATE TABLE IF NOT EXISTS customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    address VARCHAR(150),
    email VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS theaters(
    theater_id SERIAL PRIMARY KEY,
    address VARCHAR(150),
    contact_number VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    rating VARCHAR(10),
    distributor VARCHAR(50),
    theater_id INTEGER NOT NULL,
    FOREIGN KEY(theater_id) REFERENCES theaters(theater_id)
);

CREATE TABLE IF NOT EXISTS concessions(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS theater_concessions(
    theater_concessions_id SERIAL PRIMARY KEY,
    price NUMERIC(5,2),
    theater_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    FOREIGN KEY(theater_id) REFERENCES theaters(theater_id),
    FOREIGN KEY(product_id) REFERENCES concessions(product_id)
);

CREATE TABLE IF NOT EXISTS rewards(
    reward_id SERIAL PRIMARY KEY,
    points INTEGER,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS ticket_orders(
    ticket_id SERIAL PRIMARY KEY,
    ticket_type VARCHAR(30),
    ticket_price NUMERIC(5,2),
    ticket_quanity INTEGER,
    total_price NUMERIC(8,2),
    movie_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    reward_id INTEGER,
    theater_id INTEGER NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(reward_id) REFERENCES rewards(reward_id),
    FOREIGN KEY(theater_id) REFERENCES theaters(theater_id)
);