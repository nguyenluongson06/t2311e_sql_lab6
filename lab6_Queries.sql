use [t2311e_lab6]

--cau 4
select * from product_type;
select * from products;
select * from employees;

--cau 5
select * from product_type order by name asc;
select * from employees order by name asc;
select * from products where product_type_id = 'Z37E';
select * from products where employee_id in
(
	select id from employees where name = 'Nguyen Van An'
) order by product_type_id desc;

--cau 6
select product_type_id, COUNT(*) as 'product_count' from products group by product_type_id;
select avg(t.product_count) as average_products_per_type
from (
  select product_type_id, count(distinct id) as product_count
  from products
  group by product_type_id
) as t;
select products.*, product_type.name from products 
	left join product_type on products.product_type_id = product_type.id;
select products.*, product_type.name as 'product_name', employees.name as 'employee_name' from products 
	left join product_type on products.product_type_id = product_type.id
	left join employees on products.employee_id = employees.id;

--cau 8
if not exists(select * from sys.indexes where name = 'employee')
	create index employee on employees(name);
