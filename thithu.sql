create database qlph
use qlph
create table nhapt(
manpt char(4) primary key,
tennpt varchar(50),
ngaydk date,
soud char(5)
)

create table nguoidung(
mand char(5) primary key,
tennd varchar(50),
ngaydktv date,
gioitinh varchar(10),
ngsinh date
)

create table ungdung(
maud char(5) primary key,
tenud varchar(50),
manpt char(4),
ngph date,
dluong decimal(10,1),
loaiud varchar(20)
)

create table ghinhan(
maud char(5),
mand char(5),
danhgia char(2),
dangsd char(2),
primary key (maud, mand)
)
alter table ghinhan add constraint FK_GHINHAN_MAUD foreign key (maud) references ungdung(maud)
alter table ghinhan add constraint FK_GHINHAN_MAND foreign key (mand) references nguoidung(mand)
alter table ungdung add constraint FK_UNGDUNG_MANPT foreign key (manpt) references nhapt(manpt)


insert into nhapt values ('N001','Gameloft','2006/06/20',100)
insert into nhapt values ('N002','Ketchapp','2010/07/18',20)
insert into nhapt values ('N003','Facebook','2006/02/27',20)

insert into nguoidung values ('ND001','Huynh Cong Khanh','2009/06/17','Nam','1994/05/25')
insert into nguoidung values ('ND002','Nguyen Minh Dat','2010/06/19','Nam','1993/03/22')
insert into nguoidung values ('ND003','Ho Quy Han','2012/10/15','Nu','1994/02/14')

insert into ungdung values ('UD001','Messenger','N003','2007/02/01',6.5, 'Chat')
insert into ungdung values ('UD002','Stack','N002','2017/06/02',42, 'Game')
insert into ungdung values ('UD003','Asphalt 8','N001','2018/08/12',1700, 'Game')

insert into ghinhan values ('UD001','ND001',5,1)
insert into ghinhan values ('UD002','ND002',4,1);
insert into ghinhan values ('UD003','ND003',4,1);

select *
from ghinhan
