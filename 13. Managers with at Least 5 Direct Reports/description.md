# 🧑‍💼 SQL Challenge: Managers with At Least 5 Direct Reports

## 📄 Problem Statement

Write a SQL query to **find the names of managers who have at least five direct reports**.

Each employee may or may not have a manager. If `managerId` is `null`, the employee has no manager.

---

## 🧮 Table: Employee

| Column Name | Type    | Description                              |
|-------------|---------|------------------------------------------|
| id          | int     | Primary key - Employee ID                |
| name        | varchar | Name of the employee                     |
| department  | varchar | Department to which the employee belongs |
| managerId   | int     | ID of the employee's manager (nullable)  |

---

## 🧪 Example Input

### Employee

| id  | name  | department | managerId |
|-----|-------|------------|-----------|
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

---

## ✅ Expected Output

| name |
|------|
| John |

---

