CREATE OR REPLACE PROCEDURE jobs_with_application_count IS
BEGIN
  FOR rec IN (
    SELECT j.job_title, COUNT(ja.app_id) AS total_apps
    FROM jobs j
    LEFT JOIN job_applications ja ON j.job_id = ja.job_id
    GROUP BY j.job_title
    ORDER BY j.job_title
  )
  LOOP
    DBMS_OUTPUT.PUT_LINE(
      'Job: ' || rec.job_title || ' | Applications: ' || rec.total_apps
    );
  END LOOP;
END;
/
