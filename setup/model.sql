DROP DATABASE dtm;

CREATE DATABASE dtm; 

CREATE extension pgcrypto;  


CREATE TYPE GENDER AS ENUM('male', 'female');
-- drop table if exists regions;
create table regions(
    region_id serial PRIMARY KEY,
    region_name varchar(30) not null
);


-- DROP TABLE users;
CREATE TABLE users (
    user_id serial PRIMARY KEY,
    username VARCHAR(255) NOT NUll,
    fullname VARCHAR(255) NOT NUll,
    password VARCHAR(255) NOT NULL,
    contact text NOT NULL,
    region int references regions(region_id),
    gender GENDER
);

-- DROP TABLE subjects;

create table subjects(
    subject_id serial primary key,
    subject_name varchar(60) not null
);


-- drop table if exists universities;
create table universities( 
    university_id serial PRIMARY key,
    university_name VARCHAR(255)  NOT NULL,
    region_id INT references regions (region_id) not null
);

-- drop table if exists faculties;
create table faculties(
    faculty_id serial PRIMARY key,
    faculty_name text not null,
    first_subject  INT references subjects(subject_id) not null,
    second_subject  INT references subjects(subject_id) not null,
    grant_count int not null,
    contract_count int not null,
    grant_score decimal(4, 1) not null,
    contract_score decimal(4, 1) not null,
    university_id  INT references universities(university_id)  not null
);

-- drop table questions;

create table questions(
    question_id serial PRIMARY key,
    question text not null,
    question_variants jsonb not null,
    subject_id INT references subjects(subject_id) not null
);

-- drop table if exists results;

create table results(
    result_id  serial PRIMARY key,
    first_subject int not null,
    second_subject int not null,
    first_subject_id int references subjects(subject_id) not null,
    second_subject_id int references subjects(subject_id) not null,
    first_tests_result int not null,
    second_tests_result int not null,
    score_ball decimal(4,1) not null,
    date timestamp default current_timestamp,
    time int not null,
    user_id int references users(user_id)  not null,
    faculty_id int references faculties(faculty_id)
);










