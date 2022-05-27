CREATE TABLE produit (
  idProduit number primary key,
  nomProduit varchar2(255) default NULL,
  typeProduit varchar2(255) default NULL,
  prix varchar2(255)
);

CREATE SEQUENCE produit_seq START WITH 1;

CREATE OR REPLACE TRIGGER produit_bit
    BEFORE INSERT
    ON produit
    FOR EACH ROW

BEGIN
    SELECT produit_seq.NEXTVAL
    INTO :new.idProduit
    FROM dual;
END;
/


INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('William, Kelsie, Alexis, Coby','11','542');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Mary, Ramona, Rama, Arden','13','724');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Martha, Brittany, Roanna, Zahir','17','142');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Uriah, Kirk, Zenaida, Mary','11','082');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Callie, Lamar, Chadwick, Bruno','1','981');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Phillip, Perry, Veda, Callum','17','453');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wesley, Carlos, Carter, Hilda','9','493');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zeph, Tad, Candice, Reed','13','841');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ezekiel, Ivor, Germane, Irma','1','645');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Shelly, Sopoline, Gray, Jonas','13','668');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dahlia, Dara, Karina, Farrah','9','730');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Odette, Yuli, Brynne, Adria','15','348');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ebony, Eric, Vance, Dexter','17','598');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jescie, Sebastian, Deanna, Mechelle','13','985');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Michael, Aline, Lucas, Eliana','7','617');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Renee, Benedict, Genevieve, Gemma','9','725');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Drew, Carla, Donovan, Hunter','19','502');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dustin, Bell, Blaze, Caryn','1','830');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kevin, Lael, Hayley, Acton','7','971');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keelie, Rinah, Cailin, Tanisha','19','407');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tanek, Zia, Jada, Meghan','19','121');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nasim, Lyle, Kato, Kevyn','11','285');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Garth, Dorian, Byron, Liberty','19','574');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Quinn, Judith, Lester, Priscilla','7','445');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Armand, Isabelle, Sydney, Andrew','5','254');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fredericka, Isadora, Oliver, Garth','17','704');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sierra, Callie, Carol, Emerson','9','445');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Venus, Catherine, Veda, Malcolm','1','580');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jade, Otto, Kiayada, Lee','5','682');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Seth, Joelle, Quin, Xavier','7','537');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Carolyn, Kermit, Leila, Montana','11','168');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ira, Darrel, Lois, Courtney','17','801');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Anjolie, Pandora, Judah, Kelly','13','417');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Joseph, Lacota, Mannix, Cassandra','5','938');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nero, Brent, Pearl, Briar','9','083');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Raymond, Inez, Sylvia, Acton','11','506');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sopoline, Violet, Uriel, Dana','17','928');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Vincent, Haviva, Henry, Hector','15','322');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Beck, Deborah, Rhonda, Marvin','17','654');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Plato, Dacey, Holly, Aline','7','611');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kaseem, Randall, Maile, Ezra','19','288');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('James, Piper, Adele, Leslie','5','344');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kathleen, Preston, Emerson, Abigail','7','186');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Byron, Eugenia, Nevada, Ulric','1','754');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Montana, Penelope, Abel, Bruce','9','781');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Garrison, Reese, Sierra, Ivory','13','617');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Aristotle, Rashad, Aiko, Xyla','19','088');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lewis, Salvador, Noelani, Brent','7','030');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Slade, Maxwell, Grady, Scott','11','890');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Boris, Rhiannon, Melyssa, Dylan','11','583');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Camden, Kaseem, Adam, Madonna','1','344');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('August, Carter, Laith, Dolan','15','463');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nadine, Alden, Nasim, Brian','15','724');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Evan, Amethyst, Heather, Cathleen','9','428');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Justina, Shaeleigh, Leo, Mannix','7','903');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Damian, Ciaran, Garrett, Florence','11','146');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dieter, Alana, Martin, Caleb','13','871');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Imani, Shea, Wyoming, Cathleen','13','322');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jack, Quinn, Ashton, Gary','13','513');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kamal, Deirdre, Kaye, Kerry','13','245');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Josephine, Ann, Yardley, Mechelle','13','126');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Judith, Camden, Hayden, Keane','1','534');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Adrian, Knox, Kelly, Chantale','7','987');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Marvin, Joel, Giselle, Kerry','17','422');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Diana, Stella, Channing, Eaton','15','364');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Mannix, Anika, Rogan, Colin','9','812');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ashton, Yen, Jada, Flynn','3','557');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fay, Madaline, Megan, Darius','15','807');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Phillip, Hamish, Serena, Hyatt','9','226');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Louis, Lesley, Michael, Rama','15','765');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Basil, Kennedy, Cade, Rhoda','3','842');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lisandra, Unity, Timon, Blaze','19','828');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Evelyn, Breanna, Amelia, Francesca','7','852');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hunter, Tatyana, Nicholas, Carson','9','655');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kasper, Beatrice, Robert, Willa','9','815');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alec, Kimberly, August, Haviva','11','124');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cara, Keegan, Forrest, Bruno','5','075');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fay, Ima, Clio, Ruth','13','785');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Elijah, Shelby, Fallon, Brian','15','529');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Maia, Rhoda, Hashim, Aaron','11','180');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rinah, Preston, Caldwell, Bradley','17','747');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Scarlet, Talon, Rogan, Gavin','7','675');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Joan, Reese, Kirestin, Harrison','11','302');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Indigo, Martha, Stella, Carl','13','523');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Yoko, Tyrone, Thomas, Eagan','17','274');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Clementine, Jin, Jessamine, Kalia','13','620');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cameron, Patricia, Ginger, Noelle','5','922');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Celeste, Dara, Yardley, Kylynn','13','233');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Francis, Anastasia, Tate, Cruz','1','356');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Madaline, Cameron, Giacomo, Britanni','5','619');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Althea, Guy, William, Graham','17','581');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dolan, Harlan, Amber, Graiden','9','912');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Macaulay, Ruby, Palmer, Stephanie','19','860');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jerry, Zena, Leslie, Bo','3','387');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Charissa, Evangeline, Conan, Kylynn','17','771');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ruby, Brock, Dahlia, Dylan','19','672');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cody, Craig, Kyle, Yardley','19','954');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Richard, Lacey, Joan, Wade','17','403');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Naomi, Juliet, Jeanette, Silas','15','813');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Shad, Colette, Gregory, Raymond','9','104');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Phillip, Caleb, Kennedy, Ariel','13','164');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Allegra, Quon, Myles, Mercedes','1','416');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nyssa, Erich, Darius, Maite','1','066');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Matthew, Warren, Seth, Alma','13','454');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sandra, Martena, Mona, Ivor','19','147');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bertha, Dante, Aristotle, Lars','1','478');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Regina, Forrest, Gil, Leonard','15','314');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Odysseus, Germaine, Jillian, Kelly','15','953');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tad, Roanna, Forrest, Jocelyn','3','566');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jelani, Brielle, Ingrid, Amaya','13','339');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hilda, Karyn, Demetria, Yael','5','736');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rinah, Katelyn, Emi, Xaviera','11','248');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Stone, Phoebe, Cain, Martina','17','338');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sonia, Garrett, Jillian, Hedy','1','650');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Pearl, Clark, Gisela, Eric','1','982');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Laura, Zenia, Chastity, Hyatt','9','108');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nicole, Maryam, Sean, Hu','17','974');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Eliana, Akeem, Colorado, Noble','3','876');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Connor, Neville, Ian, Theodore','9','956');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sydney, Ariel, Germane, Quentin','7','619');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Amy, Moana, Harrison, Dalton','17','853');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kadeem, Leonard, Nora, Jillian','1','187');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tara, Hilel, Harper, Lael','5','543');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Willa, Patricia, Melvin, Emerald','3','393');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kenneth, Garrett, Kalia, Ursa','3','833');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Flynn, Kenyon, Xenos, Graham','9','592');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gwendolyn, Dahlia, Garth, Ina','15','866');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kitra, Caldwell, Buckminster, Uriah','3','285');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Amber, Shannon, Willa, Yasir','3','888');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Isaac, Jonah, Seth, Joseph','19','317');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Charde, Pearl, Raymond, Melyssa','15','414');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chaim, Marsden, Lila, Preston','13','948');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Karyn, India, McKenzie, Daniel','7','463');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Samson, Slade, Lois, Bruce','1','965');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Eric, Lisandra, Erin, Emma','17','182');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nichole, Zeus, Phillip, Justin','11','315');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wilma, Rina, Ginger, Harriet','7','446');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Leroy, Ian, Bethany, Whitney','13','872');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ora, Malcolm, Joelle, Noel','1','021');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Inga, Melodie, Sade, Angela','17','231');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hedley, Sybil, Armand, Madeline','19','642');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rachel, Xantha, Catherine, Tamekah','13','086');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Judah, Otto, Sophia, Upton','7','755');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zachery, Noelle, Judith, Bruno','17','420');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dylan, Inga, Abraham, Cecilia','9','351');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chava, Brady, Baker, Omar','13','858');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chaim, Nash, Emi, Dominic','7','180');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Amaya, Liberty, Kiara, Brock','3','343');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tana, Paloma, Zeph, Tanya','17','467');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brianna, Russell, Leroy, Tamara','5','267');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dean, Cody, Serina, Denton','9','759');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Abra, Wyatt, Amethyst, Curran','3','046');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Channing, Colorado, Quon, Mason','1','858');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nathan, Fuller, Uma, Juliet','17','175');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jolie, Evan, Kirk, Uriah','3','705');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ruby, Eugenia, Aristotle, Alisa','13','834');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Colette, Colorado, Skyler, Boris','11','527');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Marsden, Jerome, Lois, Melvin','5','849');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ignatius, Barclay, Mason, Melanie','19','735');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Desirae, Jason, Melvin, Mira','5','564');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Abraham, Destiny, Cedric, Bruce','5','463');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alfreda, Levi, Xander, Geoffrey','7','331');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Walter, Jaden, Fay, Portia','13','440');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Leila, Sonia, Connor, Alisa','11','214');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nina, Sage, Celeste, Moses','15','625');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wang, Kimberley, Idola, Dara','17','173');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Athena, Lewis, Acton, Whilemina','9','765');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lacy, Priscilla, Erica, Gavin','1','462');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('August, Jonas, Xander, Preston','11','978');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Odysseus, Phoebe, Thor, Francesca','11','920');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Quin, Vincent, Slade, Salvador','9','772');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Mikayla, Wayne, Thaddeus, Isaac','15','941');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kenyon, Kyra, Harrison, Talon','9','972');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hu, Nathan, Kaseem, Lacy','17','217');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Shea, Latifah, Micah, Gray','9','084');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ahmed, Hu, Talon, Ulysses','9','241');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kylan, Donna, Eliana, Veda','1','381');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fleur, Gage, Oleg, Brianna','7','757');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Whitney, Tobias, Yoshio, Hakeem','5','611');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hammett, Lester, Micah, Ishmael','9','474');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Daphne, Willa, Emerson, Elijah','3','483');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zoe, Serena, Moses, Nyssa','11','852');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wyatt, Aquila, Quentin, Odette','11','367');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keane, Amal, Victoria, Winifred','9','162');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tobias, Raphael, Alfonso, Tamara','5','664');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Madonna, Jordan, Kylynn, Clare','5','173');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keelie, Rafael, Madison, Uma','11','393');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alea, Carter, Aimee, Jaime','5','731');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Christian, Josephine, Kane, Amery','1','344');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Byron, Kirsten, Jameson, Lane','1','233');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jennifer, Hu, Ora, Sopoline','7','883');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cairo, August, Rhea, Kamal','1','804');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kane, Nicole, Angelica, Roary','17','764');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Simon, Colton, Gail, Maxine','7','831');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Len, Lila, Jasper, Cameran','1','443');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Josiah, Urielle, Vivian, Angela','1','796');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bernard, Anika, Brady, Daquan','13','348');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Clinton, Beck, Bell, Slade','19','752');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rachel, Mia, Clementine, Shelby','17','584');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ava, Cally, Yoko, Beck','17','981');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Claudia, Reece, Chantale, Frances','11','768');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Imelda, Vladimir, Wynter, Athena','11','179');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Denise, Baker, Urielle, Myra','5','259');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Reese, Paki, Ray, Xenos','17','288');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lareina, Jonah, Sage, Otto','1','312');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lyle, Ocean, Gisela, Risa','7','242');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Abdul, Miranda, Geoffrey, Adena','19','118');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Channing, Yael, Calvin, Jolene','13','488');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Timon, Jennifer, Gray, Nomlanga','11','509');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Clio, Ina, Andrew, Jena','15','854');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ciaran, Emery, Kimberley, Joshua','5','787');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kenneth, Doris, Cassady, Isabella','1','111');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Stone, Rashad, Gillian, Ethan','11','956');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alfreda, Claire, Basia, Malik','11','673');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Merritt, Amir, Bianca, Hiroko','9','859');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hope, Tiger, Christopher, Dale','15','297');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hamish, Juliet, Serina, Armando','7','689');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gavin, Lev, Yardley, Velma','11','981');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Upton, Ross, Wing, Emma','9','324');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Raya, Theodore, Daquan, Xander','9','525');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lars, Madaline, Rhonda, Elijah','17','826');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Clementine, Fuller, Rajah, Mason','11','177');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Walter, Rhonda, Steel, Hector','5','697');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nyssa, Beau, Cassidy, Angela','11','284');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wylie, Seth, Oliver, Elmo','13','477');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Victor, Brittany, Keith, Colby','15','695');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Vivian, Finn, Ulric, Tamekah','1','046');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Germane, Madison, Dahlia, Alexandra','1','410');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Emmanuel, Moses, Brody, Shafira','1','538');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zorita, Alexander, Slade, Donna','15','483');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lila, James, Lionel, Wallace','9','186');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keefe, Kathleen, Velma, Patrick','13','891');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brady, Alexandra, Jena, Colt','15','356');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hedwig, Shay, Timon, Indira','13','135');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lysandra, Lacota, Ulla, Mannix','7','304');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Xanthus, Aphrodite, Jasper, Sara','9','887');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Britanney, Chelsea, Kellie, Judah','15','485');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Carter, Anthony, Yolanda, Yvonne','15','332');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Orli, Mechelle, Lois, George','19','822');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brian, Regina, Adara, Bryar','17','125');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Xena, Willow, Myles, Kane','13','462');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Colby, Nicole, Zenaida, Jonah','1','471');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cooper, Zachery, Brynne, Xantha','15','895');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Isaac, Wing, Zenia, Nicole','9','037');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Angela, Kasper, Solomon, Joseph','3','164');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Martha, Oscar, Boris, Grace','13','742');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Vanna, Irene, Yuli, Hall','17','871');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tarik, Alan, Rooney, Gloria','19','492');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dominic, Ciaran, Scarlett, Nadine','9','381');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Maris, Vivien, Rigel, Arsenio','17','316');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Inez, Lance, Neve, Ima','19','181');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Orson, Uriel, Caldwell, Echo','7','845');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Pamela, Damian, Palmer, Aline','13','288');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Montana, Gail, Kim, Leroy','17','613');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jorden, Molly, Cain, Solomon','1','481');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Whoopi, Kibo, Ann, Rae','3','427');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Clarke, Susan, Nehru, Stewart','1','839');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Colton, Clinton, Kellie, Genevieve','11','855');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Desiree, Austin, Yeo, Amela','5','622');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Armand, Latifah, Lionel, Zeph','17','551');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ira, Rogan, Shellie, Damian','3','652');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alisa, Clarke, Mufutau, Slade','13','433');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Christen, Richard, Noah, Jade','5','635');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sandra, Sonya, Nelle, Edan','5','921');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kyra, Elliott, Isadora, Jenette','5','033');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Porter, Ebony, Farrah, Katelyn','9','860');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bernard, Ciara, Claudia, Jayme','3','204');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keane, Anjolie, Trevor, Tatyana','15','998');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chase, Neville, Sandra, Lareina','19','331');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Buffy, Amaya, Cyrus, Ryder','1','864');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bradley, Medge, Veronica, Sydnee','19','780');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Darrel, Ira, Autumn, Azalia','1','610');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brock, Honorato, Lareina, Erich','15','326');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Richard, Darius, Blythe, Arsenio','17','148');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keegan, Kibo, Owen, Hunter','15','352');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Violet, John, Martha, Brennan','19','380');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zena, Ivor, Ashton, Blaze','11','218');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Larissa, Kathleen, Hector, Marshall','3','169');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Laith, Dale, Brady, Chelsea','15','736');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Calvin, Autumn, Savannah, Rosalyn','1','907');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ima, Jack, Len, Jared','15','860');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nehru, Quinlan, Iliana, Marny','3','392');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Neve, Cassidy, Nerea, Mallory','1','429');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Emi, Paul, Suki, Idola','1','679');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Stacy, Shoshana, Adrienne, Kristen','5','609');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sage, Cailin, Finn, Alika','15','800');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sean, Tasha, Danielle, Armando','17','124');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gemma, Laith, Theodore, Dean','17','576');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sylvia, Aurelia, Jorden, Garrett','1','573');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hedley, Leila, Olympia, Kaye','1','390');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Linus, Orson, Fiona, Yardley','15','130');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Regan, Astra, Hop, Leandra','9','037');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Whilemina, Aaron, Zane, Macon','13','781');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Felix, Evelyn, Quintessa, Breanna','17','677');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lamar, Clayton, Anjolie, Leroy','5','675');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Holly, Damon, Hayley, Cedric','15','724');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rama, Yasir, Alyssa, Lareina','3','906');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bell, Heidi, Mia, Nolan','9','118');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alvin, Kerry, Melissa, Emma','11','427');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Summer, James, Avram, Colorado','17','592');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dorian, Ann, Sharon, Ariana','13','153');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Randall, Xyla, Riley, Magee','11','448');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Maxwell, Riley, Gisela, Leilani','5','129');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Justine, Coby, Hedy, Ursa','15','386');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dillon, Cassidy, Ariel, Basia','13','472');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Quinn, Cheryl, Barry, Denton','15','016');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Anne, Jena, Macaulay, Eve','11','338');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('August, Benedict, Serina, Yoshio','13','411');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Felix, Anne, Melodie, Aristotle','17','542');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nichole, Isabella, Lila, Brendan','1','789');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Candace, Rafael, Rafael, Cody','1','614');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Suki, Simon, Astra, Graiden','9','672');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jeremy, Bryar, Christine, Basia','5','425');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chastity, Jescie, Ivy, Maite','7','238');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Paul, Prescott, Marcia, Malcolm','13','163');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Josiah, Jillian, Hakeem, Tobias','3','171');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Darius, Cameron, Jerome, Fitzgerald','11','505');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Frances, Vanna, Chadwick, Zephania','19','624');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Halla, Donna, Philip, Edan','19','762');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Giselle, Dante, Uma, Holly','13','417');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Imogene, Troy, Deacon, Jason','9','033');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zelda, Jasper, Oprah, Nathan','3','425');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rogan, Palmer, Nita, Benedict','19','802');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Guinevere, Serena, Lane, Berk','19','265');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cyrus, Gregory, Virginia, Sierra','17','032');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gage, Ulla, Bianca, Anne','7','128');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Caesar, Kimberley, Adrienne, Brody','1','630');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Regan, Ria, Haviva, Adria','19','668');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Roary, Cally, Lucy, Rana','19','362');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('April, Driscoll, Levi, Wade','19','011');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kane, Mercedes, Malcolm, Nolan','11','872');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Raymond, Dora, Gray, Ryder','17','537');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nita, Jeremy, Andrew, Francesca','3','470');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Marny, Laura, Jermaine, Vernon','15','147');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Abra, Cleo, Whoopi, Geraldine','11','921');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kylie, Amethyst, Dorothy, Erin','7','833');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rana, Bryar, Uriah, Dawn','9','754');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Keane, Kirestin, Odysseus, Alexis','3','514');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Adam, Morgan, Brent, Laurel','5','827');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cheryl, Ferdinand, Stella, Alec','3','302');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cynthia, Nigel, Mari, Maia','9','466');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Patrick, Carly, Dorothy, Mara','9','731');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sade, Norman, Clayton, Pearl','17','878');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fuller, Ashton, Preston, Aristotle','11','154');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hadassah, Avye, Raymond, Kane','13','066');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Price, Lee, Malik, Quon','1','487');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ann, Hayfa, Tamekah, Damian','5','124');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Beau, Serina, Ferris, Imelda','9','811');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Louis, Allegra, Benedict, Kirby','19','410');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Scott, Morgan, Demetrius, Michelle','5','817');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Steel, Abigail, Alden, Francesca','3','133');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hiroko, Jolene, Karleigh, Hayley','9','354');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ruth, Chadwick, Shaeleigh, Jasper','13','585');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Xavier, Charity, Quinn, Brett','15','215');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Blake, Karen, Haviva, Athena','15','223');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alice, Britanney, Malachi, Ifeoma','7','132');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ferris, Nina, TaShya, Barrett','15','537');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Mohammad, Aurelia, Ralph, Leandra','5','725');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chloe, Minerva, Timon, Camden','1','136');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Rylee, Daphne, Lucian, Justine','17','723');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Halee, Kane, Stephen, Kay','15','836');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Iliana, Chiquita, Kay, Candice','15','315');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wylie, Kai, Hasad, Isaiah','11','142');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Todd, Nigel, Priscilla, Claire','5','564');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Angelica, September, Paul, Scott','3','368');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jael, Rose, Delilah, Hadley','3','577');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Linus, Jaden, Price, Scott','11','149');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jack, Jonas, Cleo, Roth','7','111');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kane, Charde, Tatyana, Carolyn','15','036');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Stuart, Lael, Ciaran, Kasimir','9','946');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wyatt, Lamar, Mufutau, Martin','19','158');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Melvin, Lucian, Shafira, Lamar','3','787');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lunea, Dante, Amaya, Emerald','11','069');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Quinlan, Quyn, Gray, Roary','15','934');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Palmer, Bevis, Vivien, Brynne','9','119');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brittany, Ferdinand, Paloma, Oleg','15','997');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Idola, James, Evangeline, Walter','5','622');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lysandra, Quinlan, Malachi, Aaron','19','917');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Chester, Arden, Kay, Xena','9','634');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Laurel, Louis, Wang, Naida','7','587');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Susan, Ainsley, Avram, Emerald','7','247');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Armand, Uriel, Ila, Cruz','1','372');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hilda, Philip, Mufutau, Azalia','15','982');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Serena, Venus, Colt, Joelle','1','525');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brett, Bertha, Malcolm, Beau','1','641');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bernard, Ulla, Marsden, Eve','9','324');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gabriel, Cadman, Geoffrey, Beck','19','921');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Daryl, Wanda, Phelan, Yetta','7','970');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fritz, Louis, Allen, Vaughan','11','686');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Teegan, Yvonne, Maia, Quinn','1','786');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jerome, Sylvia, Chandler, Ignatius','7','170');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Eaton, Piper, Julie, Travis','9','816');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kyle, Axel, Ria, Eve','19','883');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jolie, Felicia, Karleigh, Mariko','9','415');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Channing, Madeline, Florence, Rose','19','525');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hayfa, Shad, Willow, Emi','5','331');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Daquan, Ferdinand, Demetrius, Dillon','7','379');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Olivia, Cynthia, Skyler, Perry','11','293');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Uta, Rowan, Jasper, Grant','7','145');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Richard, Rhea, Tad, Nolan','15','722');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cameron, Roanna, Beatrice, Myles','9','442');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Brennan, Kelly, Neve, Martena','17','535');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ciaran, Brenden, Raymond, Byron','5','703');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Remedios, Sopoline, Daniel, Keane','7','298');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Morgan, Ariana, Carter, MacKensie','1','863');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Carolyn, Emi, Ira, Branden','17','818');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Sandra, Griffin, Althea, Kitra','19','298');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alfonso, Dorothy, May, Chadwick','3','640');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Oprah, Conan, Nigel, Jemima','7','635');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kaye, Ronan, William, Christopher','3','666');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hollee, Kermit, Quyn, Andrew','3','257');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Odysseus, Tiger, Risa, Aline','17','656');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Bethany, Zeus, Aphrodite, Reece','19','045');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kenneth, Zachery, Cedric, Cade','11','701');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Xander, Zena, Sean, Althea','5','602');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kaseem, Jesse, Jane, Jennifer','15','169');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Merritt, Hollee, Keaton, Ivor','9','086');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hyacinth, Damian, Wanda, Jane','13','354');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kellie, Marcia, Gray, Beck','9','343');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Victoria, Ori, Phillip, Teegan','7','696');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('George, Malachi, Armando, MacKenzie','1','645');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tate, Molly, August, Marah','9','587');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Noelle, India, Ryder, Jennifer','13','952');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lawrence, Judith, Carla, Tate','15','579');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('May, Belle, Rachel, Marvin','17','038');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Camilla, Sydney, Cassidy, Dane','9','579');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kitra, Adrian, Rosalyn, Fletcher','17','617');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ross, Alden, Paki, Ronan','19','471');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Risa, Nero, Aspen, Ferris','13','967');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Roth, Eugenia, Camilla, Lee','3','386');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Jasper, Chloe, Hop, Amaya','19','033');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Quon, Kirk, Craig, Sybill','9','366');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Roth, Kyla, Myra, Quinn','5','318');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zia, Yasir, Honorato, Hammett','17','980');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Burton, Gavin, Tyrone, Alexandra','1','153');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Steven, Cecilia, Jason, Raphael','7','847');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Emmanuel, Tatum, Mohammad, Guy','19','645');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Harrison, Ralph, Ivan, Oscar','9','572');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Pearl, Chava, Adria, Marvin','3','680');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hoyt, Martha, Jessica, Lacy','19','768');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Flavia, Eugenia, Kiayada, Bethany','5','776');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Josiah, Sonia, Kasper, Dolan','7','152');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Mikayla, Byron, Scarlet, Damon','15','032');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Joshua, Jelani, Ella, Shelley','11','682');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Xyla, Nola, Alexandra, Pamela','17','167');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Iola, Yasir, Mari, Duncan','19','452');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cody, Sheila, Rigel, May','19','427');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Asher, Quyn, Moana, Eugenia','15','873');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Faith, Berk, Myles, Jack','15','712');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cailin, Kerry, Britanney, Malik','17','868');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Tamara, Heidi, Zephania, Upton','9','181');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Amal, Martena, Moses, Blossom','11','594');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lani, Emery, Kelly, Felix','3','269');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Troy, Ulric, Noah, Rooney','9','962');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Carolyn, Quail, Maisie, Ella','15','476');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Leilani, John, Hayfa, Allen','15','374');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kessie, Ila, Bruce, Diana','11','850');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Dominique, Declan, Fuller, Brady','19','240');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Randall, Robert, Ian, Nathan','19','327');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nerea, Clementine, Madaline, Cooper','11','847');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hilda, Jakeem, Jordan, Hollee','15','744');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Alexander, Fuller, Shellie, Hammett','19','316');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lamar, Tyler, Rahim, Latifah','19','646');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Iola, Devin, Scarlet, Julie','19','263');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Richard, Yuri, Fritz, Rana','11','447');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kirby, Brynn, Kennedy, Akeem','7','820');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kamal, Mara, Lyle, Deacon','17','243');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kyle, Calvin, Shoshana, Burton','7','324');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fletcher, Cassady, Timothy, Jeremy','7','626');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Cruz, Summer, Kevin, Brenda','11','793');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Fritz, Allistair, Francesca, Nayda','11','816');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Halla, Paloma, Clarke, Cooper','1','057');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Maxine, Ginger, Quynn, India','13','456');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nicole, Yen, Vivian, Pearl','5','846');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Zephania, Ali, Quail, Angelica','17','439');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Herman, Ivana, Lesley, Curran','17','518');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Graiden, Odette, Chaim, Nola','19','239');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gavin, Judah, Tanek, Wilma','11','841');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Winter, Jerome, Lael, Norman','19','442');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Wendy, Yeo, Karina, Benjamin','3','353');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Leo, Emerson, Charity, Aladdin','3','633');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Amethyst, Clayton, Simon, Coby','15','438');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Piper, Ivor, Hayden, Kirk','1','781');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Lionel, Howard, Nathaniel, Emerson','3','162');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Summer, Clarke, Jennifer, Dillon','19','487');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Abra, Calvin, Rebekah, Salvador','5','656');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Astra, Noelle, Rose, Warren','9','576');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Kelsey, Edward, Shelley, Priscilla','7','886');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Meghan, Clio, Reese, Jane','7','083');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Nola, Wang, Yuli, Meredith','9','154');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Griffin, Kylie, Jordan, Dominique','13','376');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Katell, Leila, Echo, Cally','17','055');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Miranda, Magee, Darryl, Wanda','5','825');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Irma, Vance, Jaquelyn, Uta','13','112');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Hamish, Allegra, Ivana, Barry','19','963');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Medge, Kieran, Alice, Damon','3','492');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Ulric, Xaviera, Daquan, Clementine','17','659');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Evelyn, Whitney, Angela, Ronan','1','814');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Melodie, Holmes, Hilel, Unity','7','983');
INSERT INTO produit (nomProduit,typeProduit,prix)
VALUES ('Gillian, Kirk, Mira, Jasper','11','891');
