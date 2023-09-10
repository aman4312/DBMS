create table main(
 id int ,
salary int


)

insert into main values(1, 1000);
insert into main values(2, 2000);

create table backup(
id int ,
salary int

)

create or replace trigger t1
before delete on  main
 for each row

begin
insert into backup values(:old.id, :old.salary);
end;

delete from main where id =1;

select * from main;

select * from backup;
