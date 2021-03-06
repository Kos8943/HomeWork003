USE [Drone3]
GO
/****** Object:  Table [dbo].[Drone_Battery]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drone_Battery](
	[sid] [int] IDENTITY(7,1) NOT NULL,
	[battery_Name] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[stopReason] [nvarchar](50) NULL,
 CONSTRAINT [PK_Drone_Battery] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drone_CustomerInfo]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drone_CustomerInfo](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Tel] [varchar](50) NOT NULL,
	[Area] [nvarchar](50) NULL,
	[Pesticide] [nvarchar](50) NOT NULL,
	[Pesticide_Date] [date] NOT NULL,
	[Farm_Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Drone_CustomerInfo] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drone_Destination]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drone_Destination](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Staff] [nvarchar](50) NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
	[Battery] [nvarchar](50) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[CustomerTel] [int] NOT NULL,
	[DroneUser] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](255) NULL,
 CONSTRAINT [PK_Drone_Destination] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drone_Detail]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drone_Detail](
	[DroneDetail_ID] [int] IDENTITY(1,1) NOT NULL,
	[DroneName] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[WeightLoad] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[StopReason] [nvarchar](50) NULL,
	[operator] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Drone_Detail] PRIMARY KEY CLUSTERED 
(
	[DroneDetail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drone_Fix]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drone_Fix](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[StopDate] [date] NOT NULL,
	[SendDate] [date] NOT NULL,
	[FixVendor] [nvarchar](50) NOT NULL,
	[StopReason] [nvarchar](50) NOT NULL,
	[FixChange] [nvarchar](50) NULL,
	[Remarks] [nvarchar](50) NULL,
 CONSTRAINT [PK_Drone_Fix] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drone_UserAccount]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drone_UserAccount](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Drone_UserAccount] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2021/4/5 下午 06:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [varchar](50) NOT NULL,
	[id] [int] NULL
) ON [PRIMARY]
GO
