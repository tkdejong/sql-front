      CREATE   VIEW hulp1(funktie, aantal) AS          SELECT   funktie, COUNT(w)          FROM   werknemer          GROUP   BY funktie;           SELECT   funktie       FROM   hulp1       WHERE   aantal = (   SELECT   MIN(aantal)             FROM   hulp1);           DROP VIEW hulp1;       