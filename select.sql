CREATE Table student(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT,
    cgpa NUMERIC(4,2),
    email text,
    dob DATE
)

ALTER Table student
   ALTER COLUMN cgpa type NUMERIC(4,2)

INSERT INTO student (student_name, age, cgpa, email, dob) VALUES
('Yousuf Showrov', 21, 3.75, 'yousuf@example.com', '2003-06-15'),
('Ayesha Khan', 22, 3.40, 'ayesha.khan@example.com', '2002-04-12'),
('Rafi Ahmed', 20, 3.60, 'rafi.ahmed@example.com', '2004-01-20'),
('Nusrat Jahan', 23, 3.85, 'nusrat.jahan@example.com', '2001-09-25'),
('Tanvir Hasan', 21, 3.50, 'tanvir.hasan@example.com', '2003-03-08');


select  max(length(student_name)) from student
 
 select * from student 
 WHERE age BETWEEN 20 and 23

 select * from student ORDER BY dob ASC

 SELECT * FROM student
 LIMIT 3

 SELECT * FROM student
 OFFSET 3


 SELECT * FROM student
LIMIT 3 OFFSET 3

select student_name,cgpa from student
where cgpa>= 3.80
ORDER BY cgpa DESC
limit 2 offset 0

