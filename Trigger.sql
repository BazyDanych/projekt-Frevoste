CREATE TRIGGER suma AFTER UPDATE OF "Stan_Waluty_Premium"
    ON "Gracz"
    FOR EACH ROW
    WHEN (OLD.Stan_Waluty_Premium IS DISTINCT FROM NEW.Stan_Waluty_Premium )
    EXECUTE PROCEDURE roznica( int,int )
