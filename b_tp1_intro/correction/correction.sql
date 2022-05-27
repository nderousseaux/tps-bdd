-- 1.	La liste des noms d'éditeurs;
SELECT nom FROM editeur;

--2.	Les différents pays dans lesquels un éditeur est situé;
SELECT DISTINCT pays FROM editeur;

--3.	Tous les titres d'articles triés par ordre alphabétique;
SELECT titre FROM article ORDER BY titre ASC;

--4.	Les ouvrages parus après 1990;
SELECT * FROM ouvrage WHERE annee > 1990;

--5.	Les revues dont le nom contient le mot «pattern»;
SELECT * FROM revue WHERE lower(nomRevue) like '%pattern%';

--6.	Le nom des auteurs et le site web pour les auteurs ayant un site web;
SELECT nomAuteur, siteWeb FROM auteur
WHERE siteWeb IS NOT NULL;

--7.	Le nombre de revues dans la base;
SELECT count(*) FROM revue;

--8.	Pour chaque article, son titre et sa longueur en nombre de pages
SELECT titre, pagefin - pagedebut AS "nombre de pages" FROM article; 

--9.	Les identifiants des articles écrits par « Adams »;
SELECT idArticle FROM article_auteur WHERE idAuteur in (
 SELECT idAuteur FROM auteur WHERE nomAuteur like '%Adams%' ); 

--10.	Pour chaque article, son titre et le nom de la revue dans laquelle il a été publié;
SELECT titre, nomRevue FROM article, revue
WHERE article.idRevue=revue.idRevue ;

--11.	Tous les auteurs qui n’ont pas publiés d’ouvrage;
SELECT * FROM auteur WHERE idAuteur not in (
 SELECT idAuteur FROM ouvrage_Auteur);

--12.	La liste des articles dont un des mots clés est «segmentation»;
SELECT * FROM article_motcles AM , motcles M
WHERE AM.idMot=M.idMot and M.mot='segmentation';

--13.	Tous les auteurs qui ont publiés dans la revue «Information Processing Letters»;
SELECT AA.idAuteur FROM Article_auteur AA, Article A, Revue R
WHERE AA.idArticle=A.idArticle AND A.idRevue=R.idRevue AND R.nomRevue = 'Information Processing Letters';

--14.	Les noms des éditeurs qui ont publiés des ouvrages ces 20 dernières années;
SELECT nom FROM editeur WHERE idEditeur in (
 SELECT idEditeur FROM ouvrage 
 WHERE (to_number(to_char(SYSDATE,'YYYY')) - 20) < annee);
 
--15.	Les éditeurs qui publient au moins une revue et  qui ont déjà publié au moins un ouvrage;
SELECT idEditeur FROM editeur WHERE idEditeur in (
 SELECT distinct idEditeur FROM revue) and idEditeur in (SELECT distinct idEditeur FROM ouvrage);
 
--16.	Le titre des article et le nom de la revue des articles écrit dans la plus ancienne des revues
SELECT titre,nomRevue FROM article,Revue WHERE 
    article.idRevue=Revue.idRevue and annee in
		(SELECT min(annee) FROM revue); 
		
--17.	Toutes les paires de personnes qui ont écrit un article ensemble;
SELECT A1.nomAuteur, A2.nomAuteur FROM auteur A1, auteur A2, Article_auteur AA1, Article_auteur AA2
WHERE A1.idAuteur=AA1.idAuteur and A2.idAuteur=AA2.idAuteur and AA1.idArticle=AA2.idArticle and A1.idAuteur < A2.idAuteur;

--18.	Le nombre d’ouvrages par auteur;
SELECT OA.idAuteur, count(*) FROM ouvrage O, ouvrage_Auteur OA
WHERE OA.idOuvrage=O.idOuvrage
GROUP BY  OA.idAuteur;

--19.	Pour chaque auteur, son identifiant, son nom ainsi que le nombre d'organismes auxquels il est rattaché;
SELECT A.idAuteur, A.nomAuteur, count(*)
FROM auteur A , auteur_organisme AO
WHERE A.idAuteur = AO. idAuteur
GROUP BY A.idAuteur, A.nomAuteur; 

--20.	Le nombre d’articles publiés pour chaque membres d'un organismes Canadien;
SELECT A.idAuteur, count(AA.idArticle)
FROM Auteur A, article_auteur AA
WHERE A.idAuteur=AA.idAuteur
  AND A.idAuteur in 
(SELECT AO.idAuteur FROM auteur_organisme AO, organisme O 
 WHERE  O.idOrganisme=AO.idOrganisme and
            O.pays='Canada')
       GROUP BY A.idAuteur;

--21.	Les articles qui sont associés à deux mot clés;
SELECT article.idArticle FROM article, article_motcles
WHERE article.idArticle=article_motcles.idArticle
GROUP BY article.idArticle
HAVING count (*) = 2;

--22.	Les ouvrages qui ont plus de deux auteurs;
SELECT O.idOuvrage, count(*) FROM ouvrage O, ouvrage_Auteur OA
WHERE OA.idOuvrage=O.idOuvrage
GROUP BY  O.idOuvrage
HAVING count(*) > 2;
 
-- 23. Le jour, le mois et l’année de la date d’aujourd’hui (dual, sysdate, extract, to_char)
select extract (day from sysdate), extract (month from sysdate),
extract (year from sysdate) from dual;

-- 24. Les titres d’articles et d’ouvrages (une seule table résultat) ;
select titre from ouvrage
  union
select titre from article;

-- 25. Les noms des revues et le nom de leur éditeur. Pour les revues n’ayant pas d’éditeur, le nom d’éditeur sera remplacé par la chaîne ‘Pas d’éditeur’ (NVL, jointure externe) ; 
select nomrevue, nom from revue                      
left outer join editeur on revue.idediteur=editeur.idediteur;

-- 26. Les noms des auteurs qui ont écrit à la fois des articles et des ouvrages (2 versions possibles) ;
select idauteur from ouvrage_auteur 
  intersect                           
select idauteur from article_auteur;

-- 27.	Les revues qui ont la même année de première publication et le même éditeur qu’une autre revue.
select idrevue from revue r where (annee,idediteur) in (
 select annee, idediteur from revue r2 where r2.idrevue!= r.idrevue);

-- 28. Les revues plus récente qu’une des revues publiées par l’éditeur 'Addison-Wesley' (ANY, SOME, ALL).
select idrevue from revue where annee > ANY
   (select annee from revue where idediteur = 2) ;
   
-- 29. Les revues plus récente que toutes les revues publiées par l’éditeur 'Addison-Wesley' (ANY, SOME, ALL).
select idrevue from revue where annee > ALL
   (select annee from revue where idediteur = 2) ;

-- 30	Les personnes qui ont écrit plus d’articles que le nombre moyen d'articles écrits par les membres des organismes auxquels ils appartiennent.
SELECT A1.idAuteur FROM auteur A1, article_auteur AA1
WHERE A1.idAuteur=AA1.idAuteur
GROUP BY A1.idAuteur
HAVING count(*) > (
 SELECT AVG(count(*))  FROM auteur A2, article_auteur AA2, auteur_organisme AO1, auteur_organisme AO2
 WHERE A2.idAuteur=AA2.idAuteur AND A2.idAuteur=AO1.idAuteur 
AND  AO1.idOrganisme=AO2.idOrganisme AND  A1.idAuteur=AO2.idAuteur
 GROUP BY A2.idAuteur );

