# Banking Database - SQL Developer Internship Task 1

**Name:** [YUVARATHNA]
**Date:** [23/06/2025]
**Task:** Database Setup and Schema Design
## What This Project Does
This is a simple banking database that stores:
- Customer information
- Bank accounts 
- Transaction history

## Database Tables

### 1. CUSTOMERS Table
Stores customer information like name, email, phone.

### 2. ACCOUNTS Table  
Stores bank accounts that belong to customers.

### 3. TRANSACTIONS Table
Records every deposit, withdrawal, and transfer.

## How Tables Connect
- 1 Customer → Many Accounts
- 1 Account → Many Transactions

## Files in This Project
- `01-create-database.sql` - Creates the tables
- `02-insert-sample-data.sql` - Adds sample customers and accounts
- `03-basic-queries.sql` - Shows how to get data from tables


## How to Run
1. Open MySQL Workbench
2. Run the files in order (01, 02, 03, 04)
3. Check results with: `SHOW TABLES;`

## Sample Data Included
- 3 customers (John Doe, Jane Smith, Bob Wilson)
- 4 bank accounts 
- 6 transactions

## Key Features
✅ Primary keys (unique IDs)  
✅ Foreign keys (table connections)  
✅ Sample data  
✅ Basic banking operations  
✅ Query examples 
