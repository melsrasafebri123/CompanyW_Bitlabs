{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\sl360\slmult1\f0\fs22\lang9 SELECT\par
  SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END) AS voc50,\par
  SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END) AS voc25,\par
  (\par
    (\par
      SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END)\par
      -\par
      SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END)\par
    ) \par
    /\par
    SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END)\par
  )*100 \par
  AS growthRate\par
FROM\par
  `I_CID_03.order`\par
\par
--ANALYSIS--\par
-- The value of the voucher is very influential on the increase in customers.As you can see from the results, the number of newcomers with 25% vouchers decreased by 86% percent compared to newcomers with 50% vouchers.\par
}
 