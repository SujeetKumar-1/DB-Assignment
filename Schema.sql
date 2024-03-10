create database product_schema;
use product_schema;

/*SQL Query for creating product_category Table*/
create table product_category(
	id int primary key,
    	name varchar(55),
    	description varchar(500),
    	created_at datetime,
    	modified_at datetime,
	delete_at datetime
);

/*SQL Query for creating product_inventoory Table*/
create table product_inventory(
	id int primary key,
    	quantity int,
    	created_at datetime,
	modified_at datetime,
	delete_at datetime
);

/*SQL Query for creating discount Table*/
create table discount(
	id int primary key,
    	name varchar(50),
    	description varchar(500),
    	discount_per decimal(10, 2),
    	active BIT,
    	created_at datetime,
	modified_at datetime,
	delete_at datetime
);

/*SQL Query for creating product Table*/
create table product(
	id int primary key,
	name varchar(80),
	description varchar(500),
	SKU varchar(50),
	category_id int,
	foreign key(category_id) references product_category(id),
	inventory_id int,
	foreign key(inventory_id)  references product_inventory(id),
	price decimal(10,2),
	discount_id int,
	foreign key(discount_id)  references discount(id),
	created_at datetime,
	modified_at datetime,
	delete_at datetime
);

/* Now SQL Quearies for insert value in each table */

/* inserting values in product_category table */
insert into product_category(id, name, description, created_at, modified_at, delete_at)
values(1, 'Smartpones', 'Category for all types of Smartphones', '2024-03-10 10:00:00', '2024-03-10 10:00:00', NULL);

select * from product_category;


/* inserting values in product_inventory table */
insert into product_inventory(id, quantity, created_at, modified_at, delete_at)
values(1, 10, '2024-03-10 10:00:00', '2024-03-10 10:00:00', NULL);

select * from product_inventory;


/* inserting values in discount table */
insert into discount(id, name, description, discount_per, active,  created_at, modified_at, delete_at)
values(1, "oppo", "all models of oppo smartphone", 200, 1, '2024-03-10 10:00:00', '2024-03-10 10:00:00', NULL);

select * from discount;


/* inserting values in product table */
insert into product(id, name, description, SKU, category_id, inventory_id, price, discount_id, created_at, modified_at, delete_at)
values(1, "oppo", "Oppo F21 Model Phone", "op1001", 1, 1, 999.99, 1, '2024-03-10 10:00:00', '2024-03-10 10:00:00', NULL);

select * from product;
