create table course(
    id int primary key auto_increment,
    cname varchar(30) not null,
    cduration int not null
);

--向course表中插入测试数据
insert into course(
    cname,cduration
) values ('Python基础',20),('Python高级',15),('WEB基础',9),('Python Wed',15),('爬虫',10),('数据分析7人工智能',20);


--创建teacher表：id,name,age,gender,hobby,course_id
--course_id是外键,
create table teacher(
    id int primary key auto_increment,
    name varchar(30) not null,
    age int not null,
    gender varchar(2) not null,
    hobby varchar(50) not null,
    course_id int,
    constraint fk_course_teacher foreign key(course_id),
    references course(id));


insert into teacher values(null,"齐天大圣",28,'M','大保健',1),(null,"吕泽",30,'M','拍片',2),(null,"赵萌萌",18,'W','看帅哥',3);

create table major(
    id int primary key auto_increment,
    m_name varchar(30) not null,

);
insert into major(m_name) values('AID'),("UID"),("WEB");

create table student(
    id int primary key auto_increment,
    name varchar(30) not null,
    age int not null,
    gender char(2) not null,
    school varchar(100) not null,
    class_id int not null,
    major_id int not null
);

alter table student
add constraint fk_course_teacher
foreign key(major_id)
references major;

create table classinfo(
    id int primary key auto_increment,
    classname varchar(30) ,
    status tinyint
);

alter table student
add constraint fk_course_student
foreign key(class_id)
references classinfo(id);

insert into classinfo(classname,status) values
('1901',0),('1902',1),('1903',1),('1904',1),('1905',1);

create table score(
    id int primary key auto_increment,
    stu_id int not null,
    course_id int not null,
    score int not null,
    constraint fk_student_score foreign key(stu_id)
    references student(id),
    constraint fk_student_score foreign key(course_id)
    references course(id)
);

--insert into score(stu_id,course_id,score) values(1,1,98),(2,1,99),(1,2,86),(4,3,8);

alter table score
add constraint fk_student_score
foreign key(stu_id)
references student(id)
on delete cascade
on update cascade