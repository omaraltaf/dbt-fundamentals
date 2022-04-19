with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from `ultimate-life-346508.Proj1.customers`

)
select * from customers