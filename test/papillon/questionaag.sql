      CREATE   VIEW hulp(afd, aantal) AS          SELECT   afd, COUNT(art)          FROM   verkart          GROUP   BY afd;           SELECT   afd, aantal       FROM   hulp       WHERE   aantal = (   SELECT   MAX(aantal)             FROM   hulp);           DROP VIEW hulp;       
