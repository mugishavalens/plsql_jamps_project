CREATE OR REPLACE FUNCTION is_valid_email(p_email VARCHAR2) RETURN NUMBER IS
BEGIN
    IF REGEXP_LIKE(p_email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
/

CREATE OR REPLACE FUNCTION is_valid_age(p_age NUMBER) RETURN NUMBER IS
BEGIN
    IF p_age BETWEEN 18 AND 65 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
/
