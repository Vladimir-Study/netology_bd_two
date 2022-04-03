create table if not exists Jenre (
	id serial primary key,
	name varchar not null
);

create table if not exists Artist (
	id serial primary key,
	name varchar(40) not null,
	jenre integer references Jenre(id)
);

create table if not exists Album (
	id serial primary key,
	name varchar(40) not null,
	date_create date not null,
	artist integer not null references Artist(id)
);

create table if not exists Track (
	id serial primary key,
	name varchar(40) not null,
	time timestamp not null,
	album integer not null references Album(id)
);
