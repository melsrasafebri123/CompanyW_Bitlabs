{\rtf1\ansi\ansicpg1252\deff0\nouicompat\deflang1033{\fonttbl{\f0\fnil\fcharset0 Courier;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\sl360\slmult1\f0\fs22\lang9 SELECT ((SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END)-\par
        SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END))/\par
        SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END)) AS RetentionRate\par
FROM `I_CID_03.order`\par
\par
--Retention Rate = (Ending customer - New customer)/Beginning Customer)\par
--ANALYSIS--\par
--Retention rate is 0.0% because all this data is talking about newcustomer which you can't find the customers who churn. In this rate you can only count the growth rate and also the comparison--\par
}
 