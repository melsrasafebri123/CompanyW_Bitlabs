SELECT
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS voc50,
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS voc25,
  (
    (
      SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END)
      -
      SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END)
    ) 
    /
    SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END)
  )*100 
  AS growthRate
FROM
  `I_CID_03.order`

--ANALYSIS--
/* The value of the voucher is very influential on the increase in customers.
As you can see from the results, the number of newcomers with 25% vouchers decreased by 86% percent compared to newcomers with 50% vouchers.*/
