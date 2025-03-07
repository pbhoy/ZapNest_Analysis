## (1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

SELECT 
  EXTRACT(year FROM purchase_ts) as purchase_year,
  EXTRACT(quarter FROM purchase_ts) as quarter,
  COUNT(DISTINCT orders.id) as order_count,
  ROUND(SUM(usd_price),2) as sales,
  ROUND(AVG(usd_price),2) as aov
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup AS geo
  USING(country_code)
WHERE
  product_name LIKE "%Macbook%"
  AND region = "NA"
GROUP BY 1,2
ORDER BY 1 ASC, 2 ASC;

-- (1b) What are the average quarterly order counts and total sales for Macbooks sold in North America?

-- Calculating metrics and grouping by quarters
WITH quarterly_metrics AS
(
SELECT
  EXTRACT(year FROM purchase_ts) as purchase_year,
  EXTRACT(quarter FROM purchase_ts) as quarter,
  COUNT(DISTINCT orders.id) as order_count,
  ROUND(SUM(usd_price),2) as sales
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup AS geo
  USING(country_code)
WHERE
  product_name LIKE "%Macbook%"
  AND region = "NA"
GROUP BY 1,2
ORDER BY 1 DESC
)
-- Averaging quarterly order count and sales 
SELECT
  AVG(order_count) as avg_order_count,
  AVG(sales) as avg_sales
FROM quarterly_metrics;

## (2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the highest average time to deliver?

SELECT 
  geo.region,
  ROUND(AVG(date_diff(delivery_ts, orders.purchase_ts, day)),3) as avg_days_to_deliver
FROM core.orders
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup as geo
  USING(country_code)
WHERE
  (EXTRACT(year from orders.purchase_ts) = 2022 AND purchase_platform = "website")
  OR purchase_platform = "mobile"
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

## (3) What was the refund rate and refund count for each product overall? 

SELECT
  CASE 
    WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor'
    ELSE product_name
  END as product_name,
  COUNT(refund_ts) as refund_count,
  ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END),3) as refund_rate
FROM core.orders
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
GROUP BY 1
ORDER BY 3 DESC;

## (4) Within each region, what is the most popular product? 

-- Group and aggregate product counts by region
WITH product_counts AS 
(
SELECT 
  region,
  CASE WHEN product_name = '27inch"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_name_clean,
  COUNT(DISTINCT(orders.id)) as order_count
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup AS geo
  USING(country_code)
GROUP BY 1,2
)
-- Adding row numbers to rank product in each region & filtering for top products
SELECT
  *,
  ROW_NUMBER() OVER (PARTITION BY region ORDER BY order_count DESC) as product_rank
FROM product_counts
QUALIFY product_rank = 1;

## (5a) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

SELECT 
  CASE WHEN loyalty_program = 1 THEN "loyalty_members" ELSE "non_loyalty_members" END AS loyalty_status,
  ROUND(AVG(date_diff(purchase_ts,created_on,day)),1) as days_to_purchase,
  ROUND(AVG(date_diff(purchase_ts,created_on,month)),1) as months_to_purchase
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
GROUP BY 1;

-- (5b) Splitting the time to purchase per loyalty program, per purchase platform
SELECT 
  CASE WHEN loyalty_program = 1 THEN "loyalty_members" ELSE "non_loyalty_members" END AS loyalty_status,
  purchase_platform,
  ROUND(AVG(date_diff(purchase_ts,created_on,day)),1) as days_to_purchase,
  ROUND(AVG(date_diff(purchase_ts,created_on,month)),1) as months_to_purchase,
  COUNT(*) as num_of_records
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
GROUP BY 1,2
ORDER BY 1;
