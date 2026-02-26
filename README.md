# Gym Membership System – DBMS Project

## 📌 Project Overview
The **Gym Membership System** is a Database Management System (DBMS) project designed to manage and organize gym-related data efficiently.  
This system handles information about gym members, membership plans, trainers, payments, and attendance using a relational database approach.

The project is developed as part of **DBMS coursework (Module 1 / Week 1)** and focuses on **database design**, **ER modeling**, and **relational schema design**.

---

## 🎯 Objectives
- To design a structured database for gym management
- To understand and implement **ER Diagrams**
- To convert ER models into **Relational Schemas**
- To apply DBMS concepts such as:
  - Primary Keys
  - Foreign Keys
  - Relationships
  - Normalization

---

## 🧩 Modules Covered
- Conceptual ER Diagram (Classical ER Model)
- Relational Schema Design
- Entity Relationships & Cardinalities
- Database Design using MySQL (later modules)

---

## 🏗️ Entities in the System
- Member
- Membership Plan
- Membership
- Payment
- Trainer
- Attendance
- Trainer Assignment

---

## 🔗 Relationships
- A member can enroll in multiple memberships
- A membership belongs to one membership plan
- A member can make multiple payments
- A member can have multiple attendance records
- A trainer can train multiple members and a member can have multiple trainers  
  (Many-to-Many relationship resolved using Trainer Assignment)

---

## 🛠️ Tools & Technologies
- **Database**: MySQL
- **Diagram Tool**: dbdiagram.io / draw.io
- **Version Control**: Git & GitHub
- **AI Assistance**: Gemini (for ER diagram generation)

---

## 📂 Project Structure
gym-membership-system-dbms/
│
├── diagrams/
│ ├── er_diagram.pdf
│ └── relational_schema.png
│
├── sql/
│ └── schema.sql
│
├── documentation/
│ └── project_report.pdf
│
└── README.md
