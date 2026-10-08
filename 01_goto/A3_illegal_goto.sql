SET SERVEROUTPUT ON;

-- ILLEGAL GOTO EXAMPLE
-- This GOTO tries to jump into an IF block.
-- Oracle will reject this because GOTO cannot jump into an IF statement.

DECLARE
    v_number NUMBER := 10;
BEGIN
    GOTO inside_if;

    IF v_number > 0 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Number is positive.');
    END IF;
END;
/
