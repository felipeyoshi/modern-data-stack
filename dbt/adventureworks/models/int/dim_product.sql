with product as (select * from {{ ref('stg_product') }}),

final as (
    select
        productkey,
        productsku,
        productsubcategorykey,
        productname,
        modelname,
        productsize,
        productcolor,
        productstyle,
        productdescription,
        round(productcost, 2) as productcost,
        round(productprice, 2) as productprice
    from product
)

select
    *
from final