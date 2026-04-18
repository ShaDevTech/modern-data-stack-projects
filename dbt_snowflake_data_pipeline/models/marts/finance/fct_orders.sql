select 
    order_id,
    customer_id
from {{ ref('stg__jaffle_shop__orders') }}
LEFT JOIN {{ ref('stg_stripe__payments') }} USING (order_id)