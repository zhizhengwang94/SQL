ALTER TABLE tickets
ADD FOREIGN KEY (agent_id) REFERENCES agents (agent_id),
ADD	FOREIGN KEY (currency_id) REFERENCES currency (currency_id),
ADD	FOREIGN KEY (payment_id) REFERENCES payment (payment_id),
ADD	FOREIGN KEY (passenger_id) REFERENCES passengers (passenger_id),
ADD	FOREIGN KEY (route_id) REFERENCES routes (route_id),
ADD	FOREIGN KEY (room_id) REFERENCES rooms (room_id);


ALTER TABLE passengers
ADD FOREIGN KEY (address_id) REFERENCES address (address_id);


ALTER TABLE routes
ADD FOREIGN KEY (unit_measure_id) REFERENCES unit_measure (unit_measure_id),
ADD	FOREIGN KEY (currency_id) REFERENCES currency (currency_id),
ADD	FOREIGN KEY (season_id) REFERENCES seasons (season_id);


ALTER TABLE rooms
ADD FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id),
ADD	FOREIGN KEY (room_cat_id) REFERENCES room_category (room_cat_id),
ADD	FOREIGN KEY (ship_id) REFERENCES ships (ship_id),
ADD	FOREIGN KEY (currency_id) REFERENCES currency (currency_id);


ALTER TABLE ships
ADD FOREIGN KEY (unit_measure_id) REFERENCES unit_measure (unit_measure_id);


ALTER TABLE address
ADD FOREIGN KEY (zipcode_id) REFERENCES zipcode (zipcode_id);


ALTER TABLE agents
ADD FOREIGN KEY (agent_cat_id) REFERENCES agent_cat (agent_cat_id),
ADD FOREIGN KEY (address_id) REFERENCES address (address_id);


ALTER TABLE store
ADD FOREIGN KEY (store_type_id) REFERENCES store_type (store_type_id),
ADD FOREIGN KEY (location_id) REFERENCES location (location_id);


ALTER TABLE location
ADD FOREIGN KEY (ship_id) REFERENCES ships (ship_id);


ALTER TABLE onboard_sales
ADD FOREIGN KEY (store_id) REFERENCES store (store_id),
ADD	FOREIGN KEY (payment_id) REFERENCES payment (payment_id),
ADD	FOREIGN KEY (currency_id) REFERENCES currency (currency_id);


ALTER TABLE sales_item
ADD FOREIGN KEY (sales_id) REFERENCES onboard_sales (sales_id),
ADD	FOREIGN KEY (item_id) REFERENCES item (item_id),
ADD	FOREIGN KEY (currency_id) REFERENCES currency (currency_id);


ALTER TABLE item
ADD FOREIGN KEY (category_id) REFERENCES category (category_id),
ADD FOREIGN KEY (unit_measure_id) REFERENCES unit_measure (unit_measure_id);


ALTER TABLE category
ADD FOREIGN KEY (class_id) REFERENCES class (class_id);


ALTER TABLE class
ADD FOREIGN KEY (family_id) REFERENCES family (family_id);


ALTER TABLE family
ADD FOREIGN KEY (segment_id) REFERENCES segment (segment_id);
