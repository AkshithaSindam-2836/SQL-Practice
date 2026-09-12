**Table Join Operation**



You are given two tables: Person and Address. Display each user's first name, last name, city, and state. If a user has no address, their city and state should be NULL. Order the result by firstName, then lastName, both in ascending order.


**Example**

**Input**
**Person**
| **personId** | **lastName** | **firstName** |
| :--- | :--- | :--- |
| 1 | Wang | Allen |
| 2 | Alice | Bob |

**Address**
| **addressId** | **personId** | **city** | **state** |
| :--- | :--- | :--- | :--- |
| 1 | 2 | New York City | New York |
| 2 | 3 | San Jose | California |

**Output**
| **firstName** | **lastName** | **city** | **state** |
| :--- | :--- | :--- | :--- |
| Allen | Wang | NULL | NULL |
| Bob | Alice | New York City | New York |




**SOLUTION :**



SELECT

&#x20; p.firstName, 

&#x20; p.lastName,

&#x20; a.city,

&#x20; a.state

FROM Person as p

LEFT JOIN Address as a

ON p.personId = a.personId 

ORDER BY p.firstName , p.lastName

