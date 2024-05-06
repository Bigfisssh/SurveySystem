
create database organisation_dbs

drop table if exists admins;
create table admins (
  admin_id int primary key identity(1, 1),
  admin_username varchar(77) not null default '',
  admin_password varchar(77) not null default ''
);
insert into admins (admin_username, admin_password) values
('admin@egov.edu.za', '01234567890');
select * from admins


drop table if exists donors;
create table donors (
  donor_id int primary key identity(1, 1),
  donor_username varchar(77) not null,
  donor_email varchar(77) not null,
  donor_industry varchar(77) not null,
  donor_address varchar(77) not null,
  donor_phone varchar(77) not null,
  donor_password varchar(49) not null,
);
select * from donors


drop table if exists donations;
create table donations (
   donation_id int primary key identity(1, 1),
   catergory varchar(77) not null,
   ddescription varchar(77) not null,   
   items_quantity float not null, 
   getdate date not null default '0000-00-00', 
   donor_id int not null,
   foreign key(donor_id) references donors(donor_id)
);
select * from donations

drop table if exists disasters;
create table disasters (
   disaster_id int primary key identity(1, 1),
   disaster_name varchar(77) not null default '',
   disaster_description varchar(77) not null default '',
   disaster_location varchar(77) not null default '',
   disaster_startdate date not null default '0000-00-00',
   disaster_status varchar(77) not null default '',
   admin_id int not null,
   foreign key(admin_id) references admins(admin_id)
);

select * from disasters

select count(disaster_name) from disasters where disaster_status='Inactive'

select distinct disaster_name from disasters where disaster_status='Active'

drop table if exists goodscatg;
create table goodscatg (
   catergory_id int primary key identity(1, 1),
   catergory_name varchar(77) not null,
   admin_id int not null ,
   foreign key(admin_id) references admins(admin_id)
);
select * from goodscatg


select count(catergory_id) from goodscatg 


drop table if exists transfer_money;
create table transfer_money (
   transfer_money_id int primary key identity(1, 1),
   disaster_name varchar(77) not null, 
   transfer_amount decimal not null,
   donor_id int not null,
   foreign key(donor_id) references donors(donor_id)
);   
select * from transfer_money
select sum(transfer_amount) from transfer_money 

drop table if exists transfer_goods;
create table transfer_goods (
   transfer_goods_id int primary key identity(1, 1),
   catergory_name varchar(77) not null, 
   disaster_name varchar(77) not null,
   donor_id int not null,
   foreign key(donor_id) references donors(donor_id)
);
select * from transfer_goods


