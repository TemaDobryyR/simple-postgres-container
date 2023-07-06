CREATE TABLE transactions (
    "UserId" INT,
    "TransactionId" INT,
    "TransactionTime" TEXT,
    "ItemCode" INT,
    "ItemDescription" TEXT,
    "NumberOfItemsPurchased" INT,
    "CostPerItem" FLOAT,
    "Country" TEXT
);

COPY transactions (
    "UserId", 
    "TransactionId", 
    "TransactionTime", 
    "ItemCode", 
    "ItemDescription",
    "NumberOfItemsPurchased",
    "CostPerItem",
    "Country"
) FROM '/var/lib/postgresql/files/transaction_data.csv' DELIMITER ',' CSV HEADER; 