-- create tables

CREATE TABLE aisles (
	aisle_id INT NOT NULL,
	aisle varchar (50));
	
SELECT * FROM aisles;

\COPY aisles (aisle_id, aisle) FROM 'C:\Users\rache\DATA\Instacart\Raw\csv_data\aisles.csv' DELIMITER ',' CSV HEADER;


/*

instacart=# select * from aisles;
 aisle_id |             aisle
----------+-------------------------------
        1 | prepared soups salads
        2 | specialty cheeses
        3 | energy granola bars
        4 | instant foods
        5 | marinades meat preparation
        6 | other
        7 | packaged meat
        8 | bakery desserts
        9 | pasta sauce
       10 | kitchen supplies
       11 | cold flu allergy
       12 | fresh pasta
       13 | prepared meals
       14 | tofu meat alternatives
       15 | packaged seafood
       16 | fresh herbs
       17 | baking ingredients
       18 | bulk dried fruits vegetables
       19 | oils vinegars
       20 | oral hygiene
       21 | packaged cheese
       22 | hair care
       23 | popcorn jerky
       24 | fresh fruits
       25 | soap
       26 | coffee
       27 | beers coolers
       28 | red wines
       29 | honeys syrups nectars
       30 | latino foods
       31 | refrigerated
       32 | packaged produce
       33 | kosher foods
       34 | frozen meat seafood
       35 | poultry counter
       36 | butter
       37 | ice cream ice
       38 | frozen meals
       39 | seafood counter
       40 | dog food care
       41 | cat food care
       42 | frozen vegan vegetarian
       43 | buns rolls
       44 | eye ear care
       45 | candy chocolate
       46 | mint gum
       47 | vitamins supplements
       48 | breakfast bars pastries
       49 | packaged poultry
       50 | fruit vegetable snacks
       51 | preserved dips spreads
       52 | frozen breakfast
       53 | cream
       54 | paper goods
       55 | shave needs
       56 | diapers wipes
       57 | granola
       58 | frozen breads doughs
       59 | canned meals beans
       60 | trash bags liners
       61 | cookies cakes
       62 | white wines
       63 | grains rice dried goods
       64 | energy sports drinks
       65 | protein meal replacements
       66 | asian foods
       67 | fresh dips tapenades
       68 | bulk grains rice dried goods
       69 | soup broth bouillon
       70 | digestion
       71 | refrigerated pudding desserts
       72 | condiments
       73 | facial care
       74 | dish detergents
       75 | laundry
       76 | indian foods
       77 | soft drinks
       78 | crackers
       79 | frozen pizza
       80 | deodorants
       81 | canned jarred vegetables
       82 | baby accessories
       83 | fresh vegetables
       84 | milk
       85 | food storage
       86 | eggs
       87 | more household
       88 | spreads
       89 | salad dressing toppings
       90 | cocoa drink mixes
       91 | soy lactosefree
       92 | baby food formula
       93 | breakfast bakery
       94 | tea
       95 | canned meat seafood
       96 | lunch meat
       97 | baking supplies decor
       98 | juice nectars
       99 | canned fruit applesauce
      100 | missing
      101 | air fresheners candles
      102 | baby bath body care
      103 | ice cream toppings
      104 | spices seasonings
      105 | doughs gelatins bake mixes
      106 | hot dogs bacon sausage
      107 | chips pretzels
      108 | other creams cheeses
      109 | skin care
      110 | pickled goods olives
      111 | plates bowls cups flatware
      112 | bread
      113 | frozen juice
      114 | cleaning products
      115 | water seltzer sparkling water
      116 | frozen produce
      117 | nuts seeds dried fruit
      118 | first aid
      119 | frozen dessert
      120 | yogurt
      121 | cereal
      122 | meat counter
      123 | packaged vegetables fruits
      124 | spirits
      125 | trail mix snack mix
      126 | feminine care
      127 | body lotions soap
      128 | tortillas flat bread
      129 | frozen appetizers sides
      130 | hot cereal pancake mixes
      131 | dry pasta
      132 | beauty
      133 | muscles joints pain relief
      134 | specialty wines champagnes
(134 rows)
*/

CREATE TABLE departments (
	department_id INT NOT NULL,
	department varchar (50));
	
SELECT * FROM departments;

\COPY departments (department_id, department) FROM 'C:\Users\rache\DATA\Instacart\Raw\csv_data\departments.csv' DELIMITER ',' CSV HEADER;

/*

 department_id |   department
---------------+-----------------
             1 | frozen
             2 | other
             3 | bakery
             4 | produce
             5 | alcohol
             6 | international
             7 | beverages
             8 | pets
             9 | dry goods pasta
            10 | bulk
            11 | personal care
            12 | meat seafood
            13 | pantry
            14 | breakfast
            15 | canned goods
            16 | dairy eggs
            17 | household
            18 | babies
            19 | snacks
            20 | deli
            21 | missing
(21 rows)

*/

CREATE TABLE order_products_prior (
	order_id INT NOT NULL,
	product_id INT,
    add_to_cart_order INT, 
    reordered INT);
	
SELECT * FROM order_products_prior;

\COPY order_products_prior (order_id, product_id, add_to_cart_order, reordered) FROM 'C:\Users\rache\DATA\Instacart\Raw\csv_data\order_products__prior.csv' DELIMITER ',' CSV HEADER;

/*

instacart=# Select * from order_products_prior LIMIT 10;
 order_id | product_id | add_to_cart_order | reordered
----------+------------+-------------------+-----------
        2 |      33120 |                 1 |         1
        2 |      28985 |                 2 |         1
        2 |       9327 |                 3 |         0
        2 |      45918 |                 4 |         1
        2 |      30035 |                 5 |         0
        2 |      17794 |                 6 |         1
        2 |      40141 |                 7 |         1
        2 |       1819 |                 8 |         1
        2 |      43668 |                 9 |         0
        3 |      33754 |                 1 |         1
(10 rows)

*/

CREATE TABLE order_products_train (
	order_id INT NOT NULL,
	product_id INT,
    add_to_cart_order INT, 
    reordered INT);
	
SELECT * FROM order_products_train;

\COPY order_products_train (order_id, product_id, add_to_cart_order, reordered) FROM 'C:\Users\rache\DATA\Instacart\Raw\csv_data\order_products__train.csv' DELIMITER ',' CSV HEADER;


/*

instacart=# SELECT * FROM order_products_train LIMIT 10
instacart-# ;
 order_id | product_id | add_to_cart_order | reordered
----------+------------+-------------------+-----------
        1 |      49302 |                 1 |         1
        1 |      11109 |                 2 |         1
        1 |      10246 |                 3 |         0
        1 |      49683 |                 4 |         0
        1 |      43633 |                 5 |         1
        1 |      13176 |                 6 |         0
        1 |      47209 |                 7 |         0
        1 |      22035 |                 8 |         1
       36 |      39612 |                 1 |         0
       36 |      19660 |                 2 |         1
(10 rows)

*/

CREATE TABLE orders (
	order_id INT NOT NULL,
	user_id INT,
    eval_set VARCHAR(20), 
    order_number INT,
    order_dow INT,
    order_hour_of_day INT,
    days_since_prior_order FLOAT);
	
SELECT * FROM orders;

\COPY orders (order_id, user_id, eval_set, order_number, order_dow, order_hour_of_day, days_since_prior_order) FROM 'C:\Users\rache\DATA\Instacart\Raw\csv_data\orders.csv' DELIMITER ',' CSV HEADER;

/*

instacart=# select * from orders limit 10;
 order_id | user_id | eval_set | order_number | order_dow | order_hour_of_day | days_since_prior_order
----------+---------+----------+--------------+-----------+-------------------+------------------------
  2539329 |       1 | prior    |            1 |         2 |                 8 |
  2398795 |       1 | prior    |            2 |         3 |                 7 |                     15
   473747 |       1 | prior    |            3 |         3 |                12 |                     21
  2254736 |       1 | prior    |            4 |         4 |                 7 |                     29
   431534 |       1 | prior    |            5 |         4 |                15 |                     28
  3367565 |       1 | prior    |            6 |         2 |                 7 |                     19
   550135 |       1 | prior    |            7 |         1 |                 9 |                     20
  3108588 |       1 | prior    |            8 |         1 |                14 |                     14
  2295261 |       1 | prior    |            9 |         1 |                16 |                      0
  2550362 |       1 | prior    |           10 |         4 |                 8 |                     30
(10 rows)

*/


-- uft8

-- ERROR:  character with byte sequence 0x9d in encoding "WIN1252" has no equivalent in encoding "UTF8"

SET CLIENT_ENCODING TO 'utf8';

CREATE TABLE products (
	product_id INT NOT NULL,
	product_name VARCHAR(200),
    aisle_id INT, 
    department_id INT);
	
SELECT * FROM products;

\COPY products (product_id, product_name, aisle_id, department_id) FROM 'C:\Users\rache\DATA\Instacart\Raw\csv_data\products.csv' DELIMITER ',' CSV HEADER;

/*

 product_id |                           product_name                            | aisle_id | department_id
------------+-------------------------------------------------------------------+----------+---------------
          1 | Chocolate Sandwich Cookies                                        |       61 |            19
          2 | All-Seasons Salt                                                  |      104 |            13
          3 | Robust Golden Unsweetened Oolong Tea                              |       94 |             7
          4 | Smart Ones Classic Favorites Mini Rigatoni With Vodka Cream Sauce |       38 |             1
          5 | Green Chile Anytime Sauce                                         |        5 |            13
          6 | Dry Nose Oil                                                      |       11 |            11
          7 | Pure Coconut Water With Orange                                    |       98 |             7
          8 | Cut Russet Potatoes Steam N' Mash                                 |      116 |             1
          9 | Light Strawberry Blueberry Yogurt                                 |      120 |            16
         10 | Sparkling Orange Juice & Prickly Pear Beverage                    |      115 |             7
(10 rows)

*/


CREATE VIEW order_products_all AS
SELECT * FROM order_products_train UNION SELECT * FROM order_products_prior;


CREATE VIEW order_breakdown AS
SELECT * 
FROM orders 
    INNER JOIN order_products_all USING(order_id) 
    INNER JOIN products USING(product_id) 
    INNER JOIN departments USING(department_id) 
    INNER JOIN aisles USING(aisle_id)

\COPY (SELECT * FROM order_breakdown) TO 'C:/Users/rache/DATA/instacart/New DATA/order_breakdown.csv' CSV HEADER;


\COPY (SELECT * FROM orders) TO 'C:/Users/rache/DATA/instacart/New DATA/orders.csv' CSV HEADER;

--- Review number of orders per customer

SELECT user_id, COUNT(DISTINCT order_id) FROM orders GROUP BY user_id;


WITH order_count_by_customer AS (
    SELECT user_id, COUNT(DISTINCT order_id) AS order_count FROM orders GROUP BY user_id)

SELECT order_count, COUNT(DISTINCT user_id) FROM order_count_by_customer AS user_count GROUP BY order_count ORDER BY order_count;

/*

 order_count | user_count
-------------+-------
           4 | 23986
           5 | 19590
           6 | 16165
           7 | 13850
           8 | 11700
           9 | 10190
          10 |  9032
          11 |  7815
          12 |  6952
          13 |  6236
          14 |  5613
          15 |  5191
          16 |  4593
          17 |  4139
          18 |  3836
          19 |  3390
          20 |  3200
          21 |  2921
          22 |  2706
          23 |  2605
          24 |  2288
          25 |  2186
          26 |  2060
          27 |  1908
          28 |  1779
          29 |  1601
          30 |  1494
          31 |  1474
          32 |  1386
          33 |  1273
          34 |  1186
          35 |  1157
          36 |  1015
          37 |  1048
          38 |   960
          39 |   904
          40 |   878
          41 |   885
          42 |   814
          43 |   743
          44 |   724
          45 |   707
          46 |   657
          47 |   675
          48 |   654
          49 |   579
          50 |   554
          51 |   582
          52 |   527
          53 |   524
          54 |   499
          55 |   425
          56 |   390
          57 |   396
          58 |   343
          59 |   332
          60 |   303
          61 |   324
          62 |   276
          63 |   267
          64 |   254
          65 |   239
          66 |   238
          67 |   204
          68 |   189
          69 |   185
          70 |   178
          71 |   154
          72 |   166
          73 |   138
          74 |   162
          75 |   162
          76 |   134
          77 |   120
          78 |   127
          79 |   127
          80 |   116
          81 |   108
          82 |   119
          83 |    86
          84 |    99
          85 |   100
          86 |    93
          87 |    78
          88 |    79
          89 |    77
          90 |    85
          91 |    56
          92 |    69
          93 |    67
          94 |    57
          95 |    64
          96 |    67
          97 |    54
          98 |    50
          99 |    47
         100 |  1374
(97 rows)

*/

-- number of products per order


WITH product_count_by_order AS (SELECT order_id, COUNT(order_id) AS product_count FROM order_breakdown GROUP BY order_id)

SELECT product_count, COUNT(order_id) AS order_count FROM product_count_by_order GROUP BY product_count ORDER BY product_count;

/*

 product_count | order_count
---------------+--------
             1 | 163593
             2 | 194361
             3 | 215060
             4 | 230299
             5 | 237225
             6 | 236383
             7 | 228547
             8 | 211357
             9 | 191564
            10 | 172103
            11 | 153495
            12 | 136963
            13 | 121714
            14 | 108077
            15 |  95475
            16 |  84714
            17 |  74468
            18 |  65348
            19 |  57290
            20 |  50198
            21 |  43720
            22 |  38049
            23 |  33134
            24 |  28357
            25 |  24692
            26 |  21269
            27 |  18348
            28 |  15781
            29 |  13667
            30 |  11804
            31 |  10017
            32 |   8438
            33 |   7337
            34 |   6356
            35 |   5444
            36 |   4617
            37 |   3874
            38 |   3347
            39 |   2795
            40 |   2371
            41 |   2068
            42 |   1730
            43 |   1487
            44 |   1306
            45 |   1112
            46 |    943
            47 |    792
            48 |    640
            49 |    589
            50 |    522
            51 |    418
            52 |    371
            53 |    306
            54 |    290
            55 |    236
            56 |    185
            57 |    165
            58 |    170
            59 |    123
            60 |    129
            61 |    103
            62 |     82
            63 |     72
            64 |     61
            65 |     56
            66 |     51
            67 |     45
            68 |     41
            69 |     24
            70 |     37
            71 |     30
            72 |     25
            73 |     22
            74 |     26
            75 |     10
            76 |     13
            77 |     16
            78 |      9
            79 |      7
            80 |      9
            81 |      5
            82 |      9
            83 |      4
            84 |     10
            85 |      5
            86 |      7
            87 |      4
            88 |      7
            89 |      4
            90 |      1
            91 |      4
            92 |      9
            93 |      4
            94 |      1
            95 |      4
            96 |      3
            98 |      4
            99 |      2
           100 |      4
           101 |      2
           102 |      3
           104 |      2
           105 |      1
           108 |      2
           109 |      2
           112 |      1
           114 |      1
           115 |      1
           116 |      1
           121 |      1
           127 |      1
           137 |      1
           145 |      1
(113 rows)

*/


WITH product_count_by_order AS (SELECT order_id, COUNT(order_id) AS product_count FROM order_breakdown GROUP BY order_id) SELECT product_count, COUNT(order_id) AS order_count FROM product_count_by_order GROUP BY product_count ORDER BY product_count;

WITH order_count_by_customer AS (SELECT user_id, COUNT(DISTINCT order_id) AS order_count FROM orders GROUP BY user_id) SELECT order_count, COUNT(DISTINCT user_id) FROM order_count_by_customer AS user_count GROUP BY order_count ORDER BY order_count;

-- Order aggregates

-- define list of orders with alcohol

CREATE VIEW alcohol_orders AS
SELECT DISTINCT order_id FROM order_breakdown WHERE department = 'alcohol';

-- list of users that have purchased alcohol

CREATE VIEW alcohol_users AS
SELECT DISTINCT user_id FROM order_breakdown WHERE department = 'alcohol';

-- how many orders with alcohol? -- 87794
SELECT COUNT(*) FROM alcohol_orders;

-- total orders -- 3346083

SELECT COUNT(DISTINCT order_id) FROM order_breakdown;

-- how many user have purchased alcohol? -- 16104

SELECT COUNT(*) FROM alcohol_users;

-- total users -- 206209
SELECT COUNT(DISTINCT user_id) FROM order_breakdown;

-- create view of non-alcohol orders

CREATE VIEW non_alcohol_orders AS
SELECT DISTINCT(order_id) FROM order_breakdown WHERE order_id NOT IN (SELECT * FROM alcohol_orders);

-- total non_alcohol_orders


-- orders alcohol ordered first

CREATE VIEW alcohol_first_orders AS
SELECT order_id FROM order_breakdown WHERE department = 'alcohol' AND add_to_cart_order = 1;



-- aggregates for alcohol orders

SELECT 
    COUNT(DISTINCT order_id) as alcohol_order_count, 
    COUNT(product_id) AS total_product_count, 
FROM order_breakdown
WHERE order_id IN (SELECT * FROM alcohol_orders);

/*
 alcohol_order_count | total_product_count
---------------------+---------------------
               87794 |              830295
(1 row)

*/

-- FILTER FOR ALCOHOL-ONLY ORDERS

CREATE VIEW alcohol_only_orders AS 
SELECT order_id, COUNT(DISTINCT department_id) AS department_count
FROM order_breakdown
WHERE order_id IN (SELECT * FROM alcohol_orders)
GROUP BY order_id
HAVING COUNT(DISTINCT department_id) =1;

-- how many orders have ONLY alcohol

SELECT COUNT(*) FROM alcohol_only_orders;

-- how many orders had alcohol first (excluding orders with just alcohol) -  26113

select count(*) FROM alcohol_first_orders WHERE order_id NOT IN (SELECT order_id FROM alcohol_only_orders);

-- product_df

CREATE VIEW products_df AS SELECT * FROM products LEFT JOIN departments USING(department_id);

-- add order & product count

CREATE VIEW products_df2 AS 
WITH product_info AS (
SELECT product_id, COUNT(product_id) AS product_sold_count, COUNT(DISTINCT order_id) AS order_count, 
    ROUND(AVG(reordered),2) AS avg_reorder_rate, ROUND(AVG(add_to_cart_order),2) AS avg_add_to_cart_order 
FROM order_breakdown GROUP BY product_id)
SELECT * FROM products_df LEFT JOIN product_info USING(product_id);

-- How many units we would not have sold if alcohol was not sold?