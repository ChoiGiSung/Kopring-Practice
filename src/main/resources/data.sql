insert into place (title) values ('서울');
insert into place (title) values ('인천');
insert into place (title) values ('경기도');
insert into place (title) values ('제주도');
insert into users (id,user_id,password,point) values (1,'asd','asd',3);
insert into users (id,user_id,password,point) values (2,'qwe','qwe',0);

insert into review (title,content,first_order,user_id,place_id) values ('리뷰입니다','컨텐츠입니다',true,1,1);
insert into photo (url,review_id) values ('https://coco-issue.s3.ap-northeast-2.amazonaws.com/static/8.jpg',1);

insert into event (type,action ,content,review_id,user_id,place_id)
values ('REVIEW','ADD','컨텐츠 입니다',1,1,1);
insert into event_photo (url,event_id) values ('https://coco-issue.s3.ap-northeast-2.amazonaws.com/static/8.jpg',1);
