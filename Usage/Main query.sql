call AddNewActivity(
    'worko',
    'imag',
    '0:20:0',
    current_date,
    'Feel myself stronger than yesterday');

call AddNewActivity(
    'Cmake',
    'space',
    '7:0:0',
    current_date,
    'Fucking with RapidJSON and his auto-usage with CMake');


call AddNewActivity(
    'sql',
    'mypro',
    '1:0:0',
    current_date,
    'Refactoring tables');


select * from v_activity_sources;

select * from activity_source;