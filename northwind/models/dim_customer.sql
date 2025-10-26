with stg_customers as (
    select * from {{source("northwind","Customers")}}
)
select {{ dbt_utils.generate_surrogate_key(['stg_customers.customerId'])}} as customerkey,
    stg_customers.*
from stg_customers