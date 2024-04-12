select *
from v_activity_sources;

drop procedure if exists AddNewActivity;
delimiter //
create procedure AddNewActivity(
    IN act_type_name varchar(255),
    IN act_src_name varchar(255),
    IN act_spent_time time,
    IN act_date date,
    IN act_comment varchar(255)
)
    deterministic modifies sql data
begin
    insert into activity_list (ref_person, ref_activity_type, ref_activity_source, spent_time, date, comment)
        value (1,
               GetTypeID(act_type_name),
               GetSourceID(act_src_name),
               act_spent_time, act_date, act_comment);

    select * from v_activity_list;
end//
delimiter ;