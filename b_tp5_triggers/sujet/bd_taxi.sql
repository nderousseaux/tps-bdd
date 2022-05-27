DROP TABLE course;
DROP TABLE reparation;
DROP TABLE chauffeur;
DROP TABLE taxi;
DROP SEQUENCE seq_taxi;
DROP SEQUENCE seq_chf;
DROP SEQUENCE seq_rep;
DROP SEQUENCE seq_course;

-- Base de données taxi

CREATE TABLE taxi (
	id_taxi INT PRIMARY KEY, 
	marque VARCHAR2(64) NOT NULL, 
	km INT NOT NULL, 
	nb_place INT NOT NULL, 
	CONSTRAINT ck_taxi_km CHECK(km >= 0),
	CONSTRAINT ck_taxi_nb_place CHECK(nb_place BETWEEN 2 AND 8));
	
CREATE TABLE chauffeur (
	id_chf INT PRIMARY KEY,
	nom_chf VARCHAR2(128),
	prenom_chf VARCHAR2(128)
);

CREATE TABLE reparation (
	id_rep INT PRIMARY KEY,
	id_taxi INT NOT NULL REFERENCES taxi,
	desc_rep VARCHAR(256) NOT NULL,
	km_cpt INT NOT NULL,
	prix INT NOT NULL
);

CREATE TABLE course (
	id_course INT PRIMARY KEY,
	id_taxi INT REFERENCES taxi,
	id_chf INT REFERENCES chauffeur,
	adresse_dep VARCHAR2(64) NOT NULL,
	adresse_ar VARCHAR2(64) NOT NULL,
	nb_personne_course INT,
	duree_course INT,
	prix_course INT,
	date_course DATE
);

CREATE SEQUENCE seq_taxi START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_chf START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_rep START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_course START WITH 1 INCREMENT BY 1;

INSERT INTO taxi VALUES (seq_taxi.nextval, 'Renault', 25000, 3);
INSERT INTO taxi VALUES (seq_taxi.nextval, 'Lada', 300160, 4);
INSERT INTO taxi VALUES (seq_taxi.nextval, 'Lincoln wave', 10000, 8);

INSERT INTO chauffeur VALUES (seq_chf.nextval, 'bickle', 'Travis');
INSERT INTO chauffeur VALUES (seq_chf.nextval, 'bellic', 'Niko');
INSERT INTO chauffeur VALUES (seq_chf.nextval, 'durocher', 'Max');

INSERT INTO reparation VALUES (seq_rep.nextval, 2, 'changement durite', 10000, 30);

INSERT INTO course VALUES (seq_course.nextval, 2, 2, 'Strasbourg', 'Marseille', 4, 820, 300, CURRENT_DATE);
COMMIT;
