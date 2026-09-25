CREATE TABLE users (
  id TEXT PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE organizations (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE roles (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE permissions (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE audit_logs (
  id TEXT PRIMARY KEY,
  actor_id TEXT,
  action TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE graph_nodes (
  id TEXT PRIMARY KEY,
  node_type TEXT,
  label TEXT
);

CREATE TABLE graph_edges (
  id TEXT PRIMARY KEY,
  source_id TEXT,
  target_id TEXT,
  relation TEXT
);
