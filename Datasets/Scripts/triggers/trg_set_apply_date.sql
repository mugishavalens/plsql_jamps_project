-- Automatically sets the application date to current date on insert
CREATE OR REPLACE TRIGGER trg_set_apply_date
BEFORE INSERT ON job_applications
FOR EACH ROW
BEGIN
  :NEW.application_date := SYSDATE;
END;
/
