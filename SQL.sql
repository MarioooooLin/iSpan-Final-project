/****** Object:  Table [dbo].[AptitudeTest]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeTest](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](100) NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_AptitudeTest] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[AuthorId] [int] NULL,
	[UpdateTime] [date] NULL,
	[Keyword] [nvarchar](200) NULL,
	[img] [nvarchar](100) NULL,
	[ArticleContent] [nvarchar](1000) NULL,
	[ArticleFloor] [int] NULL,
	[NickName] [nvarchar](50) NULL,
	[Message] [nvarchar](500) NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
	[Name] [nvarchar](20) NULL,
	[IdCard] [nvarchar](20) NULL,
	[Email] [nvarchar](30) NULL,
	[Cellphone] [nvarchar](10) NULL,
	[Birth] [date] NULL,
	[Address] [nvarchar](30) NULL,
	[Schoolname] [nvarchar](30) NULL,
	[Education] [nvarchar](500) NULL,
	[Seniority] [int] NULL,
	[Status] [nvarchar](30) NULL,
	[Img] [nvarchar](100) NULL,
	[Autobiography] [nvarchar](700) NULL,
	[Workexperience] [nvarchar](500) NULL,
	[Workexname] [nvarchar](30) NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateCV]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateCV](
	[CandidateCVId] [int] IDENTITY(1,1) NOT NULL,
	[CVSource] [nvarchar](100) NULL,
	[CandidateId] [int] NULL,
	[CVId] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_CandidateCV] PRIMARY KEY CLUSTERED 
(
	[CandidateCVId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateSkill]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateSkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CandidateId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK_CandidateSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NULL,
	[TeacherID] [int] NULL,
	[Price] [int] NULL,
	[Addedtime] [date] NULL,
	[CourseVideo] [nvarchar](100) NULL,
	[CourseImg] [nvarchar](200) NULL,
	[keyword] [nvarchar](500) NULL,
	[CourseReqire] [nvarchar](1000) NULL,
	[CourseIntro] [nvarchar](1000) NULL,
	[Category] [nvarchar](50) NULL,
	[CourseLength] [int] NULL,
	[Chapter] [int] NULL,
 CONSTRAINT [PK_Course_1] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseContent]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseContent](
	[CourseId] [int] NOT NULL,
	[CourseId100] [int] NOT NULL,
	[Coursechapter] [int] NOT NULL,
	[ChapterName] [nvarchar](100) NULL,
	[Video] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId100] ASC,
	[Coursechapter] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseDetail]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseDetail](
	[CourseId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[SkillId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseOrder]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateId] [int] NULL,
	[CourseId] [int] NULL,
	[Buyingtime] [date] NULL,
	[Vaild] [bit] NULL,
 CONSTRAINT [PK_CourseOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CV]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[CVId] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](100) NULL,
	[Source] [nvarchar](100) NULL,
 CONSTRAINT [PK_CV] PRIMARY KEY CLUSTERED 
(
	[CVId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise](
	[EnterpriseId] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Password] [nvarchar](12) NULL,
	[Category] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[UniformNumbers] [nvarchar](10) NULL,
	[Telephone] [nvarchar](10) NULL,
	[Fax] [nvarchar](10) NULL,
	[OpeningHours] [nvarchar](20) NULL,
	[Address] [nvarchar](50) NULL,
	[Principal] [nvarchar](10) NULL,
	[ContactPhone] [nvarchar](10) NULL,
	[ContactTime] [nvarchar](20) NULL,
	[Email] [nvarchar](20) NULL,
	[Info] [nvarchar](200) NULL,
	[img] [nvarchar](100) NULL,
	[Welfare] [nvarchar](500) NULL,
	[employee] [nvarchar](10) NULL,
 CONSTRAINT [PK_Enterprise] PRIMARY KEY CLUSTERED 
(
	[EnterpriseId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnterpriseInterest]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnterpriseInterest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[candidateId] [int] NULL,
	[vacancyId] [int] NULL,
	[status] [int] NULL,
	[enterpriseId] [int] NULL,
	[CV] [nvarchar](200) NULL,
 CONSTRAINT [PK_EnterpriseInterest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[candidateId] [int] NULL,
	[enterpriseId] [int] NULL,
	[vacancyId] [int] NULL,
	[interestStatus] [int] NULL,
 CONSTRAINT [PK_Interest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedArticle]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedArticle](
	[CandidateId] [int] NOT NULL,
	[ArticleId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedArticle_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[ArticleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedCourse]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedCourse](
	[CandidateId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedCourse_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[CourseId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedCV]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedCV](
	[CandidateId] [int] NOT NULL,
	[CVId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedCV_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[CVId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedEnterprise]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedEnterprise](
	[CandidateId] [int] NOT NULL,
	[EnterpriseId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedEnterprise_1] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[EnterpriseId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterestedPlatformArticle]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterestedPlatformArticle](
	[CandidateId] [int] NOT NULL,
	[PlatformArticleId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_InterestedPlatformArticle] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC,
	[PlatformArticleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginInformation]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](15) NULL,
	[Password] [nvarchar](15) NULL,
	[Email] [nvarchar](20) NULL,
	[Phone] [nvarchar](10) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_LoginInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platform](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[ArticleName] [nvarchar](25) NOT NULL,
	[AuthorId] [int] NULL,
	[Contents] [nvarchar](max) NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[ReplyId] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[ReplyTime] [datetime] NOT NULL,
	[Floor] [int] NOT NULL,
	[ReplyMessage] [nvarchar](max) NULL,
	[ArticleName] [nvarchar](25) NOT NULL,
	[Contents] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reply] PRIMARY KEY CLUSTERED 
(
	[ReplyId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CandidaterId] [int] NULL,
	[Score] [int] NULL,
	[AnswerTime] [date] NULL,
	[Result] [int] NULL,
	[Type] [nvarchar](500) NULL,
	[Analysis] [nvarchar](500) NULL,
	[SuggestJob] [nvarchar](500) NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](50) NULL,
	[Category] [int] NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Categories] [nvarchar](30) NULL,
	[EntryTime] [date] NULL,
	[Experience] [nvarchar](100) NULL,
	[Working] [bit] NULL,
	[img] [nvarchar](100) NULL,
	[Intro] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancy]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancy](
	[VacancyId] [int] IDENTITY(1,1) NOT NULL,
	[WorkName] [nvarchar](100) NULL,
	[EnterpriseId] [int] NULL,
	[Category] [nvarchar](10) NULL,
	[WorkPlace] [nvarchar](100) NULL,
	[WorkTime] [nvarchar](50) NULL,
	[Salary] [int] NULL,
	[FullPartTime] [bit] NULL,
	[Shift] [nvarchar](20) NULL,
	[Seniority] [int] NULL,
	[WorkContent] [nvarchar](1000) NULL,
	[WorkReqire] [nvarchar](1000) NULL,
	[Updatetime] [date] NULL,
	[Valid] [bit] NULL,
	[number] [int] NULL,
 CONSTRAINT [PK_Vacancy] PRIMARY KEY CLUSTERED 
(
	[VacancyId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacancySkill]    Script Date: 2023/2/14 下午 07:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacancySkill](
	[VacancyId] [int] NOT NULL,
	[NeedSkillId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VacancyId] ASC,
	[NeedSkillId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AptitudeTest] ON 

INSERT [dbo].[AptitudeTest] ([QuestionId], [Question], [Count]) VALUES (1, N'有些回饋十分具建設性，但卻常常會要你做一些不適合你的工作？', NULL)
INSERT [dbo].[AptitudeTest] ([QuestionId], [Question], [Count]) VALUES (2, N'公司裡主管階級的人，他們的技能是否與你的技能有很大的差異？', NULL)
INSERT [dbo].[AptitudeTest] ([QuestionId], [Question], [Count]) VALUES (3, N'你經常覺得沒有安全感、覺得自己不夠好，因為不管自己多麼努力工作，仍然不能滿足他人的期望？', NULL)
INSERT [dbo].[AptitudeTest] ([QuestionId], [Question], [Count]) VALUES (4, N'在你們公司成為一位模範員工，對你來說好像是不可能的事情？', NULL)
INSERT [dbo].[AptitudeTest] ([QuestionId], [Question], [Count]) VALUES (5, N'你喜歡幫助人並且與人相處嗎?', NULL)
SET IDENTITY_INSERT [dbo].[AptitudeTest] OFF
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (1, N'中年轉職像是被打回原形，徬徨焦慮沒有方向？專業顧問：「你其實並不孤單」', 1, CAST(N'2023-01-09' AS Date), N'中高齡就業', N'/images/sq_img_12.jpg', N'
過去Mark工作的貿易商公司較小型，因此他做過很多不同職務，包含行政、業務等都做過。也因為經驗及歷練多元，反而讓他在這次的轉職的目標不明確。雖然有詢問身邊的親友和長輩，但畢竟彼此熟識已久，給出的意見可能較不客觀，他想藉由一個專業第三者的角度協助自己，因此選擇104高年級平台上的韓世寧顧問。

韓世寧老師具有教練的專業背景，善於協助學員依據自身的優劣勢來探索方向。報名世寧老師的諮詢之後，Mark收到一份詳盡的問卷請他連同履歷，在諮詢前先回覆。透過問卷上的問題，他回想起從出國到工作這16年間發生的許多事，包含工作中的目標、達成事項以及成就感等等。往事歷歷在目，也讓原本不清晰的未來目標開始有了眉目。韓世寧老師具有教練的專業背景，善於協助學員依據自身的優劣勢來探索方向。報名世寧老師的諮詢之後，Mark收到一份詳盡的問卷請他連同履歷，在諮詢前先回覆。透過問卷上的問題，他回想起從出國到工作這16年間發生的許多事，包含工作中的目標、達成事項以及成就感等等。往事歷歷在目，也讓原本不清晰的未來目標開始有了眉目。正式來到諮詢的時間，世寧老師透過之前問卷蒐集到的資訊協助Mark充實履歷。他也坦言，自己對面試有一定的信心並不害怕，但擔心的是拿不到面試機會，因此攸關是否能拿到面試入場券的「履歷」就顯得十分重要。世寧老師認為他的履歷還不夠吸引人，也建議他重寫自我介紹信。因此在諮詢中透過問答的方式，引導他將人格特質及工作中的專案成果表達地更完整。自己一個人在寫履歷時總是擠不出來，但透過問答的探索方式，讓他侃侃而談，也幫助他後續面試時，更能在面試官前自在展現自己。另外老師也建議他能考取TOEIC，放在履歷上證明自己的英文能力。在找工作的管道上，也不一定只侷限透過人力銀行尋找，可以透過人脈或LinkedIn尋找，展現積極的態度多問多打聽職缺情報，讓自己的選擇及籌碼更增加。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (2, N'勞動部「勞動力趨勢探討」近15年中高年級續留職場比例增，整體流動性下降對技能與所得產生影響', 2, CAST(N'2023-01-10' AS Date), N'中高齡就業', N'/images/person_1.jpg', N'為了瞭解國內勞動力變遷趨勢，並深入分析產業人力發展和特性，勞動部勞動及職業安全衛生研究所對2005年至2020年追蹤分析15年間之勞動力趨勢。透過研究資料發現「工業部門」的投保人次比重逐漸下降，「服務業」則有增加趨勢；另外勞動力年齡層結構則以35歲至44歲為主力；而「55歲至64歲」、「65歲(含)以上」之年齡層續留職場之人次增加最為明顯。進一步分析指出，離開職場後再就業者（退保後再投保的勞動力）多為25歲至34歲，其相較整體勞動市場主力35歲至44歲年輕10歲，且呈現如勞動力市場國際趨勢之「流動性下降」。整體勞動市場總投保人次雖多呈現逐月上升，然而勞動市場之進入、退出變化趨緩，亦顯示勞動市場流動性下降。對於「勞動市場流動率下降」此一現象，勞安所表示會限制工作機會的增加、降低專業技能的發展，同時也會影響所得分配等。勞動部持續積極推動相關就業服務及職業訓練等措施，活絡勞動市場之流動性，強化中高齡者、青年等勞參率及生產力。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (3, N'偷學52歲的她三特質，多元斜槓就業不怕沒雇主', 3, CAST(N'2023-01-08' AS Date), N'中高齡就業', N'/images/person_5.jpg', N'馬小姐與其他門市類求職者一樣，他們相當了解與人互動多的服務業，非常吃「面緣」，不是指他們必須長相是型男美女，而是指他們通常注意體態、外表整齊、具備絕佳的親和力。俗話說：「嘴甜、腰彎」是服務業第一線人員必知公開秘密，但是往往在中高齡求職現場中觀察到，沒有門市經驗的中年上班族轉行服務業，並未意識到這點，雖然能力100分但輸在外表體現的第一印象，提醒各位中年轉職者，不妨決定重返職場時，先好好自我審視的體態，保持整齊、清新的儀容，也是一種求職面試的禮貌。唯有自己看了都滿意的笑容、體態、健康觀念，才足以讓你自信展開下一段的職涯路。少部分二度就業的求職者，因自己尚未有打掉重練的心理準備，還將自己還留在上一份工作所停留的職務頭銜、能力經驗之中，忘記自己到新環境必須心態歸零，必須接受年輕主管的管理指教。馬小姐參與高年級50+嚴選服務，面談的前中後，除了保持禮貌、適度的讚美對方，也會讓面談官很有印象，到職後，她遇不懂會發問、積極學習，她認為新人到職前三個月必須姿態低，更是與104團隊分享了一個以前工作經歷，她說：「當時未滿三個月，小主管因某事誤會我，但我能同理主管年紀比我小，管理經驗可能也不多，我當下沒有為自己辯駁，就先讓主管訓話，聽聽看他怎麼說，之後我再讓他理解我，我的工作能力是能夠讓他能放心的。」', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (4, N'【2023最新】打工履歷表乾貨大全 #更新 懶人打工推薦', 4, CAST(N'2023-01-07' AS Date), N'打工兼職', N'/images/person_6.jpg', N'這幾年利用在家工作、高薪打工的幌子進行對學生的詐騙真的防不慎防，可以看到Dcard的這篇文章「求職者請小心 已多人被騙」，就可以知道很多沒良心的人利用打工的名義詐騙，手法層出不窮，防不慎防。最好避開的方法就是選擇安心有制度且幫助求職者把關的平台進行應徵，太過好賺的打工(時薪超過基本工資3~4倍，但工作內容卻輕鬆簡單)，請抱持懷疑。目前打工平台職缺數最多的是104人力銀行，職缺數差異可以到4倍以上。相比於其他小型平台，職缺數相對少且不時會出現詐騙的新聞，大多對求職者沒有保障，不建議還無法分辨打工好壞的新手應徵，不幸遇到詐騙也只能摸摸鼻子認栽。下載104APP，手機填寫打工簡歷，快速應徵大企業打工。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (5, N'【打工兼職懶人包】工讀生時薪怎麼算？應徵注意事項、工時、加班、勞健保，打工權益總整理', 1, CAST(N'2023-01-06' AS Date), N'打工兼職', N'/images/person_4.jpg', N'很多人會利用上課、上班的空閒時間，或是利用學生的寒暑假期間透過打工、兼職工作來充實生活、多一分經歷，並藉此賺得一筆外快。求職市場上常會看見一些輕鬆、高薪的打工職缺令人心動？但工作內容、面試地點及時間卻不清不楚，或是工時規定與法規有差異，這些都是合理的嗎？提醒年輕朋友，應徵前千萬要停、看、聽，先了解工作性質、環境及相關心得分享，保護自己的安全，以下整理幾個常見的短期打工應徵重要原則，平安打工沒煩惱！1. 【錢跟證件】不管是什麼理由，千萬不要給  2. 【詭異職缺】違反常理的應徵廣告，千萬不要去  3. 7不3要，安全應徵口訣 提供給大家參考', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (6, N'後疫情時代「遠距工作」興起！勞動部調查近7成5勞工盼企業提供「福利措施」，促成工作與生活平衡', 2, CAST(N'2023-01-05' AS Date), N'新冠肺炎', N'/images/person_3.jpg', N'勞動部「111年勞工生活及就業狀況」調查出爐！   觀察1：近一年曾加班勞工占42%、平均每月延長工時15小時  根據此次調查，勞工近一年有延長工時（加班）者占 42%，較 110 年下降 4.3 個百分點，其平均每月延長工時為 15 小時。  按職業別觀察，以專業人員有延長工時者占55.6%最高，其次為機械設備操作及組裝人員之 44.4%；有延長工時者之平均每月延長工時以基層技術工及勞力工之 22.9 小時最高，其次為機械設備操作及組裝人員 22.2 小時。  若按行業別觀察，以電力及燃氣供應業有延長工時占 58.6%最高，其次為公共行政及國防／強制性社會安全之 54.8%，專業／科學及技術服務業之 54.7%，出版影音及資通訊業之 54.2%居第三；有延長工時者之平均每月延長工時以製造業 20.6 小時最高，其次為支援服務業 17.9 小時，出版影音及資通訊業 16 小時居第三。  觀察2：2成5員工下班仍被交辦工作，當下即執行工作佔14.6%  而勞工近一年曾在下班後接獲服務單位以電話、網路、手機 App 或 Line 等通訊形式交辦工作占 25.2%，較 110 年上升 1 個百分點。  接獲交辦未當下執行工作者占 10.6%；當下即執行工作者占 14.6%，較 110 年略升 0.1 個百分點，平均每月實際執行工作時數為 4.7 小時，較 110 年略增 0.1 小時。  按行業別觀察，曾在下班後接獲服務單位以通訊方式交辦且當下即執行工作比率，以出版影音及資通訊業之 26.5%最高，其次為教育業 25.8%，專業／科學及技術服務業 21.8%居第三。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (7, N'【健康過好年】過年期間確診該怎麼辦？', 3, CAST(N'2023-01-04' AS Date), N'新冠肺炎', N'/images/person_2.jpg', N'2023年的農曆春節將是「10天連假」，不少民眾已已規劃返鄉團聚、出門踏青甚至出國旅遊的行程。指揮中心特別說明：過年期間如遇確診，可透過「春節防疫專區」查詢各縣市的防疫協助資訊，此外春節期間不一定方便領取藥物，因此「藥師公會全國聯合會」特別提醒民眾，春節出外旅遊應備妥6大類藥品，如民眾有慢性病領藥需求，剛好回診日期、藥品用鑿洽逢春節期間，亦可於1月10~19日提前領藥。  
兔年行大運！再過幾天就是春節10天連假，可能已有不少人規劃好返鄉團聚、國內旅遊或是解封出國放鬆心情。  過年如果不小心遇到確診，或是需要隔離的狀況該怎麼辦？中央流行疫情指揮中心表示：為確保確診民眾於連假期間也能得到適當醫療照護，將成立「春節防疫專區」協助民眾查找資訊。此外藥師公會全國聯合會也提醒民眾，不論是國內或國外旅遊，建議備妥6大類藥品，有備無患的享受行程、大啖美食，健健康康的出遊、平平安安的回家。  另外有慢性病領藥需求的朋友，如果回診日期恰逢春節假期期間，也可於1月10日至19日提前領藥，不必擔心藥物用鑿。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (8, N'冬天被靜電「狂電」？醫師矚：注意身體勞累，靜電太頻繁恐是「缺氧」警訊', 4, CAST(N'2023-01-03' AS Date), N'健康職場', N'/images/sq_img_9.jpg', N'冬天一到，你也會碰到什麼都「來電」嗎？近日連夜低溫，讓靜電問題更嚴重，不管是穿毛衣、抱寵物，甚至是開門、和朋友見面握手也不小心有電波交流！醫師提醒，雖然大家都知道這是「靜電反應」，但對於為什麼靜電會發生、如何預防靜電等問題卻不太了解，提供以下生活小知識解答！  樓中亮指出，首先要了解的是所有物體皆有帶電，不論是金屬、塑膠還是纖維等，都會帶有正電、負電等兩種電，而人類也是。且我們通常會帶有相同數量的正、負電，以至於電荷是處於正負平衡的狀態。  靜電的產生原因，是因為物體因接觸、摩擦及剝離等動作，而產生負電荷移動，使正負電不平衡，就會產生靜電。最常見的就是更換服時的摩擦身體的負電荷被帶走只留下正電荷，接著再碰到鍋子或門把等金屬物品時負電荷，就會觸發了放電反應。  因為乾燥的環境有利於電荷的轉移和累積，所以冬天會比較容易發生靜電，再加上冬天衣服穿得多，衣服之間相互摩擦產生大量的電荷，電荷沒有途徑釋放掉，累積在衣服表面，就等於是在你的全身上下都充滿了靜電荷！  如果你是不分四季都容易靜電的人，需要留意可能是身體「缺氧」而引起的！且要當心過度疲勞最容易讓身體處於「缺氧狀態」，長時間的缺氧，可能會讓自律神經系統中的交感神經變得亢進，而副交感神經變差，就容易有心跳變快、血壓變高等狀況，更嚴重的話可能會導致心血管、慢性或失智症等疾病發生。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (39, N'年後將現轉職潮 6招避開面試應對地雷', 1, CAST(N'2023-01-31' AS Date), N'轉職', N'/images/sq_img_10.jpg', N'領完年終、放完年假後，過往經常初大批轉職潮，新北市青年局盤點過去一年在辦理履歷健診、模擬面試中常見地雷，歸納出6招青年要知道的面試技巧，為轉職與面試做好萬全的準備。
青年局說，第一、準備完整履歷資訊，養成履歷整理的好習慣，能幫助快速寫出清晰、數據化、一目了然專業履歷。第二、事先做好公司業務瞭解，充分認識該公司文化及職缺資訊，可幫助釐清該職位是否適合自己，也更能在面試時展現出與該職位的契合度。

第三、穿著符合公司文化面試衣著，有益於初步建立第一印象與專業度，同時彰顯出對於該場面試重視。第四、注重時間觀念，提前抵達面試現場，可以熟悉環境、放鬆心情，為自己做好最佳面試準備，也能避免塞車等意外因素耽誤面試行程、留下不好印象。

第五、面試時注意詞彙選擇與談吐方式、速度等，這些都是影響面試官印象的重要關鍵。穩定、誠懇、大方的介紹自己，不打斷面試官、抓住重點回覆問題並順勢帶出自己在之前工作中的經歷或績效，都是把握機會推銷自己的小撇步。

第六、準備好幾個與工作有關問題，在面試尾端面試官往往會詢問是否有問題要詢問，提出自己預先準備的題目，不但能為自己未來在職場中的環境鋪路，藉機瞭解那些網路上查不到的資訊，也能讓面試官感受到積極度與為面試所付出努力。新北市青年局長錢念群表示，過年前後職場上經常會出現轉職的人潮遞補現象。不管是基於何種考量，提醒青年朋友切勿隨波逐流、衝動離職，而是應該為自己職涯做好評估與未來藍圖規劃，避免讓自己留下職場不良紀錄，反而阻擋寶貴前程。青年可以善用資源、多方嘗試，不管最後選擇是往前或停留，期許青年最終能找到自己真正適合職場。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (40, N'年後轉換跑道如何抉擇？不論轉職與否，我們都值得更好的職涯', 3, CAST(N'2023-01-31' AS Date), N'轉職', N'/images/sq_img_12.jpg', N'年假期間，學弟David Line了賀年圖，但接著:「我年後想轉職？想找學姐聊聊……」。其實David辭意已堅，所以他想聊的重點是「該如何換？換什麼工作才好？」。

年後正式進入轉職旺季，你是否也心猿意馬註1？但該如何轉職才是加分，讓職涯愈來愈好?不論你是否動了轉職念頭，我們都應隨時記錄「工作實績」，就不擔心如何豐富經歷、寫出亮眼履歷。 「工作實績」不僅是具體描述做什麼，更重要是結果，再佐以「量化 」資訊，讓好事蹟具說服力。好的事蹟值得記錄，但不好的呢？有些失敗經驗應記下，但不直接寫在履歷中，而是成為面試時談挫折的實例，最好再多思考如何預防再發生的解決方案，則失敗經驗會是為工作中的成長契機！不少人轉職，是為了找到更好的機會，如：更多的薪資、更高的職銜、更能生活平衡的工作等。轉職時，我們容易放大新工作的顯見優點，新工作給高於現職5000元的薪水，但也許餐費、交通等補助不如現職，也沒有運動課程、補班日放假等，若因「錢」想轉職，則新公司的福利設施、假勤制度應充分了解，方確保實質薪酬增加，只是該確認點不宜在第一次面談，最好是被錄取時，順理成章跟人資好好討論。若因現職太累，想要更平衡的工作生活，如何確保不跳入另個火坑呢？那面談時，除充分了解工作範疇、績效目標合理性，還要詢問主管管理模式、績效標準、團隊氛圍等，若能約快下班時間面談，即可順便觀察新公司同事的加班狀況。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (41, N'年後轉換跑道如何抉擇？不論轉職與否，我們都值得更好的職涯', 3, CAST(N'2023-01-31' AS Date), NULL, NULL, NULL, 1, N'Mario', N'Test111')
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (42, N'年後轉換跑道如何抉擇？不論轉職與否，我們都值得更好的職涯', 1, CAST(N'2023-01-31' AS Date), NULL, NULL, NULL, 2, N'MMMMM', N'zxczxczxczxczxczxczxczxc')
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (43, N'年後轉換跑道如何抉擇？不論轉職與否，我們都值得更好的職涯', 1, CAST(N'2023-01-31' AS Date), NULL, NULL, NULL, 3, N'mmmmmmm', N',mn,mn,mnm,nm,nnm,')
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (76, N'勞動部「勞動力趨勢探討」近15年中高年級續留職場比例增，整體流動性下降對技能與所得產生影響', 1, CAST(N'2023-02-03' AS Date), NULL, NULL, NULL, 1, N'jghjhijfigjklfdggjkldfgjklnmvbcmn,vcoie', N'oijbdklfjgkljerionmvbnm.dfg')
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (78, N'中年轉職像是被打回原形，徬徨焦慮沒有方向？專業顧問：「你其實並不孤單」', 1, CAST(N'2023-02-03' AS Date), NULL, NULL, NULL, 3, N'', N'')
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (84, N'急著搶人結果搶到地雷股？資深人資私藏「面試掃雷必備兩問題」', 4, CAST(N'2023-02-04' AS Date), N'面試', N'/images/person_5.jpg', N'職缺總數破百萬，全台企業大搶人，也讓許多急於找人的主管擔心一遲疑，眼前的好人才就會被其他公司搶走了；但趕著補人，又怕不小心看走眼，「以為搶到好人才，上工才發現是顆大地雷」！104職涯診所 Podcast：當公司像家，代表你該轉職了？！人資吐真言，評估去留十大關鍵，超過15年資歷的104人力銀行人才開發部資深經理林書伃專業分享「面試必問掃雷題」，幫你第一關攔截可能有問題的人選！  必問題1：「你三年後想成為什麼樣子？」  林書伃強調，這個問題背後要觀察的，是求職者對於工作的投入度，以及對工作的企圖心。  必問題2：能否描述曾在工作中遇過的衝突？  這個問題，是要確認對方是否人際摩擦反覆發生。

對於轉職原因，多數人都不會直接說是因為人際關係摩擦，但林書伃觀察，很多年輕工作者，離職的真正原因往往是和老闆或同事的互動不開心。但很多時候，只是不同世代、職位、角色在思考事情和處理問題的方式不同，「有時沒有誰對誰錯，而是彼此溝通的藝術」。', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (85, N'17 個「你已經被同事偷偷討厭」的跡象：刻意無視、不當面溝通、只講公事 ...
', 3, CAST(N'2023-02-04' AS Date), N'辦公室', N'/images/person_6.jpg', N'同事們會互相開玩笑、聊私事，可是對我向來只講公事，他們是不是討厭我？同事討厭你，大多不會直接表現出來，但還是有些跡象可以看出此事，Business Insider 整理17個同事偷偷討厭你的跡象，你是否全中了？  1. 你的直覺告訴你，他們並不喜歡你  2. 你在的時候從不微笑  3. 不想對上你的目光  4. 刻意避開你  5. 散播謠言  6. 當你不存在  7. 簡短答案  8. 透露負面肢體語言  9. 從未邀請你參與社交活動  10. 即使你就坐在不遠處，還是常用電子郵件和你溝通  11. 從來不同意你的看法  12. 從不過問你的私人生活  13. 連辦公室談笑都不讓你加入  14. 搶走你的功勞  15. 施展不屬於他們的職權  16. 像高中那樣結成小團體  17. 缺乏最根本的信任', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (86, N'想進日商工作需要什麼條件？過來人揭：3種關鍵體質，比會講日語更重要', 2, CAST(N'2023-02-04' AS Date), N'日商', N'/images/person_1.jpg', N'想進日商工作？日商工作每天都得加班應酬嗎？生活中接觸日本影劇、文化事物，產生了憧憬也可能有著既定印象，在台日商7年的職場前輩透過自身經驗，從不同角度揭開在台日商的職場文化。如果想要更靠近日商、適應日本的文化底氣，更關鍵的是培養3個合適體質。  大家好，我是日商台灣微告的艾比，最近身旁很多事物跟日本文化有所連結，疫情的解封使人們迫不及待飛到日本旅遊、日劇《初戀》的純愛風格也讓人沈浸其中，大家對日本有憧憬也有一些既定印象。  我在台日商環境工作將近 7 年曾被人問過：「艾比，妳是不是受過滿滿的日本文化洗禮？」例如，需要每天加班應酬或時刻把皮繃緊的注重禮儀，其實並非全然如此，這篇要請大家拿掉「有色濾鏡」，以不同視角認識在台日商的職場文化，同時可以檢視自己有沒有日商體質。  
在台灣有很多日商企業，每家有不同的文化及工作氛圍，根據不同產業別，又有不同程度的日本文化影響，以我們公司來說，我們的總公司在日本，台灣是分公司（很多在台日商也是這種形態），在規範上雖承襲日本企業文化，但隨著時代腳步，也逐漸成為自由彈性的在地化新型態日商。  不過，我在面試新人時，經常發現，面試者對在台日商有一些誤解，每當我問他們為何想來面試，常聽到的回覆是：「很喜歡日本一些文化，對日本有興趣，所以想進在台日商。」或表示自己喜歡看日本漫畫、吃拉麵等，這個動機不僅跟專業無關，也無法成功被錄取。（想被錄取可參考之前寫的這篇：從大學生到職場新人都受用的求職面試守則）', 0, NULL, NULL)
INSERT [dbo].[Article] ([ArticleId], [Title], [AuthorId], [UpdateTime], [Keyword], [img], [ArticleContent], [ArticleFloor], [NickName], [Message]) VALUES (91, N'中年轉職像是被打回原形，徬徨焦慮沒有方向？專業顧問：「你其實並不孤單」', 1, CAST(N'2023-02-07' AS Date), NULL, NULL, NULL, 2, N'123213123', N'1231231')
SET IDENTITY_INSERT [dbo].[Article] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (4, N'a123', N'a123', N'許忠進', N'S123456789', N'a123@gmail.com', N'0988123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (5, N'Triangle', N'Landajob', N'蔡億霖', N'S123456789', N'a123@gmail.com', N'0987987987', CAST(N'1998-07-12' AS Date), N'高雄市前鎮區', N'中興大學', N'國立中興大學 (National Chung Hsin University, NCHU)

森林學系
2016 - 2020', 5, N'求職中', N'/photo/202302070958蔡億霖.png', N' 我是蔡億霖，中興大學森林系畢業，就學期間曾擔任第十四屆親善大使團團長，參與過  30  場大學博覽會、主持  50 場以上的校園參訪、擔任過  3 場惠蓀講座的司儀等活動，在 2018 年也擔任了台中花博發現館的職工，在期間，擔任  2 場講座課的講師。  目前已經畢業兩年，這兩年期間，一年在南山人壽做業務代表，一年在偉達文理補習班擔任行政導師，去年九月參加了資展國際(前資策會)的全端工程師就業養成班，在二月順利結訓，會想嘗試程式語言這個領域，是因為大學時曾經選修水土保持系所開設的 C 語言課程，從那時我對程式語言就有很大的興趣，也恰好在去年離職後，經朋友介紹，認識了資展國際的課程，進行報名參加培訓。', N'1.運用前端程式語言 JavaScript 為核心，搭配ASP.NET Core MVC/HTML/Bootstrap/CSS等技術，製作網頁。', N'資展國際')
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (6, N'1234', N'1234', N'好棒棒', N'T121222333', N'yy@gmail.com', N'0922555666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (7, N'789', N'789', N'你讚讚', N'E224111444', N'gg@gmail.com', N'0955222444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (8, N'zxc123', N'zxc123', N'王大明', N'S12345678', N'zxc123', N'zxc123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (9, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (10, N'123', N'123', N'羅繼宣', N'E125123456', N'tomlo86052100@gmail.com', N'0912345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (11, N'594310', N'123', N'123', N'123', N'213', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (24, N'321', N'321', N'312', N'321', N'312', N'312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (27, N'englishTsai', N'tsuwa', N'蔡英文', N'Y123456789', N'englishtsai69@gmail.com', N'0911111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'我是台灣總統，我喜歡蘇貞昌', NULL, NULL)
INSERT [dbo].[Candidate] ([CandidateId], [Account], [Password], [Name], [IdCard], [Email], [Cellphone], [Birth], [Address], [Schoolname], [Education], [Seniority], [Status], [Img], [Autobiography], [Workexperience], [Workexname]) VALUES (34, N'594310o ', N'Zxc456', N'蔡億霖', N' S104326216', N'zxc1545414453@gmail.com', N'0988123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[CandidateCV] ON 

INSERT [dbo].[CandidateCV] ([CandidateCVId], [CVSource], [CandidateId], [CVId], [status]) VALUES (1, NULL, 4, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CandidateCV] OFF
GO
SET IDENTITY_INSERT [dbo].[CandidateSkill] ON 

INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (69, 11, 1)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (70, 11, 3)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (71, 11, 4)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (98, 6, 4)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (99, 6, 6)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (100, 6, 7)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (101, 6, 8)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (102, 6, 53)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (103, 6, 56)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (173, 5, 1)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (174, 5, 2)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (175, 5, 6)
INSERT [dbo].[CandidateSkill] ([Id], [CandidateId], [SkillId]) VALUES (176, 5, 7)
SET IDENTITY_INSERT [dbo].[CandidateSkill] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (1, N'Vuejs從入門到入土', 1, 35000, CAST(N'2023-01-07' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_7.jpg', N'Vue,Vue.js,Git,CSS,HTML', N'自備電腦', N'- 入門 Vue.js 掌控資料與顯示的前端框架
- 整合應用網頁技術與數學原理，完成有設計感的互動性網站。

ps.本課程的學生不是發瘋就是送醫，有意上課者請填寫投放棄醫療證明書及生死狀後，與報名表一同遞交。', N'科技', 570, 6)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (2, N'席捲攝影界之超人氣Photoshop影像編修', 2, 4900, CAST(N'2023-01-09' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_3.jpg', N'Adobe,Photoshop,PS', N'自備電腦', N'不論你是喜歡強調原汁原味的「寫真派」還是想呈現攝影意念的「抽象派」
相信你都只是單純的愛攝影，為了珍藏回憶、傳達想像。

連著幾天不睡、黑著眼眶在暗夜奔馳寒風受凍，但仍挺直腰桿，對著那小小的觀景窗，思考拍攝數據的調整並構築畫面，都只為了那短短幾分鐘的神奇霞光。
如果你也曾這麼熱血，就知道如果忙著切換相機模式、更改設定，便可能錯了那最美的瞬間。', N'藝術', 620, 10)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (3, N'教你玩轉PS', 2, 11000, CAST(N'2022-01-11' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_4.jpg', N'Adobe,Photoshop,PS,AI,Illustrator,設計,忠進', N'自備電腦 需要安裝Adobe PhotoShop 2018以上版本', N'想成為一名創作者或設計師，
就必須學會「Photoshop」與「Illustrator」，
本堂課就可以讓你一次學會這兩項工具的基本操作。
先從軟體的差異說起，掌握Photoshop與Illustrator必要知識，
運用簡短的文字說明功能，練習製作簡單的範例，再跟著圖解步驟演練
與Photoshop、Illustrator主題相關的實務技巧，逐步增加應用範圍。

即使在專業設計領域也能因應各種要求。', N'藝術', 480, 6)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (4, N'C#從看懂到看開', 1, 5600, CAST(N'2022-01-11' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_2.jpg', N'C#,Visual Studio,Git', N'自備電腦', N'針對目前初學者學習程式設計所應具備的基本素養，準備的入門教材，內容由淺入深，帶領初學者靈活運用C#開發應用程式。
內容兼具理論與實務，範例程式有別於市面程式設計入門課程。特別由語法解說、範例說明、問題分析、程式設計進行循序漸進的範例實作與解說，訓練初學者邏輯思考與解決問題的能力。
內容由資料型別、變數、運算式、流程控制、陣列、函式、物件導向程式設計、功能表、對話方塊、檔案存取、多媒體操作，同時配合 .NET Core視窗程式控制項設計進階的視窗應用程式，所提供範例貼近日常生活，讓初學者能學以致用。', N'科技', 360, 4)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (5, N'Asp.Net急救班', 2, 8800, CAST(N'2022-01-11' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_2.jpg', N'C#,Visual Studio,Git', N'自備電腦', N'1.有程式開發經驗，想入門ASP.NET Core 6的開發人員
2.有ASP.NET Core開發經驗，補完缺少的課程內容
 
◎用最簡潔的說明方式，讓艱深的觀念也能變簡單
◎從零開始，完整介紹ASP.NET Core 6的核心功能
◎使用dotnet CLI作為範例主軸，內容在任何平台上都適用，能夠確實了解到跨平台開發的魅力', N'科技', 360, 4)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (6, N'如何辨認高級樹材', 3, 12000, CAST(N'2022-01-16' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_2.jpg', N'Jolin,樹材,森林,理財', N'森林', N'針對目前市場上常見的10種國產木材進行介紹，收錄收錄中興大學畢業學長隊針對木材物理、力學性質分析以及相關材面切片顯微攝影等研究成果，且邀集了與國產材相關的專業職人，分享他們使用不同種類木材，從加工、設計、創作、甚至是搭配食材等各層面的故事，此外透過Q&A單元介紹國產木材製品的品質管理、等級區分制度及木材製品受到腐朽、昆蟲及白蟻危害的原因與現象、防止方法等相關資訊，使消費者、建築、木藝產業相關人士貼近國產材，拉近大眾與國產材的距離，了解木材多元的應用方式。', N'商業', 220, 5)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (7, N'吉他進階班:自彈自唱', 4, 8800, CAST(N'2022-01-18' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_14.jpg', N'淳方,吉他,音樂,和弦,彈唱,唱歌', N'吉他', N'１．應用彈奏技巧、節奏或是風格元素在歌曲中，做到「好聽」、「專業」
２．面對一首歌曲，你將懂得設計出多種不同的伴奏方式，讓彈奏不無聊
３．加入不同的曲風元素，讓歌曲有不同風味用這些概念與應用
４．發展出個人特色，會非常有成就感！
５．更多人會想找你伴奏彈吉他，把握更多的音樂演出與製作機會
６．提升自己的音樂創作作品，影響更多人！', N'音樂', 540, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (8, N'吉他初階班:認識和弦', 4, 6600, CAST(N'2022-01-18' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_14.jpg', N'淳方,吉他,音樂,和弦,彈唱,唱歌', N'吉他', N'「吉他從零開始---初級篇」要帶著大家一步一步從最基礎的樂理開始。了解大小調音階、音名唱名、音程，視譜演奏，和絃除了知道怎麼按，更要去了解它是怎麼組成的、什麼是轉位和絃，並熟記流行歌曲裡最基本的大、小三和絃，屬七和絃，以及大、小七和絃。

只是死背這些和絃太無趣，課程裡我設計很多段和絃進行(像是一首歌的片段)的練習，囊括最常見的吉他演奏方式：1.刷節奏，2.右手指法撥絃，讓你能夠很順暢銜接下一個學習步驟：自彈自唱。', N'音樂', 470, 8)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (9, N'神技作畫 從零開始學習專家畫技', 1, 11000, CAST(N'2022-01-18' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_10.jpg', N'Adobe,Photoshop,PS,久銘,繪畫,作畫,漫畫', N'電腦、電繪板，可供數位畫圖的工具\n付費軟體：ClipStudio、Photoshop', N'以Q&A的方式仔細解說
畫圖時會遇到的問題。
從如何描繪身體線條等基礎層面，
到如何應用表現在戀愛情境之中，
階段性逐一說明解釋，從零開始學習專家的畫技。

藉由實際臨摹，
學習線條的流暢感和掌握形體的方式。', N'藝術', 800, 5)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (10, N'背景透視學', 1, 4200, CAST(N'2022-01-28' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_14.jpg', N'Adobe,Photoshop,PS,久銘,繪畫,作畫,漫畫,透視', N'電腦、電繪板，可供數位畫圖的工具\n付費軟體：ClipStudio、Photoshop', N'認識「透視」的概念與繪畫「透視圖」的基本要素，例如什麼是消失點（VP）、地平線（EL）等，這些專有名詞又代表什麼意義。', N'藝術', 520, 6)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (11, N'背景透視學', 1, 4200, CAST(N'2022-01-28' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_14.jpg', N'Adobe,Photoshop,PS,久銘,繪畫,作畫,漫畫,透視', N'電腦、電繪板，可供數位畫圖的工具\n付費軟體：ClipStudio、Photoshop', N'認識「透視」的概念與繪畫「透視圖」的基本要素，例如什麼是消失點（VP）、地平線（EL）等，這些專有名詞又代表什麼意義。', N'藝術', 520, 6)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (12, N'神技作畫 從零開始學習專家畫技', 1, 11000, CAST(N'2022-01-18' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_14.jpg', N'Adobe,Photoshop,PS,久銘,繪畫,作畫,漫畫', N'電腦、電繪板，可供數位畫圖的工具\n付費軟體：ClipStudio、Photoshop', N'以Q&A的方式仔細解說
畫圖時會遇到的問題。
從如何描繪身體線條等基礎層面，
到如何應用表現在戀愛情境之中，
階段性逐一說明解釋，
讓學員從零開始學習專家的畫技。
藉由實際臨摹，
學習線條的流暢感和掌握形體的方式。', N'藝術', 980, 5)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (13, N'吉他爵士樂', 4, 5600, CAST(N'2022-01-18' AS Date), N'/video/videoplayback.mp4', N'/images/sq_img_15.jpg', N'淳方,吉他,音樂,和弦,彈唱,唱歌', N'吉他', N'曲風介紹
爵士樂可以說是貫穿了整個現代音樂，美好的年代大約是在1920年開始，當時是以大樂隊 Big Band 為主軸，這個時期的爵士樂都以是 Swing 為基底，之後又發展出了許多的樂派，例如：「咆哮爵士 Bebop、酷派爵士 Cool 、拉丁爵士 Latin、現代爵士 Contemporary…等等」。', N'音樂', 300, 5)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (14, N'洞察行銷世代｜引領未來行銷的數據洞察思維', 3, 2400, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_6.jpg', N'行銷,網路,商業,Jolin,億霖', N'電腦上課', N'拆解洞察行銷黑魔法，搶佔未來行銷趨勢，培養你終身可用的數據思維，協助你短時間判斷適合數據並轉化為行動洞察。

1. 建構一套一輩子都能用的數據行銷思維，養成數據腦
2. 透過 2 大案例與數個運用實例，理解數據分析的方法
3. 學會將數據轉換為洞察的過程，讓決策更有底氣
4. 從 20 種以上的工具列表與實際應用，因應不同提案目的，獲得精準數據支持
5. 將洞察行銷思維融入服務項目，節省 30％ 試錯時間與成本，讓數據說話，在規劃中為你所用', N'商業', 198, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (15, N'行銷提案實戰：讓你的想法被一次買單', 3, 3900, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_8.jpg', N'行銷,網路,商業,Jolin,億霖', N'電腦上課', N'1. 更精準找到客戶痛點/需求點/癢點，成為行動讀心機
2. 更有效率的發想、製作行銷提案企劃，省時間的同時更提高命中率
3. 更從容不迫地進行提報、說服客戶買單', N'商業', 143, 3)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (16, N'零基礎輕鬆學：流行鋼琴', 3, 2380, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_6.jpg', N'鋼琴,音樂,和弦', N'自備鋼琴、節拍器', N'1. 自我發揮【即興伴奏】，可用於所有的各年代流行歌曲、電影配樂、教會歌曲、古典改編、兒歌伴奏。
2. 擁有五線譜與簡譜的和絃視譜能力。
3. 可自由運用13個通用和弦即興伴奏技巧，從章節3~10(共32單元)，由簡至難，從初級一直到中級的即興伴奏技巧。
4. 可運用於司琴、自彈自唱、為他人歌唱或樂器伴奏。', N'音樂', 450, 11)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (17, N'生活日文課', 1, 6300, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_6.jpg', N'語言,日文,N5,N4,N3,日本,久銘', N'電腦、視訊鏡頭', N'・會了解基礎的日文文法
・會用簡單的日文句子溝通
・認識自學日文的方式與技巧
・了解五十音的學習技巧
・學習日語文化的思維', N'語言', 888, 4)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (18, N'日語N3檢定:專業課程', 1, 9200, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_12.jpg', N'語言,日文,N5,N4,N3,日本,久銘', N'電腦、視訊鏡頭', N'1. 認識商用日文筆譯，了解筆譯時的注意事項
2. 備考N3檢定
3. 理解應如何完成專業的譯文
4. 確認自己的能力，練習日語筆譯，累積翻譯經驗', N'語言', 1800, 12)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (19, N'網頁美編的救星！ 零基礎的 HTML & CSS 網頁設計', 2, 5200, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_10.jpg', N'HTML,CSS,Bootstrap,忠進,科技,設計', N'自備電腦,安裝VsCode', N'【讓你搞懂架設網站的基本知識】
網站裡需要那些網頁？網頁上面要放什麼？帶你了解架設網站的準備工作
　　
【幫你建立 HTML 和 CSS 的基本知識】
HTML 是什麼？CSS 又是什麼？不用怕，本書從最簡單的標籤開始講解！
　　
【帶你設計目前最流行的網頁 Layout】
每次看到別人的網站很炫，都覺得自己一定做不出來嗎？本書將從零開始，帶你做出各種流行的網頁版面，有充滿震撼力的全螢幕網頁、資訊豐富的兩欄式網頁、像 IG 一樣展示照片的磚牆式網頁，你都能跟著做出來！', N'科技', 410, 7)
INSERT [dbo].[Course] ([CourseId], [CourseName], [TeacherID], [Price], [Addedtime], [CourseVideo], [CourseImg], [keyword], [CourseReqire], [CourseIntro], [Category], [CourseLength], [Chapter]) VALUES (20, N'設計師都該懂的包容性網頁UI/UX設計模式', 2, 7800, CAST(N'2022-01-28' AS Date), NULL, N'/images/sq_img_10.jpg', N'HTML,CSS,Bootstrap,忠進,科技,設計,UI,UX,JavaScript', N'自備電腦,安裝VsCode', N'-想要打造好用、有效率、令使用者滿意的網站，就需要完善的 UX 設計！
-網站企劃、網站開發者、設計總監、製作人、設計師、工程師……
-網頁設計相關人士必讀的 UX Design 指南', N'科技', 850, 8)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (1, 100, 1, N'認識C#', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (1, 100, 2, N'何謂OOP物件導向', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (1, 100, 3, N'泛型類別的宣告', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (1, 100, 4, N'if、for、while', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (1, 100, 5, N'封裝繼承多載', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (1, 100, 6, N'CodingMaster', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 1, N'認識Adobe', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 2, N'認識數位影像', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 3, N'色彩學', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 4, N'操作環境與工具', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 5, N'影像修復技巧', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 6, N'上彩藝術', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 7, N'去背與轉存', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 8, N'速學圖層編修', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 9, N'濾鏡使用技巧', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (2, 200, 10, N'自動處理功能', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (3, 300, 1, N'Photoshop面對面', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (3, 300, 2, N'還原快門前的構思', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (3, 300, 3, N'重現攝影魔幻時刻', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (3, 300, 4, N'更自然修飾照片', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (3, 300, 5, N'紅外線攝影的另一種開始', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (3, 300, 6, N'豐富想像力的影像處理', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 1, N'基本和弦指型的延伸變化', N'/video/videoplayback.mp4')
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 2, N'C開放和弦指型的延伸變化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 3, N'D開放和弦指型的延伸變化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 4, N'E開放和弦指型的延伸變化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 5, N'F開放和弦指型的延伸變化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 6, N' G開放和弦指型的延伸變化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (7, 700, 7, N'A開放和弦指型的延伸變化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 1, N'吉他的分類', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 2, N'吉他各部名稱', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 3, N' 吉他彈奏姿勢', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 4, N'選擇吉他DIY', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 5, N'本書使用符號與技巧解說', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 6, N'吉他六線套譜上的指法與節奏', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 7, N'基礎樂理', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (8, 800, 8, N' 簡譜', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (9, 900, 1, N'專為接下來想開始畫畫的人而準備的基礎', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (9, 900, 2, N'讓繪畫功力確實進步的「臨摹」技巧', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (9, 900, 3, N'以「實物的線稿」提升繪畫能力', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (9, 900, 4, N'讓人物充滿「躍動感」的姿勢描繪方法', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (9, 900, 5, N'空間表現與空間配置', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (10, 1000, 1, N'什麼是透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (10, 1000, 2, N'透視圖法的基本', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (10, 1000, 3, N'構成透視圖的基本要素', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (10, 1000, 4, N'三種透視圖法：單點透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (10, 1000, 5, N'三種透視圖法：兩點透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (10, 1000, 6, N'三種透視圖法：三點透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (11, 1100, 1, N'什麼是透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (11, 1100, 2, N'透視圖法的基本', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (11, 1100, 3, N'構成透視圖的基本要素', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (11, 1100, 4, N'三種透視圖法：單點透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (11, 1100, 5, N'三種透視圖法：兩點透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (11, 1100, 6, N'三種透視圖法：三點透視', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (12, 1200, 1, N'專為接下來想開始畫畫的人而準備的基礎', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (12, 1200, 2, N'讓繪畫功力確實進步的「臨摹」技巧', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (12, 1200, 3, N'以「實物的線稿」提升繪畫能力', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (12, 1200, 4, N'讓人物充滿「躍動感」的姿勢描繪方法', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (12, 1200, 5, N'空間表現與空間配置', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (13, 1300, 1, N'課程的最初', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (13, 1300, 2, N'和弦', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (13, 1300, 3, N' 搖擺 Swing Jazz', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (13, 1300, 4, N'拉丁 Latin Jazz', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (13, 1300, 5, N'即興概論', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 1, N'數據的定義原則', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 2, N'數據賦能商業決策的案例', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 3, N'生意來源的數據', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 4, N'顧客洞察', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 5, N'競爭者洞察', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 6, N'內容靈感數據', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (14, 1400, 7, N'定義成功指標', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (15, 1500, 1, N'受眾：對誰說？', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (15, 1500, 2, N'目的：說什麼？', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (15, 1500, 3, N'表達：怎麼說？', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 1, N'基礎樂理：同時學習簡譜與五線譜', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 2, N' 手指彈奏訓練：單音與和絃', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 3, N'最常使用的3個和絃應用伴奏', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 4, N'最常使用的無敵4和絃伴奏', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 5, N' 轉位和絃樂理與彈奏', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 6, N'八分音符分散和絃伴奏法', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 7, N'分散和絃加2音伴奏法', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 8, N'附點拍子伴奏', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 9, N'認識切分音，如何使用伴奏', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 10, N'12大調、小調音階與轉調', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (16, 1600, 11, N'如何作一個專業的鋼琴伴奏編曲', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (17, 1700, 1, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (17, 1700, 2, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (17, 1700, 3, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (17, 1700, 4, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 1, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 2, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 3, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 4, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 5, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 6, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 7, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 8, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 9, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 10, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 11, NULL, NULL)
GO
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (18, 1800, 12, NULL, NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 1, N'想做網站必須先搞懂的重點！架設網站的基本知識', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 2, N'建立網站的基本結構！HTML 的基本知識', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 3, N'開始設計網站！CSS 的基本知識', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 4, N'製作全螢幕網頁', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 5, N'製作兩欄式網頁', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 6, N'製作磚牆式網頁', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (19, 1900, 7, N'使用外部媒體', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 1, N'何謂 UX 設計？', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 2, N'從易用性評估開始著手', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 3, N'利用製作原型修正設計', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 4, N'用腳本連結人物誌與畫面', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 5, N'使用者調查', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 6, N'運用顧客旅程地圖將體驗視覺化', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 7, N'使用者塑模', NULL)
INSERT [dbo].[CourseContent] ([CourseId], [CourseId100], [Coursechapter], [ChapterName], [Video]) VALUES (20, 2000, 8, N'將 UX 設計導入你的組織', NULL)
GO
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 1)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 4)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 7)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 35)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 36)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 37)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 53)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (1, 56)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (2, 8)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (2, 12)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (2, 31)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (2, 32)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (3, 8)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (3, 12)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (3, 31)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (3, 32)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (4, 1)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (4, 36)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (4, 37)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (4, 40)
INSERT [dbo].[CourseDetail] ([CourseId], [SkillId]) VALUES (4, 52)
GO
SET IDENTITY_INSERT [dbo].[CourseOrder] ON 

INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (1, 4, 1, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (2, 10, 2, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (3, 4, 2, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (4, 10, 3, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (5, 6, 1, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (6, 7, 1, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (7, 6, 6, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (8, 5, 5, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (9, 5, 4, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (10, 1, 4, CAST(N'2023-01-17' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (11, 7, 4, CAST(N'2023-01-17' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (12, 2, 4, CAST(N'2023-01-17' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (13, 7, 7, CAST(N'2023-01-17' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (14, 7, 8, CAST(N'2023-01-17' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (15, 5, 8, CAST(N'2023-01-21' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (16, 6, 4, CAST(N'2023-01-29' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (17, 1, 9, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (18, 1, 10, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (19, 1, 11, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (20, 1, 12, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (21, 1, 13, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (22, 1, 14, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (23, 1, 15, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (24, 1, 16, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (25, 1, 17, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (26, 1, 18, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (27, 1, 19, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (28, 1, 20, NULL, NULL)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (29, 7, 16, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (30, 8, 1, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (31, 8, 2, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (32, 8, 3, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (33, 8, 4, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (34, 8, 5, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (35, 8, 6, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (36, 8, 7, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (37, 8, 8, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (38, 8, 9, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (39, 8, 10, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (40, 8, 11, CAST(N'2023-01-30' AS Date), 0)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (41, 10, 1, CAST(N'2023-01-31' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (42, 11, 1, CAST(N'2023-01-31' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (43, 7, 20, CAST(N'2023-01-31' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (44, 5, 3, CAST(N'2023-02-01' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (45, 5, 10, CAST(N'2023-02-03' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (46, 11, 1, CAST(N'2023-02-03' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (47, 6, 13, CAST(N'2023-02-04' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (48, 6, 15, CAST(N'2023-02-04' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (49, 6, 16, CAST(N'2023-02-04' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (50, 6, 2, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (51, 5, 9, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (52, 6, 12, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (53, 4, 4, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (54, 4, 4, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (55, 4, 5, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (56, 4, 5, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (57, 4, 5, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (58, 4, 5, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (59, 4, 5, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (60, 6, 19, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (61, 6, 19, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (62, 6, 9, CAST(N'2023-02-06' AS Date), 1)
INSERT [dbo].[CourseOrder] ([OrderId], [CandidateId], [CourseId], [Buyingtime], [Vaild]) VALUES (63, 6, 7, CAST(N'2023-02-07' AS Date), 1)
SET IDENTITY_INSERT [dbo].[CourseOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[Enterprise] ON 

INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (1, N'Triangle', N'Landajob', N'科技', N'統三數網股份有限公司', N'12345678', N'075211234', N'033510022', N'8:00~13:00', N'台北市大安區安和路1段', N'黃正銘', N'0912345678', N'8:00~13:00', N'a0917247@gmail.com', N'統三數網（PERSON）是由統二企業百分之百投資，於2000 年初成立，以「結合實體」 與「品牌行銷」為主力，並致於創造價值。', N'/images/job_logo_4.jpg', N'供餐、員工宿舍、年終10個月', N'11~49')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (2, N'A123', N'B456', N'藝文', N'一開科技', N'23456789', N'075210666', N'033510021', NULL, N'新北市三重區', N'黃正銘', N'0912345678', NULL, NULL, N'您將在一開經歷在一開的第 1 個月了解一開的核心價值，了解團隊合作的方針 透過其他 Product Team 成員的介紹跟討論，逐步了解 modern data stack，全球', N'/images/job_logo_4.jpg', NULL, N'20~30')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (3, N'a234', N'b567', N'服務業', N'莫凡彼餐飲事業_百富通股份有限公司 ', N'34567890', N'079705188', N'033510023', NULL, N'高雄市前鎮區中華五路789號8F', N'黃正銘', N'0923456789', NULL, NULL, N'莫凡彼餐飲事業為「百富通集團」旗下事業體系之ㄧ。
「百富通集團」橫跨兩岸三地，旗下擁有專營頂級食品進口業務、餐飲門市、室內兒童主題樂園、自動快照等多項事業體系。

代理進口業務為頂級食品：「瑞士Mŏvenpick莫凡彼冰淇淋」、「瑞士Mövenpick莫凡彼咖啡」、「瑞士Hero喜諾果醬」、「瑞士Haco好口調理粉」、「泰國明果冰淇淋」...等系列產品。
', N'/images/job_logo_4.jpg', NULL, N'30~35')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (4, N'A234', N'B567', N'科技', N'興新富創意整合國際股份有限公司  ', N'45678901', N'022790005', N'033510024', NULL, N'台北市內湖區新明路179號12樓', N'黃正銘', N'0923456789', NULL, NULL, N'興新富創意整合國際股份有限公司是一個新創整合行銷公司，旗下擁有兩個品牌，分別是企業品牌行銷整合「Intro」、電商平台「Newfu」', N'/images/job_logo_4.jpg', NULL, N'35~50')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (10, N'a345', N'a345', N'科技', N'暗風數位有限公司', N'12346666', N'02020202', N'033510023', NULL, N'台北市松山區南京東路五段', N'黃正銘', N'0923456789', NULL, NULL, N'本工作室，是由一群喜愛女性向遊戲的夥伴所組成的工作室，成員以女性為主，', N'/images/job_logo_4.jpg', NULL, N'40~45')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (11, N'123', N'123', N'科技', N'屌歐科技有限公司', N'12346666', N'02020202', N'033510023', N'8:00~17:00', N'台北市信義區菸廠路', N'黃正銘', N'0923456789', N'10:00~17:00', N'a123@gmail.com', N'我們期許在市場上能不斷的創新提供優良品質及服務 ，成為客戶滿意的「網路行銷顧問公司」', N'/images/job_logo_4.jpg', N'供餐福利、年終獎金、工作獎金、休閒設施、尾牙或春酒、員工聚餐', N'10~20')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (12, N'546', N'456', N'服務業', N'力昕資訊', N'456', N'02020202', N'033510023', NULL, N'台北市內湖區瑞光路335號1', N'黃正銘', N'0923456789', NULL, N'456', N'資訊股份有限公司成立於2005年，員工人數約550人；提供金融保險業、電信業', N'/images/job_logo_4.jpg', NULL, N'10~20')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (13, N'1234', N'123', N'服務業', N'力麗資訊', N'456', N'02020202', N'033510023', N'9:00~18:00', N'台北市內湖區瑞光路335號1', N'黃正銘', N'0923456789', NULL, N'zxc123@gmail.com', N'資訊股份有限公司成立於2005年，員工人數約550人；提供金融保險業、電信業', N'/images/job_logo_4.jpg', NULL, N'10~30')
INSERT [dbo].[Enterprise] ([EnterpriseId], [Account], [Password], [Category], [CompanyName], [UniformNumbers], [Telephone], [Fax], [OpeningHours], [Address], [Principal], [ContactPhone], [ContactTime], [Email], [Info], [img], [Welfare], [employee]) VALUES (14, N'a1234', N'a1234', N'服務', N'永峰商業銀行', N'12346666', N'02020202', N'033510023', N'9:00~18:00', N'新北市中山區', N'黃正銘', N'0923456789', NULL, N'zxc123@gmail.com', N'國際商業銀行源自1948年5月4日創立的台北區合會儲蓄公司，1978年改為台北區中小企業銀行，1998年5月14日再改制為台北國際商業銀行；2005年12月26日與當時的建華金控換股合併後，正式成為建華金控的百分之百持股的子公司。2006年7月20日建華金控更名為永峰金控。', N'/images/job_logo_4.jpg', NULL, N'10~30')
SET IDENTITY_INSERT [dbo].[Enterprise] OFF
GO
SET IDENTITY_INSERT [dbo].[EnterpriseInterest] ON 

INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (2, 5, 1, 1, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (3, 6, 5, 1, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (4, 6, 9, 1, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (5, 7, 1, 2, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (6, 5, 1, 2, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (8, 5, 5, 3, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (9, 6, 9, 3, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (10, 7, 1, 2, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (11, 8, 1, 4, 1, NULL)
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (24, 27, 14, 1, 11, N'20年經濟最好')
INSERT [dbo].[EnterpriseInterest] ([Id], [candidateId], [vacancyId], [status], [enterpriseId], [CV]) VALUES (30, 4, 17, 1, 1, N'你好，我想應徵')
SET IDENTITY_INSERT [dbo].[EnterpriseInterest] OFF
GO
SET IDENTITY_INSERT [dbo].[Interest] ON 

INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (7, 5, 3, 3, 2)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (8, 5, 4, 4, 2)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (9, 5, 1, 5, 3)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (10, 5, 2, 6, 3)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (11, 5, 3, 7, 4)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (12, 5, 4, 8, 4)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (13, 5, 10, 13, 1)
INSERT [dbo].[Interest] ([Id], [candidateId], [enterpriseId], [vacancyId], [interestStatus]) VALUES (14, 5, 11, 14, 1)
SET IDENTITY_INSERT [dbo].[Interest] OFF
GO
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (1, 7, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (1, 8, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (4, 10, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (4, 12, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (5, 6, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (5, 7, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (5, 8, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (6, 7, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (6, 11, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (6, 17, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (6, 19, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (6, 20, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (7, 2, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (7, 8, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (7, 10, NULL)
INSERT [dbo].[InterestedCourse] ([CandidateId], [CourseId], [status]) VALUES (11, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[LoginInformation] ON 

INSERT [dbo].[LoginInformation] ([Id], [Account], [Password], [Email], [Phone], [status]) VALUES (26, N'123', N'123', NULL, NULL, NULL)
INSERT [dbo].[LoginInformation] ([Id], [Account], [Password], [Email], [Phone], [status]) VALUES (27, N'123456', N'123456', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoginInformation] OFF
GO
SET IDENTITY_INSERT [dbo].[Platform] ON 

INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (9, N'統三數網股份有限公司', 1, N'優點 
卑微到只能共享緯創的福利
缺點
這家公司從2021年11月開始, 新進人員在試用期間一律要考過微軟AZ900的證照, 不管你是哪一個職務那怕是HR, 財會人員, 行銷人員, 甚至是助理,
通通都得考過AZ900證照考不過的下場是
1. 延長試用期3個月, 再考不過就請你走人
2. 先核准通過試用, 一個月內再考不過也是請你走人
原本想說慣老闆有什麼偉大的理想, 要求全員都要考過AZ900, 沒想到只是為了貪圖微軟的補助, 才要求全員都要考過AZ900; 公司好像是窮到快餓死一樣,
必須要靠微軟的少少補助才存活得下去
人生苦短, 在台北市好的工作很多, 非IT人員沒有必要為了養活這家公司, 而浪費生命去準備考一張和自己專業能力無關的證照, 未來從這家公司離職後,
AZ900對於非IT人員完全沒有任何加分的作用
況且考過AZ900, 慣老闆也不會幫你加薪', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (10, N'一開科技', 2, N'優點 
卑微到只能共享緯創的福利
缺點
這家公司從2021年11月開始, 新進人員在試用期間一律要考過微軟AZ900的證照, 不管你是哪一個職務那怕是HR, 財會人員, 行銷人員, 甚至是助理,
通通都得考過AZ900證照考不過的下場是
1. 延長試用期3個月, 再考不過就請你走人
2. 先核准通過試用, 一個月內再考不過也是請你走人
原本想說慣老闆有什麼偉大的理想, 要求全員都要考過AZ900, 沒想到只是為了貪圖微軟的補助, 才要求全員都要考過AZ900; 公司好像是窮到快餓死一樣,
必須要靠微軟的少少補助才存活得下去
人生苦短, 在台北市好的工作很多, 非IT人員沒有必要為了養活這家公司, 而浪費生命去準備考一張和自己專業能力無關的證照, 未來從這家公司離職後,
AZ900對於非IT人員完全沒有任何加分的作用
況且考過AZ900, 慣老闆也不會幫你加薪', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (11, N'莫凡彼餐飲事業_百富通股份有限公司', 3, N'優點 
卑微到只能共享緯創的福利
缺點
這家公司從2021年11月開始, 新進人員在試用期間一律要考過微軟AZ900的證照, 不管你是哪一個職務那怕是HR, 財會人員, 行銷人員, 甚至是助理,
通通都得考過AZ900證照考不過的下場是
1. 延長試用期3個月, 再考不過就請你走人
2. 先核准通過試用, 一個月內再考不過也是請你走人
原本想說慣老闆有什麼偉大的理想, 要求全員都要考過AZ900, 沒想到只是為了貪圖微軟的補助, 才要求全員都要考過AZ900; 公司好像是窮到快餓死一樣,
必須要靠微軟的少少補助才存活得下去
人生苦短, 在台北市好的工作很多, 非IT人員沒有必要為了養活這家公司, 而浪費生命去準備考一張和自己專業能力無關的證照, 未來從這家公司離職後,
AZ900對於非IT人員完全沒有任何加分的作用
況且考過AZ900, 慣老闆也不會幫你加薪', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (12, N'興新富創意整合國際股份有限公司', 4, N'testtesttesttest', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (13, N'樂您漢堡', 5, N'好吃好吃', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (15, N'統三數網股份有限公司', 6, N'SXSWC', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (16, N'一開科技', 7, N'老闆人很好，公子很有錢每天買運彩。', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (17, N'莫凡彼餐飲事業_百富通股份有限公司', 8, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (18, N'興新富創意整合國際股份有限公司', 9, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (19, N'統三數網股份有限公司', 10, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (21, N'莫凡彼餐飲事業_百富通股份有限公司', 12, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (22, N'興新富創意整合國際股份有限公司', 13, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (23, N'暗風數位有限公司', 14, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (24, N'屌歐科技有限公司', 15, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (25, N'力昕資訊', 16, NULL, CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (26, N'丹尼感冒藥', 17, N'感冒用斯斯', CAST(N'2023-01-14T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (27, N'統三數網股份有限公司', 18, N'222', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (28, N'一開科技', 19, N'233', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (29, N'莫凡彼餐飲事業_百富通股份有限公司', 20, N'ACFMKDSKCVNKDS', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (30, N'莫凡彼餐飲事業_百富通股份有限公司', 21, N'好玩', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (31, N'丹尼斯樂冰', 22, N'好喝', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (32, N'丹尼獅子會', 23, N'好棒', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (33, N'丹尼史特龍', 24, N'第一滴血', CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (34, N'力麗資訊', 25, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (35, N'力昕資訊', 26, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (36, N'暗風數位有限公司', 27, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (37, N'興新富創意整合國際股份有限公司', 28, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (38, N'莫凡彼餐飲事業_百富通股份有限公司 ', 29, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (39, N'興新富創意整合國際股份有限公司', 30, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (40, N'莫凡彼餐飲事業_百富通股份有限公司', 31, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (41, N'一開科技', 32, NULL, CAST(N'2023-01-15T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (42, N'興新富創意整合國際股份有限公司', 33, NULL, CAST(N'2023-01-16T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (43, N'統三數網股份有限公司', 34, NULL, CAST(N'2023-01-16T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (44, N'暗風數位有限公司', 35, NULL, CAST(N'2023-01-16T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (45, N'一開科技', 36, NULL, CAST(N'2023-01-16T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (46, N'統三數網股份有限公司', 37, N'2222222222222', CAST(N'2023-01-16T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (47, N'資展國際股份有限公司', 38, N'5555', CAST(N'2023-01-17T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (48, N'噴水火雞肉飯', 39, N'觀光客必吃', CAST(N'2023-01-17T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (49, N'阿蛋', 40, N'可愛的小貓', CAST(N'2023-01-17T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (50, N'莫凡彼餐飲事業_百富通股份有限公司', 41, N'2222', CAST(N'2023-01-17T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (51, N'力昕資訊', 42, NULL, CAST(N'2023-01-17T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (52, N'暗風數位有限公司', 43, N'123', CAST(N'2023-01-17T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (53, N'熱嘉展', 44, N'泰拳總冠軍', CAST(N'2023-01-18T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (54, N'興新富創意整合國際股份有限公司', 45, N'11111111', CAST(N'2023-01-30T03:38:55.000' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (55, N'興新富創意整合國際股份有限公司', 46, N'sfsff', CAST(N'2023-01-18T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (57, N'一開科技', 47, N'hsr', CAST(N'2023-01-18T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (69, N'莫凡彼餐飲事業_百富通股份有限公司 ', 48, N'adfcd', CAST(N'2023-01-18T03:46:25.087' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (74, N'統三數網股份有限公司', 49, N'999', CAST(N'2023-01-18T07:49:02.790' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (76, N'興新富創意整合國際股份有限公司', 51, N'fgg', CAST(N'2023-01-18T08:19:09.430' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (77, N'丹尼斯斯保肝', 52, N'test', CAST(N'2023-01-18T08:24:59.220' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (80, N'莫凡彼餐飲事業_百富通股份有限公司 ', 55, N'123', CAST(N'2023-01-31T08:17:02.940' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (81, N'統三數網股份有限公司', 56, N'456', CAST(N'2023-01-31T08:17:06.780' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (85, N'這是測試', NULL, N'測試!123', CAST(N'2023-02-02T08:07:31.763' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (87, N'丹尼斯斯保肝', NULL, N'123', CAST(N'2023-02-02T08:19:27.837' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (95, N'連發科股份有限公司', 48, N'優點
知名企業，同事都蠻聰明、好相處且樂意給予工作上的協助

缺點
若是職缺為Ethernet通訊演算法 (ADCT/MSSD/SD1) 會建議三思。

流動率高，幾乎三年內人都離開的差不多，然後再補新的一批進來。吳姓主管常把自己該負責的事情往下面推，如果上面責怪下來，錯誤也是說下面做的。

若是有表現不錯的或是不同以往的做法，他會說是他和你一起做的”突破”，或是乾脆整碗捧走。

自己有一套不同於公司、自己制定的出缺勤與加班請假申請規則，如果符合公司規定但與他自己的規則不合，就會被找到小會議室。

會在下班前一刻交待工作，然後明天一大早的會議就要看到，曾有同事因為這樣待在公司徹夜未眠。', CAST(N'2023-02-02T17:00:00.000' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (118, N'統一企業股份有限公司', 4, N'統一企業1967 年8 月25日創立於台南永康，深耕台灣超過五十年。除致力食品製造本業以外，同時不斷拓展新的事業，目前國內外轉投資相關企業多達二百餘家，經營項目涵括多項民生消費相關的商品與服務，成為一多角化經營的綜合生活產業集團。在「國際化」與「多角化」兩大策略下，未來統一企業除持續與國際知名企業共同投資合作，以吸收國際化經營的觀念與技術外，也將藉由大陸與亞洲市場邁向全球，朝向成為世界最大食品公司之一的目標而努力不懈。

統一企業網站 https://www.uni-president.com.tw/
統一企業人力資源網(徵才網頁) https://hr.pec.com.tw/

經營理念

統一企業自從創業以來，即遵循企業創始人吳修齊先生所秉持之「三好一公道」的經營理念，以多角經營、宏觀眼光、重視人才等方針，兢兢業業地塑造出「誠實勤道、創新求進」的立業精神。', CAST(N'2023-02-03T09:15:26.303' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (122, N'昇陽國際半導體股份有限公司', 4, N'面試心得
很好的面試體驗，與面試主管交談不感到有壓力，
聊天可以很放鬆，主管也會針對履歷方面提出些建議。
對於公司福利方面介紹也非常全面且仔細，
與HR方面也是在公司福利方面介紹的非常詳細，是個良好的面試體驗!', CAST(N'2023-02-04T04:55:13.940' AS DateTime))
INSERT [dbo].[Platform] ([ArticleId], [ArticleName], [AuthorId], [Contents], [UpdateTime]) VALUES (123, N'台灣積體電路製造股份有限公司', 4, N'分紅就破百 超級多錢', CAST(N'2023-02-04T06:49:35.147' AS DateTime))
SET IDENTITY_INSERT [dbo].[Platform] OFF
GO
SET IDENTITY_INSERT [dbo].[Reply] ON 

INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (1, 9, CAST(N'2023-01-27T00:00:00.000' AS DateTime), 1, N'真假', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (3, 9, CAST(N'2023-01-27T00:00:00.000' AS DateTime), 2, N'我覺得可以', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (6, 15, CAST(N'2023-01-30T06:52:54.710' AS DateTime), 1, N'123', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (7, 53, CAST(N'2023-01-30T08:27:33.673' AS DateTime), 1, N'太強了', N'熱嘉展', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (8, 53, CAST(N'2023-01-30T08:27:58.807' AS DateTime), 2, N'真的超強', N'熱嘉展', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (15, 28, CAST(N'2023-01-31T02:27:17.813' AS DateTime), 1, N'SB', N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (16, 9, CAST(N'2023-01-31T03:33:46.813' AS DateTime), 3, N'苦', N'裡害', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (17, 9, CAST(N'2023-01-31T03:36:40.497' AS DateTime), 4, N'你好', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (18, 13, CAST(N'2023-01-31T05:50:53.083' AS DateTime), 1, N'真假真假', N'樂您漢堡', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (20, 79, CAST(N'2023-01-31T06:01:46.250' AS DateTime), 1, N'測試1', N'這是測試', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (24, 81, CAST(N'2023-02-01T03:39:16.203' AS DateTime), 1, N'1
', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (25, 81, CAST(N'2023-02-01T03:39:22.093' AS DateTime), 2, N'222', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (26, 79, CAST(N'2023-02-01T03:42:30.810' AS DateTime), 2, N'1', N'這是測試', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (27, 79, CAST(N'2023-02-01T03:42:38.237' AS DateTime), 3, N'2', N'這是測試', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (28, 54, CAST(N'2023-02-01T03:44:54.003' AS DateTime), 1, N'1', N'興新富創意整合國際股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (29, 82, CAST(N'2023-02-01T07:25:14.753' AS DateTime), 1, N'123', N'資展4', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (30, 82, CAST(N'2023-02-01T07:25:23.827' AS DateTime), 2, N'456', N'資展4', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (31, 86, CAST(N'2023-02-02T08:17:08.540' AS DateTime), 1, N'111', N'111', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (33, 95, CAST(N'2023-02-02T17:00:00.000' AS DateTime), 1, N'主管領高薪 責任下面扛', N'連發科股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (34, 95, CAST(N'2023-02-02T17:00:00.000' AS DateTime), 2, N'明顯疏失 一直維護 笑死', N'連發科股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (35, 95, CAST(N'2023-02-02T17:00:00.000' AS DateTime), 3, N'台灣企業根本想把人才當免洗筷使用阿', N'連發科股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (36, 26, CAST(N'2023-02-02T10:18:03.317' AS DateTime), 1, N'帥帥', N'丹尼感冒藥', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (37, 95, CAST(N'2023-02-02T10:30:49.343' AS DateTime), 4, N'台灣超大間企業', N'連發科股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (38, 95, CAST(N'2023-02-02T10:31:29.857' AS DateTime), 5, N'科技產業龍頭，真的猛', N'連發科股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (39, 87, CAST(N'2023-02-02T10:31:57.373' AS DateTime), 1, N'123
', N'丹尼斯斯保肝', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (40, 87, CAST(N'2023-02-02T10:32:01.093' AS DateTime), 2, N'321', N'丹尼斯斯保肝', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (42, 16, CAST(N'2023-02-03T03:13:36.693' AS DateTime), 1, N'亂講', N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (43, 16, CAST(N'2023-02-03T03:13:38.773' AS DateTime), 2, NULL, N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (44, 16, CAST(N'2023-02-03T03:13:45.263' AS DateTime), 3, N'真假', N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (45, 16, CAST(N'2023-02-03T03:13:51.717' AS DateTime), 4, N'123', N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (46, 16, CAST(N'2023-02-03T03:14:00.370' AS DateTime), 5, N'1', N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (47, 16, CAST(N'2023-02-03T03:14:02.990' AS DateTime), 6, N'2', N'一開科技', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (48, 9, CAST(N'2023-02-03T06:53:23.043' AS DateTime), 5, N'123', N'統三數網股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (53, 55, CAST(N'2023-02-03T09:27:07.213' AS DateTime), 1, N'大
家
好', N'興新富創意整合國際股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (67, 118, CAST(N'2023-02-03T11:43:41.507' AS DateTime), 1, N'123', N'統一企業股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (70, 118, CAST(N'2023-02-03T11:44:17.603' AS DateTime), 2, N'456', N'統一企業股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (71, 120, CAST(N'2023-02-03T11:44:58.010' AS DateTime), 1, N'123', N'123', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (80, 80, CAST(N'2023-02-04T04:46:24.287' AS DateTime), 1, N'這是甚麼公司', N'莫凡彼餐飲事業_百富通股份有限公司 ', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (81, 80, CAST(N'2023-02-04T04:48:34.433' AS DateTime), 2, N'真假', N'莫凡彼餐飲事業_百富通股份有限公司 ', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (82, 80, CAST(N'2023-02-04T04:48:49.810' AS DateTime), 3, N'我也想去這間公司', N'莫凡彼餐飲事業_百富通股份有限公司 ', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (83, 80, CAST(N'2023-02-04T04:50:36.413' AS DateTime), 4, N'好啊 一起來這間公司', N'莫凡彼餐飲事業_百富通股份有限公司 ', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (84, 85, CAST(N'2023-02-04T04:52:18.293' AS DateTime), 1, N'123', N'這是測試', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (85, 122, CAST(N'2023-02-04T04:55:34.200' AS DateTime), 1, N'真假聽起來很棒', N'昇陽國際半導體股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (88, 122, CAST(N'2023-02-04T06:05:36.170' AS DateTime), 2, N'看來很不錯', N'昇陽國際半導體股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (89, 122, CAST(N'2023-02-04T06:05:44.550' AS DateTime), 3, N'好文
推推', N'昇陽國際半導體股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (90, 123, CAST(N'2023-02-04T06:50:03.063' AS DateTime), 1, N'真假
我要去讀研究所了', N'台灣積體電路製造股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (91, 123, CAST(N'2023-02-04T06:50:21.660' AS DateTime), 2, N'好欸好欸 大家一起進去當工程師', N'台灣積體電路製造股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (92, 124, CAST(N'2023-02-04T08:34:22.357' AS DateTime), 1, N'123', N'資展國際股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (94, 124, CAST(N'2023-02-04T08:34:36.810' AS DateTime), 2, N'456', N'資展國際股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (100, 123, CAST(N'2023-02-06T10:13:15.667' AS DateTime), 3, N'我也要當工程師', N'台灣積體電路製造股份有限公司', NULL)
INSERT [dbo].[Reply] ([ReplyId], [ArticleId], [ReplyTime], [Floor], [ReplyMessage], [ArticleName], [Contents]) VALUES (104, 128, CAST(N'2023-02-06T11:25:04.870' AS DateTime), 1, N'123', N'123', NULL)
SET IDENTITY_INSERT [dbo].[Reply] OFF
GO
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([Id], [CandidaterId], [Score], [AnswerTime], [Result], [Type], [Analysis], [SuggestJob]) VALUES (1, NULL, NULL, NULL, 0, N'Trash', N'你什麼都不喜歡，只能當**', N'無業遊民')
INSERT [dbo].[Result] ([Id], [CandidaterId], [Score], [AnswerTime], [Result], [Type], [Analysis], [SuggestJob]) VALUES (2, NULL, NULL, NULL, 1, N'米蟲', N'你只喜歡一個東西，可憐哪', N'50籃店員')
INSERT [dbo].[Result] ([Id], [CandidaterId], [Score], [AnswerTime], [Result], [Type], [Analysis], [SuggestJob]) VALUES (3, NULL, NULL, NULL, 2, N'靈長類', N'你喜歡了兩個東西，有點用', N'多娜隻店員')
INSERT [dbo].[Result] ([Id], [CandidaterId], [Score], [AnswerTime], [Result], [Type], [Analysis], [SuggestJob]) VALUES (4, NULL, NULL, NULL, 3, N'人類', N'你是個正常人，什麼都可以做，什麼都無法成功', N'腥八嗑店員')
INSERT [dbo].[Result] ([Id], [CandidaterId], [Score], [AnswerTime], [Result], [Type], [Analysis], [SuggestJob]) VALUES (5, NULL, NULL, NULL, 4, N'高知識份子', N'你喜歡的有點多，是個有內涵的人', N'圖書館員')
INSERT [dbo].[Result] ([Id], [CandidaterId], [Score], [AnswerTime], [Result], [Type], [Analysis], [SuggestJob]) VALUES (6, NULL, NULL, NULL, 5, N'菁英', N'你什麼都喜歡，是個人才', N'資料分析師')
SET IDENTITY_INSERT [dbo].[Result] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (1, N'C#', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (2, N'Java', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (3, N'MSSQL', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (4, N'Linq', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (5, N'CSS', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (6, N'HTML', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (7, N'VUE.js', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (8, N'PhotoShop', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (9, N'
Illustrator', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (10, N'Premiere', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (11, N'InDesign', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (12, N'Lightroom', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (13, N'After Effects', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (14, N'3ds Max', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (15, N'Maya', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (16, N'Blender', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (17, N'AutoCAD', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (18, N'SketchUp', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (19, N'英語', 900)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (20, N'中文', 900)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (21, N'西班牙語', 900)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (22, N'日語', 900)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (23, N'韓文', 900)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (24, N'吉他', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (25, N'鋼琴', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (26, N'樂理', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (27, N'唱歌', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (28, N'小提琴', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (29, N'和聲', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (30, N'聲樂', 800)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (31, N'繪畫', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (32, N'平面設計', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (33, N'工業設計', 200)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (34, N'EntityFramework', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (35, N'Bootstrap', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (36, N'Git', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (37, N'.Net Core 6.0', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (38, N'.Net MVC', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (39, N'.Net Core 3.1', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (40, N'.Net Core 4.8', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (41, N'JavaScript', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (42, N'React', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (43, N'Angular', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (44, N'Node.js', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (45, N'Next.js', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (46, N'jQuery', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (47, N'Python', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (48, N'大數據分析', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (49, N'Visual Studio Code', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (50, N'C++', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (51, N'C', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (52, N'Microsoft Visual Studio', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (53, N'MySQL', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (54, N'PostgreSQL', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (55, N'Oracle', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (56, N'SQL語法', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (57, N'Linux', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (58, N'Microsoft Office', 100)
INSERT [dbo].[Skill] ([SkillId], [SkillName], [Category]) VALUES (59, N'ClipStudio', 200)
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [Name], [Categories], [EntryTime], [Experience], [Working], [img], [Intro]) VALUES (1, N'久銘', N'科技', CAST(N'2022-01-09' AS Date), N'清大畢業', 1, N'/images/991223.jpg', N'睡著的高清無碼久銘睡照，24歲，台郡科技產線作業員，綽號紀崴')
INSERT [dbo].[Teacher] ([TeacherId], [Name], [Categories], [EntryTime], [Experience], [Working], [img], [Intro]) VALUES (2, N'忠進', N'科技', CAST(N'2022-01-09' AS Date), N'精神病院畢業', 1, N'/images/986658.jpg', N'絕讚教學中，是coding master，也是copy master')
INSERT [dbo].[Teacher] ([TeacherId], [Name], [Categories], [EntryTime], [Experience], [Working], [img], [Intro]) VALUES (3, N'Jolin', N'理財', CAST(N'2022-01-16' AS Date), N'中興大學', 1, N'/images/1008581.jpg', N'林木森森，不怕冷不怕熱，絕讚徵女友中。等到放晴的那天，也許我會比較好一點')
INSERT [dbo].[Teacher] ([TeacherId], [Name], [Categories], [EntryTime], [Experience], [Working], [img], [Intro]) VALUES (4, N'淳方', N'音樂', CAST(N'2022-01-18' AS Date), N'超級偶像第87屆冠軍', 1, N'/images/1010040.jpg', N'今天開始用心學吉他，未來不用怕，有需要也可以電擊他')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacancy] ON 

INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (2, N'設計師', 2, N'藝文', N'台北市', N'平日', 28000, 1, N'白班', 0, N'讓甲方一次通過', N'眼睛不瞎、嘴巴甜', CAST(N'2022-01-09' AS Date), 1, 5)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (3, N'資深或初階前端工程師', 3, N'科技', N'台北市', N'平日', 40000, 1, N'白班', 2, N'使用前端框架 Vue.js 實際開發經驗1年以上', N'加入資工，人生打工', CAST(N'2022-01-12' AS Date), 1, 2)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (4, N'Intern 實習生', 4, N'藝文', N'台北市', N'平日', 35000, 1, N'白班', 1, N'想要在游刃有餘的學期中，添增在台北101大樓中精彩豐富的實習體驗嗎', N'demodemodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 1)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (5, N'資料分析師', 1, N'科技', N'高雄市', N'平日', 48000, 1, N'白班', 3, N'交付數據諮詢與查詢服務，包含資料查詢、應用、分析與數據洞察', N'demodemodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 7)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (6, N'數位行銷專員', 2, N'科技', N'高雄市', N'平日', 35000, 1, N'白班', 3, N'1. 透過數位進攻，異業合作，商模發想，提升公司業績目標', N'demodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 8)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (7, N'Digital/Graphic Designer 視覺設計師', 3, N'科技', N'高雄市', N'平日', 35000, 1, N'白班', 2, N'負責綠能月刊排版、協助設計人員製作公司活動主視覺延伸物。 公關禮品及製作物廠商聯繫以及進度追蹤', N'demodemodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 5)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (8, N'新能源產業助理分析師', 4, N'科技', N'高雄市', N'平日', 45000, 1, N'白班', 1, N'1. 協助分析師進行資訊蒐集，並開始直接對業界交流 ', N'demodemodemodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 4)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (9, N'大數據資料分析師', 1, N'科技', N'高雄市', N'平日', 35000, 1, N'白班', 4, N'工作內容： 1.負責資料標準化、探勘及分析工作', N'demodemodemodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 3)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (10, N'
劇本企劃(Infinity Alpha)', 2, N'科技', N'高雄市', N'平日', 45000, 1, N'白班', 0, N'本工作室，是由一群喜愛女性向遊戲的夥伴所組成的工作室，成員以女性為主，', N'demodemodemodemodemodemo', CAST(N'2022-01-12' AS Date), 1, 6)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (11, N'資深前端(網站)開發工程師', 3, N'藝文', N'高雄市', N'平日', 35000, 1, N'白班', 4, N'跨越國際的視野 創新科技的作品 協作Collaboration＋開放Open-minded＋責任Responsibility＋卓越Excellence＝C OＲＥ，為我們的企業文化核心價值觀。', N'demodemodemodemodemodemo', CAST(N'2022-01-13' AS Date), 1, 5)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (12, N'專案管理 Project Management - 全遠端工作', 4, N'科技', N'高雄市', N'平日', 45000, 1, N'白班', 2, N'如果你也.. 不想應付老闆跟同事，也不喜歡老闆管人 覺得每天花半小時以上人擠人通勤上班簡直荒謬 覺得世界上有比工作更重要的事 覺得改變世界聽起來有點累人 愛喝酒 想享受人生 在夢想與現實中掙扎 想邊看著海浪邊工', N'demodemodemodemodemodemo', CAST(N'2022-01-13' AS Date), 1, 1)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (13, N'PHP 後端工程師 - 全遠端工作
熱門', 10, N'科技', N'高雄市', N'平日', 45000, 1, N'白班', 2, N'如果你也.. 不想應付老闆跟同事，也不喜歡老闆管人 覺得每天花半小時以上人擠人通勤上班簡直荒謬 覺得世界上有比工作更重要的事 覺得改變世界聽起來有點累人 愛喝酒 想享受人生 在夢想與現實中掙扎 想邊看著海浪邊工', N'demodemodemodemodemodemo', CAST(N'2022-01-13' AS Date), 1, 2)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (14, N'Digital/Graphic Designer 視覺設計師', 11, N'科技', N'高雄市', N'平日', 35000, 1, N'白班', 2, N'負責綠能月刊排版、協助設計人員製作公司活動主視覺延伸物。 公關禮品及製作物廠商聯繫以及進度追蹤', N'demodemodemodemodemodemo', CAST(N'2022-01-13' AS Date), 1, 3)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (15, N'資深數位行銷專員', 12, N'科技', N'高雄市', N'平日', 35000, 1, N'白班', 3, N'1. 協助完成社群內容的創意、各類行銷素材規劃建議、執行規劃與成效分析。

2. 數位行銷和企劃：接觸一切從網絡獲取用戶的渠道，優化現時各個渠道的廣告活動，改善產品的轉換率和留存率
數位廣告投放操作

3. 數位廣告投放操作

4. 各類行銷素材規劃建議與執行

5. 專案突發狀況處理、溝通協調', N'1. 1-3年數位廣告操作實務經驗 - 熟悉Meta(Facebook& IG)廣告後台操作，至少具有投放10萬(以上)預算的經驗
熱愛社群、具備文案撰寫能力

2. 熟悉GA(Google Analytics)，能從數字洞察中擬定操作策略

3. 熟悉YouTube自媒體經營文化，具備企劃提案能力

4. 熟悉文書簡報軟替，尤其是Google 體系雲端協作軟體 Google Sheet, Google Document...等

5. 對文化藝術產業或線上教育產業有高度興趣，願意接觸過去不熟悉的知識領域。', CAST(N'2022-01-13' AS Date), 1, 4)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (16, N'數據分析師', 13, N'藝文', N'高雄市', N'平日', 45000, 1, N'白班', 3, N'1.用數據驅動的方式發展出貼近業務需求的分析模組，將數據自動化/視覺化呈現，並加以管理及維護。

2.因應公司戰略營運方針進行相關數據研究規劃及與跨部門溝通協調達成目標。

3.運用機器學習、網站營運數據分析，包含流量數據分析(如GA資料)。', N'1. 對電商營運數據(流量/會員/訂單/商品)有基礎的解讀能力

2. 具客群經營分析、商品貼標分析等經驗

3. 具備機器學習相關經驗，如SVM/NN/Random forest

4. 熟悉 Python, R等機器學習開發工具

5. 熟悉 最佳化 Linear programming等數學分析工具

6. 熟悉使用爬蟲技術獲取外部資料

7. 具備數據分析作品尤佳', CAST(N'2022-01-13' AS Date), 1, 8)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (17, N'數位行銷專員', 1, N'科技', N'高雄市', N'平日', 40000, 1, N'白班', 2, N'1. 透過數位進攻，異業合作，商模發想，提升公司業績目標

2. Google Ads、Facebook廣告帳戶管理、內外媒體廣告投放執行與監控優化

3. 廣告成效追蹤及報表分析

4. 支援公司跨部門專案推動

5. 新客專案開發與執行

6. 平台行銷企劃與社群維運', N'1. 熟悉Excel 分析工具，具數字敏銳度與邏輯分析能力

2. 熟悉GA分析，追蹤數據追蹤，提供優化建議

3. 具Facebook、Google、Line廣告投放經驗

4. 具FB粉專LINE OA維運經驗

5. 具異業結盟 / 通路開發經驗', CAST(N'2023-01-30' AS Date), 1, 3)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (21, N'網頁前端工程師', 1, N'科技', N'高雄市', N'平日', 40000, 1, N'白班', 0, N'1. 根據專案規格與視覺設計，完成前端Layout

2. 根據專案規格與API，完成前端功能串接

3. 針對內部標準的執行提出建議

4. 團隊合作與持續學習', N'1. 三年以上相關開發經驗(可準備作品集)

2. 熟悉 HTML, CSS, Javascript

3. 熟悉 Vue.js, Node.js, Express

4. 重視用戶使用經驗細節與優化

5. 加分條件: 熟悉Mongodb, RESTful APIs, Gulp.js, Webpack', CAST(N'2023-01-30' AS Date), 1, 1)
INSERT [dbo].[Vacancy] ([VacancyId], [WorkName], [EnterpriseId], [Category], [WorkPlace], [WorkTime], [Salary], [FullPartTime], [Shift], [Seniority], [WorkContent], [WorkReqire], [Updatetime], [Valid], [number]) VALUES (32, N'前端工程師', 1, N'科技', N'高雄市前鎮區', N'平日', 38000, 1, N'白班', 2, N'1. 編寫並維護網路爬蟲
2. 搜集、串接使用者行為資料
 3. 協助業務和廣告優化師整合數據', N'1. 擅長 Github、Python、JavaScript、jQuery
2. 熟稔 JavaScript, jQuery, Python
3. 曾撰寫過網路爬蟲', CAST(N'2023-02-07' AS Date), 1, 5)
SET IDENTITY_INSERT [dbo].[Vacancy] OFF
GO
ALTER TABLE [dbo].[Platform] ADD  CONSTRAINT [DF_Platform_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
ALTER TABLE [dbo].[Reply] ADD  CONSTRAINT [DF_Reply_ReplyTime]  DEFAULT (getdate()) FOR [ReplyTime]
GO
ALTER TABLE [dbo].[Reply] ADD  CONSTRAINT [DF_Reply_Floor]  DEFAULT ((0)) FOR [Floor]
GO
