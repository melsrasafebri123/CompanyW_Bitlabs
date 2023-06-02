{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\sl360\slmult1\f0\fs22\lang9 SELECT\par
  customer_id,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-03-01' AND '2022-03-07' THEN 1 ELSE 0 END) AS Week1_Maret_50,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-03-08' AND '2022-03-14' THEN 1 ELSE 0 END) AS Week2_Maret_50,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-03-15' AND '2022-03-21' THEN 1 ELSE 0 END) AS Week3_Maret_50,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-03-22' AND '2022-03-28' THEN 1 ELSE 0 END) AS Week4_Maret_50,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-03-29' AND '2022-03-31' THEN 1 ELSE 0 END) AS Week5_Maret_50,\par
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS TOTAL_TRANS_50,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-06-01' AND '2022-06-07' THEN 1 ELSE 0 END) AS Week1_Juni_25,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-06-08' AND '2022-06-14' THEN 1 ELSE 0 END) AS Week2_Juni_25,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-06-15' AND '2022-06-21' THEN 1 ELSE 0 END) AS Week3_Juni_25,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-06-22' AND '2022-06-28' THEN 1 ELSE 0 END) AS Week4_Juni_25,\par
  SUM(CASE WHEN transaction_date BETWEEN '2022-06-29' AND '2022-06-30' THEN 1 ELSE 0 END) AS Week5_Juni_25,\par
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS TOTAL_TRANS_25\par
FROM\par
  `I_CID_03.order`\par
GROUP BY customer_id;\par
\par
--ANALYSIS--\par
--There are almost no customers who repurchase in different months because welcome vouchers are only given for 1 month. However, if you see that some customers repurchase in the following week because of the discount, you can also see that more customers buy with a 50% voucher compared to a 25% voucher.--\par
}
 