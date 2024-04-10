use [t2311e_lab6]

--drop if table already exists to avoid unecessary errors
drop table if exists product_type, employees, products;

create table product_type(
	id varchar(10) not null primary key,
	name varchar(255) not null,
);

create table employees(
	id int not null primary key,
	name varchar(255) not null,
)

create table products(
	id varchar(20) not null primary key,
	manufacture_date datetime not null,
	product_type_id varchar(10) foreign key references product_type(id),
	employee_id int foreign key references employees(id),
)