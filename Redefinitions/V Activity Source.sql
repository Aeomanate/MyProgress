
drop view if exists v_activity_sources;

create view v_activity_sources as
select concat('(', LeftPadS(`AS`.ref_activity_type, 2), ') ', AT.name)       as Type,
       concat('(', LeftPadS(`AS`.ref_source_class, 2), ') ', `ASC`.shortcut) as Class,
       concat('(', LeftPadS(`AS`.id, 2), ') ', `AS`.name)                    as Source
from activity_source as `AS`
         inner join activity_type as AT on `AS`.ref_activity_type = AT.id
         inner join activity_source_class as `ASC` on `AS`.ref_source_class = `ASC`.id
order by ref_activity_type, Source;

select *
from v_activity_sources;
