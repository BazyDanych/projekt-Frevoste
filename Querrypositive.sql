/* Wyswietlenie ekwipunku psotaci o ID postaci = 1*/
SELECT * FROM "Ekwipunek_Postaci"
WHERE "ID_Postaci"=1;

/*Wykaz postaci na mapie o ID Mapy = 1*/
SELECT "ID_Postaci"
FROM "Postac"
AS P
WHERE P."ID_Koordynaty"
IN (SELECT K."ID_Koordynaty"
FROM "Koordynaty" as K
WHERE "ID_Mapy" = 1);

/*Wykaz statystyk postaci o ID Postaci =1.*/
SELECT * FROM "Statystyki"
AS P
WHERE P."ID_Statystyki"
IN (SELECT K."ID_Statystyki"
FROM "Postac" as K
WHERE "ID_Postaci" = 1);

/*Wykaz punktów uzyskanych przez postać z ID Postaci=1*/
SELECT "Wynik_Postaci"
FROM "Postac"
WHERE "ID_Postaci"=1;

/*Ranking postaci na podstawie uzyskanych punktów.*/
SELECT "Wynik_Postaci","ID_Postaci","Nazwa_Postaci"
FROM "Postac"
ORDER BY "Wynik_Postaci";

/*Ranking sojuszy na podstawie uzyskanych punktów.*/
SELECT "Wynik_Sojuszu","ID_Sojuszu","Nazwa_Sojuszu"
FROM "Sojusz"
ORDER BY "Wynik_Sojuszu";

/*Historia mikro transakcji Gracza o ID Gracza=1.*/
SELECT * FROM "Historia_mikro_transakcji"
AS P
WHERE P."ID_Kupionych"
IN (SELECT K."ID_Historia_Mikrotransakcji"
FROM "Gracz" as K
WHERE "ID_Gracza" = 1);
