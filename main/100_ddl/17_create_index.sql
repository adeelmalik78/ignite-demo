--liquibase formatted sql

--changeset adeel:17
create table table_with_index (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--rollback drop table table_with_index



--changeset adeel:18
alter table table_with_index rename column city to city_name;
--rollback not required
