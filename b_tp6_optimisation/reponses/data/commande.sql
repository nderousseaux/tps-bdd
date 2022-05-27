CREATE TABLE commande (
  idCommande number primary key,
  numCommande varchar2(255),
  nbExemplaire varchar2(50) default NULL,
  dateLivraison varchar2(255),
  idProduit varchar2(50) default NULL,
  idClient varchar2(50) default NULL
)

CREATE SEQUENCE commande_seq START WITH 1;

CREATE OR REPLACE TRIGGER commande_bit
BEFORE INSERT ON commande
FOR EACH ROW

BEGIN
  SELECT commande_seq.NEXTVAL
  INTO   :new.idCommande
  FROM   dual;
END;
/

INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO26OI',9170,'2023-11-15',488,100);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ou96ie',134,'2020-07-11',413,221);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Io32eI',1411,'2023-04-06',37,49);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue78aa',7103,'2023-05-25',241,442);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU45ai',6136,'2023-03-24',321,302);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uU32OO',6530,'2021-05-22',468,305);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OE61oA',1000,'2023-12-23',361,182);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee12oU',5949,'2020-09-11',66,206);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eE73Uu',505,'2023-12-07',393,361);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE77OU',9475,'2021-03-08',322,467);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO63AU',2403,'2020-12-14',327,118);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uu31aA',3880,'2021-12-13',392,349);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI53oU',7337,'2023-06-10',288,403);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EA22ei',8325,'2023-11-02',157,482);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ie11UI',7054,'2021-07-27',198,259);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ee16ia',475,'2020-07-13',492,211);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei71AO',1323,'2021-07-20',49,415);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia67oE',9114,'2023-01-29',321,92);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('io25eI',7933,'2021-09-30',498,394);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU74iI',4485,'2022-12-01',317,41);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oo70oI',5539,'2021-11-14',471,451);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uA85ie',2814,'2021-11-08',331,229);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ou41eI',1532,'2022-09-18',245,8);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie43oe',1844,'2022-06-29',220,304);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ea26iu',4509,'2023-02-27',175,356);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO57oU',2642,'2021-04-10',325,137);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo82AI',4121,'2021-01-24',352,361);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo62ia',5923,'2021-07-06',35,308);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ie02EU',9800,'2023-07-19',221,278);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE60oE',8228,'2023-03-19',234,28);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU15eI',8310,'2023-12-13',324,135);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU73iU',5199,'2023-03-10',233,480);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eI91EU',9583,'2021-08-09',323,45);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia06Io',1444,'2022-09-28',140,146);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aE58oU',35,'2020-07-02',443,142);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oa17oO',331,'2021-01-17',278,181);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ie75ao',8721,'2021-07-08',176,422);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Au85IO',4392,'2022-06-09',69,464);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo66uI',326,'2023-05-02',321,401);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ae58UE',8632,'2021-04-23',445,29);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU51oU',648,'2021-05-13',315,299);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe70EE',1903,'2020-10-05',354,286);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ao86IE',1139,'2022-06-02',265,58);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE78Oe',1376,'2022-03-15',316,460);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II71UU',1158,'2022-04-16',272,290);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ii89oe',3535,'2023-02-12',432,430);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Aa63AE',4544,'2022-08-14',154,50);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ua22AO',3404,'2023-02-02',196,329);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue91EA',726,'2021-10-03',141,379);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eU24UU',6626,'2021-05-14',401,129);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aI36io',9006,'2020-10-17',397,57);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii47Aa',5216,'2021-01-31',312,432);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo44Oi',6774,'2022-10-07',487,4);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uE76ea',2836,'2021-05-29',482,166);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE26oU',6522,'2023-12-11',73,148);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ea52OU',9905,'2023-04-08',225,393);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iO51ie',8388,'2022-12-05',313,64);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU80aI',3542,'2023-08-18',44,140);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eU54IU',3357,'2023-02-07',31,143);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aE83aI',1382,'2021-11-12',223,114);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AU53EO',232,'2023-01-28',286,418);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UA88Oe',8379,'2020-10-12',361,159);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Aa34Ii',3754,'2021-10-03',320,318);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OI93OU',5795,'2020-07-19',341,243);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii13IO',1863,'2021-05-22',134,12);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai21ai',677,'2021-03-18',262,91);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uU28oE',268,'2022-12-25',445,453);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ae10EI',8263,'2021-12-22',449,59);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('au97Uo',4199,'2021-08-04',309,5);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie40ou',8928,'2023-06-22',373,127);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO05iI',4141,'2022-12-24',439,353);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eU13Io',5700,'2021-06-12',345,377);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eO27Ie',6973,'2023-08-12',246,200);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe25Ii',1781,'2021-10-25',236,387);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU23oI',700,'2023-12-23',429,412);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oE94oe',725,'2023-04-17',128,474);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE70uE',5714,'2023-03-18',474,7);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo57Oi',981,'2022-07-15',186,113);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OI65Ae',8215,'2020-06-24',115,440);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa30io',9043,'2020-11-07',100,471);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe24aE',4882,'2021-08-01',263,224);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OO97iO',6708,'2023-03-23',278,392);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OO16Ia',1408,'2020-06-25',268,420);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eE26oo',853,'2022-06-04',437,12);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Iu83eU',9202,'2023-01-29',140,64);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo09UO',3449,'2021-10-23',372,181);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iO75Oi',2108,'2023-10-15',485,151);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IO73ae',8419,'2021-06-18',477,158);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo01Oa',64,'2020-10-27',306,276);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia27Ue',598,'2021-02-03',160,120);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IO33oi',5770,'2020-07-22',291,386);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea19Ia',790,'2020-06-11',275,43);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai38Eo',5636,'2023-02-04',338,453);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uE24ai',1326,'2023-09-12',291,295);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo66Eo',7681,'2022-04-08',162,170);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oE49Oo',4630,'2021-04-07',23,349);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE73ao',9840,'2023-08-27',42,235);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei65Ua',2662,'2021-12-12',77,328);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ue19iu',779,'2021-06-02',192,433);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE55Ii',6702,'2021-10-08',192,408);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aO49Eo',3680,'2022-12-15',7,279);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai35OE',6322,'2022-08-02',413,327);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea44oo',1753,'2023-10-29',260,345);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eO19aa',9053,'2022-02-20',13,397);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UA77Io',4410,'2021-09-26',435,245);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aU05II',5929,'2022-12-12',411,308);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO24EO',8551,'2022-11-10',452,189);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Io32oI',7083,'2022-05-26',27,456);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa73OO',8790,'2020-09-16',438,118);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE79Oi',572,'2022-02-15',30,150);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea74Eo',4994,'2023-03-03',455,472);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OA16ie',413,'2021-07-03',322,198);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II08iO',2105,'2021-08-06',472,110);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU47oU',9053,'2022-08-09',436,187);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UE23Oa',9896,'2021-02-28',141,294);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie37AI',429,'2023-09-29',454,331);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa82aa',7445,'2021-06-07',288,222);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oe52aO',1726,'2020-12-24',492,216);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU56EA',8521,'2022-07-30',216,303);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ue54aa',9665,'2022-08-24',109,285);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea72Ee',3228,'2022-04-09',49,57);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie12AI',6512,'2020-06-12',103,439);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo51ia',5634,'2022-10-01',132,217);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OE13oU',5675,'2022-05-01',195,217);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea53aO',1605,'2022-06-15',331,258);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia85EI',6195,'2021-11-15',466,116);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ui60IO',4480,'2023-08-28',429,498);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE52ai',754,'2023-05-06',347,381);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo12ie',3033,'2023-05-01',20,48);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OI61ua',4783,'2023-12-26',146,322);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IE21Oa',7205,'2020-07-21',195,55);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe77ai',4673,'2021-01-15',77,358);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oE47Iu',5681,'2022-01-08',54,214);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI56Uu',3879,'2023-10-23',448,285);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo90Io',1843,'2022-09-01',321,451);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ee56aU',635,'2021-03-05',144,386);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU33ea',7617,'2022-03-31',479,145);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei71iA',1228,'2022-04-22',457,222);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aU85Oe',121,'2022-10-23',337,324);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia47uI',1821,'2020-09-10',361,118);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eE28Ii',8441,'2021-04-13',167,326);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia65AU',5603,'2021-08-29',500,443);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO33Uo',7065,'2022-02-08',16,387);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oE16ie',4698,'2022-09-20',420,497);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI82OA',2327,'2020-06-17',368,208);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aO18ai',8400,'2023-10-22',364,103);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ee22Ui',4800,'2023-07-22',57,331);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo93IU',2245,'2022-10-08',17,202);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ea67II',8979,'2022-06-03',85,450);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UI72uE',547,'2021-06-28',410,386);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oo16Ai',8616,'2023-11-09',60,291);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU34UE',5239,'2023-02-12',425,184);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI47aO',4786,'2022-07-28',498,267);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Io54Ao',8158,'2022-08-17',223,445);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei65EE',2913,'2023-01-20',441,8);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eO18aO',3757,'2020-08-20',337,379);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE87Oo',1508,'2023-03-27',185,106);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ii57eI',8521,'2022-06-22',427,144);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Io36EE',4067,'2021-09-12',448,324);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II64iE',1623,'2023-07-11',135,481);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU22EO',9999,'2020-07-11',241,280);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ae91iO',9844,'2023-07-31',70,391);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU98ae',1756,'2023-06-22',294,105);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IA66uI',9797,'2023-12-02',371,151);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia10EI',2681,'2021-05-03',485,134);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oi47Ae',9663,'2020-10-19',244,392);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oE51aO',1840,'2022-06-23',224,2);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IE15AA',4797,'2023-08-02',348,46);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ie88OE',6951,'2021-08-13',368,363);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EU21II',4214,'2022-03-17',303,128);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia63UA',5384,'2022-01-09',469,194);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EO17eU',5097,'2021-01-23',238,314);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EA49iU',1507,'2023-08-06',446,336);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('au84Iu',1405,'2020-08-12',281,24);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ua35Uo',5305,'2022-07-25',86,118);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OO46IE',6652,'2023-02-10',125,16);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU44ao',510,'2022-06-04',394,241);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia88uO',7278,'2020-05-09',111,269);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ao72aE',2874,'2022-04-12',58,310);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uO82eu',2950,'2020-06-03',270,397);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eO58UE',9764,'2022-12-07',295,277);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IA98UU',8934,'2023-07-17',158,409);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iO48ii',4014,'2021-10-01',141,155);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IE25ea',3228,'2022-06-09',325,152);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oa17Iu',1425,'2022-06-23',288,302);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EA07II',7275,'2021-01-14',308,465);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OU67EI',220,'2020-08-15',249,152);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oI18UO',5881,'2022-09-10',164,132);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE76OI',1572,'2022-08-06',350,53);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AA93AU',7942,'2022-04-09',92,196);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia33oI',7731,'2021-06-06',468,271);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aU68oi',8779,'2021-03-23',159,455);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eE18UO',2884,'2022-07-03',183,358);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO44oE',5064,'2022-07-12',10,100);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UE76Uu',5026,'2020-10-11',434,190);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eI94eu',1637,'2022-10-10',39,362);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oI57oU',6480,'2023-09-19',453,341);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uI86Oo',2291,'2023-12-06',315,437);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oo30io',5585,'2023-04-18',21,103);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('io15oE',7949,'2023-09-09',397,280);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa73ou',958,'2023-10-01',158,291);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Aa14iU',6954,'2020-11-16',178,4);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ie12eO',7582,'2022-11-16',414,396);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI05iE',7865,'2022-08-27',378,223);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei71Ui',3994,'2020-05-09',138,467);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei53Eo',8107,'2022-05-15',430,78);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IE26Ia',2287,'2020-09-13',225,284);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aI43ie',6364,'2023-12-30',350,438);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eI88oA',5694,'2022-05-29',201,398);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai34UO',343,'2021-02-02',380,138);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei37ao',3066,'2021-06-22',312,477);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UI61aa',7236,'2022-03-19',261,393);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee64eU',7570,'2021-03-25',33,137);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oe57eE',9279,'2021-01-09',452,369);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii04AI',8658,'2021-09-15',474,98);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE83OE',5985,'2023-11-28',34,479);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aE40IA',3609,'2023-01-03',421,174);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oa68AO',8494,'2022-04-07',25,447);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe51ao',4023,'2021-03-08',48,54);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia44AI',3066,'2021-10-02',360,446);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ao27II',3619,'2022-12-24',431,109);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iu16oE',1136,'2020-08-16',439,430);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi44AU',6968,'2023-04-07',486,304);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE27ua',9500,'2022-02-27',287,162);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II92io',8448,'2022-08-09',157,270);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oa76ue',2806,'2020-10-30',449,278);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU56eO',9677,'2020-09-06',91,223);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ae28IA',3275,'2020-09-19',366,499);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE89Ae',2725,'2023-08-10',36,259);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia23oU',9613,'2022-08-05',210,277);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI81Ee',1321,'2021-05-20',236,483);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ue94eI',3245,'2022-02-20',468,41);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia11IU',7139,'2021-12-11',15,78);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iO98eA',4241,'2021-03-07',228,341);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI78oa',2712,'2020-05-31',398,27);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EO75eE',3121,'2022-07-12',396,138);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo07eI',6372,'2023-08-04',40,74);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei70ai',3871,'2023-11-08',155,476);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('io46Oi',9099,'2020-11-08',92,148);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee28oI',2594,'2020-07-19',469,443);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oa14iI',5580,'2021-12-03',65,158);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU24iU',6542,'2021-12-28',85,308);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue69Ii',8082,'2021-12-19',121,420);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OI86EE',6198,'2022-09-18',98,173);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo72ui',986,'2022-11-06',367,345);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai83UE',2959,'2022-10-08',232,16);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi88eo',2425,'2022-09-05',282,120);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI63ao',8528,'2021-04-11',266,382);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii66oE',7757,'2022-11-19',314,312);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee36II',7736,'2021-03-01',119,377);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oi67IO',4150,'2023-06-14',214,98);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Io14ea',282,'2021-03-12',172,217);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo45oI',3562,'2023-06-09',115,88);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE53Eo',3983,'2021-12-06',10,409);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE88ia',1887,'2020-12-28',301,148);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU28IE',431,'2020-10-21',321,4);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ou20Ua',8604,'2023-08-06',312,382);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI22UO',1842,'2021-03-06',431,78);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO48Io',1421,'2020-10-11',448,205);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UI27ao',511,'2020-11-17',461,197);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee41ia',9080,'2023-01-23',265,168);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oo54EU',944,'2023-06-06',224,156);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oe68oa',9902,'2020-05-10',468,308);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO58OI',6090,'2022-07-08',202,366);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aE65eo',6267,'2021-07-30',288,193);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aO87aI',1853,'2020-07-22',191,433);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo95Ii',8625,'2021-08-06',306,467);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU50ae',9952,'2020-07-25',380,40);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uE35iO',2055,'2020-07-28',314,432);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ou36AU',8581,'2021-10-26',57,46);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ai49Eo',6123,'2021-05-14',194,78);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo66oU',9058,'2020-10-04',460,182);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oi74oE',6857,'2022-10-09',121,180);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei27ie',4299,'2021-01-30',493,33);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oU16iI',5182,'2020-10-24',116,387);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OA53ao',869,'2022-09-10',415,248);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE55oE',8423,'2023-03-31',230,325);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo11eE',3508,'2021-12-12',411,116);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI58uI',1016,'2023-06-27',229,28);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo37uo',4175,'2022-12-01',480,45);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aO52Ei',5211,'2021-07-31',383,461);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO12ea',8278,'2020-10-11',210,382);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo04Eu',4061,'2021-12-31',229,140);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EO37eo',5764,'2022-09-27',463,36);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ea45aa',4034,'2020-06-26',375,257);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe48Eo',4973,'2021-06-14',484,474);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oe48Ei',4741,'2022-05-19',213,266);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ou91Eo',9972,'2022-06-26',235,175);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea03UE',6038,'2021-03-01',370,188);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ua33aU',4277,'2021-05-11',211,222);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU49iU',1776,'2021-08-23',195,395);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Io66iO',2534,'2023-09-19',43,425);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Au47UE',8085,'2023-09-21',170,389);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eO24oE',8304,'2020-07-25',203,305);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi77ai',78,'2021-02-06',462,66);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Eo50ii',1897,'2022-03-18',64,197);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Eu42Io',5375,'2021-11-24',223,245);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO33ia',4426,'2020-06-09',240,325);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AA12EI',3653,'2022-04-27',136,296);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aU73Oi',7666,'2022-07-27',496,94);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UI38oU',4034,'2023-10-01',91,238);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei13EO',5824,'2021-03-02',239,342);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea23Ei',1710,'2022-02-25',140,259);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uu32UI',8706,'2022-08-27',274,123);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Aa13aU',5220,'2022-05-11',51,480);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa63ie',6545,'2021-03-06',473,271);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IA66eO',1407,'2023-10-24',282,352);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oI47oE',4807,'2022-07-08',281,171);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uu48EE',9296,'2022-01-06',146,459);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia32Ei',6588,'2021-09-11',197,5);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue20OE',1264,'2021-09-23',5,293);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei87Uo',895,'2022-12-08',165,258);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OU11eI',6793,'2020-10-03',2,39);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AI12aA',1550,'2020-12-16',280,232);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU35oI',5644,'2021-06-30',67,423);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OU09Ua',7983,'2023-12-23',466,305);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AA86oa',2570,'2021-02-28',283,344);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ae71eI',3465,'2023-05-29',364,215);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uo40Uo',6821,'2022-10-18',399,119);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo81eo',2912,'2021-03-09',256,272);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU63EI',3047,'2021-01-11',395,394);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eI57oO',3473,'2021-10-10',345,308);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie72Ai',1081,'2021-12-24',349,161);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ai72uU',5862,'2023-08-12',193,486);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EU56oi',2980,'2020-11-21',63,143);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei19oO',2441,'2023-10-25',45,77);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uo64aO',9496,'2023-08-07',31,180);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oe65eU',9529,'2023-02-19',48,185);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei06IO',2209,'2021-05-02',498,124);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa91oE',1849,'2023-03-04',157,124);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ou39Ua',5490,'2022-04-16',409,59);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia07Ee',4475,'2022-11-24',34,57);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei28Ea',6684,'2021-09-05',431,466);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU82IU',3953,'2022-06-01',240,46);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aA33aa',1192,'2022-01-13',160,243);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oo12oE',4691,'2021-10-09',45,225);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iA41iO',2921,'2021-06-02',130,228);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aa28oi',6051,'2020-05-27',463,147);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aO02oa',7679,'2023-06-27',312,300);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU61UE',8086,'2021-05-09',44,30);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eo03IO',3456,'2023-07-21',126,65);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo26Ee',5854,'2021-09-15',168,224);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee37ue',9102,'2021-08-16',163,457);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ui80Eo',6532,'2022-10-12',209,226);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('io46oI',7219,'2023-08-13',487,83);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AU07EU',7935,'2020-07-12',303,290);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO71UE',8272,'2020-09-05',103,82);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe45iI',883,'2021-05-10',483,47);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Eo53iA',4462,'2022-10-25',389,15);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aE62Ou',203,'2023-10-24',14,303);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OU02Oi',9881,'2022-05-29',63,136);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AI93iu',4842,'2021-06-26',161,248);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU02UA',1429,'2022-08-01',18,459);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II74IO',8496,'2021-10-01',45,356);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EA74Ee',4628,'2023-05-21',430,41);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uu64Ae',8055,'2021-02-11',187,72);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei16uO',2201,'2023-08-01',302,411);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iO64iO',3294,'2020-08-07',149,450);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo38AA',5623,'2020-07-16',325,315);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EO33aa',5317,'2021-05-01',40,479);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('io47eI',249,'2021-05-14',326,48);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aI26iu',8357,'2022-10-25',51,254);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Eo28Ai',1513,'2021-02-06',226,5);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OO49iI',8195,'2020-08-09',162,141);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IO18Eo',1753,'2023-11-13',257,220);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eE47eo',5097,'2023-10-14',415,199);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uU11Oa',8947,'2022-05-19',368,451);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI14Oi',3661,'2022-04-23',441,241);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii96uI',8517,'2020-10-10',306,25);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Eo30OA',6850,'2023-02-22',31,168);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue41ie',4061,'2021-08-18',81,116);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iO53OU',9839,'2020-05-27',365,443);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aA44ee',1174,'2023-10-01',260,314);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EU77OO',2973,'2023-07-01',28,294);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi02Au',3724,'2023-03-23',404,138);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uI25EU',8299,'2023-01-03',61,42);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia49II',8802,'2022-04-08',215,53);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uU98Ea',2536,'2021-10-14',223,155);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai53eu',1782,'2022-08-03',423,137);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IA52UE',1769,'2020-05-18',254,98);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO78aE',9520,'2021-07-12',106,300);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU31uA',4418,'2022-09-08',337,325);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU89iU',3893,'2022-01-24',163,253);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ii41OO',6760,'2021-08-14',137,38);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ai12ia',1649,'2022-07-20',464,417);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uI97Oo',404,'2020-11-23',224,5);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU75Oo',325,'2021-05-30',327,85);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE65ao',4225,'2021-04-28',175,158);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OO22ua',2516,'2021-08-03',39,417);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eI31ii',7820,'2021-05-18',185,175);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai45EU',5162,'2022-02-13',31,310);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II17IA',8094,'2022-04-22',395,290);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee85UE',6327,'2020-08-18',469,84);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ee35eO',9512,'2020-05-10',330,247);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eU21Ia',1585,'2020-10-28',187,123);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EU32EA',9555,'2023-04-16',352,159);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ii17oE',3846,'2023-10-01',347,232);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UA51II',2529,'2022-10-15',288,65);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oA40OE',3138,'2021-02-08',407,361);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ia75iI',515,'2021-10-25',445,459);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ue44IE',8411,'2023-05-02',144,139);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oO37ee',7798,'2022-06-29',302,335);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OU24IO',3252,'2023-08-09',347,491);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI71ai',9096,'2021-05-28',163,41);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo37Aa',5478,'2022-07-03',416,432);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ii71aa',2526,'2020-12-08',327,424);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AO68eE',2899,'2023-12-19',200,186);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oe19oo',5361,'2023-07-06',248,349);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ee40oA',4857,'2023-05-13',17,370);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU27iI',4501,'2020-10-15',263,224);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie67oo',1882,'2023-02-17',124,227);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ao12oO',6480,'2020-11-10',13,216);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea43oU',5959,'2023-06-04',130,483);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei86uu',8513,'2021-01-08',273,313);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OE34uO',4171,'2021-06-17',420,71);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ia25oI',1810,'2021-12-24',361,414);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aU88Oa',788,'2021-12-01',462,336);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oa18oe',9526,'2020-11-07',352,176);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eu36ii',8305,'2022-10-01',335,311);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oo75EU',6920,'2022-03-24',224,218);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ei64AA',59,'2023-10-24',17,306);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU77Ee',9396,'2021-08-07',22,84);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue18ae',6237,'2023-03-20',141,464);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UA53eO',8570,'2021-08-16',385,176);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Aa92OO',320,'2021-11-06',88,202);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii61AO',2228,'2021-10-03',462,468);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ii35OI',2600,'2022-06-15',108,452);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eI71ao',7580,'2021-04-20',180,135);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oI86Ea',7201,'2021-11-08',498,283);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ie77Ea',3638,'2021-01-26',216,231);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi09aU',5017,'2020-06-26',247,153);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uI81IE',3133,'2021-12-25',9,385);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OU42oI',8091,'2021-06-10',122,60);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IE40UE',8974,'2023-03-19',304,254);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea23aE',4774,'2022-06-14',440,437);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI10OE',6002,'2020-06-11',450,293);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eA48EO',9227,'2020-12-26',127,104);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo71iE',1402,'2023-10-04',189,92);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aI89oU',2561,'2021-07-04',409,339);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uu74Ie',7578,'2020-11-07',340,94);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aA92AI',9666,'2022-03-19',25,282);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uo96ai',8095,'2022-10-26',242,82);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iI08ee',3122,'2022-02-07',95,426);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue14oE',7468,'2020-08-02',34,130);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II77uI',8946,'2023-05-17',431,41);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU52AI',5671,'2023-11-17',188,30);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('au19Ui',2073,'2021-01-13',209,222);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iA54Ou',6365,'2023-11-23',188,223);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aU75IO',4870,'2023-04-05',261,491);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo52Ei',9316,'2022-12-30',41,321);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Iu47Ua',7321,'2023-04-08',485,109);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE80uo',48,'2022-12-01',396,304);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aI35Ea',3346,'2020-10-28',107,9);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uO63Ee',2060,'2023-06-26',407,163);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU09ai',7824,'2023-03-13',402,393);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Aa10iO',748,'2020-12-22',348,5);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iU69ua',1326,'2023-06-27',328,265);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ua56oU',2442,'2023-06-08',293,260);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iE33eo',7724,'2021-02-23',144,300);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oa36eI',7363,'2023-01-04',209,254);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ua82Ou',1987,'2023-05-11',460,272);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('II22iE',1081,'2023-12-12',229,320);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE54Ai',3631,'2021-08-31',298,342);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uo61AI',3691,'2020-05-14',36,364);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UE34II',6772,'2021-10-02',451,149);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ai88Ee',1478,'2021-09-09',190,486);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eU27ao',5119,'2021-09-05',226,216);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ea86oo',3334,'2022-05-06',301,378);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AE71UI',2049,'2021-06-17',215,327);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('iu61ea',181,'2023-05-27',380,304);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IO67aU',3502,'2021-03-18',151,301);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UE30eo',1315,'2021-12-01',156,133);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('AO74OU',7274,'2023-08-08',350,351);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO54ii',5806,'2021-06-24',448,482);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ui76EI',8244,'2020-06-06',416,448);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EE60IU',541,'2021-02-02',81,185);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oo40Eu',9882,'2022-11-20',251,468);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('eO48aa',9239,'2022-03-10',40,100);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU12UO',7068,'2022-05-25',241,64);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EO26oA',3784,'2020-11-26',417,173);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UE68Ie',9882,'2022-11-14',374,105);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ei90eI',9655,'2022-05-15',351,113);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ie38II',1572,'2020-06-14',430,48);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('aE35ii',4374,'2021-03-19',87,391);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU63ai',8874,'2020-12-29',160,213);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('oe51OO',8882,'2020-09-23',328,300);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI60ue',5994,'2022-05-18',188,244);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('EI77UE',167,'2023-06-02',60,214);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UU23OU',3852,'2021-05-24',244,57);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('uo17Io',7474,'2020-07-02',210,143);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Ue54UU',3402,'2023-03-10',202,500);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('IU87UI',1726,'2020-07-28',73,315);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('UO89Ei',9028,'2023-03-29',60,261);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Uo85Ea',692,'2020-12-25',2,278);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ae33Ue',4916,'2023-01-27',368,454);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('OA31Ae',1719,'2021-01-28',21,230);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ee15Oa',388,'2021-07-29',92,38);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('ea65UO',9174,'2021-11-12',34,277);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi77eu',638,'2021-04-02',467,333);
INSERT INTO commande (numCommande,nbExemplaire,dateLivraison,idProduit,idClient)
VALUES ('Oi58oU',3695,'2022-03-16',343,94);
