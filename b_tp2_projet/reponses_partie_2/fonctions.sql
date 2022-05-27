-- Définir une fonction qui change le nom d’un ingrédient par un autre dans les étapes de réalisation d’une recette.
CREATE OR REPLACE PROCEDURE changeIng
    (str1_v IN VARCHAR2, str2_v IN VARCHAR2, idReceipt_v IN INTEGER) AS
    CURSOR step_cur IS
        SELECT "idStep", NAME, DESCRIPTION FROM STEP S
        JOIN RECEIPT_STEP RS on "idStep" = "idStep"
        WHERE "idReceipt" = idReceipt_v;
    strx_v VARCHAR(255);
    strx_title_v VARCHAR(255);
    strx_new_v VARCHAR(255);
    strx_title_new_v VARCHAR(255);
    idStep_v INTEGER;
    BEGIN
        OPEN step_cur;
        LOOP
            FETCH step_cur INTO idStep_v, strx_title_v, strx_v;
            EXIT WHEN step_cur%NOTFOUND;
            SELECT REPLACE(strx_title_v, str1_v, str2_v)
                into strx_title_new_v FROM dual;
            SELECT REPLACE(strx_v, str1_v, str2_v)
                into strx_new_v FROM dual;
            UPDATE STEP SET NAME = strx_title_new_v WHERE idStep_v = "idStep";
            UPDATE STEP SET DESCRIPTION = strx_new_v WHERE idStep_v = "idStep";
        END LOOP;
        Commit;
    END;
/


-- Définir une fonction qui retourne la liste des ingrédients où la quantité d’ingrédient a été adaptée
-- pour un nombre de personnes différent du nombre de personnes de la recette d’origine.
CREATE OR REPLACE PACKAGE pack AS
    TYPE ing_record IS RECORD(
       id_ing INTEGER,
       quantity INTEGER);

    TYPE ing_table IS TABLE OF ing_record;

    FUNCTION changeNbIng(idReceipt_v IN INTEGER, nbPeople_v IN INTEGER)
        RETURN ing_table
        PIPELINED;
END;


CREATE OR REPLACE PACKAGE BODY pack AS

    FUNCTION changeNbIng(idReceipt_v IN INTEGER, nbPeople_v IN INTEGER)
        RETURN ing_table
        PIPELINED IS

        CURSOR ing_cur IS
            SELECT "idIngredient", COALESCE(QUANTITY, 1)
            FROM RECEIPT_INGREDIENT
            WHERE "idReceipt" = idReceipt_v;
        idIng_v INTEGER;
        nbIng_v INTEGER;
        nbPeopleOrigin_v INTEGER;
        rtn ing_record;

    BEGIN
        SELECT "nbPeople" INTO nbPeopleOrigin_v
            FROM RECEIPT WHERE "idReceipt" = idReceipt_v;
        OPEN ing_cur;
        LOOP
            FETCH ing_cur INTO idIng_v, nbIng_v;
            EXIT WHEN ing_cur%NOTFOUND;
            SELECT idIng_v, (nbIng_v/nbPeopleOrigin_v)*nbPeople_v INTO rtn FROM DUAL;
            PIPE ROW (rtn);
        END LOOP;
        RETURN;
    END changeNbIng;
END;


-- Définir une fonction qui retourne un booléen si la recette ne contient que des ingrédients valides pour un certain
-- régime (« végétarien », « sans-gluten », ...).
CREATE OR REPLACE FUNCTION checkDiet(idReceipt_v IN INTEGER, idRegime_v IN INTEGER) RETURN INTEGER AS
        nb_al INTEGER;
    BEGIN
        SELECT COUNT(*) INTO nb_al
        FROM INGREDIENT I
        JOIN RECEIPT_INGREDIENT RI on I."idIngredient" = RI."idIngredient"
        JOIN ( --Tout les ingrédients avec gluten
            SELECT I2."idIngredient" as idIngredient
            FROM INGREDIENT I2
            JOIN INGREDIENT_DIET ID on I2."idIngredient" = ID."idIngredient"
            JOIN DIET D on ID."IdDiet" = D."idDiet"
            WHERE d."idDiet" = idRegime_v
        ) IG on I."idIngredient" = IG.idIngredient
        WHERE RI."idReceipt" = idReceipt_v;
        IF nb_al = 0 THEN
                RETURN 1;
            ELSE
                RETURN 0;
        end if;
    END;
/

-- Définir une fonction qui génère une liste d’ingrédients à acheter.
-- La liste d’ingrédient sera générée pour un utilisateur, à partir d’un planning de recette à réaliser,
-- une liste d’ingrédients disponibles et la date estimée des achats.
CREATE OR REPLACE PACKAGE pack AS
    TYPE ing_record IS RECORD(
       id_ing INTEGER,
       quantity INTEGER);

    TYPE ing_table IS TABLE OF ing_record;

    FUNCTION listeAchat(idPlanning_v IN INTEGER)
        RETURN ing_table
        PIPELINED;
END;

CREATE OR REPLACE PACKAGE BODY pack AS

    FUNCTION listeAchat(idPlanning_v IN INTEGER)
        RETURN ing_table
        PIPELINED IS

        CURSOR ing_cur IS
            SELECT RI."idIngredient", SUM(COALESCE(QUANTITY, 1))
            FROM INGREDIENT
            JOIN RECEIPT_INGREDIENT RI on INGREDIENT."idIngredient" = RI."idIngredient"
            WHERE "idReceipt" IN (
                SELECT "idReceipt" FROM PLANNING_RECEIPT
                WHERE "idPlanning" =1
            )
            GROUP BY RI."idIngredient";
        idIng_v INTEGER;
        nbIng_v INTEGER;
        nbReq INTEGER;
        rtn ing_record;

    BEGIN
        OPEN ing_cur;
        LOOP
            FETCH ing_cur INTO idIng_v, nbIng_v;
            EXIT WHEN ing_cur%NOTFOUND;
            SELECT COUNT(*) INTO nbReq FROM USER_INGREDIENT
                JOIN "USER" U on U."idUser" = USER_INGREDIENT."idUser"
                JOIN PLANNING P on U."idUser" = P."idUser"
                WHERE "idPlanning" = idPlanning_v
                AND "idIngredient" = idIng_v;
            IF nbReq = 0 THEN -- Si aucun ing en stock
                SELECT idIng_v, nbIng_v INTO rtn FROM DUAL;
                PIPE ROW (rtn);
            ELSE
                SELECT QUANTITY INTO nbReq FROM USER_INGREDIENT
                JOIN "USER" U on U."idUser" = USER_INGREDIENT."idUser"
                JOIN PLANNING P on U."idUser" = P."idUser"
                WHERE "idPlanning" = idPlanning_v
                AND "idIngredient" = idIng_v;
                IF nbIng_v - nbReq > 0 THEN
                    SELECT idIng_v, nbIng_v-nbReq INTO rtn FROM DUAL;
                    PIPE ROW (rtn);
                end if;
            END IF;
        END LOOP;
        RETURN;
    END listeAchat;
END;