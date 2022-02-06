use profile_tb;

/**
* CREATE TABLE 
*/

create table profile(
	PID int not null auto_increment,
	USERNAME VARCHAR(200),
    NAME VARCHAR(200),
    PRIMARY KEY(PID)
);

create table noticeBoard(
	NID	INT NOT NULL auto_increment PRIMARY KEY,
	CATEGORY varchar(100),
    TITLE VARCHAR(500),
    CONTENTS VARCHAR(1000)   
);

create table myService(
	SID	INT NOT NULL auto_increment PRIMARY KEY,
	URLROOT varchar(100),
    IMGTITLE VARCHAR(100),
    TITLE VARCHAR(500),
    CONTENTS VARCHAR(1000)   
);

create table blogPost(
  postId VARCHAR(100),			-- 포스팅 아이디
  postMainTitle varchar(500),	-- 포스팅 메인 제목
  postSnTitle varchar(100),		-- 포스팅 내용 제목
  postSn varchar(1000),			-- 포스팅 내용
  postUrl varchar(300),			-- 포스팅 URL
  postLvl int,					-- 포스팅 레벨
  postUpperLvl int,				-- 포스팅 상위 레벨 
  regDt TIMESTAMP      NOT NULL	DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  regId varchar(50),
  uptDt TIMESTAMP      NOT NULL	DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  uptId varchar(50)
  );
  
create table blog(
  blogId varchar(100) NOT NULL PRIMARY KEY,
  blogMainTitle varchar(500),
  blogSn varchar(1000),
  blogSnTitle varchar(100),
  blogTag varchar(100),
  imgTitle VARCHAR(100),
  postId varchar(100),
  regDt TIMESTAMP      NOT NULL	DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  regId varchar(50),
  uptDt TIMESTAMP      NOT NULL	DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  uptId varchar(50)
);
-- P00000301

/**
* INSERT TEST DATE
*/
-- [profile]
insert into profile(username, name) value ("tistory-moomin", "romin");

-- [myService]
INSERT INTO myService(urlroot, imgtitle, title, contents) value("https://blog.naver.com/romin_pic", "image_1.jpg", "네이버 맛집 블로거", "현재 인스타에서 진행하는 맛집 포스팅을 좀 더 자세하게 다루고 있습니다.");
INSERT INTO myService(urlroot, imgtitle, title, contents) value("https://blog.naver.com/rooney9325", "image_2.jpg", "네이버 일상 블로거", "취준부터 현재까지 저의 삶을 솔직하게 풀었습니다.");
INSERT INTO myService(urlroot, imgtitle, title, contents) value("https://sg-moomin.tistory.com/", "image_3.jpg", "Tistory 기술 블로거", "개발자로서 공부하면서 배우는 내용들을 잘 나열해보았습니다.");
INSERT INTO myService(urlroot, imgtitle, title, contents) value("https://www.instagram.com/romin_pic/", "image_4.jpg", "Instargram 맛집 리뷰", "숨겨진 맛집들을 소개해보았습니다.");
INSERT INTO myService(urlroot, imgtitle, title, contents) value("http://pf.kakao.com/_xohmzb", "image_5.jpg", "카카오 뷰 사회초년생 로민의 맛추천", "카카오 뷰를 통해서 좀 더 쉽게 맛집들을 소개해보았습니다.");

-- [noticeBoard]
insert into noticeBoard(category, title, contents) value ("home", "mainTitle", "Motto : The secret of getting ahead is getting");
insert into noticeBoard(category, title, contents) value("home", "mainTitle", "Instargram : https://www.instagram.com/romin_pic/");
insert into noticeBoard(category, title, contents) value("home", "mainTitle", "GitHub : https://github.com/sg-moomin");
insert into noticeBoard(category, title, contents) value("home", "mainTitle", "Tistory : https://sg-moomin.tistory.com/");


-- [blogPost]
INSERT INTO blogPost (postId, postMainTitle, postSnTitle, postSn, postUrl, postLvl, postUpperLvl, regId, uptId)
 VALUES ("P00000301", "2022 JPA 및 Tistory 테스트", '1. 2022연도 나의 계획', '1. 건강하기 \n 2. 내가 하는 분야에서 전문성을 가지기 \n 3. 빅데이터 자격증 따기 \n 4. SNS 및 Youtube 도전하기 \n 5. 기타 도전', 'https://sg-moomin.tistory.com/',  1, 1, 'sg-moomin', 'sg-moomin');

-- [blog]
INSERT INTO blog(blogId, blogMainTitle, blogSn, blogSnTitle,  blogTag, imgTitle, postId, regId, uptId) 
value('B00000001', '2017년도 나의 활동들을 돌아보다', '2017년도의 저의 삶을 보여드립니다. 군복학 후 저의 삶을 살아가고 있습니다.', 'sg-moomin 2017', 'College studen', 'image_6.jpg', '',  'sg-moomin',  'sg-moomin');
INSERT INTO blog(blogId, blogMainTitle, blogSn, blogSnTitle,  blogTag, imgTitle, postId, regId, uptId)
value('B00000002', '2018년도 나의 활동들을 돌아보다', '2018년도의 저의 삶을 보여드립니다. 동아리 부회장 및 대외활동을 하던 저의 삶을 살아가고 있습니다.', 'sg-moomin 2018', 'vice-chairman', 'image_5.jpg', '',  'sg-moomin', 'sg-moomin');
INSERT INTO blog(blogId, blogMainTitle, blogSn, blogSnTitle,  blogTag, imgTitle, postId, regId, uptId)
value('B00000003', '2019년도 나의 활동들을 돌아보다', '2019년도의 저의 삶을 보여드립니다. 졸업하기 전의 저의 삶을 살아가고 있습니다.', 'sg-moomin 2019', 'Chairman', 'image_4.jpg', '', 'sg-moomin',  'sg-moomin');
INSERT INTO blog(blogId, blogMainTitle, blogSn, blogSnTitle,  blogTag, imgTitle, postId, regId, uptId)
value('B00000004', '2020년도 나의 활동들을 돌아보다', '2020년도의 저의 삶을 보여드립니다. 공시생과 공공데이터 인턴이였던 삶을 살아가고 있습니다.', 'sg-moomin 2020', 'public student', 'image_3.jpg', '',  'sg-moomin',  'sg-moomin');
INSERT INTO blog(blogId, blogMainTitle, blogSn, blogSnTitle,  blogTag, imgTitle, postId, regId, uptId)
value('B00000005', '2021년도 나의 활동들을 돌아보다', '2021년도의 저의 삶을 보여드립니다. 직장인 및 신입개발자로 살아가는 삶을 살아가고 있습니다.', 'sg-moomin 2021', 'programmer', 'image_2.jpg', 'P00000301', 'sg-moomin',  'sg-moomin');


