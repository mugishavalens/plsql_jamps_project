CREATE OR REPLACE FUNCTION is_restricted_day(p_date IN DATE)
RETURN VARCHAR2
IS
  v_day VARCHAR2(10);
  v_count NUMBER;
BEGIN
  -- Check for weekend
  v_day := TO_CHAR(p_date, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH');
  IF v_day IN ('SAT', 'SUN') THEN
    RETURN 'YES';
  END IF;

  -- Check for public holiday
  SELECT COUNT(*)
  INTO v_count
  FROM public_holidays
  WHERE holiday_date = TRUNC(p_date);

  IF v_count > 0 THEN
    RETURN 'YES';
  END IF;

  RETURN 'NO';
END;
/
