create view View_SanPham_NCTN AS (
  SELECT products.id, manufacture_date, employees.name AS 'employee_name'
  FROM products
  LEFT JOIN employees ON employees.id = products.employee_id
);