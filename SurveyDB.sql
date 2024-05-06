
drop table if exists surveys;
create table surveys 
(
  Sur_id int primary key identity(1, 1),
  Names varchar(255) not null,
  Email varchar(255) not null,
  Birthyear int not null,
  Contact varchar(255) not null,
  Pizza varchar(255) not null,
  Pasta varchar(255) not null,
  Papwors varchar(255) not null,
  Others varchar(255) not null,
  WatchMovies int not null,
  ListenToRadio int not null,
  EatOut int not null,
  WatchTV int not null, 
);

Select count(Sur_id) from surveys 

select count(Pizza) / count(Sur_id) * 100 from surveys 
select count(Pasta) / count(Sur_id) * 100 from surveys 
select count(Papwors) / count(Sur_id) * 100 from surveys 


select avg(birthyear) from surveys

select avg(WatchMovies) from surveys ; 
select avg(WatchTV) from surveys ; 
select avg(ListenToRadio) from surveys ; 
select avg(EatOut) from surveys ; 

Select max(Birthyear) from surveys

Select min(birthyear) from surveys

select * from surveys

