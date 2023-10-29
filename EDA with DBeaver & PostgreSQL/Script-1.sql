#query1
select "Marital Status", avg(age) as "rata - rata umur"
from customer 
group by "Marital Status" 

#query2
select "gender", avg(age) as "rata - rata umur"
from customer 
group by "gender"

#query3
select store.storename,sum(transaction.qty) as "total quantity" 
from store 
inner join transaction
on store.storeid = transaction.storeid 
group by store.storename 
order by "total quantity" desc 
limit 1;

#Query4
select case_study."Product Name",sum(transaction.totalamount) as "total amount" 
from case_study
inner join transaction
on case_study.productid = transaction.productid 
group by case_study."Product Name" 
order by "total amount" desc 
limit 1;
