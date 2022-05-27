-- Les recettes qui ont moins de 200 calories par personne, dont tous les ingrédients sont sans
-- gluten et qui apparaissent sur le planning d’un utilisateur.
SELECT * FROM RECEIPT RP WHERE
( --Moins de 200 calorie par personne
    SELECT SUM(I.CALORIE*COALESCE(RI.QUANTITY, 1)/R."nbPeople") FROM INGREDIENT I
    JOIN RECEIPT_INGREDIENT RI on I."idIngredient" = RI."idIngredient"
    JOIN RECEIPT R on RI."idReceipt" = R."idReceipt"
    WHERE R."idReceipt" = RP."idReceipt"
    GROUP BY R."idReceipt"
)<200
AND ( --Toute les recettes sans gluten
    SELECT COUNT(*)
    FROM INGREDIENT I
    JOIN RECEIPT_INGREDIENT RI on I."idIngredient" = RI."idIngredient"
    JOIN ( --Tout les ingrédients avec gluten
        SELECT I2."idIngredient" as idIngredient
        FROM INGREDIENT I2
        JOIN INGREDIENT_DIET ID on I2."idIngredient" = ID."idIngredient"
        JOIN DIET D on ID."IdDiet" = D."idDiet"
        WHERE UPPER(D.NAME) = 'GLUTEN FREE'
    ) IG on I."idIngredient" = IG.idIngredient
    WHERE RI."idReceipt" = RP."idReceipt"
) = 0
AND ( --Existe sur le planning d'un utilisateur
        SELECT COUNT(*)
        FROM PLANNING_RECEIPT PR
        WHERE PR."idReceipt" = RP."idReceipt"
) > 0


-- La recette la plus souvent présente dans des plannings d’utilisateurs.
SELECT "idReceipt" from PLANNING_RECEIPT
WHERE ROWNUM <= 1
GROUP BY "idReceipt"
ORDER BY COUNT("idReceipt") DESC;


-- Pour chaque ingrédient, nombre de recette et nombre de catégorie dans lesquelles il apparaît.
SELECT "idIngredient",
(
    SELECT COUNT(DISTINCT RI."idReceipt") FROM RECEIPT_INGREDIENT RI
    WHERE I."idIngredient" = RI."idIngredient"
) as nbRecettes
FROM INGREDIENT I;


--Les utilisateurs qui n’ont ajouté à la base de données que des recettes végétarienne.
SELECT "idUser" FROM "USER" U WHERE
( --Le nombre de recette végétariennes
    SELECT COUNT(*) FROM RECEIPT RP WHERE
    ( --Toutes les recettes végétarienne
        SELECT COUNT(*)
        FROM INGREDIENT I
        JOIN RECEIPT_INGREDIENT RI on I."idIngredient" = RI."idIngredient"
        JOIN ( --Tout les ingrédients avec gluten
            SELECT I2."idIngredient" as idIngredient
            FROM INGREDIENT I2
            JOIN INGREDIENT_DIET ID on I2."idIngredient" = ID."idIngredient"
            JOIN DIET D on ID."IdDiet" = D."idDiet"
            WHERE UPPER(D.NAME) = 'VEGE'
        ) IG on I."idIngredient" = IG.idIngredient
        WHERE RI."idReceipt" = RP."idReceipt"
    ) = 0 AND
    RP."idUser" = U."idUser"
) = (
SELECT COUNT(*) FROM RECEIPT RP WHERE U."idUser" = RP."idUser"
)


-- Pour chaque utilisateur, son login, son nom, son prénom, son adresse, son nombre de recette créé,
-- son nombre d’ingrédients enregistrés, le nombre de recette qu’il a prévu de réaliser
-- (la recette est dans son planning à une date postérieure à la date d’aujourd’hui).
SELECT U.LOGIN,
(
    SELECT COUNT(*) FROM RECEIPT R WHERE R."idUser" = U."idUser"
) as nbReceipt,
(
    SELECT COUNT(*) FROM PLANNING_RECEIPT PR
    JOIN PLANNING P on P."idPlanning" = PR."idPlanning"
    WHERE P."idUser" = U."idUser"
    AND P."dateExp" > SYSDATE
) as nbReceiptPlanned
FROM "USER" U;