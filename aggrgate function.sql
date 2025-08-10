SELECT 
    `Customer ID`, 
    COUNT(`Order ID`) AS total_orders
FROM `amazon orders dataset`
GROUP BY `Customer ID`;
SELECT 
    `Sales POC`,
    AVG(`Order Value`) AS avg_order_value
FROM `amazon orders dataset`
GROUP BY `Sales POC`
ORDER BY avg_order_value DESC;
SELECT 
    SUM(`Order Value`) AS total_revenue
FROM `amazon orders dataset`;
SELECT 
    `Sales POC`,
    MIN(`Order Value`) AS smallest_order,
    MAX(`Order Value`) AS largest_order
FROM `amazon orders dataset`
GROUP BY `Sales POC`
ORDER BY `Sales POC`;
SELECT 
    `Sales POC`,
    MIN(`Order Value`) AS smallest_order,
    MAX(`Order Value`) AS largest_order
FROM `amazon orders dataset`
GROUP BY `Sales POC`
ORDER BY `Sales POC`;
SELECT
    MIN(`Order Datetime`) AS first_order_date,
    MAX(`Order Datetime`) AS latest_order_date
FROM `amazon orders dataset`;

