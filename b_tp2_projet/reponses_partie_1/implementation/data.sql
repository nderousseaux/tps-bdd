INSERT INTO NDEROUSSEAUX."USER" ("idUser", LOGIN, EMAIL, PASSWORD, SALT) VALUES (1, 'nderousseaux', 'na@sfr.fr', '2336d044eea58f8faeb7c8816d13b009', 'sadfe');
commit;

INSERT INTO NDEROUSSEAUX.RECEIPT ("idReceipt", NAME, DESCRIPTION, DIFFICULTY, PRICE, "nbPeople", TEMPS, "idUser") VALUES (1, 'Super Recette', 'Super recette', 'Facile', 1, 1, 50, 1);
commit;

INSERT INTO NDEROUSSEAUX.STEP ("idStep", NAME, DESCRIPTION, TEMPS) VALUES (1, 'Cool', 'Faite un truc', 1);
INSERT INTO NDEROUSSEAUX.STEP ("idStep", NAME, DESCRIPTION, TEMPS) VALUES (2, 'Cool2', 'Faite encore un truc', 10);
commit;

INSERT INTO NDEROUSSEAUX.RECEIPT_STEP ("idStep", "idReceipt") VALUES (1, 1);
INSERT INTO NDEROUSSEAUX.RECEIPT_STEP ("idStep", "idReceipt") VALUES (2, 1);
commit;

INSERT INTO NDEROUSSEAUX.GROUPE_ING ("idGroupeIng", NAME) VALUES (1, 'Carotte Like');
commit;

INSERT INTO NDEROUSSEAUX.INGREDIENT ("idIngredient", NAME, QUANTITYTYPE, CALORIE, LIPID, PROTID, GLUCID, "idGroupe") VALUES (1, 'Carottes', 'gram', 10, 10, 10, 10, 1);
commit;

INSERT INTO NDEROUSSEAUX.RECEIPT_INGREDIENT ("idReceipt", "idIngredient") VALUES (1, 1);
commit;

INSERT INTO NDEROUSSEAUX.PLANNING ("idPlanning", NAME, "dateExp", "idUser") VALUES (1, 'Pour ce soir', TO_DATE('2021-11-19 23:44:46', 'YYYY-MM-DD HH24:MI:SS'), 1);
commit;

INSERT INTO NDEROUSSEAUX.DIET ("idDiet", NAME) VALUES (1, 'AntiCarrote');
commit;

INSERT INTO NDEROUSSEAUX.INGREDIENT_DIET ("idIngredient", "IdDiet") VALUES (1, 1);
commit;

INSERT INTO NDEROUSSEAUX.PLANNING_RECEIPT ("idPlanning", "idReceipt") VALUES (1, 1);
commit;

INSERT INTO NDEROUSSEAUX.LIST_TO_BUY ("idListToBuy", NAME, "idPlanning", "idUser") VALUES (1, 'A acheter pour ce soir', 1, 1);
commit;