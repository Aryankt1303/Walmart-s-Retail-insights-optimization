use internshala;
#Task 1
SELECT 
    Branch,
    DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS Month,
    SUM(Total) AS MonthlySales
FROM walmartsales_dataset wd 
GROUP BY Branch, DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m')
ORDER BY Branch, Month;
#Task 2
SELECT 
  Branch,
  `Product line`,
  SUM(Total) AS TotalSales
FROM walmartsales_dataset wd 
GROUP BY Branch, `Product line` 
ORDER BY Branch, TotalSales DESC;
#Task 3
SELECT 
 `Customer ID` ,
  SUM(Total) AS TotalSpent,
  CASE 
    WHEN SUM(Total) > 22500 THEN 'High'
    WHEN SUM(Total) BETWEEN 20000 AND 22500 THEN 'Medium'
    ELSE 'Low'
  END AS Segment
FROM walmartsales_dataset
GROUP BY `Customer ID` 
order by `Customer ID` asc;


#Task 4
SELECT * FROM walmartsales_dataset
WHERE Total > (SELECT AVG(Total) + 2 * STDDEV(Total) FROM walmartsales_dataset)
   OR Total < (SELECT AVG(Total) - 2 * STDDEV(Total) FROM walmartsales_dataset);
#Task 5
SELECT 
  City,
  Payment,
  COUNT(*) AS Count
FROM walmartsales_dataset wd 
GROUP BY City, Payment
ORDER BY City, Count DESC;
#Task 6
SELECT 
  DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS Month,
  Gender,
  SUM(Total) AS Sales
FROM walmartsales_dataset
GROUP BY Date, Gender;
#Task 7
SELECT 
  `Customer type` ,
  `Product line` ,
  SUM(Total) AS Sales
FROM walmartsales_dataset
GROUP BY `Customer type` , `Product line` 
ORDER BY `Customer type` , Sales DESC;
#Task 8
SELECT 
  `Customer ID`,
  COUNT(*) AS PurchaseCount
FROM walmartsales_dataset wd 
GROUP BY `Customer ID` 
HAVING COUNT(*) > 1;
#Task 9
SELECT 
  `Customer ID`,
  SUM(Total) AS TotalSpent
FROM walmartsales_dataset wd 
GROUP BY `Customer ID` 
ORDER BY TotalSpent DESC
LIMIT 5;
#Task 10
SELECT 
  DAYNAME(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS day_of_week,
  SUM(total) AS total_sales,
  COUNT(*) AS transactions
FROM walmartsales_dataset wd 
GROUP BY day_of_week
ORDER BY total_sales DESC;


