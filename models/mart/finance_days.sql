SELECT 
   date_date
   ,count(orders_id) as nb_transactions    
   ,ROUND(SUM(revenue),1) as revenue
   ,ROUND(AVG(revenue),1) as average_basket
   ,ROUND(SUM(margin),1) as margin
   ,ROUND(SUM(operational_margin),1) as operational_margin
   ,ROUND(SUM(purchase_cost),1) as purchase_cost
   ,ROUND(SUM(shipping_fee),1) as shipping_fee
   ,ROUND(SUM(logcost),1) as logcost
   ,ROUND(SUM(ship_cost),1) as ship_cost
   ,SUM(quantity) as quantity
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC


