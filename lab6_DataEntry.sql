use [t2311e_lab6]

--delete before inserting
delete from products;
delete from product_type;
delete from employees;

insert into product_type(id, name) 
	values ('Z37E', 'May tinh xach tay Z37'),
	('A48P', 'May in A48'),
	('LKF4', 'May photocopy LKF');

insert into employees(id, name)
	values (987688, 'Nguyen Van An'),
	(123456, 'Tran Duy Binh'),
	(456789, 'Le Minh Anh');

insert into products(id, manufacture_date, product_type_id, employee_id)
	values ('Z37 111111', '2009-12-12', 'Z37E', 987688),
	('A48 000001', '2008-11-12', 'A48P', 987688),
	('LKF 123456', '2010-05-05', 'LKF4', 987688),
	('A48 251364', '2011-08-09', 'A48P', 987688),
	('A48 301254', '2007-03-02', 'A48P', 123456),
	('LKF 290351', '2008-06-06', 'LKF4', 456789),
	('Z37 021545', '2010-01-30', 'Z37E', 123456),
	('Z37 051354', '2011-05-04', 'Z37E', 456789);

select * from product_type;
select * from employees;
select * from products;