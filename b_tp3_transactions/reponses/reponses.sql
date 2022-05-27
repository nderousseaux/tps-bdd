--1-1

INSERT INTO REPARATION(id_rep, id_taxi, desc_rep, km_cpt, prix) VALUES (2, 1, 'Cest cassé', 100, 100);
commit;
DELETE FROM REPARATION WHERE ID_REP = 2;
commit;


--1-2
DELETE FROM CHAUFFEUR WHERE ID_CHF = 1;
rollback;


--2
--ne marchera pas
INSERT INTO course
VALUES ( seq_course.nextval, 2, 200 -- id_chf non existant
,'Strasbourg', 'Colmar', 1, 150, 72, CURRENT_DATE);
INSERT INTO chauffeur VALUES (200, 'Kokkotos', 'George'); COMMIT ;

alter table COURSE
	add foreign key (ID_CHF) references CHAUFFEUR
    deferrable initially deferred;


--3
CREATE OR REPLACE PROCEDURE deleteIfRepar(id_taxi_p number)
IS
nbRepar NUMBER;

BEGIN
SELECT COUNT(*) INTO nbRepar FROM REPARATION WHERE ID_TAXI = id_taxi_p;
DBMS_OUTPUT.PUT_LINE('nbRepar : ' || nbRepar);
IF nbRepar != 0 THEN
    DELETE FROM reparation WHERE id_taxi=id_taxi_p;
    DELETE FROM taxi WHERE id_taxi=id_taxi_p;
    COMMIT;
END IF;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;

END;

execute deleteIfRepar(1)