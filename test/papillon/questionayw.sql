      CREATE   VIEW hulp(lev, aantart) AS          SELECT   lev, COUNT(art)          FROM   inkart          GROUP   BY lev;           SELECT   firmanaam       FROM   leverancier, hulp       WHERE   leverancier.lev = hulp.lev          AND aantart = (   SELECT   MAX(aantart)             FROM   hulp);           DROP VIEW hulp;       
