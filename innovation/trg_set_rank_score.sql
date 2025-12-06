CREATE OR REPLACE TRIGGER trg_set_rank_score
BEFORE INSERT OR UPDATE ON job_applications
FOR EACH ROW
BEGIN
    :NEW.rank_score := compute_rank_score(
        :NEW.applicant_id,
        :NEW.job_id
    );
END;
/
