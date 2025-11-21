### Apache Superset Portfolio – Kalyan
This repo has a few examples of how I’ve been using Apache Superset along with SQL and Jinja.  
Most of my real dashboards sit on internal company data, so I recreated the same patterns here with dummy data just to show the way I think and build things.

## 1. Types of dashboards

**Sales & Operations Overview**
- High-level KPIs for revenue, orders, and margin
- Global filters for date, region, product line
- Ability to drill into product or region level views
- “Top N products” widget which is controlled by a user parameter

**Customer Behaviour / Retention**
- Cohort view of new vs returning customers
- Drop-off trends across different stages
- Table where you can click a customer and jump to a detailed view (hyperlink drill-through)


## 2. How I use SQL and window functions

I usually rely a lot on:
- `DENSE_RANK()` for ranking products/customers
- `LAG()` to calculate month-over-month change
- `PARTITION BY` to segment by region, product line, or cohort
- Rolling averages for stability on time series

You’ll find a few sample queries in the `/sql` folder that are similar to what I use in production dashboards.


## 3. Jinja templating

In Superset I use Jinja mainly to make queries more dynamic and reusable, for example:
- Dynamic date ranges  
- Optional filters (query still works even if a filter is not selected)
- Top-N selection for rankings

Examples are in the `/jinja_templates` folder.


## 4. Navigation / hyperlink drill-through

I’ve also added samples of how I use hyperlink parameters to move from a summary dashboard into a detailed one (for example passing `customer_id` in the URL).


If you’d like, I’m happy to walk through any of these examples live and explain how I’ve set things up in Superset.
