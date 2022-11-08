/*
costume
    CustomerId pk
    CustomerFirstName varchar(25)
        not null, not blank
    CustomerLastName varchar(25)
        not null, not blank
    CostumeDesc varchar(50)    
        not null, must be one of the list
    CostumeSize Char(2)   
        not null, not blank
    AmountBought int
        not null, must be greater than zero
    PurchasePricePer1 decimal(4,2)
        not null, must be between 15$ and 25$
    SellingPricePer1 decimal(4,2)
        not null, must be between 15$ and 30$
    TotalPrice decimal(4,2)
        not null, must be greater than 15$
    PaidFullPrice bit
        not null
    DateBought date
        not null, must be after
    DateSold date
        not null

    Multi column constraint:    
    datesold must be after datebought
*/