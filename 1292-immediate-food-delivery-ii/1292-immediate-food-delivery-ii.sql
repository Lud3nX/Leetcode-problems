SELECT
  ROUND(
    (
      SELECT COUNT(DISTINCT customer_id)
      FROM delivery d1
      WHERE customer_pref_delivery_date = (
        SELECT MIN(order_date)
        FROM delivery d2
        WHERE d1.customer_id = d2.customer_id
      )
    ) 
    / 
    (SELECT COUNT(DISTINCT customer_id) FROM delivery) * 100,
    2
  ) 
  AS immediate_percentage;
