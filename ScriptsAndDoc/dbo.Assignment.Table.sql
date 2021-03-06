USE [DB34]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 4/13/2019 4:15:08 PM ******/
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
