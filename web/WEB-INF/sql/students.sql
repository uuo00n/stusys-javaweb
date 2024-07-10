create table students
(
    id     int auto_increment
        primary key,
    name   varchar(20) null,
    sex    varchar(5)  null,
    age    int         null,
    weight float       null,
    height float       null
);

create table users
(
    id       int auto_increment
        primary key,
    username varchar(50)  not null,
    password varchar(255) not null,
    constraint username
        unique (username)
);

