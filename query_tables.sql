
SELECT AR.ArtistName, COUNT(A.ProductID) AS TotalAlbums
FROM ARTISTS AR
JOIN ALBUMS A ON AR.ArtistID = A.ArtistID
GROUP BY AR.ArtistName
HAVING COUNT(A.ProductID) > 1;


SELECT C.CustomerName
FROM CUSTOMER C
WHERE EXISTS (
  SELECT 1 FROM ORDERS O
  JOIN ORDER_ITEMS OI ON O.OrderID = OI.OrderID
  JOIN PRODUCTS P ON OI.ProductID = P.ProductID
  WHERE O.CustomerID = C.CustomerID AND P.ProductType = 'ALB'
)
AND EXISTS (
  SELECT 1 FROM ORDERS O
  JOIN ORDER_ITEMS OI ON O.OrderID = OI.OrderID
  JOIN PRODUCTS P ON OI.ProductID = P.ProductID
  WHERE O.CustomerID = C.CustomerID AND P.ProductType = 'MOV'
);


SELECT AlbumName AS Title, SalesYTD AS Category
FROM ALBUMS
WHERE SalesYTD > 50
UNION
SELECT MovieName AS Title, SalesYTD AS Category
FROM MOVIES
WHERE SalesYTD > 50
ORDER BY Category DESC;


SELECT
  ProductType,
  ROUND(AVG(Price), 2) AS AvgPrice,
  ROUND(AVG(Price * Price) - AVG(Price) * AVG(Price), 2) AS Variance,
  ROUND(sqrt(AVG(Price * Price) - AVG(Price) * AVG(Price)), 2) AS StdDevPrice
FROM PRODUCTS
GROUP BY ProductType;


SELECT Title
FROM PRODUCTS
EXCEPT
SELECT P.Title
FROM PRODUCTS P
JOIN INVENTORY_RECEIVING IR ON P.ProductID = IR.ProductID
ORDER BY Title;