SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 500000;
BEGIN
    IF v_salary >= 500000 THEN
        GOTO salary_high;
    ELSE
        GOTO salary_review;
    END IF;

    <<salary_high>>
    DBMS_OUTPUT.PUT_LINE('Salary is high. No review needed.');
    GOTO finish;

    <<salary_review>>
    DBMS_OUTPUT.PUT_LINE('Salary needs to be reviewed.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review complete.');
END;
/
