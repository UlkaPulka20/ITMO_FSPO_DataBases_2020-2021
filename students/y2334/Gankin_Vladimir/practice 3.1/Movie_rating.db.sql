BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Movie";
CREATE TABLE IF NOT EXISTS "Movie" (
	"mID"	INTEGER NOT NULL,
	"title"	TEXT NOT NULL UNIQUE,
	"year"	INTEGER NOT NULL,
	"director"	TEXT,
	PRIMARY KEY("mID" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Reviewer";
CREATE TABLE IF NOT EXISTS "Reviewer" (
	"rID"	INTEGER NOT NULL,
	"name"	TEXT,
	PRIMARY KEY("rID" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Rating";
CREATE TABLE IF NOT EXISTS "Rating" (
	"rID_"	INTEGER NOT NULL,
	"mID_"	INTEGER NOT NULL,
	"stars"	INTEGER NOT NULL,
	"ratingDate"	TEXT,
	FOREIGN KEY("mID_") REFERENCES "Movie"("mID"),
	FOREIGN KEY("rID_") REFERENCES "Reviewer"("rID")
);
INSERT INTO "Movie" VALUES (101,'Gone with the Wind',1939,'Victor Fleming');
INSERT INTO "Movie" VALUES (102,'Star Wars',1977,'George Lucas');
INSERT INTO "Movie" VALUES (103,'The Sound of Music',1965,'Robert Wise');
INSERT INTO "Movie" VALUES (104,'E.T.',1982,'Stiven Spilberg');
INSERT INTO "Reviewer" VALUES (201,'Sarah Martinez');
INSERT INTO "Reviewer" VALUES (202,'Daniel Lewis');
INSERT INTO "Reviewer" VALUES (203,'Brittany Harris');
INSERT INTO "Reviewer" VALUES (204,'Mike Anderson');
INSERT INTO "Rating" VALUES (201,101,2,'2011-01-22');
INSERT INTO "Rating" VALUES (201,101,4,'2011-01-27');
INSERT INTO "Rating" VALUES (203,103,2,'2011-01-20');
COMMIT;
