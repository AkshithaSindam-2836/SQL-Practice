-- Topic: NOT IN
-- Question: Find orders whose status is not Cancelled or Returned.

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    status VARCHAR(30)
);

INSERT INTO Orders VALUES
(1, 101, 'Completed'),
(2, 102, 'Cancelled'),
(3, 103, 'Returned'),
(4, 104, 'Pending');

SELECT order_id, customer_id, status
FROM Orders
WHERE status NOT IN ('Cancelled', 'Returned');
