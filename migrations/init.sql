CREATE TABLE users (
    id SERIAL PRIMARY KEY,

    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
	
	created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMPTZ
) WITH (oids = false);


CREATE TABLE attendances (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
	
    date INTEGER,
	
    check_in_time INTEGER,
    check_out_time INTEGER,
	
    transaction_hash VARCHAR(255),
	
	created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMPTZ
);