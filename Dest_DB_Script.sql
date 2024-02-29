USE [Dest]
GO
/****** Object:  Table [dbo].[CaseTable]    Script Date: 18.10.2021 13:16:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseTable](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[File #] [nvarchar](50) NULL,
	[Case Name] [nvarchar](100) NOT NULL,
	[Archive] [bit] NOT NULL,
	[Payee] [nvarchar](90) NULL,
	[Case Status] [int] NULL,
	[Liability] [nvarchar](50) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](128) NULL,
	[ts1] [timestamp] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Correspondence]    Script Date: 18.10.2021 13:16:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Correspondence](
	[CorrespondID] [int] IDENTITY(1,1) NOT NULL,
	[CaseId] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Author] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Document] [image] NULL,
	[Party] [nvarchar](255) NULL,
	[Recipient] [int] NULL,
	[RecipientAddressID] [int] NOT NULL,
	[RecipientTemp] [nvarchar](50) NULL,
	[Form] [nvarchar](255) NULL,
	[Link] [ntext] NULL,
	[Operator] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[Faxed] [bit] NOT NULL,
	[FaxedTo] [nvarchar](50) NULL,
	[DateFaxed] [datetime] NULL,
	[CalEntryID] [nvarchar](255) NULL,
	[TaskEntryId] [nvarchar](255) NULL,
	[Category] [int] NULL,
	[DocID] [int] NULL,
	[CertifiedMail] [bit] NOT NULL,
	[Temp] [int] NULL,
	[Typist] [nvarchar](50) NULL,
	[ReNumberTemp] [int] NULL,
	[CCRecipient] [int] NULL,
	[CCRecipientAddressID] [int] NOT NULL,
	[MergeTemplates] [bit] NOT NULL,
	[BCCRecipient] [int] NULL,
	[BCCRecipientAddressID] [int] NOT NULL,
	[Link2] [ntext] NULL,
	[Sent] [bit] NOT NULL,
	[CorrespondenceFrom] [int] NULL,
	[CorrespondenceFromAddressID] [int] NOT NULL,
	[DateSent] [datetime] NULL,
	[DateRecvd] [datetime] NULL,
	[RegularMail] [bit] NOT NULL,
	[DateMailed] [datetime] NULL,
	[DateMailedCertified] [datetime] NULL,
	[DateCertifiedMailReceiptRcvd] [datetime] NULL,
	[SignedForCertifiedMail] [nvarchar](50) NULL,
	[AdditionalLinksCount] [int] NULL,
	[ts] [datetime] NULL,
	[ExpertsLinked] [bit] NOT NULL,
	[TaskCode] [nvarchar](50) NULL,
	[StatusNoteCode] [nvarchar](50) NULL,
	[EMailed] [bit] NOT NULL,
	[DateEMailed] [datetime] NULL,
	[HandDelivered] [bit] NOT NULL,
	[DateHandDelivered] [datetime] NULL,
	[UseDocusign] [bit] NOT NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](128) NULL,
	[StyleID] [int] NULL,
	[Privileged] [bit] NOT NULL,
	[ts1] [timestamp] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CaseTable] ON 
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (1, N'03-000001', N'Case no. 1', 0, N'Someone', 2, N'Personal Injury', CAST(N'2020-01-31T17:16:14.433' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (3, N'20160802', N'Case no. 3', 0, N'Someone', 8, N'Personal Injury Def', NULL, N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (4, N'20160803', N'Case no. 4', 0, N'Someone', 2, N'WC Plaintiff', NULL, N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (6, N'20160805', N'Case no. 6', 0, N'Someone', 2, N'SSA', NULL, N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (8, N'20160807', N'Case no. 8', 0, N'Someone', 2, N'Mass Tort', CAST(N'2020-01-31T09:21:34.140' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (9, N'21-000094', N'Case no. 9', 0, N'Someone', 2, N'LL/T - Wrongful Detainer', CAST(N'2021-10-11T11:55:10.070' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (10, N'21-000095', N'Case no. 10', 0, N'Someone', 2, N'LL/T - THO', CAST(N'2021-10-11T11:54:57.380' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (11, N'21-000096', N'Case no. 11', 0, N'Someone', 2, NULL, CAST(N'2021-10-11T15:11:43.113' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (12, N'20-000048', N'Case no. 12', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (13, N'17-000007', N'Case no. 13', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (14, N'17-000034', N'Case no. 14', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (15, N'19-000031', N'Case no. 15', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (16, N'17-000084', N'Case no. 16', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (17, N'20-000073', N'Case no. 17', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (18, N'20-000049', N'Case no. 18', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (19, N'16188', N'Case no. 19', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (20, N'20-000080', N'Case no. 20', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.567' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (21, N'19-000160', N'Case no. 21', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (22, N'17-000107', N'Case no. 22', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (23, N'15100', N'Case no. 23', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (24, N'18-000011', N'Case no. 24', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (25, N'19-000179', N'Case no. 25', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (26, N'17-000059', N'Case no. 26', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (27, N'15237', N'Case no. 27', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (28, N'20-000046', N'Case no. 28', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (29, N'19-000102', N'Case no. 29', 0, N'Someone', 0, N'Med Mal', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (30, N'20-000043', N'Case no. 30', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (31, N'16191', N'Case no. 31', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (32, N'17-000028', N'Case no. 32', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (33, N'20-000010', N'Case no. 33', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (34, N'19-000198', N'Case no. 34', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (35, N'19-000076', N'Case no. 35', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (36, N'15144', N'Case no. 36', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (37, N'16175', N'Case no. 37', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (38, N'18-000036', N'Case no. 38', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (39, N'20-000029', N'Case no. 39', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (40, N'15173', N'Case no. 40', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (41, N'19-000037', N'Case no. 41', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (42, N'20-000103', N'Case no. 42', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (43, N'19-000040', N'Case no. 43', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (44, N'18-000032', N'Case no. 44', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (45, N'15236', N'Case no. 45', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.570' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (46, N'17-000064', N'Case no. 46', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (47, N'17-000048', N'Case no. 47', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (48, N'20-000015', N'Case no. 48', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (49, N'20-000009', N'Case no. 49', 0, N'Someone', 0, N'Med Mal', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (50, N'20-000031', N'Case no. 50', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (51, N'16160', N'Case no. 51', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (52, N'14145', N'Case no. 52', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (53, N'18-000047', N'Case no. 53', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (54, N'17-000098', N'Case no. 54', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (55, N'16-164', N'Case no. 55', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (56, N'19-000071', N'Case no. 56', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (57, N'16183', N'Case no. 57', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (58, N'17-000012', N'Case no. 58', 0, N'Someone', 0, N'Med Mal', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (59, N'16151', N'Case no. 59', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (60, N'16181', N'Case no. 60', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (61, N'20-000071', N'Case no. 61', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (62, N'18-000078', N'Case no. 62', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (63, N'19-000010', N'Case no. 63', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.573' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (64, N'18-000061', N'Case no. 64', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (65, N'21-000003', N'Case no. 65', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (66, N'19-000149', N'Case no. 66', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (67, N'18-000013', N'Case no. 67', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (68, N'20-000068', N'Case no. 68', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (69, N'19-000025', N'Case no. 69', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (70, N'17-000016', N'Case no. 70', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (71, N'20-000100', N'Case no. 71', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (72, N'16194', N'Case no. 72', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (73, N'15181', N'Case no. 73', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (74, N'19-000194', N'Case no. 74', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (75, N'16115', N'Case no. 75', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (76, N'17-000089', N'Case no. 76', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (77, N'21-000008', N'Case no. 77', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (78, N'20-000035', N'Case no. 78', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (79, N'16228', N'Case no. 79', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (80, N'17-000081', N'Case no. 80', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (81, N'19-000087', N'Case no. 81', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (82, N'15192', N'Case no. 82', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.577' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (83, N'19-000159', N'Case no. 83', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (84, N'17-000082', N'Case no. 84', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (85, N'20-000011', N'Case no. 85', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (86, N'16134', N'Case no. 86', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (87, N'18-000005', N'Case no. 87', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (88, N'17-000110', N'Case no. 88', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (89, N'16199', N'Case no. 89', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (90, N'17-000017', N'Case no. 90', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (91, N'19-000212', N'Case no. 91', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (92, N'15118', N'Case no. 92', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (93, N'15146', N'Case no. 93', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (94, N'18-000059', N'Case no. 94', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (95, N'16233', N'Case no. 95', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (96, N'20-000023', N'Case no. 96', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (97, N'17-000024', N'Case no. 97', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (98, N'17-000010', N'Case no. 98', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (99, N'18-000084', N'Case no. 99', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (100, N'13145', N'Case no. 100', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (101, N'15229', N'Case no. 101', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (102, N'17-000049', N'Case no. 102', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (103, N'14227', N'Case no. 103', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (104, N'20-000054', N'Case no. 104', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (105, N'20-000021', N'Case no. 105', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (106, N'18-000080', N'Case no. 106', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (107, N'16196', N'Case no. 107', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.580' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (108, N'17-000031', N'Case no. 108', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (109, N'17-000083', N'Case no. 109', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (110, N'13215', N'Case no. 110', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (111, N'20-000093', N'Case no. 111', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (112, N'18-000019', N'Case no. 112', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (113, N'18-000028', N'Case no. 113', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (114, N'19-000170', N'Case no. 114', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (115, N'16223', N'Case no. 115', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (116, N'18-000079', N'Case no. 116', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (117, N'19-000209', N'Case no. 117', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (118, N'19-000111', N'Case no. 118', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (119, N'19-000086', N'Case no. 119', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (120, N'15224', N'Case no. 120', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (121, N'19-000070', N'Case no. 121', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (122, N'15153', N'Case no. 122', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (123, N'20-000110', N'Case no. 123', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (124, N'17-000088', N'Case no. 124', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (125, N'19-000135', N'Case no. 125', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.583' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (126, N'19-000174', N'Case no. 126', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (127, N'15121', N'Case no. 127', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (128, N'15232', N'Case no. 128', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (129, N'16152', N'Case no. 129', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (130, N'17-000092', N'Case no. 130', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (131, N'20-000033', N'Case no. 131', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (132, N'20-000084', N'Case no. 132', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (133, N'18-000018', N'Case no. 133', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (134, N'16146', N'Case no. 134', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (135, N'17-000091', N'Case no. 135', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (136, N'19-000020', N'Case no. 136', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (137, N'17-000090', N'Case no. 137', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (138, N'19-000009', N'Case no. 138', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (139, N'19-000061', N'Case no. 139', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (140, N'19-000214', N'Case no. 140', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (141, N'16138', N'Case no. 141', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (142, N'17-000037', N'Case no. 142', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (143, N'17-000111', N'Case no. 143', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.587' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (144, N'17-000100', N'Case no. 144', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (145, N'17-000061', N'Case no. 145', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (146, N'17-000060', N'Case no. 146', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (147, N'16223', N'Case no. 147', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (148, N'16234', N'Case no. 148', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (149, N'15146', N'Case no. 149', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (150, N'14203', N'Case no. 150', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (151, N'17-000078', N'Case no. 151', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (152, N'19-000113', N'Case no. 152', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (153, N'18-000088', N'Case no. 153', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (154, N'17-000067', N'Case no. 154', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (155, N'16135', N'Case no. 155', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (156, N'17-000050', N'Case no. 156', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (157, N'18-000066', N'Case no. 157', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (158, N'14220', N'Case no. 158', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (159, N'19-000081', N'Case no. 159', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (160, N'17-000086', N'Case no. 160', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (161, N'18-000015', N'Case no. 161', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (162, N'18-000006', N'Case no. 162', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (163, N'18-000062', N'Case no. 163', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (164, N'17-000079', N'Case no. 164', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (165, N'15190', N'Case no. 165', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (166, N'20-000072', N'Case no. 166', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (167, N'20-000003', N'Case no. 167', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (168, N'16146', N'Case no. 168', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.590' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (169, N'14187', N'Case no. 169', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (170, N'17-000027', N'Case no. 170', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (171, N'19-000039', N'Case no. 171', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (172, N'17-000090', N'Case no. 172', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (173, N'18-000001', N'Case no. 173', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (174, N'19-000140', N'Case no. 174', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (175, N'19-000151', N'Case no. 175', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (176, N'17-000062', N'Case no. 176', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (177, N'20-000066', N'Case no. 177', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (178, N'17-000095', N'Case no. 178', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (179, N'19-000171', N'Case no. 179', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (180, N'19-000008', N'Case no. 180', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (181, N'19-000146', N'Case no. 181', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (182, N'18-000009', N'Case no. 182', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (183, N'19-000191', N'Case no. 183', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (184, N'18-000083', N'Case no. 184', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (185, N'17-000026', N'Case no. 185', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (186, N'18-000021', N'Case no. 186', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (187, N'18-000017', N'Case no. 187', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.593' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (188, N'19-000178', N'Case no. 188', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (189, N'18-000010', N'Case no. 189', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (190, N'16198', N'Case no. 190', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (191, N'13244', N'Case no. 191', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (192, N'16190', N'Case no. 192', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (193, N'15234', N'Case no. 193', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (194, N'18-000076', N'Case no. 194', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (195, N'20-000063', N'Case no. 195', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (196, N'14208', N'Case no. 196', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (197, N'16117', N'Case no. 197', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (198, N'19-000011', N'Case no. 198', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (199, N'18-000085', N'Case no. 199', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (200, N'16223', N'Case no. 200', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (201, N'15122', N'Case no. 201', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (202, N'20-000016', N'Case no. 202', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (203, N'17-000042', N'Case no. 203', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (204, N'16103', N'Case no. 204', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (205, N'19-000143', N'Case no. 205', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (206, N'16176', N'Case no. 206', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.597' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (207, N'19-000173', N'Case no. 207', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (208, N'19-000185', N'Case no. 208', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (209, N'20-000078', N'Case no. 209', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (210, N'19-000187', N'Case no. 210', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (211, N'15235', N'Case no. 211', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (212, N'16179', N'Case no. 212', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (213, N'18-000034', N'Case no. 213', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (214, N'17-000025', N'Case no. 214', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (215, N'18-000090', N'Case no. 215', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (216, N'15133', N'Case no. 216', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (217, N'19-000157', N'Case no. 217', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (218, N'17-000054', N'Case no. 218', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (219, N'19-000205', N'Case no. 219', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (220, N'15165', N'Case no. 220', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (221, N'17-000036', N'Case no. 221', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (222, N'20-000070', N'Case no. 222', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (223, N'18-000035', N'Case no. 223', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (224, N'17-000008', N'Case no. 224', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (225, N'14111', N'Case no. 225', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (226, N'20-000061', N'Case no. 226', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (227, N'19-000122', N'Case no. 227', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (228, N'16148', N'Case no. 228', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (229, N'16130', N'Case no. 229', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (230, N'19-000184', N'Case no. 230', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (231, N'19-000006', N'Case no. 231', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.600' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (232, N'20-000077', N'Case no. 232', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (233, N'15188', N'Case no. 233', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (234, N'18-000064', N'Case no. 234', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (235, N'19-000183', N'Case no. 235', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (236, N'19-000110', N'Case no. 236', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (237, N'19-000116', N'Case no. 237', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (238, N'19-000211', N'Case no. 238', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (239, N'16203', N'Case no. 239', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (240, N'18-000065', N'Case no. 240', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (241, N'18-000045', N'Case no. 241', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (242, N'19-000172', N'Case no. 242', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (243, N'17-000014', N'Case no. 243', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (244, N'20-000025', N'Case no. 244', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (245, N'19-000012', N'Case no. 245', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (246, N'16187', N'Case no. 246', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (247, N'18-000049', N'Case no. 247', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (248, N'15107', N'Case no. 248', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (249, N'20-000012', N'Case no. 249', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.603' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (250, N'18-000085', N'Case no. 250', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (251, N'16134', N'Case no. 251', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (252, N'16144', N'Case no. 252', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (253, N'17-000032', N'Case no. 253', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (254, N'', N'Case no. 254', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (255, N'15110', N'Case no. 255', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (256, N'17-000043', N'Case no. 256', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (257, N'19-000002', N'Case no. 257', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (258, N'20-000111', N'Case no. 258', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (259, N'19-000098', N'Case no. 259', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (260, N'16110', N'Case no. 260', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (261, N'17-000021', N'Case no. 261', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (262, N'16195', N'Case no. 262', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (263, N'21-000028', N'Case no. 263', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (264, N'19-000182', N'Case no. 264', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (265, N'16129', N'Case no. 265', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (266, N'17-000071', N'Case no. 266', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (267, N'16165', N'Case no. 267', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (268, N'19-000118', N'Case no. 268', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.607' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (269, N'18-000082', N'Case no. 269', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (270, N'17-000005', N'Case no. 270', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (271, N'20-000055', N'Case no. 271', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (272, N'17-000085', N'Case no. 272', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (273, N'18-000058', N'Case no. 273', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (274, N'19-000085', N'Case no. 274', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (275, N'14213', N'Case no. 275', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (276, N'19-000150', N'Case no. 276', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (277, N'17-000072', N'Case no. 277', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (278, N'20-000045', N'Case no. 278', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (279, N'17-000076', N'Case no. 279', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (280, N'18-000023', N'Case no. 280', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (281, N'17-000103', N'Case no. 281', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (282, N'20-000032', N'Case no. 282', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (283, N'20-000041', N'Case no. 283', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (284, N'161923', N'Case no. 284', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (285, N'19-000193', N'Case no. 285', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (286, N'16166', N'Case no. 286', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (287, N'19-000014', N'Case no. 287', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (288, N'20-000028', N'Case no. 288', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (289, N'16159', N'Case no. 289', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (290, N'16225', N'Case no. 290', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (291, N'03-000001', N'Case no. 291', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (292, N'16189', N'Case no. 292', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (293, N'17-000023', N'Case no. 293', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.610' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (294, N'18-000072', N'Case no. 294', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (295, N'18-000031', N'Case no. 295', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (296, N'17-000080', N'Case no. 296', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (297, N'16186', N'Case no. 297', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (298, N'19-000192', N'Case no. 298', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (299, N'20-000061', N'Case no. 299', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (300, N'20-000067', N'Case no. 300', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (301, N'17-000033', N'Case no. 301', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (302, N'19-000083', N'Case no. 302', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (303, N'18-000071', N'Case no. 303', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (304, N'19-000216', N'Case no. 304', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (305, N'20-000014', N'Case no. 305', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (306, N'16108', N'Case no. 306', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (307, N'16230', N'Case no. 307', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (308, N'17-000003', N'Case no. 308', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (309, N'', N'Case no. 309', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (310, N'20-000035', N'Case no. 310', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (311, N'19-000057', N'Case no. 311', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.613' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (312, N'19-000169', N'Case no. 312', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (313, N'18-000055', N'Case no. 313', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (314, N'18-000046', N'Case no. 314', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (315, N'18-000044', N'Case no. 315', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (316, N'18-00075', N'Case no. 316', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (317, N'20-000044', N'Case no. 317', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (318, N'20-000060', N'Case no. 318', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (319, N'20-000034', N'Case no. 319', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (320, N'19-000023', N'Case no. 320', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (321, N'16174', N'Case no. 321', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (322, N'16154', N'Case no. 322', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (323, N'20-000105', N'Case no. 323', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (324, N'17-000035', N'Case no. 324', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (325, N'17-000057', N'Case no. 325', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (326, N'19-000030', N'Case no. 326', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (327, N'17-000101', N'Case no. 327', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (328, N'16131', N'Case no. 328', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (329, N'19-000144', N'Case no. 329', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (330, N'16142', N'Case no. 330', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.617' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (331, N'20-000018', N'Case no. 331', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (332, N'20-000092', N'Case no. 332', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (333, N'18-000091', N'Case no. 333', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (334, N'19-000204', N'Case no. 334', 0, N'Someone', 0, N'Med Mal', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (335, N'16164', N'Case no. 335', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (336, N'15185', N'Case no. 336', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (337, N'19-000196', N'Case no. 337', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (338, N'19-000139', N'Case no. 338', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (339, N'20-000019', N'Case no. 339', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (340, N'20-000097', N'Case no. 340', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (341, N'19-000136', N'Case no. 341', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (342, N'18-000002', N'Case no. 342', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (343, N'19-000188', N'Case no. 343', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (344, N'20-000006', N'Case no. 344', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (345, N'20-000022', N'Case no. 345', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (346, N'19-000078', N'Case no. 346', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (347, N'20-000069', N'Case no. 347', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (348, N'20-000121', N'Case no. 348', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (349, N'20-000076', N'Case no. 349', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (350, N'18-000008', N'Case no. 350', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (351, N'14166', N'Case no. 351', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (352, N'20-000057', N'Case no. 352', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (353, N'17-000013', N'Case no. 353', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (354, N'16118', N'Case no. 354', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (355, N'15170', N'Case no. 355', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.620' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (356, N'19-000201', N'Case no. 356', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (357, N'20-000024', N'Case no. 357', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (358, N'20-000079', N'Case no. 358', 0, N'Someone', 0, N'Med Mal', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (359, N'18-000089', N'Case no. 359', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (360, N'17-000001', N'Case no. 360', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (361, N'18-000068', N'Case no. 361', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (362, N'19-000103', N'Case no. 362', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (363, N'18-000050', N'Case no. 363', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (364, N'16229', N'Case no. 364', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (365, N'15233', N'Case no. 365', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (366, N'20-000042', N'Case no. 366', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (367, N'13329', N'Case no. 367', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (368, N'16205', N'Case no. 368', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (369, N'15182', N'Case no. 369', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (370, N'17-000105', N'Case no. 370', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (371, N'18-000057', N'Case no. 371', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (372, N'17-000073', N'Case no. 372', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (373, N'18-000007', N'Case no. 373', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.623' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (374, N'16225', N'Case no. 374', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (375, N'17-000044', N'Case no. 375', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (376, N'19-000077', N'Case no. 376', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (377, N'18-000077', N'Case no. 377', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (378, N'19-000112', N'Case no. 378', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (379, N'13253', N'Case no. 379', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (380, N'16128', N'Case no. 380', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (381, N'19-000121', N'Case no. 381', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (382, N'17-000074', N'Case no. 382', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (383, N'18-000048', N'Case no. 383', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (384, N'18-000026', N'Case no. 384', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (385, N'21-000017', N'Case no. 385', 0, N'Someone', 0, N'General Practice', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (386, N'19-000100', N'Case no. 386', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (387, N'18-000037', N'Case no. 387', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (388, N'17-000053', N'Case no. 388', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (389, N'19-000213', N'Case no. 389', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (390, N'17-000020', N'Case no. 390', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (391, N'15109', N'Case no. 391', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (392, N'20-000020', N'Case no. 392', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.627' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (393, N'17-000022', N'Case no. 393', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (394, N'14205', N'Case no. 394', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (395, N'21-000030', N'Case no. 395', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (396, N'', N'Case no. 396', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (397, N'', N'Case no. 397', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (398, N'', N'Case no. 398', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (399, N'21-000032', N'Case no. 399', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (400, N'21-000033', N'Case no. 400', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (401, N'21-000034', N'Case no. 401', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (402, N'19-000116', N'Case no. 402', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (403, N'', N'Case no. 403', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (404, N'', N'Case no. 404', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (405, N'21-000037', N'Case no. 405', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (406, N'21-000038', N'Case no. 406', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (407, N'21-000039', N'Case no. 407', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (408, N'21-000040', N'Case no. 408', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (409, N'21-000042', N'Case no. 409', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (410, N'21-000043', N'Case no. 410', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (411, N'21-000044', N'Case no. 411', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (412, N'21-000045', N'Case no. 412', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (413, N'', N'Case no. 413', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (414, N'21-000048', N'Case no. 414', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (415, N'21-000048', N'Case no. 415', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (416, N'21-000049', N'Case no. 416', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (417, N'21-000050', N'Case no. 417', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.630' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (418, N'21-000051', N'Case no. 418', 0, N'Someone', 0, N'General Practice', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (419, N'21-000048', N'Case no. 419', 0, N'Someone', 0, N'General Practice', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (420, N'21-000052', N'Case no. 420', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (421, N'21-000053', N'Case no. 421', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (422, N'21--000054', N'Case no. 422', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (423, N'21-000055', N'Case no. 423', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (424, N'21-000056', N'Case no. 424', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (425, N'21-000057', N'Case no. 425', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (426, N'21-000059', N'Case no. 426', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (427, N'21-000060', N'Case no. 427', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (428, N'21-000061', N'Case no. 428', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (429, N'21-000063', N'Case no. 429', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (430, N'21-000064', N'Case no. 430', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (431, N'21-000065', N'Case no. 431', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (432, N'21-000066', N'Case no. 432', 0, N'Someone', 0, N'General Practice', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (433, N'21-000067', N'Case no. 433', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (434, N'21-000068', N'Case no. 434', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.633' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (435, N'21-000069', N'Case no. 435', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (436, N'21-000070', N'Case no. 436', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (437, N'21-000071', N'Case no. 437', 0, N'Someone', 0, N'Landlord/Tenant', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (438, N'16169', N'Case no. 438', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (439, N'19-000115', N'Case no. 439', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (440, N'13209', N'Case no. 440', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (441, N'17-000002', N'Case no. 441', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (442, N'18-000038', N'Case no. 442', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (443, N'18-000074', N'Case no. 443', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (444, N'16224', N'Case no. 444', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (445, N'17-000046', N'Case no. 445', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (446, N'17-000045', N'Case no. 446', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (447, N'15201', N'Case no. 447', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (448, N'16150', N'Case no. 448', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (449, N'19-000195', N'Case no. 449', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (450, N'20-000122', N'Case no. 450', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (451, N'20-000002', N'Case no. 451', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (452, N'17-000104', N'Case no. 452', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (453, N'15197', N'Case no. 453', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.637' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (454, N'17-000099', N'Case no. 454', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (455, N'19-000024', N'Case no. 455', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (456, N'20-000037', N'Case no. 456', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (457, N'16204', N'Case no. 457', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (458, N'18-000042', N'Case no. 458', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (459, N'19-000091', N'Case no. 459', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (460, N'19-000101', N'Case no. 460', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (461, N'14112', N'Case no. 461', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (462, N'17-000009', N'Case no. 462', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (463, N'17-000040', N'Case no. 463', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (464, N'20-000120', N'Case no. 464', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (465, N'20-000062', N'Case no. 465', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (466, N'19-000053', N'Case no. 466', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (467, N'16235', N'Case no. 467', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (468, N'18-000040', N'Case no. 468', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (469, N'14113', N'Case no. 469', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (470, N'16236', N'Case no. 470', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (471, N'20-000072', N'Case no. 471', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (472, N'18-000081', N'Case no. 472', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (473, N'14135', N'Case no. 473', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (474, N'19-000145', N'Case no. 474', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (475, N'18-000033', N'Case no. 475', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (476, N'21-000015', N'Case no. 476', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (477, N'15218', N'Case no. 477', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (478, N'18-000053', N'Case no. 478', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.640' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (479, N'15169', N'Case no. 479', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (480, N'21-000007', N'Case no. 480', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (481, N'20-000040', N'Case no. 481', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (482, N'18-000056', N'Case no. 482', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (483, N'17-000069', N'Case no. 483', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (484, N'19-000093', N'Case no. 484', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (485, N'18-000016', N'Case no. 485', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (486, N'16116', N'Case no. 486', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (487, N'17-000041', N'Case no. 487', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (488, N'17-000051', N'Case no. 488', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (489, N'16175', N'Case no. 489', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (490, N'14153', N'Case no. 490', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (491, N'18-000012', N'Case no. 491', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (492, N'16155', N'Case no. 492', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (493, N'17-000052', N'Case no. 493', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (494, N'17-000102', N'Case no. 494', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (495, N'15154', N'Case no. 495', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (496, N'14193', N'Case no. 496', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (497, N'17-000068', N'Case no. 497', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.643' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (498, N'19-000054', N'Case no. 498', 0, N'Someone', 0, N'Construction Civil Litigation', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (499, N'15122', N'Case no. 499', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (500, N'16182', N'Case no. 500', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (501, N'17-000039', N'Case no. 501', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (502, N'19-000180', N'Case no. 502', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (503, N'19-000105', N'Case no. 503', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (504, N'20-000108', N'Case no. 504', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (505, N'20-000036', N'Case no. 505', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (506, N'13263', N'Case no. 506', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (507, N'20-000005', N'Case no. 507', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (508, N'17-000093', N'Case no. 508', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (509, N'17-000075', N'Case no. 509', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (510, N'17-000015', N'Case no. 510', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (511, N'19-000038', N'Case no. 511', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (512, N'20-000056', N'Case no. 512', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (513, N'19-000158', N'Case no. 513', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (514, N'19-000117', N'Case no. 514', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (515, N'17-000106', N'Case no. 515', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (516, N'17-000065', N'Case no. 516', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.647' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (517, N'17-000094', N'Case no. 517', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (518, N'17-000006', N'Case no. 518', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (519, N'15226', N'Case no. 519', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (520, N'18-000092', N'Case no. 520', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (521, N'17-000038', N'Case no. 521', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (522, N'19-000217', N'Case no. 522', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (523, N'18-000039', N'Case no. 523', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (524, N'19-000161', N'Case no. 524', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (525, N'16161', N'Case no. 525', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (526, N'17-000108', N'Case no. 526', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (527, N'16185', N'Case no. 527', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (528, N'16156', N'Case no. 528', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (529, N'19-000021', N'Case no. 529', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (530, N'17-000056', N'Case no. 530', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (531, N'17-000087', N'Case no. 531', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (532, N'18-000063', N'Case no. 532', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (533, N'18-000077', N'Case no. 533', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (534, N'16126', N'Case no. 534', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (535, N'15183', N'Case no. 535', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (536, N'20-000096', N'Case no. 536', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (537, N'17-000011', N'Case no. 537', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (538, N'18-000003', N'Case no. 538', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (539, N'16162', N'Case no. 539', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (540, N'19-000052', N'Case no. 540', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (541, N'19-000104', N'Case no. 541', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.650' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (542, N'16119', N'Case no. 542', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (543, N'20-000115', N'Case no. 543', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (544, N'17-000077', N'Case no. 544', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (545, N'19-000175', N'Case no. 545', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (546, N'14215', N'Case no. 546', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (547, N'15208', N'Case no. 547', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (548, N'16147', N'Case no. 548', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (549, N'18-000069', N'Case no. 549', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (550, N'16171', N'Case no. 550', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (551, N'19-000206', N'Case no. 551', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (552, N'19-000080', N'Case no. 552', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (553, N'19-000019', N'Case no. 553', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (554, N'16170', N'Case no. 554', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (555, N'18-000070', N'Case no. 555', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (556, N'16143', N'Case no. 556', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (557, N'18-000059', N'Case no. 557', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (558, N'16167', N'Case no. 558', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (559, N'17-000097', N'Case no. 559', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (560, N'21-000025', N'Case no. 560', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.653' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (561, N'20-000085', N'Case no. 561', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (562, N'14160', N'Case no. 562', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (563, N'16225', N'Case no. 563', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (564, N'16132', N'Case no. 564', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (565, N'17-000055', N'Case no. 565', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (566, N'21-000024', N'Case no. 566', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (567, N'16231', N'Case no. 567', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (568, N'18-000043', N'Case no. 568', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (569, N'19-000189', N'Case no. 569', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (570, N'17-000019', N'Case no. 570', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (571, N'20-000013', N'Case no. 571', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (572, N'17-000097', N'Case no. 572', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (573, N'15137', N'Case no. 573', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (574, N'', N'Case no. 574', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (575, N'19-000148', N'Case no. 575', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (576, N'19-000210', N'Case no. 576', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (577, N'20-000030', N'Case no. 577', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (578, N'18-000020', N'Case no. 578', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (579, N'18-000022', N'Case no. 579', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.657' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (580, N'15102', N'Case no. 580', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (581, N'21-000029', N'Case no. 581', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (582, N'20-000064', N'Case no. 582', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (583, N'19-000022', N'Case no. 583', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (584, N'19-000181', N'Case no. 584', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (585, N'19-000043', N'Case no. 585', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (586, N'20-000008', N'Case no. 586', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (587, N'16193', N'Case no. 587', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (588, N'18-000073', N'Case no. 588', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
INSERT [dbo].[CaseTable] ([CaseId], [File #], [Case Name], [Archive], [Payee], [Case Status], [Liability], [LastModifiedDate], [LastModifiedBy]) VALUES (589, N'19-000108', N'Case no. 589', 0, N'Someone', 0, N'Personal Injury', CAST(N'2021-10-18T13:04:16.660' AS DateTime), N'System')
GO
SET IDENTITY_INSERT [dbo].[CaseTable] OFF
GO
/****** Object:  Index [PK_CaseTable]    Script Date: 18.10.2021 13:16:18 ******/
ALTER TABLE [dbo].[CaseTable] ADD  CONSTRAINT [PK_CaseTable] PRIMARY KEY NONCLUSTERED 
(
	[CaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Correspondence]    Script Date: 18.10.2021 13:16:18 ******/
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [PK_Correspondence] PRIMARY KEY NONCLUSTERED 
(
	[CorrespondID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CaseTable] ADD  CONSTRAINT [DF_CaseTable_Archive]  DEFAULT ((0)) FOR [Archive]
GO
ALTER TABLE [dbo].[CaseTable] ADD  CONSTRAINT [DF_CaseTable_Case Status]  DEFAULT ((0)) FOR [Case Status]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_CaseId]  DEFAULT ((0)) FOR [CaseId]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_Date]  DEFAULT ([dbo].[fn_GetUserDate]()) FOR [Date]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_Party]  DEFAULT ('Client') FOR [Party]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_Recipient]  DEFAULT ((0)) FOR [Recipient]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_RecipientAddressID]  DEFAULT ((0)) FOR [RecipientAddressID]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_Faxed]  DEFAULT ((0)) FOR [Faxed]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_CertifiedMail]  DEFAULT ((0)) FOR [CertifiedMail]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_CCRecipient]  DEFAULT ((0)) FOR [CCRecipient]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_CCRecipientAddressID]  DEFAULT ((0)) FOR [CCRecipientAddressID]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_MergeTemplates]  DEFAULT ((0)) FOR [MergeTemplates]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_BCCRecipient]  DEFAULT ((0)) FOR [BCCRecipient]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_BCCRecipientAddressID]  DEFAULT ((0)) FOR [BCCRecipientAddressID]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_Sent]  DEFAULT ((0)) FOR [Sent]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_CorrespondenceFrom]  DEFAULT ((0)) FOR [CorrespondenceFrom]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_CorrespondenceFromAddressID]  DEFAULT ((0)) FOR [CorrespondenceFromAddressID]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_RegularMail]  DEFAULT ((0)) FOR [RegularMail]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_ExpertsLinked]  DEFAULT ((0)) FOR [ExpertsLinked]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_EMailed]  DEFAULT ((0)) FOR [EMailed]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_HandDelivered]  DEFAULT ((0)) FOR [HandDelivered]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_UseDocusign]  DEFAULT ((0)) FOR [UseDocusign]
GO
ALTER TABLE [dbo].[Correspondence] ADD  CONSTRAINT [DF_Correspondence_Privileged]  DEFAULT ((0)) FOR [Privileged]
GO
