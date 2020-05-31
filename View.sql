/* POSTACIE Z GRY WYSTEPUJACE PRZED LIGA 2 */
CREATE VIEW Postacie_przed_druga_liga AS
SELECT * FROM "Postac"
WHERE "ID_Ligi" < '2';
