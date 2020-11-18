BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "music" (
	"id"	INTEGER NOT NULL UNIQUE,
	"file_id"	TEXT NOT NULL,
	"right_answer"	TEXT NOT NULL,
        "wrong_answers" TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "music" VALUES (1,'AwACAgIAAxkDAAMdX609nsRrJ0SwwRPKynhau3XC_04AAp0LAAL2ZmhJmAP2o0vQIVgeBA','DNMO - Broken','Joel Corry - Sorry,Feder - Breathe,The Tech Thieves - Flowers');
INSERT INTO "music" VALUES (2,'AwACAgIAAxkDAAMfX609qM4n0Wk9kLWj8yCdS-cRil4AAp4LAAL2ZmhJ3rQzUhcdUJceBA','The Prince Karma - Later Bitches','Dimitri Vegas & Like Mike - Instagram,Tiesto - God is a Dancer,Moby - Natural Blues');
INSERT INTO "music" VALUES (3,'AwACAgIAAxkDAAMhX609sjkVzf-WSTiiUvd7Yw2sRg4AAp8LAAL2ZmhJoFiWELPnlOQeBA','LSD - Genius','BEP - The Time,Donovan - Catch the Wind,Twenty One Pilots - Chlorine');
INSERT INTO "music" VALUES (4,'AwACAgIAAxkDAAMjX609t4RrKGRtLw--rakPh3DGvwsAAqALAAL2ZmhJezjGSLJNAyYeBA','Drake - 6 god','The Prodigy - Out of Space,ZEUSKISS - Relax,Paul Jhonson - Get Get Down');
COMMIT;
