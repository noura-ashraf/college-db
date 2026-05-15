# 🎓 College Database System

A relational database project built with MySQL, designed to manage tutors, courses, and students in a college environment.

---

## 📋 Database Structure

### Tables

| Table | Description |
|-------|-------------|
| `Tutor` | Stores tutor information including hire date and hourly rate |
| `Course` | Stores course details linked to tutors via foreign key |
| `Students` | Stores student records with GPA validation |

### Relationships
- Each **Course** is assigned to one **Tutor** (Foreign Key)
- **Students** GPA is validated with a CHECK constraint (0.00 – 4.00)

---

## 🛠️ Features

- ✅ Database creation and table design from scratch
- ✅ Primary Keys, Foreign Keys, and Constraints
- ✅ `AUTO_INCREMENT` for Tutor IDs
- ✅ `DEFAULT` values for course credits
- ✅ `CHECK` constraint for GPA validation
- ✅ Full CRUD operations:
  - `INSERT` — Add tutors, courses, and students
  - `SELECT` — Query all records and filter by GPA
  - `UPDATE` — Modify tutor hourly rate
  - `DELETE` — Remove a student record

---

## 🚀 How to Run

1. Make sure **MySQL Server** is running
2. Open MySQL Workbench or any MySQL client
3. Run the script:

```sql
source _Project1111.sql
```

Or copy and paste the contents into your MySQL client and execute.

---

## 📁 File

```
_Project1111.sql   → Full database script
```

---

## 💡 Sample Queries

```sql
-- Get all students
SELECT * FROM students;

-- Get students with GPA above 3.00
SELECT * FROM students
WHERE s_gpa > 3.00;
```

---

## 🧑‍💻 Author

**Noura Ashraf**  
B.Sc. Computer Science & AI 
[LinkedIn](https://linkedin.com/in/noura-a-810273243) · [GitHub](https://github.com/noura-ashraf)
