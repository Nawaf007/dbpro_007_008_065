USE [DB34]
GO
/****** Object:  Table [dbo].[SSExam]    Script Date: 4/13/2019 4:15:08 PM ******/
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
