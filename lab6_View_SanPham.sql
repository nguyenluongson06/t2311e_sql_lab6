create view View_SanPham AS (
  SELECT products.id, manufacture_date, product_type.name AS 'product_name'
  FROM products
  LEFT JOIN product_type ON products.product_type_id = product_type.id
);