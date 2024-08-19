
# 🌿 1️⃣-♻️ [Recyclable and Low Fat Products](https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50)

Welcome to the solution guide for the **Recyclable and Low Fat Products** problem! 🎯 This exercise helps you practice querying and filtering data based on multiple conditions. Let’s dive into the problem!

## 📜 **Problem Statement**

### **Task**
You need to find the IDs of products that are both low fat and recyclable from the `Products` table.

### **SQL Schema**

**Table: Products**

| Column Name | Type    |
|-------------|---------|
| `product_id` | int     |
| `low_fats`   | enum    |
| `recyclable` | enum    |

- **`product_id`**: This is a unique identifier for each product. It helps us differentiate between products.
- **`low_fats`**: This column tells us whether the product is low fat. It can be 'Y' for Yes or 'N' for No.
- **`recyclable`**: This column indicates if the product is recyclable. It also uses 'Y' for Yes and 'N' for No.

### **Example**

#### **Input**

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

#### **Output**

| product_id |
|------------|
| 1          |
| 3          |

**Explanation**: In the given table:
- Product with `product_id` 1 is low fat (`low_fats = 'Y'`) and recyclable (`recyclable = 'Y'`).
- Product with `product_id` 3 is also low fat and recyclable.
- Products with IDs 0, 2, and 4 do not meet both criteria at the same time.

## 💡 **Solution**

### **Preferred Solution: Basic Filtering**

**SQL Query:**

```sql
SELECT product_id
FROM Products
WHERE low_fats = 'Y' 
  AND recyclable = 'Y';
```

**Explanation**: 

1. **Selecting Columns**: `SELECT product_id` tells the database that we want to retrieve the product IDs.
2. **Filtering Conditions**:
   - `WHERE low_fats = 'Y'` checks if the product is low fat.
   - `AND recyclable = 'Y'` ensures that the product is also recyclable.
   - The `AND` operator is used to combine these two conditions. Both must be true for the product to be included in the results.
3. **Result**: This query will give us a list of product IDs where both conditions are satisfied, meaning these products are both low fat and recyclable.

## 🛠️ **Validation**

1. **Run the Query**: Copy and paste the SQL code into your SQL environment to see how it works.
2. **Verify Results**: Check if the output matches the example results provided. For more details and practice, visit the [LeetCode problem page](https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50).

---

Happy querying, and enjoy mastering SQL! 🚀
