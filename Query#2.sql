-- INSERT INTO employee VALUES (4,1,"New-Employee","new@gmail.com","4 621 266 4177");
-- SELECT * FROM employee;

-- INSERT INTO supervisor VALUES (4,"New Supervisor","2 122 762 7346");
-- SELECT * FROM supervisor;

-- INSERT INTO department VALUES (4,4,11,"3 183 736 4376");
-- SELECT * FROM department;

-- UPDATE department SET OfficeNumber = 10 WHERE Department_id = 4;
-- SELECT * FROM department;

-- UPDATE department SET Phone = "6 134 135 3261" WHERE Department_id = 4;
-- SELECT * FROM department;

-- DELETE FROM project WHERE Project_id = 1;
-- SELECT * FROM project;

-- SELECT * FROM employee;

-- SELECT * FROM department JOIN employee WHERE department.department_id=department.department_id;

-- SELECT * FROM supervisor JOIN department WHERE supervisor.supervisor_id=department.supervisor_id;

-- SELECT SUM(MaximumHours) FROM project;

-- SELECT AVG(MaximumHours) FROM project;

-- SELECT COUNT(Name) AS Total_Employees FROM employee;

-- SELECT * FROM supervisor,department,project;