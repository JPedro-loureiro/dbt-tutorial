with active_customers as (
    select * from {{ ref('customers') }}
    where number_of_orders > 0
)
select * from active_customers