create user if not exists Imp1 identified by '123';
create user if not exists Imp2 identified by '456';
create user if not exists Imp3 identified by '$89';

create database ImplantacaoDeSistemas;

use ImplantacaoDeSistemas;

grant select, insert, delete, update
on ImplantacaoDeSistemas.*
to Imp1, Imp2, Imp3;

show grants for Imp1;

revoke insert on ImplantacaoDeSistemas.* from Imp1, Imp3;