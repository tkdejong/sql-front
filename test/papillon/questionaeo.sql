      CREATE   VIEW hulp1(afd, aantal) AS          SELECT   afd, COUNT(verkart.art)          FROM   verkart, artikel          WHERE   verkart.art = artikel.art             AND srtc = "meubel"          GROUP   BY afd;           SELECT   COUNT(afd)       FROM   afdeling       WHERE   (   afd NOT IN (   SELECT   afd                FROM   hulp1))             OR (afd IN (   SELECT   afd                FROM   hulp1                WHERE   aantal < (   SELECT   COUNT(art)                      FROM   artikel                      WHERE   srtc = "meubel")));           DROP VIEW hulp1;       
