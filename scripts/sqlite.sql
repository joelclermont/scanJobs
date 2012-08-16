CREATE TABLE job (
id INTEGER DEFAULT NULL PRIMARY KEY AUTOINCREMENT,
title TEXT(150) DEFAULT NULL,
telecommute NUMERIC NOT NULL  DEFAULT 0,
date_posted TEXT DEFAULT NULL
);

CREATE TABLE city (
id INTEGER DEFAULT NULL PRIMARY KEY AUTOINCREMENT,
latitude TEXT(20) DEFAULT NULL,
longitude TEXT(20) DEFAULT NULL
);

CREATE TABLE job_city (
id INTEGER DEFAULT NULL PRIMARY KEY AUTOINCREMENT,
id_job INTEGER DEFAULT NULL REFERENCES job (id),
id_city INTEGER DEFAULT NULL REFERENCES city (id)
);