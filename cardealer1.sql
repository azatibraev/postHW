
create table car (
	id Bigserial NOT NULL PRIMARY KEY,
	serial_number VARCHAR(20) NOT NULL,
	make VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	color VARCHAR(20)NOT NULL
);

insert into car (serial_number, make, model, color) 
values ('6569500457', 'Ford', 'Focus', 'Orange');
('2352281091', 'Chrysler', 'Concorde', 'Yellow');
('1953476627', 'Chevrolet', 'S10', 'Teal');
('7017502086', 'Dodge', 'D250', 'Turquoise');
('7094779925', 'BMW', 'X5', 'Mauv');
('4383397247', 'Ford', 'Bronco', 'Red');
('4258039446', 'Mazda', 'B2600', 'Pink');
('6503491107', 'Volkswagen', 'Cabriolet', 'Crimson');
('3260307346', 'Mercedes-Benz', 'C-Class', 'Violet');
('9926340016', 'Suzuki', 'Equator', 'Crimson');
('0447173006', 'Chevrolet', 'Astro', 'Pink');
('8018261202', 'Dodge', 'Dakota Club', 'Crimson');
('4111063594', 'Mercedes-Benz', 'SL-Class', 'Mauv');
('7288415252', 'Lincoln', 'Navigator L', 'Green');
('3315063397', 'GMC', '2500', 'Puce');


create table customer (
	id Bigserial NOT NULL PRIMARY KEY,
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	phone_number VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL
);
insert into customer (last_name, first_name, phone_number, address, city, country) 
values ('Kubanychbekov', 'Ulan', '+56 961 632 0506', '89 Esker Road', 'Balykcy', 'Kyrgyzstan');
('Almaz', 'Zhanybekov', '+86 660 144 1257', '3 Merchant Point', 'Kabul','Afghanistan');
('Seiitbek', 'Narynbaev', '+62 500 853 3874', '6868 Cardinal Terrace', 'Vienna','Austria');
('Dinara', 'Rakhatbek kyzy', '+62 380 666 4855', '796 Fairview Pass', 'Brussels', 'Belgium');
('Kunzaada', 'Bekzhanova', '+86 691 611 9485', '69896 Knutson Terrace', 'Sofia', 'Bulgaria');
('Kuba', 'Abdurasilov', '+998 721 831 1195', '1686 Stephen Terrace', 'Bogota','Colombia');
('Turatbek', 'Temirbekov', '+63 294 263 3731', '47 Columbus Crossing', 'Havana',  'Cuba');
('Nurgazy', 'Nurmamatov', '+62 740 187 3233', '009 Brentwood Place', 'Copenagen', 'Denmark');
('Maksat', 'Kyrgyzbaev', '+234 193 944 9871', '023 Southridge Parkway', 'Tallinn', 'Estonia');
('Dilbara', 'Asanalieva', '+62 193 422 6114', '57 Steensland Way', 'Paris','France');
('Chynara', 'Mamatalieva', '+351 660 458 7493', '81 Hagan Street', 'Helsinki','Finland');
('Bekzhan', 'Rakhmankulov', '+48 893 187 3548', '3 Lakeland Circle', 'Berlin','Germany');
('Azamat', 'Kasymaliev', '+385 122 770 0580', '3 Main Parkway', 'Jakarta', 'Indonesia');
('Altynbek', 'Jumadil', '+420 144 563 6282', '14111 Truax Point', 'Rome', 'Italy');
('Aichurok', 'Turgunbaeva', '+46 490 864 3343', '26 Lake View Place', 'Tokyo', 'Japan');


create table service_tickets (
    id Bigserial not null PRIMARY KEY,
	service_tickets_number VARCHAR(50) not null,
	data_received varchar(30) not null,
	date_returned_to_customer varchar(30) not null,
    car_id INT REFERENCES car(id),
	customer_id  INT REFERENCES customer(id)
);
insert into service_tickets (service_tickets_number, data_received, date_returned_to_customer) 
values ('2873303964', '8/6/2021', '11/27/2021');
('3328965017', '6/27/2021', '4/28/2021');
('7901915536', '7/23/2021', '12/12/2021');
('5954819874', '7/25/2021', '5/20/2021');
('5708855495', '9/8/2021', '5/6/2021');
('3318480665', '8/30/2021', '6/5/2021');
('6812089338', '12/31/2021', '9/14/2021');
('9487483276', '8/31/2021', '12/1/2021');
('7645248823', '8/12/2021', '5/25/2021');
('1870045459', '6/28/2021', '7/3/2021');
('6743766976', '2/6/2022', '2/1/2022');
('9613607382', '6/24/2021', '4/25/2021');
('9788837263', '1/31/2022', '8/26/2021');
('5095655683', '3/14/2022', '5/2/2021');
('0585006679', '8/5/2021', '11/28/2021');


create table sales_person (
	id Bigserial NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);
insert into sales_person (first_name, last_name) 
values ('Abu', 'Melisov');
('Abubakir', 'Uzbekov');
('Adilet', 'Abytaev');
('Adinai', 'Niyazbekova');
('Baiel', 'Akhmatov');
('Aidana', 'Mamatberdieva');
('Aisuluu', 'Kubanychbekova');
('Aizirek', 'Ormonova');
('Akylbek', 'Nurbekov');
('Arlen', 'Kubanychbekov');
('Damira', 'Kamcybekova');
('Diana', 'Nurmamatova');
('Klara', 'Azimova');
('Munarzhan', 'Aitbekova');
('Nazmira', 'Abytaeva');


create table sales_invoices (
	sales_invoices_id Bigserial NOT NULL PRIMARY KEY,
	invoices_number VARCHAR(50) NOT NULL,
	date varchar(30) NOT NULL,
	car_id INT  REFERENCES car(id),
	customer_id INT REFERENCES customer(id),
	sales_person_id INT  REFERENCES sales_person(id)
);
insert into sales_invoices (invoices_number, date) 
values ('5289830510', '8/9/2021');
('2518317392', '5/31/2021');
('3694212639', '1/30/2022');
('7127444676', '12/9/2021');
('5342963206', '8/8/2021');
('0362505160', '9/26/2021');
('9734787373', '10/8/2021');
('7087938681', '2/27/2022');
('1111913056', '7/9/2021');
('8507526772', '7/4/2021');
('7478204546', '11/3/2021');
('9553730965', '9/4/2021');
('6708635283', '9/26/2021');
('1724554948', '2/22/2022');
('6042551620', '3/20/2022');


create table mechanics (
	id Bigserial NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
);
insert into mechanics (first_name, last_name) 
values ('Nurlan', 'Akmatov');
('Nurperi', 'Darmankulova');
('Nursultan', 'Askarov');
('Nurzada', 'Baktybek kyzy');
('Nurzhan', 'Abdyraeva');
('Sagynbek', 'Alykulov');
('Askar', 'Ulanov');
('Zhanara', 'Buzurman kyzy');
('Zhanarbek', 'Abdurasulov');
('Zhorobek', 'Arzykulov');
('Aidana', 'Bekbolotova');
('Aigerim', 'Ashirbaeva');
('Barchynai', 'Baimatova');
('Zhanyl', 'Talantbekova');
('Kubat', 'Ashymzhanov');


create table services (
	id Bigserial NOT NULL PRIMARY KEY,
	services_name VARCHAR(50) NOT NULL,
	hourly_rate INT NOT NULL
    
);
insert into services (services_name, hourly_rate) 
values ('Tazz', 76);
('Devshare', 10);
('Eayo', 43);
('Tagcat', 81);
('Yodoo', 68);
('Tagchat', 91);
('Flashspan', 43);
('Voonyx', 38);
('Skidoo', 82);
('Brightdog', 99);
('Skinix', 95);
('Feedbug', 76);
('Viva', 35);
('Vipe', 84);
('Realcube', 59);


create table service_mechanic (
	id Bigserial NOT NULL PRIMARY KEY,
	hours VARCHAR(50) NOT NULL,
	rate INT NOT NULL,
	mechanics_id INT REFERENCES mechanics(id),
	services_id INT REFERENCES services(id),
    service_tickets_id INT REFERENCES service_tickets(id)
);
insert into service_mechanic (hours, rate) 
values ('9:53 AM', 26);
('6:42 PM', 37);
('3:08 PM', 70);
('8:37 AM', 20);
('11:50 PM', 84);
('4:34 AM', 28);
('12:30 PM', 16);
('9:22 AM', 40);
('8:21 AM',  51);
('2:45 AM',  59);
('4:28 PM',  39);
('3:16 AM',  45);
('3:59 PM',  74);
('8:01 PM',  6);
('1:03 PM',  68);



create table parts (
	id Bigserial NOT NULL PRIMARY KEY,
	part_number VARCHAR(50) NOT NULL,
	description VARCHAR(200) NOT NULL,
	purchase_price VARCHAR(50) NOT NULL,
	retail_price VARCHAR(50) NOT NULL
);
insert into parts (part_number, description, purchase_price, retail_price) 
values ('13-997-7578', 'Gear Lever', '$11368.54', '£45222.00');
('09-688-2583', 'Seat belt.', '$17333.01', '£12705.63');
('71-356-1735', 'Steering wheel.', '$24675.72', '£23884.01');
('84-271-0668', 'Windscreen', '$18884.72', '£24110.92');
('36-913-7550', 'Windshield wipers.', '$22187.87', '£16793.44');
('32-516-0473', 'Speedometer.', '$21816.41', '£31268.67');
('86-288-9084', 'Headlights.', '$12549.16', '£23819.06');
('62-773-9074', 'Taillights/Turn signal.', '$10861.82', '£7565.54');
('35-812-2806', 'Hood/Engine.', '$10514.74', '£9093.18');
('31-715-7038', 'Trunk', '$7490.26', '£18793.41');
('78-243-7215', 'Engine', '$4850.47', '£54357.96');
('04-827-9242', 'Battery', '$22272.57', '£9140.08');
('52-824-0960', 'Alternator', '$10885.56', '£35470.51');
('97-941-3455', 'Front Axle', '$22438.71', '£43980.60');
('71-277-4254', 'Catalytic Converter', '$23031.80', '£42305.77');


create table parts_used (
	parts_used_id Bigserial NOT NULL PRIMARY KEY,
	number_used VARCHAR(50) not null,
	price VARCHAR(50) not null,
	parts_id INT  REFERENCES parts(id),
	service_tickets_id INT  REFERENCES service_tickets(id)
);
insert into parts_used (number_used, price) 
values ('4261416492', '$38049.92');
('6029602381', '$63317.51');
('3774058547', '$86521.39');
('6455382412', '$33407.97');
('5221346125', '$78021.43');
('7867397167', '$90956.31');
('3400704148', '$97022.47');
('3104922209', '$35153.68');
('7649585492', '$83616.73');
('0053786262', '$78746.73');
('2809205701', '$28496.79');
('0134852907', '$30891.11');
('0780731271', '$60778.11');
('2824983922', '$74614.56');
('9079445037', '$75502.30');