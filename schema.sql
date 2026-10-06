CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS gateway_payment_intents (
    token UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    transaction_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    source_app VARCHAR(255) NOT NULL,
    return_url TEXT NOT NULL,
    webhook_url TEXT NOT NULL,
    status VARCHAR(50) NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS candidates (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT,
    position TEXT NOT NULL,
    experience_years TEXT,
    github_url TEXT,
    linkedin_url TEXT,
    portfolio_url TEXT,
    social_media_url TEXT,
    cover_letter TEXT,
    resume_filename TEXT,
    resume_mimetype TEXT,
    resume_blob BYTEA,
    status TEXT DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
