select * from college

select distinct (grade) from college

select sum(student_count) from college where grade = 'A'

select sum(student_count) from college where grade = 'B'

select sum(student_count) from college where grade = 'C'

select sum(student_count) from college where grade = 'D'

select grade, sum(student_count) as "sum_of_students" from college where student_id != 6 and student_id != 7
group by grade
having sum(student_count) > 1000