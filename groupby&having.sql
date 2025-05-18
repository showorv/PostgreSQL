-- group by used in single column or AGGREGATE FUNCTION
SELECT cgpa,count(*) from student
GROUP BY cgpa


--having used to filtering group by 

SELECT cgpa,count(*) from student
GROUP BY cgpa
HAVING cgpa >= 3.80

-- count students born in each year 

select extract(YEAR from dob) as Birth_Year,count(*)
from student
GROUP BY Birth_Year