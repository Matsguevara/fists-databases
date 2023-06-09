/**************************
Entregable1
Name:
	Mateo Guevara
	Adrian Paillacho
	Nelson Montaño
**************************/

CREATE TYPE "level_type" AS ENUM (
  'beginner',
  'medium',
  'advanced'
);

CREATE TABLE "users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "user_course" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_user" int NOT NULL,
  "id_course" int NOT NULL
);

CREATE TABLE "courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" level_type DEFAULT 'beginner',
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_video" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_course" int NOT NULL,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "id_categoria" int NOT NULL
);

CREATE TABLE "categories" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "user_course" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "user_course" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("id_categoria") REFERENCES "categories" ("id");



/*Table Users*/
insert
	into
	users (name,
	email,
	"password",
	age)
values ('Mateo Guevara',
'mguevara@academlo.com',
'1234567',
'22')
insert
	into
	users (name,
	email,
	"password",
	age)
values ('Adrian',
'adrian@academlo.com',
'98765432',
'25'),
('Nelson Montaño',
'nmopntano@academlo.com',
'192837465',
'40');

/*Table Courses*/
insert
	into
	courses (title,
	description,
	"level",
	teacher)
values ('Beginner HTML, JavaScript and CSS',
'First way of Programming WEB',
'beginner',
'Jesus Fernandez'),
('Learn React in 20 days',
'Languajes of Programming',
'medium',
'Junior Pacheco'),
('NodeJS BackEnd',
'Database Management and API Creation',
'advanced',
'Sahid Kick');

/*Table Categories*/
insert
	into
	categories (name)
values ('Briefcase'),
('E-comerce'),
('API Services'),
('Animation with CSS'),
('React'),
('JSCript'),
('NodeJs');

/*Table User_course*/
insert
	into
	user_course (id_user,
	id_course)
values (1,
1),
(2,
2),
(3,
3);

/*Table Course_video*/
insert
	into
	course_video (id_course,
	title,
	url,
	id_categorie)
values (1,
'Make your firts E-commerce',
'https://academlo.notion.site/Grabaciones-aabf00470e494412b1c202f6bef505e5?p=a37de3ff3f7949f79fc4b21361836f72&pm=c',
2),
(2,
'Creation of Projects based on Apis',
'https://academlo.notion.site/Grabaciones-aabf00470e494412b1c202f6bef505e5?p=29c517d2fc51452eb5143a662fb1cc12&pm=c',
4),
(3,
'NodeJS and Database Management',
'https://academlo.notion.site/Grabaciones-aabf00470e494412b1c202f6bef505e5?p=51803353856d4014b519506227366531&pm=c',
6);









