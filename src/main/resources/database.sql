-- Table: users
CREATE TABLE users (
    id int not null auto_increment primary key ,
    username varchar(255) not null,
    password varchar(255) not null
)
engine = InnoDB;


-- Table: roles
Create Table roles(
    id int not null auto_increment primary key,
    name varchar(100) not null

) engine = InnoDB;


-- Table for mapping user and roles: user_roles
Create table user_roles(
    user_id int not null,
    role_id int not null,

    foreign key (user_id) references users(id) ,
    foreign key (role_id) references roles(id),

    unique (user_id, role_id)
)
    engine = InnoDB;

-- insert data
insert into users values(1, 'proselyte', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG');

insert into roles values(1, 'ROLE_USER');
insert into roles values(2, 'ROLE_ADMIN');

insert into user_roles values (1,2);