# Personal diary on MySQL for MySQL learning

It's about self-study, self-motivation, and achievements monitoring

## Usage example

When you want to add a new activity record call this procedure:

```
call AddNewActivity(
    'ActivityTypeName',
    'ActivityTypeSource',
    'Time in format HH:MM:SS',
    current_date (-1 if you want),
    'Comment');
```

The names of the activity_type and activity_source required 
for searching an id of appropriate name. 


### Usage preparation

The dump separated to definitions and my data for tables. 
You can use definitions and fill tables with your own data or 
just watch usage example with my data (without activity_list of course) 

You need an MySql server. 
Just run import.bat and enjoy!

### TODO 
* Create useful interface (Web/Qt/Mobile)
* Create some statistics