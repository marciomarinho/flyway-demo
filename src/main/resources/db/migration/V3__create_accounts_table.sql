create table accounts (id bigint not null auto_increment, number varchar(255), description varchar(255), primary key (id));

create index idx_account_number on accounts (number);