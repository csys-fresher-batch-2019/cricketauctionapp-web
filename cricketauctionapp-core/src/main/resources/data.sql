--players
--1
INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (player_id_sq.nextval,'Mahendra singh dhoni',to_date('1981-07-07','yyyy-mm-dd'),'Mr.cool','wicketkeeper/Batsman','msd.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,350,297,84,10773,36,31,1,321,123);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,7,'right-hand','right-hand','medium');
insert into country (playerr_id,country_name,player_type,basic_price) 
values(playerr_id_sq.nextVal,'India','indian',150000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(1,101,170000000);
--2

INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (player_id_sq.nextval,'Ravindrasinh Anirudhsinh Jadeja',to_date('1988-12-06','yyyy-mm-dd'),'jaddu','all-rounder','rj.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,159,106,36,2188, 8029,6552,181,58,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,8,'left-hand','left-hand','slow');
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',70000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(2,101,80000000);
--3

INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (player_id_sq.nextval,'Deepak Lokendrasingh Chahar',to_date('1992-08-07','yyyy-mm-dd'),'deepak ','bowler','dc.jpeg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,3,2,1,18,126,129,2,0,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,223,'right-hand','right-hand','medium');
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',30000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(3,101,35000000);
--4

insert into players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
values (player_id_sq.nextval,'Ravichandran Ashwin',to_date('1986-09-17','yyyy-mm-dd'),'win aswin','bowler','ra.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,111,61,19,675,6021,4937,150,30,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,99,'right-hand','right-hand','slow');
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',80000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(4,101,90000000);
--5

insert into players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
values (player_id_sq.nextval,'Virat kohli',to_date('1988-11-05','yyyy-mm-dd'),'king','batsman','vk.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,245,236,39,11792,641,665,4,126,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,18,'right-hand','right-hand','medium'); 
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',120000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(5,103,150000000);

--6

INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (player_id_sq.nextval,'Jasprit Bumrah',to_date('1993-12-06','yyyy-mm-dd'),'BUM BUM','bowler','jb.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,61,14,9,19,3166,2394,104,17,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,93,'right-hand','right-hand','fast');
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',60000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(6,102,70000000);
--7

INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (player_id_sq.nextval,'Kannur Lokesh Rahul',to_date('1992-04-18','yyyy-mm-dd'),'KL','wicketkeeper/Batsman','kl.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,29,28,4,1035,0,0,0,12,1);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,11,'right-hand','nil','nil');
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',40000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(7,103,50000000);
--8

INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (player_id_sq.nextval,'Rohit Gurunath Sharma',to_date('1987-04-30','yyyy-mm-dd'),'Hitman','batsman','rs.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(career_no_sq.nextval,224,0,0,9115,0,0,0,0,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(cric_no_sq.nextval,45,'right-hand','right-hand','slow');
insert into country (playerr_id,country_name,player_type,basic_price) values(playerr_id_sq.nextVal,'India','indian',110000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(8,102,130000000);
--9
INSERT INTO players(player_id,player_fullname,date_of_birth,nick_name,role_name,player_image) 
VALUES (9,'Bhuvaneshwar kumar',to_date('1990-02-05','yyyy-mm-dd'),'bhuvi','bowler','bk.jpg');
insert into career(career_no,matches,innings,not_outs,runs_scored,balls_bowled,runs_conceded,wickets,catches,stumpings) 
values(9,114,52,15,526,5451,4568,132,27,0);
insert into cricketing(cric_no,jersey_no,batting,bowling,bowling_speed)
values(9,15,'right-hand','right-hand','medium');
insert into country (playerr_id,country_name,player_type,basic_price) values(9,'India','indian',10000000);
insert into teamplayer(playr_id,teamm_id,sold_price) values(7,103,50000000);

--teams
insert into team (team_id,team_name,team_owner,team_coach,amount_remaining) values(team_id_sq.nextVal,'CSK','N.Srinivasan','Stephen Fleming',320000000);
insert into team (team_id,team_name,team_owner,team_coach,amount_remaining) values(team_id_sq.nextVal,'MI','Mukesh Ambani','Mahela Jayawardene',270000000);
insert into team (team_id,team_name,team_owner,team_coach,amount_remaining) values(team_id_sq.nextVal,'RCB','Mahendra Kumar Sharma','Simon Katich',440000000);
insert into team (team_id,team_name,team_owner,team_coach,amount_remaining) values(team_id_sq.nextVal,'SRH','Kalanithi Maran','Trevor Bayliss',360000000);
insert into team (team_id,team_name,team_owner,team_coach,amount_remaining) values(team_id_sq.nextVal,'KKR','Shah Rukh Khan','Brendon McCullum',360000000);