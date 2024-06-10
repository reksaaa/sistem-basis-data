

CREATE TABLE movie (
idMovie CHAR(3) NOT NULL,
title varchar(200) NOT NULL,
category varchar(100) not null,
PRIMARY KEY (idMovie)
);


insert into movie (idMovie, title, category)
values 
('A01', 'Kimi No Nawa', 'Animations'),
('A02', 'No Game No Life', 'Animations'),
('A03', 'Re-Zero', 'Animations'),
('B01', 'Human Centipede', 'Thriller'),
('B02', 'SAW', 'Thriller'),
('C01', 'Yesterday', 'Drama'),
('C02', 'The Notebook', 'Drama'),
('D01', 'Avatar', 'Scifi'),
('D02', 'The Mist', 'Scifi'),
('E01', 'Bodyguard', 'Action');

CREATE TABLE viewer (
idViewer int NOT NULL AUTO_INCREMENT,
firstName varchar(100) NOT NULL,
lastName varchar(100) NOT NULL,
idMovie char(3) not null,
PRIMARY KEY (idViewer),
FOREIGN KEY (idMovie) REFERENCES movie(idMovie)
);

CREATE TABLE bioskop (
idBioskop int NOT NULL AUTO_INCREMENT,
nama varchar(100) NOT NULL,
alamt varchar(100) NOT NULL,
PRIMARY KEY (idBioskop)
);



insert into viewer (firstName, lastName, idMovie)
values 
('Bambang', 'Agus', 'D01'),
('Jajang', 'Nurjaman','B02'),
('Betty', 'Sukinem','A03'),
('Rinda', 'Melinda','C02'),
('Robert','Perela','A01'),
('Asep', 'Sukron', 'B01');


select * from movie m cross join viewer v 


select v.firstName , v.lastName , m.title , m.category 
from movie m inner join viewer v 
on m.idMovie = v.idMovie

select * from penjualan p 


select b.barangName , SUM(p.Quantity) , SUM(p.Subtotal) 
from penjualan p inner join barang b 
on p.barangID = b.barangID 
group by b.barangName 
having b.barangName = 'Baliho'

select v.firstName , v.lastName , m.title , m.category 
from movie m, viewer v 
where  m.idMovie = v.idMovie


select m.title , m.category , v.firstName 
from movie m left join viewer v  
on m.idMovie = v.idMovie 



select m.title , m.category , v.firstName , v.lastName
from viewer v right join movie m 
on v.idMovie = m.idMovie 

insert into bioskop (nama, alamat)
values
('XXI Trans Studio Mall', 'Jl Gatsu no 100'),
('CGV BEC Bandung','Jl BEC no 20'),
('XXI Ciwalk', 'Jl Cihampelas no 12');


select v.firstName , m.title , m.category, b.nama  
from 
movie m left join viewer v 
on m.idMovie = v.idMovie 
left join bioskop b 
on b.idBioskop = v.idBioskop 
where b.nama = 'XXI Ciwalk'























