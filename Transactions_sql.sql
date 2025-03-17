SELECT * FROM transactions;


-- Contare il numero totale di transazioni nel dataset
SELECT COUNT(*) AS total_transactions
FROM transactions;

-- Contare il numero di transazioni fraudolente
SELECT COUNT(*) AS total_fraudulent_transactions
FROM transactions
WHERE Fraud_Label = 1;

-- Distribuzione delle transazioni per tipo (POS, Online, Bank Transfer, ecc.)
SELECT Transaction_Type, COUNT(*) AS transaction_count
FROM transactions
GROUP BY Transaction_Type;

-- Contare le transazioni per tipo di dispositivo (Laptop, Mobile, Tablet)
SELECT Device_Type, COUNT(*) AS transaction_count
FROM transactions
GROUP BY Device_Type;

-- Calcolare il rischio medio di frode per tipo di transazione
SELECT Transaction_Type, AVG(Risk_Score) AS average_risk
FROM transactions
GROUP BY Transaction_Type;

-- Contare il numero di transazioni fraudolente per categoria di commerciante
SELECT Merchant_Category, COUNT(*) AS fraudulent_transactions
FROM transactions
WHERE Fraud_Label = 1
GROUP BY Merchant_Category;

-- Contare il numero di transazioni per ogni utente
SELECT User_ID, COUNT(*) AS transaction_count
FROM transactions
GROUP BY User_ID;

-- Transazione con l'importo massimo per ogni utente
SELECT User_ID, MAX(Transaction_Amount) AS max_transaction
FROM transactions
GROUP BY User_ID;

-- Contare il numero di transazioni durante il fine settimana
SELECT COUNT(*) AS weekend_transactions
FROM transactions
WHERE Is_Weekend = 1;

-- Contare le transazioni che hanno fallito più frequentemente
SELECT Transaction_Type, COUNT(*) AS failed_transactions
FROM transactions
WHERE Failed_Transaction_Count_7d > 0
GROUP BY Transaction_Type;

-- Calcolare l'importo medio delle transazioni per tipo
SELECT Transaction_Type, AVG(Transaction_Amount) AS average_transaction_amount
FROM transactions
GROUP BY Transaction_Type;

