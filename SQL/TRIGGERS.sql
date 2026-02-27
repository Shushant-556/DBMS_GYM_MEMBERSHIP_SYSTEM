-- ===============================
-- Triggers for Automation
-- ===============================

DELIMITER $$

-- Activate membership after payment
CREATE TRIGGER activate_membership_after_payment
AFTER INSERT ON PAYMENT
FOR EACH ROW
BEGIN
  UPDATE MEMBERSHIP
  SET membership_status = 'Active'
  WHERE member_id = NEW.member_id;
END$$

-- Deactivate member after membership expiry
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

DELIMITER ;