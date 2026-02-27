

-- MEMBER
INSERT INTO MEMBER (name, age, gender, phone, email, join_date, status)
VALUES ('Rahul Sharma', 24, 'Male', '9876543210', 'rahul@gmail.com', '2024-02-10', 'Active');

-- MEMBERSHIP PLAN
INSERT INTO MEMBERSHIP_PLAN (plan_name, duration_months, price)
VALUES ('Monthly', 1, 1500.00);

-- TRAINER
INSERT INTO TRAINER (name, specialization, phone)
VALUES ('Amit Verma', 'Weight Training', '9123456789');

-- MEMBERSHIP
INSERT INTO MEMBERSHIP (member_id, plan_id, start_date, end_date, membership_status)
VALUES (1, 1, '2024-02-10', '2024-03-10', 'Active');

-- PAYMENT
INSERT INTO PAYMENT (member_id, amount, payment_date, payment_mode, payment_status)
VALUES (1, 1500.00, '2024-02-10', 'UPI', 'Paid');

-- ATTENDANCE
INSERT INTO ATTENDANCE (member_id, date, check_in_time, check_out_time)
VALUES (1, '2024-02-12', '06:30:00', '08:00:00');

-- TRAINER ASSIGNMENT
INSERT INTO TRAINER_ASSIGNMENT (trainer_id, member_id, assigned_date)
VALUES (1, 1, '2024-02-10');