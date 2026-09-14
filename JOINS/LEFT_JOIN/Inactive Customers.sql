 Inactive Customers

Given two tables, `Customers` and `Orders`, write an SQL query to find the names of all customers who have **never placed an order**.

**Example**

**Input**

**Customers**

| **id** | **name** |
| :--- | :--- |
| 1 | Joe |
| 2 | Henry |
| 3 | Sam |
| 4 | Max |

**Orders**

| **id** | **customerId** |
| :--- | :--- |
| 1 | 3 |
| 2 | 1 |

**Output**

| **Customers** |
| :--- |
| Henry |
| Max |

SOLUTION : 
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id IS NULL;
