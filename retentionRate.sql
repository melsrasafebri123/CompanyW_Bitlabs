SELECT ((SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END)-
        SUM(CASE WHEN voucher_name LIKE '%25%' THEN 1 ELSE 0 END))/
        SUM(CASE WHEN voucher_name LIKE '%50%' THEN 1 ELSE 0 END)) AS RetentionRate
FROM `I_CID_03.order`

--Retention Rate = (Ending customer - New customer)/Beginning Customer)

--ANALYSIS--
/* Retention rate is 0.0% because all this data is talking about newcustomer which you can't find the customers who churn. 
In this rate you can only count the growth rate and also the comparison*/
