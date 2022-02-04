CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.job_offer
(
offer_post_id int,
member_id int,
shared_date date,
end_date date,
job_title varchar(150),
job_sector varchar(150)
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.join_event
(
social_event_id int,
person_id int
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.other_user
(
other_user_id int
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.person
(
person_id int,
fname varchar(100),
mname varchar(100),
lname varchar(100),
birth_date date,
sex varchar(50),
person_type varchar(20),
no_of_connections int,
phone_number varchar(14)
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.position
(
position_code int,
position_title varchar(200),
company_id int
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.position_history
(
person_id int,
position_id int,
company_id int,
position_title varchar(200),
start_date date,
end_date date
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.post
(
post_id int,
person_id int,
post_type varchar(50),
post_title varchar(200),
post_date date,
total_comments int,
total_likes int
)

CREATE TABLE LinkedinMoodleSchema .company (
`company_id` int NOT NULL,
`company_name` varchar(100) NOT NULL,
`sector` varchar(100) NOT NULL,
`no_of_employees` int DEFAULT NULL,
)

CREATE TABLE `course` (
`course_id` int NOT NULL,
`course_name` varchar(150) NOT NULL,
`course_credit` int NOT NULL,
)

CREATE TABLE `course_section` (
`course_id` int NOT NULL,
`section_id` int NOT NULL,
`course_year` varchar(11) NOT NULL,
`course_semester` varchar(50) NOT NULL,
)

CREATE TABLE `company_location` (
`address_code` int NOT NULL,
`company_id` int NOT NULL,
`country` varchar(100) NOT NULL,
`city` varchar(100) NOT NULL,
`district` varchar(150) NOT NULL,
`address` varchar(500) NOT NULL,
`post_code` varchar(45) DEFAULT NULL,
)

CREATE TABLE `current_course` (
`student_number` int NOT NULL,
`section_id` int NOT NULL,
`current_course_id` int NOT NULL,
)

CREATE TABLE `direct_message` (
`sender_id` int NOT NULL,
`recipient_id` int NOT NULL,
`message_content` text NOT NULL,
`message_date` date NOT NULL,
`dm_id` int NOT NULL,
)

CREATE TABLE `follow` (
`follower_id` int NOT NULL,
`followed_id` int NOT NULL,
`followed_date` date DEFAULT NULL,
)

CREATE TABLE `instructor` (
`instructor_id` int NOT NULL,
`instructor_title` varchar(100) NOT NULL,
`department` varchar(150) NOT NULL,
`faculty` varchar(150) NOT NULL,
`university` varchar(150) NOT NULL,
)

CREATE TABLE `interest` (
`person_id` int NOT NULL,
`interest_name` varchar(100) NOT NULL,
`interest_field` varchar(100) NOT NULL,
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.post_comment
(
comment_id int,
post_id int,
person_id int,
comment_content varchar(1000),
comment_date date
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.post_like
(
person_id int,
post_id int,
liked_date date
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.project_instructor
(
project_task_id int,
brief varchar(1000),
start_date date,
end_date date,
instructor_id int,
project_name varchar(100)
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.project_student
(
project_id int,
student_number int,
upload_date date,
document_info boolean
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.saved_job
(
saved_job_id int,
person_id int,
shared_date date,
end_date date,
brief varchar(1000),
job_level varchar(20),
job_type varchar(20)
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.skill
(
person_id int,
skill_name varchar(100),
skill_field varchar(100)
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.social_event
(
event_id int,
member_id int,
event_title varchar(100),
start_date date,
end_date date
)

CREATE TABLE `comment_like`
(
`comment_id` int NOT NULL,
`person_id` int NOT NULL,
`like_date` date DEFAULT NULL,
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.student
(
student_id int,
mentor_id int,
department varchar(150),
faculty varchar(150),
university varchar(150)
)

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.job_apply
{
job_offer_id int,
person_id int,
cv_code int,
apply_date date;
}

CREATE TABLE IF NOT EXISTS LinkedinMoodleSchema.system_member
(
member_id int,
member_mail varchar(100),
member_password varchar(100),
member_type varchar(50),
joined_date date
)





/******************************* TRIGGERS ***********************************/
/* If you like any post, below is the trigger that will increase the total likes of that post one by one. */
DELIMITER $$
CREATE TRIGGER total_likes_update
AFTER INSERT
ON LinkedinMoodleSchema.post_like FOR EACH ROW
BEGIN
UPDATE LinkedinMoodleSchema.post
SET total_likes = total_likes + 1 WHERE
post_id = NEW.post_id ;
END$$
DELIMITER ;
/*----------------------------------------------------*/
/*If you have commented on someone's post, below is the trigger that will increase the number of comments one by one.*/
DELIMITER $$
CREATE TRIGGER total_comments_update
AFTER INSERT
ON LinkedinMoodleSchema.post_comment FOR EACH ROW
BEGIN
UPDATE LinkedinMoodleSchema.post
SET total_comments = total_comments + 1 WHERE
post_id = NEW.post_id ;
END$$
DELIMITER ;
/*-----------------------------------------------------*/
/*Below is the trigger that will increase the likes of any post's comments one by one.*/
DELIMITER $$
CREATE TRIGGER total_comment_likes_update
AFTER INSERT
ON LinkedinMoodleSchema.comment_like FOR EACH ROW
BEGIN
UPDATE LinkedinMoodleSchema.post_comment
SET comment_likes = comment_likes + 1 WHERE
comment_id = NEW.comment_id ;
END$$
DELIMITER ;
/*-----------------------------------------------------*/
/*Below is the trigger that increases the total number of employees one by one when an employee enters any company.*/
DELIMITER $$
CREATE TRIGGER no_of_employees_update
AFTER INSERT
ON LinkedinMoodleSchema.position_history FOR EACH ROW
BEGIN
UPDATE LinkedinMoodleSchema.company
SET no_of_employees = no_of_employees + 1 WHERE
company_id = NEW.company_id ;
END$$
DELIMITER ;
/*-----------------------------------------------------*/
/*Below is the trigger that keeps the total number of contacts when any user connects with another user.*/
DELIMITER $$
CREATE TRIGGER no_of_connections_update
AFTER INSERT
ON LinkedinMoodleSchema.follow FOR EACH ROW
BEGIN
UPDATE LinkedinMoodleSchema.person
SET no_of_connections = no_of_connections + 1
WHERE NEW.followed_id = person_id ;
END$$
DELIMITER ;
/*-----------------------------------------------------*/




















