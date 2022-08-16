-- Drop and recreate reviews table

DROP TABLE IF EXISTS reviews CASCADE;

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  sku VARCHAR(16) NOT NULL,

  nickname VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  headline TEXT NOT NULL,
  comments TEXT NOT NULL,
  rating NUMERIC NOT NULL,
  display BOOLEAN  NOT NULL DEFAULT false,
  create_time DATE NOT NULL DEFAULT NOW() - interval '8 hours',
  inactive BOOLEAN  NOT NULL DEFAULT false
);

