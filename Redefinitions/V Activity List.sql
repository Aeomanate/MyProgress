
drop view if exists v_activity_list;

create view v_activity_list as
select concat('(', LeftPadS(A.ref_activity_type, 2), ') ', activity_type.name)     as Activity,
       activity_source_class.shortcut as C,
       concat('(', LeftPadS(A.ref_activity_source, 2), ') ', activity_source.name) as Source,
       concat(
               NonzeroLeftPadded(hour(spent_time), 3, 'h'),
               NonzeroLeftPadded(minute(spent_time), 5, 'm')
           )                                                                       as Spent_Time,
       IF(date = current_date, 'TODAY', concat(current_date - date, ' days ago'))  as Day,
       comment                                                                     as Comment
from activity_list A
         inner join activity_type on A.ref_activity_type = activity_type.id
         inner join activity_source on A.ref_activity_source = activity_source.id
         inner join activity_source_class on activity_source.ref_source_class = activity_source_class.id
order by date desc, A.id desc;

select *
from v_activity_list;