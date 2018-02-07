--Create the Color Options Table
CREATE TABLE [dbo].[tblColorOptions](
	[OptionID] [int] NOT NULL,
	[ShapeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[Shape1] [int] NULL,
	[Shape2] [int] NULL,
	[Shape3] [int] NULL,
	[Shape4] [int] NULL,
	[Shape5] [int] NULL,
	[ColorCombo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblColorOptions] PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC,
	[ShapeID] ASC,
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


