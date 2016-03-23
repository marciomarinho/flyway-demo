drop table if exists customers;
drop table if exists customers_phones;
drop table if exists items;
drop table if exists orders;
drop table if exists phone_numbers;
drop table if exists products;

create table customers (id bigint not null auto_increment, name varchar(255), primary key (id));
create table customers_phones (customers_id bigint not null, phone_numbers_id bigint not null, primary key (customers_id, phone_numbers_id));
create table items (id bigint not null auto_increment, quantity integer not null, order_id bigint, product_id bigint, primary key (id));
create table orders (id bigint not null auto_increment, created_at datetime, customer_id bigint, primary key (id));
create table phone_numbers (id bigint not null auto_increment, value varchar(255), primary key (id));
create table products (id bigint not null auto_increment, name varchar(255), primary key (id));
alter table customers_phones add constraint FK_7dc47nswxsgrln8wnnist1u8v foreign key (phone_numbers_id) references phone_numbers (id);
alter table customers_phones add constraint FK_k2yi413gy8xyti1ifo30wxqb foreign key (customers_id) references customers (id);
alter table items add constraint FK_av4mlxut8m30ehlvx8n8v8w8n foreign key (order_id) references orders (id);
alter table items add constraint FK_ioqq7ta9p1ewxjrdwe9p3duc1 foreign key (product_id) references products (id);
alter table orders add constraint FK_astys1dv61mdlp0n0wx0574r2 foreign key (customer_id) references customers (id);
