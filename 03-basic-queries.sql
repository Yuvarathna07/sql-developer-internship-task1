-- *Basic queries to test the database

--  *Show all customers
SELECT * FROM customers;

-- * Show all accounts with customer names
SELECT 
    c.name AS customer_name,
    a.account_number,
    a.account_type,
    a.balance,
    a.status
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;

-- * Show all transactions with account details
SELECT 
    c.name AS customer_name,
    a.account_number,
    t.transaction_type,
    t.amount,
    t.description,
    t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
ORDER BY t.transaction_date DESC;

-- * Check total balance for each customer
SELECT 
    c.name AS customer_name,
    SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.name;

-- * Show recent transactions (last 7 days)
SELECT 
    c.name,
    a.account_number,
    t.transaction_type,
    t.amount,
    t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
WHERE t.transaction_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
ORDER BY t.transaction_date DESC;
