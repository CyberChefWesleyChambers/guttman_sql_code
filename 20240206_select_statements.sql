SELECT productid, productname, productprice, categoryid FROM product;

SELECT productname, productid, vendorid, categoryid, productprice FROM product;

SELECT productid, productprice FROM product;

SELECT productid, productprice, productprice * 1.10 AS "Final Price" FROM product;

SELECT productid, productname, vendorid, productprice FROM product
WHERE productid IN ('5X5','6X6');

SELECT productid, productname, vendorid, productprice FROM product
WHERE productid IN ('2X2','3X3','4X4');

SELECT vendorid FROM product;

SELECT DISTINCT vendorid FROM product;

SELECT productid, productname, categoryid, productprice FROM product
WHERE productid IN ('3X3','2X2','4X4') ORDER BY productprice DESC;

SELECT productid, productname, categoryid, productprice FROM product
WHERE productid IN ('3X3','2X2','4X4') ORDER BY productprice ASC;


-- SELECT  productid, productname, categoryid, productprice FROM product ORDER BY categoryid;

SELECT productid,productname,categoryid,productprice FROM product ORDER BY categoryid,productprice;

SELECT productid, productname, productprice, vendorid, categoryid FROM product WHERE productid IN ('2X2', '4X4');
