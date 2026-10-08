SET SERVEROUTPUT ON;

-- ILLEGAL GOTO EXAMPLE
-- The following GOTO is illegal because it jumps into an IF statement.
--
-- GOTO inside_if;
--
-- IF v_number > 0 THEN
--     <<inside_if>>
--     DBMS_OUTPUT.PUT_LINE('Number is positive.');
-- END IF;

-- FIXED VERSION

DECLARE
    v_number NUMBER := 10;
BEGIN
    GOTO check_number;

    <<check_number>>
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is positive.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is zero or negative.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Illegal GOTO fixed successfully.');
END;
/
