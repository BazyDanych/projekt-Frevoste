CREATE DATABASE Theblizzarddismissal;

CREATE TABLE "Gracz" (
	"ID_Gracza" serial NOT NULL,
	"Login" varchar(255) NOT NULL,
	"Haslo" varchar(255) NOT NULL,
	"Mail" varchar(255) NOT NULL,
	"Data_urodzenia" DATE NOT NULL,
	"Stan_Waluty_Premium" integer,
	"ID_Historia_Mikrotransakcji" integer,
	"ID_Adres" integer NOT NULL,
	"ID_Serwera" integer NOT NULL,
	"ID_Koszyk_Sklep_Premiowany" integer NOT NULL,
	CONSTRAINT "Gracz_pk" PRIMARY KEY ("ID_Gracza")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Adres" (
	"ID_Adres" serial NOT NULL,
	"Ulica" varchar(255) NOT NULL,
	"Kod_pocztowy" integer NOT NULL,
	"ID_Miasto" integer NOT NULL,
	CONSTRAINT "Adres_pk" PRIMARY KEY ("ID_Adres")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Miasto" (
	"ID_Miasto" serial NOT NULL,
	"Nazwa_Miasta" varchar(255) NOT NULL,
	"ID_Kraju" integer NOT NULL,
	"ID_Wojewodztwa" integer,
	CONSTRAINT "Miasto_pk" PRIMARY KEY ("ID_Miasto")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Wojewodztwo" (
	"ID_Wojewodztwa" serial NOT NULL,
	"Nazwa_Wojewodztwa" varchar(255) NOT NULL,
	CONSTRAINT "Wojewodztwo_pk" PRIMARY KEY ("ID_Wojewodztwa")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kraj" (
	"ID_Kraju" serial NOT NULL,
	"ID_Kontynentu" integer NOT NULL,
	"ID_Waluty" integer NOT NULL,
	"ID_Jezyka_Urzedowego" integer NOT NULL,
	"Nazwa_Kraju" varchar NOT NULL,
	"Podatek" FLOAT NOT NULL,
	CONSTRAINT "Kraj_pk" PRIMARY KEY ("ID_Kraju")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kontynent" (
	"ID_Kontynentu" serial NOT NULL,
	"Nazwa_Kontynentu" varchar(255) NOT NULL,
	CONSTRAINT "Kontynent_pk" PRIMARY KEY ("ID_Kontynentu")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "ID_Waluty" (
	"ID_Waluty" serial NOT NULL,
	"Nazwa_Waluty" varchar(255) NOT NULL,
	"Przelicznik_Na_Euro" FLOAT NOT NULL,
	CONSTRAINT "ID_Waluty_pk" PRIMARY KEY ("ID_Waluty")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Jezyk" (
	"ID_Jezyka" serial NOT NULL,
	"Nazwa_Jezyka" varchar(255) NOT NULL,
	CONSTRAINT "Jezyk_pk" PRIMARY KEY ("ID_Jezyka")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kupno" (
	"ID_Kupna" serial NOT NULL,
	"ID_Gracza" integer NOT NULL,
	"ID_Koszyk" integer NOT NULL,
	"Data" DATE NOT NULL,
	CONSTRAINT "Kupno_pk" PRIMARY KEY ("ID_Kupna")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Historia_mikro_transakcji" (
	"ID_Kupionych" serial NOT NULL,
	"ID_Kupna" integer NOT NULL,
	CONSTRAINT "Historia_mikro_transakcji_pk" PRIMARY KEY ("ID_Kupionych")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Koszyk_Sklep_Premiowany" (
	"ID_Koszyk_Sklep_Premiowany" serial NOT NULL,
	CONSTRAINT "Koszyk_Sklep_Premiowany_pk" PRIMARY KEY ("ID_Koszyk_Sklep_Premiowany")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Zawartosc_Koszyk_Sklep_Premiowany" (
	"ID_Koszyk_Sklep_Premiowany" integer NOT NULL,
	"ID_Towar_Sklep_Premiowany" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Towar_Sklep_Premiowany" (
	"ID_Towar_Sklep_Premiowany" integer NOT NULL,
	"Cena" FLOAT NOT NULL,
	"Nazwa_Towaru_Premium" varchar(255) NOT NULL,
	"ID_Kategoria_Towaru_Premium" integer NOT NULL,
	CONSTRAINT "Towar_Sklep_Premiowany_pk" PRIMARY KEY ("ID_Towar_Sklep_Premiowany")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kategoria_Towaru_Premium" (
	"ID_Kategorii_Towaru_Premium" serial NOT NULL,
	"Nazwa_Kategorii_Towaru_Premium" varchar(255) NOT NULL,
	CONSTRAINT "Kategoria_Towaru_Premium_pk" PRIMARY KEY ("ID_Kategorii_Towaru_Premium")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Serwer" (
	"ID_Serwera" serial NOT NULL,
	"Nazwa_Serwera" varchar(255) NOT NULL,
	"ID_Kontynentu" integer NOT NULL,
	CONSTRAINT "Serwer_pk" PRIMARY KEY ("ID_Serwera")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Sojusz" (
	"ID_Sojusz" serial NOT NULL,
	"Nazwa_Sojuszu" varchar(255) NOT NULL,
	"Max_Ilosc_Czlonkow" integer NOT NULL,
	"Ilosc_Czlonkow" integer NOT NULL,
	"ID_Serwera" integer NOT NULL,
	"Wynik_Sojuszu" integer,
	CONSTRAINT "Sojusz_pk" PRIMARY KEY ("ID_Sojusz")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Postac" (
	"ID_Sojuszu" integer,
	"ID_Postaci" serial NOT NULL,
	"ID_Ligi" integer NOT NULL,
	"ID_Gracza" integer NOT NULL,
	"ID_Profesji" integer NOT NULL,
	"Nazwa_Postaci" varchar(255) NOT NULL,
	"ID_Koordynaty" integer NOT NULL,
	"ID_Statystyki" integer NOT NULL,
	"Doswiadczenie" integer,
	"Wskaznik_Honoru" integer,
	"Wynik_Postaci" integer,
	CONSTRAINT "Postac_pk" PRIMARY KEY ("ID_Postaci")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Liga" (
	"ID_Ligi" serial NOT NULL,
	"Data_Rozpoczecia" DATE NOT NULL,
	"Data_Zakonczenia" DATE NOT NULL,
	"Nazwa_Ligi" varchar(255) NOT NULL,
	CONSTRAINT "Liga_pk" PRIMARY KEY ("ID_Ligi")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Mapa" (
	"ID_Mapy" serial NOT NULL,
	"Nazwa_Mapy" varchar(255) NOT NULL,
	CONSTRAINT "Mapa_pk" PRIMARY KEY ("ID_Mapy")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Koordynaty" (
	"ID_Koordynaty" serial NOT NULL,
	"X" integer NOT NULL,
	"Y" integer NOT NULL,
	"Z" integer NOT NULL,
	"ID_Mapy" integer NOT NULL,
	CONSTRAINT "Koordynaty_pk" PRIMARY KEY ("ID_Koordynaty")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Profesja" (
	"ID_Profesji" serial NOT NULL,
	"Nazwa_Profesji" varchar(255) NOT NULL,
	CONSTRAINT "Profesja_pk" PRIMARY KEY ("ID_Profesji")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Typ_Postaci" (
	"ID_Postaci" integer NOT NULL,
	"ID_Rasy" integer NOT NULL,
	"ID_Klasa" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Klasa" (
	"ID_Klasy" serial NOT NULL,
	"Nazwa_Klasy" varchar(255) NOT NULL,
	CONSTRAINT "Klasa_pk" PRIMARY KEY ("ID_Klasy")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Rasa" (
	"ID_Rasy" serial NOT NULL,
	"Nazwa_Rasy" varchar(255) NOT NULL,
	"ID_Strony_Konfliktu" integer NOT NULL,
	CONSTRAINT "Rasa_pk" PRIMARY KEY ("ID_Rasy")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Strona_Konfliktu" (
	"ID_Strony_Konfliktu" serial NOT NULL,
	"Nazwa_Strony_Konfliktu" varchar(255) NOT NULL,
	CONSTRAINT "Strona_Konfliktu_pk" PRIMARY KEY ("ID_Strony_Konfliktu")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Statystyki" (
	"ID_Statystyki" serial NOT NULL,
	"Atak" integer,
	"Obrona" integer,
	"Max_HP" integer NOT NULL,
	"Max_MP" integer,
	"Sila" integer,
	"Zrecznosc" integer,
	"Inteligencja" integer,
	"Szczescie" integer,
	"Poziom" integer,
	CONSTRAINT "Statystyki_pk" PRIMARY KEY ("ID_Statystyki")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Bestariusz" (
	"ID_Koordynaty" integer NOT NULL,
	"ID_Potwora" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Typ_Potwora" (
	"ID_Typ_Potwora" serial NOT NULL,
	"Nazwa_Typ_Potwora" varchar(255) NOT NULL,
	"ID_Statystyki" integer NOT NULL,
	CONSTRAINT "Typ_Potwora_pk" PRIMARY KEY ("ID_Typ_Potwora")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Potwor" (
	"ID_Potwora" serial NOT NULL,
	"Nazwa_Potwora" varchar(255) NOT NULL,
	"ID_Typu_Potwora" integer NOT NULL,
	CONSTRAINT "Potwor_pk" PRIMARY KEY ("ID_Potwora")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Ekwipunek_Postaci" (
	"ID_Postaci" integer NOT NULL,
	"ID_Przedmiotu" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Przedmioty" (
	"ID_Przedmiotu" serial NOT NULL,
	"Nazwa_Przedmiotu" varchar(255) NOT NULL,
	"ID_Typ_Przedmiotu" integer NOT NULL,
	"ID_Unikalnosc_Przedmiotu" integer NOT NULL,
	"Dodatkowy_Atak" integer,
	"Dodatkowa_Obrona" integer,
	"Dodatkowe_HP" integer,
	"Dodatkowe_MP" integer,
	"Dodatkowa_Sila" integer,
	"DOdatkowa_Zrecznosc" integer,
	"Dodatkowa_Inteligencja" integer,
	"Dodatkowe_Szczescie" integer,
	"Wytrzymalosc_Przedmiotu" integer,
	"Poziom_Przedmiotu" integer,
	CONSTRAINT "Przedmioty_pk" PRIMARY KEY ("ID_Przedmiotu")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Unikalnosc" (
	"ID_Unikalnosci" serial NOT NULL,
	"Nazwa_Unikalnosci" varchar(255) NOT NULL,
	"ID_Koloru" integer NOT NULL,
	"Mnoznik_Statystyk" FLOAT NOT NULL,
	CONSTRAINT "Unikalnosc_pk" PRIMARY KEY ("ID_Unikalnosci")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kolor" (
	"ID_Koloru" serial NOT NULL,
	"Nazwa_Koloru" varchar(255) NOT NULL,
	"Zapis_Szesnastkowy" varchar(255) NOT NULL,
	CONSTRAINT "Kolor_pk" PRIMARY KEY ("ID_Koloru")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Typ_Przedmiotu" (
	"ID_Typu_Przedmiotu" serial NOT NULL,
	"Nazwa_Typu_Przedmiotu" varchar(255) NOT NULL,
	"Czy_Da_Zalozyc" BOOLEAN NOT NULL,
	CONSTRAINT "Typ_Przedmiotu_pk" PRIMARY KEY ("ID_Typu_Przedmiotu")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Drop_Z_Potwora" (
	"ID_Potwora" integer NOT NULL,
	"ID_Przedmiotu" integer NOT NULL,
	"Szansa_Na_Drop" FLOAT NOT NULL
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Gracz" ADD CONSTRAINT "Gracz_fk0" FOREIGN KEY ("ID_Historia_Mikrotransakcji") REFERENCES "Historia_mikro_transakcji"("ID_Kupionych");
ALTER TABLE "Gracz" ADD CONSTRAINT "Gracz_fk1" FOREIGN KEY ("ID_Adres") REFERENCES "Adres"("ID_Adres");
ALTER TABLE "Gracz" ADD CONSTRAINT "Gracz_fk2" FOREIGN KEY ("ID_Koszyk_Sklep_Premiowany") REFERENCES "Koszyk_Sklep_Premiowany"("ID_Koszyk_Sklep_Premiowany");

ALTER TABLE "Adres" ADD CONSTRAINT "Adres_fk0" FOREIGN KEY ("ID_Miasto") REFERENCES "Miasto"("ID_Miasto");

ALTER TABLE "Miasto" ADD CONSTRAINT "Miasto_fk0" FOREIGN KEY ("ID_Kraju") REFERENCES "Kraj"("ID_Kraju");
ALTER TABLE "Miasto" ADD CONSTRAINT "Miasto_fk1" FOREIGN KEY ("ID_Wojewodztwa") REFERENCES "Wojewodztwo"("ID_Wojewodztwa");


ALTER TABLE "Kraj" ADD CONSTRAINT "Kraj_fk0" FOREIGN KEY ("ID_Kontynentu") REFERENCES "Kontynent"("ID_Kontynentu");
ALTER TABLE "Kraj" ADD CONSTRAINT "Kraj_fk1" FOREIGN KEY ("ID_Waluty") REFERENCES "ID_Waluty"("ID_Waluty");
ALTER TABLE "Kraj" ADD CONSTRAINT "Kraj_fk2" FOREIGN KEY ("ID_Jezyka_Urzedowego") REFERENCES "Jezyk"("ID_Jezyka");




ALTER TABLE "Kupno" ADD CONSTRAINT "Kupno_fk0" FOREIGN KEY ("ID_Gracza") REFERENCES "Gracz"("ID_Gracza");
ALTER TABLE "Kupno" ADD CONSTRAINT "Kupno_fk1" FOREIGN KEY ("ID_Koszyk") REFERENCES "Koszyk_Sklep_Premiowany"("ID_Koszyk_Sklep_Premiowany");

ALTER TABLE "Historia_mikro_transakcji" ADD CONSTRAINT "Historia_mikro_transakcji_fk0" FOREIGN KEY ("ID_Kupna") REFERENCES "Kupno"("ID_Kupna");


ALTER TABLE "Zawartosc_Koszyk_Sklep_Premiowany" ADD CONSTRAINT "Zawartosc_Koszyk_Sklep_Premiowany_fk0" FOREIGN KEY ("ID_Koszyk_Sklep_Premiowany") REFERENCES "Koszyk_Sklep_Premiowany"("ID_Koszyk_Sklep_Premiowany");
ALTER TABLE "Zawartosc_Koszyk_Sklep_Premiowany" ADD CONSTRAINT "Zawartosc_Koszyk_Sklep_Premiowany_fk1" FOREIGN KEY ("ID_Towar_Sklep_Premiowany") REFERENCES "Towar_Sklep_Premiowany"("ID_Towar_Sklep_Premiowany");

ALTER TABLE "Towar_Sklep_Premiowany" ADD CONSTRAINT "Towar_Sklep_Premiowany_fk0" FOREIGN KEY ("ID_Kategoria_Towaru_Premium") REFERENCES "Kategoria_Towaru_Premium"("ID_Kategorii_Towaru_Premium");


ALTER TABLE "Serwer" ADD CONSTRAINT "Serwer_fk0" FOREIGN KEY ("ID_Kontynentu") REFERENCES "Kontynent"("ID_Kontynentu");

ALTER TABLE "Sojusz" ADD CONSTRAINT "Sojusz_fk0" FOREIGN KEY ("ID_Serwera") REFERENCES "Serwer"("ID_Serwera");

ALTER TABLE "Postac" ADD CONSTRAINT "Postac_fk0" FOREIGN KEY ("ID_Sojuszu") REFERENCES "Sojusz"("ID_Sojusz");
ALTER TABLE "Postac" ADD CONSTRAINT "Postac_fk1" FOREIGN KEY ("ID_Ligi") REFERENCES "Liga"("ID_Ligi");
ALTER TABLE "Postac" ADD CONSTRAINT "Postac_fk2" FOREIGN KEY ("ID_Gracza") REFERENCES "Gracz"("ID_Gracza");
ALTER TABLE "Postac" ADD CONSTRAINT "Postac_fk3" FOREIGN KEY ("ID_Profesji") REFERENCES "Profesja"("ID_Profesji");
ALTER TABLE "Postac" ADD CONSTRAINT "Postac_fk4" FOREIGN KEY ("ID_Koordynaty") REFERENCES "Koordynaty"("ID_Koordynaty");
ALTER TABLE "Postac" ADD CONSTRAINT "Postac_fk5" FOREIGN KEY ("ID_Statystyki") REFERENCES "Statystyki"("ID_Statystyki");



ALTER TABLE "Koordynaty" ADD CONSTRAINT "Koordynaty_fk0" FOREIGN KEY ("ID_Mapy") REFERENCES "Mapa"("ID_Mapy");


ALTER TABLE "Typ_Postaci" ADD CONSTRAINT "Typ_Postaci_fk0" FOREIGN KEY ("ID_Postaci") REFERENCES "Postac"("ID_Postaci");
ALTER TABLE "Typ_Postaci" ADD CONSTRAINT "Typ_Postaci_fk1" FOREIGN KEY ("ID_Rasy") REFERENCES "Rasa"("ID_Rasy");
ALTER TABLE "Typ_Postaci" ADD CONSTRAINT "Typ_Postaci_fk2" FOREIGN KEY ("ID_Klasa") REFERENCES "Klasa"("ID_Klasy");


ALTER TABLE "Rasa" ADD CONSTRAINT "Rasa_fk0" FOREIGN KEY ("ID_Strony_Konfliktu") REFERENCES "Strona_Konfliktu"("ID_Strony_Konfliktu");



ALTER TABLE "Bestariusz" ADD CONSTRAINT "Bestariusz_fk0" FOREIGN KEY ("ID_Koordynaty") REFERENCES "Koordynaty"("ID_Koordynaty");
ALTER TABLE "Bestariusz" ADD CONSTRAINT "Bestariusz_fk1" FOREIGN KEY ("ID_Potwora") REFERENCES "Potwor"("ID_Potwora");

ALTER TABLE "Typ_Potwora" ADD CONSTRAINT "Typ_Potwora_fk0" FOREIGN KEY ("ID_Statystyki") REFERENCES "Statystyki"("ID_Statystyki");

ALTER TABLE "Potwor" ADD CONSTRAINT "Potwor_fk0" FOREIGN KEY ("ID_Typu_Potwora") REFERENCES "Typ_Potwora"("ID_Typ_Potwora");



ALTER TABLE "Ekwipunek_Postaci" ADD CONSTRAINT "Ekwipunek_Postaci_fk0" FOREIGN KEY ("ID_Postaci") REFERENCES "Postac"("ID_Postaci");
ALTER TABLE "Ekwipunek_Postaci" ADD CONSTRAINT "Ekwipunek_Postaci_fk1" FOREIGN KEY ("ID_Przedmiotu") REFERENCES "Przedmioty"("ID_Przedmiotu");

ALTER TABLE "Przedmioty" ADD CONSTRAINT "Przedmioty_fk0" FOREIGN KEY ("ID_Typ_Przedmiotu") REFERENCES "Typ_Przedmiotu"("ID_Typu_Przedmiotu");
ALTER TABLE "Przedmioty" ADD CONSTRAINT "Przedmioty_fk1" FOREIGN KEY ("ID_Unikalnosc_Przedmiotu") REFERENCES "Unikalnosc"("ID_Unikalnosci");

ALTER TABLE "Unikalnosc" ADD CONSTRAINT "Unikalnosc_fk0" FOREIGN KEY ("ID_Koloru") REFERENCES "Kolor"("ID_Koloru");

ALTER TABLE "Drop_Z_Potwora" ADD CONSTRAINT "Drop_Z_Potwora_fk0" FOREIGN KEY ("ID_Potwora") REFERENCES "Potwor"("ID_Potwora");
ALTER TABLE "Drop_Z_Potwora" ADD CONSTRAINT "Drop_Z_Potwora_fk1" FOREIGN KEY ("ID_Przedmiotu") REFERENCES "Przedmioty"("ID_Przedmiotu");
