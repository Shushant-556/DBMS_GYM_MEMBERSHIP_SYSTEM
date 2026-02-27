DELIMITER $$

-- =====================================================
-- TRIGGER 1:
-- Activate membership automatically after payment
-- =====================================================
CREATE TRIGGER activate_membership_after_payment
AFTER INSERT ON PAYMENT
FOR EACH ROW
BEGIN
  UPDATE MEMBERSHIP
  SET membership_status = 'Active'
  WHERE member_id = NEW.member_id;
END$$


-- =====================================================
-- TRIGGER 2:
-- Deactivate member automatically after membership expiry
-- =====================================================
CREATE TRIGGER deactivate_member_after_membership_expiry
AFTER UPDATE ON MEMBERSHIP
FOR EACH ROW
BEGIN
  IF NEW.end_date < CURDATE() THEN
    UPDATE MEMBER
    SET status = 'Inactive'
    WHERE member_id = NEW.member_id;
  END IF;
END$$



-- =====================================================
-- TRIGGER 3:
-- Activate member automatically when a membership is created
-- =====================================================
CREATE TRIGGER activate_member_on_membership_insert
AFTER INSERT ON MEMBERSHIP
FOR EACH ROW
BEGIN
  UPDATE MEMBER
  SET status = 'Active'
  WHERE member_id = NEW.member_id;
END$$


-- =====================================================
-- TRIGGER 4:
-- Prevent duplicate attendance on the same day
-- =====================================================
CREATE TRIGGER prevent_duplicate_attendance
BEFORE INSERT ON ATTENDANCE
FOR EACH ROW
BEGIN
  IF EXISTS (
    SELECT 1
    FROM ATTENDANCE
    WHERE member_id = NEW.member_id
      AND date = NEW.date
  ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Attendance already marked for this member today';
  END IF;
END$$

DELIMITER ;
=======
DELIMITER ;
