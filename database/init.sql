CREATE TABLE IF NOT EXISTS users (
  id          SERIAL PRIMARY KEY,
  username    VARCHAR(32) NOT NULL UNIQUE,
  password    VARCHAR(32) NOT NULL,
  deleted_at  TIMESTAMPTZ DEFAULT NULL,
);

CREATE TABLE IF NOT EXISTS tasks (
  id            SERIAL PRIMARY KEY,
  priority      VARCHAR(4) DEFAULT NULL,
  title         VARCHAR(255) NOT NULL,
  completed_at  TIMESTAMPTZ DEFAULT NULL,
  description   TEXT DEFAULT NULL,
  deleted_at    TIMESTAMPTZ DEFAULT NULL,
  user_id       INTEGER DEFAULT NULL,
  is_default    BOOLEAN DEFAULT FALSE,
);
