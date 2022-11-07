/*
    1. I need to know which costume is the most popular.
    2. I need to know which size is the most polpular.
    3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
    4. I need to know the profit each sale.
*/
use CostumeDB
go 

select top 1 QuantitySoldPerCostume = count(*), c.CostumeDesc 
from costume c 
group by c.CostumeDesc
order by QuantitySoldPerCostume desc
 
select top 2 QuantitySoldPerSize = count(c.CostumeSize), c.CostumeSize 
from Costume c
group by c.CostumeSize 
order by QuantitySoldPerSize desc

select SpecialFormat = concat(c.CustomerFirstName, '', c.CustomerLastName, ': ', c.AmountBought, ' - ', c.CostumeDesc, ' (', c.TotalPrice, ')')
from Costume c 

select c.CustomerFirstName, c.CustomerLastName, ProfitPerSale = c.TotalPrice - (c.PurchasePricePer1 * c.AmountBought)
from Costume c 



