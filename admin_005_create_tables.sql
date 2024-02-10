DROP TABLE IF EXISTS
  'categories';
CREATE TABLE categories (
  'catergoryId' INT AUTO_INCREMENT PRIMARY KEY,
  'catergoryNane' VARCHAR(100) UNIQUE NOT NULL
);

SHOW CREATE TABLE  categories \G

DROP TABLE IF EXISTS
  'vendors';
CREATE TABLE vendors (
  'vendorId'  INT AUTO_INCREMENT PRIMARY KEY,
  'vendorname'  varchar(25) UNIQUE NOT NULL
);
SHOW CREATE TABLE vendors \G
DROP TABLE IF EXISTS
  'products';
CREATE TABLE 'products'(
  'productId' INT AUTO_INCREMENT PRIMARY KEY,
  'productName' VARCHAR(100) UNIQUE NOT NULL,
  'catergoryId' INT,
  'vendorId' INT,

  CONSTRAINT 'fk_category'
    FOREIGN KEY(catergoryId)
    REFERENCES categories(catergoryId),
  CONSTRAINT 'fk_vendors'
    FOREIGN KEY(vendorId)
    REFERENCES vendors(vendorId)
);

SHOW CREATE TABLE products \G

  DROP TABLE IF EXISTS 'department';
  CREATE TABLE departments (
    'deptId'  INT AUTO_INCREMENT PRIMARY KEY,
    'deptname'  VARCHAR(50) UNIQUE
  );
  SHOW CREATE TABLE departments \G
