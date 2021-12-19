drop TABLE IF EXISTS photo;
drop TABLE IF EXISTS review;
drop TABLE IF EXISTS users;
drop TABLE IF EXISTS place;
drop TABLE IF EXISTS event_photo;
drop TABLE IF EXISTS event;

create table users
(
    id       bigint primary key auto_increment,
    user_id  varchar(45)  not null unique,
    password varchar(45) not null,
    point    int not null
);

create table place
(
    id    bigint primary key auto_increment,
    title varchar(45) not null
);


create table review
(
    id          bigint primary key auto_increment,
    title       varchar(45) not null,
    content     varchar(200) not null,
    first_order TINYINT(0) not null,
    user_id     bigint,
    place_id    bigint,
    foreign key (user_id) references users (id),
    foreign key (place_id) references place (id)
);

create table photo
(
    id        bigint primary key auto_increment,
    url     varchar(200) not null,
    review_id    bigint,
    foreign key (review_id) references review (id)
);

create table event
(
    id               bigint primary key auto_increment,
    type             varchar(45) not null,
    action           varchar(45) not null,
    content varchar (200),
    review_id        bigint,
    user_id          bigint,
    place_id         bigint
);

create table event_photo
(
    id        bigint primary key auto_increment,
    url     varchar(200) not null,
    event_id bigint,
    foreign key (event_id) references event (id)
);
