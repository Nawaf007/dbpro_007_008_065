USE [DB34]
GO
/****** Object:  Table [dbo].[SectionCourse]    Script Date: 4/13/2019 4:15:08 PM ******/
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
