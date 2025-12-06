CREATE OR REPLACE PROCEDURE GET_TOP_APPLICANTS IS
  CURSOR c_applicants IS
    SELECT applicant_id,
           first_name || ' ' || last_name AS full_name,
           email,
           phone,
           years_experience,
           education_level,
           certifications,
           skills
      FROM applicants
     ORDER BY years_experience DESC;  -- top applicants by experience

BEGIN
  FOR rec IN c_applicants LOOP
    DBMS_OUTPUT.PUT_LINE(
      rec.applicant_id || ' | ' || rec.full_name || ' | ' || rec.email
      || ' | ' || rec.phone || ' | ' || rec.years_experience
      || ' | ' || rec.education_level || ' | ' || rec.certifications
      || ' | ' || rec.skills
    );
  END LOOP;
END;
/
