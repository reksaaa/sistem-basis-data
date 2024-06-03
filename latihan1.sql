select * from sbd.barang 


CREATE TABLE penjualan (
idJual int NOT NULL AUTO_INCREMENT,
barangID int NOT NULL,
Quantity int,
Subtotal FLOAT,
PRIMARY KEY (idJual),
FOREIGN KEY (barangID) REFERENCES barang(barangID)
);

select * from barang b 
where b.barangStock > 5
order by barangHarga desc
limit 2;

select * from barang
where barangName like '%baj%'

select * from barang


insert into penjualan (barangID, Quantity, Subtotal)
values 
(2, 3, 900000),
(1,4, 400000),
(3, 6, 600000),
(6, 2, 100000)
;


select * from penjualan p 

select AVG(Subtotal) as "Rata2 Penjualan" from penjualan

select barangID, Quantity , SUM(Quantity) , SUM(Subtotal), COUNT(barangID)
from penjualan p 
where p.tanggal = '2024-02-04' or p.tanggal = '2024-02-03'
group by barangID 

select * from barang b 
where b.barangStock <= 7 and barangHarga <= 200000

select p.barangID,count(barangID)
from penjualan p 
group by barangID 
having count(barangID) = 1





