update pg_database set datallowconn = 'false' where datname = 'test';

select pg_terminate_backend(pid)
from pg_stat_activity
where datname = 'test';

drop database test;

create database test;

\connect test;

create table musician
(musician_id serial primary key,
first_name varchar(40) not null,
last_name varchar(40),
birthdate date);