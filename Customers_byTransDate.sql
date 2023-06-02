--Counting the number of customers using 50% or 25% vouchers based on the order of the transaction date--

SELECT
  transaction_date,
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS voc50_Mar,
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS voc25_Jun
FROM
  `I_CID_03.order`
GROUP BY
  transaction_date
ORDER BY
  transaction_date;
