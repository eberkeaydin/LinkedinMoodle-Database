# LinkedinMoodle-Database
## An imaginery career,social and education platform LinkedinMoodle's database. 

### Introduction
The aim of this project is to design and implement a relational database for
LinkedinMoodle platform. The "LinkedinMoodle" database project is considered as a
combination of the applications of LinkedIn, the career platform, and Moodle, the
education platform. Users can share their professional career profiles and get courses,
mentors etc. The LİnkedinMoodle database design makes it possible for users to get
courses, mentor services and share them on their profiles like their other social and
professional career activities.

### LinkedInMoodle
LinkedInMoodle can be imagined as an educational career platform that allows users to
both features of LinkedIn and Moodle. Therefore, users can login to system, get courses
from instructors, upload their projects, get mentee services from mentors, sections also
they get socialize, upload, and create their CVs’, send messages and comment to posts,
apply or offer jobs, attempt events and so on.

![late](https://user-images.githubusercontent.com/71606941/152503219-60ab8736-3d34-462e-a334-f742efd31486.jpg)



### COMPANY
The information of the companies registered in the system is kept in the
COMPANY table. The attributes of this entity are: "Company_id" is company
specific company number, "Company_name" is company name, "Sector" is for
company's sector.

### LOCATION
The location and location information of the companies registered in the
system is kept in the LOCATION table. The attributes of this entity are:
"Company_number" is the company-specific company number, "Country" is the
country where the company is located, "City" is the city where the company is located,
"Address" is the full address of the company, "Address_code" is the address code of the
company, "District " is for the district where the company is located, "Post_code" is for the
postal code where the company is located.

### POSITION
The positions of the people added to the system in the companies are kept in
the POSITION table. Attributes of this entity are: “Position_code” is for specific code of the
position, “Title” is for position’s name, “Company_id” is for company’s code number.

### POSITION_HISTORY
The previous positions of the people added to the request are kept
in the POSITION_HISTORY table. The attributes of this entity are: “Person_id” is for the
personal number of the employee, “Start_date” is for the start date of the job, “Finish_date”
is for the end date of the job, “Ph_code” is for the specific code of the past position, “Title”
is for the position name, “ps_code” is for the specific position of the position for the code.

### FOLLOW
The people followed by the people in the system are kept in the FOLLOW
table. Attributes of this entity are: “Follower_number” is for follower user’s specific
number, “Followed_number” is for followed user’s specific number and “Follow_date” is
for following date.

### JOB_APPLY
Job posting applications are kept in the JOB APPLICATION table. The
attributes of this entity are: "Jo_id" is for the job posting's unique code number, "Person_id"
is for the job applicant's unique application code number, "Application_date" is the time the
applicant applied for the job, and "Cv" is for the applicant's CV.

### JOB_OFFER
Job postings added to the system and the properties of these postings are
kept in the JOB_OFFER table. The attributes of this entity are: "Offerpost_id" is for the job
posting specific code number, "Member_id" is for the job poster specific number,
"Shared_date" is for the job posting date, "End_date" is for the job posting date, "Sector" is
for which sector it is, "Type" is for job type (internship, full-time, part-time, remote).

### DIRECT_MESSAGE
The messages of the people in the system are kept in the
DIRECT_MESSAGE table. The attributes of this entity are: "Code" is for the specific
message code number, "Sender_number" is for the code number of the person sending
the message, "Recipient_number" is for the code number of the person receiving the
message, "Content" is for the text. the content of the direct message, the “date” is for the
date the message was sent.

### POST
The posts shared by the people in the system and the information of these posts
are kept in the POST table. The attributes of this entity are: "Post_id" for the post's unique
code number, "Person_id" for the person number of the person who posted the post,
"Total_like" for the total number of likes for the post, "Total_comment" for the number total
number of comments on the post, "Title " is for the type of post (image, text, video), "date"
is for the post's publication date, and "Shared_hour" is for the post's publication time.

### POST_COMMENT
The comments made to the posts shared by people in the system are
kept in the POST_COMMENT table. The attributes of this entity are: "Comment_id" is for
the specific code number of the comment, "Person_id" is for the person number of the
commenter, "Content" is for the text content of the comment, "Comment_date" is for the
post's publication date.

### SKILL
The abilities of the people in the system and the levels of these abilities are kept in
the SKILLS table. The attributes of this entity are: “Skill_name” is for the name of the skill,
“Person_id” is for the employee with some skill and “Field” is for the skill field of the
employee.

### SAVED_JOB
Jobs saved by people in the system are kept in the SAVED_JOB table. The
attributes of this entity are: "Sj_id" is for the specific code number of the job posting,
"Person_id" is for the number of the employee who registered the job posting,
"Shared_date" is for the date it is posted, "Brief" is for the information of the job it has
registered, "Level" is for the level of the job it has registered, "Type " is for the type of job it
has registered, "Offerpost_id" is for the posting of the job it has registered.

### INTEREST
In the system, the areas that people are interested in are kept in the
INTEREST table. The attributes of this entity are: "Person_id" is for employees who are
interested in some field, "Relevance_name" is for name of interest and "Field" is for
employee interest.COURSE: Course general information of each course opened in the system is kept in the
COURSE table. The properties of this entity are: “Course_number” is for the specific code
number of the course, “Course_name” is for the name of the course, “Credit” is for the
credit number of the course.

### COURSE_SECTION
Each course opened in the system also has sessions. Information
about these sessions is kept in the COURSE_SECTION table. The attributes of this entity
are as follows: "course_number" is the code number specific to the course section,
"Section_id" is the code number specific to the section, "Instructor_id" is the specific
number of the department lecturer, "Year" is the year the course is given, "Semester" is the
term for the course.

### CURRENT_COURSE
The current course information of the students kept in the system is
kept in the CURRENT_COURSE table. Properties of this entity: "Student_id" is the student
number of the student who took the course, "Section_id" is the special code number of the
course, "Currentcourse_id" is the special current code.

### INSTRUCTOR
General information of the instructors registered in the system is kept in
the instructor table. The qualifications of this entity are as follows: "Instructor_id"
instructor's special number, "Title" instructor title (Assoc., Professor, etc.), "University"
instructor's university, "Department" instructor's department, "Faculty" instructor for the
member's faculty.

### STUDENT
Student contact information of students registered in the system is kept in the
STUDENT table. The attributes of this entity are: “Student_id” is for the student’s unique
number, “University” is for the student’s university, “Department” is for the student’s
department, “Faculty” is for the student’s faculty. , "Instructor_id" is for the mentor id of the
student.

### PROJECT_INSTRUCTOR
The projects shared by the instructors in the system and the
information about the projects are kept in the PROJECT_INSTRUCTOR table. Properties
of this entity: “Name” is the project name, “Task_id” is the project specific code number,
“Instructor_id” is the instructor number of the project, “Start_date” is the project start date. ,
“End_date” is for project delivery date information, “Brief” is for content of the project.

### PROJECT_STUDENT
The projects that students add to the system and information about
the projects are kept in the PROJECT_STUDENT table. "Student_id" is the school number
of the owner of the project, "task_id" is the project specific code number, "Upload_date" is
for the upload date of the project, "Document_info" is for the content of the uploaded
project, "ps_id" is the special code of the uploaded project.

### SOCIAL_EVENT
Events added to the system and information about the events are kept
in the SOCIAL_EVENT table. "Se_id" is for the special code of the event, "Title" is for the
name of the event, "Start_date" is for the start date of the event, "End_date" is for the end
date of the event, "Member_id" is the code of the member who made the event.
SYSTEM_MEMBER: Members registered to the system and information about members
are kept in the SYSTEM_MEMBER table. "member_id" is the member specific code, "mail"
is for the member's mail, "Password" is for the password of the member, "type" is for
specifying the type of the member, "joined_date" is for the date the member is registered.

### PERSON
Personnel registered in the system and information about personnel are kept in
the PERSON table. "person_id" is the special code of the person, "fname" is the person's
first name, "mname" is the person's middle name, "lname" is the person's last name,
"birth_date" is the person's date of birth, "sex" is the person's gender, "phone" is the
personun is for phone number, "type" is for what type of person the person is.

### COMMENT_LIKE  
Information about the likes posted to the comments in the system is
kept in the COMMENT_LIKE table. "comment_id" is the special code of the comment,
"person_id" is the special number of the person who liked the comment, "date" is the date
the person liked the comment.

### POST_LIKE 
Information about the likes sent to the posts in the system is kept in the
LIKE table. "post_id" is the special code of the post liked, "person_id" is the special
number of the person who liked the post, "date" is the date the post was liked.

### JOIN 
The information of who participated in the events in the system is kept in the JOIN
table. "se_id" is for the unique code of the event, "person_id" is the unique number of the
person participating in the event.

### OTHER_USER 
The information of other users(non student and non instructor) in the system is kept in the
OTHER table. "other_id" is the personal code.


## LinkedInMoodle Relationships
A LinkedInMoodle user can also be a student, instructor, or mentor in the system. Users
can work in more than one company. Users can be interested in some fields. Users apply
or offer a job, connect with other users, send messages to other users, comment to other
users’ posts and share posts. Users have skills. Users can organize some events. Users
can be participant of some events. Users can save job postings. Users can receive some
certificates.

#### COURSE – SECS- COURSE_SECTION: 1-N relationship
#### COURSE_SECTION - TEACHES – INSTRUCTOR: N:1 relationship
#### COURSE_SECTION – CURRENT_COURSE – STUDENT: N:N relationship
#### INSTRUCTOR – TEACHES – COURSE_SECTION: 1:N relationship
#### INSTRUCTOR – SHARE – PROJECT_INSTRUCTOR: 1:N relationship
#### INSTRUCTOR – MENTOR – STUDENT: 1:N relationship
#### STUDENT – MENTOR – INSTRUCTOR: N:1 relationship
#### STUDENT – CURRENT_COURSE – COURSE_SECTION: N:N relationship
#### STUDENT – UPLOAD – PROJECT_STUDENT : 1:N relationship
#### PROJECT_INSTRUCTOR – SHARE – INSTRUCTOR : N:1 relationship
#### PROJECT_INSTRUCTOR – HAS – PROJECT_STUDENT : 1:N relationship
#### PROJECT_STUDENT - UPLOAD – STUDENT: N:1 relationship
#### PROJECT_STUDENT – HAS – PROJECT_INSTRUCTOR: N:1 relationship
#### PERSON – FOLLOW – PERSON: N:N relationship
#### PERSON – DIRECT_MESSAGE – PERSON: N:N relationship
#### PERSON- JOB_APPLY – JOB_OFFER: N:N relationship
#### PERSON – SAVED – SAVED_JOB:1:N relationship
#### PERSON – MAKE – POST_COMMENT: 1:N relationship
#### PERSON – COMMENT_LIKE – POST_COMMENT: N:N relationship
#### PERSON – LIKE – POST: N:N relationship
#### PERSON – SHARE – POST :1:N relationship
#### PERSON – JOIN – SOCIAL_EVENT:N:N relationship
#### PERSON – HAS – POSITION_HISTORY: 1:N relationship
#### PERSON – HAS – INTEREST: 1:N relationship
#### PERSON – HAS – SKILL: 1:N relationship
#### JOB_OFFER – JOB_APPLY – PERSON : N:N relationship
#### JOB_OFFER – PART_OF – SAVED_JOB: 1:N relationship
#### JOB_OFFER – SHARE – SYSTEM_MEMBER: N:1 relationship
#### SAVED_JOB – PART_OF – JOB_OFFER : N:1 relationship
#### SAVED_JOB – SAVED – PERSON : N:1 relationship
#### SYSTEM_MEMBER – SHARE – JOB_OFFER: 1:N relationship
#### SYSTEM_MEMBER – CREATE – SOCIAL_EVENT: 1:N relationship
#### POST_COMMENT – MAKE – PERSON : N:1 relationship
#### POST_COMMENT - COMMENT_LIKE – PERSON: N:N relationship
#### POST_COMMENT – INCLUDE – POST: N:1 relationship
#### POST – INCLUDE – POST_COMMENT: 1:N relationship
#### POST – LIKE – PERSON : N:N relationship
#### POST – SHARE – PERSON : N:1 relationship
#### SOCIAL_EVENT – CREATE – SYSTEM_MEMBER : N:1 relationship
#### SOCIAL_EVENT – JOIN – PERSON : N:N relationship
#### POSITION_HISTORY – HAS – PERSON : N:1 relationship
#### POSITION_HISTORY – HAS – POSITION : N:1 relationship
#### POSITION - WORKS_FOR – COMPANY: 1:N relationship
#### POSITION – HAS – POSITION_HISTORY : 1:N relationship
#### INTEREST – HAS – PERSON: N:1 relationship
#### SKILL – HAS – PERSON : N:1 relationship
#### COMPANY – WORKS_FOR – POSITION: 1:N relationship

### ****************************************************************************************************
### ****************************************************************************************************

### LinkedInMoodle Key Constraints
#### COURSE --> (course_number)
#### COURSE_SECTION --> (section_id)
#### PROJECT_INSTRUCTOR --> (task_id)
#### PROJECT_STUDENT--> (ps_id)
#### JOB_OFFER--> (offerpost_id)
#### SAVED_JOB--> (sj_id)
#### POST_COMMENT --> (comment_id)
#### POST --> (post_id)
#### SOCIAL_EVENT --> (se_id)
#### POSITION_HISTORY --> (ph_code)
#### POSITION--> (ps_code)
#### SYSTEM_MEMBER--> (member_id)
#### PERSON --> (person_id)
#### COMPANY --> (company_id)
#### INTEREST --> (person_id) and (interest_name)
#### SKILL --> (person_id) and (skill_name)
#### JOB_APPLY --> (person_id) and (jo_id)
#### FOLLOW --> (follower_id) and (followed_id)
#### DIRECT_MESSAGE --> (sender_id) and (recipient_id)
#### COMMENT_LIKE --> (comment_id) and (person_id)
#### LIKE --> (post_id) and (person_id)
#### JOIN --> (se_id) and (person_id)
#### LOCATION --> (company_id) and (address_code)
#### STUDENT --> (student_id)
#### OTHER --> (other_id)
#### INSTRUCTOR --> (instructor_id)
#### CURRENT_COURSE --> (student_id) and (section_id)

### ****************************************************************************************************
### ****************************************************************************************************

### LinkedInMoodle Referential Integrity Constraints
#### Course_Section.course_number | Course.course_number
#### Project_Student.task_id | Project_Instructor.task_id
#### SAVED_JOB.offerpost_id | JOB_OFFER.offerpost_id
#### POSITION_HISTORY.ps_code | POSITION.ps_code
#### POST_COMMENT.post_id | POST.post_id
#### PERSON.person_id | MEMBER.member_id
#### COMPANY.company_id | MEMBER.member_id
#### INTEREST.person_id | PERSON.person_id
#### SKILL.person_id | PERSON.person_id
#### SAVED_JOB.person_id | PERSON.person_id
#### JOB_OFFER.member_id | MEMBER.member_id
#### POST_COMMENT.person_id | PERSON.person_id
#### POST.person_id | PERSON.person_id
#### SOCIAL_EVENT.member_id | MEMBER.member_id
#### POSITION_HISTORY.person_id | PERSON.person_id
#### POSITION.company_id | COMPANY.company_id
#### JOB_APPLY.person_id | PERSON.person_id
#### JOB_APPLY.jo_id | JOB_OFFER.jo_id
#### FOLLOW.follower_id | PERSON.person_id
#### FOLLOW.followed_id | PERSON.person_id
#### DIRECT_MESSAGE.Recipient_number | PERSON.person_id
#### DIRECT_MESSAGE.sender_id | PERSON.person_id
#### COMMENT_LIKE.comment_id | POST_COMMENT.comment_id
#### COMMENT_LIKE.person_id | PERSON.person_id
#### LIKE.post_id | POST.post_id
#### LIKE.person_id | PERSON.person_id
#### JOIN.se_id | SOCIAL_EVENT.se_id
#### JOIN.person_id | PERSON.person_id
#### LOCATION.company_id | COMPANY.company_id
#### STUDENT.student_id | PERSON.person_id
#### OTHER.other_id | PERSON.person_id
#### INSTRUCTOR.instructor_id | PERSON.person_id
#### COURSE_SECTION.instructor_id | INSTRUCTOR.instructor_id
#### STUDENT.instructor_id | INSTRCUTOR.instructor_id
#### PROJECT_INSTRUCTOR.instructor_id | INSTRUCTOR.instructor_id
#### PROJECT_STUDENT.student_id | STUDENT.student_id
#### CURRENT_COURSE.student_id | STUDENT.student_id
#### CURRENT_COURSE.section_id | COURSE_SECTION.section_id

### According to design-logical model's mapping techniques, relational tables will like in below

![Screenshot from 2022-02-04 12-43-36](https://user-images.githubusercontent.com/71606941/152507797-2cea8b8d-72e6-4048-a6c3-8ec82d3a8b15.png)
![Screenshot from 2022-02-04 12-43-49](https://user-images.githubusercontent.com/71606941/152508299-51b1ed2c-6d38-43e5-ac4e-2677fe671c62.png)

