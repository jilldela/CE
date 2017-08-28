# Write a SQL query to get the second highest salary from the Employee table.

# +----+--------+
# | Id | Salary |
# +----+--------+
# | 1  | 100    |
# | 2  | 200    |
# | 3  | 300    |
# +----+--------+
# For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

# +---------------------+
# | SecondHighestSalary |
# +---------------------+
# | 200                 |
# +---------------------+

SELECT
    (SELECT DISTINCT
        salary
    FROM
        employee
    ORDER BY 
        salary DESC
    LIMIT
        1 OFFSET 1) 
AS SecondHighestSalary

# --------------------------------
# Given a table salary, such as the one below, that has m=male and f=female values. Swap all f and m values (i.e., change all f values to m and vice versa) with a single update query and no intermediate temp table.

# For example:
# | id | name | sex | salary |
# |----|------|-----|--------|
# | 1  | A    | m   | 2500   |
# | 2  | B    | f   | 1500   |
# | 3  | C    | m   | 5500   |
# | 4  | D    | f   | 500    |
# After running your query, the above salary table should have the following rows:
# | id | name | sex | salary |
# |----|------|-----|--------|
# | 1  | A    | f   | 2500   |
# | 2  | B    | m   | 1500   |
# | 3  | C    | f   | 5500   |
# | 4  | D    | m   | 500    |

UPDATE salary
SET sex =
    CASE sex
        WHEN 'm' THEN 'f'
        ELSE 'm'
    END

# ----------------------------------
# Write a SQL query to find all duplicate emails in a table named Person.

# +----+---------+
# | Id | Email   |
# +----+---------+
# | 1  | a@b.com |
# | 2  | c@d.com |
# | 3  | a@b.com |
# +----+---------+
# For example, your query should return the following for the above table:

# +---------+
# | Email   |
# +---------+
# | a@b.com |
# +---------+

SELECT
    Email
FROM
    Person
GROUP BY
    Email
HAVING
    COUNT(Email) > 1