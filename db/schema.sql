CREATE TABLE IF NOT EXISTS transactions (
  id          SERIAL PRIMARY KEY,
  amount      NUMERIC(12, 2) NOT NULL CHECK (amount > 0),
  type        TEXT NOT NULL CHECK (type IN ('expense', 'income')),
  category    TEXT NOT NULL,
  description TEXT,
  txn_date    DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS budgets (
  category      TEXT PRIMARY KEY,
  monthly_limit NUMERIC(12, 2) NOT NULL CHECK (monthly_limit > 0)
);