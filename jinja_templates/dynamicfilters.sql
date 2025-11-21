SELECT
    order_date,
    region,
    product_name,
    revenue
FROM orders
WHERE order_date BETWEEN '{{ start_date }}' AND '{{ end_date }}'
{% if region %}
  AND region = '{{ region }}'
{% endif %}
ORDER BY revenue DESC
LIMIT {{ top_n | default(10) }};
