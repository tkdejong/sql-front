      CREATE   VIEW hulp1(srtc, totaal) AS          SELECT   srtc, sum(hoeveelheid)          FROM   artikel, verkoop          WHERE   artikel.art = verkoop.art             AND year(datum) = 2002             AND month(datum) = 1          GROUP   BY srtc;           CREATE   VIEW hulp2(srtc, totaal) AS          SELECT   srtc, SUM(hoeveelheid)          FROM   artikel,verkoop          WHERE   artikel.art = verkoop.art             AND year(datum) = 2002             AND month(datum) = 2          GROUP   BY srtc;           SELECT   hulp1.srtc       FROM   hulp1, hulp2       WHERE   hulp1.srtc = hulp2.srtc          AND hulp2.totaal < hulp1.totaal;           DROP VIEW hulp1;       DROP VIEW hulp2;       
