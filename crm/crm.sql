-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS logs;

-- CREATE TABLES
CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  address TEXT,
  phone_number TEXT,
  company_id INTEGER
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  date TEXT,
  type TEXT,
  notes TEXT,
  salesperson_id INTEGER,
  company_id INTEGER,
  contact_id INTEGER
);