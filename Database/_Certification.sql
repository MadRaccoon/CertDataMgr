USE [_Certification]
GO
/****** Object:  Table [dbo].[_Shard]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Shard](
	[nID] [smallint] IDENTITY(1,1) NOT NULL,
	[nFarmID] [tinyint] NOT NULL,
	[nContentID] [tinyint] NOT NULL,
	[szName] [varchar](32) NOT NULL,
	[szDBConfig] [varchar](256) NOT NULL,
	[szLogDBConfig] [varchar](256) NOT NULL,
	[nMaxUser] [smallint] NOT NULL,
	[nStartupServerID] [smallint] NOT NULL,
 CONSTRAINT [PK__Shard] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shard ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'nID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farm ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'nFarmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'nContentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shard Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'szName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Game Database' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'szDBConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Log Database' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'szLogDBConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shard Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Shard', @level2type=N'COLUMN',@level2name=N'nMaxUser'
GO
/****** Object:  Table [dbo].[_ServerMachine]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_ServerMachine](
	[nID] [int] IDENTITY(1,1) NOT NULL,
	[nDivisionID] [tinyint] NOT NULL,
	[szName] [varchar](32) NOT NULL,
	[szPublicIP] [varchar](16) NOT NULL,
	[szPrivateIP] [varchar](16) NOT NULL,
 CONSTRAINT [PK__ServerMachine] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[_ServerMachine] ON
INSERT [dbo].[_ServerMachine] ([nID], [nDivisionID], [szName], [szPublicIP], [szPrivateIP]) VALUES (1, 0, N'Certification', N'127.0.0.1', N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[_ServerMachine] OFF
/****** Object:  Table [dbo].[_ServerCord]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ServerCord](
	[nID] [int] NOT NULL,
	[nOutletID] [smallint] NOT NULL,
	[nInletID] [smallint] NOT NULL,
	[nBindType] [tinyint] NOT NULL,
 CONSTRAINT [PK__ServerCord] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (1, 2, 1, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (2, 4, 2, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (3, 3, 2, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (4, 5, 2, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (5, 6, 5, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (6, 8, 5, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (7, 7, 5, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (8, 6, 8, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (9, 6, 7, 0)
INSERT [dbo].[_ServerCord] ([nID], [nOutletID], [nInletID], [nBindType]) VALUES (10, 8, 7, 0)
/****** Object:  Table [dbo].[_ServerBody]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ServerBody](
	[nID] [smallint] IDENTITY(1,1) NOT NULL,
	[nDivisionID] [tinyint] NULL,
	[nFarmID] [tinyint] NULL,
	[nShardID] [smallint] NULL,
	[nMachineID] [int] NULL,
	[nModuleID] [tinyint] NULL,
	[nModuleType] [tinyint] NULL,
	[nCertifierID] [smallint] NULL,
	[nListenerPort] [smallint] NULL,
 CONSTRAINT [PK__ServerBody] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Module]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Module](
	[nID] [tinyint] IDENTITY(1,1) NOT NULL,
	[szModuleName] [varchar](64) NOT NULL,
 CONSTRAINT [PK__Module] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Module ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Module', @level2type=N'COLUMN',@level2name=N'nID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Module Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Module', @level2type=N'COLUMN',@level2name=N'szModuleName'
GO
SET IDENTITY_INSERT [dbo].[_Module] ON
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (1, N'Certification')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (2, N'GlobalManager')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (3, N'DownloadServer')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (4, N'GatewayServer')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (5, N'FarmManager')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (6, N'AgentServer')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (7, N'SR_ShardManager')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (8, N'SR_GameServer')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (9, N'SR_Client')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (10, N'ServiceManager')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (11, N'MachineManager')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (12, N'JmxMsgSvr')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (13, N'JmxMessenger')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (14, N'SMC')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (15, N'CPRJ_Client')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (16, N'CPRJ_GameServer')
INSERT [dbo].[_Module] ([nID], [szModuleName]) VALUES (17, N'CPRJ_ShardManager')
SET IDENTITY_INSERT [dbo].[_Module] OFF
/****** Object:  Table [dbo].[_FarmContent]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_FarmContent](
	[nFarmID] [tinyint] NOT NULL,
	[nContentID] [tinyint] NOT NULL,
 CONSTRAINT [PK__FarmContent_1] PRIMARY KEY CLUSTERED 
(
	[nFarmID] ASC,
	[nContentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farm ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_FarmContent', @level2type=N'COLUMN',@level2name=N'nFarmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_FarmContent', @level2type=N'COLUMN',@level2name=N'nContentID'
GO
/****** Object:  Table [dbo].[_Farm]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Farm](
	[nID] [tinyint] IDENTITY(1,1) NOT NULL,
	[nDivisionID] [tinyint] NOT NULL,
	[szName] [varchar](32) NOT NULL,
	[szDBConfig] [varchar](256) NULL,
 CONSTRAINT [PK__Farm] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farm ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Farm', @level2type=N'COLUMN',@level2name=N'nID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Farm', @level2type=N'COLUMN',@level2name=N'nDivisionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farm Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Farm', @level2type=N'COLUMN',@level2name=N'szName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Empty Database' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Farm', @level2type=N'COLUMN',@level2name=N'szDBConfig'
GO
/****** Object:  Table [dbo].[_Division]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Division](
	[nID] [tinyint] IDENTITY(1,1) NOT NULL,
	[szName] [varchar](32) NOT NULL,
	[szDBConfig] [varchar](256) NOT NULL,
 CONSTRAINT [PK__Division] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Division', @level2type=N'COLUMN',@level2name=N'nID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Division', @level2type=N'COLUMN',@level2name=N'szName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Account Database' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Division', @level2type=N'COLUMN',@level2name=N'szDBConfig'
GO
/****** Object:  Table [dbo].[_Content]    Script Date: 07/29/2016 19:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_Content](
	[nID] [tinyint] IDENTITY(1,1) NOT NULL,
	[szName] [varchar](64) NOT NULL,
 CONSTRAINT [PK__Content] PRIMARY KEY CLUSTERED 
(
	[nID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Content', @level2type=N'COLUMN',@level2name=N'nID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'_Content', @level2type=N'COLUMN',@level2name=N'szName'
GO
SET IDENTITY_INSERT [dbo].[_Content] ON
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (1, N'Silkroad_Dev')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (2, N'Silkroad_Korea_Yahoo_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (3, N'Silkroad_Korea_Yahoo_Test_IN')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (4, N'SRO_China_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (5, N'SRO_China_TestLocal')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (6, N'Silkroad_Joymax')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (7, N'JoymaxMessenger')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (8, N'ServiceManager')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (9, N'SRO_China_TestIn')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (10, N'SRO_Taiwan_TestIn')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (11, N'SRO_Taiwan_TestLocal')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (12, N'SRO_Taiwan_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (13, N'SRO_DEEPDARK')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (14, N'SRO_Taiwan_BillingTest')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (15, N'SRO_Japan_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (16, N'SRO_Japan_TestLocal')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (17, N'SRO_Japan_TestIn')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (18, N'SRO_Global_TestBed')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (19, N'SRO_Global_TestBed_In')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (20, N'SRO_EuropeTest')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (21, N'SRO_Vietnam_TestIn')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (22, N'SRO_Vietnam_TestLocal')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (23, N'SRO_Net2E_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (24, N'Yahoo_Official_Test')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (25, N'SRO_GNGWC_TestIn')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (26, N'SRO_GNGWC_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (27, N'SRO_China_OpenTest')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (29, N'SRO_GNGWC_Official_Final')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (30, N'CPRJ_Dev')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (31, N'SRO_INTERNAL_EU')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (32, N'SRO_INTERNAL_EU_QUEST')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (33, N'Vietnam_Dev')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (34, N'SRO_China_EuroTest')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (35, N'SRO_Taiwan_FOS CB')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (36, N'SRO_GameOn_Official_Test')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (37, N'SRO_Thailand_TestLocal')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (38, N'SRO_Thailand_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (39, N'SRO_Russia_TestLocal')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (40, N'SRO_Russia_Official')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (41, N'SRO_Japan_TestOTP')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (42, N'SRO_Global_TestBed_OT')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (43, N'SRO_Japan_CGI_TestIn')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (44, N'SRO_Japan_TestLocal_We')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (45, N'SRO_R_JP_TestLocal_We')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (46, N'SRO_R_JP_RealLocal_We')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (47, N'SRO_R_CH_TestLocal_CIMO')
INSERT [dbo].[_Content] ([nID], [szName]) VALUES (48, N'SRO_R_CH_RealLocal_CIMO')
SET IDENTITY_INSERT [dbo].[_Content] OFF
/****** Object:  StoredProcedure [dbo].[_AssignContentToFarm]    Script Date: 07/29/2016 19:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CraYu
-- Create date: July 2016
-- Description:	Assign content to farm
-- =============================================
CREATE PROCEDURE [dbo].[_AssignContentToFarm] 
	@FarmID TINYINT,
	@ContentID TINYINT
AS
BEGIN
	INSERT INTO _FarmContent (nFarmID, nContentID)
	VALUES (@FarmID, @ContentID)
END
GO
/****** Object:  StoredProcedure [dbo].[_AddShard]    Script Date: 07/29/2016 19:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CraYu
-- Create date: July 2016
-- Description:	Adds new shard
-- =============================================
CREATE PROCEDURE [dbo].[_AddShard]
	@FarmID AS TINYINT,
	@ContentID AS TINYINT,
	@ShardName AS VARCHAR(32),
	@ShardDB AS VARCHAR(256),
	@LogDB AS VARCHAR(256),
	@MaxUser AS SMALLINT,
	@StartupShardMgr AS SMALLINT
AS
BEGIN
	INSERT INTO _Shard (nFarmID, nContentID, szName, szDBConfig, szLogDBConfig, nMaxUser, nStartupServerID)
	VALUES (@FarmID, @ContentID, @ShardName, @ShardDB, @LogDB, @MaxUser, @StartupShardMgr)
END
GO
/****** Object:  StoredProcedure [dbo].[_AddServerMachine]    Script Date: 07/29/2016 19:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CraYu
-- Create date: July 2016
-- Description:	Adds new server machine
-- =============================================
CREATE PROCEDURE [dbo].[_AddServerMachine]
	@DivisionID AS TINYINT,
	@MachineName AS VARCHAR(32),
	@PublicIP AS VARCHAR(16),
	@PrivateIP AS VARCHAR(16) 
AS
BEGIN
	INSERT INTO _ServerMachine (nDivisionID, szName, szPublicIP, szPrivateIP)
	VALUES (@DivisionID, @MachineName, @PublicIP, @PrivateIP)
END
GO
/****** Object:  StoredProcedure [dbo].[_AddServerBody]    Script Date: 07/29/2016 19:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CraYu
-- Create date: July 2016
-- Description:	Adds new server body
-- =============================================
CREATE PROCEDURE [dbo].[_AddServerBody]
	@ModuleID AS TINYINT,
	@CertifierID AS SMALLINT,
	@DivisionID AS TINYINT,
	@FarmID AS TINYINT,
	@ShardID AS SMALLINT,
	@MachineID AS INT,
	@Port AS SMALLINT
	--@ModuleType AS TINYINT // Not needed!
AS
BEGIN
	INSERT INTO _ServerBody (nDivisionID, nFarmID, nShardID, nMachineID, nModuleID, nModuleType, nCertifierID, nListenerPort)
	VALUES (@DivisionID, @FarmID, @ShardID, @MachineID, @ModuleID, 0, @CertifierID, @Port)
END
GO
/****** Object:  StoredProcedure [dbo].[_AddFarm]    Script Date: 07/29/2016 19:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CraYu
-- Create date: July 2016
-- Description:	Adds new farm
-- =============================================
CREATE PROCEDURE [dbo].[_AddFarm]
	@DivisionID AS TINYINT,
	@FarmName AS VARCHAR(32)
AS
BEGIN
	INSERT INTO _Farm (nDivisionID, szName, szDBConfig)
	VALUES (@DivisionID, @FarmName, '')
END
GO
/****** Object:  StoredProcedure [dbo].[_AddDivision]    Script Date: 07/29/2016 19:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CraYu
-- Create date: July 2016
-- Description:	Adds new division
-- =============================================
CREATE PROCEDURE [dbo].[_AddDivision] 
	@DivisionName AS VARCHAR(32),
	@DBConfig AS VARCHAR(256)
AS
BEGIN
	INSERT INTO _Division (szName, szDBConfig)
	VALUES (@DivisionName, @DBConfig)
END
GO
/****** Object:  Default [DF__Module_szModuleName]    Script Date: 07/29/2016 19:04:27 ******/
ALTER TABLE [dbo].[_Module] ADD  CONSTRAINT [DF__Module_szModuleName]  DEFAULT (' ') FOR [szModuleName]
GO
