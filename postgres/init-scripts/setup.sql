CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE accounts (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY
);
