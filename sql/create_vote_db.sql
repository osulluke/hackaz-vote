DROP DATABASE IF EXISTS vote;
CREATE DATABASE vote;
USE vote;

CREATE TABLE votes 
	(vote_id			INT					NOT NULL,
     voter_name			CHAR(50)			NOT NULL,
     plurality_choice	INT					NOT NULL,
     ranking_choice							NOT NULL,
     CONSTRAINT			PK_votes			PRIMARY KEY(vote_id))


CREATE TABLE candidate 
	(candidate_id		INT					NOT NULL,
     candidate_name		CHAR(50)			NOT NULL,
     candidate_pic		BLOB				NOT NULL,
     CONSTRAINT			PK_candidate		PRIMARY KEY(candidate_id))

