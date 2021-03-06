USE [DB34]
GO
/****** Object:  Table [dbo].[FeesStudent]    Script Date: 4/13/2019 4:15:08 PM ******/
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
