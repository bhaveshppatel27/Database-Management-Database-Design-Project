create database StudentsDB;
use StudentsDB;
CREATE TABLE dimAbsenceCode(
	AbsenceCodeID int NOT NULL,
	AbsenceCode nvarchar(10) NULL,
	AbsenceCodeDesc nvarchar(50) NULL,
	Unexcused nvarchar(20) NULL,
	PRIMARY KEY (AbsenceCodeID)
	);
CREATE TABLE dimAssignment(
	AssignmentID int NOT NULL,
	Assignment nvarchar(50) NULL,
	PRIMARY KEY (AssignmentID)
	);
CREATE TABLE dimCourse(
	CourseID int NOT NULL AUTO_INCREMENT,
	SubjectID int NULL,
	CourseSISID nvarchar(50) NULL,
	CourseTitle nvarchar(50) NULL,
	CourseLevel nvarchar(50) NULL,
	PRIMARY KEY (CourseID)
	);
CREATE TABLE dimDate(
	DatePK datetime NOT NULL,
	DateName nvarchar(50) NULL,
	Year datetime NULL,
	YearName nvarchar(50) NULL,
	HalfYear datetime NULL,
	HalfYearName nvarchar(50) NULL,
	Quarter datetime NULL,
	QuarterName nvarchar(50) NULL,
	Month datetime NULL,
	MonthName nvarchar(50) NULL,
	Week datetime NULL,
	WeekName nvarchar(50) NULL,
	DayOfYear int NULL,
	DayOfYearName nvarchar(50) NULL,
	DayOfHalfYear int NULL,
	DayOfHalfYearName nvarchar(50) NULL,
	DayOfQuarter int NULL,
	DayOfQuarterName nvarchar(50) NULL,
	DayOfMonth int NULL,
	DayOfMonthName nvarchar(50) NULL,
	DayOfWeek int NULL,
	DayOfWeekName nvarchar(50) NULL,
	WeekOfYear int NULL,
	WeekOfYearName nvarchar(50) NULL,
	MonthOfYear int NULL,
	MonthOfYearName nvarchar(50) NULL,
	MonthOfHalfYear int NULL,
	MonthOfHalfYearName nvarchar(50) NULL,
	MonthOfQuarter int NULL,
	MonthOfQuarterName nvarchar(50) NULL,
	QuarterOfYear int NULL,
	QuarterOfYearName nvarchar(50) NULL,
	QuarterOfHalfYear int NULL,
	QuarterOfHalfYearName nvarchar(50) NULL,
	HalfYearOfYear int NULL,
	HalfYearOfYearName nvarchar(50) NULL,
	SchoolYear datetime NULL,
	SchoolYearName nvarchar(50) NULL,
	SchoolHalfYear datetime NULL,
	SchoolHalfYearName nvarchar(50) NULL,
	SchoolQuarter datetime NULL,
	SchoolQuarterName nvarchar(50) NULL,
	SchoolMonth datetime NULL,
	SchoolMonthName nvarchar(50) NULL,
	SchoolWeek datetime NULL,
	SchoolWeekName nvarchar(50) NULL,
	SchoolDate datetime NULL,
	SchoolDayName nvarchar(50) NULL,
	SchoolDayOfYear int NULL,
	SchoolDayOfYearName nvarchar(50) NULL,
	SchoolDayOfHalfYear int NULL,
	SchoolDayOfHalfYearName nvarchar(50) NULL,
	SchoolDayOfQuarter int NULL,
	SchoolDayOfQuarterName nvarchar(50) NULL,
	SchoolDayOfMonth int NULL,
	SchoolDayOfMonthName nvarchar(50) NULL,
	SchoolDayOfWeek int NULL,
	SchoolDayOfWeekName nvarchar(50) NULL,
	SchoolWeekOfYear int NULL,
	SchoolWeekOfYearName nvarchar(50) NULL,
	SchoolMonthOfYear int NULL,
	SchoolMonthOfYearName nvarchar(50) NULL,
	SchoolMonthOfHalfYear int NULL,
	SchoolMonthOfHalfYearName nvarchar(50) NULL,
	SchoolMonthOfQuarter int NULL,
	SchoolMonthOfQuarterName nvarchar(50) NULL,
	SchoolQuarterOfYear int NULL,
	SchoolQuarterOfYearName nvarchar(50) NULL,
	SchoolQuarterOfHalfYear int NULL,
	SchoolQuarterOfHalfYearName nvarchar(50) NULL,
	SchoolHalfYearOfYear int NULL,
	SchoolHalfYearOfYearName nvarchar(50) NULL,
	SchoolDay int NULL,
	SchoolNineWeeks int NULL,
	PRIMARY KEY (DatePK)
	);
CREATE TABLE dimDisciplineActionCode(
	DisciplineActionCodeID int NOT NULL,
	DisciplineActionCode nvarchar(10) NULL,
	DisciplineActionDesc nvarchar(50) NULL,
	PRIMARY KEY (DisciplineActionCodeID)
	);
CREATE TABLE dimDisciplineEventCode(
	DisciplineEventCodeID int NOT NULL,
	DisciplineEventCode nvarchar(10) NULL,
	DisciplineEventDesc nvarchar(50) NULL,
	PRIMARY KEY (DisciplineEventCodeID)
	);
CREATE TABLE dimEnrollmentCode(
	EnrollmentCodeID int NOT NULL,
	EnrollmentCode nvarchar(5) NULL,
	EnrollmentCodeDesc nvarchar(50) NULL,
	PRIMARY KEY (EnrollmentCodeID)
	);
CREATE TABLE dimFacility(
	FacilityID int NOT NULL,
	Facility nvarchar(100) NULL,
	Address nvarchar(50) NULL,
	City nvarchar(50) NULL,
	Zip nvarchar(20) NULL,
	Active nvarchar(20) NULL,
	Charter nvarchar(10) NULL,
	FacilityADCode nvarchar(50) NULL,
	FacLevel nvarchar(50) NULL,
	FacilityName nvarchar(50) NULL,
	FacilityType nvarchar(50) NULL,
	PRIMARY KEY (FacilityID)
	);
CREATE TABLE dimGradeType(
	GradeTypeID int NOT NULL,
	GradeType nvarchar(50) NULL,
	PRIMARY KEY (GradeTypeID)
	);
CREATE TABLE dimHSGTDomain(
	HSGTDomainID int NOT NULL AUTO_INCREMENT,
	HSGTDomain nvarchar(200) NULL,
	SubjectID int NULL,
	PRIMARY KEY (HSGTDomainID)
	);
CREATE TABLE dimPeriod(
	PeriodID int NOT NULL,
	Period nvarchar(20) NULL,
	PRIMARY KEY (PeriodID)
	);
CREATE TABLE dimSpecialProgram(
	ProgramID int NOT NULL,
	ProgramCode nvarchar(10) NULL,
	Program nvarchar(100) NULL,
	PRIMARY KEY (ProgramID)
	);
CREATE TABLE dimStaff(
	StaffID int NOT NULL,
	StaffTypeID int NULL,
	PrimaryFacilityID int NULL,
	StaffFirstName nvarchar(50) NULL,
	StaffLastName nvarchar(50) NULL,
	StaffName nvarchar(100) NULL,
	StaffADUsername nvarchar(50) NULL,
	GradeLevel nvarchar(50) NULL,
	PRIMARY KEY (StaffID)
	);
CREATE TABLE dimStandardizedTestDomain(
	StandardizedTestDomainID int NOT NULL,
	StandardizedTestDomain nvarchar(50) NULL,
	SubjectID int NULL,
	PRIMARY KEY (StandardizedTestDomainID)
	);
CREATE TABLE dimStudent(
	StudentID int NOT NULL,
	SISStudentID int NULL,
	StudentName nvarchar(100) NULL,
	StudentFirstName nvarchar(50) NULL,
	StudentLastName nvarchar(50) NULL,
	BirthDate datetime NULL,
	Gender nvarchar(10) NULL,
	EthnicityCode nvarchar(5) NULL,
	Ethnicity nvarchar(50) NULL,
	ESOL nvarchar(5) NULL,
	FreeReducedLunch nvarchar(10) NULL,
	HomeroomStaffID int NULL,
	FacilityID int NULL,
	Grade nvarchar(5) NULL,
	AssignmentID int NULL,
	EnrollmentCodeID int NULL,
	EnrollmentDate datetime NULL,
	WithdrawalCodeID int NULL,
	WithdrawalDate datetime NULL,
	EffectiveDate datetime NOT NULL,
	EndDate datetime NOT NULL,
	StudentMiddleName nvarchar(50) NULL,
	StudentNameSuffix nvarchar(50) NULL,
	StudentPhone nvarchar(50) NULL,
	StudentSSN nvarchar(50) NULL,
	Address1 nvarchar(50) NULL,
	City nvarchar(50) NULL,
	State nvarchar(50) NULL,
	Zip nvarchar(50) NULL,
	AdultEmploymentStatus nvarchar(20) NULL,
	AdultLEP nvarchar(20) NULL,
	AttendancePeriodID int NULL,
	AudiologyServiceEarlyIntervention nvarchar(50) NULL,
	BirthCountry nvarchar(50) NULL,
	BirthPlace nvarchar(50) NULL,
	BirthState nvarchar(50) NULL,
	CitizenshipStatus nvarchar(20) NULL,
	EarlyAdmission nvarchar(50) NULL,
	EconomicDisadvantage nvarchar(50) NULL,
	ELLCode nvarchar(20) NULL,
	ELLCodeDesc nvarchar(50) NULL,
	FederalImpactCode nvarchar(20) NULL,
	FederalImpactCodeDesc nvarchar(50) NULL,
	GiftedStudent nvarchar(50) NULL,
	GraduationPlanYear nvarchar(10) NULL,
	GraduationOption nvarchar(50) NULL,
	HomeLanguage nvarchar(50) NULL,
	HomelessStudent nvarchar(50) NULL,
	HomelessUnaccompaniedYouth nvarchar(50) NULL,
	Homeroom nvarchar(50) NULL,
	HomeSchoolTaught nvarchar(50) NULL,
	HouseholdNumber nvarchar(10) NULL,
	IncarceratedStudent nvarchar(50) NULL,
	KGReadiness nvarchar(50) NULL,
	MaritalStatus nvarchar(10) NULL,
	MedicaidSpecServices nvarchar(50) NULL,
	MedicalServEarlyIntervention nvarchar(50) NULL,
	MigrantStatus nvarchar(50) NULL,
	MissingChild nvarchar(50) NULL,
	NationalAchieveScholar nvarchar(10) NULL,
	NationalHispanicScholar nvarchar(10) NULL,
	NationalMeritScholar nvarchar(10) NULL,
	EarlyIntervention nvarchar(50) NULL,
	EarlyExceptionalities nvarchar(50) NULL,
	OutOfDistrict nvarchar(10) NULL,
	Exceptionality nvarchar(50) NULL,
	PrimaryLanguage nvarchar(50) NULL,
	ResidentStatus nvarchar(10) NULL,
	SecondLanguage nvarchar(50) NULL,
	RefID int NULL,
	oldSID int NULL,
	SchoolYear int NULL,
	WithdrawalFlag int NULL,
	PRIMARY KEY (StudentID)
	);
CREATE TABLE dimSubject(
	SubjectID int NOT NULL,
	SubjectCode nvarchar(50) NULL,
	SubjectName nvarchar(200) NULL,
	PRIMARY KEY (SubjectID)
	);
CREATE TABLE dimWithdrawalCode(
	WithdrawalCodeID int NOT NULL,
	WithdrawalCode nvarchar(5) NULL,
	WithdrawalCodeDesc nvarchar(50) NULL,
	PRIMARY KEY (WithdrawalCodeID)
	);
CREATE TABLE factAbsence(
	AbsenceID int NOT NULL AUTO_INCREMENT,
	AbsenceDate datetime NULL,
	StudentID int NULL,
	SISStudentID int NULL,
	AbsenceCodeID int NULL,
	AbsenceCount int NULL,
	FacilityID int NULL,
	StaffID int NULL,
	PRIMARY KEY (AbsenceID)
	);
CREATE TABLE factDiscipline(
	DisciplineID int NOT NULL AUTO_INCREMENT,
	StudentID int NULL,
	SISStudentID int NULL,
	EventFacilityID int NULL,
	DisciplineEventCodeID int NULL,
	EventDate datetime NULL,
	EventReportingStaffID int NULL,
	DisciplineActionCodeID int NULL,
	ActionDate datetime NULL,
	ActionStaffID int NULL,
	ResolutionDate datetime NULL,
	PRIMARY KEY (DisciplineID)
	);
CREATE TABLE factHSGTDomainScore(
	HSGTDomainScoreID int NOT NULL AUTO_INCREMENT,
	HSGTScoreID int NOT NULL,
	HSGTDomainID int NOT NULL,
	DomainRawScore numeric(10, 2) NULL,
	PossibleDomainRawScore numeric(10, 2) NULL,
	PRIMARY KEY (HSGTDomainScoreID)
	);
CREATE TABLE factHSGTScore(
	HSGTScoreID int NOT NULL AUTO_INCREMENT,
	StudentID int NOT NULL,
	SISStudentID int NULL,
	TestDate datetime NULL,
	SubjectID int NULL,
	RawScore numeric(10, 2) NULL,
	PossibleRawScore numeric(10, 2) NULL,
	ScaledScore numeric(10, 2) NULL,
	PossibleScaledScore numeric(10, 2) NULL,
	PassFail nvarchar(50) NULL,
	TimesTested int NULL,
	LatestTest int NULL,
	PRIMARY KEY (HSGTScoreID)
	);
CREATE TABLE factSchoolKPI(
	SchoolKPIID int NOT NULL AUTO_INCREMENT,
	EffectiveDate datetime NOT NULL,
	FacilityID int NOT NULL,
	TargetStudentAttendancePct int NOT NULL,
	TargetStandardizedTestScaledScore int NOT NULL,
	TargetEnrollmentCount int NOT NULL,
	PRIMARY KEY (SchoolKPIID)
	);
CREATE TABLE factSpecialProgram(
	SpecialProgramID int NOT NULL,
	ProgramID int NULL,
	StudentID int NULL,
	SISStudentID int NULL,
	EntryDate datetime NULL,
	PRIMARY KEY (SpecialProgramID)
	);
CREATE TABLE factStandardizedTestDomainScore(
	StandardizedTestDomainScoreID int NOT NULL,
	StandardizedTestScoreID int NULL,
	StandardizedTestDomainID int NULL,
	RawScore numeric(10, 2) NULL,
	PossibleRawScore numeric(10, 2) NULL,
	PRIMARY KEY (StandardizedTestDomainScoreID)
	);
CREATE TABLE factStandardizedTestScore(
	StandardizedTestScoreID int NOT NULL,
	StudentID int NULL,
	SISStudentID int NULL,
	TestDate datetime NULL,
	SubjectID int NULL,
	RawScore numeric(10, 2) NULL,
	PossibleRawScore numeric(10, 2) NULL,
	ScaledScore numeric(10, 2) NULL,
	PossibleScaledScore numeric(10, 2) NULL,
	PerformanceLevel numeric(10, 2) NULL,
	Lexile nvarchar(50) NULL,
	LatestTest int NULL,
	PRIMARY KEY (StandardizedTestScoreID)
	);
CREATE TABLE factStudentCourse(
	StudentCourseID int NOT NULL AUTO_INCREMENT,
	StudentID int NULL,
	SISStudentID int NULL,
	CourseID int NULL,
	StaffID int NULL,
	FacilityID int NULL,
	PeriodID int NULL,
	CourseDate datetime NULL,
	EnrollmentDate datetime NULL,
	EnrollmentCodeID int NULL,
	WithdrawalDate datetime NULL,
	WithdrawalCodeID int NULL,
	GradeLevel nvarchar(10) NULL,
	PRIMARY KEY (StudentCourseID)
	);
CREATE TABLE factStudentCourseGrade(
	StudentCourseGradeID int NOT NULL AUTO_INCREMENT,
	StudentCourseID int NULL,
	GradeTypeID int NULL,
	CreditAttempted numeric(10, 2) NULL,
	CreditGiven numeric(10, 2) NULL,
	NumericGrade numeric(10, 2) NULL,
	AlphaGrade nvarchar(5) NULL,
	AlphaNumericGrade numeric(10, 2) NULL,
	PRIMARY KEY (StudentCourseGradeID)
	);
CREATE TABLE tempStaffSubject(
	SubjectID int NOT NULL,
	StaffID int NOT NULL
);
ALTER TABLE dimCourse ADD CONSTRAINT dimSubject_dimCourse_FK1 FOREIGN KEY(SubjectID)
REFERENCES dimSubject (SubjectID);

ALTER TABLE dimStaff ADD  CONSTRAINT dimFacility_dimStaff_FK1 FOREIGN KEY(PrimaryFacilityID)
REFERENCES dimFacility (FacilityID);

ALTER TABLE dimStandardizedTestDomain ADD  CONSTRAINT dimSubject_dimStandardizedTestDomain_FK1 FOREIGN KEY(SubjectID)
REFERENCES dimSubject (SubjectID);

ALTER TABLE dimStudent ADD  CONSTRAINT dimAssignment_dimStudent_FK1 FOREIGN KEY(AssignmentID)
REFERENCES dimAssignment (AssignmentID);

ALTER TABLE dimStudent ADD  CONSTRAINT dimDate_dimStudent_FK1 FOREIGN KEY(EnrollmentDate)
REFERENCES dimDate (DatePK);

ALTER TABLE dimStudent ADD  CONSTRAINT dimDate_dimStudent_FK2 FOREIGN KEY(WithdrawalDate)
REFERENCES dimDate (DatePK);

ALTER TABLE dimStudent ADD  CONSTRAINT dimDate_dimStudent_FK3 FOREIGN KEY(BirthDate)
REFERENCES dimDate (DatePK);

ALTER TABLE dimStudent ADD  CONSTRAINT dimEnrollmentCode_dimStudent_FK1 FOREIGN KEY(EnrollmentCodeID)
REFERENCES dimEnrollmentCode (EnrollmentCodeID);

ALTER TABLE dimStudent ADD  CONSTRAINT dimFacility_dimStudent_FK1 FOREIGN KEY(FacilityID)
REFERENCES dimFacility (FacilityID);

ALTER TABLE dimStudent ADD  CONSTRAINT dimStaff_dimStudent_FK1 FOREIGN KEY(HomeroomStaffID)
REFERENCES dimStaff (StaffID);

ALTER TABLE dimStudent ADD  CONSTRAINT dimWithdrawalCode_dimStudent_FK1 FOREIGN KEY(WithdrawalCodeID)
REFERENCES dimWithdrawalCode (WithdrawalCodeID);

ALTER TABLE factAbsence ADD  CONSTRAINT dimAbsenceCode_factAbsence_FK1 FOREIGN KEY(AbsenceCodeID)
REFERENCES dimAbsenceCode (AbsenceCodeID);

ALTER TABLE factAbsence ADD  CONSTRAINT dimDate_factAbsence_FK1 FOREIGN KEY(AbsenceDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factAbsence ADD  CONSTRAINT dimFacility_factAbsence_FK1 FOREIGN KEY(FacilityID)
REFERENCES dimFacility (FacilityID);

ALTER TABLE factAbsence ADD  CONSTRAINT dimStaff_factAbsence_FK1 FOREIGN KEY(StaffID)
REFERENCES dimStaff (StaffID);

ALTER TABLE factAbsence ADD  CONSTRAINT dimStudent_factAbsence_FK1 FOREIGN KEY(StudentID)
REFERENCES dimStudent (StudentID);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimDate_factDiscipline_FK1 FOREIGN KEY(EventDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimDate_factDiscipline_FK2 FOREIGN KEY(ActionDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimDate_factDiscipline_FK3 FOREIGN KEY(ResolutionDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimDisciplineActionCode_factDiscipline_FK1 FOREIGN KEY(DisciplineActionCodeID)
REFERENCES dimDisciplineActionCode (DisciplineActionCodeID);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimDisciplineEventCode_factDiscipline_FK1 FOREIGN KEY(DisciplineEventCodeID)
REFERENCES dimDisciplineEventCode (DisciplineEventCodeID);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimFacility_factDiscipline_FK1 FOREIGN KEY(EventFacilityID)
REFERENCES dimFacility (FacilityID);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimStaff_factDiscipline_FK1 FOREIGN KEY(EventReportingStaffID)
REFERENCES dimStaff (StaffID);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimStaff_factDiscipline_FK2 FOREIGN KEY(ActionStaffID)
REFERENCES dimStaff (StaffID);

ALTER TABLE factDiscipline ADD  CONSTRAINT dimStudent_factDiscipline_FK1 FOREIGN KEY(StudentID)
REFERENCES dimStudent (StudentID);

ALTER TABLE factHSGTDomainScore ADD  CONSTRAINT FK_factHSGTDomainScore_dimHSGTDomain FOREIGN KEY(HSGTDomainID)
REFERENCES dimHSGTDomain (HSGTDomainID);

ALTER TABLE factHSGTDomainScore ADD  CONSTRAINT FK_factHSGTDomainScore_factHSGTScore FOREIGN KEY(HSGTScoreID)
REFERENCES factHSGTScore (HSGTScoreID);

ALTER TABLE factHSGTScore ADD  CONSTRAINT FK_factHSGTScore_dimDate FOREIGN KEY(TestDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factHSGTScore ADD  CONSTRAINT FK_factHSGTScore_dimStudent FOREIGN KEY(StudentID)
REFERENCES dimStudent (StudentID);

ALTER TABLE factHSGTScore ADD  CONSTRAINT FK_factHSGTScore_dimSubject FOREIGN KEY(SubjectID)
REFERENCES dimSubject (SubjectID);

ALTER TABLE factSchoolKPI ADD  CONSTRAINT FK_factSchoolKPI_dimDate FOREIGN KEY(EffectiveDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factSchoolKPI ADD  CONSTRAINT FK_factSchoolKPI_dimFacility FOREIGN KEY(FacilityID)
REFERENCES dimFacility (FacilityID);

ALTER TABLE factSpecialProgram ADD  CONSTRAINT dimDate_factSpecialProgram_FK1 FOREIGN KEY(EntryDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factSpecialProgram ADD  CONSTRAINT dimSpecialProgram_factSpecialProgram_FK1 FOREIGN KEY(ProgramID)
REFERENCES dimSpecialProgram (ProgramID);

ALTER TABLE factSpecialProgram ADD  CONSTRAINT dimStudent_factSpecialProgram_FK1 FOREIGN KEY(StudentID)
REFERENCES dimStudent (StudentID);

ALTER TABLE factStandardizedTestDomainScore ADD  CONSTRAINT dimStandardizedTestDomain_factStandardizedTestDomainScore_FK1 FOREIGN KEY(StandardizedTestDomainID)
REFERENCES dimStandardizedTestDomain (StandardizedTestDomainID);

ALTER TABLE factStandardizedTestDomainScore ADD  CONSTRAINT factStandardizedTestScore_factStandardizedTestDomainScore_FK1 FOREIGN KEY(StandardizedTestScoreID)
REFERENCES factStandardizedTestScore (StandardizedTestScoreID);

ALTER TABLE factStandardizedTestScore ADD  CONSTRAINT dimDate_factStandardizedTestScore_FK1 FOREIGN KEY(TestDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factStandardizedTestScore ADD  CONSTRAINT dimStudent_factStandardizedTestScore_FK1 FOREIGN KEY(StudentID)
REFERENCES dimStudent (StudentID);

ALTER TABLE factStandardizedTestScore ADD  CONSTRAINT dimSubject_factStandardizedTestScore_FK1 FOREIGN KEY(SubjectID)
REFERENCES dimSubject (SubjectID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimCourse_factStudentCourse_FK1 FOREIGN KEY(CourseID)
REFERENCES dimCourse (CourseID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimDate_factStudentCourse_FK1 FOREIGN KEY(CourseDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimDate_factStudentCourse_FK2 FOREIGN KEY(EnrollmentDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimDate_factStudentCourse_FK3 FOREIGN KEY(WithdrawalDate)
REFERENCES dimDate (DatePK);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimEnrollmentCode_factStudentCourse_FK1 FOREIGN KEY(EnrollmentCodeID)
REFERENCES dimEnrollmentCode (EnrollmentCodeID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimFacility_factStudentCourse_FK1 FOREIGN KEY(FacilityID)
REFERENCES dimFacility (FacilityID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimPeriod_factStudentCourse_FK1 FOREIGN KEY(PeriodID)
REFERENCES dimPeriod (PeriodID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimStaff_factStudentCourse_FK1 FOREIGN KEY(StaffID)
REFERENCES dimStaff (StaffID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimStudent_factStudentCourse_FK1 FOREIGN KEY(StudentID)
REFERENCES dimStudent (StudentID);

ALTER TABLE factStudentCourse ADD  CONSTRAINT dimWithdrawalCode_factStudentCourse_FK1 FOREIGN KEY(WithdrawalCodeID)
REFERENCES dimWithdrawalCode (WithdrawalCodeID);

ALTER TABLE factStudentCourseGrade ADD  CONSTRAINT dimGradeType_factStudentCourseGrade_FK1 FOREIGN KEY(GradeTypeID)
REFERENCES dimGradeType (GradeTypeID);

ALTER TABLE factStudentCourseGrade ADD  CONSTRAINT factStudentCourse_factStudentCourseGrade_FK1 FOREIGN KEY(StudentCourseID)
REFERENCES factStudentCourse (StudentCourseID);
