CREATE OR REPLACE FUNCTION compute_rank_score (
    p_applicant_id NUMBER,
    p_job_id NUMBER
) RETURN NUMBER IS

    v_years NUMBER;
    v_edu VARCHAR2(20);
    v_cert NUMBER;
    v_skills VARCHAR2(200);
    v_score NUMBER := 0;
    
BEGIN
    SELECT years_experience, education_level, certifications, skills
    INTO v_years, v_edu, v_cert, v_skills
    FROM applicants
    WHERE applicant_id = p_applicant_id;

    -- Experience (0–40 points)
    v_score := v_score +
        CASE 
            WHEN v_years >= 10 THEN 40
            WHEN v_years >= 5 THEN 30
            WHEN v_years >= 2 THEN 20
            ELSE 10
        END;

    -- Education (0–30 points)
    v_score := v_score +
        CASE 
            WHEN v_edu = 'PHD' THEN 30
            WHEN v_edu = 'MASTERS' THEN 25
            WHEN v_edu = 'BACHELOR' THEN 20
            ELSE 10
        END;

    -- Certifications (0–20 points)
    v_score := v_score + LEAST(v_cert * 5, 20);

    -- Skills match (0–10 points)
    IF LOWER(v_skills) LIKE '%sql%' THEN
        v_score := v_score + 10;
    ELSE
        v_score := v_score + 5;
    END IF;

    RETURN v_score;

END compute_rank_score;
/
