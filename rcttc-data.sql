SELECT DISTINCT theater, theater_address, theater_phone, theater_email
FROM `rcttc-data_temp`;

INSERT INTO theater (name, address, phone, email)
	SELECT DISTINCT theater, theater_address, theater_phone, theater_email
	FROM `rcttc-data_temp`;
    
SELECT DISTINCT customer_first, customer_last, customer_email, customer_phone, customer_address
FROM `rcttc-data_temp`;

INSERT INTO customer (first_name, last_name, address, phone, email)
	SELECT DISTINCT customer_first, customer_last, customer_address, customer_phone, customer_email
	FROM `rcttc-data_temp`;
    
SELECT DISTINCT `show`, ticket_price
FROM `rcttc-data_temp`;

INSERT INTO `show` (name, price)
	SELECT DISTINCT `show`, ticket_price
	FROM `rcttc-data_temp`;
    
   