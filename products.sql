CREATE TABLE products (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	product_name VARCHAR(30) NOT NULL,
	company VARCHAR(20) NOT NULL,
	product_count INT DEFAULT 0,
	price NUMERIC NOT NULL,
	is_discounted BOOLEAN NOT NULL
);
insert into products (product_name, company, product_count, price, is_discounted) 
values ('HTC Desire S', 'HTC', 14, 89703.73, false),
('Galaxy A13.', 'SAMSUNG', 12, 97951.14, true),
('iPhone 13.', 'APPLE', 6, 25632.74, true),
('Nokia N91', 'SAMSUNG', 18, 25632.74, true),
('Galaxy A33 5G.', 'SAMSUNG', 7, 80618.93, true),
('HTC Marvel', 'HTC', 20, 68057.51, false),
('iPhone 13 mini.', 'APPLE', 6, 70119.56, false),
('HTC Gratia', 'HTC', 4, 22534.57, false),
('HTC A6380', 'HTC', 10, 40055.49, true),
('Nokia N81', 'NOKIA', 8, 55161.85, true),
('Galaxy A53 5G.', 'SAMSUNG', 9, 52594.71, true),
('iPhone 12', 'APPLE', 11, 30231.28, false),
('iPhone 13 Pro ', 'APPLE', 2, 62777.32, true),
('HTC Wildfire S', 'HTC', 13, 64415.44, false),
('Nokia N82', 'NOKIA', 1, 49014.48, false),
('Galaxy A03', 'SAMSUNG', 17, 95663.65, false),
('iPhone SE', 'APPLE', 16, 62501.76, false),
('Nokia N90', 'NOKIA', 15, 76727.61, true),
('Nokia N92', 'NOKIA', 3, 43131.12, true),
('iPhone 12 Pro Max', 'APPLE', 19, 76762.91, false),
('Galaxy A73 5G', 'SAMSUNG', 5, 69434.95, true);

1.SELECT * FROM products WHERE company NOT IN('HTC');
2.SELECT * FROM products WHERE company = 'APPLE' AND price < 70000;
3.SELECT * FROM products WHERE price >= 46000;
4.SELECT * FROM products ORDER BY price DESC LIMIT 2;
5.SELECT * FROM products WHERE price = (SELECT min(price) FROM products);
6.SELECT * FROM products WHERE is_discounted = true; 
7.SELECT * FROM products WHERE is_discounted = false;
8.SELECT * FROM products ORDER BY price DESC;
9.SELECT sum(price) FROM products;
SELECT company, sum(price) FROM products GROUP BY company;
10.SELECT company, count(*) AS product_name FROM products GROUP BY company HAVING count(*) > 5;




 SELECT * FROM products;                                          
 id |   product_name    | company | product_count |  price   | is_discounted 
----+-------------------+---------+---------------+----------+---------------
  1 | HTC Desire S      | HTC     |            14 | 89703.73 | f             
  2 | Galaxy A13.       | SAMSUNG |            12 | 97951.14 | t             
  3 | iPhone 13.        | APPLE   |             6 | 25632.74 | t             
  4 | Nokia N91         | SAMSUNG |            18 | 25632.74 | t             
  5 | Galaxy A33 5G.    | SAMSUNG |             7 | 80618.93 | t             
  6 | HTC Marvel        | HTC     |            20 | 68057.51 | f             
  7 | iPhone 13 mini.   | APPLE   |             6 | 70119.56 | f             
  8 | HTC Gratia        | HTC     |             4 | 22534.57 | f             
  9 | HTC A6380         | HTC     |            10 | 40055.49 | t             
 10 | Nokia N81         | NOKIA   |             8 | 55161.85 | t             
 11 | Galaxy A53 5G.    | SAMSUNG |             9 | 52594.71 | t             
 12 | iPhone 12         | APPLE   |            11 | 30231.28 | f             
 13 | iPhone 13 Pro     | APPLE   |             2 | 62777.32 | t             
 14 | HTC Wildfire S    | HTC     |            13 | 64415.44 | f             
 15 | Nokia N82         | NOKIA   |             1 | 49014.48 | f             
 16 | Galaxy A03        | SAMSUNG |            17 | 95663.65 | f             
 17 | iPhone SE         | APPLE   |            16 | 62501.76 | f             
 18 | Nokia N90         | NOKIA   |            15 | 76727.61 | t             
 19 | Nokia N92         | NOKIA   |             3 | 43131.12 | t             
 20 | iPhone 12 Pro Max | APPLE   |            19 | 76762.91 | f             
 21 | Galaxy A73 5G     | SAMSUNG |             5 | 69434.95 | t             
(21 строка)                                                                  
                                                                             

1.
 SELECT * FROM products WHERE company NOT IN('HTC');
 id |   product_name    | company | product_count |  price   | is_discounted
----+-------------------+---------+---------------+----------+---------------
  2 | Galaxy A13.       | SAMSUNG |            12 | 97951.14 | t
  3 | iPhone 13.        | APPLE   |             6 | 25632.74 | t
  4 | Nokia N91         | SAMSUNG |            18 | 25632.74 | t
  5 | Galaxy A33 5G.    | SAMSUNG |             7 | 80618.93 | t
  7 | iPhone 13 mini.   | APPLE   |             6 | 70119.56 | f
 10 | Nokia N81         | NOKIA   |             8 | 55161.85 | t
 11 | Galaxy A53 5G.    | SAMSUNG |             9 | 52594.71 | t
 12 | iPhone 12         | APPLE   |            11 | 30231.28 | f
 13 | iPhone 13 Pro     | APPLE   |             2 | 62777.32 | t
 15 | Nokia N82         | NOKIA   |             1 | 49014.48 | f
 16 | Galaxy A03        | SAMSUNG |            17 | 95663.65 | f
 17 | iPhone SE         | APPLE   |            16 | 62501.76 | f
 18 | Nokia N90         | NOKIA   |            15 | 76727.61 | t
 19 | Nokia N92         | NOKIA   |             3 | 43131.12 | t
 20 | iPhone 12 Pro Max | APPLE   |            19 | 76762.91 | f
 21 | Galaxy A73 5G     | SAMSUNG |             5 | 69434.95 | t
(16 строк)


2.
 SELECT * FROM products WHERE company = 'APPLE' AND price < 70000;
 id |  product_name  | company | product_count |  price   | is_discounted
----+----------------+---------+---------------+----------+---------------
  3 | iPhone 13.     | APPLE   |             6 | 25632.74 | t
 12 | iPhone 12      | APPLE   |            11 | 30231.28 | f
 13 | iPhone 13 Pro  | APPLE   |             2 | 62777.32 | t
 17 | iPhone SE      | APPLE   |            16 | 62501.76 | f
(4 строки)



3. 
 SELECT * FROM products WHERE price >= 46000;
 id |   product_name    | company | product_count |  price   | is_discounted
----+-------------------+---------+---------------+----------+---------------
  1 | HTC Desire S      | HTC     |            14 | 89703.73 | f
  2 | Galaxy A13.       | SAMSUNG |            12 | 97951.14 | t
  5 | Galaxy A33 5G.    | SAMSUNG |             7 | 80618.93 | t
  6 | HTC Marvel        | HTC     |            20 | 68057.51 | f
  7 | iPhone 13 mini.   | APPLE   |             6 | 70119.56 | f
 10 | Nokia N81         | NOKIA   |             8 | 55161.85 | t
 11 | Galaxy A53 5G.    | SAMSUNG |             9 | 52594.71 | t
 13 | iPhone 13 Pro     | APPLE   |             2 | 62777.32 | t
 14 | HTC Wildfire S    | HTC     |            13 | 64415.44 | f
 15 | Nokia N82         | NOKIA   |             1 | 49014.48 | f
 16 | Galaxy A03        | SAMSUNG |            17 | 95663.65 | f
 17 | iPhone SE         | APPLE   |            16 | 62501.76 | f
 18 | Nokia N90         | NOKIA   |            15 | 76727.61 | t
 20 | iPhone 12 Pro Max | APPLE   |            19 | 76762.91 | f
 21 | Galaxy A73 5G     | SAMSUNG |             5 | 69434.95 | t
(15 строк)

4.
 SELECT * FROM products ORDER BY price DESC LIMIT 2;
 id | product_name | company | product_count |  price   | is_discounted
----+--------------+---------+---------------+----------+---------------
  2 | Galaxy A13.  | SAMSUNG |            12 | 97951.14 | t
 16 | Galaxy A03   | SAMSUNG |            17 | 95663.65 | f
(2 строки)

5.
 SELECT * FROM products WHERE price = (SELECT min(price) FROM products);
 id | product_name | company | product_count |  price   | is_discounted
----+--------------+---------+---------------+----------+---------------
  8 | HTC Gratia   | HTC     |             4 | 22534.57 | f
(1 строка)

6.
 SELECT * FROM products WHERE is_discounted = true;             
 id |  product_name  | company | product_count |  price   | is_discounted  
----+----------------+---------+---------------+----------+--------------- 
  2 | Galaxy A13.    | SAMSUNG |            12 | 97951.14 | t              
  3 | iPhone 13.     | APPLE   |             6 | 25632.74 | t              
  4 | Nokia N91      | SAMSUNG |            18 | 25632.74 | t              
  5 | Galaxy A33 5G. | SAMSUNG |             7 | 80618.93 | t              
  9 | HTC A6380      | HTC     |            10 | 40055.49 | t              
 10 | Nokia N81      | NOKIA   |             8 | 55161.85 | t              
 11 | Galaxy A53 5G. | SAMSUNG |             9 | 52594.71 | t              
 13 | iPhone 13 Pro  | APPLE   |             2 | 62777.32 | t              
 18 | Nokia N90      | NOKIA   |            15 | 76727.61 | t              
 19 | Nokia N92      | NOKIA   |             3 | 43131.12 | t              
 21 | Galaxy A73 5G  | SAMSUNG |             5 | 69434.95 | t              
(11 строк)                                                                 
                                                                           
7.
 SELECT * FROM products WHERE is_discounted = false;               
 id |   product_name    | company | product_count |  price   | is_discounted  
----+-------------------+---------+---------------+----------+--------------- 
  1 | HTC Desire S      | HTC     |            14 | 89703.73 | f              
  6 | HTC Marvel        | HTC     |            20 | 68057.51 | f              
  7 | iPhone 13 mini.   | APPLE   |             6 | 70119.56 | f              
  8 | HTC Gratia        | HTC     |             4 | 22534.57 | f              
 12 | iPhone 12         | APPLE   |            11 | 30231.28 | f              
 14 | HTC Wildfire S    | HTC     |            13 | 64415.44 | f              
 15 | Nokia N82         | NOKIA   |             1 | 49014.48 | f              
 16 | Galaxy A03        | SAMSUNG |            17 | 95663.65 | f              
 17 | iPhone SE         | APPLE   |            16 | 62501.76 | f              
 20 | iPhone 12 Pro Max | APPLE   |            19 | 76762.91 | f              
(10 строк)                                                                    

8.
 SELECT * FROM products ORDER BY price DESC;                       
 id |   product_name    | company | product_count |  price   | is_discounted  
----+-------------------+---------+---------------+----------+--------------- 
  2 | Galaxy A13.       | SAMSUNG |            12 | 97951.14 | t              
 16 | Galaxy A03        | SAMSUNG |            17 | 95663.65 | f              
  1 | HTC Desire S      | HTC     |            14 | 89703.73 | f              
  5 | Galaxy A33 5G.    | SAMSUNG |             7 | 80618.93 | t              
 20 | iPhone 12 Pro Max | APPLE   |            19 | 76762.91 | f              
 18 | Nokia N90         | NOKIA   |            15 | 76727.61 | t              
  7 | iPhone 13 mini.   | APPLE   |             6 | 70119.56 | f              
 21 | Galaxy A73 5G     | SAMSUNG |             5 | 69434.95 | t              
  6 | HTC Marvel        | HTC     |            20 | 68057.51 | f              
 14 | HTC Wildfire S    | HTC     |            13 | 64415.44 | f              
 13 | iPhone 13 Pro     | APPLE   |             2 | 62777.32 | t              
 17 | iPhone SE         | APPLE   |            16 | 62501.76 | f              
 10 | Nokia N81         | NOKIA   |             8 | 55161.85 | t              
 11 | Galaxy A53 5G.    | SAMSUNG |             9 | 52594.71 | t              
 15 | Nokia N82         | NOKIA   |             1 | 49014.48 | f              
 19 | Nokia N92         | NOKIA   |             3 | 43131.12 | t              
  9 | HTC A6380         | HTC     |            10 | 40055.49 | t              
 12 | iPhone 12         | APPLE   |            11 | 30231.28 | f              
  4 | Nokia N91         | SAMSUNG |            18 | 25632.74 | t              
  3 | iPhone 13.        | APPLE   |             6 | 25632.74 | t              
  8 | HTC Gratia        | HTC     |             4 | 22534.57 | f              
(21 строка)                                                                   


9.
SELECT sum(price) FROM products;
    sum
------------
 1258723.49
(1 строка)


 SELECT company, sum(price) FROM products GROUP BY company;
 company |    sum
---------+-----------
 HTC     | 284766.74
 NOKIA   | 224035.06
 SAMSUNG | 421896.12
 APPLE   | 328025.57
(4 строки)

10.

 SELECT company, count(*) AS product_name FROM products GROUP BY company HAVING count(*) > 5;
 company | product_name                                                                                 
---------+--------------                                                                                
 SAMSUNG |            6                                                                                 
 APPLE   |            6                                                                                 
(2 строки)                                                                                              