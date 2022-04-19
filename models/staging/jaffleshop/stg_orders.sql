with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `ultimate-life-346508.Proj1.orders`

)

select * from orders