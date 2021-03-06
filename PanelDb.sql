USE [DbDigitusProject]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28.10.2021 02:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 28.10.2021 02:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminMail] [nvarchar](max) NULL,
	[AdminPassword] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.10.2021 02:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[UserSurname] [nvarchar](max) NULL,
	[UserMail] [nvarchar](max) NULL,
	[UserPassword] [nvarchar](max) NULL,
	[UserStatus] [bit] NOT NULL,
	[UserRegisterDate] [datetime] NOT NULL,
	[UserOnlineTime] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202110272137480_AutomaticMigration', N'DigitusProject.Migrations.Configuration', 0x1F8B0800000000000400CD59CB6EE33614DD17E83F085AB540C6CCA328DA409E41C6498AA0E3248892D9D3D2B5C396225592CAD8DFD6453FA9BFD04BEB6551B21D394E52782391BCE73E791FF2BF7FFF137C9A27DC7B02A5991443FF6870E87B20221933311BFA99997EF8C5FFF4F1FBEF828B38997B5FCB7327F61C520A3DF41F8D494F09D1D12324540F121629A9E5D40C2299101A4B727C78F82B393A2280103E62795E709709C31258BEE0EB488A085293513E9631705DACE34EB844F5AE69023AA5110CFD73366326D3B74AFE019119E404BE77C619456142E053DFA34248430D8A7AFAA021344A8A5998E202E5F78B14F0DC94720D850AA7F5F1E76A73786CB5213561091565DAC8A427E0D149611EE292EF6464BF321F1AF0020D6D1656EBA51187FE599C30C475399D8EB8B2A7D61878B0243BF09A9B07554460E0D8DF8137CAB8C9140C056446517EE0DD6613CEA2DF61712FFF04311419E7AB02A288B8D758C025C44F4199C51D4C57C5BE8A7D8F3489894B5DD1BA84B97657C29C1CFBDE358A41271CAA4858B14468A482DF4080A206E25B6A0C2874E4550C4B5BB644E86238A68C972C31FEF036F9DE98CEBF809899C7A18F8FBE77C9E610972B85180F82E1E54322A3327816A75BAAF537A9E23D730B481D391BE3092F98EA1F4E96EA1DA3C9B2DF25984ABAB78A25CBCF3EBD7A28594661A6C45BF17A93FB6119BDD2F5586341F47AA64B569FA5E4404547806C47BA8319D3182BE71836259E7DBE67D6413B00DE08CE44415E45EFCF3F6DC1DA9C05B06C1B8AA8AAE063DF616E3AB2014A5024045D58B329708E17822990A8CD6C68C89A7B5EDA0745F5229BC93354B88B3ACF555D0A56AAD4AD07C97B8FB247216B9A94604CD314436AA5692956BC30EF58461FC2FE753CC93148A43BCA79256DC509D30C9D81B36B3D12C32553DA60ECD009B5EE1DC549C7B1DC716BAC5A7269F8C64DB2B5B1CBE3F63927D9D052B838B5F92E51A304D3E45239A884293B9816DDB25BA49CAA750DC048F22C111BDB89AD3879DE6A21E5CB3DB1EAD4D4C2ABB7DA9801710CE47A82B45CE15439D7B1CF727B7EA75EEEF5E51DECEFF46EB275F62DEBF4AA61BB6BFE3694BCFABA38F96A3FA4AABCBA60D5463FBC7628D6ABFD90BA03B1B9D353D7A210B6542DD6FBA1358BA18BD9DCED87BC5A155DDCD5BD37BE85ADAAE41EA9B857D5C9A942415111B6CFD3AD12911FF13D34D7138B6D79081768DF64600F0CC2BFF88833D4B73E30A6824D419BBC25F7719E3D76E6F1FFCF6C4CB48EF97306E4771C519935EED6C1A1670FD89A4AC51355D123553F2474FEE32ADCCE93670FC47ED3E5BB0D78AFE20977A67B91233AE6B617E3ED2D4ABAE6AF976BDB98B126CCEC6DBE8AF1D9EC6FBE9A60FB23B649D777C072DBF9CD7350312DAD9BA2F24C8F8A4F240A9DCB78564C5E5B26AC7C925A336075E13EE423D98EB357BB9A0564F51B72700E9ACD6A08FB455960D38965A2062DCF5C89A92C3D881AAD4A541E711C3C0643313AE899326C4A2383DB1168BDFC90F095F20C8F5C241388AFC44D66D2CC9C690DC984373EEF046433FFE580D99439B849ED9BDE870A2826B3017E233E678CC795DC971D31B906C2465F910751AAD0D87C385B5448D7523C13A830DF39A4206C16BD8724E508A66F44489F6017D930BCBEC08C468BB229590FB2DD114DB307E78CCE144D748151D3DBFF4588FD63E4E37F6CAE35904A190000, N'6.1.3-40302')
GO
