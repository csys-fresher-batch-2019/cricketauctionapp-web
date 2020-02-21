create table players(
player_id number not null,
player_fullname varchar2(50),
date_of_birth date not null,
nick_name varchar2(20),
role_name varchar2(20) not null,
player_image varchar2(20),
active number default 1,
constraint player_id_pk primary key (player_id),
constraint role_name_ck check (role_name in ('batsman','bowler','all-rounder','wicketkeeper/Batsman'))
);

create  sequence player_id_sq start with 1;

create table cricketing(
cric_no number,
jersey_no number not null,
batting varchar2(10) not null,
bowling varchar2(10),
bowling_speed varchar2(10),
constraint cric_no_pk primary key(cric_no),
constraint batting_ck check (batting in ('left-hand','right-hand')),
constraint bowling_ck check (bowling in ('left-hand','right-hand','nil')),
constraint bowling_speed_ck check (bowling_speed in ('slow','medium','fast','nil'))
);

create sequence cric_no_sq start with 1;

create table career(
career_no number,
matches number not null,
innings number,
not_outs number,
runs_scored	number,
balls_bowled number,
runs_conceded number,
wickets number,
catches number,
stumpings number,
constraint career_no_pkk primary key(career_no),
constraint matches_ck check(matches>0),
constraint runs_scored_ck check(runs_scored>=0),
constraint innings_ck check(innings>=0),
constraint not_outs_ck check(not_outs>=0),
constraint  catches_ck check(catches>=0),
constraint runs_conceded_ck check(runs_conceded>=0),
constraint balls_bowled_ck check(balls_bowled>=0),
constraint wickets_ck check(wickets>=0)
);

create sequence career_no_sq start with 1;


create table country(
playerr_id number not null,
country_name varchar2(50),
player_type varchar2(10) not null,
basic_price number not null,
constraint player_type_ck check (player_type in ('overseas','indian')),
constraint playerr_id_pk primary key (playerr_id),
constraint player_id_fk foreign key(playerr_id)references players(player_id)
);

create sequence playerr_id_sq start with 1;


create table team(
team_id number,
team_name varchar2(10) not null,
team_owner varchar2(30) not null,
team_coach varchar2(30) not null,
amount_remaining number,
constraint team_id_pk primary key (team_id)
);

create sequence team_id_sq start with 101 increment by 1;

create table teamplayer(
playr_id number not null,
teamm_id number not null,
sold_price number,
constraint playr_id_pk primary key(playr_id),
constraint playr_id_fk foreign key(playr_id)references players(player_id),
constraint teamm_id_fk foreign key(teamm_id)references team(team_id),
constraint team_player_uniq unique(playr_id,teamm_id)
);

