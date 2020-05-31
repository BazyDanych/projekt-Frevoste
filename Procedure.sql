CREATE OR REPLACE PROCEDURE opusc_sojusz(INT, INT)
LANGUAGE plpgsql
AS $$
BEGIN

    UPDATE "Postac"
    SET "ID_Sojusz" = NULL
    WHERE "ID_Postac" = $1;


    UPDATE "Sojusz"
    SET "Ilosc_Czlonkow" = "Ilosc_Czlonkow"-1
    WHERE "ID_Sojusz" = $2;

    COMMIT;
END;
$$;
