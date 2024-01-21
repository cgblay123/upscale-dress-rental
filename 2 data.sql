use UpscaleRental
go

delete Dress
go

insert Dress(Cost, DatePurchased, OrderNumber, RetailValue, Company, Style, DressSize, RentalPrice, TimesRented, Damage, RepairCost, SelloutDate)
select 200, '11/17/2023', 0, 450, 'Sharron''e', 'blue lace tiered maxi', 2, 100, 1, null, null, null
union select 150, '1/8/2024', 4000875, 648, 'Knitted', 'beige eyelet midi', 2, 100, 0, null, null, null
union select 222, '1/1/2024', 1, 424, 'Swift Lines', 'emerald and black lace with belt', 0, 100, 3,'belt ripped', 10, null
union select 500, '10/10/2023', 100798548, 700, 'Zimmerman', 'black silk with gold buttons', 6, 986, 6, null, null, null