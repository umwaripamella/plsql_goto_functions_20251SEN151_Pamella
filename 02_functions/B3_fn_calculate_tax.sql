CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary   NUMBER,
    p_tax_rate NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_salary * (p_tax_rate / 100);
END;
/
