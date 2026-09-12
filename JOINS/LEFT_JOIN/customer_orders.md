&#x20;**Customer Orders Overview**



An e-commerce platform has two tables: **'Customers'** and '**Orders'**.



Write an SQL query using \*\*LEFT JOIN\*\* to return \*\*all customers along with their order details\*\* ('order\_id' and 'amount').



If a customer has not placed any orders, their order-related columns should display \*\*NULL\*\*.



**Example**



**Customers**
| customer_id | name |
| :--- | :--- |
| 1 | Alice |
| 2 | Bob |
| 3 | Charlie |

**Orders**
| order_id | customer_id | amount |
| :--- | :--- | :--- |
| 101 | 1 | 500 |
| 102 | 1 | 300 |
| 103 | 2 | 200 |

**Expected Output**
| customer_id | name | order_id | amount |
| :--- | :--- | :--- | :--- |
| 1 | Alice | 101 | 500 |
| 1 | Alice | 102 | 300 |
| 2 | Bob | 103 | 200 |
| 3 | Charlie | NULL | NULL |

**Solution :**



SELECT c.customer\_id,

c.name,

o.order\_id,

o.amount

FROM Customers as c

LEFT JOIN Orders as o

ON c.customer\_id = o.customer\_id





