select * from college

alter table college add column student_count int

update college set student_count = floor (Random()*300 + 201)

select * from college

------sum, max, min, avg, count, AS---------------

select count(student_count) from college

select * from college 

select sum(student_count) from college

select * from college

select min(student_count) from college

select * from college

select max(student_count) from college

select * from college

select avg(student_count) from college

Alter table college add column grade char

update college set grade = 'A' where student_id in (1,4,6,7)

update college set grade = 'B' where student_id in (2,5,8)

update college set grade = 'C' where student_id in (3,9,10,11)

select * from college

Update college set grade = 'D' where student_id >= 12

select * from college


select * from college order by student_id asc

select count(admission_year)  as admission_count, count(name) as name_count from college

select * from college where grade = 'B'

select avg(student_count) from college where grade ='B'

select sum(student_count) from college where student_count > 380

select * from college

