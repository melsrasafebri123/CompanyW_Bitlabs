{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier New;}{\f1\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\sl360\slmult1\f0\fs22 --Counting the number of customers using 50% or 25% vouchers based on the order of the transaction date--\par
\par
SELECT\par
  transaction_date,\par
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS voc50_Mar,\par
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS voc25_Jun\par
FROM\par
  `I_CID_03.order`\par
GROUP BY\par
  transaction_date\par
ORDER BY\par
  transaction_date;\par

\pard\sa200\sl276\slmult1\f1\lang9\par
}
 