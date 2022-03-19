drop database if exists tiny_theatre;
create database tiny_theatre;

use tiny_theatre;

create table customer(
	cust_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
	address varchar(100) null,
    phone varchar(20) null,
    email varchar(100) not null
);

create table theater(
	theater_id int primary key auto_increment,
    name varchar(50) not null,
    address varchar(100) not null,
    phone varchar(20) not null,
    email varchar(100) not null
);

create table `show`(
	show_id int primary key auto_increment,
    name varchar(50) not null,
    price decimal(4,2) not null
);

create table ticket(
	ticket_id int primary key auto_increment,
    cust_id int not null,
    theater_id int not null,
    show_id int not null,
    seat varchar(3) not null,
	`date` date not null,
    constraint fk_cust_cust_id
		foreign key (cust_id)
        references customer (cust_id),
	constraint fk_theater_theater_id
		foreign key (theater_id)
        references theater (theater_id),
	constraint fk_show_show_id
		foreign key (show_id)
        references `show` (show_id)
);
    