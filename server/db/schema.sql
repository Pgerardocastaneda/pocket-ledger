-- Database tables, built from DESIGN.md.
-- All money columns are whole cents (integer), so $12.50 is stored as 1250.

-- Running this file again starts from empty: it deletes all existing data.
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  email text NOT NULL UNIQUE,
  password_hash text NOT NULL
);

CREATE TABLE accounts (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  -- ON DELETE CASCADE: deleting a user also deletes their accounts
  user_id integer NOT NULL REFERENCES users (id) ON DELETE CASCADE,
  type text NOT NULL CHECK (type IN ('checking', 'savings', 'credit_card')),
  name text NOT NULL,
  starting_balance integer NOT NULL DEFAULT 0,
  -- Only credit cards have a limit; NULL for every other account type
  credit_limit integer
);

CREATE TABLE transactions (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  account_id integer NOT NULL REFERENCES accounts (id) ON DELETE CASCADE,
  -- Positive = money in, negative = money out
  amount integer NOT NULL,
  date date NOT NULL,
  category text NOT NULL,
  description text
);

-- Postgres does not index foreign keys automatically, and every page
-- looks rows up by owner, so these keep those lookups fast
CREATE INDEX ON accounts (user_id);
CREATE INDEX ON transactions (account_id);
