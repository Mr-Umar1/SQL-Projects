create table student5(student_id int primary key,student_name varchar(50) not null,gender char(10) check(gender in('male','female')),phone_no varchar(50) unique,email varchar(50) unique,city varchar(30) default'pune',course varchar(30) not null);
insert into student5 values(201,'Harsh','male','8483050784','harsh33@gmail.com','bhusawal','Ai Engineer');
insert into student5 values(202,'Rehan','male','8624971487','rehan66@gmail.com','dhule','Bsc IT');
insert into student5 values(203,'Roshni','female','8890441220','rosh45@gmail.com','jalgaon','Ai Engineer');
insert into student5 values(204,'Rahul','male','8624915247','rahul3@gmail.com','pune','Software Engineer');
insert into student5 values(205,'Shilpa','female','8890856520','shilpa@gmail.com','jalgaon','Ai Engineer');
insert into student5 values(206,'Dipali','female','9852556210','dipali12@gmail.com','bhusawal','Software Engineer');
insert into student5 values(207,'Mohan','male','9226458210','mohan33@gmail.com','jalgaon','Bsc IT');
insert into student5 values(208,'Sahili','female','9256441220','sahili5@gmail.com','pune','Ai Engineer');
insert into student5 values(209,'Danial','male','8785652020','danial5@gmail.com','pune','Bsc IT');
insert into student5 values(210,'Rahil','male','l9890526412','rahil@gmail.com','jalgaon','Software Engineer');
insert into student5 values(211,'Vidheya','female','8483621210','vidheya44@gmail.com','pune','Machine Learning');
insert into student5 values(212,'Sonam','female','9252562220','sonam66@gmail.com','jalgaon','Ai Engineer');
insert into student5 values(213,'Saurab','male','9226451201','saurab32@gmail.com','nandurbar','Bsc IT');
insert into student5 values(214,'Lalit','male','9860524114','allit33@gmail.com','jalgaon','Machine Learning');
insert into student5 values(215,'Midhat','female','8624784512','midhat4@gmail.com','pune','Ai Engineer');
select * from student5;
create table Aimodel5(model_id int primary key,model_name varchar(50)not null,model_type varchar(20)check(model_type in('LLM','CNN','RNN','GAN','Transformer')),framework varchar(50)check(framework in('TensorFlow','PyTorch','Scikit-Learn')),version varchar(20) not null,accuracy decimal(5,2)check(accuracy>=0 and accuracy<=100));
insert into Aimodel5 values(301,'Chat-GPT','LLM','PyTorch','v1',50);
insert into Aimodel5 values(302,'StyleGan','CNN','TensorFlow','v2',51);
insert into Aimodel5 values(303,'Llama-Light','RNN','PyTorch','v3',52);
insert into Aimodel5 values(304,'LSTM-Stock','RNN','Scikit-Learn','v4',53);
insert into Aimodel5 values(305,'RestNet','CNN','TensorFlow','v5',54);
insert into Aimodel5 values(306,'BERT-Base','Transformer','PyTorch','v6',55);
insert into Aimodel5 values(307,'Yolo','CNN','TensorFlow','v7',56);
insert into Aimodel5 values(308,'GRU-Weather','RNN','TensorFlow','v8',57);
insert into Aimodel5 values(309,'CycleGan','GAN','PyTorch','v9',58);
insert into Aimodel5 values(310,'Tsmall','RNN','PyTorch','v10',59);
select * from Aimodel5;
create table project5(project_id int primary key,student_id int foreign key references student5(student_id),model_id int foreign key references Aimodel5(model_id),project_title varchar(100) not null,domain varchar(30) not null,start_date date not null,end_date date not null,status varchar(20) check(status in('ongoing','complete','on hold')));
insert into project5 values(401,201,301,'Data Science','Data Analysis','2026/01/01','2026/04/01','complete');
insert into project5 values(402,202,302,'Autonomus Dron','Robotic','2026/02/02','2026/05/20','ongoing');
insert into project5 values(403,203,303,'Ai Stockmarket','finance','2026/01/04','2026/04/10','complete');
insert into project5 values(404,204,304,'Chatbot Commerce','Customer Service','2026/01/01','2026/04/25','ongoing');
insert into project5 values(405,205,305,'Digital Market','Digital Analysis','2026/07/01','2026/09/02','complete');
insert into project5 values(406,206,306,'Data Source','Data Analysis','2026/01/02','2026/02/01','ongoing');
insert into project5 values(407,207,307,'Ai Machine','Machine Operator','2026/05/02','2026/07/02','ongoing');
insert into project5 values(408,208,308,'Digital Machine','Machine Learning','2026/01/01','2026/05/02','complete');
insert into project5 values(409,209,309,'Ai Robotic','Robotic','2026/09/01','2026/09/20','on hold');
insert into project5 values(410,210,310,'Autonomus Dron','Robotic','2026/01/01','2026/05/02','on hold');
insert into project5 values(411,211,304,'Chatbot for Commerce','Customer Service','2026/08/01','2026/09/10','ongoing');
insert into project5 values(412,212,307,'Ai Machine','Machine Operator','2026/01/02','2026/05/20','complete');
insert into project5 values(413,213,305,'Digital Market','digital Analysis','2026/01/20','2026/03/02','on hold');
insert into project5 values(414,214,306,'Data Source','Data Analysis','2026/05/20','2026/08/01','ongoing');
insert into project5 values(415,215,308,'Digital Machine','Machine Learning','2026/10/20','2026/12/01','complete');
insert into project5 values(416,211,310,'Autonomus Dron','Robotic','2026/02/10','2026/03/10','ongoing');
insert into project5 values(417,209,301,'Data Science','Data Analysis','2026/01/01','2026/03/01','complete');
select * from project5;
select student_name from student5;
select student_name,course from student5;
select student_id,student_name from student5 where city='pune';
select student_name,student_id from student5 where not city='bhusawal';
select * from Aimodel5 where accuracy>=55;
select * from project5 where domain='Robotic';
select * from Aimodel5 where framework='TensorFlow';
select * from project5 where project_title like('d%');
select * from project5 where project_title like('%dron');
select * from project5 where project_title like('%ai%');
select * from Aimodel5 where accuracy between 50 and 58;
select distinct framework from Aimodel5;
select * from Aimodel5 order by accuracy DESC;
select top 5 * from Aimodel5
select count(*) from student5;
select max(accuracy) as high from Aimodel5;
select avg(accuracy) as average from Aimodel5;
select student_name,course count from student5;
select project_title,domain count from project5;
select domain,count(*) as domain from project5 group by domain having count(*)>3;
select s.student_name,p.project_title from student5 s inner join project5 p on s.student_id=p.student_id;
select s.student_name,a.model_type,a.framework from student5 s inner join project5 p on s.student_id=p.student_id inner join Aimodel5 a  on p.model_id=a.model_id;
select p.project_title,a.accuracy from project5 p inner join Aimodel5 a on p.model_id=a.model_id;
select s.student_name,p.project_title,p.status from student5 s inner join project5 p on s.student_id=p.student_id;
select s.student_name,p.project_title from student5 s left join project5 p on s.student_id=p.student_id;
select p.project_title,s.student_name from project5 p inner join student5 s on p.student_id=s.student_id;
select p.project_title,s.student_name,s.gender,s.phone_no,s.email,s.city,s.course from project5 p inner join student5 s on p.student_id=s.student_id;
select a.model_type,p.project_id from Aimodel5 a inner join project5 p on a.model_id=p.model_id;
select a.model_name,count(p.project_id) from Aimodel5 a left join project5 p on a.model_id=p.model_id group by a.model_id,a.model_name;
select s.student_id,s.student_name,count(p.project_id)as totalprojects from student5 s left join project5 p on s.student_id=p.student_id group by s.student_id,s.student_name having count(p.project_id)>1;
select student_name from student5 where student_id in (select student_id from project5 where model_id in(select model_id from aimodel5 where accuracy=(select max(accuracy)from aimodel5)));
select * from Aimodel5 where accuracy>(select avg(accuracy)from Aimodel5);
select * from Aimodel5 where accuracy in(select max(accuracy)from Aimodel5);
select max(accuracy) as secondhighestaccuracy from Aimodel5 where accuracy<(select max(accuracy) from Aimodel5);
select * from student5 where student_id not in (select distinct student_id from project5 where student_id is not null);
select * from project5 where model_id in(select model_id from Aimodel5 where accuracy<(select avg(accuracy)from Aimodel5)); 
select * from student5 where student_id in(select student_id from project5 group by student_id having count(distinct model_id)>1);
select framework from Aimodel5 group by framework order by avg(accuracy) DESC;
select * from Aimodel5 where model_id in(select max(project_id) from project5);
select * from Aimodel5 where accuracy=(select accuracy from Aimodel5 where accuracy=(select max(accuracy)from Aimodel5));
 














