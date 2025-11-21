### Superset hyperlink example

From a customer summary table, I create a link like:

`https://superset.company.com/superset/dashboard/123/?customer_id={{ customer_id }}`

In the detail dashboard, `customer_id` is used as a filter so when a user clicks a row,
they land on a page that shows that customer’s full history, orders, and trends.
