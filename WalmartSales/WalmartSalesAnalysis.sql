/* Author_Anisha Pantha Bhattarai*/
/*  using the sakila database*/
use sakila;
show tables; 

/* list the total weekly sales for walmart*/
select sum(Weekly_Sales) as Total_Revenue
from walmartsales;

/* list the total weekly sales  when temperature is maximum*/
select Temperature,sum(Weekly_Sales) as Revenue
from walmartsales 
where  temperature=(select max(Temperature) from walmartsales);

/* show the  top 10 least sales  in temperature wise*/
select Temperature,sum(Weekly_Sales) as Revenue from walmartSales
group by Temperature
order by Revenue asc
limit 10;

/* showing how holiday impact the sales*/
select Holiday_flag,sum(Weekly_Sales) as Total_Revenue
from walmartsales
group by Holiday_Flag;

/* showing  the impact of sales with fuel price*/
select Fuel_price, sum(Weekly_sales)as Revenue from walmartsales
where Fuel_price >3.57
group by Fuel_Price
order by Revenue desc;

/* showing  the impact of sales with unemployment*/
select Unemployment,sum(Weekly_Sales)as Revenue
 from walmartsales
 group by unemployment
 order by Unemployment desc;
 
 /* showing  top 5 stores with highest sales*/
 select store,sum(Weekly_sales)as Revenue
 from walmartsales
 group by Store
 order by Revenue
 limit 5;
 
 









