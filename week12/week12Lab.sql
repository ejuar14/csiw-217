create table students(student_id serial primary key,name text,email text,DOB integer);
create table courses(courses_id serial primary key, student_id int, courses_name text, credits numeric (10,2), foreign key(student_id) references students(student_id));
INSERT INTO students ("name", email, DOB)values('juan', 'juan10@email.com', 20050215),('brian', 'brian89@email.com', 20050922),('jake', 'jake.j13@email.com', 20091212);
insert into courses (student_id, courses_name, credits)values(1,'com101',3.0),(1,'chem101',3.0),(2,'eng101',3.0),(2,'into to weling',3.0),(3,'com101', 3.0);
SELECT students.name,courses.courses_name,courses.credits FROM courses JOIN students ON courses.student_id = students.student_id;
-- I ceated on to one relashonips. 
-- I think that it will not let you delete it with out deleting the employees first.
-- so that you can tables organized and all the data dosen't have to be on one gient table of information.
