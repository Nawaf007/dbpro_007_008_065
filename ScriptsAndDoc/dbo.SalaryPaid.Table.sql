USE [DB34]
GO
/****** Object:  Table [dbo].[SalaryPaid]    Script Date: 4/13/2019 4:15:08 PM ******/
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
