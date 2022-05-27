-- Pas plus de 20 ingrédients par recettes.
CREATE OR REPLACE TRIGGER maxIng
    BEFORE INSERT ON RECEIPT_INGREDIENT FOR EACH ROW
    DECLARE
	    nbIng INTEGER;
    BEGIN
        SELECT COUNT(*) INTO nbIng
        FROM RECEIPT_INGREDIENT
        WHERE :new."idReceipt" = "idReceipt"
          AND :new."idIngredient" = "idIngredient";
        IF nbIng < 2 THEN
            Raise_application_error(-2001,
                'Impossible de mettre plus de 20 ingrédients par recette');
        END IF;
    END;
/

-- La liste des ingrédients à acheter ne peut pas être générée plus d’un mois à l’avance.
CREATE OR REPLACE TRIGGER planningDate
    BEFORE INSERT ON PLANNING FOR EACH ROW
    BEGIN
        IF :new."dateExp" > ADD_MONTHS(SYSDATE, 1) THEN
            Raise_application_error(-2001,
                'Un planning ne peut être généré plus d un mois à l avance');
        END IF;
    END;
/

-- La durée d’une recette est égale au moins au minimum de la durée de ses étapes.
CREATE OR REPLACE TRIGGER sumDuration
    BEFORE INSERT OR UPDATE ON RECEIPT FOR EACH ROW
    DECLARE
	    dureeEtapes INTEGER;
    BEGIN
        SELECT SUM(TEMPS) INTO dureeEtapes
        FROM STEP JOIN RECEIPT_STEP RS on :new."idReceipt" = RS."idReceipt";
        IF :new.TEMPS < dureeEtapes THEN
            Raise_application_error(-2001,
                'La durée d’une recette est égale au moins au minimum de la durée de ses étapes.');
        END IF;
    END;
/
CREATE OR REPLACE TRIGGER sumDuration2
    BEFORE INSERT OR UPDATE ON STEP FOR EACH ROW
    DECLARE
	    CURSOR list_recp IS
            SELECT "idReceipt"
            FROM RECEIPT_STEP
            WHERE RECEIPT_STEP."idStep" = :new."idStep";
        dEtapes_v INTEGER;
        idReceipt_v INTEGER;
    BEGIN
        OPEN list_recp;
        LOOP
            FETCH list_recp INTO idReceipt_v;
            EXIT WHEN list_recp%NOTFOUND;

            SELECT SUM(TEMPS) INTO dEtapes_v
            FROM STEP JOIN RECEIPT_STEP RS on STEP."idStep" = RS."idStep"
            WHERE RS."idReceipt" = idReceipt_v;
            IF (SELECT TEMPS FROM RECEIPT WHERE "idReceipt" = idReceipt_v) < dEtapes_v THEN
                Raise_application_error(-2001,
                    'La durée d’une recette est égale au moins au minimum de la durée de ses étapes.');
            END IF;
        end loop;
    END;
/


-- Les plannings de recettes et la liste des courses sont archivés lorsqu’ils sont supprimés
-- ou une fois les dates associées dépassées.
CREATE OR REPLACE TRIGGER supPlanning
    BEFORE INSERT OR UPDATE ON PLANNING FOR EACH ROW
    DECLARE
        CURSOR list_cur IS
            SELECT *
            FROM LIST_TO_BUY
            WHERE LIST_TO_BUY."idPlanning" = :old."idPlanning";
        idList_v INTEGER;
        nameList_v VARCHAR2(255);
        idPlanning_v INTEGER;
        idUser_v INTEGER;
    BEGIN
        INSERT INTO PLANNING_ARCH ("idPlanning", NAME, "dateExp", "idUser")
            VALUES (:old."idPlanning", :old.NAME, :old."dateExp", :old."idUser");
        OPEN list_cur;
        LOOP
            FETCH list_cur INTO idList_v, nameList_v, idPlanning_v, idUser_v;
            EXIT WHEN list_cur%NOTFOUND;
            INSERT INTO LIST_TO_BUY_ARCH("idListToBuy", NAME, "idPlanning", "idUser")
                VALUES (idList_v, nameList_v, idPlanning_v, idUser_v);
            DELETE FROM LIST_TO_BUY WHERE "idListToBuy" = idList_v;
        END LOOP;
    end;

CREATE OR REPLACE PROCEDURE supPlanningTime AS
    BEGIN
        DELETE FROM PLANNING WHERE "dateExp" > SYSDATE;
    end;

BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
   job_name           =>  'supPlanning',
   job_type           =>  'STORED_PROCEDURE',
   job_action         =>  'supPlanningTime',
   start_date         =>  '01-DEC-21 00.00.00 AM Europe/Paris',
   repeat_interval    =>  'FREQ=DAILY;INTERVAL=1',
   end_date           =>  '01-DEC-99 01.00.00 AM Europe/Paris',
   auto_drop          =>   FALSE,
   job_class          =>  'batch_update_jobs');
END;
/