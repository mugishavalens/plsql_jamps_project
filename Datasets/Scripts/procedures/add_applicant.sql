-- Purpose: Adds a new applicant
CREATE OR REPLACE PROCEDURE add_applicant(
    p_first_name IN applicants.first_name%TYPE,
    p_last_name IN applicants.last_name%TYPE,
    p_email IN applicants.email%TYPE,
    p_phone IN applicants.phone%TYPE,
    p_apply_date IN applicants.apply_date%TYPE DEFAULT SYSDATE
)
IS
BEGIN
    INSERT INTO applicants(first_name, last_name, email, phone, apply_date)
    VALUES(p_first_name, p_last_name, p_email, p_phone, p_apply_date);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Applicant "' || p_first_name || ' ' || p_last_name || '" added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding applicant: ' || SQLERRM);
        ROLLBACK;
END;
/