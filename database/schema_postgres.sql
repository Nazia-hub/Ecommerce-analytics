Create table customer(
Customer_Id int primary key,
First_name Varchar(50),
Last_name Varchar (50),
Email_Id varchar (100),
Phone_no varchar (20),
Gender Varchar (10),
City Varchar (50),
State varchar (50),
Country varchar(50),
Registration_date date
);

create table product (
Product_ID int primary key,
Product_Name varchar (100),
Category varchar (50),
Brand varchar (50),
Price decimal(10,2),
Cost decimal (10,2),
Stock_Quantity int,
Create_at Date
);

create table orders (
Order_id int primary key,
Customer_id int,
Order_date date,
Order_status varchar(20),
Total_amount decimal(10,2),
foreign key (Customer_id) references customer(Customer_Id)
)

create table order_item(
Order_item int primary key,
Order_id int,
Product_id int,
Quantity int,
Price Decimal(10,2),
Foreign key (Order_id)references orders (Order_id),
Foreign key (Product_id)references product (Product_ID)
)

create table payment_table(
Payment_id int primary key,
Order_id int,
Payment_date date,
Payment_method varchar(30),
Payment_status varchar (20),
Foreign key (Order_id)references orders (Order_id)
);

create table shipments(
Shipment_id int primary key,
Order_id int,
Shipment_date date,
Delivery_date date,
Shiping_status varchar (20),
Courier_name varchar (50),
Foreign key (Order_id) references orders (Order_id)
)

create table reviews(
Review_Id int primary key,
Customer_id int,
Product_id int,
rating int,
Review_text text,
Review_date Date,
foreign key (Customer_id) references customer (Customer_Id),
foreign key (Product_id) references product (Product_ID)
)