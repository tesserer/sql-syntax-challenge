--Get all users from Chicago.

SELECT username FROM accounts WHERE city='chicago';


--Get all users with usernames that contain the letter a.

SELECT username FROM accounts WHERE username ILIKE '%a%';


--The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.

UPDATE accounts SET account_balance=10 WHERE account_balance=0 AND transactions_attempted=0;


--Select all users that have attempted 9 or more transactions.

SELECT username FROM accounts WHERE transactions_attempted >= 9;


--Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT\

SELECT username, account_balance FROM accounts ORDER BY account_balance DESC LIMIT 3;


--Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.

SELECT username, account_balance FROM accounts ORDER BY account_balance LIMIT 3;


--Get all users with account balances that are more than $100.

SELECT username FROM accounts WHERE account_balance > 100;


--Add a new record.

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ( 'bill', 'seattle', 3287, 3178, 30000000);


--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

DELETE FROM accounts WHERE city IN ('miami', 'phoenix') AND transactions_completed <=5; 
