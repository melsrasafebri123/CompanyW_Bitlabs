--This ensures whether any customer gets 2 vouchers, which are 25% and 50%--

SELECT
  customer_id,
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS voc50_Mar,
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS voc25_Jun
FROM
  `I_CID_03.order`
GROUP BY
  customer_id
ORDER BY
  customer_id;
