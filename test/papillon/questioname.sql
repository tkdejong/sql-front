      SELECT   SUM(hoeveelheid)       FROM   verkoop, artikel, afdeling       WHERE   verkoop.art = artikel.art          AND kleur = "rood"          AND verkoop.afd = afdeling.afd          AND verdieping = 3;       