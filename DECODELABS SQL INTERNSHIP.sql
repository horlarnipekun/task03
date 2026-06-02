SELECT *
FROM dbo.Dlab


-- Calculate the median of the TotalPrice
WITH OrderedPrices AS (
    SELECT 
        TotalPrice,
        ROW_NUMBER() OVER (ORDER BY TotalPrice) AS RowNum,
        COUNT(*) OVER () AS TotalCount
    FROM dbo.Dlab
)
SELECT AVG(CAST(TotalPrice AS DECIMAL(10,2))) AS Median
FROM OrderedPrices
WHERE RowNum IN (
    (TotalCount + 1) / 2,
    (TotalCount + 2) / 2
);

--calculate the count of  total price
SELECT COUNT(TotalPrice) AS TotalPriceCount
FROM dbo.Dlab

--calculate the sum of total price
SELECT SUM(TotalPrice) AS TotalPriceSum
FROM dbo.Dlab

--calculate the average of total price
SELECT AVG(TotalPrice) AS AverageTotalPrice
FROM dbo.Dlab

--calculate the sum of total price by payment method
SELECT PaymentMethod, SUM(TotalPrice) AS TotalPriceSum
FROM dbo.Dlab
GROUP BY PaymentMethod

--calculate the average of total price by referral source
SELECT ReferralSource, AVG(TotalPrice) AS AverageTotalPrice
FROM dbo.Dlab
GROUP BY ReferralSource

--calculate the COUNT of total price by COUPON code
 SELECT CouponCode, COUNT(TotalPrice) AS TotalPriceCount
 FROM dbo.Dlab
 GROUP BY CouponCode

 --calculate the sum of total price by order status
 SELECT OrderStatus, SUM(TotalPrice) AS TotalPriceSum
 FROM dbo.Dlab
 GROUP BY OrderStatus

 --calculate the sum of total price by ORDER status where coupon code is not N/A
  SELECT OrderStatus, SUM(TotalPrice) AS TotalPriceSum
  FROM dbo.Dlab
  WHERE CouponCode <> 'N/A'
  GROUP BY OrderStatus