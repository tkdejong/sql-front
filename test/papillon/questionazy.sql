      CREATE   VIEW hulp1(art, aant_83) AS          SELECT   art, SUM(hoeveelheid)          FROM   verkoop          WHERE   year(datum) = 2002             AND month(datum) = 1          GROUP   BY art;           CREATE   VIEW hulp2(art, aant_84) AS          SELECT   art, SUM(hoeveelheid)          FROM   verkoop          WHERE   year(datum) = 2003             AND month(datum) = 1          GROUP   BY art;           SELECT   hulp1.art, beschrijving       FROM   hulp1, hulp2, artikel       WHERE   hulp1.art = hulp2.art          AND aant_83 < aant_84          AND hulp1.art = artikel.art       ORDER   BY hulp1.art ASC;           DROP   VIEW hulp1;       DROP   VIEW hulp2;       