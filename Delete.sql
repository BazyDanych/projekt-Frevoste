ALTER TABLE "Gracz"
DROP COLUMN "Stan_Waluty_Premium";

ALTER TABLE "Postac";
DROP COLUMN "Doswiadczenie";

DELETE FROM "Sojusz" WHERE "ID_Sojusz" = 13;
DELETE FROM "Statystyki" WHERE "ID_Statystyki" = 7;