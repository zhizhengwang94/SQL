CREATE TABLE tickets (
ticket_id BIGINT (20) NOT NULL,
date_time DATETIME NOT NULL,
agent_id BIGINT (20) NOT NULL,
total_services decimal (20, 5) ,
total_tax decimal (20, 5) ,
total_order decimal (20, 5) ,
currency_id BIGINT (20) NOT NULL,
payment_id BIGINT (20) NOT NULL,
passenger_id BIGINT (20) NOT NULL,
route_id BIGINT (20) NOT NULL,
room_id BIGINT (20) NOT NULL,
PRIMARY KEY (ticket_id)
);


CREATE TABLE passengers (
passenger_id bigint(20) not null,
first_name varchar(80) not null,
last_name varchar(80) not null,
DOB date not null,
address_id bigint(20) not null,
gender varchar(20) not null,
phone varchar(80) not null,
email varchar(80) not null,
nationality varchar(80) not null,
id_no varchar(80) not null,
id_type varchar(80) not null,
PRIMARY KEY (passenger_id)
);


CREATE TABLE routes (
route_id bigint(20) not null,
route_name varchar(80) not null,
origin varchar(80) not null,
destination varchar(80) not null,
unit_measure_id bigint(20) not null,
distance bigint(20) not null,
date_time datetime NOT NULL,
route_duration bigint(20) not null,
price bigint(20) not null,
currency_id bigint(20) not null,
season_id bigint(20) not null,
PRIMARY KEY (route_id)
);


CREATE TABLE rooms (
room_id bigint(20) not null,
room_type_id bigint(20) not null,
room_cat_id bigint(20) not null,
ship_id bigint(20) not null,
price decimal(20,5) not null,
currency_id bigint(20) not null,
PRIMARY KEY (room_id)
);


CREATE TABLE room_type (
room_type_id bigint(20) not null,
room_type varchar(50) ,
capacity bigint(20) ,
PRIMARY KEY (room_type_id)
);


CREATE TABLE room_category (
room_cat_id bigint(20) not null,
category_name varchar(50) ,
PRIMARY KEY (room_cat_id)
);


CREATE TABLE ships (
ship_id bigint(20) not null,
ship_name varchar(80) not null,
built_date datetime not null,
capacity bigint(20) not null,
no_of_rooms bigint(20) not null,
license_plate varchar(50) not null,
unit_measure_id bigint(20) not null,
ship_height bigint(20) not null,
ship_width bigint(20) not null,
ship_length bigint(20) not null,
origin_country varchar(50) not null,
ship_status varchar(50) not null,
PRIMARY KEY (ship_id)
);


CREATE TABLE address (
address_id bigint(20) not null,
street_name varchar(80) ,
address_number bigint(20) ,
zipcode_id bigint(20) not null,
PRIMARY KEY (address_id)
);


CREATE TABLE zipcode (
zipcode_id bigint(20) not null,
zipcode varchar(50) not null,
country varchar(50) ,
city varchar(50) ,
state varchar(50) ,
PRIMARY KEY (zipcode_id)
);


CREATE TABLE payment (
payment_id bigint(20) not null,
payment_code varchar(20) ,
payment_type varchar(20) ,
decription varchar(50) ,
PRIMARY KEY (payment_id)
);


CREATE TABLE currency (
currency_id bigint(20) not null,
currency_code varchar(20) ,
description varchar(50) ,
PRIMARY KEY (currency_id)
);


CREATE TABLE agents (
agent_id bigint(20) not null,
agent_name varchar(50) ,
agent_cat_id bigint(20) not null,
phone varchar(50) ,
email varchar(50) ,
address_id bigint(20) not null,
PRIMARY KEY (agent_id)
);


CREATE TABLE agent_cat (
agent_cat_id bigint(20) not null,
category_name varchar(50) ,
PRIMARY KEY (agent_cat_id)
);


CREATE TABLE store (
store_id bigint(20) not null,
store_name varchar(30) ,
store_type_id bigint(20) not null,
location_id bigint(20) not null,
PRIMARY KEY (store_id)
);


CREATE TABLE store_type (
store_type_id bigint(20) not null,
store_type_name varchar(30) ,
PRIMARY KEY (store_type_id)
);


CREATE TABLE location (
location_id bigint(20) not null,
ship_id bigint(20) not null,
sector varchar(20) ,
ship_level varchar(20) ,
PRIMARY KEY (location_id)
);


CREATE TABLE onboard_sales (
sales_id bigint (20) not null,
sales_date_time datetime not null,
store_id bigint (20) not null,
total_product decimal (20, 5) not null,
total_tax decimal (20, 5) not null,
total_sales decimal (20, 5) not null,
payment_id bigint (20) not null,
currency_id bigint (20) not null,
PRIMARY KEY (sales_id)
);


CREATE TABLE sales_item (
sales_item_id bigint(20) not null,
sales_id bigint(20) not null,
item_id bigint(20) not null,
currency_id bigint(20) not null,
descr varchar(50) ,
quantity decimal(10, 5) ,
price decimal(10,5) ,
total_product decimal(20,5) ,
tax_amount decimal(20,5) ,
total_amount decimal(20,5) ,
PRIMARY KEY (sales_item_id)
);


CREATE TABLE item (
item_id bigint(20) not null,
category_id bigint(20) not null,
unit_measure_id bigint(20) not null,
weight decimal(10,5) ,
item_name varchar(30) ,
descr varchar(50) ,
PRIMARY KEY (item_id)
);


CREATE TABLE category (
category_id bigint(20) not null,
class_id bigint(20) not null,
cat_name varchar(30) ,
descr varchar(50) ,
PRIMARY KEY (category_id)
);


CREATE TABLE class (
class_id bigint(20) not null,
family_id bigint(20) not null,
class_name varchar(30) ,
descr varchar(50) ,
PRIMARY KEY (class_id)
);


CREATE TABLE family (
family_id bigint(20) not null,
segment_id bigint(20) not null,
fam_name varchar(30) ,
descr varchar(50) ,
PRIMARY KEY (family_id)
);


CREATE TABLE segment (
segment_id bigint(20) not null,
seg_name varchar(50),
descr varchar(50) ,
PRIMARY KEY (segment_id)
);


CREATE TABLE unit_measure (
unit_measure_id bigint(20) not null,
metric_code varchar(30) ,
metric_name varchar(50) ,
PRIMARY KEY (unit_measure_id)
);


CREATE TABLE seasons (
season_id bigint(20) not null,
season_name varchar(50) ,
PRIMARY KEY (season_id)
);
