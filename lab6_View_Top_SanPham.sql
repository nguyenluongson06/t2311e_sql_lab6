create view View_Top_SanPham AS (
  SELECT products.id, product_type_id, manufacture_date
  FROM products
  WHERE products.id IN (
    SELECT TOP 5 products.id
    FROM products
    ORDER BY manufacture_date DESC
  )
);