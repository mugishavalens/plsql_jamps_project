-- Purpose: Updates the status of an existing job application
CREATE OR REPLACE PROCEDURE update_application_status(
    p_app_id IN job_applications.app_id%TYPE,
    p_new_status IN job_applications.status%TYPE
)
IS
BEGIN
    UPDATE job_applications
    SET status = p_new_status
    WHERE app_id = p_app_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Application ID not found.');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Application ID ' || p_app_id || ' updated to ' || p_new_status || '.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;
/
