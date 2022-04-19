with orders as (
    select * from {{ref('stg_orders')}}
),

payments as (
    select * from {{ref('stg_payments')}}
), 

order_payment as (
    select 
        order_id, 
        sum(case when payment_status='success' then amount end) as amount
    from payments
    group by 1
),

final as (
    select 
        orders.order_id, 
        orders.customer_id, 
        orders.order_date, 
        order_payment.amount
    from orders left join order_payment using (order_id)

)

select * from final
