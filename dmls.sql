alter table category add column sub_cat_id int NOT NULL;

alter table category add  constraint cpk foreign key (sub_cat_id) references category(cat_id) ;

alter table post add column sub_cat_id int NOT NULL;

alter table post add  constraint psk foreign key (sub_cat_id) references category(sub_cat_id) ;


alter table blog change blog_name blog_name varchar(20);

insert into blog(blog_id, blog_name, blog_url) values (001, " My first blog" , "abc.com");
insert into blog(blog_id, blog_name, blog_url) values (002, " My second blog" , "def.com");
insert into blog(blog_id, blog_name, blog_url) values (003, " My first blog" , "ghi.com");

insert into category(cat_id, cat_name,blog_id,sub_cat_id) values (101, " Food ", 001, 101);
insert into category(cat_id, cat_name,blog_id,sub_cat_id) values (102, " Sea Food", 001 , 101);
insert into category(cat_id, cat_name,blog_id,sub_cat_id) values (103, " travel ", 002 , 103);
insert into category(cat_id, cat_name,blog_id,sub_cat_id) values (104, " pilgrim", 002 , 103);

insert into post(pid,title,author,created_date,sub_cat_id) values (201, " Best ", "sang", 21/7/16, 101);
insert into post(pid,title,author,created_date,sub_cat_id) values (202, " Next ", "keshu", 21/7/16, 101);
insert into post(pid,title,author,created_date,sub_cat_id) values (203, " Suggested ", "keshu", 21/7/16, 101);
insert into post(pid,title,author,created_date,sub_cat_id) values (204, " Suggested ", "keshu", 21/7/16, 101);
insert into post(pid,title,author,created_date,sub_cat_id) values (205, " Suggested ", "keshu", 21/7/16, 103);

insert into comments(cid,author,text,pid) values (301,"sang", " Good! ", 201);
insert into comments(cid,author,text,pid) values (302, "keshu", " Wow! ", 201 );
insert into comments(cid,author,text,pid) values (303, "tash", " Bad! ", 202 );
insert into comments(cid,author,text,pid) values (304, " shiv", "nice!" , 203);

insert into tag(tag_id, tag_name) values (401, "Tag1");
insert into tag(tag_id, tag_name) values (402, "Tag2");
insert into tag(tag_id, tag_name) values (403, "Tag3");
insert into tag(tag_id, tag_name) values (404, "Tag4");

insert into prod_tag(tag_id, pid) values (401, 201);
insert into prod_tag(tag_id, pid) values (402, 201);
insert into prod_tag(tag_id, pid) values (403, 202);
insert into prod_tag(tag_id, pid) values (401, 202);
insert into prod_tag(tag_id, pid) values (403, 201);
insert into prod_tag(tag_id, pid) values (401, 203);
insert into prod_tag(tag_id, pid) values (402, 203);
insert into prod_tag(tag_id, pid) values (404, 203);
