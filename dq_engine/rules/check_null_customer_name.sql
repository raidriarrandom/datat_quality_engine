SELECT 
    COUNT(*) AS null_customer_name_count,
    COUNT(*)*1.0/(SELECT COUNT(*) FROM customers) AS null_cusotmer_percentage
 FROM 
    customers 
WHERE 
    customer_name IS NULL
AND 
    isactive = 1;