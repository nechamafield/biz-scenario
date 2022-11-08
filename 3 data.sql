--please see 1 comment
use CostumeDB 
go
 
delete costume
go
-- If you don't make paidfullprice computed then you need a column here
insert Costume(CustomerFirstName,CustomerLastName,CostumeDesc,CostumeSize,AmountBought,PurchasePricePer1,SellingPricePer1,DateBought,DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20,'2020/02/14', '2020/04/02'
union select 'Aliza', 'Duetch', 'Fire Man', 'L', 1, 22, 27, '2021/03/09', '2022/01/04'
union select 'Dovid', 'Rosen', 'Zebra', 'S', 1, 17, 22, '2020/08/23', '2020/08/25' 
union select 'Shira', 'Pent', 'Colonial Boy', 'XS', 1, 15, 20, '2021/09/27', '2021/12/04'
union select 'Miriam', 'Gruen', 'Princess', 'M', 3, 20, 25, '2022/06/06', '2022/10/19'  
union select 'Shoshana', 'Victor', 'Elephant', 'XL', 1, 25, 30, '2020/11/28', '2021/02/02'
union select 'Mendy', 'First', 'Colonial Girl', 'XS', 1, 15, 20, '2021/05/24', '2021/07/17'
union select 'Yisroel', 'Horowitz', 'Police Man', 'XL', 1, 25, 30, '2022/01/16', '2022/01/19'
union select 'Aliza', 'Duetch', 'American Girl Doll', 'S', 2, 17, 22, '2021/03/12', '2021/06/21'
union select 'Rochel', 'Rubin', 'Bumble Bee', 'S', 1, 17, 22, '2020/11/20', '2021/01/02'
union select 'Bracha', 'Ganz', 'Princess', 'M', 4, 20, 25, '2020/11/03', '2021/12/12'
union select 'Yaakov', 'Cohen', 'Princess', 'XS', 1, 15, 20, '2021/12/04', '2022/07/25'
union select 'Rina', 'Rosen', 'Artist', 'M', 1, 20, 25, '2022/02/18', '2022/05/28'
union select 'Rivkah', 'Goldberger', 'zebra', 'S', 1, 17, 22, '2022/09/14', '2022/12/09' 

select * from costume
