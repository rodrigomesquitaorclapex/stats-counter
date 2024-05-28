# Oracle APEX Stats Counter Plugin
Create nice stats with this template component plugin

## Installation ##
Import *template_component_plugin_com_rodrigomesquita_statscounter.sql* file into your application.

## Usage ##
1. Create a page item
2. Choose *Stats Counter [Plugin]* as an template component type

## Sample Query ##
```
select 1 as id, 1024 as dc_value ,'Visits' as dc_text, 'fa-mouse-pointer' as icon_class from dual
union
select 2 as id, 400 as dc_value ,'Unique Visitors' as dc_text, 'fa-user' as icon_class  from dual
union
select 3 as id, 62 as dc_value ,'Pages Per Visit' as dc_text, 'fa-book' as icon_class  from dual
union
select 4 as id, 800 as dc_value ,'Average Visit' as dc_text, 'fa-clock-o' as icon_class  from dual
order by id
```
 ![Preview](assets/configuration.jpg)

## Preview ##
![Preview](assets/plugin_preview.png)

## Demo ##
[https://bit.ly/dashboard-cards](https://bit.ly/stats-counter)

