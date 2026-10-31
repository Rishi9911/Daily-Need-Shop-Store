CREATE SCHEMA IF NOT EXISTS raw;

CREATE TABLE IF NOT EXISTS raw.raw_customers (
    customer_id BIGINT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    city TEXT,
    country TEXT,
    created_at TIMESTAMP,
    ingested_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS raw.raw_products (
    product_id BIGINT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price NUMERIC(12, 2),
    stock_quantity INTEGER,
    ingested_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);