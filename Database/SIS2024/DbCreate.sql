-- CREATE DATABASE PS_2024_S2;
-- GO
USE [PS_2024_S2]
GO
/****** Object:  Table [dbo].[AcademicYear]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AcademicYear]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AcademicYear](
	[AcademicYearId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[StopDate] [datetime2](7) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Academic__C54C7A018D337357] PRIMARY KEY CLUSTERED 
(
	[AcademicYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Concept]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Concept]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Concept](
	[ConceptId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Concept__515AA756D073D2FB] PRIMARY KEY CLUSTERED 
(
	[ConceptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](125) NOT NULL,
	[CourseTypeId] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[Weight] [nvarchar](125) NOT NULL,
	[HoursTotal] [int] NOT NULL,
	[HoursContact] [int] NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Course__C92D71A70773F380] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course_CourseGroup]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_CourseGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course_CourseGroup](
	[CourseId] [int] NOT NULL,
	[CourseGroupId] [int] NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Course_CourseGroup] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[CourseGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course_EducationFormat]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_EducationFormat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course_EducationFormat](
	[CourseId] [int] NOT NULL,
	[EducationFormatId] [int] NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Course_EducationFormat] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[EducationFormatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course_EvaluationFormat]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_EvaluationFormat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course_EvaluationFormat](
	[CourseId] [int] NOT NULL,
	[EvaluationFormatId] [int] NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Course_EvaluationFormat] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[EvaluationFormatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course_IOEM]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_IOEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course_IOEM](
	[CourseId] [int] NOT NULL,
	[IOEMId] [int] NOT NULL,
	[Score] [int] NOT NULL DEFAULT 10,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Course_IOEM] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[IOEMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course_SoftSkills]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_SoftSkills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course_SoftSkills](
	[CourseId] [int] NOT NULL,
	[SoftSkillsId] [int] NOT NULL,
	[Score] [int] NOT NULL DEFAULT 10,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
 CONSTRAINT [PK_Course_SoftSkills] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[SoftSkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CourseGroup]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CourseGroup](
	[CourseGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__CourseGr__E9E863F031BF4907] PRIMARY KEY CLUSTERED 
(
	[CourseGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CourseType]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CourseType](
	[CourseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](512) NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__CourseTy__817369724699907A] PRIMARY KEY CLUSTERED 
(
	[CourseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EducationFormat]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EducationFormat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EducationFormat](
	[EducationFormatId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Onderwij__3214EC07E6E39A1C] PRIMARY KEY CLUSTERED 
(
	[EducationFormatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EvaluationFormat]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EvaluationFormat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EvaluationFormat](
	[EvaluationFormatId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Abbreviation] [nvarchar](max) NULL,
 CONSTRAINT [PK__Evaluati__3214EC070E307531] PRIMARY KEY CLUSTERED 
(
	[EvaluationFormatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Info]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Info](
	[InfoId] [int] IDENTITY(1,1) NOT NULL,
	[ConceptId] [int] NOT NULL,
	[RefKeyId] [int] NOT NULL,
	[InfoTypeId] [int] NOT NULL,
	[Data] [nvarchar](max) NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Info__4DEC9D7ADA6CB2F2] PRIMARY KEY CLUSTERED 
(
	[InfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InfoType]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InfoType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InfoType](
	[InfoTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__InfoType__E94AB52429EDAC83] PRIMARY KEY CLUSTERED 
(
	[InfoTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IOEM]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IOEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IOEM](
	[IOEMId] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](125) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](125) NULL,
	[Detail] [nvarchar](512) NULL,
	[Remark] [nvarchar](max) NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__IOEM__AA343AAE92DB32A2] PRIMARY KEY CLUSTERED 
(
	[IOEMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Person]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[SortName] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NULL,
	[Mobile] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[AddressId] [int] NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Person__AA2FFB856CD3F058] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RegistrationState]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistrationState]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistrationState](
	[RegistrationStateId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Registra__7504BB5A233D8B00] PRIMARY KEY CLUSTERED 
(
	[RegistrationStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SoftSkills]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoftSkills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SoftSkills](
	[SoftSkillsId] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](125) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](125) NULL,
	[Detail] [nvarchar](512) NULL,
	[Remark] [nvarchar](max) NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[SoftskillsTypeId] [int] NOT NULL,
 CONSTRAINT [PK__SoftSkil__B03442C025766256] PRIMARY KEY CLUSTERED 
(
	[SoftSkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SoftSkillsType]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoftSkillsType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SoftSkillsType](
	[SoftSkillsTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](125) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__SoftSkil__22648C92840279AF] PRIMARY KEY CLUSTERED 
(
	[SoftSkillsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Abbreviation] [nvarchar](10) NOT NULL,
	[Mobile] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[AssignmentPercentage] [int] NOT NULL,
	[TeacherTypeId] [int] NOT NULL,
	[RegistrationStateId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Teacher__EDF2596461B3021C] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Teacher_TeacherGroup]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher_TeacherGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Teacher_TeacherGroup](
	[Teacher_TeacherGroupId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherGroupId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Teacher___462932EC660DC26F] PRIMARY KEY CLUSTERED 
(
	[Teacher_TeacherGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TeacherGroup]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeacherGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TeacherGroup](
	[TeacherGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TeacherG__177624182CB4BCE3] PRIMARY KEY CLUSTERED 
(
	[TeacherGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TeacherType]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeacherType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TeacherType](
	[TeacherTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AUTO_TIME_CREATION] [datetime2](7) NOT NULL,
	[AUTO_TIME_UPDATE] [datetime2](7) NOT NULL,
	[AUTO_UPDATE_COUNT] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TeacherT__9EF526A7DE9C31E7] PRIMARY KEY CLUSTERED 
(
	[TeacherTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[AcademicYear] ON 
GO
INSERT [dbo].[AcademicYear] ([AcademicYearId], [Description], [StartDate], [StopDate], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'2023-2024', CAST(N'2023-09-29T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-15T11:08:26.7233333' AS DateTime2), CAST(N'2024-04-15T11:08:26.7233333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[AcademicYear] ([AcademicYearId], [Description], [StartDate], [StopDate], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'2à24-2025', CAST(N'2024-09-29T00:00:00.0000000' AS DateTime2), CAST(N'2025-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-15T11:08:59.3233333' AS DateTime2), CAST(N'2024-04-15T11:08:59.3233333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[AcademicYear] OFF
GO
SET IDENTITY_INSERT [dbo].[Concept] ON 
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'AcademicYear', N'AcademicYear table', CAST(N'2024-04-15T11:38:18.9233333' AS DateTime2), CAST(N'2024-04-15T11:38:18.9233333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Concept', N'Concept table', CAST(N'2024-04-15T11:38:29.5233333' AS DateTime2), CAST(N'2024-04-15T11:38:29.5233333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (3, N'Course', N'Course table', CAST(N'2024-04-15T11:38:37.1900000' AS DateTime2), CAST(N'2024-04-15T11:38:37.1900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (4, N'CourseGroup', N'CourseGroup table', CAST(N'2024-04-15T11:38:48.5733333' AS DateTime2), CAST(N'2024-04-15T11:38:48.5733333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (5, N'CourseType', N'CourseType table', CAST(N'2024-04-15T11:38:58.7733333' AS DateTime2), CAST(N'2024-04-15T11:38:58.7733333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (6, N'EvaluationFormat', N'EvaluationFormat table', CAST(N'2024-04-15T11:39:10.6566667' AS DateTime2), CAST(N'2024-04-15T11:39:10.6566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (7, N'Info', N'Info table', CAST(N'2024-04-15T11:39:22.7766667' AS DateTime2), CAST(N'2024-04-15T11:39:22.7766667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'InfoType', N'InfoType table', CAST(N'2024-04-15T11:39:31.6066667' AS DateTime2), CAST(N'2024-04-15T11:39:31.6066667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (9, N'IOEM', N'IOEM table', CAST(N'2024-04-15T11:39:42.9300000' AS DateTime2), CAST(N'2024-04-15T11:39:42.9300000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (10, N'EducationFormat', N'EducationFormat table', CAST(N'2024-04-15T11:39:56.5933333' AS DateTime2), CAST(N'2024-04-15T11:39:56.5933333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'Person', N'Person table', CAST(N'2024-04-15T11:40:05.7466667' AS DateTime2), CAST(N'2024-04-15T11:40:05.7466667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'RegistrationState', N'RegistrationState table', CAST(N'2024-04-15T11:40:21.9133333' AS DateTime2), CAST(N'2024-04-15T11:40:21.9133333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (13, N'SoftSkills', N'SoftSkills table', CAST(N'2024-04-15T11:40:31.7833333' AS DateTime2), CAST(N'2024-04-15T11:40:31.7833333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (14, N'SoftSkillsType', N'SoftSkillsType table', CAST(N'2024-04-15T11:40:43.8633333' AS DateTime2), CAST(N'2024-04-15T11:40:43.8633333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (15, N'Teacher', N'Teacher table', CAST(N'2024-04-15T11:40:51.8933333' AS DateTime2), CAST(N'2024-04-15T11:40:51.8933333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (16, N'Teacher_TeacherGroup', N'Teacher_TeacherGroup table', CAST(N'2024-04-15T11:41:08.5133333' AS DateTime2), CAST(N'2024-04-15T11:41:08.5133333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (17, N'TeacherGroup', N'Teacher_Group', CAST(N'2024-04-15T11:41:19.9433333' AS DateTime2), CAST(N'2024-04-15T11:41:19.9433333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (18, N'TeacherType', N'TeacherType table', CAST(N'2024-04-15T11:41:34.9300000' AS DateTime2), CAST(N'2024-04-15T11:41:34.9300000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (19, N'Topic', N'Topic table', CAST(N'2024-04-15T11:41:47.0933333' AS DateTime2), CAST(N'2024-04-15T11:41:47.0933333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (20, N'TopicCategory', N'TopicCateogry table', CAST(N'2024-04-15T11:41:59.5866667' AS DateTime2), CAST(N'2024-04-15T11:41:59.5866667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Concept] ([ConceptId], [TableName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (21, N'Course_CourseGroup', N'Course_CourseGroup table', CAST(N'2024-04-15T11:44:50.1800000' AS DateTime2), CAST(N'2024-04-15T11:44:50.1800000' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Concept] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (4, N'Programmeren Basis', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T13:57:56.8733333' AS DateTime2), CAST(N'2024-04-14T13:57:56.8733333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (6, N'Software Ontwerp 1', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T13:58:45.4366667' AS DateTime2), CAST(N'2024-04-15T11:26:55.7100000' AS DateTime2), 1, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (7, N'Digitale Werkomgeving 1', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T13:59:05.4466667' AS DateTime2), CAST(N'2024-04-14T13:59:05.4466667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'Databanken', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:00:08.0000000' AS DateTime2), CAST(N'2024-04-14T14:00:08.0000000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'Web 1', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:00:41.6100000' AS DateTime2), CAST(N'2024-04-14T14:00:41.6100000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'Digitale Werkomgeving 2', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:01:05.9200000' AS DateTime2), CAST(N'2024-04-14T14:01:05.9200000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (13, N'Web 2', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:01:18.6366667' AS DateTime2), CAST(N'2024-04-14T14:01:18.6366667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (16, N'Programmeren Gevorderd 1', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:01:47.8066667' AS DateTime2), CAST(N'2024-04-15T11:28:05.0633333' AS DateTime2), 1, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (17, N'Communicatietechnieken', 2, 0, N'0', 0, 0, CAST(N'2024-04-14T14:02:09.1700000' AS DateTime2), CAST(N'2024-04-14T14:50:39.1333333' AS DateTime2), 1, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (18, N'Software Ontwerp 2', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:02:22.9100000' AS DateTime2), CAST(N'2024-04-15T11:28:23.1433333' AS DateTime2), 1, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (19, N'Projectwerk 1', 2, 0, N'0', 0, 0, CAST(N'2024-04-14T14:02:33.2100000' AS DateTime2), CAST(N'2024-04-15T11:28:54.1900000' AS DateTime2), 2, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (28, N'Organisatie', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:46:44.5766667' AS DateTime2), CAST(N'2024-04-14T14:46:44.5766667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (29, N'Web 3', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:47:03.5033333' AS DateTime2), CAST(N'2024-04-14T14:47:03.5033333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (30, N'Programmeren Gevorderd 2', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:47:16.8100000' AS DateTime2), CAST(N'2024-04-15T11:29:00.1433333' AS DateTime2), 1, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (31, N'Programmeren Gevorderd 3', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:47:40.2500000' AS DateTime2), CAST(N'2024-04-15T11:29:02.5666667' AS DateTime2), 1, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (32, N'Mobile', 1, 0, N'0', 0, 0, CAST(N'2024-04-14T14:48:02.9866667' AS DateTime2), CAST(N'2024-04-14T14:48:02.9866667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (33, N'Stage', 2, 0, N'0', 0, 0, CAST(N'2024-04-14T14:48:09.7700000' AS DateTime2), CAST(N'2024-04-14T14:50:22.7333333' AS DateTime2), 1, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (34, N'Graduaatsproef', 2, 0, N'0', 0, 0, CAST(N'2024-04-14T14:48:32.5433333' AS DateTime2), CAST(N'2024-04-15T11:29:16.8866667' AS DateTime2), 4, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (35, N'Nieuwe technologie', 2, 0, N'0', 0, 0, CAST(N'2024-04-14T14:48:46.7400000' AS DateTime2), CAST(N'2024-04-15T11:30:26.7200000' AS DateTime2), 2, 1)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (36, N'Analyse', 1, 0, N'0', 0, 0, CAST(N'2024-04-15T11:26:47.1566667' AS DateTime2), CAST(N'2024-04-15T11:26:47.1566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (37, N'Programmeren Gevorderd', 1, 0, N'0', 0, 0, CAST(N'2024-04-15T11:27:14.3633333' AS DateTime2), CAST(N'2024-04-15T11:27:14.3633333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (38, N'Programmeren Specialisatie', 1, 0, N'0', 0, 0, CAST(N'2024-04-15T11:27:25.1366667' AS DateTime2), CAST(N'2024-04-15T11:27:25.1366667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (39, N'Web 4', 1, 0, N'0', 0, 0, CAST(N'2024-04-15T11:27:55.0900000' AS DateTime2), CAST(N'2024-04-15T11:27:55.0900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (40, N'Ontwerp', 1, 0, N'0', 0, 0, CAST(N'2024-04-15T11:28:17.3566667' AS DateTime2), CAST(N'2024-04-15T11:28:17.3566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (41, N'Werkveldcontact en nieuwe technologie', 2, 0, N'0', 0, 0, CAST(N'2024-04-15T11:28:48.8300000' AS DateTime2), CAST(N'2024-04-15T11:28:48.8300000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (42, N'Projectwerk', 2, 0, N'0', 0, 0, CAST(N'2024-04-15T11:29:43.1100000' AS DateTime2), CAST(N'2024-04-15T11:30:11.1800000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[Course] ([CourseId], [Name], [CourseTypeId], [Points], [Weight], [HoursTotal], [HoursContact], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (43, N'Projectwerk 2', 2, 0, N'0', 0, 0, CAST(N'2024-04-15T11:29:57.5100000' AS DateTime2), CAST(N'2024-04-15T11:29:57.5100000' AS DateTime2), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseGroup] ON 
GO
INSERT [dbo].[CourseGroup] ([CourseGroupId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'C#', CAST(N'2024-04-15T11:31:07.7233333' AS DateTime2), CAST(N'2024-04-15T11:31:07.7233333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[CourseGroup] ([CourseGroupId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Web', CAST(N'2024-04-15T11:31:19.4766667' AS DateTime2), CAST(N'2024-04-15T11:31:19.4766667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[CourseGroup] ([CourseGroupId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (3, N'Werkplekleren', CAST(N'2024-04-15T11:31:28.2633333' AS DateTime2), CAST(N'2024-04-15T11:31:28.2633333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[CourseGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseType] ON 
GO
INSERT [dbo].[CourseType] ([CourseTypeId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Normaal', CAST(N'2024-04-14T13:57:18.8933333' AS DateTime2), CAST(N'2024-04-14T14:49:37.0300000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[CourseType] ([CourseTypeId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Werkplekleren', CAST(N'2024-04-14T13:57:26.1966667' AS DateTime2), CAST(N'2024-04-14T14:49:40.3533333' AS DateTime2), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[CourseType] OFF
GO
SET IDENTITY_INSERT [dbo].[EducationFormat] ON 
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (3, N'Onderwijsleergesprek', N'Onderwijsleergesprek', CAST(N'2024-04-12T18:48:12.5866667' AS DateTime2), CAST(N'2024-04-12T18:48:12.5866667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (4, N'Peerteaching', N'Peerteaching', CAST(N'2024-04-12T18:48:23.5100000' AS DateTime2), CAST(N'2024-04-12T18:48:23.5100000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (5, N'Duaal leren', N'Duaal leren', CAST(N'2024-04-12T18:48:32.7066667' AS DateTime2), CAST(N'2024-04-12T18:48:32.7066667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (6, N'Activerend hoorcollege', N'Activerend hoorcollege', CAST(N'2024-04-12T18:48:48.6100000' AS DateTime2), CAST(N'2024-04-12T18:48:48.6100000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (7, N'Demonstratie', N'Demonstratie', CAST(N'2024-04-12T18:49:04.5066667' AS DateTime2), CAST(N'2024-04-12T18:49:04.5066667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'Lezing/getuigenis/gastspreker', N'Lezing/getuigenis/gastspreker', CAST(N'2024-04-12T18:49:26.8200000' AS DateTime2), CAST(N'2024-04-12T18:49:26.8200000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (9, N'Werkplekleren', N'Werkplekleren', CAST(N'2024-04-12T18:49:39.9566667' AS DateTime2), CAST(N'2024-04-12T18:49:39.9566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (10, N'Stage', N'Stage', CAST(N'2024-04-12T18:49:47.3300000' AS DateTime2), CAST(N'2024-04-12T18:49:47.3300000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'Excursie', N'Excursie', CAST(N'2024-04-12T18:49:58.4100000' AS DateTime2), CAST(N'2024-04-12T18:49:58.4100000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'Oefensessie', N'Oefensessie', CAST(N'2024-04-12T18:50:06.5633333' AS DateTime2), CAST(N'2024-04-12T18:50:06.5633333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (13, N'Opdracht', N'Opdracht', CAST(N'2024-04-12T18:50:13.6600000' AS DateTime2), CAST(N'2024-04-12T18:50:13.6600000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[EducationFormat] ([EducationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (14, N'Andere', N'Andere', CAST(N'2024-04-12T18:50:21.9833333' AS DateTime2), CAST(N'2024-04-12T18:50:21.9833333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[EducationFormat] OFF
GO
SET IDENTITY_INSERT [dbo].[EvaluationFormat] ON 
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (1, N'Geïntegreerde evaluatie', N'Geïntegreerde evaluatie', CAST(N'2024-04-12T18:51:01.0000000' AS DateTime2), CAST(N'2024-04-12T18:51:01.0000000' AS DateTime2), 0, 0, N'GEV')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (2, N'Gesprek op basis van functioneren van de student', N'Gesprek op basis van functioneren van de student', CAST(N'2024-04-12T18:51:25.0233333' AS DateTime2), CAST(N'2024-04-12T18:51:25.0233333' AS DateTime2), 0, 0, N'GFS')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (3, N'Logboek', N'Logboek', CAST(N'2024-04-12T18:51:33.6633333' AS DateTime2), CAST(N'2024-04-12T18:51:33.6633333' AS DateTime2), 0, 0, N'LGB')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (4, N'Mondeling examen', N'Mondeling examen', CAST(N'2024-04-12T18:51:47.9900000' AS DateTime2), CAST(N'2024-04-12T18:51:47.9900000' AS DateTime2), 0, 0, N'MNX')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (5, N'Observatie van functioneren van de student', N'Observatie van functioneren van de student', CAST(N'2024-04-12T18:52:09.1233333' AS DateTime2), CAST(N'2024-04-12T18:52:09.1233333' AS DateTime2), 0, 0, N'OFS')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (6, N'Ontwerp', N'Ontwerp', CAST(N'2024-04-12T18:52:18.8866667' AS DateTime2), CAST(N'2024-04-12T18:52:18.8866667' AS DateTime2), 0, 0, N'OWP')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (7, N'Paper', N'Paper', CAST(N'2024-04-12T18:52:30.4500000' AS DateTime2), CAST(N'2024-04-12T18:52:30.4500000' AS DateTime2), 0, 0, N'PPR')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (8, N'Presentatie', N'Presentatie', CAST(N'2024-04-12T18:52:46.4866667' AS DateTime2), CAST(N'2024-04-12T18:52:46.4866667' AS DateTime2), 0, 0, N'PRS')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (9, N'Portfolio', N'Portfolio', CAST(N'2024-04-12T18:52:59.2700000' AS DateTime2), CAST(N'2024-04-12T18:52:59.2700000' AS DateTime2), 0, 0, N'PRT')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (10, N'Schriftelijk examen', N'Schriftelijk examen', CAST(N'2024-04-12T18:53:14.4700000' AS DateTime2), CAST(N'2024-04-12T18:53:14.4700000' AS DateTime2), 0, 0, N'SHX')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (11, N'Verslag', N'Verslag', CAST(N'2024-04-12T18:53:24.9500000' AS DateTime2), CAST(N'2024-04-12T18:53:24.9500000' AS DateTime2), 0, 0, N'VLG')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (12, N'Vaardigheidstest', N'Vaardigheidstest', CAST(N'2024-04-12T18:53:46.5533333' AS DateTime2), CAST(N'2024-04-12T18:53:46.5533333' AS DateTime2), 0, 0, N'VRT')
GO
INSERT [dbo].[EvaluationFormat] ([EvaluationFormatId], [Name], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [Abbreviation]) VALUES (13, N'Andere', N'Andere', CAST(N'2024-04-12T18:54:05.2100000' AS DateTime2), CAST(N'2024-04-12T18:54:05.2100000' AS DateTime2), 0, 0, N'ZZAND')
GO
SET IDENTITY_INSERT [dbo].[EvaluationFormat] OFF
GO
SET IDENTITY_INSERT [dbo].[InfoType] ON 
GO
INSERT [dbo].[InfoType] ([InfoTypeId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Opmerking', CAST(N'2024-04-15T11:45:44.0566667' AS DateTime2), CAST(N'2024-04-15T11:45:44.0566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[InfoType] ([InfoTypeId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Taak', CAST(N'2024-04-15T11:45:49.3133333' AS DateTime2), CAST(N'2024-04-15T11:45:49.3133333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[InfoType] OFF
GO
SET IDENTITY_INSERT [dbo].[IOEM] ON 
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'A', N'Spreiding niet-periode gebonden evaluatie', N'Spreiding niet-periode gebonden evaluatie', NULL, NULL, CAST(N'2024-04-14T14:18:54.4500000' AS DateTime2), CAST(N'2024-04-14T14:18:54.4500000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'B', N'Spreiding stage', N'Spreiding stage', NULL, NULL, CAST(N'2024-04-14T14:19:08.1900000' AS DateTime2), CAST(N'2024-04-14T14:19:08.1900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (6, N'C', N'	De student krijgt de mogelijkheid om de deadline voor taken te verplaatsen, enkel na overleg met de betrokken docent.', N'Verplaatsen deadline taken', NULL, NULL, CAST(N'2024-04-14T14:19:37.4633333' AS DateTime2), CAST(N'2024-04-14T14:27:13.8333333' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (7, N'D', N'	De student krijgt de mogelijkheid tot het verplaatsen van evaluaties binnen het examenrooster. De student is zelf verantwoordelijk voor het tijdig aanvragen van de verplaatsing conform de richtlijnen en deadline die vóór elke examenperiode aan de studenten wordt meegedeeld.', N'Verplaatsen examen - binnen examenperiode', NULL, NULL, CAST(N'2024-04-14T14:20:01.9766667' AS DateTime2), CAST(N'2024-04-14T14:26:56.2300000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'E', N'Vertalend woordenboek', N'Vertalend woordenboek', NULL, NULL, CAST(N'2024-04-14T14:20:15.5600000' AS DateTime2), CAST(N'2024-04-14T14:20:15.5600000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (9, N'F', N'Zittende houding', N'Zittende houding', NULL, NULL, CAST(N'2024-04-14T14:20:28.0000000' AS DateTime2), CAST(N'2024-04-14T14:20:28.0000000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (10, N'G', N'De student heeft toestemming om het lokaal te verlaten, laattijdig toe te komen of het lokaal vroeger te verlaten omwille van activiteiten in kader van bijzonder statuut (topsport, mandaat, ondernemer).', N'Lokaal verlaten - statuut', NULL, NULL, CAST(N'2024-04-14T14:21:30.8600000' AS DateTime2), CAST(N'2024-04-14T14:27:06.6266667' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'H', N'Een afwezigheid voor evaluatie buiten het examenrooster kan gewettigd worden op basis van jouw bijzonder statuut. Extra attestering/bewijsstuk kan opgevraagd worden.', N'Gewettigde afwezigheid - les met evaluatie (speciaal statuut)', NULL, NULL, CAST(N'2024-04-14T14:22:10.4100000' AS DateTime2), CAST(N'2024-04-14T14:27:23.2633333' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'I', N'De student mag de presentatie van een opdracht voor zijn/haar lector geven (in het bijzijn van de groepsleden) en hoeft dus geen presentatie te geven voor de volledige klasgroep.', N'Presentatie - aangepaste regeling', NULL, NULL, CAST(N'2024-04-14T14:22:31.3500000' AS DateTime2), CAST(N'2024-04-14T14:28:36.3133333' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (14, N'J', N'	In de mate van het mogelijke en op vraag van de student wordt het goede verloop van de groepswerken opgevolgd (hulp bij toewijzen van een groep, vrijstellen van de rol van verslaggever,...)', N'Groepswerk', NULL, NULL, CAST(N'2024-04-14T14:22:44.0466667' AS DateTime2), CAST(N'2024-04-14T14:28:39.0100000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (16, N'K', N'	In de mate van het mogelijke wordt de student minder gevraagd om mondeling aan bod te komen en/of teksten voor te lezen.', N'Mondeling aan bod komen in de les', NULL, NULL, CAST(N'2024-04-14T14:23:37.1200000' AS DateTime2), CAST(N'2024-04-14T14:28:57.9800000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (17, N'L', N'	Bij schriftelijke evaluaties (incl. evaluaties op computer) krijgt de student 15 minuten extra tijd per evaluatieuur. Dit geldt zowel voor evaluaties binnen als buiten het examenrooster.', N'Extra tijd - schriftelijke evaluatie (15 min)', NULL, NULL, CAST(N'2024-04-14T14:23:56.6200000' AS DateTime2), CAST(N'2024-04-14T14:38:50.3333333' AS DateTime2), 4, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (18, N'M', N'	De evaluatie van een opleidingsonderdeel dat geen taal tot onderwerp heeft, gebeurt op basis van inhoud. Spelfouten en foutieve zinsconstructies worden niet in rekening gebracht tenzij anders gespecifieerd in de ECTS-fiche.', N'Spelling en zinsconstructies (geen taal)', NULL, NULL, CAST(N'2024-04-14T14:24:40.3700000' AS DateTime2), CAST(N'2024-04-14T14:29:22.0100000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (19, N'N', N'De student mag gebruik maken van oordopjes, niet-aangesloten koptelefoon... bij evaluaties binnen en buiten het examenrooster.', N'Hulpmiddelen - oordopjes, niet-aangesloten koptelefoon', NULL, NULL, CAST(N'2024-04-14T14:25:17.2466667' AS DateTime2), CAST(N'2024-04-14T14:29:27.8233333' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (20, N'O', N'	De student mag zijn/haar plaats in het leslokaal zelf kiezen.', N'Leslokaal - plaats', NULL, NULL, CAST(N'2024-04-14T14:25:36.3033333' AS DateTime2), CAST(N'2024-04-14T14:29:43.9700000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (22, N'P', N'Je mag afwezig zijn tijdens lessen indien de reden van afwezigheid verband houdt met jouw bijzonder statuut. Dit alleen tijdens lessen die geen evaluatie bevatten. Extra attestering kan steeds opgevraagd worden.', N'Gewettigde afwezigheid (speciaal statuut)', NULL, NULL, CAST(N'2024-04-14T14:27:58.7633333' AS DateTime2), CAST(N'2024-04-14T14:28:27.2700000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (25, N'Q', N'De student mag gebruik maken van een niet programmeerbare rekenmachine bij evaluatie van opleidingsonderdelen met wiskundige bewerkingen (tenzij anders gespecifieerd in de ECTS-fiche).', N'Examen - rekenmachine', NULL, NULL, CAST(N'2024-04-14T14:31:12.1466667' AS DateTime2), CAST(N'2024-04-14T14:34:02.2866667' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (26, N'R', N'	Bij mondelinge evaluaties krijgt de student (extra) voorbereidingstijd. De student neemt het initiatief om de betrokken docent te contacteren.', N'Extra tijd - mondeling', NULL, NULL, CAST(N'2024-04-14T14:31:42.2066667' AS DateTime2), CAST(N'2024-04-14T14:37:58.1600000' AS DateTime2), 2, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (27, N'S', N'Lesmateriaal (presentaties, hand-outs) wordt digitaal in de mate van het mogelijke vóór de les ter beschikking gesteld.', N'Digitale beschikbaarheid (lesmateriaal)', NULL, NULL, CAST(N'2024-04-14T14:32:51.0433333' AS DateTime2), CAST(N'2024-04-14T14:34:44.1000000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (29, N'T', N'De student mag zelf een plaats in het examenlokaal zelf kiezen.', N'Examen - plaats examenlokaal', NULL, NULL, CAST(N'2024-04-14T14:36:46.9533333' AS DateTime2), CAST(N'2024-04-14T14:37:54.9200000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (30, N'U', N'Bij mondelinge evaluaties of mondelinge voordrachten/opdrachten mag de student als eerste/laatste aan de beurt komen.', N'Examen/evaluaties - eerst/laatst aan de beurt', NULL, NULL, CAST(N'2024-04-14T14:37:05.9666667' AS DateTime2), CAST(N'2024-04-14T14:38:09.7000000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[IOEM] ([IOEMId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (31, N'V', N'De student mag na een schriftelijke evaluatie (incl. evaluatie op computer) met open vragen de antwoorden mondeling toelichten om eventuele onduidelijkheden weg te werken. Er kan geen nieuwe informatie worden toegevoegd.', N'Examen - mondeling overlopen van de antwoorden', NULL, NULL, CAST(N'2024-04-14T14:37:18.7333333' AS DateTime2), CAST(N'2024-04-14T14:38:28.2500000' AS DateTime2), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[IOEM] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Frederiek', N'De Wolf', N'DEWOLFFREDERIEK', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:05:32.8500000' AS DateTime2), CAST(N'2024-04-14T14:05:32.8500000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Yanic', N'Inghelbrecht', N'INGHELBRECHTYANIC', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:05:59.0800000' AS DateTime2), CAST(N'2024-04-14T14:05:59.0800000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (3, N'Eric', N'Juchtmans', N'JUCHTMANSERIC', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:06:15.1600000' AS DateTime2), CAST(N'2024-04-14T14:06:15.1600000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (4, N'Luc', N'Vervoort', N'VERVOORTLUC', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:06:26.1566667' AS DateTime2), CAST(N'2024-04-14T14:06:26.1566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (5, N'Ludwig', N'Stroobant', N'STROOBANTLUDWIG', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:06:41.6900000' AS DateTime2), CAST(N'2024-04-14T14:06:41.6900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (6, N'Marnick', N'De Grave', N'DEGRAVEMARNICK', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:06:57.4666667' AS DateTime2), CAST(N'2024-04-14T14:06:57.4666667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (7, N'Wim', N'Goedertier', N'GOEDERTIERWIM', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:07:15.7100000' AS DateTime2), CAST(N'2024-04-14T14:07:15.7100000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'Liese', N'Mahieu', N'MAHIEULIESE', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:07:37.2566667' AS DateTime2), CAST(N'2024-04-14T14:07:37.2566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (9, N'Koen', N'Verhoeyen', N'VERHOEYEN', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:07:51.8000000' AS DateTime2), CAST(N'2024-04-14T14:07:51.8000000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (10, N'Tom', N'Vande Wiele', N'VANDEWIELETOM', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:08:09.3933333' AS DateTime2), CAST(N'2024-04-14T14:08:09.3933333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'Ewout', N'Eetesonne', N'EETESONNEEWOUT', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:08:25.2900000' AS DateTime2), CAST(N'2024-04-14T14:08:25.2900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'Isabelle', N'Demeulenaere', N'DEMEULENAEREISABELLE', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:08:43.7666667' AS DateTime2), CAST(N'2024-04-14T14:08:43.7666667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (13, N'Wim', N'Delvaux', N'DELVAUXWIM', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:09:06.5433333' AS DateTime2), CAST(N'2024-04-14T14:09:06.5433333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (14, N'David', N'Breckx', N'BRECKXDAVID', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:09:19.5700000' AS DateTime2), CAST(N'2024-04-14T14:09:19.5700000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (15, N'Johan', N'Van Roste', N'VANROSTEJOHAN', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:09:39.2666667' AS DateTime2), CAST(N'2024-04-14T14:09:39.2666667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [SortName], [Phone], [Mobile], [Email], [AddressId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (16, N'Karel', N'Goossens', N'GOOSSENSKAREL', NULL, NULL, NULL, NULL, CAST(N'2024-04-14T14:10:01.3933333' AS DateTime2), CAST(N'2024-04-14T14:10:01.3933333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[RegistrationState] ON 
GO
INSERT [dbo].[RegistrationState] ([RegistrationStateId], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Registered', CAST(N'2024-04-14T14:12:42.9600000' AS DateTime2), CAST(N'2024-04-14T14:12:42.9600000' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[RegistrationState] OFF
GO
SET IDENTITY_INSERT [dbo].[SoftSkills] ON 
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (4, N'CEL', N'Loyaliteit', N'Loyaliteit', NULL, NULL, CAST(N'2024-04-15T07:40:21.2033333' AS DateTime2), CAST(N'2024-04-15T08:02:49.5200000' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (5, N'CEI', N'Integriteit', N'Integriteit', NULL, NULL, CAST(N'2024-04-15T07:40:33.0366667' AS DateTime2), CAST(N'2024-04-15T08:02:50.0200000' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (6, N'CEV', N'Verantwoordelijkheid', N'Verantwoordelijkheid', NULL, NULL, CAST(N'2024-04-15T07:40:45.8733333' AS DateTime2), CAST(N'2024-04-15T08:02:51.0566667' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (7, N'CEN', N'Nieuwsgierigheid', N'Nieuwsgierigheid', NULL, NULL, CAST(N'2024-04-15T07:41:00.9600000' AS DateTime2), CAST(N'2024-04-15T08:02:51.6266667' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (8, N'CEB', N'Betrouwbaarheid', N'Betrouwbaarheid', NULL, NULL, CAST(N'2024-04-15T07:41:14.4633333' AS DateTime2), CAST(N'2024-04-15T08:02:52.1700000' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (9, N'CEP', N'Professioneel bewustzijn', N'Professioneel bewustzijn', NULL, NULL, CAST(N'2024-04-15T07:41:30.7633333' AS DateTime2), CAST(N'2024-04-15T08:02:52.7400000' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (10, N'CER', N'Respect', N'Respect', NULL, NULL, CAST(N'2024-04-15T07:41:39.8533333' AS DateTime2), CAST(N'2024-04-15T08:02:53.2766667' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (11, N'CERT', N'Respectabiliteit', N'Respectabiliteit', NULL, NULL, CAST(N'2024-04-15T07:42:05.4133333' AS DateTime2), CAST(N'2024-04-15T08:02:54.0533333' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (12, N'CEGP', N'Goed gepresenteerd zijn', N'Goed gepresenteerd zijn', NULL, NULL, CAST(N'2024-04-15T07:42:23.7266667' AS DateTime2), CAST(N'2024-04-15T08:02:55.2566667' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (13, N'CEH', N'Hoffelijk, hartelijk en vriendelijk zijn', N'Hoffelijk, hartelijk en vriendelijk zijn', NULL, NULL, CAST(N'2024-04-15T07:42:49.9733333' AS DateTime2), CAST(N'2024-04-15T08:02:55.8400000' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (14, N'CEU', N'Punctualiteit', N'Punctualiteit', NULL, NULL, CAST(N'2024-04-15T07:43:05.0400000' AS DateTime2), CAST(N'2024-04-15T08:02:56.4800000' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (15, N'CEE', N'Eerlijkheid', N'Eerlijkheid', NULL, NULL, CAST(N'2024-04-15T07:43:15.6700000' AS DateTime2), CAST(N'2024-04-15T08:02:57.1433333' AS DateTime2), 1, 0, 1)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (16, N'OEA', N'Alert zijn', N'Alert zijn', NULL, NULL, CAST(N'2024-04-15T07:43:39.8966667' AS DateTime2), CAST(N'2024-04-15T08:02:59.0333333' AS DateTime2), 1, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (20, N'OES', N'Strategische plannen', N'Strategische plannen', NULL, NULL, CAST(N'2024-04-15T07:44:03.7100000' AS DateTime2), CAST(N'2024-04-15T08:02:59.9500000' AS DateTime2), 1, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (21, N'OEV', N'Visualiseren', N'Visualiseren', NULL, NULL, CAST(N'2024-04-15T07:44:16.1766667' AS DateTime2), CAST(N'2024-04-15T08:03:00.5700000' AS DateTime2), 1, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (22, N'OED', N'Doelstellingen bepalen', N'Doelstellingen bepalen', NULL, NULL, CAST(N'2024-04-15T07:44:32.9133333' AS DateTime2), CAST(N'2024-04-15T08:03:01.0900000' AS DateTime2), 1, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (23, N'OET', N'Taken ordenen en prioriteren', N'Taken ordenen en prioriteren', NULL, NULL, CAST(N'2024-04-15T07:44:55.2300000' AS DateTime2), CAST(N'2024-04-15T10:37:28.3933333' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (24, N'OEM', N'Tijdmanagement', N'Tijdmanagement', NULL, NULL, CAST(N'2024-04-15T07:45:12.2700000' AS DateTime2), CAST(N'2024-04-15T10:37:28.9400000' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (25, N'OEPR', N'Punctualiteit en het respecteren van deadlines', N'Punctualiteit en het respecteren van deadlines', NULL, NULL, CAST(N'2024-04-15T07:45:41.3633333' AS DateTime2), CAST(N'2024-04-15T10:37:29.4933333' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (26, N'OEBH', N'Beheer van hulpmiddelen', N'Beheer van hulpmiddelen', NULL, NULL, CAST(N'2024-04-15T07:46:05.1266667' AS DateTime2), CAST(N'2024-04-15T10:37:29.9633333' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (27, N'OEC', N'Concentratie', N'Concentratie', NULL, NULL, CAST(N'2024-04-15T07:46:18.7466667' AS DateTime2), CAST(N'2024-04-15T10:37:32.4266667' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (28, N'OEPR', N'Productiviteit', N'Productiviteit', NULL, NULL, CAST(N'2024-04-15T07:46:34.0166667' AS DateTime2), CAST(N'2024-04-15T10:37:33.2900000' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (29, N'OEBW', N'Een goed evenwicht tussen werk en privé', N'Een goed evenwicht tussen werk en privé', NULL, NULL, CAST(N'2024-04-15T07:46:56.3966667' AS DateTime2), CAST(N'2024-04-15T10:37:34.8366667' AS DateTime2), 3, 0, 2)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (30, N'SEIR', N'Opbouwen van relaties', N'Opbouwen van relaties', NULL, NULL, CAST(N'2024-04-15T07:48:16.1800000' AS DateTime2), CAST(N'2024-04-15T10:37:36.1566667' AS DateTime2), 4, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (31, N'SEIG', N'Gezelligheid', N'Gezelligheid', NULL, NULL, CAST(N'2024-04-15T07:48:25.6133333' AS DateTime2), CAST(N'2024-04-15T10:37:36.7266667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (32, N'SEIN', N'Netwerken', N'Netwerken', NULL, NULL, CAST(N'2024-04-15T07:48:35.3933333' AS DateTime2), CAST(N'2024-04-15T10:37:37.3833333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (33, N'SEIV', N'Vrijgevigheid en anderen helpen', N'Vrijgevigheid en anderen helpen', NULL, NULL, CAST(N'2024-04-15T07:48:48.1166667' AS DateTime2), CAST(N'2024-04-15T10:37:37.9533333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (34, N'SEIG', N'Culturele intelligentie', N'Culturele intelligentie', NULL, NULL, CAST(N'2024-04-15T07:48:59.9266667' AS DateTime2), CAST(N'2024-04-15T10:37:38.5500000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (35, N'SEIM', N'In het moment leven', N'In het moment leven', NULL, NULL, CAST(N'2024-04-15T07:49:08.4000000' AS DateTime2), CAST(N'2024-04-15T10:37:39.1400000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (36, N'SEIPB', N'Professioneel bewustzijn', N'Professioneel bewustzijn', NULL, NULL, CAST(N'2024-04-15T07:49:22.2233333' AS DateTime2), CAST(N'2024-04-15T10:37:39.7100000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (37, N'SEII', N'Introspectie', N'Introspectie', NULL, NULL, CAST(N'2024-04-15T07:49:30.3233333' AS DateTime2), CAST(N'2024-04-15T10:37:40.2166667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (38, N'SEIZ', N'Zelfbeheersing', N'Zelfbeheersing', NULL, NULL, CAST(N'2024-04-15T07:49:38.9700000' AS DateTime2), CAST(N'2024-04-15T10:37:40.8500000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (39, N'SEID', N'Ideeën delen en eigen standpunten naar voor brengen', N'Ideeën delen en eigen standpunten naar voor brengen', NULL, NULL, CAST(N'2024-04-15T07:49:59.5400000' AS DateTime2), CAST(N'2024-04-15T10:37:41.3766667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (40, N'SEIS', N'Samenwerking, coöperatie en coördinatie', N'Samenwerking, coöperatie en coördinatie', NULL, NULL, CAST(N'2024-04-15T07:50:22.5900000' AS DateTime2), CAST(N'2024-04-15T10:37:42.1533333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (41, N'SEIK', N'Kritiek accepteren', N'Kritiek accepteren', NULL, NULL, CAST(N'2024-04-15T07:50:33.0566667' AS DateTime2), CAST(N'2024-04-15T10:37:42.7200000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (42, N'SEIGC', N'Gevoelig zijn en in contact staan met je emoties', N'Gevoelig zijn en in contact staan met je emoties', NULL, NULL, CAST(N'2024-04-15T07:50:58.1133333' AS DateTime2), CAST(N'2024-04-15T10:37:43.3100000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (43, N'SEIEA', N'Empathie en aandacht voor anderen', N'Empathie en aandacht voor anderen', NULL, NULL, CAST(N'2024-04-15T07:51:11.3500000' AS DateTime2), CAST(N'2024-04-15T10:37:43.8333333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (44, N'SEIMV', N'Mededogen', N'Mededogen', NULL, NULL, CAST(N'2024-04-15T07:51:25.5400000' AS DateTime2), CAST(N'2024-04-15T10:37:44.4333333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (45, N'SEIVU', N'Vertrouwen hebben in jezelf en anderen', N'Vertrouwen hebben in jezelf en anderen', NULL, NULL, CAST(N'2024-04-15T07:51:40.9500000' AS DateTime2), CAST(N'2024-04-15T10:37:44.9433333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (46, N'SEIW', N'Welwillendheid', N'Welwillendheid', NULL, NULL, CAST(N'2024-04-15T07:51:48.2666667' AS DateTime2), CAST(N'2024-04-15T10:37:45.5000000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (47, N'SEIVD', N'Verdraagzaamheid', N'Verdraagzaamheid', NULL, NULL, CAST(N'2024-04-15T07:51:57.9300000' AS DateTime2), CAST(N'2024-04-15T10:37:46.1766667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (48, N'SEIDB', N'Dankbaarheid', N'Dankbaarheid', NULL, NULL, CAST(N'2024-04-15T07:52:06.6700000' AS DateTime2), CAST(N'2024-04-15T10:37:46.7300000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (49, N'SEISB', N'Stressbestendigheid', N'Stressbestendigheid', NULL, NULL, CAST(N'2024-04-15T07:52:16.7166667' AS DateTime2), CAST(N'2024-04-15T10:37:47.3166667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (50, N'SEIGM', N'Gelijkmoedigheid (kalmte, zelfbeheersing)', N'Gelijkmoedigheid (kalmte, zelfbeheersing)', NULL, NULL, CAST(N'2024-04-15T07:52:42.9533333' AS DateTime2), CAST(N'2024-04-15T10:37:47.9366667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (51, N'SEIAU', N'Authenticiteit', N'Authenticiteit', NULL, NULL, CAST(N'2024-04-15T07:52:51.6733333' AS DateTime2), CAST(N'2024-04-15T10:37:48.5466667' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (52, N'SEINE', N'Nederigheid', N'Nederigheid', NULL, NULL, CAST(N'2024-04-15T07:53:02.7633333' AS DateTime2), CAST(N'2024-04-15T10:37:49.0533333' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (53, N'SEIVK', N'Veerkracht', N'Veerkracht', NULL, NULL, CAST(N'2024-04-15T07:53:13.5766667' AS DateTime2), CAST(N'2024-04-15T10:37:49.7600000' AS DateTime2), 3, 0, 3)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (54, N'CEIDK', N'Kritisch waarnemen', N'Kritisch waarnemen', NULL, NULL, CAST(N'2024-04-15T07:53:46.1600000' AS DateTime2), CAST(N'2024-04-15T10:37:58.9800000' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (55, N'CEIDKS', N'Kritisch denken en de status quo uitdagen', N'Kritisch denken en de status quo uitdagen', NULL, NULL, CAST(N'2024-04-15T07:54:03.3366667' AS DateTime2), CAST(N'2024-04-15T10:37:59.6200000' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (56, N'CEIDE', N'Energiek zijn en actie ondernemen wanneer nodig', N'Energiek zijn en actie ondernemen wanneer nodig', NULL, NULL, CAST(N'2024-04-15T07:54:21.4233333' AS DateTime2), CAST(N'2024-04-15T10:38:00.1300000' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (57, N'CEIDO', N'Onderzoek doen om oplossingen voor problemen te vinden', N'Onderzoek doen om oplossingen voor problemen te vinden', NULL, NULL, CAST(N'2024-04-15T07:54:42.9466667' AS DateTime2), CAST(N'2024-04-15T10:38:00.6500000' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (58, N'CEIDL', N'Logisch denken', N'Logisch denken', NULL, NULL, CAST(N'2024-04-15T07:54:52.7300000' AS DateTime2), CAST(N'2024-04-15T10:38:01.1400000' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (59, N'CEIDA', N'Aandacht voor details en het vermogen om gevestigde en effectieve methoden te volgen', N'Aandacht voor details en het vermogen om gevestigde en effectieve methoden te volgen', NULL, NULL, CAST(N'2024-04-15T07:55:15.1966667' AS DateTime2), CAST(N'2024-04-15T10:38:01.6833333' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (60, N'CEIDR', N'Ruimdenkend zijn', N'Ruimdenkend zijn', NULL, NULL, CAST(N'2024-04-15T07:55:24.0900000' AS DateTime2), CAST(N'2024-04-15T10:38:02.2333333' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (61, N'CEIDV', N'Het vermogen om anders te denken en nieuwe ideeën te verdedigen', N'Het vermogen om anders te denken en nieuwe ideeën te verdedigen', NULL, NULL, CAST(N'2024-04-15T07:55:51.1466667' AS DateTime2), CAST(N'2024-04-15T10:38:02.7466667' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (62, N'CEIDI', N'Innovatie', N'Innovatie', NULL, NULL, CAST(N'2024-04-15T07:55:58.0333333' AS DateTime2), CAST(N'2024-04-15T10:38:03.3200000' AS DateTime2), 4, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (63, N'CEIDCB', N'Creativiteit en verbeelding', N'Creativiteit en verbeelding', NULL, NULL, CAST(N'2024-04-15T07:56:07.4800000' AS DateTime2), CAST(N'2024-04-15T10:38:03.8733333' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (64, N'CEIDAZ', N'Artistiek zijn', N'Artistiek zijn', NULL, NULL, CAST(N'2024-04-15T07:56:17.1233333' AS DateTime2), CAST(N'2024-04-15T10:38:04.4900000' AS DateTime2), 3, 0, 4)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (65, N'MELL', N'Leren om te leren', N'Leren om te leren', NULL, NULL, CAST(N'2024-04-15T07:56:30.5833333' AS DateTime2), CAST(N'2024-04-15T10:38:05.8533333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (66, N'MELP', N'Personeel kunnen motiveren en coachen', N'Personeel kunnen motiveren en coachen', NULL, NULL, CAST(N'2024-04-15T07:56:45.6500000' AS DateTime2), CAST(N'2024-04-15T10:38:06.3933333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (67, N'MELO', N'Organiseren (vergaderingen, teambuildingsessies, ...)', N'Organiseren (vergaderingen, teambuildingsessies, ...)', NULL, NULL, CAST(N'2024-04-15T07:57:06.8833333' AS DateTime2), CAST(N'2024-04-15T10:38:06.9333333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (68, N'MELV', N'Het goede voorbeeld geven en anderen inspireren', N'Het goede voorbeeld geven en anderen inspireren', NULL, NULL, CAST(N'2024-04-15T07:57:25.6800000' AS DateTime2), CAST(N'2024-04-15T10:38:07.4333333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (69, N'MELB', N'Bemiddeling', N'Bemiddeling', NULL, NULL, CAST(N'2024-04-15T07:57:36.1133333' AS DateTime2), CAST(N'2024-04-15T10:38:08.1200000' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (70, N'MELC', N'Conflicthantereing en -oplossing', N'Conflicthantereing en -oplossing', NULL, NULL, CAST(N'2024-04-15T07:57:49.6900000' AS DateTime2), CAST(N'2024-04-15T10:38:08.6133333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (71, N'MELF', N'Constructieve feedback kunnen geven', N'Constructieve feedback kunnen geven', NULL, NULL, CAST(N'2024-04-15T07:58:15.2466667' AS DateTime2), CAST(N'2024-04-15T10:38:09.1700000' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (72, N'MELT', N'Trainen', N'Trainen', NULL, NULL, CAST(N'2024-04-15T07:58:22.9366667' AS DateTime2), CAST(N'2024-04-15T10:38:09.6966667' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (73, N'MELA', N'Waarderen en aanmoedigen van medewerkers', N'Waarderen en aanmoedigen van medewerkers', NULL, NULL, CAST(N'2024-04-15T07:58:37.7233333' AS DateTime2), CAST(N'2024-04-15T10:38:10.2166667' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (74, N'MELI', N'Inclusiviteit', N'Inclusiviteit', NULL, NULL, CAST(N'2024-04-15T07:58:45.6100000' AS DateTime2), CAST(N'2024-04-15T10:38:10.8200000' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (75, N'MELE', N'Eerlijkheid', N'Eerlijkheid', NULL, NULL, CAST(N'2024-04-15T07:58:53.1700000' AS DateTime2), CAST(N'2024-04-15T10:38:11.3433333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (76, N'MELM', N'Management op afstand', N'Management op afstand', NULL, NULL, CAST(N'2024-04-15T07:59:01.2966667' AS DateTime2), CAST(N'2024-04-15T10:38:11.8700000' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (77, N'MELBV', N'Besluitvorming', N'Besluitvorming', NULL, NULL, CAST(N'2024-04-15T07:59:12.7500000' AS DateTime2), CAST(N'2024-04-15T10:38:12.3833333' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (78, N'MELD', N'Delegeren', N'Delegeren', NULL, NULL, CAST(N'2024-04-15T07:59:19.7766667' AS DateTime2), CAST(N'2024-04-15T10:38:12.8700000' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (79, N'MELFA', N'Faciliteren', N'Faciliteren', NULL, NULL, CAST(N'2024-04-15T07:59:27.2900000' AS DateTime2), CAST(N'2024-04-15T10:38:13.3866667' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (80, N'MELT', N'Toezicht houden', N'Toezicht houden', NULL, NULL, CAST(N'2024-04-15T07:59:34.5966667' AS DateTime2), CAST(N'2024-04-15T10:38:13.9400000' AS DateTime2), 3, 0, 5)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (83, N'SIP1', N'Komt openlijk uit voor gemaakte fouten en neemt initiatief om deze recht te zetten', N'Komt openlijk uit voor gemaakte fouten en neemt initiatief om deze recht te zetten', NULL, NULL, CAST(N'2024-04-15T10:40:53.7533333' AS DateTime2), CAST(N'2024-04-15T11:01:46.1600000' AS DateTime2), 1, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (85, N'SIP2', N'Gaat discreet om met vertrouwelijke en gevoelige informatie', N'Gaat discreet om met vertrouwelijke en gevoelige informatie', NULL, NULL, CAST(N'2024-04-15T10:41:16.0300000' AS DateTime2), CAST(N'2024-04-15T11:01:48.9666667' AS DateTime2), 1, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (86, N'SIP13', N'Leeft algemeent aanvaarde sociale en ethische normen na en is daarop aanspreekbaar', N'Leeft algemeent aanvaarde sociale en ethische normen na en is daarop aanspreekbaar', NULL, NULL, CAST(N'2024-04-15T10:41:50.0200000' AS DateTime2), CAST(N'2024-04-15T11:01:50.4966667' AS DateTime2), 2, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (88, N'SIP14', N'Behandelt collega''s en directie met respect', N'Behandelt collega''s en directie met respect', NULL, NULL, CAST(N'2024-04-15T10:42:09.4833333' AS DateTime2), CAST(N'2024-04-15T11:01:51.9366667' AS DateTime2), 2, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (89, N'SIP15', N'Behandelt de eigendommen van school en bedrijf met respect', N'Behandelt de eigendommen van school en bedrijf met respect', NULL, NULL, CAST(N'2024-04-15T10:42:32.5466667' AS DateTime2), CAST(N'2024-04-15T11:01:54.2700000' AS DateTime2), 2, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (90, N'SIP16', N'Behandelt de eigendommen van school en bedrijf met respect', N'Behandelt de eigendommen van school en bedrijf met respect', NULL, NULL, CAST(N'2024-04-15T10:42:49.3566667' AS DateTime2), CAST(N'2024-04-15T11:01:55.8033333' AS DateTime2), 2, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (92, N'SIP17', N'Wil bijleren en neemt hierin eigen initiatief of doet voorstellen', N'Wil bijleren en neemt hierin eigen initiatief of doet voorstellen', NULL, NULL, CAST(N'2024-04-15T10:43:12.1366667' AS DateTime2), CAST(N'2024-04-15T11:01:58.2466667' AS DateTime2), 2, 0, 6)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (93, N'SIP21', N'Houdt rekening met deadlines en levert het werk tijdig af', N'Houdt rekening met deadlines en levert het werk tijdig af', NULL, NULL, CAST(N'2024-04-15T10:43:34.1033333' AS DateTime2), CAST(N'2024-04-15T11:01:59.5866667' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (94, N'SIP22', N'Het afgeleverde werk voldoet aan de vooropgestelde kwaliteitsnormen', N'Het afgeleverde werk voldoet aan de vooropgestelde kwaliteitsnormen', NULL, NULL, CAST(N'2024-04-15T10:43:53.2300000' AS DateTime2), CAST(N'2024-04-15T11:02:00.7900000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (95, N'SIP23', N'Kan de juiste prioriteiten stellen.', N'Kan de juiste prioriteiten stellen.', NULL, NULL, CAST(N'2024-04-15T10:44:10.4400000' AS DateTime2), CAST(N'2024-04-15T11:02:02.0300000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (96, N'SIP24', N'Controleert het eigen werk op fouten en onnauwkeurigheden', N'Controleert het eigen werk op fouten en onnauwkeurigheden', NULL, NULL, CAST(N'2024-04-15T10:44:29.6200000' AS DateTime2), CAST(N'2024-04-15T11:02:03.4800000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (97, N'SIP25', N'Heeft oog voor detailinformatie', N'Heeft oog voor detailinformatie', NULL, NULL, CAST(N'2024-04-15T10:44:40.8233333' AS DateTime2), CAST(N'2024-04-15T11:02:04.9500000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (98, N'SIP26', N'Blijft aandachtig, ook bij routinematige taken', N'Blijft aandachtig, ook bij routinematige taken', NULL, NULL, CAST(N'2024-04-15T10:44:56.2033333' AS DateTime2), CAST(N'2024-04-15T11:02:06.1600000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (99, N'SIP27', N'Merkt fouten en onnauwkeurigheden op en zet deze recht of rapporteert hierbij', N'Merkt fouten en onnauwkeurigheden op en zet deze recht of rapporteert hierbij', NULL, NULL, CAST(N'2024-04-15T10:45:16.6100000' AS DateTime2), CAST(N'2024-04-15T11:02:07.5133333' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (100, N'SIP28', N'Heeft een algemeen inzicht in de problematiek', N'Heeft een algemeen inzicht in de problematiek', NULL, NULL, CAST(N'2024-04-15T10:45:39.9600000' AS DateTime2), CAST(N'2024-04-15T11:02:09.0266667' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (101, N'SIP29', N'Verzamelt bijkomende informatie indien nodig en blijft niet te lang zelf zoeken', N'Verzamelt bijkomende informatie indien nodig en blijft niet te lang zelf zoeken', NULL, NULL, CAST(N'2024-04-15T10:46:06.7500000' AS DateTime2), CAST(N'2024-04-15T11:02:10.3900000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (102, N'SIP20', N'Benadert een probleem vanuit verschillende oogpunten en kan oplossingen aanbrengen', N'Benadert een probleem vanuit verschillende oogpunten en kan oplossingen aanbrengen', NULL, NULL, CAST(N'2024-04-15T10:46:41.0833333' AS DateTime2), CAST(N'2024-04-15T11:02:11.8800000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (103, N'SIP201', N'Integreert nieuw gevonden informatie met bestaande', N'Integreert nieuw gevonden informatie met bestaande', NULL, NULL, CAST(N'2024-04-15T10:47:04.9800000' AS DateTime2), CAST(N'2024-04-15T11:02:13.2200000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (104, N'SIP202', N'Weet voor complexe situaties verschillende oplossingsrichtingen te bedenken', N'Weet voor complexe situaties verschillende oplossingsrichtingen te bedenken', NULL, NULL, CAST(N'2024-04-15T10:47:26.9500000' AS DateTime2), CAST(N'2024-04-15T11:02:14.7200000' AS DateTime2), 2, 0, 7)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (105, N'SIP30', N'Kan buiten het eigen denkkader treden', N'Kan buiten het eigen denkkader treden', NULL, NULL, CAST(N'2024-04-15T10:47:42.2700000' AS DateTime2), CAST(N'2024-04-15T11:02:16.0400000' AS DateTime2), 2, 0, 8)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (106, N'SIP31', N'Denkt kritisch en zelfstandig', N'Denkt kritisch en zelfstandig', NULL, NULL, CAST(N'2024-04-15T10:47:55.8633333' AS DateTime2), CAST(N'2024-04-15T11:02:17.3433333' AS DateTime2), 2, 0, 8)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (107, N'SIP32', N'Onderneemt uit eigen beweging gerichte acties om concrete problemen aan te pakken', N'Onderneemt uit eigen beweging gerichte acties om concrete problemen aan te pakken', NULL, NULL, CAST(N'2024-04-15T10:48:23.4766667' AS DateTime2), CAST(N'2024-04-15T11:02:18.8600000' AS DateTime2), 2, 0, 8)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (108, N'SIP33', N'Denkt vooruit en weet de benodigde acties in te schatten', N'Denkt vooruit en weet de benodigde acties in te schatten', NULL, NULL, CAST(N'2024-04-15T10:48:43.5700000' AS DateTime2), CAST(N'2024-04-15T11:02:20.2000000' AS DateTime2), 2, 0, 8)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (109, N'SIP34', N'Volgt gemaakte afspraken op en escaleert indien hiervan afgeweken wordt', N'Volgt gemaakte afspraken op en escaleert indien hiervan afgeweken wordt', NULL, NULL, CAST(N'2024-04-15T10:48:58.9666667' AS DateTime2), CAST(N'2024-04-15T11:02:21.6866667' AS DateTime2), 2, 0, 8)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (110, N'SIP35', N'Anticipeert op mogelijke storingen in voortgang', N'Anticipeert op mogelijke storingen in voortgang', NULL, NULL, CAST(N'2024-04-15T10:49:12.0666667' AS DateTime2), CAST(N'2024-04-15T11:02:23.2933333' AS DateTime2), 2, 0, 8)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (111, N'SIP40', N'Deelt verkregen informatie spontaan en houdt op de hoogte wat betreft vorderingen', N'Deelt verkregen informatie spontaan en houdt op de hoogte wat betreft vorderingen', NULL, NULL, CAST(N'2024-04-15T10:49:43.8366667' AS DateTime2), CAST(N'2024-04-15T11:02:24.7266667' AS DateTime2), 2, 0, 9)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (112, N'SIP41', N'Bespreekt meningsverschillen op constructieve wijze', N'Bespreekt meningsverschillen op constructieve wijze', NULL, NULL, CAST(N'2024-04-15T10:50:03.4866667' AS DateTime2), CAST(N'2024-04-15T11:02:25.9500000' AS DateTime2), 2, 0, 9)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (113, N'SIP42', N'Vraagt naar ideeën en standpunten van anderen', N'Vraagt naar ideeën en standpunten van anderen', NULL, NULL, CAST(N'2024-04-15T10:50:20.3666667' AS DateTime2), CAST(N'2024-04-15T11:02:29.2300000' AS DateTime2), 2, 0, 9)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (114, N'SIP43', N'Gaat collegiaal om met alle medewerkers van de organisatie', N'Gaat collegiaal om met alle medewerkers van de organisatie', NULL, NULL, CAST(N'2024-04-15T10:50:35.8966667' AS DateTime2), CAST(N'2024-04-15T11:02:31.9300000' AS DateTime2), 2, 0, 9)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (115, N'SIP44', N'Biedt waar nodig hulp aan collega''s', N'Biedt waar nodig hulp aan collega''s', NULL, NULL, CAST(N'2024-04-15T10:50:47.4966667' AS DateTime2), CAST(N'2024-04-15T11:02:33.0833333' AS DateTime2), 2, 0, 9)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (116, N'SIP50', N'Zorgt ervoor dat informatie duidelijk en correct wordt opgeslagen', N'Zorgt ervoor dat informatie duidelijk en correct wordt opgeslagen', NULL, NULL, CAST(N'2024-04-15T10:51:07.5200000' AS DateTime2), CAST(N'2024-04-15T11:02:34.5033333' AS DateTime2), 2, 0, 10)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (117, N'SIP51', N'Rapporteert correct en duidelijk aan de team leader', N'Rapporteert correct en duidelijk aan de team leader', NULL, NULL, CAST(N'2024-04-15T10:51:22.0600000' AS DateTime2), CAST(N'2024-04-15T11:02:35.8600000' AS DateTime2), 2, 0, 10)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (118, N'SIP52', N'Escaleert tijdig en correct in geval van problemen - intern', N'Escaleert tijdig en correct in geval van problemen - intern', NULL, NULL, CAST(N'2024-04-15T10:51:39.0366667' AS DateTime2), CAST(N'2024-04-15T11:02:36.9700000' AS DateTime2), 2, 0, 10)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (119, N'SIP60', N'Houdt klanten en collega''s spontaan op de hoogte wat betreft de vordering op het werk', N'Houdt klanten en collega''s spontaan op de hoogte wat betreft de vordering op het werk', NULL, NULL, CAST(N'2024-04-15T10:52:10.9933333' AS DateTime2), CAST(N'2024-04-15T11:02:38.0066667' AS DateTime2), 3, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (120, N'SIP61', N'Reageert spontaan en correct op een vraag/nood van klanten en/of collega''s', N'Reageert spontaan en correct op een vraag/nood van klanten en/of collega''s', NULL, NULL, CAST(N'2024-04-15T10:52:27.0266667' AS DateTime2), CAST(N'2024-04-15T11:02:39.6366667' AS DateTime2), 3, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (121, N'SIP62', N'Respecteert de werktijden', N'Respecteert de werktijden', NULL, NULL, CAST(N'2024-04-15T10:52:39.2466667' AS DateTime2), CAST(N'2024-04-15T11:02:40.9966667' AS DateTime2), 2, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (122, N'SIP63', N'Gaat professioneel gekleed', N'Gaat professioneel gekleed', NULL, NULL, CAST(N'2024-04-15T10:52:54.3133333' AS DateTime2), CAST(N'2024-04-15T11:02:42.1533333' AS DateTime2), 2, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (123, N'SIP64', N'Toont begrip voor klanten, is vriendelijk en voorkomend', N'Toont begrip voor klanten, is vriendelijk en voorkomend', NULL, NULL, CAST(N'2024-04-15T10:53:06.4200000' AS DateTime2), CAST(N'2024-04-15T11:02:43.2566667' AS DateTime2), 2, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (124, N'SIP65', N'Onderzoekt gericht de wensen en behoeften van klanten', N'Onderzoekt gericht de wensen en behoeften van klanten', NULL, NULL, CAST(N'2024-04-15T10:53:26.4400000' AS DateTime2), CAST(N'2024-04-15T11:02:44.5533333' AS DateTime2), 2, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (125, N'SIP66', N'Waarborgt een snelle, grondige en maximale dienstverlening aan klanten, rekening houdende met de bestaande procedures en planning', N'Waarborgt een snelle, grondige en maximale dienstverlening aan klanten, rekening houdende met procedures en planning', NULL, NULL, CAST(N'2024-04-15T10:53:56.2966667' AS DateTime2), CAST(N'2024-04-15T11:03:14.8133333' AS DateTime2), 2, 0, 11)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (126, N'SIP70', N'Besschikt over voldoende technische basiskennis zoals men mag verwachten van een 2e jaarstudent Graduaat in het Programmeren', N'Besschikt over voldoende technische basiskennis zoals men mag verwachten van een 2e jaarstudent Graduaat in het Programmeren', NULL, NULL, CAST(N'2024-04-15T10:54:34.6933333' AS DateTime2), CAST(N'2024-04-15T11:03:18.7200000' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (127, N'SIP71', N'Beschikt over voldoende (technische) kennis om de opdrachten en taken uit te voeren die toegewezen werden', N'Beschikt over voldoende (technische) kennis om de opdrachten en taken uit te voeren die toegewezen werden', NULL, NULL, CAST(N'2024-04-15T10:55:04.9700000' AS DateTime2), CAST(N'2024-04-15T11:03:19.9566667' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (128, N'SIP72', N'Is in staat zelf technische informatie op te zoeken op internet of in andere bronnen', N'Is in staat zelf technische informatie op te zoeken op internet of in andere bronnen', NULL, NULL, CAST(N'2024-04-15T10:55:23.8966667' AS DateTime2), CAST(N'2024-04-15T11:03:21.1133333' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (129, N'SIP73', N'Is in staat de gevonden technische informatie te integreren', N'Is in staat de gevonden technische informatie te integreren', NULL, NULL, CAST(N'2024-04-15T10:55:50.8866667' AS DateTime2), CAST(N'2024-04-15T11:03:22.2100000' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (130, N'SIP74', N'Voert voldoende testen uit op de eigen taken om zo zelf fouten op te sporen', N'Voert voldoende testen uit op de eigen taken om zo zelf fouten op te sporen', NULL, NULL, CAST(N'2024-04-15T10:56:10.3166667' AS DateTime2), CAST(N'2024-04-15T11:03:23.2333333' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (131, N'SIP75', N'Werkt met oog voor privacy en cyberveiligheid', N'Werkt met oog voor privacy en cyberveiligheid', NULL, NULL, CAST(N'2024-04-15T10:56:26.9133333' AS DateTime2), CAST(N'2024-04-15T11:03:24.2666667' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (132, N'SIP76', N'Kan het principe van deductie en eliminatie toepassen bij het oplossen van een complex technisch probleem', N'Kan het principe van deductie en eliminatie toepassen bij het oplossen van een complex technisch probleem', NULL, NULL, CAST(N'2024-04-15T10:56:54.8200000' AS DateTime2), CAST(N'2024-04-15T11:03:25.8533333' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (133, N'SIP77', N'Is in staat om de technische aspecten logisch te documenteren voor de klant', N'Is in staat om de technische aspecten logisch te documenteren voor de klant', NULL, NULL, CAST(N'2024-04-15T10:57:12.2800000' AS DateTime2), CAST(N'2024-04-15T11:03:27.5300000' AS DateTime2), 2, 0, 12)
GO
INSERT [dbo].[SoftSkills] ([SoftSkillsId], [ShortName], [Description], [Title], [Detail], [Remark], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted], [SoftskillsTypeId]) VALUES (134, N'SIP78', N'Kan vanuit de technische kennis en inzichten een advies op maat formuleren en uitwerken', N'Kan vanuit de technische kennis en inzichten een advies op maat formuleren en uitwerken', NULL, NULL, CAST(N'2024-04-15T10:57:31.1266667' AS DateTime2), CAST(N'2024-04-15T11:03:29.2666667' AS DateTime2), 2, 0, 12)
GO
SET IDENTITY_INSERT [dbo].[SoftSkills] OFF
GO
SET IDENTITY_INSERT [dbo].[SoftSkillsType] ON 
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Communicatie en ethiek', N'Communicatie en ethiek', CAST(N'2024-04-15T08:06:48.2066667' AS DateTime2), CAST(N'2024-04-15T08:06:48.2066667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Organisatie en efficiëntie', N'Organisatie en efficiëntie', CAST(N'2024-04-15T08:07:07.8600000' AS DateTime2), CAST(N'2024-04-15T08:07:07.8600000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (3, N'Sociale en emotionele intelligentie', N'Sociale en emotionele intelligentie', CAST(N'2024-04-15T08:07:26.6733333' AS DateTime2), CAST(N'2024-04-15T08:07:26.6733333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (4, N'Creativiteit en innovatief denken', N'Creativiteit en innovatief denken', CAST(N'2024-04-15T08:07:39.1766667' AS DateTime2), CAST(N'2024-04-15T08:07:39.1766667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (5, N'Management en leiderschap', N'Mangement en leiderschap', CAST(N'2024-04-15T08:07:54.4000000' AS DateTime2), CAST(N'2024-04-15T08:07:54.4000000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (6, N'Integriteit en persoonlijkheid', N'Integriteit en persoonlijkheid', CAST(N'2024-04-15T08:08:15.7366667' AS DateTime2), CAST(N'2024-04-15T10:58:33.0333333' AS DateTime2), 3, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'Kwaliteit en werktempo', N'Kwaliteit en werktempo', CAST(N'2024-04-15T10:58:20.6800000' AS DateTime2), CAST(N'2024-04-15T10:58:20.6800000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (10, N'Visie en initiatief', N'Visie en initiatief', CAST(N'2024-04-15T10:58:43.7033333' AS DateTime2), CAST(N'2024-04-15T10:58:43.7033333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'Samenwerking', N'Samenwerking', CAST(N'2024-04-15T10:58:53.7200000' AS DateTime2), CAST(N'2024-04-15T10:58:53.7200000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'Administratie en communicatie', N'Administratie en communicatie', CAST(N'2024-04-15T10:59:12.4800000' AS DateTime2), CAST(N'2024-04-15T10:59:12.4800000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (13, N'Klantgerichtheid', N'Klantgerichtheid', CAST(N'2024-04-15T10:59:23.3733333' AS DateTime2), CAST(N'2024-04-15T10:59:23.3733333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[SoftSkillsType] ([SoftSkillsTypeId], [ShortName], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (14, N'Technisch inzicht en kennis', N'Technisch inzicht en kennis', CAST(N'2024-04-15T10:59:43.5033333' AS DateTime2), CAST(N'2024-04-15T10:59:43.5033333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[SoftSkillsType] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (5, N'FDW', NULL, NULL, 0, 1, 1, 1, CAST(N'2024-04-14T14:13:00.8100000' AS DateTime2), CAST(N'2024-04-14T14:13:00.8100000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (8, N'YI', NULL, NULL, 0, 1, 1, 2, CAST(N'2024-04-14T14:13:25.8500000' AS DateTime2), CAST(N'2024-04-14T14:13:25.8500000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (9, N'EJ', NULL, NULL, 0, 1, 1, 3, CAST(N'2024-04-14T14:13:44.0200000' AS DateTime2), CAST(N'2024-04-14T14:13:44.0200000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (10, N'LV', NULL, NULL, 0, 1, 1, 4, CAST(N'2024-04-14T14:13:55.4933333' AS DateTime2), CAST(N'2024-04-14T14:13:55.4933333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (11, N'LS', NULL, NULL, 0, 1, 1, 5, CAST(N'2024-04-14T14:14:10.5700000' AS DateTime2), CAST(N'2024-04-14T14:14:10.5700000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (12, N'MDG', NULL, NULL, 0, 1, 1, 6, CAST(N'2024-04-14T14:14:21.4733333' AS DateTime2), CAST(N'2024-04-14T14:14:21.4733333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (13, N'WG', NULL, NULL, 0, 1, 1, 7, CAST(N'2024-04-14T14:14:32.5666667' AS DateTime2), CAST(N'2024-04-14T14:14:32.5666667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (14, N'LM', NULL, NULL, 0, 1, 1, 8, CAST(N'2024-04-14T14:14:43.5900000' AS DateTime2), CAST(N'2024-04-14T14:14:43.5900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (15, N'KV', NULL, NULL, 0, 1, 1, 9, CAST(N'2024-04-14T14:14:52.6200000' AS DateTime2), CAST(N'2024-04-14T14:14:52.6200000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (16, N'TVDW', NULL, NULL, 0, 1, 1, 10, CAST(N'2024-04-14T14:15:04.2766667' AS DateTime2), CAST(N'2024-04-14T14:15:04.2766667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (17, N'EE', NULL, NULL, 0, 1, 1, 11, CAST(N'2024-04-14T14:15:12.7833333' AS DateTime2), CAST(N'2024-04-14T14:15:12.7833333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (18, N'ID', NULL, NULL, 0, 1, 1, 12, CAST(N'2024-04-14T14:15:22.1900000' AS DateTime2), CAST(N'2024-04-14T14:15:22.1900000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (19, N'WD', NULL, NULL, 0, 1, 1, 13, CAST(N'2024-04-14T14:15:32.9400000' AS DateTime2), CAST(N'2024-04-14T14:15:32.9400000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (20, N'DB', NULL, NULL, 0, 1, 1, 14, CAST(N'2024-04-14T14:15:43.2566667' AS DateTime2), CAST(N'2024-04-14T14:15:43.2566667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (21, N'JVR', NULL, NULL, 0, 1, 1, 15, CAST(N'2024-04-14T14:15:55.3633333' AS DateTime2), CAST(N'2024-04-14T14:15:55.3633333' AS DateTime2), 0, 0)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Abbreviation], [Mobile], [Email], [AssignmentPercentage], [TeacherTypeId], [RegistrationStateId], [PersonId], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (22, N'KG', NULL, NULL, 0, 1, 1, 16, CAST(N'2024-04-14T14:16:05.8633333' AS DateTime2), CAST(N'2024-04-14T14:16:05.8633333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherGroup] ON 
GO
INSERT [dbo].[TeacherGroup] ([TeacherGroupId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Curriculumcommissie', CAST(N'2024-04-15T11:47:05.6000000' AS DateTime2), CAST(N'2024-04-15T11:47:05.6000000' AS DateTime2), 0, 0)
GO
INSERT [dbo].[TeacherGroup] ([TeacherGroupId], [Name], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Stagebegeleiding', CAST(N'2024-04-15T11:47:17.4333333' AS DateTime2), CAST(N'2024-04-15T11:47:17.4333333' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[TeacherGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherType] ON 
GO
INSERT [dbo].[TeacherType] ([TeacherTypeId], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (1, N'Full time', CAST(N'2024-04-14T14:11:01.2166667' AS DateTime2), CAST(N'2024-04-14T14:11:01.2166667' AS DateTime2), 0, 0)
GO
INSERT [dbo].[TeacherType] ([TeacherTypeId], [Description], [AUTO_TIME_CREATION], [AUTO_TIME_UPDATE], [AUTO_UPDATE_COUNT], [IsDeleted]) VALUES (2, N'Part time', CAST(N'2024-04-14T14:11:04.5100000' AS DateTime2), CAST(N'2024-04-14T14:11:04.5100000' AS DateTime2), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[TeacherType] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__AcademicY__AUTO___5812160E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AcademicYear] ADD  CONSTRAINT [DF__AcademicY__AUTO___5812160E]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__AcademicY__AUTO___59063A47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AcademicYear] ADD  CONSTRAINT [DF__AcademicY__AUTO___59063A47]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__AcademicY__AUTO___59FA5E80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AcademicYear] ADD  CONSTRAINT [DF__AcademicY__AUTO___59FA5E80]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__AcademicY__IsDel__5AEE82B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AcademicYear] ADD  CONSTRAINT [DF__AcademicY__IsDel__5AEE82B9]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Concept__AUTO_TI__5BE2A6F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Concept] ADD  CONSTRAINT [DF__Concept__AUTO_TI__5BE2A6F2]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Concept__AUTO_TI__5CD6CB2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Concept] ADD  CONSTRAINT [DF__Concept__AUTO_TI__5CD6CB2B]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Concept__AUTO_UP__5DCAEF64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Concept] ADD  CONSTRAINT [DF__Concept__AUTO_UP__5DCAEF64]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Concept__IsDelet__5EBF139D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Concept] ADD  CONSTRAINT [DF__Concept__IsDelet__5EBF139D]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Course__AUTO_TIM__5FB337D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__AUTO_TIM__5FB337D6]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Course__AUTO_TIM__60A75C0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__AUTO_TIM__60A75C0F]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Course__AUTO_UPD__619B8048]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__AUTO_UPD__619B8048]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Course__IsDelete__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__IsDelete__628FA481]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Course_CourseGroup_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course_CourseGroup] ADD  CONSTRAINT [DF_Course_CourseGroup_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Course_EducationFormat_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course_EducationFormat] ADD  CONSTRAINT [DF_Course_EducationFormat_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Course_EvaluationFormat_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course_EvaluationFormat] ADD  CONSTRAINT [DF_Course_EvaluationFormat_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Course_IOEM_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course_IOEM] ADD  CONSTRAINT [DF_Course_IOEM_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Course_SoftSkills_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Course_SoftSkills] ADD  CONSTRAINT [DF_Course_SoftSkills_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseGro__AUTO___6383C8BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseGroup] ADD  CONSTRAINT [DF__CourseGro__AUTO___6383C8BA]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseGro__AUTO___6477ECF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseGroup] ADD  CONSTRAINT [DF__CourseGro__AUTO___6477ECF3]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseGro__AUTO___656C112C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseGroup] ADD  CONSTRAINT [DF__CourseGro__AUTO___656C112C]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseGro__IsDel__66603565]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseGroup] ADD  CONSTRAINT [DF__CourseGro__IsDel__66603565]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseTyp__AUTO___6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseType] ADD  CONSTRAINT [DF__CourseTyp__AUTO___6754599E]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseTyp__AUTO___68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseType] ADD  CONSTRAINT [DF__CourseTyp__AUTO___68487DD7]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseTyp__AUTO___693CA210]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseType] ADD  CONSTRAINT [DF__CourseTyp__AUTO___693CA210]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CourseTyp__IsDel__6A30C649]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CourseType] ADD  CONSTRAINT [DF__CourseTyp__IsDel__6A30C649]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Onderwijs__AUTO___7A672E12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EducationFormat] ADD  CONSTRAINT [DF__Onderwijs__AUTO___7A672E12]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Onderwijs__AUTO___7B5B524B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EducationFormat] ADD  CONSTRAINT [DF__Onderwijs__AUTO___7B5B524B]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Onderwijs__AUTO___7C4F7684]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EducationFormat] ADD  CONSTRAINT [DF__Onderwijs__AUTO___7C4F7684]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Onderwijs__IsDel__7D439ABD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EducationFormat] ADD  CONSTRAINT [DF__Onderwijs__IsDel__7D439ABD]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Evaluatie__AUTO___6B24EA82]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EvaluationFormat] ADD  CONSTRAINT [DF__Evaluatie__AUTO___6B24EA82]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Evaluatie__AUTO___6C190EBB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EvaluationFormat] ADD  CONSTRAINT [DF__Evaluatie__AUTO___6C190EBB]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Evaluatie__AUTO___6D0D32F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EvaluationFormat] ADD  CONSTRAINT [DF__Evaluatie__AUTO___6D0D32F4]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Evaluatie__IsDel__6E01572D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EvaluationFormat] ADD  CONSTRAINT [DF__Evaluatie__IsDel__6E01572D]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Info__AUTO_TIME___6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Info] ADD  CONSTRAINT [DF__Info__AUTO_TIME___6EF57B66]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Info__AUTO_TIME___6FE99F9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Info] ADD  CONSTRAINT [DF__Info__AUTO_TIME___6FE99F9F]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Info__AUTO_UPDAT__70DDC3D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Info] ADD  CONSTRAINT [DF__Info__AUTO_UPDAT__70DDC3D8]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Info__IsDeleted__71D1E811]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Info] ADD  CONSTRAINT [DF__Info__IsDeleted__71D1E811]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__InfoType__AUTO_T__72C60C4A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[InfoType] ADD  CONSTRAINT [DF__InfoType__AUTO_T__72C60C4A]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__InfoType__AUTO_T__73BA3083]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[InfoType] ADD  CONSTRAINT [DF__InfoType__AUTO_T__73BA3083]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__InfoType__AUTO_U__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[InfoType] ADD  CONSTRAINT [DF__InfoType__AUTO_U__74AE54BC]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__InfoType__IsDele__75A278F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[InfoType] ADD  CONSTRAINT [DF__InfoType__IsDele__75A278F5]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__IOEM__AUTO_TIME___76969D2E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[IOEM] ADD  CONSTRAINT [DF__IOEM__AUTO_TIME___76969D2E]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__IOEM__AUTO_TIME___778AC167]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[IOEM] ADD  CONSTRAINT [DF__IOEM__AUTO_TIME___778AC167]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__IOEM__AUTO_UPDAT__787EE5A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[IOEM] ADD  CONSTRAINT [DF__IOEM__AUTO_UPDAT__787EE5A0]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__IOEM__IsDeleted__797309D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[IOEM] ADD  CONSTRAINT [DF__IOEM__IsDeleted__797309D9]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Person__AUTO_TIM__7E37BEF6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF__Person__AUTO_TIM__7E37BEF6]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Person__AUTO_TIM__7F2BE32F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF__Person__AUTO_TIM__7F2BE32F]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Person__AUTO_UPD__00200768]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF__Person__AUTO_UPD__00200768]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Person__IsDelete__01142BA1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF__Person__IsDelete__01142BA1]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Registrat__AUTO___02084FDA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RegistrationState] ADD  CONSTRAINT [DF__Registrat__AUTO___02084FDA]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Registrat__AUTO___02FC7413]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RegistrationState] ADD  CONSTRAINT [DF__Registrat__AUTO___02FC7413]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Registrat__AUTO___03F0984C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RegistrationState] ADD  CONSTRAINT [DF__Registrat__AUTO___03F0984C]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Registrat__IsDel__04E4BC85]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RegistrationState] ADD  CONSTRAINT [DF__Registrat__IsDel__04E4BC85]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SoftSkills_AUTO_TIME_CREATION]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkills] ADD  CONSTRAINT [DF_SoftSkills_AUTO_TIME_CREATION]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SoftSkills_AUTO_TIME_UPDATE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkills] ADD  CONSTRAINT [DF_SoftSkills_AUTO_TIME_UPDATE]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SoftSkills_AUTO_UPDATE_COUNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkills] ADD  CONSTRAINT [DF_SoftSkills_AUTO_UPDATE_COUNT]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SoftSkill__IsDel__3A4CA8FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkills] ADD  CONSTRAINT [DF__SoftSkill__IsDel__3A4CA8FD]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SoftSkill__AUTO___40F9A68C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkillsType] ADD  CONSTRAINT [DF__SoftSkill__AUTO___40F9A68C]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SoftSkill__AUTO___41EDCAC5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkillsType] ADD  CONSTRAINT [DF__SoftSkill__AUTO___41EDCAC5]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SoftSkill__AUTO___42E1EEFE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkillsType] ADD  CONSTRAINT [DF__SoftSkill__AUTO___42E1EEFE]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SoftSkill__IsDel__43D61337]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftSkillsType] ADD  CONSTRAINT [DF__SoftSkill__IsDel__43D61337]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__Abbrevi__05D8E0BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__Abbrevi__05D8E0BE]  DEFAULT ('?') FOR [Abbreviation]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__Assignm__06CD04F7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__Assignm__06CD04F7]  DEFAULT ((0)) FOR [AssignmentPercentage]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__Teacher__07C12930]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__Teacher__07C12930]  DEFAULT ((1)) FOR [TeacherTypeId]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__AUTO_TI__08B54D69]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__AUTO_TI__08B54D69]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__AUTO_TI__09A971A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__AUTO_TI__09A971A2]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__AUTO_UP__0A9D95DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__AUTO_UP__0A9D95DB]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher__IsDelet__0B91BA14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [DF__Teacher__IsDelet__0B91BA14]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher_T__AUTO___0C85DE4D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher_TeacherGroup] ADD  CONSTRAINT [DF__Teacher_T__AUTO___0C85DE4D]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher_T__AUTO___0D7A0286]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher_TeacherGroup] ADD  CONSTRAINT [DF__Teacher_T__AUTO___0D7A0286]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher_T__AUTO___0E6E26BF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher_TeacherGroup] ADD  CONSTRAINT [DF__Teacher_T__AUTO___0E6E26BF]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Teacher_T__IsDel__0F624AF8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Teacher_TeacherGroup] ADD  CONSTRAINT [DF__Teacher_T__IsDel__0F624AF8]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherGr__AUTO___10566F31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherGroup] ADD  CONSTRAINT [DF__TeacherGr__AUTO___10566F31]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherGr__AUTO___114A936A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherGroup] ADD  CONSTRAINT [DF__TeacherGr__AUTO___114A936A]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherGr__AUTO___123EB7A3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherGroup] ADD  CONSTRAINT [DF__TeacherGr__AUTO___123EB7A3]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherGr__IsDel__1332DBDC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherGroup] ADD  CONSTRAINT [DF__TeacherGr__IsDel__1332DBDC]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherTy__Descr__14270015]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherType] ADD  CONSTRAINT [DF__TeacherTy__Descr__14270015]  DEFAULT ('Temporary') FOR [Description]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherTy__AUTO___151B244E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherType] ADD  CONSTRAINT [DF__TeacherTy__AUTO___151B244E]  DEFAULT (getdate()) FOR [AUTO_TIME_CREATION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherTy__AUTO___160F4887]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherType] ADD  CONSTRAINT [DF__TeacherTy__AUTO___160F4887]  DEFAULT (getdate()) FOR [AUTO_TIME_UPDATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherTy__AUTO___17036CC0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherType] ADD  CONSTRAINT [DF__TeacherTy__AUTO___17036CC0]  DEFAULT ((0)) FOR [AUTO_UPDATE_COUNT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TeacherTy__IsDel__17F790F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TeacherType] ADD  CONSTRAINT [DF__TeacherTy__IsDel__17F790F9]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_CourseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_CourseType] FOREIGN KEY([CourseTypeId])
REFERENCES [dbo].[CourseType] ([CourseTypeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_CourseType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_CourseType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Course_EducationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EducationFormat]'))
ALTER TABLE [dbo].[Course_EducationFormat]  WITH CHECK ADD  CONSTRAINT [FK_Course_Course_EducationFormat] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Course_EducationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EducationFormat]'))
ALTER TABLE [dbo].[Course_EducationFormat] CHECK CONSTRAINT [FK_Course_Course_EducationFormat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EducationFormat_Course_EducationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EducationFormat]'))
ALTER TABLE [dbo].[Course_EducationFormat]  WITH CHECK ADD  CONSTRAINT [FK_EducationFormat_Course_EducationFormat] FOREIGN KEY([EducationFormatId])
REFERENCES [dbo].[EducationFormat] ([EducationFormatId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EducationFormat_Course_EducationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EducationFormat]'))
ALTER TABLE [dbo].[Course_EducationFormat] CHECK CONSTRAINT [FK_EducationFormat_Course_EducationFormat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Course_EvaluationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EvaluationFormat]'))
ALTER TABLE [dbo].[Course_EvaluationFormat]  WITH CHECK ADD  CONSTRAINT [FK_Course_Course_EvaluationFormat] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Course_EvaluationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EvaluationFormat]'))
ALTER TABLE [dbo].[Course_EvaluationFormat] CHECK CONSTRAINT [FK_Course_Course_EvaluationFormat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EvaluationFormat_Course_EvaluationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EvaluationFormat]'))
ALTER TABLE [dbo].[Course_EvaluationFormat]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationFormat_Course_EvaluationFormat] FOREIGN KEY([EvaluationFormatId])
REFERENCES [dbo].[EvaluationFormat] ([EvaluationFormatId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EvaluationFormat_Course_EvaluationFormat]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_EvaluationFormat]'))
ALTER TABLE [dbo].[Course_EvaluationFormat] CHECK CONSTRAINT [FK_EvaluationFormat_Course_EvaluationFormat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Course_IOEM]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_IOEM]'))
ALTER TABLE [dbo].[Course_IOEM]  WITH CHECK ADD  CONSTRAINT [FK_Course_Course_IOEM] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Course_IOEM]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_IOEM]'))
ALTER TABLE [dbo].[Course_IOEM] CHECK CONSTRAINT [FK_Course_Course_IOEM]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IOEM_Course_IOEM]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_IOEM]'))
ALTER TABLE [dbo].[Course_IOEM]  WITH CHECK ADD  CONSTRAINT [FK_IOEM_Course_IOEM] FOREIGN KEY([IOEMId])
REFERENCES [dbo].[IOEM] ([IOEMId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IOEM_Course_IOEM]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_IOEM]'))
ALTER TABLE [dbo].[Course_IOEM] CHECK CONSTRAINT [FK_IOEM_Course_IOEM]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course__Course_SoftSkills]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_SoftSkills]'))
ALTER TABLE [dbo].[Course_SoftSkills]  WITH CHECK ADD  CONSTRAINT [FK_Course__Course_SoftSkills] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course__Course_SoftSkills]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_SoftSkills]'))
ALTER TABLE [dbo].[Course_SoftSkills] CHECK CONSTRAINT [FK_Course__Course_SoftSkills]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoftSkills_Course_SoftSkills]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_SoftSkills]'))
ALTER TABLE [dbo].[Course_SoftSkills]  WITH CHECK ADD  CONSTRAINT [FK_SoftSkills_Course_SoftSkills] FOREIGN KEY([SoftSkillsId])
REFERENCES [dbo].[SoftSkills] ([SoftSkillsId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoftSkills_Course_SoftSkills]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course_SoftSkills]'))
ALTER TABLE [dbo].[Course_SoftSkills] CHECK CONSTRAINT [FK_SoftSkills_Course_SoftSkills]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Info_Concept]') AND parent_object_id = OBJECT_ID(N'[dbo].[Info]'))
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [FK_Info_Concept] FOREIGN KEY([ConceptId])
REFERENCES [dbo].[Concept] ([ConceptId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Info_Concept]') AND parent_object_id = OBJECT_ID(N'[dbo].[Info]'))
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [FK_Info_Concept]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Info_InfoTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Info]'))
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [FK_Info_InfoTypeId] FOREIGN KEY([InfoTypeId])
REFERENCES [dbo].[InfoType] ([InfoTypeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Info_InfoTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Info]'))
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [FK_Info_InfoTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_Person]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher]'))
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_Person]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher]'))
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Person]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_RegistrationState]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher]'))
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_RegistrationState] FOREIGN KEY([RegistrationStateId])
REFERENCES [dbo].[RegistrationState] ([RegistrationStateId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_RegistrationState]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher]'))
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_RegistrationState]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_TeacherType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher]'))
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_TeacherType] FOREIGN KEY([TeacherTypeId])
REFERENCES [dbo].[TeacherType] ([TeacherTypeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_TeacherType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher]'))
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_TeacherType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_TeacherGroup_Teacher]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher_TeacherGroup]'))
ALTER TABLE [dbo].[Teacher_TeacherGroup]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_TeacherGroup_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_TeacherGroup_Teacher]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher_TeacherGroup]'))
ALTER TABLE [dbo].[Teacher_TeacherGroup] CHECK CONSTRAINT [FK_Teacher_TeacherGroup_Teacher]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_TeacherGroup_TeacherGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher_TeacherGroup]'))
ALTER TABLE [dbo].[Teacher_TeacherGroup]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_TeacherGroup_TeacherGroup] FOREIGN KEY([TeacherGroupId])
REFERENCES [dbo].[TeacherGroup] ([TeacherGroupId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Teacher_TeacherGroup_TeacherGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[Teacher_TeacherGroup]'))
ALTER TABLE [dbo].[Teacher_TeacherGroup] CHECK CONSTRAINT [FK_Teacher_TeacherGroup_TeacherGroup]
GO
/****** Object:  Trigger [dbo].[TG_AcademicYear_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_AcademicYear_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_AcademicYear_Update]
on [dbo].[AcademicYear] after insert, update
as
begin
if update(AcademicYearId) or update(Description) or update(StartDate) or update(StopDate) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN AcademicYear a
        ON a.AcademicYearId = d.AcademicYearId
END 
end
' 
GO
ALTER TABLE [dbo].[AcademicYear] ENABLE TRIGGER [TG_AcademicYear_Update]
GO
/****** Object:  Trigger [dbo].[TG_Concept_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_Concept_Update]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[TG_Concept_Update]
ON [dbo].[Concept] AFTER INSERT, UPDATE
AS
BEGIN
    IF UPDATE(TableName) OR UPDATE(Description) OR UPDATE(AUTO_TIME_CREATION) OR UPDATE(AUTO_TIME_UPDATE) OR UPDATE(AUTO_UPDATE_COUNT) OR UPDATE(IsDeleted) OR EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE c
        SET c.AUTO_UPDATE_COUNT = c.AUTO_UPDATE_COUNT + 1, c.AUTO_TIME_UPDATE = GETDATE()
        FROM deleted d
        INNER JOIN Concept c
        ON c.ConceptId = d.ConceptId
    END 
END
' 
GO
ALTER TABLE [dbo].[Concept] ENABLE TRIGGER [TG_Concept_Update]
GO
/****** Object:  Trigger [dbo].[TG_Course_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_Course_Update]'))
EXEC dbo.sp_executesql @statement = N'CREATE trigger [dbo].[TG_Course_Update]
on [dbo].[Course] after insert, update
as
begin
if update(CourseId) or update(Name) or update(CourseTypeId) or update(Points) or update (Weight) or update(HoursTotal) or update (HoursContact) or exists (select * from deleted)
BEGIN
    UPDATE c
        set c.AUTO_UPDATE_COUNT = c.AUTO_UPDATE_COUNT + 1, c.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN Course c
        ON c.CourseId = d.CourseId
END 
end
' 
GO
ALTER TABLE [dbo].[Course] ENABLE TRIGGER [TG_Course_Update]
GO
/****** Object:  Trigger [dbo].[TG_CourseGroup_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_CourseGroup_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_CourseGroup_Update]
on [dbo].[CourseGroup] after insert, update
as
begin
    if update(CourseGroupId) or update(Name) or exists (select *
        from deleted)
BEGIN
        UPDATE cg
        set cg.AUTO_UPDATE_COUNT = cg.AUTO_UPDATE_COUNT + 1, cg.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
            INNER JOIN CourseGroup cg
            ON cg.CourseGroupId = d.CourseGroupId
    END
end
' 
GO
ALTER TABLE [dbo].[CourseGroup] ENABLE TRIGGER [TG_CourseGroup_Update]
GO
/****** Object:  Trigger [dbo].[TG_CourseType_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_CourseType_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_CourseType_Update]
on [dbo].[CourseType] after insert, update
as
begin
if update(CourseTypeId) or update(Name) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE ct
        set ct.AUTO_UPDATE_COUNT = ct.AUTO_UPDATE_COUNT + 1, ct.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN CourseType ct
        ON ct.CourseTypeId = d.CourseTypeId
END 
end
' 
GO
ALTER TABLE [dbo].[CourseType] ENABLE TRIGGER [TG_CourseType_Update]
GO
/****** Object:  Trigger [dbo].[TG_Info_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_Info_Update]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[TG_Info_Update]
ON [dbo].[Info] AFTER INSERT, UPDATE
AS
BEGIN
    IF UPDATE(ConceptId) OR UPDATE(RefKeyId) OR UPDATE(InfoTypeId) OR UPDATE(Data) OR UPDATE(AUTO_TIME_CREATION) OR UPDATE(AUTO_TIME_UPDATE) OR UPDATE(AUTO_UPDATE_COUNT) OR UPDATE(IsDeleted) OR EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE i
        SET i.AUTO_UPDATE_COUNT = i.AUTO_UPDATE_COUNT + 1, i.AUTO_TIME_UPDATE = GETDATE()
        FROM deleted d
        INNER JOIN Info i
        ON i.InfoId = d.InfoId
    END 
END
' 
GO
ALTER TABLE [dbo].[Info] ENABLE TRIGGER [TG_Info_Update]
GO
/****** Object:  Trigger [dbo].[TG_InfoType_Update]    Script Date: 15/04/2024 14:46:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_InfoType_Update]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[TG_InfoType_Update]
ON [dbo].[InfoType] AFTER INSERT, UPDATE
AS
BEGIN
    IF UPDATE(Name) OR UPDATE(AUTO_TIME_CREATION) OR UPDATE(AUTO_TIME_UPDATE) OR UPDATE(AUTO_UPDATE_COUNT) OR UPDATE(IsDeleted) OR EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE i
        SET i.AUTO_UPDATE_COUNT = i.AUTO_UPDATE_COUNT + 1, i.AUTO_TIME_UPDATE = GETDATE()
        FROM deleted d
        INNER JOIN InfoType i
        ON i.InfoTypeId = d.InfoTypeId
    END 
END
' 
GO
ALTER TABLE [dbo].[InfoType] ENABLE TRIGGER [TG_InfoType_Update]
GO
/****** Object:  Trigger [dbo].[TG_IOEM_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_IOEM_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_IOEM_Update]
on [dbo].[IOEM] after insert, update
as
begin
if update(IOEMId) or update(Description) or update(ShortName) or update(Title) or update(Detail) or update(Remark) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN IOEM a
        ON a.IOEMId = d.IOEMId
END 
end
' 
GO
ALTER TABLE [dbo].[IOEM] ENABLE TRIGGER [TG_IOEM_Update]
GO
/****** Object:  Trigger [dbo].[TG_Person_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_Person_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_Person_Update]
on [dbo].[Person] after insert, update
as
begin
if update(PersonID) or update(FirstName) or update(LastName) or update(SortName) or update(Phone) or update(Mobile) or update(Email) or update(AddressId) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN Person a
        ON a.PersonID = d.PersonID
END 
end
' 
GO
ALTER TABLE [dbo].[Person] ENABLE TRIGGER [TG_Person_Update]
GO
/****** Object:  Trigger [dbo].[TG_RegistrationState_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_RegistrationState_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_RegistrationState_Update]
on [dbo].[RegistrationState] after insert, update
as
begin
if update(RegistrationStateId) or update(Description) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN RegistrationState a
        ON a.RegistrationStateId = d.RegistrationStateId
END 
end
' 
GO
ALTER TABLE [dbo].[RegistrationState] ENABLE TRIGGER [TG_RegistrationState_Update]
GO
/****** Object:  Trigger [dbo].[TG_SoftSkills_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_SoftSkills_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_SoftSkills_Update]
on [dbo].[SoftSkills] after insert, update
as
begin
if update(SoftSkillsId) or update(ShortName) or update(Title) or update(Detail) or update(Remark) or update(Description) or exists (select * from deleted)
BEGIN
    UPDATE tc
        set tc.AUTO_UPDATE_COUNT = tc.AUTO_UPDATE_COUNT + 1, tc.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN SoftSkills tc
        ON tc.SoftSkillsId = d.SoftSkillsId
END 
end
' 
GO
ALTER TABLE [dbo].[SoftSkills] ENABLE TRIGGER [TG_SoftSkills_Update]
GO
/****** Object:  Trigger [dbo].[TG_SoftSkillsType_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_SoftSkillsType_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_SoftSkillsType_Update]
on [dbo].[SoftSkillsType] after insert, update
as
begin
if update(SoftSkillsTypeId) or update(ShortName) or update(Description) or exists (select * from deleted)
BEGIN
    UPDATE tc
        set tc.AUTO_UPDATE_COUNT = tc.AUTO_UPDATE_COUNT + 1, tc.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN SoftSkillsType tc
        ON tc.SoftSkillsTypeId = d.SoftSkillsTypeId
END 
end
' 
GO
ALTER TABLE [dbo].[SoftSkillsType] ENABLE TRIGGER [TG_SoftSkillsType_Update]
GO
/****** Object:  Trigger [dbo].[TG_Teacher_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_Teacher_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_Teacher_Update]
on [dbo].[Teacher] after insert, update
as
begin
if update(TeacherId) or update(Abbreviation) or update(Mobile) or update(Email) or update(AssignmentPercentage) or update(TeacherTypeId) or update(RegistrationStateId) or update(PersonId) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN Teacher a
        ON a.TeacherId = d.TeacherId
END 
end
' 
GO
ALTER TABLE [dbo].[Teacher] ENABLE TRIGGER [TG_Teacher_Update]
GO
/****** Object:  Trigger [dbo].[TG_Teacher_TeacherGroup_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_Teacher_TeacherGroup_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_Teacher_TeacherGroup_Update]
on [dbo].[Teacher_TeacherGroup] after insert, update
as
begin
if update(Teacher_TeacherGroupId) or update(TeacherGroupId) or update(TeacherId) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN Teacher_TeacherGroup a
        ON a.Teacher_TeacherGroupId = d.Teacher_TeacherGroupId
END 
end
' 
GO
ALTER TABLE [dbo].[Teacher_TeacherGroup] ENABLE TRIGGER [TG_Teacher_TeacherGroup_Update]
GO
/****** Object:  Trigger [dbo].[TG_TeacherGroup_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_TeacherGroup_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_TeacherGroup_Update]
on [dbo].[TeacherGroup] after insert, update
as
begin
if update(TeacherGroupId) or update(Name) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN TeacherGroup a
        ON a.TeacherGroupId = d.TeacherGroupId
END 
end
' 
GO
ALTER TABLE [dbo].[TeacherGroup] ENABLE TRIGGER [TG_TeacherGroup_Update]
GO
/****** Object:  Trigger [dbo].[TG_TeacherType_Update]    Script Date: 15/04/2024 14:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TG_TeacherType_Update]'))
EXEC dbo.sp_executesql @statement = N'Create trigger [dbo].[TG_TeacherType_Update]
on [dbo].[TeacherType] after insert, update
as
begin
if update(TeacherTypeId) or update(Description) or update(IsDeleted) or exists (select * from deleted)
BEGIN
    UPDATE a
        set a.AUTO_UPDATE_COUNT = a.AUTO_UPDATE_COUNT + 1, a.AUTO_TIME_UPDATE = GETDATE()
    FROM deleted d
        INNER JOIN TeacherType a
        ON a.TeacherTypeId = d.TeacherTypeId
END 
end
' 
GO
ALTER TABLE [dbo].[TeacherType] ENABLE TRIGGER [TG_TeacherType_Update]
GO
