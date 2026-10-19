select count(*) as customers , b.PaymentMethod , sum(c.churn="Yes") as churned  , round(avg(c.churn="Yes")*100,1) as churn_rate
from customers c join billings b on c.customerID = b.customerID
group by b.PaymentMethod
