/* Slave Server List Meta data Table */
create table public.slave_server_list
(
slave_id integer,
slave_name varchar(200),
slave_port integer,
slave_username varchar(100),
slave_password varchar(100),
slave_isavailable varchar(1),
slave_threshold integer,
slave_availability integer,
slave_used integer,
slave_last_modified timestamp
);

/* Manual Slave Server Data entry */
insert into public.slave_server_list values(1001,'localhost',8084,'cluster','cluster','N',2,0,0);
insert into public.slave_server_list values(1002,'localhost',8085,'cluster','cluster','N',1,0,0);
insert into public.slave_server_list values(1003,'localhost',8086,'cluster','cluster','N',3,0,0);


select * from public.slave_server_list;
truncate public.slave_server_list;
drop table public.slave_server_list;



create table public.job_order_list
(
job_order_id integer,
job_name varchar(200),
job_path varchar(200),
job_startid integer,
job_dependencies varchar(200),
job_status varchar(50),
job_last_modified timestamp
);

CREATE TABLE public.queue_jobslave_list
(
 job_order_id INTEGER
, slave_id INTEGER
, last_modified TIMESTAMP
, queue_status varchar(50)
);

drop table public.queue_jobslave_list;
drop table public.job_order_list;


insert into public.job_order_list values('100','test1.ktr','F:\Pentaho Load Balancing\TestJobs\',1,'0','NOTSTARTED',now());
insert into public.job_order_list values('101','test2.ktr','F:\Pentaho Load Balancing\TestJobs\',2,'1','NOTSTARTED',now());
insert into public.job_order_list values('102','test3.ktr','F:\Pentaho Load Balancing\TestJobs\',2,'1','NOTSTARTED',now());
insert into public.job_order_list values('103','test4.ktr','F:\Pentaho Load Balancing\TestJobs\',3,'2','NOTSTARTED',now());
insert into public.job_order_list values('104','test5.ktr','F:\Pentaho Load Balancing\TestJobs\',4,'3','NOTSTARTED',now());

select * from public.job_order_list;
select * from public.queue_jobslave_list;

truncate public.queue_jobslave_list;
truncate public.job_order_list;


