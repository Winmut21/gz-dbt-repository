select
        date_date,
        orders_id,
        products_id,
        revenue,
        quantity
from {{ ref('stg_raw__sales') }} s
join {{ ref('stg_raw__product') }} p
using (products_id)
