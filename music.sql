BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "music" (
	"id"	INTEGER NOT NULL UNIQUE,
	"file_id"	TEXT NOT NULL,
	"name"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "music" VALUES (1,'AwACAgIAAxkDAAMdX609nsRrJ0SwwRPKynhau3XC_04AAp0LAAL2ZmhJmAP2o0vQIVgeBA','DNMO - Broken');
INSERT INTO "music" VALUES (2,'AwACAgIAAxkDAAMfX609qM4n0Wk9kLWj8yCdS-cRil4AAp4LAAL2ZmhJ3rQzUhcdUJceBA','The Prince Karma - Later Bitches');
INSERT INTO "music" VALUES (3,'AwACAgIAAxkDAAMhX609sjkVzf-WSTiiUvd7Yw2sRg4AAp8LAAL2ZmhJoFiWELPnlOQeBA','LSD - Genius');
INSERT INTO "music" VALUES (4,'AwACAgIAAxkDAAMjX609t4RrKGRtLw--rakPh3DGvwsAAqALAAL2ZmhJezjGSLJNAyYeBA','6 god');
COMMIT;
