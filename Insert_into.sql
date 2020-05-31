
/* ID WALUTY */
INSERT INTO "ID_Waluty" ("ID_Waluty","Nazwa_Waluty","Przelicznik_Na_Euro") VALUES ('1','Zloty','4.45');
INSERT INTO "ID_Waluty" ("ID_Waluty","Nazwa_Waluty","Przelicznik_Na_Euro") VALUES ('2','Korona Norweska','0.093');
INSERT INTO "ID_Waluty" ("ID_Waluty","Nazwa_Waluty","Przelicznik_Na_Euro") VALUES ('3','Dolar','0.90');

/* JEZYK */
INSERT INTO "Jezyk" ("ID_Jezyka","Nazwa_Jezyka") VALUES ('1','Polski');
INSERT INTO "Jezyk" ("ID_Jezyka","Nazwa_Jezyka") VALUES ('2','Norweski');
INSERT INTO "Jezyk" ("ID_Jezyka","Nazwa_Jezyka") VALUES ('3','Angielski');

/* KONTYNENT */
INSERT INTO "Kontynent" ("ID_Kontynentu","Nazwa_Kontynentu") VALUES ('1','Europa');
INSERT INTO "Kontynent" ("ID_Kontynentu","Nazwa_Kontynentu") VALUES ('2','Ameryka Polnocna');

/* KRAJ */
INSERT INTO "Kraj" ("ID_Kraju","ID_Kontynentu","ID_Waluty","ID_Jezyka_Urzedowego","Nazwa_Kraju","Podatek") VALUES ('1','1','1','1','Polska','0.23');
INSERT INTO "Kraj" ("ID_Kraju","ID_Kontynentu","ID_Waluty","ID_Jezyka_Urzedowego","Nazwa_Kraju","Podatek") VALUES ('2','1','2','2','Norwegia','0.25');
INSERT INTO "Kraj" ("ID_Kraju","ID_Kontynentu","ID_Waluty","ID_Jezyka_Urzedowego","Nazwa_Kraju","Podatek") VALUES ('3','2','3','3','Stany Zjednoczone','0.4');

/* WOJEWODZTWO */
INSERT INTO "Wojewodztwo" ("ID_Wojewodztwa","Nazwa_Wojewodztwa") VALUES ('1','Pomorskie');

/* MIASTO */
INSERT INTO "Miasto" VALUES ('1','Gdansk','1','1');
INSERT INTO "Miasto" VALUES ('2','Oslo','2');
INSERT INTO "Miasto" VALUES ('3','Waszyngton','3');

/* ADRES */
INSERT INTO "Adres" VALUES ('1','Jeleniogorska','80180','1');
INSERT INTO "Adres" VALUES ('2','Norweska','83214','2');
INSERT INTO "Adres" VALUES ('3','Amerykanska','42313','3');

/* GRACZ */
INSERT INTO "Gracz" VALUES ('1','Kowal','Tajnehaslo123','kowal@gmail.com','1999-12-17','100','1','1','1');

/* Koszyk_Sklep_Premiowany */
INSERT INTO "Koszyk_Sklep_Premiowany" VALUES ('1');

/* KUPNO */
INSERT INTO "Kupno" VALUES ('1','1','1','2012-10-10');

/* HISTORIA MIKRO TRANSAKCJI */
INSERT INTO "Historia_mikro_transakcji" VALUES ('1','1');

/* KATEGORIA TOWARU PREMIUM */
INSERT INTO "Kategoria_Towaru_Premium" VALUES ('1','LEGENDARNE');

/* TOWAR SKLEP PREMIOWANY */
INSERT INTO "Towar_Sklep_Premiowany" VALUES ('1','0.69','ZLOTA KACZUSZKA INFORMATYKA','1');

/* ZAWARTOSC KOSZYK SKLEP PREMIOWANY */
INSERT INTO "Zawartosc_Koszyk_Sklep_Premiowany" VALUES ('1','1');

/* SERWER */
INSERT INTO "Serwer" VALUES ('1','Onyxia','1');

/* STRONA KONFLIKTU */
INSERT INTO "Strona_Konfliktu" VALUES ('1','Horda');

/* RASA */
INSERT INTO "Rasa" VALUES ('1','Anonimowi Informatycy','1');

/* KLASA */
INSERT INTO "Klasa" VALUES ('1','Programista baz danych');

/* PROFESJA */
INSERT INTO "Profesja" VALUES ('1','C++');

/* LIGA */
INSERT INTO "Liga" VALUES ('1','2009-11-10','2009-12-10','Koralowa');

/* MAPA */
INSERT INTO "Mapa" VALUES ('1','Serwerownia');

/* KOORDYNATY */
INSERT INTO "Koordynaty" VALUES ('1','10','10','10','1');

/* STATYSTYKI */
INSERT INTO "Statystyki" VALUES ('1','10','10','100','50','10','10','10','10','1');

/* POSTAC */
INSERT INTO "Postac" VALUES (Null,'1','1','1','1','Mocarny Krzysztof','1','1','0','69','420');

/* SOJUSZ */
INSERT INTO "Sojusz" VALUES ('1','Swirki','20','7','1','1337');

/* KOLOR */
INSERT INTO "Kolor" VALUES ('1','Czarny','#000000');

/* UNIKALNOSC */
INSERT INTO "Unikalnosc" VALUES ('1','Przemocarny','1','5555555.5');

/* TYP PRZEDMIOTU */
INSERT INTO "Typ_Przedmiotu" VALUES ('1','Helm','1');

/* PRZEDMIOTY */
INSERT INTO "Przedmioty" VALUES ('1','Czapka z amelinium','1','1','10','10','13','14','1','1','1','1','200','3122');

/* EKWIPUNEK POSTACI */
INSERT INTO "Ekwipunek_Postaci" VALUES ('1','1');

/* TYP POTWORA */
INSERT INTO "Typ_Potwora" VALUES ('1','Szuwarnik','1');

/* POTWOR */
INSERT INTO "Potwor" VALUES ('1','Geralt','1');

/* BESTARIUSZ */
INSERT INTO "Bestariusz" VALUES ('1','1');

/* DROP Z POTWORA */
INSERT INTO "Drop_Z_Potwora" VALUES ('1','1','0.63');
