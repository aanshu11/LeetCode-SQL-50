
# 👤 2️⃣-🔍 [Find Customer Referee](https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50)

Welcome to the solution guide for the **Find Customer Referee** problem! 🎯 This exercise will sharpen your skills in filtering customer records based on referral relationships. Let’s explore the different ways to tackle this problem!

## 📜 Problem Statement

### **Task**
Identify the names of customers who are **not** referred by the customer with `id = 2` from the `Customer` table.

### **SQL Schema**

Table: `Customer`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id`: The unique identifier for each customer.
- `name`: The name of the customer.
- `referee_id`: The ID of the customer who referred this customer. If `referee_id` is `NULL`, it means the customer was not referred by anyone.

### **Example**

#### **Input:**

Customer table:
| id | name | referee_id |
|----|------|------------|
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |

#### **Output:**

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

**Explanation:**
In the given table:
- Customer with `id = 1` (Will) and `id = 4` (Bill) were not referred by `id = 2`.
- Customer with `id = 2` (Jane) was not referred by anyone (`NULL`).
- Customer with `id = 5` (Zack) and `id = 6` (Mark) were referred by `id = 1` and `id = 2` respectively, so they are not included.

## 💡 Solutions

### **Solution 1: Using `COALESCE` Function**

SQL Query:

```sql
SELECT name
FROM Customer
WHERE COALESCE(referee_id, 0) <> 2;
```

**Explanation:**

- **Selecting Columns**: `SELECT name` retrieves the names of the customers.
- **Handling NULL Values**: `COALESCE(referee_id, 0)` replaces `NULL` values in `referee_id` with `0`. This ensures that customers with no referee (`NULL`) are treated as not referred by anyone.
- **Filtering Condition**: `<> 2` filters out customers who were referred by `id = 2`, leaving us with those not referred by this ID.

This query efficiently identifies customers not referred by `id = 2` while gracefully handling `NULL` values.

### **Solution 2: Using `WHERE` Clause with `OR IS NULL`**

SQL Query:

```sql
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
```

**Explanation:**

- **Selecting Columns**: `SELECT name` specifies that we want to retrieve the names of the customers.
- **Filtering Conditions**:
  - `referee_id != 2` filters out customers who were referred by `id = 2`.
  - `OR referee_id IS NULL` includes customers who were not referred by anyone (`NULL`).
- **Result**: This query returns names of customers who either were not referred by `id = 2` or were not referred at all.

### **Solution 3: Using a Subquery with `NOT IN`**

SQL Query:

```sql
SELECT name
FROM Customer
WHERE id NOT IN (
    SELECT id
    FROM Customer
    WHERE referee_id = 2
);
```

**Explanation:**

- **Selecting Columns**: `SELECT name` specifies the column to retrieve.
- **Subquery**:
  - `SELECT id FROM Customer WHERE referee_id = 2` finds IDs of customers referred by `id = 2`.
- **Filtering Condition**:
  - `WHERE id NOT IN (...)` filters out customers whose IDs are in the list from the subquery, leaving us with those not referred by `id = 2`.

## 🛠️ Validation

- **Run the Query**: Copy and paste the SQL code into your SQL environment to test it.
- **Verify Results**: Ensure the output matches the example results provided. For further practice, visit the [LeetCode problem page](https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50).

Happy querying, and enjoy mastering SQL! 🚀


