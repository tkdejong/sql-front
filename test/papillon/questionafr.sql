      SELECT   kleur, COUNT(art)       FROM   artikel, soort       WHERE   artikel.srtc = soort.srtc          AND soort.beschrijving = "dameskleding"       GROUP   BY kleur       HAVING   COUNT(art) > 1;       
