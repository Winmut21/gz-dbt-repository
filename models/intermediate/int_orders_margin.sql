select
       orders_id,
        date_date,
        round(SUM(revenue)) as revenue,
        sum(quantity) as quantity,
        round(sum(purchase_cost)) as purchase_cost,
       round(sum( margin)) as margin
from {{ ref('int_sales_margin') }}
group by orders_id, date_date
order by date_date desc