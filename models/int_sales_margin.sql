select
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity
from {{ ref('stg_raw__sales') }}
join 
     {{ ref('stg_raw__product') }}
using (products_id)     