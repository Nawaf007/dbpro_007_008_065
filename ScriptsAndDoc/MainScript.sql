USE [DB34]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Gender] [int] NOT NULL,
	[Admin] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SCId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[Weightage] [int] NOT NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Class] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exam]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SCId] [int] NOT NULL,
	[ExamType] [int] NOT NULL,
	[ExamDate] [datetime] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[Weightage] [int] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fees]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[Class] [int] NOT NULL,
 CONSTRAINT [PK_Fees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeesStudent]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeesStudent](
	[FeeId] [int] NOT NULL,
	[StudentId] [nvarchar](128) NOT NULL,
	[AmountPaid] [int] NOT NULL,
	[SubmitDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nchar](20) NOT NULL,
	[Values] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LookupCategory]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupCategory](
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Request]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[AspId] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaryPaid]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPaid](
	[TeacherId] [nvarchar](128) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SCTime]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCTime](
	[SectionId] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[TimeOfDay] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MaxCount] [int] NOT NULL,
	[Class] [int] NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SectionCourse]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[TeacherId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_SectionCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SectionStudent]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionStudent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [int] NOT NULL,
	[StudentId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_SectionStudent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SSAssignment]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSAssignment](
	[AssignmentId] [int] NOT NULL,
	[SSId] [int] NOT NULL,
	[ObtainedMarks] [int] NOT NULL,
	[FilePath] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SSExam]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSExam](
	[SSId] [int] NOT NULL,
	[ExamId] [int] NOT NULL,
	[ObtainedMarks] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [nvarchar](128) NOT NULL,
	[EnrollementDate] [datetime] NOT NULL,
	[RegistrationNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[AttendanceId] [int] NOT NULL,
	[StudentId] [nvarchar](128) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [nvarchar](128) NOT NULL,
	[Salary] [int] NULL,
 CONSTRAINT [PK_dbo.Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherAttendance]    Script Date: 4/13/2019 3:15:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherAttendance](
	[AttendanceId] [int] NOT NULL,
	[TeacherId] [nvarchar](128) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Lookup] FOREIGN KEY([Gender])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Lookup]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Lookup]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_SectionCourse] FOREIGN KEY([SCId])
REFERENCES [dbo].[SectionCourse] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_SectionCourse]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Lookup] FOREIGN KEY([Type])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Lookup]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Lookup]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Lookup1] FOREIGN KEY([Class])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Lookup1]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Lookup] FOREIGN KEY([ExamType])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Lookup]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_SectionCourse] FOREIGN KEY([SCId])
REFERENCES [dbo].[SectionCourse] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_SectionCourse]
GO
ALTER TABLE [dbo].[Fees]  WITH CHECK ADD  CONSTRAINT [FK_Fees_Lookup] FOREIGN KEY([Class])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Fees] CHECK CONSTRAINT [FK_Fees_Lookup]
GO
ALTER TABLE [dbo].[FeesStudent]  WITH CHECK ADD  CONSTRAINT [FK_FeesStudent_Fees] FOREIGN KEY([FeeId])
REFERENCES [dbo].[Fees] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeesStudent] CHECK CONSTRAINT [FK_FeesStudent_Fees]
GO
ALTER TABLE [dbo].[FeesStudent]  WITH CHECK ADD  CONSTRAINT [FK_FeesStudent_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeesStudent] CHECK CONSTRAINT [FK_FeesStudent_Student]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_AspNetUsers] FOREIGN KEY([AspId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_AspNetUsers]
GO
ALTER TABLE [dbo].[SalaryPaid]  WITH CHECK ADD  CONSTRAINT [FK_SalaryPaid_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[SalaryPaid] CHECK CONSTRAINT [FK_SalaryPaid_Lookup]
GO
ALTER TABLE [dbo].[SalaryPaid]  WITH CHECK ADD  CONSTRAINT [FK_SalaryPaid_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalaryPaid] CHECK CONSTRAINT [FK_SalaryPaid_Teacher]
GO
ALTER TABLE [dbo].[SCTime]  WITH CHECK ADD  CONSTRAINT [FK_SCTime_Lookup] FOREIGN KEY([DayOfWeek])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[SCTime] CHECK CONSTRAINT [FK_SCTime_Lookup]
GO
ALTER TABLE [dbo].[SCTime]  WITH CHECK ADD  CONSTRAINT [FK_SCTime_SectionCourse] FOREIGN KEY([SectionId])
REFERENCES [dbo].[SectionCourse] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SCTime] CHECK CONSTRAINT [FK_SCTime_SectionCourse]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Lookup] FOREIGN KEY([Class])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Lookup]
GO
ALTER TABLE [dbo].[SectionCourse]  WITH CHECK ADD  CONSTRAINT [FK_SectionCourse_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SectionCourse] CHECK CONSTRAINT [FK_SectionCourse_Course]
GO
ALTER TABLE [dbo].[SectionCourse]  WITH CHECK ADD  CONSTRAINT [FK_SectionCourse_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SectionCourse] CHECK CONSTRAINT [FK_SectionCourse_Section]
GO
ALTER TABLE [dbo].[SectionCourse]  WITH CHECK ADD  CONSTRAINT [FK_SectionCourse_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SectionCourse] CHECK CONSTRAINT [FK_SectionCourse_Teacher]
GO
ALTER TABLE [dbo].[SectionStudent]  WITH CHECK ADD  CONSTRAINT [FK_SectionStudent_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SectionStudent] CHECK CONSTRAINT [FK_SectionStudent_Section]
GO
ALTER TABLE [dbo].[SectionStudent]  WITH CHECK ADD  CONSTRAINT [FK_SectionStudent_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SectionStudent] CHECK CONSTRAINT [FK_SectionStudent_Student]
GO
ALTER TABLE [dbo].[SSAssignment]  WITH CHECK ADD  CONSTRAINT [FK_SSAssignment_Assignment] FOREIGN KEY([AssignmentId])
REFERENCES [dbo].[Assignment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SSAssignment] CHECK CONSTRAINT [FK_SSAssignment_Assignment]
GO
ALTER TABLE [dbo].[SSAssignment]  WITH CHECK ADD  CONSTRAINT [FK_SSAssignment_SectionStudent] FOREIGN KEY([SSId])
REFERENCES [dbo].[SectionStudent] ([Id])
GO
ALTER TABLE [dbo].[SSAssignment] CHECK CONSTRAINT [FK_SSAssignment_SectionStudent]
GO
ALTER TABLE [dbo].[SSExam]  WITH CHECK ADD  CONSTRAINT [FK_SSExam_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SSExam] CHECK CONSTRAINT [FK_SSExam_Exam]
GO
ALTER TABLE [dbo].[SSExam]  WITH CHECK ADD  CONSTRAINT [FK_SSExam_SectionStudent] FOREIGN KEY([SSId])
REFERENCES [dbo].[SectionStudent] ([Id])
GO
ALTER TABLE [dbo].[SSExam] CHECK CONSTRAINT [FK_SSExam_SectionStudent]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_AspNetUsers]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Attendance] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[Attendance] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Attendance]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Student]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Teacher_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_dbo.Teacher_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD  CONSTRAINT [FK_TeacherAttendance_Attendance] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[Attendance] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherAttendance] CHECK CONSTRAINT [FK_TeacherAttendance_Attendance]
GO
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD  CONSTRAINT [FK_TeacherAttendance_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[TeacherAttendance] CHECK CONSTRAINT [FK_TeacherAttendance_Lookup]
GO
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD  CONSTRAINT [FK_TeacherAttendance_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherAttendance] CHECK CONSTRAINT [FK_TeacherAttendance_Teacher]
GO
