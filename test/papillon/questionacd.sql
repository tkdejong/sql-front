      SELECT   beschrijving       FROM   artikel       WHERE   srtc = "meubel"          AND NOT EXISTS (   SELECT   art             FROM   verkoop             WHERE   artikel.art = verkoop.art                AND datum > "2001-12-31"                AND datum < "2003-02-01");       
