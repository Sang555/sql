select * from blog;
select * from blog where blog_id=001;
select * from category;
select cat_name from category where blog_id=1;
select * from comments;
select author from comments where text="Good!" AND pid=201;
select * from post;
update post set created_date="1997-06-10" where pid in(201,202,203);
update blog set blog_url="xyz.com" where blog_url="abc.com";
delete from blog where blog_id=3;
select * from tag;
update tag set tag_name="Tag5" where tag_id=404;
select * from post where sub_cat_id=101;
select * from comments where pid=201 OR author="keshu";

select post.title, comments.text  from post inner join comments on post.pid=comments.pid;
select post.title, comments.text  from post left join comments on post.pid=comments.pid;
select post.title, comments.text  from post right join comments on post.pid=comments.pid;

select category.cat_id, post.title, comments.text from category left join post on category.sub_cat_id=post.sub_cat_id inner join comments on post.pid=comments.pid;

select post.pid, comments.text  from post inner join comments on post.pid=comments.pid order by post.pid desc;
select count(pid),pid from comments group by pid;
select count(pid) as c,pid from comments group by pid having c>1;

