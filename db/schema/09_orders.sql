-- Drop and recreate orders table

DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  subtotal INTEGER NOT NULL,

  user_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  user_address VARCHAR(255) NOT NULL,
  user_city VARCHAR(32) NOT NULL,
  user_postal_code VARCHAR(16) NOT NULL,

  order_time DATE NOT NULL DEFAULT NOW() - interval '8 hours'
);
