USE [KT5]
GO
/****** Object:  Table [dbo].[AuthTypes]    Script Date: 21.10.2024 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AuthTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 21.10.2024 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 21.10.2024 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.10.2024 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[lastname] [nvarchar](150) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[patronymic] [nvarchar](150) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[login] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
	[phone] [nvarchar](150) NOT NULL,
	[passportSeries] [int] NOT NULL,
	[passportNumber] [int] NOT NULL,
	[BirthDate] [date] NOT NULL,
	[LastAuthDateTime] [datetime] NULL,
	[AuthTypeId] [int] NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AuthTypes] ON 

INSERT [dbo].[AuthTypes] ([id], [name]) VALUES (1, N'Неуспешно')
INSERT [dbo].[AuthTypes] ([id], [name]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[AuthTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([id], [name]) VALUES (1, N'женский')
INSERT [dbo].[Genders] ([id], [name]) VALUES (2, N'мужской')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [name]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([id], [name]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Roles] ([id], [name]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'7817855837', 2367, 558134, CAST(N'1993-07-03' AS Date), CAST(N'2023-02-01T05:59:51.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'2309068815', 7101, 669343, CAST(N'1975-06-22' AS Date), CAST(N'2023-02-13T13:59:08.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'5554448316', 3455, 719630, CAST(N'1991-08-16' AS Date), CAST(N'2023-02-10T17:58:02.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'3926824442', 2377, 871623, CAST(N'1970-12-22' AS Date), CAST(N'2023-02-03T03:35:08.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'8364290386', 8755, 921148, CAST(N'1999-05-04' AS Date), CAST(N'2023-02-15T21:35:55.000' AS DateTime), 1, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'2839453092', 4355, 104594, CAST(N'1994-12-06' AS Date), CAST(N'2023-02-11T20:22:23.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'6213593669', 2791, 114390, CAST(N'1995-03-28' AS Date), CAST(N'2023-02-15T18:22:26.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'4405610314', 5582, 126286, CAST(N'1977-03-27' AS Date), CAST(N'2023-02-15T23:03:04.000' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'3319182434', 2978, 133653, CAST(N'1975-04-12' AS Date), CAST(N'2023-02-05T05:55:20.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'4932193942', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'4074855030', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'9194782497', 2460, 169505, CAST(N'1983-10-03' AS Date), CAST(N'2023-02-04T19:26:44.000' AS DateTime), 1, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'4828029580', 3412, 174593, CAST(N'1998-03-03' AS Date), CAST(N'2023-02-16T05:30:24.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'4559446449', 4950, 183034, CAST(N'1993-06-08' AS Date), CAST(N'2023-02-10T23:46:25.000' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'7103882563', 5829, 219464, CAST(N'1980-09-23' AS Date), CAST(N'2023-02-01T17:56:56.000' AS DateTime), 2, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'7594523846', 6443, 208059, CAST(N'1991-03-13' AS Date), CAST(N'2023-02-08T19:05:56.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'6878011332', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'4257832253', 8207, 522702, CAST(N'1980-04-16' AS Date), CAST(N'2023-02-05T15:05:42.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'8894494391', 9307, 232158, CAST(N'1993-07-23' AS Date), CAST(N'2023-02-13T21:13:14.000' AS DateTime), 2, 2)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'8253018250', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'3973342086', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'2415703040', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'7134628265', 1710, 427875, CAST(N'1976-12-22' AS Date), CAST(N'2023-02-07T20:30:21.000' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'8548222331', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [RoleId], [lastname], [name], [patronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [BirthDate], [LastAuthDateTime], [AuthTypeId], [GenderId]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'4397136117', 1587, 291249, CAST(N'1987-02-05' AS Date), CAST(N'1970-01-01T00:00:45.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AuthTypes] FOREIGN KEY([AuthTypeId])
REFERENCES [dbo].[AuthTypes] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AuthTypes]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Genders] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Genders]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
