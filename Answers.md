# 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

Ans: As per the given diagram, the relationship between Product and Product_Category is one-to-many relationship. Means- **one product category can have multiple products associated with it.** and **each product is associated with exactly one product category.**
This relationship is usually implemented in a relational database using foreign keys. In the above diagram "Products" table, contains "category_id" which is a foreign key column refering to the primary key of "Products_Category" table "id" column. This foreign key establishes the relationship between products and their respective categories.

# 2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
Ans: To ensure that a valid category is specified for each product in the "Product" table, I can enforce a foreign key constraint between the "Product" table and the "Product_Category" table. This constraint ensures referential integrity by enforcing that every value in the foreign key column-"category_id" (which refers to the primary key of the product_category table) must exist in the referenced table.
Here's how I can implement this in a relational database management system (RDBMS) like MySQL
- Create Table product( 
  id int primary key,
  name varchar(80),
  desc varchar(500),
  sku varchar(100),
  category_id int,
  foreign key (category_id) references product_category(id),
  inventory_id int,
  foreign key (inventory_id) references product_inventory(id),
  price decimal(10, 2),
  discount_id int,
  foreign key (discount_id) references discount(id),
  created_at datetime,
  modified_at datetime,
  deleted_at datetime
)
similarly i can create table for product category, product inventory and discount.
