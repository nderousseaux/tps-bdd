CREATE TABLE "client" (
  idClient number primary key,
  "nomClient" varchar2(255) default NULL,
  "prenomClient" varchar2(255) default NULL,
  "email" varchar2(255) default NULL,
  "date" varchar2(255),
  "adresseIP" varchar2(255),
  "language" varchar2(100) default NULL,
  genre varchar2(255)
);

CREATE SEQUENCE client_seq START WITH 1;

CREATE OR REPLACE TRIGGER client_bit
BEFORE INSERT ON "client"
FOR EACH ROW

BEGIN
  SELECT client_seq.NEXTVAL
  INTO   :new.idClient
  FROM   dual;
END;
/


INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barlow','Ruth','neque.sed.eget@icloud.net','2019-09-15','451.728.326.678','Italy','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dalton','Vance','ante.dictum@protonmail.couk','2019-10-12','935.117.868.443','Italy','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bowers','Shelley','cursus.purus@google.couk','2020-11-21','271.230.177.907','Turkey','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dennis','Nevada','tellus@hotmail.edu','2017-01-27','965.120.854.552','New Zealand','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Holmes','Xyla','eu.metus@hotmail.edu','2020-02-11','565.441.182.720','United Kingdom','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wolf','Lila','amet@protonmail.ca','2018-01-6','751.137.119.634','Spain','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Talley','Mikayla','sodales.elit@icloud.edu','2017-04-28','073.556.308.625','Germany','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Good','Mannix','aliquam.arcu@outlook.com','2020-04-19','574.627.089.371','Indonesia','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lester','Dalton','nunc@hotmail.net','2019-08-1','366.574.534.082','United Kingdom','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Whitaker','Vance','massa.rutrum@google.com','2021-02-15','316.757.224.328','United Kingdom','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chambers','Todd','neque.non@icloud.net','2019-11-20','351.502.731.484','Nigeria','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gill','Nero','est@outlook.ca','2017-03-15','841.856.555.124','United Kingdom','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lott','Macaulay','phasellus@google.com','2020-11-17','755.231.005.837','Germany','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Merritt','Ciara','elit@icloud.net','2019-12-22','738.346.752.882','Italy','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Vasquez','Emmanuel','viverra.maecenas@protonmail.edu','2021-09-22','660.514.185.873','New Zealand','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jacobs','Gay','cursus.diam@icloud.net','2020-10-23','715.416.635.286','Netherlands','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Holloway','Hamilton','donec.dignissim.magna@outlook.edu','2021-07-24','374.126.828.677','France','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hutchinson','Matthew','malesuada.augue@protonmail.net','2022-05-19','744.767.956.057','Costa Rica','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Britt','Paki','gravida@protonmail.net','2021-06-20','173.283.542.437','India','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wagner','Callie','vitae.odio.sagittis@aol.edu','2018-04-29','234.508.165.812','Belgium','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ramsey','Callum','ac.urna@yahoo.edu','2021-10-25','472.179.116.058','Austria','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dennis','Patience','vel.faucibus@outlook.edu','2017-07-9','451.748.128.588','Italy','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Quinn','Russell','semper.erat@protonmail.com','2022-03-23','564.258.710.958','United States','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kane','Melanie','aliquam.adipiscing@hotmail.ca','2018-12-27','156.608.912.152','Colombia','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guerra','Harrison','dis.parturient@icloud.org','2021-12-10','666.455.248.928','Vietnam','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Franks','Victor','elementum.sem@outlook.ca','2018-11-16','598.353.519.553','Canada','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cotton','Alexander','dolor@protonmail.com','2019-01-13','678.615.365.187','Vietnam','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Duffy','April','vitae.erat@icloud.com','2021-04-6','667.018.111.141','Italy','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Booth','Jasmine','sit.amet@google.edu','2020-02-8','355.147.643.463','Canada','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Holloway','Gloria','morbi.accumsan.laoreet@hotmail.ca','2018-05-10','640.848.688.557','New Zealand','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Fowler','Michael','felis@outlook.edu','2022-04-25','259.338.849.885','Austria','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('French','Dexter','egestas.blandit.nam@icloud.couk','2021-10-25','741.269.232.052','Ireland','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sexton','Hedda','a.neque@aol.com','2018-06-15','617.677.482.338','Mexico','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bird','Shelly','egestas.nunc.sed@hotmail.ca','2017-10-11','765.178.202.896','Peru','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Golden','Melodie','malesuada.fames@outlook.com','2022-05-22','662.665.764.791','India','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wiggins','Hanae','eget.metus@outlook.ca','2021-09-15','477.952.653.853','United Kingdom','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Carey','Frances','interdum@yahoo.net','2020-10-30','717.092.930.431','Ireland','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wooten','Armand','eleifend.cras@google.net','2018-01-20','801.871.459.685','Spain','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hill','Uta','fermentum@aol.ca','2019-09-16','727.699.168.179','Sweden','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dixon','Katelyn','luctus.curabitur@protonmail.net','2022-05-20','925.136.433.140','France','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Houston','Basil','iaculis.odio@protonmail.edu','2018-02-8','881.382.552.859','Peru','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harper','Benjamin','magnis.dis@aol.ca','2018-06-12','656.682.552.720','Austria','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gross','Doris','libero.proin.mi@protonmail.ca','2017-07-24','037.446.983.161','Chile','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Phelps','Arthur','sit.amet@icloud.com','2020-08-13','552.152.669.960','Germany','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mercado','Caleb','consectetuer@google.com','2020-05-2','441.272.300.210','Canada','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Marks','Kay','sagittis.duis@protonmail.edu','2019-09-1','894.674.612.253','Brazil','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mccoy','Hammett','elit@protonmail.couk','2021-06-15','856.818.514.135','Netherlands','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Nieves','William','a.auctor@hotmail.com','2019-06-29','363.381.172.903','Turkey','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kirkland','Astra','tempor@hotmail.edu','2022-05-11','678.478.273.132','Nigeria','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Carlson','Steven','risus@hotmail.edu','2022-02-11','678.852.674.556','Mexico','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ferrell','Paul','justo@yahoo.ca','2022-04-20','623.837.168.430','Germany','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gonzales','Cynthia','cras.convallis@hotmail.edu','2020-06-16','411.165.652.125','Colombia','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dunlap','Ignacia','quisque.imperdiet.erat@outlook.ca','2020-01-4','344.135.364.074','China','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ramos','Tatum','faucibus.leo@icloud.net','2017-03-12','285.177.171.523','Pakistan','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Holmes','Bruno','fermentum.convallis@outlook.edu','2019-01-3','321.721.355.336','New Zealand','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Keith','Dorian','molestie.sed@protonmail.net','2018-05-8','476.251.326.497','Brazil','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Prince','Maite','velit.in@google.net','2017-03-5','631.484.796.019','Canada','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rojas','Melodie','sed.eu.nibh@protonmail.org','2021-05-29','344.842.132.226','Costa Rica','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcintyre','Hamilton','quis.pede@aol.ca','2018-03-29','467.185.222.682','United States','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Albert','Driscoll','blandit.congue@aol.net','2018-06-8','794.804.813.143','Indonesia','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guy','Denton','pede.cum.sociis@aol.edu','2018-07-30','688.356.710.234','Nigeria','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Baldwin','Jade','duis.ac.arcu@outlook.edu','2017-06-21','658.630.201.272','Spain','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Waller','Leigh','egestas@aol.net','2022-10-7','713.673.555.475','Germany','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pitts','Deirdre','augue.scelerisque@hotmail.net','2021-02-22','652.150.356.647','Austria','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Buchanan','Ayanna','massa.vestibulum@aol.edu','2022-09-21','736.178.527.641','Russian Federation','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Malone','Ria','massa.integer.vitae@yahoo.ca','2019-05-15','643.574.764.567','Mexico','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Johnson','Quinn','tellus@outlook.com','2021-06-30','417.492.618.385','Netherlands','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Levy','Scott','phasellus.elit.pede@icloud.ca','2021-02-15','188.368.884.153','Pakistan','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bass','Erasmus','mauris@protonmail.couk','2020-05-17','511.516.474.560','Chile','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Turner','Vincent','curabitur.consequat.lectus@protonmail.net','2018-02-9','236.164.101.151','Mexico','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Martinez','Vance','hendrerit.donec@yahoo.com','2019-04-28','788.850.571.152','Australia','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Tate','Irma','cursus.integer@aol.couk','2017-05-14','378.235.875.516','Austria','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Nielsen','Diana','convallis.erat@google.edu','2018-04-8','574.330.024.807','Australia','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mccarty','Ori','vitae@aol.edu','2018-10-21','722.057.564.269','India','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Head','Xander','lectus.rutrum.urna@outlook.ca','2021-04-6','221.658.359.317','China','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Alford','Jackson','litora.torquent@outlook.net','2018-06-27','783.862.754.980','Sweden','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Green','Sopoline','cubilia.curae@hotmail.org','2018-01-21','377.781.749.497','Peru','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Petersen','Suki','turpis.nulla@aol.com','2017-01-5','823.435.644.615','Vietnam','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('House','Lawrence','at.velit.cras@outlook.com','2017-07-13','985.813.283.281','Australia','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gutierrez','Sacha','nec.metus@hotmail.com','2021-05-3','899.065.985.956','Spain','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Black','Lee','in.condimentum@google.net','2017-03-13','657.515.232.177','Sweden','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richard','Kiayada','aliquam.vulputate.ullamcorper@icloud.net','2017-07-28','314.504.235.784','New Zealand','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Morin','Hammett','dapibus@aol.edu','2022-02-26','437.006.434.825','India','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kinney','Uriah','convallis.dolor@aol.ca','2021-01-3','278.447.865.892','United Kingdom','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guzman','Finn','neque@google.com','2017-02-25','099.524.753.385','Netherlands','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Valdez','Drake','lorem@yahoo.com','2021-08-25','294.356.122.816','Spain','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sweeney','Hamish','fusce.aliquet.magna@protonmail.net','2019-06-2','554.439.241.386','China','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Huff','Orson','morbi.tristique.senectus@protonmail.com','2017-09-20','577.861.683.308','Canada','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Griffith','Velma','ipsum.nunc.id@outlook.com','2018-09-23','441.455.651.501','Vietnam','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dixon','Ella','in.faucibus@outlook.net','2019-11-25','723.451.713.851','Chile','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Campbell','Anastasia','orci.luctus.et@outlook.org','2017-04-19','171.627.335.882','Germany','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bennett','Finn','ac@outlook.org','2022-03-30','137.985.338.779','Austria','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Black','Cain','facilisis.non.bibendum@icloud.net','2021-06-27','266.444.620.089','France','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Edwards','Irma','donec.luctus@aol.org','2019-03-16','809.678.312.812','Italy','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Slater','Tanisha','tempor.erat@aol.org','2019-12-19','236.035.007.527','Peru','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcconnell','Colorado','conubia.nostra@google.ca','2021-11-24','227.361.919.481','South Korea','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Alvarado','Xena','sodales.elit.erat@icloud.edu','2020-01-1','184.710.824.301','Germany','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Browning','Marshall','quisque@hotmail.net','2018-07-10','829.661.082.556','New Zealand','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Downs','Xenos','aliquet@outlook.com','2021-10-25','811.117.451.298','Russian Federation','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chapman','Keefe','sed.sapien.nunc@yahoo.org','2022-02-21','092.473.871.317','Italy','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dunn','Dara','nec@google.net','2022-07-2','623.120.751.512','Sweden','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harvey','Fallon','tellus.suspendisse@icloud.net','2020-12-20','461.826.679.353','India','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Robinson','Tyler','ultrices@hotmail.couk','2022-05-11','068.331.965.035','Ireland','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dunlap','Kimberley','consequat@outlook.ca','2017-06-7','613.417.239.287','Costa Rica','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rogers','Uriel','pede.nunc@icloud.net','2019-07-3','326.346.952.153','Indonesia','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Levy','Paula','arcu.vestibulum.ante@hotmail.org','2020-08-31','322.562.545.747','United States','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Washington','Vera','sed.hendrerit.a@google.com','2022-04-30','605.277.557.018','Vietnam','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcdowell','Martha','molestie@google.org','2022-09-28','161.574.098.561','Chile','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Clemons','Samantha','parturient.montes@icloud.couk','2018-11-13','135.217.184.697','United Kingdom','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Madden','Amena','condimentum@icloud.net','2019-10-16','226.786.833.358','Spain','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hanson','Illiana','risus.varius.orci@aol.ca','2020-05-3','224.401.137.538','Peru','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Fields','Ulric','facilisis.lorem@protonmail.edu','2019-02-20','100.158.263.412','Ireland','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Martinez','Sarah','euismod.et@aol.couk','2019-02-2','508.534.850.185','Peru','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Walters','Jermaine','justo.nec.ante@aol.edu','2022-10-14','377.228.455.264','Poland','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wilkinson','Breanna','dolor.sit.amet@icloud.edu','2019-01-27','482.767.821.716','Netherlands','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('David','Kirby','mauris.morbi.non@outlook.couk','2020-07-31','716.476.582.830','India','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chapman','Xavier','semper@outlook.ca','2017-12-24','451.486.919.680','United States','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('House','Lucius','phasellus.vitae.mauris@google.com','2020-07-29','174.339.205.351','South Korea','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Slater','Yardley','mauris.eu@yahoo.org','2019-10-6','175.571.022.784','Poland','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dixon','Dara','consectetuer.ipsum@google.com','2022-11-2','538.538.984.548','Nigeria','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barrera','Gay','varius.ultrices@icloud.couk','2020-09-24','877.148.744.147','Sweden','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Nicholson','Abraham','scelerisque@aol.org','2018-04-10','342.824.416.187','Brazil','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Brennan','Orla','proin.sed@yahoo.couk','2022-02-15','152.545.216.785','South Korea','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Le','Stacey','ipsum@yahoo.couk','2018-07-19','049.283.039.691','Peru','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Moody','Mariko','nibh.quisque@hotmail.edu','2019-08-30','288.482.338.663','Spain','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richardson','Keith','aptent.taciti@icloud.net','2021-04-11','827.593.376.411','China','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Frost','Ezekiel','mauris.molestie.pharetra@protonmail.com','2018-01-23','830.112.585.981','Brazil','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wiley','Abel','nulla.donec@protonmail.org','2017-10-11','267.275.764.796','Austria','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sanchez','Summer','sem.mollis@hotmail.edu','2021-01-15','210.897.113.355','Belgium','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Durham','Jemima','dui.cras.pellentesque@icloud.org','2020-11-5','874.044.428.895','Pakistan','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Nash','Galvin','faucibus@hotmail.ca','2022-10-28','794.413.343.635','Spain','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Morrow','Armand','dolor.dapibus@hotmail.ca','2020-04-24','958.141.663.293','Spain','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Heath','Desirae','ipsum@google.org','2019-07-8','572.784.347.984','Turkey','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Newton','Len','gravida.sagittis@hotmail.ca','2021-08-13','837.641.075.634','France','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Parrish','Cleo','ultrices.posuere@yahoo.org','2021-09-1','894.982.271.758','China','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cummings','Justina','sit.amet@aol.couk','2018-09-16','759.740.987.752','Ireland','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Foster','Cameron','dolor.dolor@hotmail.edu','2019-04-2','754.505.834.742','Pakistan','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guerrero','Vivian','dis.parturient@aol.ca','2021-03-17','432.523.535.620','India','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Yates','Joel','fusce.dolor@outlook.org','2022-04-7','436.827.564.238','Poland','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lyons','Ferris','rutrum.urna@hotmail.com','2019-06-12','757.498.266.444','Ireland','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bolton','Hiram','lobortis.ultrices@icloud.edu','2019-06-4','711.358.861.453','Pakistan','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pearson','Anjolie','gravida.aliquam.tincidunt@yahoo.org','2019-06-23','512.116.878.314','Russian Federation','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Robles','Nicholas','a.sollicitudin.orci@yahoo.ca','2017-10-15','673.183.230.744','South Korea','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ball','Maile','mauris.blandit.enim@aol.com','2018-04-21','195.055.180.550','Italy','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Weiss','Shana','pharetra@icloud.com','2017-05-28','132.235.630.673','India','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Schmidt','Kimberley','in.faucibus.orci@protonmail.com','2017-02-10','166.616.804.717','United Kingdom','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dixon','Jemima','enim@outlook.net','2018-06-14','425.813.674.753','United States','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kelly','Hiram','odio@hotmail.net','2017-12-26','848.358.354.741','Colombia','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Paul','Jermaine','molestie.tellus.aenean@hotmail.edu','2022-09-10','182.982.741.711','South Korea','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Thompson','Wang','eu@yahoo.edu','2022-11-7','888.574.102.434','Colombia','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Olson','Angelica','ultrices.vivamus@google.com','2021-04-13','881.928.218.711','Indonesia','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Potter','Angelica','vulputate.lacus@yahoo.edu','2020-12-10','888.363.606.532','South Korea','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Glass','Iliana','felis.nulla.tempor@protonmail.ca','2021-10-17','653.121.221.311','France','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lowery','Sacha','a.scelerisque@google.edu','2017-06-2','128.248.344.575','India','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Koch','Wallace','mollis@icloud.couk','2019-12-11','583.276.565.807','Australia','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Colon','Gretchen','diam.eu@yahoo.ca','2021-03-21','280.434.407.160','Brazil','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Long','Hakeem','nullam@icloud.com','2021-05-19','015.588.553.385','Costa Rica','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barnes','Miriam','cursus.a@icloud.com','2019-02-8','368.024.486.626','Germany','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Horn','Ahmed','mi.eleifend@hotmail.edu','2022-01-8','458.684.143.451','France','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Delaney','Morgan','purus.nullam.scelerisque@aol.edu','2018-12-27','391.085.863.318','Ireland','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Slater','Whoopi','quam.pellentesque.habitant@google.com','2022-01-3','429.873.240.338','Nigeria','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Porter','Gay','sed@hotmail.ca','2018-11-28','071.865.192.787','Canada','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Yates','Belle','vulputate.risus@aol.ca','2022-10-4','937.747.231.776','United Kingdom','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jordan','Alfonso','elit.a@aol.ca','2022-11-19','931.176.913.642','Spain','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Stone','Cedric','lectus.rutrum.urna@outlook.ca','2018-04-26','445.691.168.256','United States','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jefferson','Calvin','nam.ligula@hotmail.edu','2021-12-18','471.663.266.398','Brazil','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pittman','Hayden','dolor.egestas.rhoncus@aol.org','2019-05-23','412.178.587.833','Netherlands','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Head','Diana','duis.elementum@hotmail.couk','2018-11-4','742.755.972.243','Chile','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Donaldson','Kitra','mattis.integer@google.edu','2018-10-31','194.637.214.941','South Korea','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Willis','Ina','scelerisque.neque@google.com','2017-07-21','649.317.341.777','Indonesia','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dixon','Myles','tincidunt@icloud.net','2018-02-25','682.558.263.349','Italy','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sweeney','Denton','integer.tincidunt@outlook.couk','2020-02-23','231.403.438.741','Pakistan','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gibbs','Brady','velit.cras.lorem@hotmail.couk','2019-02-15','599.282.652.959','Costa Rica','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Christensen','Yasir','ipsum@hotmail.edu','2017-03-14','756.363.402.378','Turkey','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcdowell','Ruby','nulla.magna.malesuada@yahoo.com','2017-10-1','322.261.613.457','Nigeria','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hancock','Adena','urna.nec.luctus@protonmail.ca','2018-09-25','754.428.250.266','Austria','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Travis','Avram','ridiculus.mus@yahoo.org','2021-09-9','786.073.163.453','Indonesia','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rosario','Alyssa','vitae.orci.phasellus@hotmail.couk','2019-05-12','410.521.162.564','Pakistan','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Coffey','Ivan','gravida@icloud.ca','2017-05-5','326.372.126.487','Costa Rica','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Marks','Shellie','dis@outlook.ca','2019-06-7','676.163.523.809','Pakistan','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Boone','Chancellor','donec.vitae.erat@yahoo.com','2020-03-5','249.884.135.431','China','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Dixon','Malachi','aliquam.erat.volutpat@yahoo.net','2022-03-9','755.742.873.666','United Kingdom','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Perkins','Hu','ullamcorper.magna.sed@yahoo.couk','2022-07-24','656.933.672.845','China','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Payne','Oscar','eget@protonmail.ca','2021-09-23','184.453.123.516','United States','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Knight','Germane','venenatis.lacus@aol.com','2022-03-21','363.969.152.085','Belgium','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Day','Sebastian','morbi@outlook.edu','2020-09-2','367.489.682.864','New Zealand','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Malone','Jermaine','tincidunt.dui.augue@outlook.com','2018-05-2','383.251.685.733','United Kingdom','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mccoy','Felicia','gravida.aliquam@google.com','2019-11-17','526.714.971.773','Sweden','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gillespie','Hayfa','arcu.sed@hotmail.ca','2020-02-6','848.893.403.317','United States','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ratliff','Kameko','nisl.nulla@google.ca','2019-08-2','415.057.667.872','Costa Rica','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sawyer','Zena','penatibus.et@outlook.org','2022-11-6','643.618.431.073','Indonesia','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bowen','Dai','non.sapien@outlook.org','2017-07-28','835.611.328.784','Russian Federation','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Knight','Felicia','libero.morbi@aol.org','2020-03-2','444.746.343.887','Vietnam','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guthrie','Dominic','quis.diam.pellentesque@icloud.ca','2019-02-9','456.535.747.499','Belgium','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lambert','Adria','nunc.mauris@aol.ca','2017-06-27','783.304.829.828','United Kingdom','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richard','Ian','aliquam.tincidunt.nunc@aol.org','2017-04-4','765.474.516.146','Indonesia','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Blackwell','Felicia','quam.a.felis@hotmail.ca','2021-06-17','363.788.186.864','Netherlands','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Foreman','Julian','in.tempus@aol.org','2019-08-17','539.053.897.756','India','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cote','Anastasia','nunc.lectus@protonmail.edu','2019-08-5','881.635.196.455','Russian Federation','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Branch','Octavius','metus@protonmail.ca','2017-10-24','196.822.210.583','Germany','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Oneil','Jerome','non.sollicitudin.a@icloud.net','2021-06-27','578.567.121.516','Ireland','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mclaughlin','Lydia','maecenas.ornare.egestas@aol.ca','2022-02-19','639.565.689.601','Colombia','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hahn','Hayes','feugiat.placerat.velit@hotmail.edu','2017-12-12','826.150.555.073','Indonesia','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Campos','Meghan','dui@outlook.org','2022-01-9','567.292.712.883','Sweden','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ray','Wang','at.nisi@yahoo.org','2022-05-29','374.910.247.465','Vietnam','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Walsh','Prescott','dapibus.ligula@outlook.couk','2021-03-16','137.936.831.341','Russian Federation','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Shaffer','Kasper','phasellus@google.edu','2021-10-15','322.379.416.002','Poland','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hopkins','Zena','porta.elit@protonmail.ca','2019-10-18','835.674.677.739','United States','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Carey','Drake','quam.dignissim@outlook.couk','2021-02-27','740.074.348.797','Peru','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Torres','Hedley','pede.blandit@protonmail.net','2022-08-1','392.320.275.152','Indonesia','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harrison','Colt','sagittis@google.net','2019-07-14','416.733.846.245','Ireland','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Newton','Colby','ipsum.dolor@google.org','2020-10-26','202.845.117.934','Indonesia','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rollins','Gillian','ut.nec.urna@hotmail.net','2017-12-30','160.858.341.277','Canada','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Riggs','Ali','suspendisse@yahoo.org','2022-01-4','863.262.122.282','South Korea','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hopper','Piper','donec@icloud.net','2019-06-20','703.547.186.488','South Korea','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Woodward','Kirk','mauris@aol.org','2021-08-8','211.322.384.722','Costa Rica','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Levine','Barclay','enim.consequat@icloud.edu','2020-08-4','153.352.757.116','United States','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Munoz','Kasimir','eu@google.edu','2018-08-6','217.228.528.834','Costa Rica','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cannon','Jaime','nec.enim.nunc@outlook.ca','2017-11-24','541.188.288.762','Peru','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Copeland','Sacha','pulvinar@outlook.edu','2017-07-2','551.530.782.051','Netherlands','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gardner','Whilemina','et.magna@google.com','2019-06-9','527.685.633.345','New Zealand','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Riley','Matthew','mauris@google.ca','2020-07-18','195.578.246.838','Canada','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcintyre','Ila','ac.mattis@outlook.net','2018-02-19','191.028.521.736','Netherlands','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Solomon','Linda','maecenas@google.org','2018-12-21','751.462.580.848','India','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Freeman','Rudyard','nunc.id@icloud.org','2018-07-5','868.753.712.534','South Korea','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Travis','Beverly','orci@outlook.net','2022-11-15','792.867.858.296','Vietnam','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Zamora','Jemima','eu.tempor@protonmail.couk','2022-07-15','871.424.844.012','Mexico','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Michael','Lacota','montes.nascetur.ridiculus@hotmail.edu','2021-06-16','217.573.451.628','Nigeria','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Vang','Lila','erat.in@protonmail.edu','2022-01-4','565.252.309.336','Italy','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Roman','Natalie','dignissim@yahoo.org','2021-05-28','739.352.034.569','United States','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Norris','Skyler','urna.nec.luctus@icloud.net','2020-06-26','889.683.812.164','Colombia','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Simon','Garrison','vehicula.pellentesque@yahoo.net','2022-08-25','792.526.465.438','China','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Koch','Steel','imperdiet.nec@google.net','2017-02-26','562.817.311.031','Netherlands','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Spencer','Phelan','turpis.egestas@hotmail.ca','2018-05-17','750.775.710.340','Mexico','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wall','Lacota','penatibus.et@outlook.couk','2018-09-5','418.732.566.085','Poland','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hodges','Martena','lorem.donec@aol.edu','2020-12-30','830.366.248.635','China','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jenkins','Marah','vestibulum.lorem@icloud.com','2021-07-26','449.674.551.559','Sweden','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rosa','Honorato','diam@icloud.com','2020-03-17','783.832.741.783','Sweden','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barton','Ori','phasellus.at@aol.net','2022-11-1','388.115.515.442','Costa Rica','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hess','Oleg','sit.amet@hotmail.net','2021-10-6','161.030.835.287','Colombia','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Martin','Brenna','convallis@yahoo.com','2020-02-29','902.133.285.863','Nigeria','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Eaton','Ray','facilisis.vitae@hotmail.com','2019-11-8','151.477.217.415','United States','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Spencer','Grady','metus.vivamus.euismod@aol.edu','2020-08-20','542.973.678.686','United States','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cooke','Lani','laoreet@yahoo.couk','2021-08-15','669.353.337.484','United States','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ferguson','Jemima','malesuada@icloud.couk','2019-11-16','917.146.105.592','Nigeria','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Michael','Hadley','consectetuer@outlook.edu','2021-03-6','439.576.158.672','Chile','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gardner','Maxwell','sociis@icloud.ca','2020-04-7','218.218.382.151','United Kingdom','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chase','Stone','ac.turpis@google.edu','2022-07-14','416.586.335.278','China','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Castillo','Lavinia','lacinia.sed@hotmail.org','2018-12-19','833.659.592.172','Chile','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Blackwell','Sage','in@icloud.com','2021-03-28','357.544.149.384','Germany','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Castaneda','Elmo','in.mi.pede@icloud.org','2019-01-31','123.772.542.917','Sweden','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Calderon','Chadwick','nec@aol.couk','2022-07-4','273.856.634.919','New Zealand','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Meyers','Xander','montes.nascetur@yahoo.net','2019-11-30','664.041.034.238','Poland','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hinton','Nash','sit.amet@google.edu','2020-05-1','524.268.788.238','Germany','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Roman','Jorden','nibh.vulputate.mauris@protonmail.ca','2019-08-13','681.636.644.064','Belgium','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Griffith','Ross','mi.enim@outlook.com','2017-02-3','376.281.268.975','India','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Holt','Solomon','consectetuer.adipiscing@hotmail.couk','2022-01-24','598.520.940.335','Chile','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Monroe','Flavia','donec.est.nunc@google.net','2018-05-28','231.168.898.036','Turkey','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Craft','Lacy','ipsum.phasellus.vitae@outlook.com','2018-03-7','113.875.372.832','Indonesia','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Nieves','Ian','nunc@icloud.net','2020-10-25','517.857.725.345','Peru','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wilkins','Nayda','donec@hotmail.org','2017-07-20','918.117.016.730','Costa Rica','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kelley','Grady','dignissim.maecenas.ornare@icloud.com','2018-10-13','256.008.916.157','South Korea','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lester','Daphne','feugiat.tellus.lorem@outlook.org','2020-11-20','457.499.666.978','Germany','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Acosta','Yasir','neque.pellentesque@aol.net','2019-03-26','533.123.671.573','China','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Blackwell','Armando','sit.amet@protonmail.edu','2020-03-14','751.876.587.556','United States','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pitts','Ashely','quis.tristique@yahoo.com','2020-02-22','192.521.231.145','Italy','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Berg','Rafael','eget.ipsum@google.com','2022-11-5','178.223.548.354','Italy','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Newman','Daryl','lacinia.mattis@yahoo.edu','2018-07-25','085.340.296.966','South Korea','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Frank','Erin','eget@aol.edu','2017-10-28','610.641.098.620','Ireland','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cruz','Lacota','integer@aol.com','2017-10-5','257.846.583.921','Austria','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Griffin','Geraldine','in@outlook.edu','2022-02-15','376.741.826.160','Costa Rica','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Reeves','Joseph','auctor.velit@google.com','2017-10-15','151.714.951.615','South Korea','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cote','May','quisque.purus@yahoo.couk','2017-08-1','365.234.455.500','Nigeria','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Woods','Ursula','elementum.lorem@yahoo.couk','2022-05-6','776.517.993.647','Nigeria','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Buckley','Thaddeus','eros.turpis.non@protonmail.org','2019-02-5','852.144.125.297','Germany','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Valenzuela','Lewis','semper@protonmail.edu','2019-05-9','274.218.745.647','Belgium','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Porter','Brian','mi.pede.nonummy@hotmail.ca','2020-02-28','111.214.572.968','Canada','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcgee','Carl','nisl.elementum.purus@aol.ca','2020-11-1','305.181.769.785','India','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Payne','Aladdin','eget.magna.suspendisse@outlook.com','2018-10-7','651.257.883.586','Chile','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Suarez','Kylie','non.lobortis@google.org','2018-06-5','997.244.518.555','New Zealand','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Stout','Griffith','aliquet.nec@protonmail.edu','2022-03-8','555.632.127.346','Indonesia','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hopper','Joan','velit.cras@google.couk','2018-01-20','486.424.124.647','Belgium','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Weeks','Savannah','elit.erat@icloud.org','2019-12-23','112.480.386.782','Australia','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lynch','Drew','amet.consectetuer@outlook.ca','2019-05-13','565.928.152.058','Brazil','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Roth','Illana','magna@aol.edu','2019-07-16','834.464.472.845','United States','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Conrad','Harrison','curae.donec@yahoo.couk','2022-07-20','326.954.896.386','Austria','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Maxwell','Jonas','aenean.massa@hotmail.ca','2018-06-30','892.898.755.737','Brazil','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wooten','Jada','euismod.enim@hotmail.com','2020-04-19','927.826.306.667','Chile','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bean','Roanna','class.aptent@yahoo.org','2022-03-26','648.914.417.185','South Korea','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guerrero','Anthony','tincidunt@outlook.couk','2019-05-31','238.241.628.728','South Korea','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('England','Seth','ac@hotmail.edu','2017-01-3','755.171.801.845','Brazil','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Santiago','Gareth','nullam.nisl.maecenas@outlook.ca','2020-09-12','622.108.180.025','Canada','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Serrano','Julie','vitae@google.couk','2018-12-30','365.172.656.922','Netherlands','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Scott','Russell','nulla.facilisis@hotmail.ca','2018-07-28','514.521.318.804','Germany','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rosario','Hammett','eu.ligula@yahoo.org','2018-01-8','067.786.856.443','New Zealand','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Oneil','Abigail','libero@google.couk','2018-08-31','326.393.638.113','Poland','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wyatt','Samson','arcu.sed@icloud.ca','2020-11-4','665.637.721.196','Turkey','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcmillan','Bruno','iaculis.lacus@yahoo.edu','2017-06-6','552.853.768.384','United Kingdom','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mckay','Wang','nunc@icloud.org','2021-09-28','635.168.129.661','United States','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Underwood','Galena','torquent.per.conubia@yahoo.org','2018-02-19','978.287.821.959','Nigeria','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Roy','Quamar','tempus@aol.edu','2020-07-29','256.431.131.749','Austria','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bright','Reese','cum.sociis.natoque@protonmail.com','2018-04-3','866.489.721.733','Poland','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Beard','Cassidy','duis.dignissim.tempor@google.net','2022-07-15','305.328.536.182','China','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kirby','Thor','velit.dui.semper@google.ca','2022-04-13','835.696.817.767','Brazil','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Stevenson','Gannon','tempor.arcu.vestibulum@aol.couk','2019-11-9','095.783.636.721','Italy','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Howell','Vincent','sed.eu@icloud.edu','2019-05-13','365.844.854.828','Vietnam','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sanders','Camille','nec.orci@google.edu','2020-03-22','318.682.201.878','Russian Federation','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Garrison','Barrett','eu.augue@hotmail.net','2018-04-1','038.983.531.661','Russian Federation','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Blair','Iona','rutrum.urna.nec@protonmail.org','2017-02-1','584.518.393.741','Poland','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sears','Sacha','tellus.imperdiet.non@aol.org','2018-02-14','693.475.118.808','United States','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Charles','Charde','eu.arcu@protonmail.edu','2021-02-11','992.207.111.966','United Kingdom','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Browning','Marshall','in@protonmail.org','2022-03-8','383.838.500.659','Peru','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Frazier','Knox','mollis@aol.edu','2019-09-2','536.829.954.629','Pakistan','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Osborne','Karyn','nisi.nibh@google.edu','2018-10-10','545.306.386.534','South Korea','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harding','Aspen','adipiscing.elit.etiam@aol.couk','2021-10-27','704.131.072.956','United Kingdom','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mccullough','Camden','bibendum.fermentum@yahoo.edu','2022-02-8','719.211.431.726','Chile','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wilder','Kaitlin','sit@outlook.ca','2022-02-18','673.139.033.522','India','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Riddle','Lareina','et.nunc.quisque@protonmail.org','2021-03-29','345.835.075.118','Turkey','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hatfield','Gregory','phasellus.at@aol.net','2017-11-14','799.411.212.240','South Korea','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Castillo','Logan','integer.eu@outlook.net','2020-05-12','784.837.005.340','Mexico','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barlow','Jason','vivamus.nisi.mauris@outlook.edu','2018-08-14','611.666.846.541','Brazil','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcintosh','Demetria','euismod.mauris@hotmail.org','2020-12-23','795.188.627.004','China','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kemp','Jared','nulla.aliquet@icloud.edu','2021-07-7','773.822.658.667','Brazil','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Greer','Lilah','sed.tortor@icloud.net','2020-05-1','550.406.533.988','Colombia','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Briggs','September','eleifend.nunc.risus@outlook.com','2017-02-1','706.270.914.574','France','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Glass','Alexa','nec@icloud.edu','2018-03-6','511.292.848.312','New Zealand','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sims','Jameson','tortor.integer@protonmail.couk','2022-04-11','786.213.026.110','Costa Rica','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Craig','Leslie','id.nunc.interdum@protonmail.com','2018-08-24','883.587.081.514','Pakistan','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Henry','Reuben','ligula.aenean@google.com','2022-04-9','604.335.592.329','Nigeria','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Love','Nayda','integer.aliquam@yahoo.net','2017-01-15','642.376.886.367','Vietnam','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Downs','Reagan','interdum@outlook.edu','2018-05-5','677.542.960.314','Belgium','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richards','Honorato','malesuada.id@hotmail.org','2020-07-1','339.548.362.494','Poland','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hatfield','Hayden','tempus.mauris@aol.com','2017-02-19','746.817.576.606','Belgium','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Moreno','Harlan','urna.nec@google.ca','2020-04-12','211.785.928.239','Belgium','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richardson','Lars','vivamus@google.edu','2020-11-25','298.606.642.217','Poland','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcbride','Unity','eu.elit.nulla@hotmail.ca','2017-11-26','648.274.557.944','Germany','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Valenzuela','Finn','enim@hotmail.edu','2019-05-6','860.951.354.439','Poland','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rodriquez','Lesley','luctus.curabitur@aol.couk','2021-03-14','838.797.852.254','Belgium','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cabrera','Hilary','dignissim.pharetra@yahoo.edu','2020-10-16','314.276.577.703','Nigeria','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mercer','Carolyn','condimentum.eget@google.com','2021-10-19','555.575.781.322','Chile','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Poole','Sopoline','dictum.proin@hotmail.com','2019-02-2','828.728.847.331','South Korea','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gaines','Isaac','sollicitudin.a@aol.com','2017-12-22','432.952.663.396','France','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guzman','Colette','cras@protonmail.net','2018-03-16','702.857.087.701','Italy','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guy','Aileen','facilisis@google.couk','2019-09-11','047.534.481.676','Costa Rica','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wise','Amery','mauris.ut@outlook.ca','2020-02-21','964.253.761.823','Vietnam','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Coffey','Desirae','at.velit@aol.net','2019-02-24','022.528.618.225','United Kingdom','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Horton','Howard','orci.ut@aol.com','2022-10-5','854.721.581.663','Turkey','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Guzman','Yeo','urna.convallis@outlook.org','2018-10-1','796.474.986.538','India','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Stone','Mona','elit.sed@outlook.org','2018-01-16','589.184.173.041','New Zealand','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Fleming','Jeanette','eu.elit.nulla@hotmail.net','2019-10-22','261.482.436.637','Pakistan','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wall','Hayley','risus.nulla@aol.edu','2022-09-13','172.523.989.178','Germany','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Avery','Addison','dictum@yahoo.couk','2021-11-6','991.632.101.988','New Zealand','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('White','Destiny','vulputate@yahoo.org','2022-02-8','368.623.891.864','Poland','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Garner','Fuller','lorem.eget@outlook.edu','2020-06-6','531.886.351.390','Peru','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Abbott','Elmo','sed.dui.fusce@icloud.ca','2018-06-10','621.441.671.954','China','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Padilla','Micah','vitae@aol.org','2021-04-25','582.383.866.479','Mexico','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Finley','Nerea','magna.cras@icloud.ca','2020-02-1','861.157.215.425','Chile','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bradshaw','Anne','curae@google.org','2019-10-24','455.860.064.402','Germany','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Humphrey','Brianna','phasellus.vitae.mauris@yahoo.com','2017-05-13','401.738.528.176','Pakistan','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Henry','Basil','bibendum.ullamcorper@protonmail.org','2017-04-18','961.826.871.200','Germany','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ruiz','Karly','ultricies.ornare@yahoo.com','2018-11-12','631.379.509.461','Indonesia','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cobb','Jarrod','nulla@aol.edu','2020-01-1','620.163.734.621','Brazil','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sawyer','Olga','aliquam.eros@outlook.edu','2020-12-28','434.880.256.937','France','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Leonard','Emery','sed.congue@aol.net','2020-06-5','865.935.893.465','Turkey','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Haley','Neve','ipsum.non@protonmail.com','2021-09-11','475.236.827.875','France','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Valentine','September','suscipit@hotmail.edu','2019-01-16','894.401.630.834','South Korea','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Skinner','Felicia','eu.nulla.at@yahoo.ca','2019-07-11','436.340.417.055','Netherlands','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jarvis','Ashton','placerat.orci@google.ca','2022-10-27','271.692.449.541','Poland','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wilder','Abra','mi.enim@protonmail.com','2018-01-2','863.756.767.417','Belgium','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Garza','Amery','augue.ac@hotmail.org','2022-09-1','751.836.462.780','New Zealand','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Duncan','Harlan','eget@google.com','2021-03-6','254.272.113.181','Italy','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Carr','Judith','at.sem@aol.couk','2021-07-4','552.441.926.599','Pakistan','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Floyd','Clinton','cursus.et.magna@yahoo.net','2018-08-16','381.592.186.843','Nigeria','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Langley','Berk','nisi@outlook.com','2020-05-18','325.136.808.504','Brazil','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Buchanan','Hunter','nunc.ullamcorper@hotmail.ca','2017-02-1','421.054.686.476','Sweden','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kemp','Kaitlin','pharetra@yahoo.com','2019-04-20','819.051.461.447','Spain','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gaines','Jerome','fusce@google.org','2019-11-8','731.753.124.952','Brazil','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sharpe','Jessica','pharetra@google.com','2022-05-16','867.055.387.146','Ireland','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Tran','Beverly','sem@protonmail.edu','2022-10-19','173.452.377.593','Sweden','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Valdez','Cole','velit.in@hotmail.net','2021-07-16','322.832.063.418','Russian Federation','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sherman','Norman','non.magna@protonmail.net','2019-09-3','458.702.639.373','Pakistan','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mccormick','Uta','aenean.euismod@aol.org','2020-11-17','982.593.791.173','Australia','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Velazquez','Eliana','justo@google.edu','2022-10-11','871.428.293.965','United States','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Nichols','Reese','arcu.et.pede@hotmail.org','2018-12-31','388.288.258.068','New Zealand','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Owens','Clarke','nullam.enim@outlook.org','2022-04-30','261.577.826.979','India','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lyons','Rooney','interdum.feugiat@hotmail.couk','2019-07-15','239.141.756.674','Belgium','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chapman','Octavia','arcu.vestibulum@icloud.couk','2022-08-10','825.728.584.095','Nigeria','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Burke','Stella','sit.amet@hotmail.edu','2019-05-16','462.016.246.387','Nigeria','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lane','Stewart','enim@protonmail.couk','2021-09-28','878.739.754.683','Costa Rica','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Lewis','Dara','egestas.aliquam.nec@hotmail.edu','2020-05-21','543.742.723.734','Ireland','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Franklin','Dora','odio.phasellus@aol.org','2021-12-14','147.921.641.601','Belgium','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jensen','Aristotle','eget.metus@google.net','2017-06-18','630.044.067.524','Austria','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Watts','Lael','et.lacinia@yahoo.edu','2017-09-23','487.561.230.423','Australia','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Frost','Chelsea','dictum.sapien@google.edu','2021-09-26','527.777.117.898','Spain','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rodgers','Joy','eros@protonmail.org','2018-07-5','021.320.511.277','Chile','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pennington','Lois','malesuada@aol.couk','2018-06-1','456.254.394.681','United States','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Murray','Quinn','sed@protonmail.net','2022-09-2','556.554.717.921','United States','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Snyder','Renee','ultrices.vivamus@yahoo.couk','2020-01-20','552.488.172.274','Canada','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cunningham','Nissim','ullamcorper.nisl.arcu@hotmail.ca','2019-02-9','847.535.752.249','Germany','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bond','Alice','aliquet.sem.ut@hotmail.edu','2020-06-6','812.076.495.714','Russian Federation','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Russell','Iris','cursus.et@google.org','2018-09-13','483.886.110.237','Brazil','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Kirkland','Yael','sodales.nisi@aol.couk','2017-06-26','423.557.722.063','Chile','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sexton','Genevieve','quam.curabitur.vel@icloud.org','2021-03-11','250.202.793.798','Brazil','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Johns','Mufutau','diam@icloud.edu','2021-03-22','600.931.377.332','Peru','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcbride','Leandra','purus.mauris@outlook.net','2017-08-11','130.064.642.512','Nigeria','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bentley','Hermione','mauris.ipsum.porta@yahoo.net','2020-06-9','755.514.266.685','Costa Rica','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Curry','Maxwell','amet.nulla@protonmail.org','2022-08-13','688.833.454.570','Indonesia','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Cardenas','Justina','eros.nec@aol.edu','2019-07-12','253.108.312.887','India','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Oneil','Timon','tristique.pharetra@hotmail.net','2021-12-25','489.934.281.154','Belgium','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Walsh','Bert','aliquam.gravida@google.edu','2018-03-27','661.456.925.034','Mexico','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Marks','Odysseus','nec.tempus@yahoo.org','2021-06-8','777.143.558.174','Russian Federation','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Meadows','Sophia','dui.semper@icloud.org','2021-06-20','068.760.441.514','Costa Rica','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Newman','Oprah','ante.dictum@protonmail.com','2017-02-24','547.639.692.536','Italy','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Garrett','Bertha','ligula.aenean.gravida@hotmail.org','2018-11-18','741.342.197.813','Canada','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jacobson','Kareem','cursus.luctus@yahoo.edu','2020-01-19','528.717.854.662','Belgium','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Washington','Derek','orci@icloud.net','2019-11-4','748.405.117.472','Australia','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rich','Troy','nullam.lobortis@google.couk','2020-09-11','551.185.557.226','South Korea','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Santos','Griffith','sed.id@google.couk','2017-03-24','482.835.098.197','Poland','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pickett','Martha','et.rutrum@hotmail.net','2019-05-13','786.557.301.446','Pakistan','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mason','Amir','dolor.nonummy@protonmail.org','2019-07-14','259.406.525.775','Chile','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Larsen','Jessamine','blandit@aol.ca','2019-08-3','156.266.721.208','Colombia','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Neal','Virginia','ac@protonmail.couk','2017-04-14','476.432.763.349','Germany','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Middleton','Nomlanga','sit.amet@outlook.couk','2021-05-1','836.884.783.413','Brazil','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Bradshaw','Abbot','dolor.dapibus@outlook.com','2017-04-15','864.980.725.342','United Kingdom','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Williams','Harlan','pellentesque.habitant.morbi@outlook.couk','2021-11-29','328.289.624.552','Sweden','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Blankenship','Madeson','diam.pellentesque.habitant@hotmail.ca','2017-02-25','651.726.987.343','Pakistan','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Madden','Caleb','egestas@yahoo.ca','2021-03-5','659.285.013.618','Russian Federation','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chan','Martena','sit.amet.nulla@icloud.com','2020-07-18','568.324.381.817','Germany','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Browning','Keane','nulla.tempor@outlook.couk','2017-04-21','414.352.384.693','Australia','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Andrews','Angela','cras@icloud.net','2022-04-22','323.611.839.463','Brazil','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Curtis','Oleg','egestas.rhoncus.proin@aol.ca','2019-05-28','605.546.614.285','Chile','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jackson','Urielle','quam.vel@yahoo.net','2019-05-14','667.408.048.667','Canada','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rowland','Barclay','tellus.justo@yahoo.ca','2018-05-1','326.283.010.454','Pakistan','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harrington','Remedios','arcu.et.pede@google.com','2019-03-25','831.838.840.690','Peru','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Newman','Alisa','feugiat.sed.nec@icloud.org','2018-02-27','635.420.456.881','Ireland','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sosa','Vera','enim.suspendisse@outlook.org','2020-10-22','645.470.518.705','Mexico','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Briggs','Bryar','nascetur@aol.com','2017-08-7','903.455.740.046','Vietnam','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Parrish','Tara','sem@outlook.net','2020-07-9','755.755.368.487','Australia','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Singleton','Odette','a.aliquet.vel@outlook.couk','2019-10-4','637.714.787.596','Nigeria','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hodge','Duncan','metus@protonmail.edu','2022-08-19','627.463.664.779','Italy','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Vang','Kaseem','ultrices@protonmail.net','2021-09-5','711.357.145.211','Belgium','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jensen','Noel','ac.mattis@yahoo.edu','2019-08-14','101.757.464.777','Nigeria','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Merrill','Hillary','ante.ipsum.primis@yahoo.net','2021-06-7','415.249.835.195','Poland','A');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Figueroa','Wyatt','et.nunc@protonmail.ca','2017-03-26','910.176.129.828','Sweden','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Stafford','Juliet','porttitor.tellus.non@hotmail.net','2022-01-17','445.142.472.852','Poland','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Goodman','Raven','lorem.eget@protonmail.net','2021-12-21','452.167.775.466','Brazil','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harrell','Caldwell','fusce.diam.nunc@icloud.com','2022-11-13','472.636.747.727','Russian Federation','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Moody','Brian','mi.eleifend.egestas@protonmail.com','2019-10-18','445.632.405.039','India','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wright','George','suscipit.est.ac@aol.org','2019-12-8','448.891.462.381','Poland','M');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Flores','Nelle','massa.vestibulum@hotmail.ca','2018-08-14','992.617.354.360','United Kingdom','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Savage','Upton','massa.non.ante@protonmail.edu','2021-06-16','868.559.505.866','South Korea','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Ramos','Katell','montes@outlook.com','2022-05-18','835.822.651.884','Russian Federation','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Velazquez','Lucius','at.velit@icloud.com','2018-08-2','467.879.731.112','Austria','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barber','Urielle','lectus.nullam@yahoo.edu','2017-01-13','241.212.612.138','Mexico','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Moreno','Jakeem','nulla.vulputate@hotmail.org','2017-08-22','332.145.146.347','Canada','T');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mitchell','Alma','eget@google.net','2021-02-11','951.976.351.459','China','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Gillespie','Brett','dolor.dolor@hotmail.net','2017-01-13','515.748.653.779','Indonesia','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Valentine','Ina','molestie@hotmail.net','2020-09-25','721.179.098.003','India','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Oconnor','Stone','volutpat.nulla@hotmail.com','2021-03-1','341.615.382.581','Spain','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Steele','Harrison','eget.lacus.mauris@outlook.com','2017-10-15','485.565.368.619','Belgium','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chapman','Paki','praesent.interdum@icloud.com','2017-01-31','207.276.887.712','Brazil','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Price','Lacy','mollis.integer.tincidunt@icloud.couk','2022-05-6','193.857.619.869','Pakistan','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Stephens','Jocelyn','ligula@aol.edu','2018-05-12','506.226.832.426','Costa Rica','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Wong','Yasir','fermentum@google.net','2022-03-5','104.081.668.984','Mexico','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Tyson','Ferdinand','natoque.penatibus@hotmail.org','2021-01-23','138.823.659.961','Australia','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Spears','Cecilia','turpis@yahoo.net','2019-11-20','712.607.483.538','Indonesia','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Alexander','Todd','nonummy.ipsum.non@outlook.org','2022-03-9','846.263.014.456','Vietnam','B');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Sampson','Nomlanga','donec@aol.couk','2018-01-15','477.324.337.964','France','O');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Herrera','Jamal','amet@aol.ca','2017-09-5','955.921.513.938','United Kingdom','U');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Garza','Quamar','augue@icloud.couk','2022-11-16','607.791.534.951','Nigeria','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Randolph','Wyoming','accumsan.laoreet@google.org','2020-07-21','735.272.881.105','Vietnam','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Barron','Roary','natoque.penatibus@protonmail.org','2019-04-27','496.163.482.514','Costa Rica','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Walker','Salvador','in.at.pede@aol.org','2022-10-13','369.803.686.160','South Korea','R');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcbride','Ella','nulla.in@aol.net','2022-02-21','556.220.208.730','South Korea','N');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Beck','Lawrence','nunc.commodo@icloud.com','2018-08-10','212.013.435.123','Peru','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richard','Jorden','eu@hotmail.couk','2020-05-9','838.871.890.285','United Kingdom','X');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Floyd','Libby','vitae.dolor.donec@protonmail.couk','2017-06-24','653.875.727.776','Austria','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Pate','Tasha','cum.sociis@outlook.ca','2017-08-16','714.440.334.203','Brazil','E');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Mcclain','Quinn','duis.dignissim.tempor@google.ca','2017-03-10','511.129.604.276','India','C');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Taylor','Henry','nunc@google.net','2020-01-24','155.080.951.248','Ireland','I');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Solis','Colleen','per.conubia.nostra@aol.org','2019-04-4','630.947.894.143','Sweden','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hart','Ezekiel','accumsan.interdum.libero@hotmail.org','2022-05-2','410.820.775.165','Ireland','W');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Donaldson','Graiden','nisl.maecenas@protonmail.ca','2019-12-18','688.362.064.832','Vietnam','Z');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Navarro','Salvador','nunc.sed.libero@outlook.edu','2022-10-13','910.347.877.789','New Zealand','H');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Richardson','Jarrod','non.vestibulum.nec@protonmail.ca','2019-10-3','018.577.114.381','Sweden','L');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Duran','Kevin','iaculis@aol.net','2020-12-17','623.874.227.873','Vietnam','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Webb','Portia','tortor.nibh@aol.couk','2018-06-18','663.169.011.398','France','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Madden','Mona','est.ac@protonmail.ca','2018-03-9','391.275.144.786','Sweden','Y');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Harmon','Clementine','ac@icloud.ca','2020-07-1','414.551.172.337','South Korea','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Jefferson','Amelia','nec.quam@yahoo.ca','2017-09-9','541.660.576.435','Indonesia','K');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Reese','Tara','mauris.aliquam.eu@outlook.ca','2017-01-7','106.616.370.586','Mexico','D');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Chan','Wang','mauris@protonmail.net','2020-01-17','875.533.245.652','Italy','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Spence','Micah','montes@protonmail.org','2018-02-1','882.408.233.816','Spain','Q');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Rosales','Mia','pharetra@google.com','2021-05-25','657.327.197.547','Belgium','P');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Meyer','Wesley','lorem.lorem.luctus@outlook.couk','2019-05-23','942.372.897.803','Nigeria','S');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Odom','Fredericka','urna.suscipit@icloud.com','2017-06-9','443.281.162.624','Turkey','F');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Frye','Alexandra','sed.auctor.odio@hotmail.edu','2020-09-13','411.875.944.081','Spain','G');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Buckley','Gwendolyn','enim.mauris@protonmail.couk','2019-12-6','769.480.267.857','Vietnam','J');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Albert','Paki','nonummy.ipsum@icloud.net','2020-07-25','795.777.621.064','France','V');
INSERT INTO "client" ("nomClient", "prenomClient", "email", "date", "adresseIP", "language", genre)
VALUES ('Hickman','Mona','molestie.pharetra@hotmail.ca','2022-02-20','456.123.175.186','Chile','B');
