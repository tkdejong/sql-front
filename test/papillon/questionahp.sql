      SELECT   naam, adres, woonplaats       FROM   werknemer, afdeling       WHERE   werknemer.afd = afdeling.afd          AND woonplaats <> "Delft"          AND woonplaats <> "Voorburg"          AND woonplaats <> "Rotterdam"          AND verdieping = 2;       
