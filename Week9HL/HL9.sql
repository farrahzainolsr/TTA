create database massive_stars;
use massive_stars;
create table wolf_rayet(
cat_no varchar(10) not null,
wr_no varchar(7) not null,
mass decimal(10,3),
NT_emitter boolean default 0,
Radio_lum int,
primary key (cat_no),
unique (wr_no)
);

show databases;
use massive_stars;
explain wolf_rayet;

insert into wolf_rayet (cat_no, wr_no, mass, NT_emitter, Radio_lum)
values ('HD1100','WR140','35','0','2'),
('HD1101','WR146','40','0','4'),
('HD1102','WR147','30','1','3'),
('HD1103','WR137','28','1','4');
 
 explain wolf_rayet;
 select * from wolf_rayet;
 update wolf_rayet
 set NT_emitter = '0'
 where cat_no = 'HD1103';

use massive_stars;
select * from wolf_rayet
where cat_no = 'HD1102';

insert into wolf_rayet (cat_no, wr_no, mass, NT_emitter, Radio_lum)
values ('HD1104','WR02','13','0','3'),
('HD1105','WR14','45','0','4'),
('HD1106','WR16','50','1','3'),
('HD1107','WR18','50','1','4'),
('HD1108','WR22','23','0','2'),
('HD1109','WR23a','28','1','1'),
('HD1110','WR79a','43','0','3');

select wr_no, NT_emitter from wolf_rayet;
select wr_no, NT_emitter from wolf_rayet where NT_emitter is false;

use massive_stars;
create table OB_stars(
cat_no varchar(10) not null,
OB_no varchar(7) not null,
colour decimal(10,3),
winds boolean default 0,
Xray_lum int,
primary key (cat_no),
unique (OB_no)
);

show tables;
alter table OB_stars
add column NT_emitter boolean default 0;
explain OB_stars;

alter table OB_stars modify colour varchar(10);



insert into OB_stars (cat_no, OB_no, colour, winds, Xray_lum,NT_emitter)
values ('HD1104','O02','blue','0','3','0'),
('HD1105','B14','red','0','4','1'),
('HD1106','OB16','brown','1','3','1'),
('HD1107','B18','brown','1','4','0'),
('HD1108','O22','red','0','2','1'),
('HD1109','OB23','red','1','1','0'),
('HD1110','B79','blue','0','3','0');

select wr_no, mass, colour
from wolf_rayet
inner join OB_stars 
ON wolf_rayet.cat_no = OB_stars.cat_no;

select * from wolf_rayet, OB_stars
where wolf_rayet.NT_emitter = 1 AND OB_stars.NT_emitter = 1;

