DROP DATABASE IF EXISTS vueview;

CREATE DATABASE vueview;

\c vueview;

CREATE TABLE users (
  id BIGSERIAl,
  username VARCHAR,
  password VARCHAR,
  bio VARCHAR
  current BOOLEAN
);

ALTER TABLE users ADD CONSTRAINT userID PRIMARY KEY (id);

CREATE TABLE views (
  id BIGSERIAL,
  postedBy INTEGER,
  bookmarks INTEGER DEFAULT 0,
  hearts INTEGER DEFAULT 0,
  photoURL VARCHAR,
  caption VARCHAR
);

ALTER TABLE views ADD CONSTRAINT viewID PRIMARY KEY (id);

CREATE TABLE bookmarks (
  id BIGSERIAL,
  viewID INTEGER,
  savedBy INTEGER,
  author INTEGER
)

ALTER TABLE bookmarks ADD CONSTRAINT bookmarkID PRIMARY KEY (id);

ALTER TABLE views ADD CONSTRAINT postedFK FOREIGN KEY (postedBy) REFERENCES users(id);
ALTER TABLE bookmarks ADD CONSTRAINT viewFK FOREIGN KEY (viewID) REFERENCES views(id);
ALTER TABLE bookmarks ADD CONSTRAINT savedFK FOREIGN KEY (savedBy) REFERENCES users(id);
ALTER TABLE bookmarks ADD CONSTRAINT authorFK FOREIGN KEY (author) REFERENCES users(id);


-- CLI command to run schema:
-- psql -h localhost -d postgres -U [your username] -f ./schema.SQL