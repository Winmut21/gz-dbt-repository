select
        date_date,
        orders_id,
        products_id,
        revenue,
        quantity,
        purchase_price,
       ( quantity * CAST(purchase_price AS FLOAT64 )) AS purchase_cost,
       revenue - ( quantity * CAST(purchase_price AS FLOAT64 )) AS margin
from {{ ref('stg_raw__sales') }} s
join {{ ref('stg_raw__product') }} p
using (products_id)
