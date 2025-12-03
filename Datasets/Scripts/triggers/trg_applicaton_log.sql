-- Logs changes in application status into AUDIT_LOG table
CREATE OR REPLACE TRIGGER trg_application_log
AFTER UPDATE OF status ON job_applications
FOR EACH ROW
BEGIN
  INSERT INTO audit_log (
    action_type,
    table_name,
    username,
    action_date,
    status,
    message
  )
  VALUES (
    'UPDATE',                     -- Action type
    'JOB_APPLICATIONS',           -- Table name
    USER,                          -- Oracle user performing the action
    SYSTIMESTAMP,                  -- Timestamp of action
    :NEW.status,                   -- New status
    'Application ID ' || :OLD.app_id || 
    ' changed from ' || :OLD.status || 
    ' to ' || :NEW.status          -- Descriptive message
  );
END;
/
