DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS customers;
-----1. Create customers table (Main entity)
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address TEXT,
    created_date DATE DEFAULT (CURRENT_DATE)
);

-- 2. Create accounts table (Related to customers)
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    account_number VARCHAR(20) UNIQUE NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    balance DECIMAL(10,2) DEFAULT 0.00,
    status VARCHAR(10) DEFAULT 'active',
    created_date DATE DEFAULT (CURRENT_DATE),
    
    -- Foreign key constraint
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 3. Create transactions table (Related to accounts)
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_type VARCHAR(20) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    description TEXT,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Foreign key constraint
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
