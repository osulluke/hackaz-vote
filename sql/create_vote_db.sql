DROP DATABASE IF EXISTS vote;
CREATE DATABASE vote;
USE vote;

CREATE TABLE voter 
	(voter_id			INT					NOT NULL AUTO_INCREMENT,
     voter_name			CHAR(50)			NOT NULL,
     CONSTRAINT			PK_votes			PRIMARY KEY(voter_id));

CREATE TABLE candidate 
	(candidate_id		INT					NOT NULL AUTO_INCREMENT,
     candidate_name		CHAR(50)			NOT NULL,
     candidate_pic		BLOB				NULL,
     CONSTRAINT			PK_candidate		PRIMARY KEY(candidate_id));

CREATE TABLE plurality_vote
	(plur_vote_id		INT					NOT NULL AUTO_INCREMENT,
     voter_id			INT					NOT NULL UNIQUE,
     candidate_id		INT					NOT NULL,
     CONSTRAINT			PK_plur_vote		PRIMARY KEY(plur_vote_id),
     CONSTRAINT			FK_voter_id			FOREIGN KEY(voter_id) REFERENCES voter(voter_id));
     
CREATE TABLE ranking_vote
	(rank_vote_id		INT					NOT NULL AUTO_INCREMENT,
     voter_id			INT					NOT NULL,
     candidate_id		INT					NOT NULL,
     candidate_rank		INT					NOT NULL,
     CONSTRAINT			PK_rank_vote		PRIMARY KEY(rank_vote_id),
     CONSTRAINT			FK_rank_vote		FOREIGN KEY(voter_id) REFERENCES voter(voter_id),
     CONSTRAINT			FK_cand_id			FOREIGN KEY(candidate_id) REFERENCES candidate(candidate_id));