--please see a few comments
use CostumeDB 
go
drop table if exists Costume
go 
create table dbo.Costume(
    CustomerId int not null identity primary key,
    CustomerFirstName varchar(25) not null 
        constraint ck_Costume_Customer_FirstName_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(25) not null 
        constraint ck_Costume_CustomerLastName_cannot_be_blank check(CustomerLastName <> ''),
    CostumeDesc varchar(50) not null 
        constraint ck_Costume_CostumeDesc_must_appear_in_the_list 
            check(CostumeDesc in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    CostumeSize char(2) not null 
        constraint ck_Costume_CostumeSize_cannot_be_blank check(CostumeSize <> ''),
      -- please add that size must be 1 of the options (xs,s,m,l,xl)
    AmountBought int not null 
        constraint ck_Costume_AmountBought_must_be_greater_than_zero check(AmountBought > 0),
    PurchasePricePer1 decimal(4,2) not null
    -- its probably better to make sure that the cost price is in(15,17 etc.)
        constraint ck_Costume_PurchasePricePer1_must_be_between_15_and_25 check(PurchasePricePer1 between 15 and 25),
    SellingPricePer1 decimal (4,2) not null
    --see comment by PurchasePricePer1
        constraint ck_Costume_SellingPricePer1_must_be_between_15_and_30 check(SellingPricePer1 between 15 and 30),
    DateBought date not null 
        constraint ck_Costume_DateBought_must_be_after_business_opened check(DateBought > '01/01/2020'),
    DateSold date not null,
    PaidFullPrice bit not null 
    --why default to 1?
        constraint d_Costume_PaidFullPrice default(1),
     --make sure he is not paying cost price, then th ecalculatio will be different
    TotalPrice as SellingPricePer1 * AmountBought persisted ,
    constraint ck_DateSold_must_be_after_DateBought check(DateSold > DateBought),
    constraint ck_Costume_CostumePrice_is_according_to_CostumeSize 
        check (
                CostumeSize = 'XS' and PurchasePricePer1 = 15  
                or (CostumeSize = 'S' and PurchasePricePer1 = 17) 
                or (CostumeSize = 'M' and PurchasePricePer1 = 20)
                or (CostumeSize = 'L' and PurchasePricePer1 = 22)
                or (CostumeSize = 'XL' and PurchasePricePer1 = 25)
              )
      -- add that if paidfullprice is 1 then make a constraint for sellingpriceper1 like done for purchasepriceper1
)
