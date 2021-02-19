namespace anubhav.db;

using { cuid } from '@sap/cds/common';

entity Students
{
    key email : String(65);
    first_name : String(20);
    last_name : String(20);
    date_sign_up : Date;
    courses : Association to one Courses;
}

entity Courses
{
    key ID : Integer;
    course_name : String(70);
    method : String(20);
    start_date : Date;
    end_date : Date;
    students : Association to one Students on students.courses = $self;
}

entity Demos : cuid
{
    DemoDate : Date;
    TrainerName : String;
    CourseName: String;
    SeatsAvailable : Integer64;
    SeatsBooked : Integer64;
}
