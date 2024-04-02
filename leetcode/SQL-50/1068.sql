-- Write your MySQL query statement below
SELECT Product.product_name, Sales.year, Sales.price
FROM Sales
LEFT JOIN Product ON Sales.product_id = Product.product_id


-- 쿼리작성시 열이름 정확하게 기입
-- JOIN을 할 때에는 연결될 열을 정확하게 기입 예를들면, Sales.id = Product.id(X) - Sales.product_id = Product.product_id (O)
-- INNER JOIN, LEFT JOIN, RIGHT JOIN 여러 join방법 연습해볼 것
