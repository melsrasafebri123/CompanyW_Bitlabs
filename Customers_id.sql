{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier;}{\f1\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\sl360\slmult1\f0\fs22\lang9 --This ensures whether any customer gets 2 vouchers, which are 25% and 50%--\par
\par
SELECT\par
  customer_id,\par
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS voc50_Mar,\par
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS voc25_Jun\par
FROM\par
  `I_CID_03.order`\par
GROUP BY\par
  customer_id\par
ORDER BY\par
  customer_id;\par

\pard\sa200\sl276\slmult1\f1\par
\par
}
 