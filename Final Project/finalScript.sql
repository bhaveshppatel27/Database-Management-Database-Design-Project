create schema team9project;
use team9project;

create table if not exists dimAbsenceCode (AbsenceCodeID int not null,
AbsenceCode nvarchar(10) ,
AbsenceCodeDesc nvarchar(50),
Unexcused nvarchar(20),
primary key (AbsenceCodeID));

create table if not exists dimAssignment (AssignmentID int not null,
Assignment nvarchar(50) ,
primary key (AssignmentID));


create table if not exists dimDate (DatePK datetime not null,
DateName nvarchar(50),
Year datetime,
YearName nvarchar(50),
HalfYear datetime,
HalfYearName nvarchar(50),
Quarter datetime,
QuarterName nvarchar(50),
Month datetime,
MonthName nvarchar(50),
Week datetime,
WeekName nvarchar(50),
DayOfYear int,
DayOfYearName nvarchar(50),
DayOfHalfYear int,
DayOfHalfYearName nvarchar(50),
DayOfQuarter int,
DayOfQuarterName nvarchar(50),
DayOfMonth int,
DayOfMonthName nvarchar(50),
DayOfWeek int,
DayOfWeekName nvarchar(50),
WeekOfYear int,
WeekOfYearName nvarchar(50),
MonthOfYear int,
MonthOfYearName nvarchar(50),
MonthOfHalfYear int,
MonthOfHalfYearName nvarchar(50),
MonthOfQuarter int,
MonthOfQuarterName nvarchar(50),
QuarterOfYear int,
QuarterOfYearName nvarchar(50),
QuarterOfHalfYear int,
QuarterOfHalfYearName nvarchar(50),
HalfYearOfYear int,
HalfYearOfYearName nvarchar(50),
SchoolYear datetime,
SchoolYearName nvarchar(50),
SchoolHalfYear datetime,
SchoolHalfYearName nvarchar(50),
SchoolQuarter datetime,
SchoolQuarterName nvarchar(50),
SchoolMonth datetime,
SchoolMonthName nvarchar(50),
SchoolWeek datetime,
SchoolWeekName nvarchar(50),
SchoolDate datetime,
SchoolDayName nvarchar(50),
SchoolDayOfYear int,
SchoolDayOfYearName nvarchar(50),
SchoolDayOfHalfYear int,
SchoolDayOfHalfYearName nvarchar(50),
SchoolDayOfQuarter int,
SchoolDayOfQuarterName nvarchar(50),
SchoolDayOfMonth int,
SchoolDayOfMonthName nvarchar(50),
SchoolDayOfWeek int,
SchoolDayOfWeekName nvarchar(50),
SchoolWeekOfYear int,
SchoolWeekOfYearName nvarchar(50),
SchoolMonthOfYear int,
SchoolMonthOfYearName nvarchar(50),
SchoolMonthOfHalfYear int,
SchoolMonthOfHalfYearName nvarchar(50),
SchoolMonthOfQuarter int,
SchoolMonthOfQuarterName nvarchar(50),
SchoolQuarterOfYear int,
SchoolQuarterOfYearName nvarchar(50),
SchoolQuarterOfHalfYear int,
SchoolQuarterOfHalfYearName nvarchar(50),
SchoolHalfYearOfYear int,
SchoolHalfYearOfYearName nvarchar(50),
SchoolDay int,
SchoolNineWeeks int ,
primary key (DatePK));

create table if not exists dimDisciplineActionCode (DisciplineActionCodeID int not null ,
DisciplineActionCode nvarchar(10),
DisciplineActionDesc nvarchar(50),
primary key (DisciplineActionCodeID));

create table if not exists dimDisciplineEventCode (DisciplineEventCodeID int not null ,
DisciplineEventCode nvarchar(10),
DisciplineEventDesc nvarchar(50),
primary key (DisciplineEventCodeID));

create table if not exists dimEnrollmentCode (EnrollmentCodeID int not null ,
EnrollmentCode nvarchar(5),
EnrollmentCodeDesc nvarchar(50),
primary key (EnrollmentCodeID));

create table if not exists dimFacility (FacilityID int not null ,
Facility nvarchar(100),
Address nvarchar(50),
City nvarchar(50),
Zip nvarchar(20),
Active nvarchar(20),
Charter nvarchar(10),
FacilityADCode nvarchar(50),
FacLevel nvarchar(50),
FacilityName nvarchar(50),
FacilityType nvarchar(50),
primary key (FacilityID));


create table if not exists dimGradeType (GradeTypeID int not null ,
GradeType nvarchar(50),
primary key (GradeTypeID));

create table if not exists dimPeriod (PeriodID int not null ,
Period nvarchar(20),
primary key (PeriodID));

create table if not exists dimSpecialProgram (ProgramID int not null ,
ProgramCode nvarchar(10),
Program nvarchar(100),
primary key (ProgramID));

create table if not exists dimSubject (SubjectID int not null ,
SubjectCode nvarchar(50),
SubjectName nvarchar(200),
primary key (SubjectID));

create table if not exists dimWithdrawalCode (WithdrawalCodeID int not null ,
WithdrawalCode nvarchar(5),
WithdrawalCodeDesc nvarchar(50),
primary key (WithdrawalCodeID));

create table if not exists dimHSGTDomain (HSGTDomainID int not null ,
HSGTDomain nvarchar(200),
SubjectID int,
primary key (HSGTDomainID),
FOREIGN KEY (SubjectID) REFERENCES dimSubject(SubjectID));

create table if not exists dimStaff (StaffID int not null ,
StaffTypeID int,
PrimaryFacilityID int,
StaffFirstName nvarchar(50),
StaffLastName nvarchar(50),
StaffName nvarchar(100),
StaffADUsername nvarchar(50),
GradeLevel nvarchar(50),
primary key (StaffID),
FOREIGN KEY (PrimaryFacilityID) REFERENCES dimFacility(FacilityID));

create table if not exists dimCourse (CourseID int not null ,
SubjectID int,
CourseSISID nvarchar(50),
CourseTitle nvarchar(50),
CourseLevel nvarchar(50),
primary key (CourseID),
FOREIGN KEY (SubjectID) REFERENCES dimSubject(SubjectID));


create table if not exists dimStudent (StudentID int not null ,
SISStudentID int,
StudentName nvarchar(100),
StudentFirstName nvarchar(50),
StudentLastName nvarchar(50),
BirthDate datetime,
Gender nvarchar(10),
EthnicityCode nvarchar(5),
Ethnicity nvarchar(50),
ESOL nvarchar(5),
FreeReducedLunch nvarchar(10),
HomeroomStaffID int,
FacilityID int,
Grade nvarchar(50),
AssignmentID int,
EnrollmentCodeID int,
EnrollmentDate datetime,
WithdrawalCodeID int,
WithdrawalDate datetime,
EffectiveDate datetime,
EndDate datetime,
StudentMiddleName nvarchar(50),
StudentNameSuffix nvarchar(50),
StudentPhone nvarchar(50),
StudentSSN nvarchar(50),
Address1 nvarchar(50),
City nvarchar(50),
State nvarchar(50),
Zip nvarchar(50),
AdultEmploymentStatus nvarchar(20),
AdultLEP nvarchar(20),
AttendancePeriodID int,
AudiologyServiceEarlyIntervention nvarchar(50),
BirthCountry nvarchar(50),
BirthPlace nvarchar(50),
BirthState nvarchar(50),
CitizenshipStatus nvarchar(20),
EarlyAdmission nvarchar(50),
EconomicDisadvantage nvarchar(50),
ELLCode nvarchar(20),
ELLCodeDesc nvarchar(50),
FederalImpactCode nvarchar(20),
FederalImpactCodeDesc nvarchar(50),
GiftedStudent nvarchar(50),
GraduationPlanYear nvarchar(10),
GraduationOption nvarchar(50),
HomeLanguage nvarchar(50),
HomelessStudent nvarchar(50),
HomelessUnaccompaniedYouth nvarchar(50),
Homeroom nvarchar(50),
HomeSchoolTaught nvarchar(50),
HouseholdNumber nvarchar(10),
IncarceratedStudent nvarchar(50),
KGReadiness nvarchar(50),
MaritalStatus nvarchar(10),
MedicaidSpecServices nvarchar(50),
MedicalServEarlyIntervention nvarchar(50),
MigrantStatus nvarchar(50),
MissingChild nvarchar(50),
NationalAchieveScholar nvarchar(50),
NationalHispanicScholar nvarchar(10),
NationalMeritScholar nvarchar(10),
EarlyIntervention nvarchar(50),
EarlyExceptionalities nvarchar(50),
OutOfDistrict nvarchar(10),
Exceptionality nvarchar(50),
PrimaryLanguage nvarchar(50),
ResidentStatus nvarchar(10),
SecondLanguage nvarchar(50),
RefID int,
oldSID int,
SchoolYear int,
WithdrawalFlag nvarchar(10),
primary key (StudentID),
FOREIGN KEY (AssignmentID) REFERENCES dimAssignment(AssignmentID),
FOREIGN KEY (EnrollmentDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (WithdrawalDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (EnrollmentCodeID) REFERENCES dimEnrollmentCode(EnrollmentCodeID),
FOREIGN KEY (FacilityID) REFERENCES dimFacility(FacilityID),
FOREIGN KEY (HomeroomStaffID) REFERENCES dimStaff(StaffID),
FOREIGN KEY (WithdrawalCodeID) REFERENCES dimWithdrawalCode(WithdrawalCodeID))
;

create table if not exists dimStandardizedTestDomain (StandardizedTestDomainID int not null ,
StandardizedTestDomain nvarchar(50),
SubjectID int,
primary key (StandardizedTestDomainID),
FOREIGN KEY (SubjectID) REFERENCES dimSubject(SubjectID));

create table if not exists factAbsence (AbsenceID int not null ,
AbsenceDate datetime,
StudentID int,
SISStudentID int,
AbsenceCodeID int,
AbsenceCount int,
FacilityID int,
StaffID int,
primary key (AbsenceID),
FOREIGN KEY (AbsenceCodeID) REFERENCES dimAbsenceCode(AbsenceCodeID),
FOREIGN KEY (AbsenceDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (FacilityID) REFERENCES dimFacility(FacilityID),
FOREIGN KEY (StaffID) REFERENCES dimStaff(StaffID),
FOREIGN KEY (StudentID) REFERENCES dimStudent(StudentID));

create table if not exists factDiscipline (DisciplineID int not null ,
StudentID int,
SISStudentID int,
EventFacilityID int,
DisciplineEventCodeID int,
EventDate datetime,
EventReportingStaffID int,
DisciplineActionCodeID int,
ActionDate datetime,
ActionStaffID int,
ResolutionDate datetime,
primary key (DisciplineID),
FOREIGN KEY (EventDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (ActionDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (DisciplineActionCodeID) REFERENCES dimDisciplineActionCode(DisciplineActionCodeID),
FOREIGN KEY (DisciplineEventCodeID) REFERENCES dimDisciplineEventCode(DisciplineEventCodeID),
FOREIGN KEY (EventFacilityID) REFERENCES dimFacility(FacilityID),
FOREIGN KEY (EventReportingStaffID) REFERENCES dimStaff(StaffID),
FOREIGN KEY (ActionStaffID) REFERENCES dimStaff(StaffID),
FOREIGN KEY (StudentID) REFERENCES dimStudent(StudentID));

create table if not exists factHSGTScore (HSGTScoreID int not null ,
StudentID int,
SISStudentID int,
TestDate datetime,
SubjectID int,
RawScore numeric(10,2),
PossibleRawScore numeric(10,2),
ScaledScore numeric(10,2),
PossibleScaledScore numeric(10,2),
PassFail nvarchar(50),
TimesTested int,
LatestTest int,
primary key (HSGTScoreID),
FOREIGN KEY (TestDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (StudentID) REFERENCES dimStudent(StudentID),
FOREIGN KEY (SubjectID) REFERENCES dimSubject(SubjectID));

create table if not exists factHSGTDomainScore (HSGTDomainScoreID int not null ,
HSGTScoreID int,
HSGTDomainID int,
DomainRawScore numeric(10,2),
PossibleDomainRawScore numeric(10,2),
primary key (HSGTDomainScoreID),
FOREIGN KEY (HSGTDomainID) REFERENCES dimHSGTDomain(HSGTDomainID),
FOREIGN KEY (HSGTScoreID) REFERENCES factHSGTScore(HSGTScoreID));


 create table if not exists factSchoolKPI (SchoolKPIID int not null ,
EffectiveDate datetime,
FacilityID int,
TargetStudentAttendancePct int,
TargetStandardizedTestScaledScore int,
TargetEnrollmentCount int,
primary key (SchoolKPIID),
FOREIGN KEY (EffectiveDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (FacilityID) REFERENCES dimFacility(FacilityID));

 create table if not exists factSpecialProgram (SpecialProgramID int not null ,
ProgramID int,
StudentID int,
SISStudentID int,
EntryDate datetime,
primary key (SpecialProgramID),
FOREIGN KEY (EntryDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (ProgramID) REFERENCES dimSpecialProgram(ProgramID),
FOREIGN KEY (StudentID) REFERENCES dimStudent(StudentID));


create table if not exists factStandardizedTestScore (StandardizedTestScoreID int not null ,
StudentID int,
SISStudentID int,
TestDate datetime,
SubjectID int,
RawScore numeric(10,2),
PossibleRawScore numeric(10,2),
ScaledScore numeric(10,2),
PossibleScaledScore numeric(10,2),
PerformanceLevel numeric(10,2),
Lexile nvarchar(50),
LatestTest int,
primary key (StandardizedTestScoreID),
FOREIGN KEY (TestDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (StudentID) REFERENCES dimStudent(StudentID),
FOREIGN KEY (SubjectID) REFERENCES dimSubject(SubjectID));

create table if not exists factStandardizedTestDomainScore (StandardizedTestDomainScoreID int not null ,
StandardizedTestScoreID int,
StandardizedTestDomainID int,
RawScore numeric(10,2),
PossibleRawScore numeric(10,2),
primary key (StandardizedTestDomainScoreID),
FOREIGN KEY (StandardizedTestDomainID) REFERENCES dimStandardizedTestDomain(StandardizedTestDomainID),
FOREIGN KEY (StandardizedTestScoreID) REFERENCES factStandardizedTestScore(StandardizedTestScoreID));

create table if not exists factStudentCourse (StudentCourseID int not null ,
StudentID int,
SISStudentID int,
CourseID int,
StaffID int,
FacilityID int,
PeriodID int,
CourseDate datetime,
EnrollmentDate datetime,
EnrollmentCodeID int,
WithdrawalDate datetime,
WithdrawalCodeID int,
GradeLevel nvarchar(10),
primary key (StudentCourseID),
FOREIGN KEY (CourseID) REFERENCES dimCourse(CourseID),
FOREIGN KEY (CourseDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (EnrollmentDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (WithdrawalDate) REFERENCES dimDate(DatePK),
FOREIGN KEY (EnrollmentCodeID) REFERENCES dimEnrollmentCode(EnrollmentCodeID),
FOREIGN KEY (FacilityID) REFERENCES dimFacility(FacilityID),
FOREIGN KEY (PeriodID) REFERENCES dimPeriod(PeriodID),
FOREIGN KEY (StaffID) REFERENCES dimStaff(StaffID),
FOREIGN KEY (StudentID) REFERENCES dimStudent(StudentID),
FOREIGN KEY (WithdrawalCodeID) REFERENCES dimWithdrawalCode(WithdrawalCodeID));

create table if not exists factStudentCourseGrade (StudentCourseGradeID int not null ,
StudentCourseID int,
GradeTypeID int,
CreditAttempted numeric(10,2),
CreditGiven numeric(10,2),
NumericGrade numeric(10,2),
AlphaGrade nvarchar(5),
AlphaNumericGrade numeric(10,2),
primary key (StudentCourseGradeID),
FOREIGN KEY (GradeTypeID) REFERENCES dimGradeType(GradeTypeID),
FOREIGN KEY (StudentCourseID) REFERENCES factStudentCourse(StudentCourseID));




LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimAbsenceCode.txt' into table dimAbsenceCode
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimAssignment.txt' into table dimAssignment
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimDate.txt' into table dimDate
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimDisciplineActionCode.txt' into table dimDisciplineActionCode
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimDisciplineEventCode.txt' into table dimDisciplineEventCode
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimEnrollmentCode.txt' 
into table dimEnrollmentCode
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimFacility.txt' 
into table dimFacility
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimGradeType.txt' 
into table dimGradeType
Fields terminated by ','
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ',' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimPeriod.txt' 
into table dimPeriod
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimSpecialProgram.txt' 
into table dimSpecialProgram
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimSubject.txt' 
into table dimSubject
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimWithdrawalCode.txt' 
into table dimWithdrawalCode
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimHSGTDomain.txt' 
into table dimHSGTDomain
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimStaff.txt' 
into table dimStaff
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimCourse.txt' 
into table dimCourse
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimStudent.txt' 
into table dimStudent
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/dimStandardizedTestDomain.txt' 
into table dimStandardizedTestDomain
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factAbsence.txt' 
into table factAbsence
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factDiscipline.txt' 
into table factDiscipline
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factHSGTScore.txt' 
into table factHSGTScore
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factHSGTDomainScore.txt' 
into table factHSGTDomainScore
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factSchoolKPI.txt' 
into table factSchoolKPI
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factSpecialProgram.txt' 
into table factSpecialProgram
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factStandardizedTestScore.txt' 
into table factStandardizedTestScore
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factStandardizedTestDomainScore.txt' 
into table factStandardizedTestDomainScore
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factStudentCourse.txt' 
into table factStudentCourse
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/factStudentCourseGrade.txt' 
into table factStudentCourseGrade
Fields terminated by ',' 
OPTIONALLY ENCLOSED BY '''' TERMINATED BY ','
LINES TERMINATED BY '\r\n' 
IGNORE 1 rows;
