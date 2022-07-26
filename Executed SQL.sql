--This database analyzes the stocks prices for 5 of the covid vaccine companies throughout the year 2021.


/* --Create stocks table
 
CREATE TABLE stocks (
	symbol TEXT, 
	name TEXT,
	sdate DATETIME,
	price INTEGER
);


  --Insert values for Pfizer

INSERT INTO stocks (symbol, name, sdate, price)
	VALUES ('PFE', 'Pfizer Inc', '2021-01-04', 36.81),
			('PFE', 'Pfizer Inc', '2021-02-04', 34.89),
			('PFE', 'Pfizer Inc', '2021-03-04', 34.20),
			('PFE', 'Pfizer Inc', '2021-04-05', 36.28),
			('PFE', 'Pfizer Inc', '2021-05-04', 39.95),
			('PFE', 'Pfizer Inc', '2021-06-04', 39.15),
			('PFE', 'Pfizer Inc', '2021-07-06', 39.29),
			('PFE', 'Pfizer Inc', '2021-08-04', 45.19),
			('PFE', 'Pfizer Inc', '2021-09-03', 46.84),
			('PFE', 'Pfizer Inc', '2021-10-04', 42.42),
			('PFE', 'Pfizer Inc', '2021-11-04', 43.85),
			('PFE', 'Pfizer Inc', '2021-12-03', 54.27);

	
  --Insert values for Johnson & Johnson

INSERT INTO stocks (symbol, name, sdate, price)
	VALUES ('JNJ', 'Johnson & Johnson', '2021-01-04', 156.50),
			('JNJ', 'Johnson & Johnson', '2021-02-04', 161.99),
			('JNJ', 'Johnson & Johnson', '2021-03-04', 153.07),
			('JNJ', 'Johnson & Johnson', '2021-04-05', 163.43),
			('JNJ', 'Johnson & Johnson', '2021-05-04', 167.77),
			('JNJ', 'Johnson & Johnson', '2021-06-04', 165.97),
			('JNJ', 'Johnson & Johnson', '2021-07-06', 167.97),
			('JNJ', 'Johnson & Johnson', '2021-08-04', 173.36),
			('JNJ', 'Johnson & Johnson', '2021-09-03', 175.04),
			('JNJ', 'Johnson & Johnson', '2021-10-04', 159.22),
			('JNJ', 'Johnson & Johnson', '2021-11-04', 164.60),
			('JNJ', 'Johnson & Johnson', '2021-12-03', 159.38);

			
  --Insert values for Moderna

INSERT INTO stocks (symbol, name, sdate, price)
	VALUES ('MRNA', 'Moderna Inc', '2021-01-04', 111.73),
			('MRNA', 'Moderna Inc', '2021-02-04', 173.31),
			('MRNA', 'Moderna Inc', '2021-03-04', 132.30),
			('MRNA', 'Moderna Inc', '2021-04-05', 129.91),
			('MRNA', 'Moderna Inc', '2021-05-04', 173.59),
			('MRNA', 'Moderna Inc', '2021-06-04', 206.07),
			('MRNA', 'Moderna Inc', '2021-07-06', 233.34),
			('MRNA', 'Moderna Inc', '2021-08-04', 419.05),
			('MRNA', 'Moderna Inc', '2021-09-03', 416.70),
			('MRNA', 'Moderna Inc', '2021-10-04', 325.84),
			('MRNA', 'Moderna Inc', '2021-11-04', 284.02),
			('MRNA', 'Moderna Inc', '2021-12-03', 306.72);

	
	--Insert values for BioNTech

INSERT INTO stocks (symbol, name, sdate, price)
	VALUES ('BNTX', 'BioNTech SE', '2021-01-04', 84.61),
			('BNTX', 'BioNTech SE', '2021-02-04', 116.02),
			('BNTX', 'BioNTech SE', '2021-03-04', 93.91),
			('BNTX', 'BioNTech SE', '2021-04-05', 113.86),
			('BNTX', 'BioNTech SE', '2021-05-04', 174.57),
			('BNTX', 'BioNTech SE', '2021-06-04', 230.24),
			('BNTX', 'BioNTech SE', '2021-07-06', 210.71),
			('BNTX', 'BioNTech SE', '2021-08-04', 409.02),
			('BNTX', 'BioNTech SE', '2021-09-03', 329.93),
			('BNTX', 'BioNTech SE', '2021-10-04', 245.65),
			('BNTX', 'BioNTech SE', '2021-11-04', 270.36),
			('BNTX', 'BioNTech SE', '2021-12-03', 339.56);


	--Add values for Novavax 		

INSERT INTO stocks (symbol, name, sdate, price)
	VALUES ('NVAX', 'Novavax Inc',	'2021-01-04', 112.98),
			('NVAX', 'Novavax Inc',	'2021-02-04', 280.92),
			('NVAX', 'Novavax Inc',	'2021-03-04', 158.10),
			('NVAX', 'Novavax Inc',	'2021-04-05', 177.29),
			('NVAX', 'Novavax Inc',	'2021-05-04', 180.67),
			('NVAX', 'Novavax Inc',	'2021-06-04', 183.01),
			('NVAX', 'Novavax Inc',	'2021-07-06', 215.19),
			('NVAX', 'Novavax Inc',	'2021-08-04', 223.81),
			('NVAX', 'Novavax Inc',	'2021-09-03', 251.49),
			('NVAX', 'Novavax Inc',	'2021-10-04', 178.27),
			('NVAX', 'Novavax Inc',	'2021-11-04', 179.41),
			('NVAX', 'Novavax Inc',	'2021-12-03', 160.48);


/*  --What are the distinct stocks in the table?
SELECT DISTINCT symbol, name
FROM stocks	
*/

/*  --What were the prices for each stock in July?
SELECT name, price
FROM stocks
WHERE strftime('%m', sdate) = '07'
*/

/*  --Select all information for one stock.
SELECT *
FROM stocks
WHERE symbol = 'PFE'
ORDER BY sdate
--Are there any trends?
--It appears that the stock price hovered between the $34-$39 range and jumped to $45 when the vaccine was approved by FDA in August.
*/

/*  --Number of times each stock reached a price above $100
SELECT name, COUNT(*) AS 'Count Above $100'
FROM stocks
WHERE price > 100
GROUP BY name
*/

/*  --Sorted by stock prices: Moderna Inc had highest price of $419.05 in August and Pfizer Inc had the lowest price of $34.20 in March.
SELECT name, sdate, price
FROM stocks
ORDER BY 3 DESC
*/

/*  --Stocks that held prices between $40 and $100 throughout the year.
SELECT name, price 
FROM stocks
WHERE price BETWEEN 40 AND 100
ORDER BY 2
*/

/*  --PRICE FORMATTING AS CURRENCY
--What was the range of each stock for the year?
--BioNtech had the highest jump in price and Pfizer had the lowest jump in price, even though both were partners in their vaccine.

SELECT symbol, name, printf("$%.2f", MIN(price)) AS 'Minimum Price', 
	printf("$%.2f", MAX(price)) AS 'Maximum Price', 
	printf("$%.2f", (MAX(price)-MIN(price))) AS 'Price Difference'
FROM stocks
GROUP BY 1
ORDER BY (MAX(price)-MIN(price)) DESC
*/

/*  --What was the average price of each stock?
SELECT name, printf("$%.2f", AVG(price)) AS 'Average Price'
FROM stocks
GROUP BY 1
ORDER BY AVG(price)
*/

/*  --Which rows have a greater price than the average for the whole dataset.
SELECT name, sdate, price
FROM stocks
WHERE price > (SELECT AVG(price)
				FROM stocks)
ORDER BY 1, 2
*/

/*  --Variance of all stock prices
SELECT ROUND(SUM((price - p)*(price - p)) / (COUNT(price) - 1),2) AS 'Variance' FROM stocks,
(SELECT AVG(price) AS p FROM stocks)
*/
	
/*  --What is the variance of each stock
SELECT name, ROUND(SUM((price - p)*(price - p)) / (COUNT(price) - 1),2) AS 'Variance' FROM stocks,
 (SELECT name as n, AVG(price) as p FROM stocks GROUP BY name) as j
WHERE j.n == name 
GROUP BY name;
*/

/* --Median price of all prices
SELECT price AS 'Median Price'
FROM stocks
ORDER BY price
LIMIT 1
OFFSET
	(SELECT COUNT(price)
	FROM stocks)/2;
*/


	
--PRACTICE WITH JOINS 

/*  --Create 'stock_info' table to include symbol and name
CREATE TABLE stock_info (
	symbol TEXT,
	name TEXT
)


 --Create 'stock_price' table to include symbol, date, price
CREATE TABLE stock_price(
	symbol TEXT,
	sdate DATETIME,
	price INTEGER,
)


 --Copy data to stock_info
INSERT INTO stock_info (symbol, name)
SELECT symbol, name
FROM stocks


  --Copy data into stock_price
INSERT INTO stock_price (symbol, sdate, price)
SELECT symbol, sdate, price FROM stocks
*/

--OR--
CREATE TABLE stock_info AS SELECT symbol, name FROM stocks;
CREATE TABLE stock_price AS SELECT symbol, sdate, price FROM stocks;

/*	--Join stock_info and stock_price
SELECT i.symbol, name, sdate, price
FROM stock_info as i
JOIN stock_price as p
ON i.ROWID = p.ROWID;
*/

/*	--Add variables to stock_info table
ALTER TABLE stock_info
ADD industry TEXT;
*/

/*	--Set industry for each 
UPDATE stock_info
SET industry = 'Healthcare'
WHERE name = 'Johnson & Johnson';

UPDATE stock_info
SET industry = 'Pharmaceutical'
WHERE name = 'Pfizer Inc';

UPDATE stock_info
SET industry = 'BioTechnology'
WHERE name = 'Moderna Inc' OR
name = 'Novavax Inc' OR
name = 'BioNTech SE';
*/


/*	--Joins
SELECT stock_info.symbol, name, sdate, price, industry
FROM stock_info
JOIN stock_price
WHERE stock_info.ROWID = stock_price.ROWID;
*/
