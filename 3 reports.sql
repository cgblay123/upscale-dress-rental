use UpscaleRental
go

-- 1) Show a list of all brand new dresses (that have never been rented yet).
select *
from dress d
where d.TimesRented = 0
-- 2) I plan to only sell dresses that have been rented at least 7 times. Please show all dresses that have been rented 7 times or more.
select *
from dress d
where d.TimesRented >= 7
-- 3) List all dresses that the price I paid for them is still more than the amount I made renting it.
select *
from dress d
where d.Cost > d.CurrentProfit
-- 4) List all dresses that have been re-sold.
select *
from dress d
where d.SelloutDate is not null
and  d.SelloutPrice is not null
-- 5) I would like to know what is the average amount below retail price that I pay for my dresses.
select avg(d.RetailValue - d.Cost)
from dress d