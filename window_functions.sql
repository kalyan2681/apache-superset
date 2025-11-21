-- Rank products by monthly revenue
SELECT
    order_month,
    product_name,
    SUM(revenue) AS total_revenue,
    DENSE_RANK() OVER (
        PARTITION BY order_month
        ORDER BY SUM(revenue) DESC
    ) AS product_rank_in_month
FROM orders
GROUP BY order_month, product_name;

-- Month-over-month change in revenue
SELECT
    order_month,
    SUM(revenue) AS revenue,
    LAG(SUM(revenue)) OVER (
        ORDER BY order_month
    ) AS prev_month_revenue,
    SUM(revenue) - LAG(SUM(revenue)) OVER (
        ORDER BY order_month
    ) AS mom_change
FROM orders
GROUP BY order_month;
