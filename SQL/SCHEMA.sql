

CREATE DATABASE IF NOT EXISTS gym_membership_system;
USE gym_membership_system;

CREATE TABLE MEMBER (
  member_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  age INT,
  gender VARCHAR(10),
  phone VARCHAR(15) UNIQUE,
  email VARCHAR(100) UNIQUE,
  join_date DATE,
  status VARCHAR(20)
);


CREATE TABLE MEMBERSHIP_PLAN (
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(50),
  duration_months INT,
  price DECIMAL(10,2)
);


CREATE TABLE TRAINER (
  trainer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  specialization VARCHAR(50),
  phone VARCHAR(15)
);


CREATE TABLE MEMBERSHIP (
  membership_id INT PRIMARY KEY AUTO_INCREMENT,
  member_id INT,
  plan_id INT,
  start_date DATE,
  end_date DATE,
  membership_status VARCHAR(20),
  FOREIGN KEY (member_id) REFERENCES MEMBER(member_id),
  FOREIGN KEY (plan_id) REFERENCES MEMBERSHIP_PLAN(plan_id)
);


CREATE TABLE PAYMENT (
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  member_id INT,
  amount DECIMAL(10,2),
  payment_date DATE,
  payment_mode VARCHAR(20),
  payment_status VARCHAR(20),
  FOREIGN KEY (member_id) REFERENCES MEMBER(member_id)
);


CREATE TABLE ATTENDANCE (
  attendance_id INT PRIMARY KEY AUTO_INCREMENT,
  member_id INT,
  date DATE,
  check_in_time TIME,
  check_out_time TIME,
  FOREIGN KEY (member_id) REFERENCES MEMBER(member_id)
);


CREATE TABLE TRAINER_ASSIGNMENT (
  assignment_id INT PRIMARY KEY AUTO_INCREMENT,
  trainer_id INT,
  member_id INT,
  assigned_date DATE,
  FOREIGN KEY (trainer_id) REFERENCES TRAINER(trainer_id),
  FOREIGN KEY (member_id) REFERENCES MEMBER(member_id)
);