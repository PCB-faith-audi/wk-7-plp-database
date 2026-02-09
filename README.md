# Week 7 — Database Normalization & SQL Lab (PLP)

This repository contains SQL scripts for a Week 7 database lab covering:

- Core SQL DDL/DML practice (creating databases/tables, inserting, querying, updating, deleting)
- Normal forms (BCNF, 4NF, 5NF) through small, focused table designs
- Example domains (E-commerce, Healthcare) to illustrate normalization in realistic scenarios

## Contents

### 1) Lab7.sql (SQL practice)

- **File:** `Lab7.sql`
- **Database:** `student_management`
- **Tables:** `students`, `courses`, `enrollments`
- **Includes:** sample data inserts + a series of tasks (SELECTs, ORDER BY, LIMIT, LIKE, UPDATE, DELETE)

### 2) Normalization examples

#### BCNF
Located in `bcnf/`:

- `professors-table.sql` — `Professors`
- `courses-table.sql` — `Courses` (references `Professors`)

#### 4NF
Located in `4NF/`:

- `StudentHobbies-table.sql` — `StudentHobbies`
- `studentSkills-table.sql` — `StudentSkills`

These tables illustrate multi-valued attributes split into separate relations.

#### 5NF
Located in `5NF/`:

- `Employees-table.sql` — `Employees`
- `Projects-table.sql` — `Projects`
- `ProjectRoles-table.sql` — `ProjectRoles` (junction table: projects ↔ employees + role)

### 3) Domain schemas

#### E-commerce platform
Located in `E-commerce-platform/`:

- `Customers-table.sql` — `Customers`
- `orders-table.sql` — `Orders`
- `orderItems-table.sql` — `OrderItems`
- `products-table.sql` — (currently contains a `Customers` table definition)

#### Healthcare management system
Located in `Healthcare MGT System/`:

- `Patients-table.sql` — `Patients`
- `Doctors-table.sql` — `Doctors`, `Appointments`
- `Patient-records.sql` — `PatientRecords`
- `Diagnoses-table.sql` — `Diagnoses`
- `Medication-table.sql` — `Medications`

## How to run

> These scripts use MySQL-style statements such as `CREATE DATABASE`, `USE`, and `CREATE SCHEMA`. If you use PostgreSQL or SQLite, you may need minor edits.

### Option A: MySQL / MariaDB (recommended)

1. Open a terminal in the repo root.
2. Run a script:

```bash
mysql -u root -p < Lab7.sql
```

To run files in a folder, execute them in dependency order (tables referenced by foreign keys must exist first).

### Option B: Run a single file interactively

- Open your SQL client (MySQL Workbench, DBeaver, DataGrip, etc.).
- Copy/paste the script contents and execute.

## Suggested execution order (FK dependencies)

### BCNF
1. `bcnf/professors-table.sql`
2. `bcnf/courses-table.sql`

### 5NF
1. `5NF/Employees-table.sql`
2. `5NF/Projects-table.sql`
3. `5NF/ProjectRoles-table.sql`

### Healthcare
1. `Healthcare MGT System/Patients-table.sql`
2. `Healthcare MGT System/Doctors-table.sql` (creates `Doctors` + `Appointments`)
3. `Healthcare MGT System/Diagnoses-table.sql`
4. `Healthcare MGT System/Medication-table.sql`

## Notes / known issues

- `E-commerce-platform/orders-table.sql` references `Cutomers(CustomerID)` (typo). It should likely be `Customers(CustomerID)`.
- `E-commerce-platform/products-table.sql` currently defines a `Customers` table; it may be intended to define a `Products` table.
- `E-commerce-platform/Customers-table.sql` contains a table named `Orders`. If you intend a normalized e-commerce schema, consider keeping `Orders` only in `orders-table.sql`.

If you want, I can fix and normalize the e-commerce scripts (consistent schema name, correct foreign keys, add a proper `Products` table) without changing your other lab files.

## Requirements

- MySQL or MariaDB (recommended)
- Any SQL client (optional): MySQL Workbench, DBeaver, DataGrip, phpMyAdmin

## Author

- Faith (Week 7 PLP Database Lab)
