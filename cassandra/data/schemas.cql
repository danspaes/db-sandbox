CREATE KEYSPACE ga_sample
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

CREATE TYPE airport (
   code varchar,
   name varchar);

CREATE TYPE sched (
   label varchar,
   year int,
   month int);

CREATE TYPE carrier (
   code varchar,
   name varchar);

CREATE TYPE flights(
	cancelled int, 
    on_time int, 
    total int, 
    delayed int, 
    diverted int
);

CREATE TYPE min_delays(
	late_aircraft int, 
    weather int, 
    carrier int, 
    security int, 
    total int,
    national_aviation_system int
);

CREATE TYPE delays(
	late_aircraft int, 
    weather int, 
    security int, 
    national_aviation_system int, 
    carrier int
);

CREATE TYPE statistics (
   	flights frozen<flights>,
   	delays frozen<delays>,
   	min_delay frozen<min_delays>,
   	);

CREATE TABLE airlines (
   	airport frozen<airport> PRIMARY KEY,
   	statistics frozen<statistics>,
   	sched frozen<sched>,
   	carrier frozen<carrier>);
