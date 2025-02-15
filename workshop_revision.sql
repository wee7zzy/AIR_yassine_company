create database AIR_yassine;
use AIR_yassine;

create table AVION(
avion_id int(5) primary key not null,
avion_nom varchar(100) ,
avion_capacite varchar(3),
avion_localite varchar(100)
);

create table PILOTE(
pilote_id int(5) primary key not null,
pilote_nom varchar(100),
pilote_adress varchar(100)
);

create table VOL(
Vol_ID int(5) primary key not null,
Pilote_id int(5),
Avion_id int(5),
Ville_Depart varchar(100),
Ville_Arrive varchar(100),
Heur_Depart time,
Heur_Arrive time,
foreign key (Pilote_id) references PILOTE(pilote_id),
foreign key (Avion_id) references AVION(avion_id)
);

insert into AVION
value(100,'ARBUS',300,'RABAT'),
(101,'B737',250,'CASA'),
(102,'B736',150,'SAFI');

select * from AVION
order by avion_localite;

select avion_nom ,avion_capacite from AVION;

select distinct avion_localite from AVION  
where avion_localite in ('CASA','SAFI');



