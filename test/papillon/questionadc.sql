      CREATE   VIEW hulp(art, tothoev) AS          SELECT   art, SUM(hoeveelheid)          FROM   verkoop          WHERE   MONTH(datum) < 7             AND YEAR(datum) = 2003          GROUP   BY art;           SELECT   hulp.art, beschrijving, tothoev       FROM   hulp, artikel       WHERE   hulp.art = artikel.art          AND tothoev = (   SELECT   MAX(tothoev)             FROM   hulp);           DROP VIEW hulp;       
