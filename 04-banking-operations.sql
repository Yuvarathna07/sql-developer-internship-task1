-- *Simple banking operations

-- *Deposit money to account
INSERT INTO transactions (account_id, transaction_type, amount, description) 
VALUES (1, 'deposit', 300.00, 'Cash deposit');

UPDATE accounts 
SET balance = balance + 300.00 
WHERE account_id = 1;

-- *Withdraw money from account
INSERT INTO transactions (account_id, transaction_type, amount, description) 
VALUES (2, 'withdrawal', 50.00, 'ATM withdrawal');

UPDATE accounts 
SET balance = balance - 50.00 
WHERE account_id = 2;

-- *Transfer money between accounts (simplified)
--* From account 1 to account 2: $100
INSERT INTO transactions (account_id, transaction_type, amount, description) 
VALUES 
(1, 'transfer_out', 100.00, 'Transfer to ACC002'),
(2, 'transfer_in', 100.00, 'Transfer from ACC001');

UPDATE accounts SET balance = balance - 100.00 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100.00 WHERE account_id = 2;

-- *Check updated balances
SELECT 
    c.name,
    a.account_number,
    a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;
