-- 1. La liste des noms d'éditeurs;
SELECT NOM FROM EDITEUR;

-- 2. Les pays des éditeurs, chaque pays n’apparaitra qu’une fois dans l’ensemble résultat ;
SELECT DISTINCT PAYS FROM EDITEUR;

-- 3. Tous les titres d'articles triés par ordre alphabétique;
SELECT TITRE FROM ARTICLE ORDER BY TITRE;

-- 4. Les ouvrages parus après 1990;
SELECT * FROM OUVRAGE WHERE ANNEE > 1990;

-- 5. Les revues dont le nom contient le mot «pattern», sans tenir compte de la casse (UPPER, LOWER) ;
SELECT * FROM REVUE WHERE LOWER(NOMREVUE) LIKE '%pattern%';

-- 6. Le nom des auteurs et le site web des auteurs ayant un site web;
SELECT NOMAUTEUR, SITEWEB FROM AUTEUR WHERE SITEWEB IS NOT NULL;

-- 7. Le nombre de revues;
SELECT COUNT(*) FROM REVUE;

-- 8. Pour chaque article, son titre et sa longueur en nombre de pages ;
SELECT TITRE, (PAGEFIN-PAGEDEBUT) AS "LONGUEUR" FROM ARTICLE;

-- 9. Les identifiants des articles écrits par 'Adams';
SELECT AR.IDARTICLE FROM ARTICLE AR
    JOIN ARTICLE_AUTEUR AA on AR.IDARTICLE = AA.IDARTICLE
    JOIN AUTEUR A on AA.IDAUTEUR = A.IDAUTEUR
    WHERE UPPER(NOMAUTEUR) LIKE '%ADAMS%';

-- 10. Pour chaque article, son titre et le nom de la revue dans laquelle il a été publié;
SELECT AR.TITRE, R.NOMREVUE FROM ARTICLE AR
    JOIN REVUE R on AR.IDREVUE = R.IDREVUE;

-- 11. Tous les auteurs qui n’ont pas publiés d’ouvrage;
SELECT * FROM AUTEUR A
    WHERE (
        SELECT COUNT(*) FROM OUVRAGE O
            JOIN OUVRAGE_AUTEUR OA on O.IDOUVRAGE = OA.IDOUVRAGE
            JOIN AUTEUR A2 on OA.IDAUTEUR = A2.IDAUTEUR
            WHERE A2.IDAUTEUR = A.IDAUTEUR
        ) = 0;

-- 12. La liste des articles dont un des mots clés est 'segmentation' ;
SELECT A.* FROM ARTICLE A
    JOIN ARTICLE_MOTCLES AM on A.IDARTICLE = AM.IDARTICLE
    JOIN MOTCLES M on AM.IDMOT = M.IDMOT
    WHERE UPPER(M.MOT) = 'SEGMENTATION';

-- 13. Tous les auteurs qui ont publiés dans la revue 'Information Processing Letters' ;
SELECT A.* FROM AUTEUR A
    JOIN ARTICLE_AUTEUR AA on A.IDAUTEUR = AA.IDAUTEUR
    JOIN ARTICLE A2 on AA.IDARTICLE = A2.IDARTICLE
    WHERE A2.IDREVUE = (
        SELECT IDREVUE FROM REVUE R
            WHERE UPPER(R.NOMREVUE) = 'INFORMATION PROCESSING LETTERS'
    );

-- 14. Les noms des éditeurs qui ont publiés des ouvrages ces 20 dernières années ( EXTRACT(YEAR FROM SYSDATE) );
SELECT E.NOM FROM EDITEUR E
    JOIN OUVRAGE O on E.IDEDITEUR = O.IDEDITEUR
    WHERE O.ANNEE <= EXTRACT(YEAR FROM SYSDATE) - 20;

-- 15. Les éditeurs qui publient au moins une revue et qui ont déjà publié au moins un ouvrage;
SELECT E.* FROM EDITEUR E
    WHERE
        (
            SELECT COUNT(*) FROM REVUE R WHERE R.IDEDITEUR = E.IDEDITEUR
        ) >= 1
        AND
        (
            SELECT COUNT(*) FROM OUVRAGE O WHERE O.IDEDITEUR = E.IDEDITEUR
        ) >= 1;

-- 16. Le titre des articles et le nom de la revue pour les articles publiés dans la plus ancienne des revues;
SELECT A.TITRE, R.NOMREVUE FROM ARTICLE A
    JOIN REVUE R on A.IDREVUE = R.IDREVUE
    WHERE R.IDREVUE = (
        SELECT * FROM (
            SELECT R2.IDREVUE FROM REVUE R2 ORDER BY R2.ANNEE ASC
        )
        WHERE ROWNUM = 1
    );

-- 17. Toutes les paires d’auteur qui ont écrit un article ensemble. Chaque couple d’auteur n’apparaît qu’une fois dans l’ensemble résultat;
-- ?? Je n'ai aucune idée de comment faire ça

-- 18. Le nombre d’ouvrages par auteur;
SELECT COUNT(*) FROM OUVRAGE O
    JOIN OUVRAGE_AUTEUR OA on O.IDOUVRAGE = OA.IDOUVRAGE
    JOIN AUTEUR A2 on A2.IDAUTEUR = OA.IDAUTEUR
    GROUP BY OA.IDAUTEUR;

-- 19. Pour chaque auteur, son identifiant, son nom ainsi que le nombre d'organismes auxquels il est rattaché;
SELECT
    A.IDAUTEUR, A.NOMAUTEUR,
    (
        SELECT COUNT(*)
        FROM ORGANISME
        JOIN AUTEUR_ORGANISME AO on ORGANISME.IDORGANSIME = AO.IDORGANISME
        WHERE A.IDAUTEUR = AO.IDAUTEUR
    ) as NB_ORGANISMES
    FROM AUTEUR A;

-- 20. Le nombre d’articles publiés pour chaque membre d'un organisme Canadien;
SELECT DISTINCT A2.*, (
        SELECT count(*)
        FROM ARTICLE
        JOIN ARTICLE_AUTEUR AA on ARTICLE.IDARTICLE = AA.IDARTICLE
        WHERE AA.IDAUTEUR = A2.IDAUTEUR
    ) as NB_ARTICLE
    FROM AUTEUR A2
    JOIN AUTEUR_ORGANISME AO on A2.IDAUTEUR = AO.IDAUTEUR
    JOIN ORGANISME O on AO.IDORGANISME = O.IDORGANSIME
    WHERE UPPER(O.PAYS) = 'CANADA';

-- 21. Les articles qui sont associés à deux mots clés;
SELECT DISTINCT A.* FROM ARTICLE A
    WHERE (
        SELECT DISTINCT COUNT(AM2.IDMOT)
        FROM ARTICLE_MOTCLES AM2
        WHERE AM2.IDARTICLE = A.IDARTICLE
    ) = 2;

-- 22. Les ouvrages qui ont plus de deux auteurs;
SELECT O.* FROM OUVRAGE O
    WHERE (
        SELECT DISTINCT COUNT(OA.IDAUTEUR)
        FROM OUVRAGE_AUTEUR OA
        WHERE OA.IDOUVRAGE = O.IDOUVRAGE
    ) > 2;


-- 23. Dans trois colonnes distinctes, le jour, le mois et l’année de la date d’aujourd’hui (DUAL, SYSDATE, EXTRACT ou TO_CHAR) ;
SELECT
       EXTRACT(DAY FROM SYSDATE) as DAY,
       EXTRACT(MONTH FROM SYSDATE) as MONTH,
       EXTRACT(YEAR FROM SYSDATE) as YEAR
FROM DUAL;

-- 24. Les titres d’articles et d’ouvrages dans une seule table résultat (UNION) ;
SELECT TITRE FROM OUVRAGE
UNION
SELECT TITRE FROM ARTICLE;

-- 25. Les noms des revues et le nom de leur éditeur. Pour les revues n’ayant pas d’éditeur, le nom d’éditeur sera remplacé par la chaîne 'Pas d’éditeur' (NVL, jointure externe) ;
SELECT NOMREVUE, NVL(E.NOM, 'Pas d’éditeur') FROM REVUE
    LEFT OUTER JOIN EDITEUR E on E.IDEDITEUR = REVUE.IDEDITEUR;

-- 26. Les noms des auteurs qui ont écrit à la fois des articles et des ouvrages ;
SELECT A.NOMAUTEUR FROM AUTEUR A
    WHERE (
        SELECT COUNT(*) FROM ARTICLE JOIN ARTICLE_AUTEUR AA on ARTICLE.IDARTICLE = AA.IDARTICLE WHERE A.IDAUTEUR = AA.IDAUTEUR
    ) >= 1
    AND (
        SELECT COUNT(*) FROM OUVRAGE JOIN OUVRAGE_AUTEUR OA on OUVRAGE.IDOUVRAGE = OA.IDOUVRAGE WHERE A.IDAUTEUR = OA.IDAUTEUR
    ) >= 1;

-- 27. Les revues qui ont la même année de première publication et le même éditeur qu’une autre revue ;
SELECT R.* FROM REVUE R
    WHERE (
        SELECT COUNT(R2.IDREVUE) FROM REVUE R2
        WHERE R2.IDREVUE != R.IDREVUE AND R.ANNEE = R2.ANNEE
    ) > 0 AND
    (
        SELECT COUNT(R2.IDREVUE) FROM REVUE R2
        WHERE R2.IDREVUE != R.IDREVUE AND R.IDEDITEUR = R2.IDEDITEUR
    ) > 0;

-- 28. Les revues plus récentes qu’une des revues publiées par l’éditeur 'Addison-Wesley' (ANY, SOME, ALL) ;
SELECT * FROM REVUE
    WHERE ANNEE > (
        SELECT MIN(ANNEE) FROM REVUE
        JOIN EDITEUR E on REVUE.IDEDITEUR = E.IDEDITEUR
        WHERE UPPER(E.NOM) = 'ADDISON-WESLEY'
    );

-- 29. Les revues plus récentes que toutes les revues publiées par l’éditeur 'Addison- Wesley' (ANY, SOME, ALL) ;
SELECT * FROM REVUE
    WHERE ANNEE > (
        SELECT MAX(ANNEE) FROM REVUE
        JOIN EDITEUR E on REVUE.IDEDITEUR = E.IDEDITEUR
        WHERE UPPER(E.NOM) = 'ADDISON-WESLEY'
    );

-- 30. Les personnes qui ont écrit plus d’articles que le nombre moyen d'articles écrits par les membres des organismes auxquels ils appartiennent.
SELECT * FROM AUTEUR
    WHERE (
        SELECT COUNT(*) FROM ARTICLE_AUTEUR WHERE ARTICLE_AUTEUR.IDAUTEUR = AUTEUR.IDAUTEUR
    ) >
    (
        SELECT AVG(COUNT(*)) FROM ARTICLE
        JOIN ARTICLE_AUTEUR AA on ARTICLE.IDARTICLE = AA.IDARTICLE
        JOIN AUTEUR A2 on AA.IDAUTEUR = A2.IDAUTEUR
        JOIN AUTEUR_ORGANISME AO on A2.IDAUTEUR = AO.IDAUTEUR
        WHERE AO.IDORGANISME = 5
        GROUP BY AA.IDAUTEUR
    )

-- Nombre moyen d'article écrit par persone
