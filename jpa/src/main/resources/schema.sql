DROP TABLE IF EXIST employees;
DROP TABLE IF EXIST departments;

CREATE TABLE departments (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL
)
CREATE TABLE employees (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,,
	name VARCHAR(100) NOT NULL, 
	email VARCHAR(100) UNIQUE NOT NULL,
	department_id INTEGER NOT NULL,
	FOREING KEY (department_id) REFERENCES departments(id)
)
INSERT INTO departments(name) VALUES ('HIERRO');
INSERT INTO departments(name) VALUES ('COBRE');
INSERT INTO departments(name) VALUES ('ORO');

INSERT INTO employees(name, email, department_id) VALUES ('RAC', 'Rac@mail.com', 1)
INSERT INTO employees(name, email, department_id) VALUES ('FRY', 'FRY@mail.com', 1)
INSERT INTO employees(name, email, department_id) VALUES ('RIS', 'Ris@mail.com', 2)
INSERT INTO employees(name, email, department_id) VALUES ('GER', 'GER@mail.com', 2)
INSERT INTO employees(name, email, department_id) VALUES ('REM', 'Rem@mail.com', 3)
INSERT INTO employees(name, email, department_id) VALUES ('FRE', 'FRE@mail.com', 3)