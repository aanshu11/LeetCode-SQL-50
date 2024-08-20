# 5️⃣-🚫-[Invalid-Tweets](https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&envId=top-sql-50).

Welcome to the solution guide for the Invalid Tweets problem! 🚨 This exercise helps you practice filtering data based on character length within a string. Let’s dive into the problem!

## 📜 Problem Statement

### **Task:**  
You need to find the `tweet_id`s of invalid tweets in the `Tweets` table. A tweet is considered invalid if the number of characters in the `content` column is strictly greater than 15.

### **SQL Schema:**

- Table: `Tweets`

| Column Name | Type    |
|-------------|---------|
| tweet_id    | int     |
| content     | varchar |

- `tweet_id`: This is a unique identifier for each tweet.
- `content`: This column contains the text of the tweet.

### **Example:**

#### **Input:** 

| tweet_id | content                          |
|----------|----------------------------------|
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |

#### **Output:** 

| tweet_id |
|----------|
| 2        |

**Explanation:**  
- Tweet with `tweet_id = 1` has a content length of 14, making it a valid tweet.
- Tweet with `tweet_id = 2` has a content length of 32, making it an invalid tweet.

---

### 💡 Solution 1: Using `CHAR_LENGTH()` Function

The first solution utilizes the `CHAR_LENGTH()` function to accurately measure the number of characters in the tweet's content.

```sql
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
```

**Explanation:**
- **`SELECT tweet_id`:** Retrieves the `tweet_id` of the tweets.
- **`FROM Tweets`:** Specifies the table from which we are fetching data.
- **`WHERE CHAR_LENGTH(content) > 15`:** Filters the tweets where the length of `content` exceeds 15 characters, thereby identifying them as invalid.

**Why This is Preferred:**  
- The `CHAR_LENGTH()` function counts the number of characters in a string, which is essential when dealing with multi-byte characters like those in Unicode or UTF-8.

---

### 💡 Solution 2: Using `LENGTH()` Function (Not Recommended)

The `LENGTH()` function can also be used to find the length of the tweet, but it measures the length in bytes, not characters, which could be problematic for certain encodings.

```sql
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
```

**Explanation:**
- **`SELECT tweet_id`:** Retrieves the `tweet_id` of the tweets.
- **`FROM Tweets`:** Specifies the table to query.
- **`WHERE LENGTH(content) > 15`:** Filters the tweets where the byte length of `content` exceeds 15, which might inaccurately identify some tweets due to the nature of byte-length measurement.

**Why This is Incorrect:**  
- `LENGTH()` returns the number of bytes, not characters, which may differ, especially when dealing with non-ASCII characters or multi-byte encodings like UTF-8. Therefore, `CHAR_LENGTH()` is a more reliable choice.

## **Reference:**  
For more details on the difference between `LENGTH()` and `CHAR_LENGTH()` and why it matters, refer to this [Stack Overflow discussion](https://stackoverflow.com/questions/1734334/mysql-length-vs-char-length?rq=1).


## 🎯 Solution Validation

- **Run the Query:** Copy and paste the `CHAR_LENGTH()` solution into your SQL environment to test its accuracy.
- **Verify Results:** Ensure that the output matches the example provided above.

For further practice and a better understanding of SQL, visit the [LeetCode SQL study plan](https://leetcode.com/studyplan/top-sql-50). 

Happy querying, and keep mastering SQL! 🚀
