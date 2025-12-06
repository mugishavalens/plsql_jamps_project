SELECT applicant_id,
       first_name || ' ' || last_name AS full_name,
       email,
       phone,
       years_experience,
       education_level,
       certifications,
       skills
  FROM applicants
 ORDER BY years_experience DESC
 FETCH FIRST 5 ROWS ONLY;
