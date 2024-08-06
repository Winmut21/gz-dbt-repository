select
        date_date,
        orders_id,
        products_id,
        revenue,
        quantity,
        purchase_price,
       ROUND( quantity * CAST(purchase_price AS FLOAT64 ),2) AS purchase_cost,
       ROUND( revenue - CAST(purchase_price AS FLOAT64 ),2) AS margin
from {{ ref('stg_raw__sales') }} s
join {{ ref('stg_raw__product') }} p
using (products_id)
