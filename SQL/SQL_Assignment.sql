create database ATS;
use ATS;

# Question 1
create table TOOLS_AI(
ID int,
TECHNOLOGY varchar(30)
);

show tables;

insert into TOOLS_AI values(2,'Data Science'),
(1,'Tableau'),
(1,'SQL'),
(2,'R'),
(2,'Power BI'),
(1,'Python'),
(1,'Python'),
(2,'Python'),
(3,'SQL');

select * from TOOLS_AI;

select ID from TOOLS_AI
where TECHNOLOGY in ('SQL','Power BI','Python');

select ID from TOOLS_AI
where TECHNOLOGY ='Python';

select ID from TOOLS_AI
where TECHNOLOGY ='R' and ID in (
select ID from TOOLS_AI
where TECHNOLOGY ='Python');

# Solution 1
select ID from TOOLS_AI
where TECHNOLOGY ='Data Science' and ID in (
select ID from TOOLS_AI
where TECHNOLOGY ='R' and ID in (
select ID from TOOLS_AI
where TECHNOLOGY ='Python'));



# Question 2
create table PRODUCT_INFO(
PRODUCT_ID int,
PRODUCT_NAME varchar(30)
);

insert into PRODUCT_INFO values(1001,'Blog'),
(1002,'Youtube'),
(1003,'Education');

select * from PRODUCT_INFO;

create table PRODUCT_INFO_LIKES(
USER_ID int,
PRODUCT_ID int,
LIKED_DATE date
);

insert into PRODUCT_INFO_LIKES values(1,1001,'2023-8-19'),
(2,1003,'2023-08-18');

# Solution 2
select PRODUCT_INFO.* from PRODUCT_INFO
left join PRODUCT_INFO_LIKES
on PRODUCT_INFO.PRODUCT_ID=PRODUCT_INFO_LIKES.PRODUCT_ID
WHERE PRODUCT_INFO_LIKES.PRODUCT_ID IS NULL;
