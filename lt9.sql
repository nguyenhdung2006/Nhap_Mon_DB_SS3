CREATE TABLE Students (
    student_id serial primary key ,
    name varchar(50) not null ,
    dob DATE not null
);

CREATE TABLE Courses (
    course_id serial primary key ,
    course_name varchar(50) not null,
    credits int CHECK ( credits > 0 )
);

CREATE TABLE Enrollments (
    enrollment_id int unique not null,
    student_id int not null,
    foreign key (student_id) REFERENCES Students(student_id),
    course_id int not null,
    foreign key (course_id) REFERENCES Courses(course_id),
    grade varchar(1) check (grade IN ('A', 'B', 'C', 'D', 'F') )
);