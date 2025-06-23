-- Insert sample data

-- Insert customers
INSERT INTO customers (name, email, phone, address) VALUES
('John Doe', 'john@email.com', '555-0001', '123 Main St, City'),
('Jane Smith', 'jane@email.com', '555-0002', '456 Oak Ave, City'),
('Bob Wilson', 'bob@email.com', '555-0003', '789 Pine Rd, City');

-- Insert accounts
INSERT INTO accounts (customer_id, account_number, account_type, balance) VALUES
(1, 'ACC001', 'savings', 1000.00),
(1, 'ACC002', 'checking', 500.00),
(2, 'ACC003', 'savings', 2500.00),
(3, 'ACC004', 'checking', 750.00);

-- Insert transactions
INSERT INTO transactions (account_id, transaction_type, amount, description) VALUES
(1, 'deposit', 1000.00, 'Initial deposit'),
(2, 'deposit', 500.00, 'Opening balance'),
(3, 'deposit', 2500.00, 'Salary deposit'),
(4, 'deposit', 750.00, 'Initial deposit'),
(1, 'withdrawal', 100.00, 'ATM withdrawal'),
(3, 'withdrawal', 200.00, 'Online transfer');
