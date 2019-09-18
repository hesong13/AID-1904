--1.左外连接：左表：teacher，右表：cour，
--关联条件：teacher.course_id=course_id
select*from
teacher left join course
on teacher.course_id=course_id;


--1.左外连接：左表：cour，右表：teacher，
--关联条件：teacher.course_id=course_id
select*from
course left join teacher
on teacher.course_id=course_id;

--表右看连接
select*from
course right join teacher
on teacher.course_id=course_id;

--完整链接（有问题）
select*from
course full join teacher
on teacher.course_id=course_id;




