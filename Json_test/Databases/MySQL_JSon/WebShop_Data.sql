-- - DATA - --

insert into Brands(brand_name) values('Samsung'),('Nokia'),('Canon');
insert into Categories(category_name) values('Television'),('Mobilephone'),('Camera');

-- Televisions
insert into Products(product_name,brand_id,category_id,attributes)
values('Prime','1','1','{"prod_id":"5000","screen": "50 inch", "resolution": "2048 x 1152 pixels", "ports": {"hdmi": 1, "usb": 3}, "speakers": {"left": "10 watt", "right": "10 watt"}}'),
	  ('Octoview','1','1','{"prod_id":"5010","screen": "40 inch", "resolution": "1920 x 1080 pixels", "ports": {"hdmi": 1, "usb": 2}, "speakers": {"left": "10 watt", "right": "10 watt"}}'),
	  ('Dreamer','1','1','{"prod_id":"5020","screen": "30 inch", "resolution": "1600 x 900 pixles", "ports": {"hdmi": 1, "usb": 1}, "speakers": {"left": "10 watt", "right": "10 watt"}}'),
	  ('Bravia','1','1','{"prod_id":"5030","screen": "25 inch", "resolution": "1366 x 768 pixels", "ports": {"hdmi": 1, "usb": 0}, "speakers": {"left": "5 watt", "right": "5 watt"}}'),
	  ('Proton','1','1','{"prod_id":"5040","screen": "20 inch", "resolution": "1280 x 720 pixels", "ports": {"hdmi": 0, "usb": 0}, "speakers": {"left": "5 watt", "right": "5 watt"}}');
      
-- Mobile phones
insert into Products(product_name,brand_id,category_id,attributes)
values('Desire',
	   '2',
       '2',
       JSON_OBJECT(
		    "prod_id",
            "6000",
			"network",
			JSON_ARRAY("GSM", "CDMA", "HSPA", "EVDO"),
			"body",
            "5.11 x 2.59 x 0.46 inches",
			"weight",
			"143 grams",
			"sim",
			"Micro-SIM",
			"display",
			"4.5 inches",
			"resolution",
			"720 x 1280 pixels",
			"os",
			"Android Jellybean v4.3")
	  ),
	  ('Passion',
       '2',
       '2',
	   JSON_OBJECT(
			"prod_id",
            "6010",
			"network",
			JSON_ARRAY("GSM", "CDMA", "HSPA"),
			"body",
			"6.11 x 3.59 x 0.46 inches",
			"weight",
			"145 grams",
			"sim",
			"Micro-SIM",
			"display",
			"4.5 inches",
			"resolution",
			"720 x 1280 pixels",
			"os",
			"Android Jellybean v4.3")
	  ),
	  ('Emotion',
       '2',
       '2',
       JSON_OBJECT(
			"prod_id",
            "6020",
			"network",
			JSON_ARRAY("GSM", "CDMA", "EVDO"),
			"body",
			"5.50 x 2.50 x 0.50 inches",
			"weight",
			"125 grams",
			"sim",
			"Micro-SIM",
			"display",
			"5.00 inches",
			"resolution",
			"720 x 1280 pixels",
			"os",
			"Android KitKat v4.3")
	  ),
	  ('Sensation',
       '2',
       '2',
       JSON_OBJECT(
			"prod_id",
            "6030",
			"network",
			JSON_ARRAY("GSM", "HSPA", "EVDO"),
			"body",
			"4.00 x 2.00 x 0.75 inches",
			"weight",
			"150 grams",
			"sim",
			"Micro-SIM",
			"display",
			"3.5 inches",
			"resolution",
			"720 x 1280 pixels",
			"os",
			"Android Lollypop v4.3")
	  ),
	  ('Joy',
       '2',
       '2',
       JSON_OBJECT(
			"prod_id",
            "6040",
			"network",
			JSON_ARRAY("CDMA", "HSPA", "EVDO"),
			"body",
			"7.00 x 3.50 x 0.25 inches",
			"weight",
			"250 grams",
			"sim",
			"Micro-SIM",
			"display",
			"6.5 inches",
			"resolution",
			"1920 x 1080 pixels",
			"os",
			"Android Marshmallow v4.3")
	  );


-- Cameras
insert into Products(product_name,brand_id,category_id,attributes)
values('Explorer',
       '3',
       '3',
       JSON_MERGE_PRESERVE(
		   '{"prod_id": "7000"}',
           '{"sensor_type": "CMOS"}',
           '{"processor": "Digic DV III"}',
           '{"scanning_system": "progressive"}',
           '{"mount_type": "PL"}',
           '{"monitor_type": "LCD"}')
      ),
	  ('Runner',
	   '3',
       '3',
       JSON_MERGE_PRESERVE(
			JSON_OBJECT("prod_id", "7010"),
			JSON_OBJECT("sensor_type", "CMOS"),
			JSON_OBJECT("processor", "Digic DV II"),
			JSON_OBJECT("scanning_system", "progressive"),
			JSON_OBJECT("mount_type", "PL"),
			JSON_OBJECT("monitor_type", "LED"))
	  ),
	  ('Traveler',
	   '3',
	   '3',
		JSON_MERGE_PRESERVE(
			JSON_OBJECT("prod_id", "7020"),
			JSON_OBJECT("sensor_type", "CMOS"),
			'{"processor": "Digic DV II"}',
			'{"scanning_system": "progressive"}',
			'{"mount_type": "PL"}',
			'{"monitor_type": "LCD"}')
	  ),
	  ('Walker',
	   '3',
       '3',
       JSON_MERGE_PRESERVE(
			'{"prod_id": "7030"}',
			'{"sensor_type": "CMOS"}',
			'{"processor": "Digic DV I"}',
			'{"scanning_system": "progressive"}',
			'{"mount_type": "PL"}',
			'{"monitor_type": "LED"}')
	  ),
	  ('Jumper',
       '3',
       '3',
       JSON_MERGE_PRESERVE(
			'{"prod_id": "7040"}',
			'{"sensor_type": "CMOS"}',
			'{"processor": "Digic DV I"}',
			'{"scanning_system": "progressive"}',
			'{"mount_type": "PL"}',
			'{"monitor_type": "LCD"}')
	  );
