create table emp(
id int comment '编号',
workno varchar(10) comment '工号',
name varchar(10) comment '姓名',
gender char(1) comment '性别',
age tinyint unsigned comment '年龄',
idcard char(18) comment '身份证号',
workaddress varchar(50) comment '工作地址',
entrydate date comment '入职时间'
)comment '员工表';

INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (1, '00001', '柳岩666', '女', 20, '123456789012345678', '北京', '2000-01-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (2, '00002', '张无忌', '男', 18, '123456789012345670', '北京', '2005-09-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (3, '00003', '韦一笑', '男', 38, '123456789712345670', '上海', '2005-08-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (4, '00004', '赵敏', '女', 18, '123456757123845670', '北京', '2009-12-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (5, '00005', '小昭', '女', 16, '123456769012345678', '上海', '2007-07-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (6, '00006', '杨逍', '男', 28, '12345678931234567X', '北京', '2006-01-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (7, '00007', '范瑶', '男', 40, '123456789212345670', '北京', '2005-05-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (8, '00008', '黛绮丝', '女', 38, '123456157123645670', '天津', '2015-05-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (9, '00009', '范凉凉', '女', 45, '123156789012345678', '北京', '2010-04-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (10, '00010', '陈友谅', '男', 53, '123456789012345670', '上海', '2011-01-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (11, '00011', '张士诚', '男', 55, '123567897123465670', '江苏', '2015-05-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (12, '00012', '常遇春', '男', 32, '123446757152345670', '北京', '2004-02-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (13, '00013', '张三丰', '男', 88, '123656789012345678', '江苏', '2020-11-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (14, '00014', '灭绝', '女', 65, '123456719012345670', '西安', '2019-05-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (15, '00015', '胡青牛', '男', 70, '12345674971234567X', '西安', '2018-04-01');
INSERT INTO emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (16, '00016', '周芷若', '女', 18, null, '北京', '2012-06-01');

select name,workno,age
from emp;

select *
from emp;

select workaddress as gongzuodidian
from emp;

select distinct workaddress
from emp;

select *
from emp
where age<88;

select *
from emp
where age<20;

select *
from emp
where age<=20;

select *
from emp
where idcard is null;

select *
from emp
where idcard is not null;

select *
from emp
where age!=88;

select *
from emp
where age between 15 and 20;

select *
from emp
where gender='女' and age<25;

select *
from emp
where age=18 or age=20 or age=40;

select *
from emp
where name like '__';

select *
from emp
where idcard like '%X';

select count(id)
from emp;

select avg(age)
from emp;

select max(age)
from emp;

select min(age)
from emp;

select sum(age)
from emp
where workaddress='西安';

select gender,count(*)
from emp
group by gender;

select gender,avg(age)
from emp
group by gender;

select workaddress,count(*)
from emp
where age<45
group by workaddress
having count(*)>=3;

select *
from emp
order by age ;

select *
from emp
order by entrydate desc;

select *
from emp
order by age asc,entrydate desc;

select *
from emp
limit 0,10;

select *
from emp
limit 10,10;

select *
from emp
where gender='女' and age between 20 and 23;

select *
from emp
where gender='男' and name like '___' and age between 20 and 40;

select gender,count(*)
from emp
where age<60
group by gender;

select name,age
from emp
where age<=35
order by age asc,entrydate desc;

select *
from emp
where gender='男' and age between 20 and 40
order by age asc,entrydate asc
limit 5;

select name,age
from emp
where age>15
order by age asc;


use mysql;
select * from user;

create user 'itcast'@'localhost' identified by '123345';

create user 'heima'@'%' identified by '123345';

alter user'heima'@'%' identified  with mysql_native_password by '12334534';

drop user 'itcast'@'localhost';

show grants for 'heima'@'%';

grant all
on itcast.*
to 'heima'@'%';

revoke all
on itcast.*
from 'heima'@'%';

use itcast;

update emp
set workno=lpad(workno,6,'0');

select *
from emp;

update emp
set workno='00001';


select rand()*1000000;

select round(rand()*1000000);

select lpad(round(rand()*1000000,0),6,'0');

select curdate();

select curtime();

select now();

select year(now());

select month(now());

select day(now());

select date_add(now(),interval 70 year);

select datediff('2023-10-10','2025-10-10');

select name,datediff(curdate(),entrydate)
from emp
order by entrydate desc;

select if(true,'ok','Error');

select ifnull('Ok','Default');
select ifnull('','Default');
select ifnull(null,'Default');

select name,
       (case
           when '北京' then '一线城市'
           when '上海' then '一线城市'
           else '二线城市'
           end) as '工作地点'
from emp;

create table tb_user(
    id int primary key auto_increment comment 'i主键',
    name varchar(10) not null unique comment '姓名',
    age int check ( age>0 and age<=120 ) comment '年龄',
    status char(1) default ('1') comment '状态',
    gender char(1) comment '性别'
)comment '用户表';

select *
from tb_user;

insert into tb_user(name,age,status,gender)
values ('Tom1',19,'1','男'),('Tom2',25,'0','男');

insert into tb_user(name,age,status,gender)
values ('Tom3',19,'1','男');

insert into tb_user(name,age,status,gender)
values (null,19,'1','男');

insert into tb_user(name,age,status,gender)
values ('Tom3',19,'1','男');

insert into tb_user(name,age,status,gender)
values ('Tom4',80,'1','男');
insert into tb_user(name,age,status,gender)
values ('Tom5',-1,'1','男');
insert into tb_user(name,age,status,gender)
values ('Tom5',121,'1','男');

insert into tb_user(name,age,gender)
values ('Tom5',120,'男');

-- --------------------------------------------- 约束 (外键) -------------------------------------
-- 准备数据
create table dept(
    id   int auto_increment comment 'ID' primary key,
    name varchar(50) not null comment '部门名称'
)comment '部门表';

INSERT INTO dept (id, name)
VALUES (1, '研发部'), (2, '市场部'),(3, '财务部'), (4, '销售部'), (5, '总经办');


create table emp(
    id  int auto_increment comment 'ID' primary key,
    name varchar(50) not null comment '姓名',
    age  int comment '年龄',
    job varchar(20) comment '职位',
    salary int comment '薪资',
    entrydate date comment '入职时间',
    managerid int comment '直属领导ID',
    dept_id int comment '部门ID'
)comment '员工表';

INSERT INTO emp (id, name, age, job,salary, entrydate, managerid, dept_id)
VALUES (1, '金庸', 66, '总裁',20000, '2000-01-01', null,5),(2, '张无忌', 20, '项目经理',12500, '2005-12-05', 1,1),(3, '杨逍', 33, '开发', 8400,'2000-11-03', 2,1),(4, '韦一笑', 48, '开发',11000, '2002-02-05', 2,1),(5, '常遇春', 43, '开发',10500, '2004-09-07', 3,1),(6, '小昭', 19, '程序员鼓励师',6600, '2004-10-12', 2,1);

select *
from dept;

select *
from emp;

alter table emp
add constraint fk_emp_dept_id foreign key (dept_id) references dept(id);

alter table emp
add constraint fk_emp_dept_id foreign key (dept_id) references dept(id) on update cascade on delete cascade ;

alter table emp
drop foreign key fk_emp_dept_id;

--
use itheima;
drop table emp;
drop table dept;

-- 创建dept表，并插入数据
create table dept(
id int auto_increment comment 'ID' primary key,
name varchar(50) not null comment '部门名称'
)comment '部门表';
-- 插入元素
INSERT INTO dept (id, name)
VALUES (1, '研发部'), (2, '市场部'),(3, '财务部'), (4,'销售部'), (5, '总经办'), (6, '人事部');
-- 查询dept表
select *
from dept;



-- 创建emp表，并插入数据
create table emp(
id int auto_increment comment 'ID' primary key,
name varchar(50) not null comment '姓名',
age int comment '年龄',
job varchar(20) comment '职位',
salary int comment '薪资',
entrydate date comment '入职时间',
managerid int comment '直属领导ID',
dept_id int comment '部门ID'
)comment '员工表';

-- 添加外键
alter table emp add constraint fk_emp_dept_id foreign key (dept_id) references dept(id);
-- 插入元素
INSERT INTO emp (id, name, age, job,salary, entrydate, managerid, dept_id)
VALUES
(1, '金庸', 66, '总裁',20000, '2000-01-01', null,5),
(2, '张无忌', 20, '项目经理',12500, '2005-12-05', 1,1),
(3, '杨逍', 33, '开发', 8400,'2000-11-03', 2,1),
(4, '韦一笑', 48, '开发',11000, '2002-02-05', 2,1),
(5, '常遇春', 43, '开发',10500, '2004-09-07', 3,1),
(6, '小昭', 19, '程序员鼓励师',6600, '2004-10-12', 2,1),
(7, '灭绝', 60, '财务总监',8500, '2002-09-12', 1,3),
(8, '周芷若', 19, '会计',48000, '2006-06-02', 7,3),
(9, '丁敏君', 23, '出纳',5250, '2009-05-13', 7,3),
(10, '赵敏', 20, '市场部总监',12500, '2004-10-12', 1,2),
(11, '鹿杖客', 56, '职员',3750, '2006-10-03', 10,2),
(12, '鹤笔翁', 19, '职员',3750, '2007-05-09', 10,2),
(13, '方东白', 19, '职员',5500, '2009-02-12', 10,2),
(14, '张三丰', 88, '销售总监',14000, '2004-10-12', 1,4),
(15, '俞莲舟', 38, '销售',4600, '2004-10-12', 14,4),
(16, '宋远桥', 40, '销售',4600, '2004-10-12', 14,4),
(17, '陈友谅', 42, null,2000, '2011-10-12', 1,null);
-- 查询emp表
select *
from emp;


-- 内连接
select e.name,d.name
from dept as d,emp as e
where e.dept_id=d.id;

select e.name,d.name
from dept as d
inner join emp as e
on e.dept_id =d.id;

-- 外连接
select e.*,d.name
from emp as e
left outer join dept as d
on e.dept_id=d.id;

select d.*,e.*
from emp as e
right outer join dept as d
on d.id = e.dept_id;

-- 自连接
select e1.name,e2.name
from emp as e1
inner join emp as e2
on e1.managerid = e2.id;

select e1.name,e2.name
from emp as e1
left outer join emp as e2
on e1.managerid = e2.id;


-- 联合查询
select *
from emp as e
where e.salary<5000
union
select *
from emp as e
where e.age>50;


-- 标量子查询
select *
from emp as e
where e.dept_id=(
    select d.id
    from dept as d
    where d.name='销售部'
    );

select d.id
from dept as d
where d.name='销售部';


select *
from emp as e1
where e1.entrydate>(
    select e.entrydate
    from emp as e
    where e.name='方东白'
    );

select e.entrydate
from emp as e
where e.name='方东白';


-- 列子查询
select *
from emp as e
where e.dept_id in (
    select d.id
    from dept as d
    where d.name='销售部' or d.name='市场部'
    );

select d.id
from dept as d
where d.name='销售部' or d.name='市场部';


--
select ee.*
from emp as ee
where ee.salary > all (
    select e.salary
    from dept as d,emp as e
    where d.name='财务部' and e.dept_id=d.id
);

select e.salary
from dept as d,emp as e
where d.name='财务部' and e.dept_id=d.id;

--
select ee.*
from emp as ee
where ee.salary > some(
    select e.salary
    from dept as d,emp as e
    where d.name='研发部' and e.dept_id=d.id
);

select e.salary
from dept as d,emp as e
where d.name='研发部' and e.dept_id=d.id;

-- 行子查询
-- 1.使用and
select ee.*
from emp as ee
where ee.salary = (
    select  e.salary
    from emp as e
    where e.name='张无忌')
    and
    ee.managerid=(
    select e.managerid
    from emp as e
    where e.name='张无忌') ;
-- 2.使用 (X1,X2)=();形式
select ee.*
from emp as ee
where (ee.salary,ee.managerid) = (
    select  e.salary,e.managerid
    from emp as e
    where e.name='张无忌'
    );


select  e.salary,e.managerid
from emp as e
where e.name='张无忌';

-- 表子查询
-- 1.使用and
select e.*
from emp as e
where e.job in(
    select ee.job
    from emp as ee
    where ee.name='鹿杖客' or ee.name='宋远桥')
    and
    e.salary in(
    select ee.salary
    from emp as ee
    where ee.name='鹿杖客' or ee.name='宋远桥');

-- 2.使用 (X1,X2)=();形式
select e.*
from emp as e
where (e.job,e.salary) in (
    select ee.job,ee.salary
    from emp as ee
    where ee.name='鹿杖客' or ee.name='宋远桥'
    );

select ee.job,ee.salary
from emp as ee
where ee.name='鹿杖客' or ee.name='宋远桥';


select temp.*
from (
    select *
    from emp as e
    where e.entrydate>'2006-01-01') as temp
left outer join emp as ee
on ee.dept_id=temp.id;


select e.*
from emp as e
where e.entrydate>'2006-01-01';


-- 案例
create table salgrade(
grade int,
losal int,
hisal int
) comment '薪资等级表';
-- 添加元素
insert into salgrade values (1,0,3000);
insert into salgrade values (2,3001,5000);
insert into salgrade values (3,5001,8000);
insert into salgrade values (4,8001,10000);
insert into salgrade values (5,10001,15000);
insert into salgrade values (6,15001,20000);
insert into salgrade values (7,20001,25000);
insert into salgrade values (8,25001,30000);

-- 1.查询员工的姓名、年龄、职位、部门信息 （隐式内连接）
select e.name,e.age,e.job,d.name
from emp as e,dept as d
where e.dept_id=d.id;

-- 2.查询年龄小于30岁的员工的姓名、年龄、职位、部门信息
-- 2.1（隐式内连接）
select e.name,e.age,e.job,d.name
from emp as e,dept as d
where e.dept_id=d.id and e.age<30;
-- 2.2（显式内连接）
select e.name,e.age,e.job,d.name
from emp as e
inner join dept as d
on e.dept_id=d.id and e.age<30;

-- 3.查询拥有员工的部门ID、部门名称
select distinct d.id,d.name
from emp as e
left outer join dept as d
on d.id = e.dept_id;

-- 4.查询所有年龄大于40岁的员工, 及其归属的部门名称; 如果员工没有分配部门, 也需要展示出来(外连接)
select e.name,d.name
from emp as e
left outer join dept as d
on d.id = e.dept_id and e.age>40;

-- 5.查询所有员工的工资等级
select e.name,e.salary,s.grade
from salgrade as s,emp as e
where e.salary between s.losal and s.hisal;

-- 6.查询 "研发部" 所有员工的信息及工资等级
select e.*,s.grade
from dept as d,emp as e,salgrade as s
where d.id=e.dept_id and d.name='研发部' and (e.salary between s.losal and s.hisal);

-- 7.查询 "研发部" 员工的平均工资
select avg(e.salary)
from dept as d,emp as e
where d.id=e.dept_id and d.name='研发部';

-- 8.查询工资比 "灭绝" 高的员工信息
select e.*
from emp as e
where e.salary>(
    select e.salary
    from emp as e
    where e.name='灭绝'
    );
-- 先写子查询 查出来一个值那就是标量子查询
select e.salary
from emp as e
where e.name='灭绝';

-- 9.查询比平均薪资高的员工信息
select e2.*
from emp as e2
where e2.salary>(
    select avg(e.salary)
    from emp as e
);
-- 先写子查询 查出来一个值那就是标量子查询
select avg(e.salary)
from emp as e;

-- 10.查询低于本部门平均工资的员工信息
select e2.*
from emp as e2
where e2.salary<(
    select avg(e.salary)
    from emp as e,dept as d
    where d.id=e.dept_id and d.name='研发部'
) and e2.dept_id='1' ;
-- 先写子查询 查出来一个值那就是标量子查询
select avg(e.salary)
from emp as e,dept as d
where d.id=e.dept_id and d.name='研发部';

select avg(e.salary)
from emp as e,dept as d
where e.dept_id='1';

-- 11.查询所有的部门信息, 并统计部门的员工人数
-- 1.方式1
select d.id, d.name , ( select count(*) from emp e where e.dept_id = d.id ) '人数'
from dept d;

select count(*)
from emp as e
where e.dept_id=1;  -- 这样的话每一个部门用外层循环找d.id

-- 2.方式2
select d.name,count(e.dept_id)  -- count里面的字段要用e.dept  不然会把null也算作一个
from dept as d
left join emp as e
on d.id = e.dept_id and d.name in(select dd.name from dept as dd)
group by d.id;
