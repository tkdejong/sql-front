      CREATE   VIEW hulp1(lev, art) AS          SELECT   DISTINCT lev, inkart.art          FROM   inkart, artikel          WHERE   inkart.art = artikel.art             AND artikel.srtc = "stof";           CREATE   VIEW hulp2(afd) AS          SELECT   DISTINCT verkart.afd          FROM   verkart, afdeling          WHERE   verkart.afd = afdeling.afd             AND verdieping = 2             AND art IN (   SELECT   art                FROM   artikel                WHERE   srtc = "stof");           SELECT   DISTINCT lev       FROM   hulp1       WHERE   NOT EXISTS (   SELECT   art             FROM   verkart             WHERE   hulp1.art = verkart.art                AND verkart.afd NOT IN (   SELECT   afd                   FROM   hulp2));           DROP VIEW hulp1;       DROP VIEW hulp2;       
