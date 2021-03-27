-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/KTwtkX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    "emp_no" int   NOT NULL,
    "emp_title" string   NULL,
    "birth_date" date   NULL,
    "first_name" string   NULL,
    "last_name" string   NULL,
    "sex" varchar(255)   NULL,
    "hire_date" date   NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "dept_empID" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "dept_no" int   NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "dept_empID"
     )
);

CREATE TABLE "Titles" (
    "titlesID" int   NOT NULL,
    "title_id" int   NULL,
    "title" string   NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "titlesID"
     )
);

CREATE TABLE "Salaries" (
    "salriesID" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "salary" money   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "salriesID"
     )
);

CREATE TABLE "Departments" (
    "departmentID" int   NOT NULL,
    "dept_no" varchar(255)   NULL,
    "dept_nam" varchar(255)   NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_managerID" int   NULL,
    "emp_no" int   NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_title" FOREIGN KEY("emp_title")
REFERENCES "Titles" ("title");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_emp" ("dept_no");


