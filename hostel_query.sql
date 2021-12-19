insert into room values(205,4,2);
insert into room values(105,3,3);

update room set room_capacity = 5 where room_num=105;
update hostel set hostel_type = 'F' where hostel_id=4;

delete from room where room_num=105;

select * from hostel;

select c.caf_type, h.hostel_name from cafeteria c
inner join hostel h on h.hostel_id=c.hostel_hostel_id;

select s.name, b.branch_name from students s
inner join branch b on b.branch_code=s.branch_branch_code;

select * from students group by branch_branch_code;

select * from hostel group by hostel_type;

select hostel_hostel_id from cafeteria union
select hostel_id from hostel;

select * from  students;