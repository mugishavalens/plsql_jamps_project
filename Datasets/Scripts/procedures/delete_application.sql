-- File: delete_application.sql
-- Purpose: Deletes a job application by APP_ID
CREATE OR REPLACE PROCEDURE delete_application(
    p_app_id IN job_applications.app_id%TYPE
)
IS
BEGIN
    DELETE FROM job_applications
    WHERE app_id = p_app_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Application ID not found. Nothing deleted.');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Application ID ' || p_app_id || ' deleted successfully.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;
/
