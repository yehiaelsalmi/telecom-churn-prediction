select count(*) as customers , round(SUM(b.MonthlyCharges),2) as revenue_loss
from customers c join billing b on c.customerID = b.customerID
where c.churn="Yes"
