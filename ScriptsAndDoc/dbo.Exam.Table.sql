USE [DB34]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 4/13/2019 4:15:08 PM ******/
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
