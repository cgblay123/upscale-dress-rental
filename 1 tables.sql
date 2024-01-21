use UpscaleRental
go

drop table if exists Dress
go

create table dbo.Dress(
    DressId int identity primary key not null,
    Cost decimal(6, 2) not null,
    DatePurchased date not null constraint ck_Dress_DatePurchased_between_Oct102023_and_current_date check(DatePurchased between '10/10/2023' and getdate()),
    OrderNumber int not null constraint u_Dress_OrderNumber unique,
    RetailValue decimal(6, 2) not null constraint ck_Dress_RetailValue_greater_than_0 check(RetailValue > 0),
    Company varchar(100) not null constraint ck_Dress_Company_cannot_be_blank check(Company <> ''),
    Style varchar(1000) not null constraint ck_Dress_Style_cannot_be_blank check(Style <> ''),
    DressSize int not null constraint ck_Dress_DressSize_between_0_and_14 check(DressSize between 0 and 14),
    RentalPrice decimal(6,2) not null constraint ck_Dress_RentalPrice_greater_than_zero check(RentalPrice > 0),
    TimesRented int not null constraint df_Dress_TimesRented_0 default 0,
    CurrentProfit as RentalPrice * TimesRented,
    Damage varchar(1000) null,
    RepairCost decimal(6, 2) null,
    SelloutDate date null,
    SelloutPrice decimal(6, 2) null,
    constraint ck_Dress_SelloutDate_not_less_than_DatePurchased check(SelloutDate is null or SelloutDate >= DatePurchased)
)