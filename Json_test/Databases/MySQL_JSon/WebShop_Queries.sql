-- Hvernig lítur þetta út með "venjulegri" fyrirspurn.
select * from Products;

-- Ekki alveg að gera sig.
select * from Products
where attributes = '{"ports": {"usb": 3, "hdmi": 1}, "screen": "50 inch", "speakers": {"left": "10 watt", "right": "10 watt"}, "resolution": "2048 x 1152 pixels"}';


select * from Products 
where category_id = 1 
and JSON_EXTRACT(attributes, '$.ports.usb') > 0 
and JSON_EXTRACT(attributes , '$.ports.hdmi') > 0;


-- Notum Path-operatorinn(column path operator ->) 	
select id, product_name, attributes->'$.resolution' as resolution
from Products
where category_id = 1;

-- Önnur varíasjón sem strippar gæsalappirnar:
select id, product_name, attributes->>'$.resolution' as resolution
from Products
where category_id = 1;

select id, product_name, attributes->>'$.prod_id' as prod
from Products
where category_id = 1;



-- update

-- JSON_INSERT
update Products
set attributes = JSON_INSERT(attributes,'$.chipset','Qualcomm')
where category_id = 2;

select * from Products where category_id = 2;


-- JSON_REPLACE
update Products
set attributes = JSON_REPLACE(attributes,'$.chipset','Qualcomm Snapdragon')
where category_id = 2;

select * from Products where category_id = 2;


-- JSON_SET
update Products
set attributes = JSON_SET(attributes,'$.body_color','red')
where category_id = 2;

select * from Products where category_id = 2;

-- Eytt úr attributes(json)
update Products
set attributes = JSON_REMOVE(attributes,'$.mount_type')
where category_id = 3;

-- Eytt úr töflunni með argúmentum úr attributes.
delete from Products
where `category_id` = 2
and JSON_EXTRACT(`attributes` , '$.os') like '%Jellybean%';

-- ******************************************************************************************************************

select id, product_name
from Products
where attribute_id > 5900;
