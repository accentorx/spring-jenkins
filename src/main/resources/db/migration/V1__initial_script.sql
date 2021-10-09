CREATE SCHEMA IF NOT EXISTS spring;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS spring.persons
(
    id varchar (255) default uuid_generate_v4() PRIMARY KEY,
    first_name VARCHAR(50),
    last_name  VARCHAR(50),
    age        INT,
    country    VARCHAR(50)
);
insert into persons (first_name, last_name, age, country)
values ('Marlena', 'Fleming', 19, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Emmalynn', 'Ipsgrave', 31, 'Palestinian Territory');
insert into persons (first_name, last_name, age, country)
values ('Alia', 'Harwood', 86, 'France');
insert into persons (first_name, last_name, age, country)
values ('Gerry', 'Farington', 2, 'Ecuador');
insert into persons (first_name, last_name, age, country)
values ('Johny', 'Gill', 26, 'Benin');
insert into persons (first_name, last_name, age, country)
values ('Alejandro', 'Rasp', 56, 'Brazil');
insert into persons (first_name, last_name, age, country)
values ('Romonda', 'Pratt', 39, 'Sweden');
insert into persons (first_name, last_name, age, country)
values ('Shermie', 'Secretan', 91, 'China');
insert into persons (first_name, last_name, age, country)
values ('Helene', 'FitzGeorge', 41, 'Peru');
insert into persons (first_name, last_name, age, country)
values ('Tabbitha', 'Alwen', 74, 'Estonia');
insert into persons (first_name, last_name, age, country)
values ('Leontine', 'Barwack', 99, 'Russia');
insert into persons (first_name, last_name, age, country)
values ('Etan', 'Filipputti', 25, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Skipton', 'Herety', 40, 'Morocco');
insert into persons (first_name, last_name, age, country)
values ('Gerta', 'Merring', 77, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Sena', 'Jikylls', 48, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Gilbertina', 'Cowlam', 23, 'Poland');
insert into persons (first_name, last_name, age, country)
values ('Vinni', 'Brokenshaw', 97, 'China');
insert into persons (first_name, last_name, age, country)
values ('Maurine', 'Hebblewhite', 47, 'Indonesia');
insert into persons (first_name, last_name, age, country)
values ('Lydie', 'Handrahan', 72, 'China');
insert into persons (first_name, last_name, age, country)
values ('Eddie', 'Radoux', 40, 'China');
insert into persons (first_name, last_name, age, country)
values ('Phoebe', 'Ruse', 22, 'Costa Rica');
insert into persons (first_name, last_name, age, country)
values ('Pietrek', 'Peeter', 11, 'China');
insert into persons (first_name, last_name, age, country)
values ('Lyell', 'Soanes', 71, 'Japan');
insert into persons (first_name, last_name, age, country)
values ('Jena', 'Tomley', 3, 'Czech Republic');
insert into persons (first_name, last_name, age, country)
values ('Hamish', 'Rawsthorn', 51, 'Malaysia');
insert into persons (first_name, last_name, age, country)
values ('Abdul', 'Cooksey', 27, 'Brazil');
insert into persons (first_name, last_name, age, country)
values ('Tatiana', 'Donner', 29, 'Poland');
insert into persons (first_name, last_name, age, country)
values ('Ingram', 'Chazotte', 72, 'France');
insert into persons (first_name, last_name, age, country)
values ('Easter', 'Lazell', 49, 'Israel');
insert into persons (first_name, last_name, age, country)
values ('Douglass', 'Norwich', 78, 'Iran');
insert into persons (first_name, last_name, age, country)
values ('Catharina', 'Bluett', 27, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Fayina', 'Gentry', 49, 'China');
insert into persons (first_name, last_name, age, country)
values ('Chico', 'Hankard', 40, 'China');
insert into persons (first_name, last_name, age, country)
values ('Onfre', 'Meekin', 97, 'Sweden');
insert into persons (first_name, last_name, age, country)
values ('Ron', 'Rosbottom', 91, 'Jordan');
insert into persons (first_name, last_name, age, country)
values ('Derwin', 'Shutte', 15, 'Poland');
insert into persons (first_name, last_name, age, country)
values ('Bridie', 'Boddis', 84, 'China');
insert into persons (first_name, last_name, age, country)
values ('Harrietta', 'Leipelt', 68, 'Madagascar');
insert into persons (first_name, last_name, age, country)
values ('Maurita', 'Vitte', 45, 'Peru');
insert into persons (first_name, last_name, age, country)
values ('Jude', 'Tendahl', 32, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Stephani', 'Kenrick', 55, 'Georgia');
insert into persons (first_name, last_name, age, country)
values ('Judie', 'Millership', 76, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Garey', 'Gumm', 32, 'Haiti');
insert into persons (first_name, last_name, age, country)
values ('Sully', 'Rimes', 84, 'China');
insert into persons (first_name, last_name, age, country)
values ('Wake', 'Colston', 61, 'Croatia');
insert into persons (first_name, last_name, age, country)
values ('Kaye', 'Elnaugh', 4, 'Colombia');
insert into persons (first_name, last_name, age, country)
values ('Lavinie', 'Sallter', 75, 'Czech Republic');
insert into persons (first_name, last_name, age, country)
values ('Cally', 'Warlow', 25, 'China');
insert into persons (first_name, last_name, age, country)
values ('Ward', 'Frier', 66, 'Brazil');
insert into persons (first_name, last_name, age, country)
values ('Zulema', 'Irnys', 9, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Elaina', 'Kmicicki', 76, 'Indonesia');
insert into persons (first_name, last_name, age, country)
values ('Stanwood', 'Edon', 14, 'Brazil');
insert into persons (first_name, last_name, age, country)
values ('Valencia', 'Domniney', 10, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Filide', 'Marcinkowski', 70, 'Panama');
insert into persons (first_name, last_name, age, country)
values ('Caye', 'Lowthian', 30, 'Germany');
insert into persons (first_name, last_name, age, country)
values ('Karissa', 'Northleigh', 58, 'France');
insert into persons (first_name, last_name, age, country)
values ('Isidora', 'Dilloway', 33, 'Indonesia');
insert into persons (first_name, last_name, age, country)
values ('Maryrose', 'Hebson', 98, 'China');
insert into persons (first_name, last_name, age, country)
values ('Ruperto', 'Gilardoni', 15, 'Paraguay');
insert into persons (first_name, last_name, age, country)
values ('Elaine', 'Faires', 73, 'Honduras');
insert into persons (first_name, last_name, age, country)
values ('Debra', 'Auckland', 69, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Edmund', 'Fennessy', 94, 'Mexico');
insert into persons (first_name, last_name, age, country)
values ('Shani', 'Berrisford', 36, 'Zambia');
insert into persons (first_name, last_name, age, country)
values ('Ernie', 'Lanphier', 62, 'China');
insert into persons (first_name, last_name, age, country)
values ('Codie', 'Skellern', 40, 'Poland');
insert into persons (first_name, last_name, age, country)
values ('Elyse', 'Rising', 52, 'Afghanistan');
insert into persons (first_name, last_name, age, country)
values ('Briant', 'Wasbrough', 17, 'Colombia');
insert into persons (first_name, last_name, age, country)
values ('Maxie', 'Franken', 3, 'Indonesia');
insert into persons (first_name, last_name, age, country)
values ('Marcelle', 'Buckthorp', 92, 'Nigeria');
insert into persons (first_name, last_name, age, country)
values ('Sarene', 'Boyet', 88, 'China');
insert into persons (first_name, last_name, age, country)
values ('Belva', 'Gocher', 12, 'Thailand');
insert into persons (first_name, last_name, age, country)
values ('Ingmar', 'O''Kenny', 89, 'Mongolia');
insert into persons (first_name, last_name, age, country)
values ('Emalee', 'Gritsunov', 57, 'Mexico');
insert into persons (first_name, last_name, age, country)
values ('Chane', 'Dermot', 34, 'Dominican Republic');
insert into persons (first_name, last_name, age, country)
values ('Noelle', 'Campey', 26, 'Poland');
insert into persons (first_name, last_name, age, country)
values ('Osgood', 'Habeshaw', 23, 'China');
insert into persons (first_name, last_name, age, country)
values ('Ricca', 'Taverner', 39, 'Russia');
insert into persons (first_name, last_name, age, country)
values ('Rasla', 'Seale', 26, 'China');
insert into persons (first_name, last_name, age, country)
values ('Deeann', 'Shuter', 91, 'China');
insert into persons (first_name, last_name, age, country)
values ('Sherlock', 'Johl', 21, 'China');
insert into persons (first_name, last_name, age, country)
values ('Katee', 'Teal', 62, 'Netherlands');
insert into persons (first_name, last_name, age, country)
values ('Gregoor', 'Guilford', 80, 'Argentina');
insert into persons (first_name, last_name, age, country)
values ('Patricia', 'Addicote', 46, 'Thailand');
insert into persons (first_name, last_name, age, country)
values ('Georgy', 'Tomsen', 59, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Pauli', 'Maultby', 18, 'China');
insert into persons (first_name, last_name, age, country)
values ('Gilbertine', 'Hince', 72, 'Philippines');
insert into persons (first_name, last_name, age, country)
values ('Celestyn', 'Conville', 16, 'Peru');
insert into persons (first_name, last_name, age, country)
values ('Zonnya', 'Hampshire', 44, 'Iran');
insert into persons (first_name, last_name, age, country)
values ('Maxim', 'Havard', 8, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Ezmeralda', 'Lattimer', 62, 'France');
insert into persons (first_name, last_name, age, country)
values ('Myrtie', 'Walworth', 23, 'Sweden');
insert into persons (first_name, last_name, age, country)
values ('Shelia', 'Lorait', 66, 'Portugal');
insert into persons (first_name, last_name, age, country)
values ('Ardyce', 'Bulfield', 48, 'Colombia');
insert into persons (first_name, last_name, age, country)
values ('Johann', 'Hallowes', 49, 'Honduras');
insert into persons (first_name, last_name, age, country)
values ('Reed', 'Moors', 89, 'Serbia');
insert into persons (first_name, last_name, age, country)
values ('Shirlene', 'Petrushka', 86, 'Ireland');
insert into persons (first_name, last_name, age, country)
values ('Asa', 'Rigge', 85, 'Colombia');
insert into persons (first_name, last_name, age, country)
values ('Fielding', 'Melrose', 81, 'Slovenia');
insert into persons (first_name, last_name, age, country)
values ('Daryn', 'Rudiger', 19, 'China');
insert into persons (first_name, last_name, age, country)
values ('Tildy', 'Talkington', 25, 'Philippines');