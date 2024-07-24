create database library;
use library;

create table readers(
reader_id varchar(15),
reader_name varchar(15),
area varchar(15),
mobileno varchar(15),
occupation varchar(15),
dob date,
constraint readers_pk primary key(reader_id));



insert into readers value(1,"ramesh","chennai","973547262","student","1989-12-02");
insert into readers value(2,"suresh","southmadras","9885637843","student","1991-12-01");
insert into readers value(3,"karthik","northmadras","8926573331","student","1990-04-03");
insert into readers value(4,"ram","tnagar","9085637562","service","1985-12-02");
insert into readers value(5,"sugan","koturpuram","9073646321","salesman","1977-08-09");
insert into readers value(6,"vetri","chennai","6381990683","student","2000-05-07");
insert into readers value(7,"shalini","saidapet","9073437461","worker","1995-06-07");
insert into readers value(8,"nadhini","tenapet","8934656643","service","1992-06-04");
insert into readers value(9,"anitha","thirupur","6973562864","service","1997-04-03");

select * from readers;

create table book(
book_id varchar(15),
book_name varchar(15),
constraint book_book_id_pk primary key(book_id));

insert into book values(1,"mystery");
insert into book values(2,"horror");
insert into book values(3,"life of pie");
insert into book values(4,"romance");
insert into book values(5,"history");
insert into book values(6,"drama");
insert into book values(7,"classics");
insert into book values(8,"biography");
insert into book values(9,"poetry");

create table active_readers(
account_id varchar(15),
reader_id varchar(15),
book_id varchar(15),
account_type varchar(15),
acount_status varchar(15),
constraint activereaders_account_id_pk primary key(account_id),
constraint account_reader_id_fk foreign key(reader_id) references readers(reader_id),
constraint account_book_id_fk foreign key(book_id) references book(book_id));

insert into active_readers value(001,1,1,"permium","active");
insert into active_readers value(002,2,2,"permium","terminated");
insert into active_readers value(003,3,3,"permium","active");
insert into active_readers value(004,4,4,"regular","active");
insert into active_readers value(005,5,5,"regular","terminated");
insert into active_readers value(006,6,6,"premium","active");
insert into active_readers value(007,7,7,"regular","active");
insert into active_readers value(008,8,8,"regular","active");
insert into active_readers value(009,9,9,"premium","active");

select * from active_readers;

create table bookisssue_details(
issueno varchar(15),
account_id varchar(15),
book_id varchar(15),
book_name varchar(15),
no_of_books_issued int(7),
constraint bookissue_details_issueno_pk primary key(issueno),
constraint active_readers_account_id_fk foreign key(account_id) references active_readers(account_id));

insert into bookisssue_details values(0001,001,1,"mystery",3);
insert into bookisssue_details values(0002,002,2,"horror",2);
insert into bookisssue_details values(0003,003,3,"life of pie",5);
insert into bookisssue_details values(0004,004,4,"romance",3);
insert into bookisssue_details values(0005,0065,5,"history",8);
insert into bookisssue_details values(0006,006,6,"drama",3);
insert into bookisssue_details values(0007,007,7,"classics",6);
insert into bookisssue_details values(0008,008,8,"biography",9);
insert into bookisssue_details values(0009,009,9,"poetry",1);


select * from active_readers;

select * from active_readers where acount_status="active";

select count(account_id) from active_readers where account_type="premium";

select * from book;

select reader_id,reader_name from readers;

select * from readers where area="chennai";

alter table bookisssue_details
rename bookissue_details;

select * from bookissue_details;

select *
from readers
where reader_id=1;

