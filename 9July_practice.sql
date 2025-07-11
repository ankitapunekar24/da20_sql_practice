select * from college

select distinct (grade) from college

---------aggregate function---------------

select sum(student_count) from college where grade = 'A'

select sum(student_count) from college where grade = 'B'

select sum(student_count) from college where grade = 'C'

select sum(student_count) from college where grade = 'D'

-------Group by  and having -------------------

select grade, sum(student_count) as "sum_of_students" from college where student_id != 6 and student_id != 7
group by grade
having sum(student_count) > 1000

--------------in-----------------

select * from college where student_id in (1,2,11,17) or student_count = 374

select * from college where email in ('ritu.agrawal@example.com', 'rohan.sharma@example.com' )

----------------between------------

select * from college where student_id between 2 and 10

select * from college where student_count between 300 and 400

----------order by and limit----------------

select * from college order by student_id asc limit 5

select * from college where student_count > 300 order by student_count limit 2