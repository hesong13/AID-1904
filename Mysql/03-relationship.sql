create table wife(
    id int primary key auto_increment,
    name varchar(30) not null,
    age int not null,
    teacher_id int,
    constraint fk_teacher_wife foreign key(teacher_id)
    references teacher(id),
    unique(teacher_id)
);

insert into wife(name,age,teacher_id) values("祁夫人",23,1)

create table goods(
    id int primary key auto_increment,
    gname varchar(30) not null,
    gprice float not null

);


insert into goods(gname,gprice) values("iphone56",18880),("ipad43mini",9999),('华为mate3000',3000);

create table shoppingcart(
    id int primary key auto_increment,
    t_id int,
    g_id int,
    count int default 1,
    constraint fk_teacher_shoppingcart foreign key(g_id)
    references goods(id)

);
insert into shoppingcart(t_id,g_id) values(1,1),(1,2);

insert into shoppingcart(id,t_id,g_id,count) values(null,1,3,15),(null,2,2,8),(null,2,3,1);




















