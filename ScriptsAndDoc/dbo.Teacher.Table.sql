USE [DB34]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 4/13/2019 4:15:08 PM ******/
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
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Teacher_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_dbo.Teacher_dbo.AspNetUsers_Id]
GO
