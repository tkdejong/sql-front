      SELECT   verdieping, afdnaam, COUNT(DISTINCT w)       FROM   afdeling, werknemer, verkart, artikel       WHERE   afdeling.afd = verkart.afd          AND verkart.art = artikel.art          AND kleur = "geel"          AND afdeling.afd = werknemer.afd       GROUP   BY verdieping, afdnaam;       
