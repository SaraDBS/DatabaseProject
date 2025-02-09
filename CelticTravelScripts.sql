USE [Celtic Travel]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[PersonID] [int] NOT NULL,
	[StreetNumber] [varchar](55) NULL,
	[StreetName] [varchar](20) NULL,
	[State] [varchar](20) NULL,
	[ZipCode] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[AgentID] [int] NOT NULL,
	[CommissionPercentage] [decimal](5, 2) NULL,
 CONSTRAINT [pk_Agent] PRIMARY KEY CLUSTERED 
(
	[AgentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [pk_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[HourlyWage] [decimal](4, 2) NOT NULL,
 CONSTRAINT [pk_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Flight]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flight](
	[FlightNumber] [int] NOT NULL,
	[AirlineName] [varchar](20) NULL,
	[Depart] [date] NULL,
	[Arrive] [date] NULL,
	[DepartCity] [varchar](15) NULL,
	[ArriveCity] [varchar](15) NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [pk_Flight] PRIMARY KEY CLUSTERED 
(
	[FlightNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FlightBooking]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBooking](
	[FlightNumber] [int] NOT NULL,
	[ItineraryID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](20) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[RoomsAvailable] [int] NOT NULL,
 CONSTRAINT [pk_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HotelBooking]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelBooking](
	[HotelID] [int] NOT NULL,
	[ItineraryID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Itinerary]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itinerary](
	[ItineraryID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[BookedDate] [date] NULL,
 CONSTRAINT [pk_Itinerary] PRIMARY KEY CLUSTERED 
(
	[ItineraryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Email] [varchar](255) NOT NULL,
 CONSTRAINT [pk_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhoneNumber]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhoneNumber](
	[PersonID] [int] NOT NULL,
	[Landline] [varchar](20) NULL,
	[MobileNumber] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (1, N'20 ', N'Bamako Place', N'DC', N'20521')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (2, N'71', N'Athens Place', N'MD', N'71005')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (3, N'84', N'London Street', N'VA', N'84026')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (4, N'55', N'Quebec Place', N'DC', N'20521')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (5, N'61', N'Peshwar Street', N'DC', N'20521')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (6, N'24', N'Nouakchott Place', N'DC', N'20521')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (7, N'41', N'Sidney Street', N'MD', N'71005')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (8, N'32', N'Hermosillo Road', N'DC', N'20521')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (9, N'73', N'Easton Road', N'VA', N'84026')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (10, N'90', N'Cedar Place', N'DC', N'20521')
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (11, N'27', N'Patrick Street', NULL, NULL)
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (12, N'16', N'Mulberry Road', NULL, NULL)
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (13, N'85', N'Ashton Gree', NULL, NULL)
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (14, N'32', N'Frederick Road', NULL, NULL)
INSERT [dbo].[Address] ([PersonID], [StreetNumber], [StreetName], [State], [ZipCode]) VALUES (15, N'44', N'South Place Street', NULL, NULL)
INSERT [dbo].[Agent] ([AgentID], [CommissionPercentage]) VALUES (6, CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([AgentID], [CommissionPercentage]) VALUES (7, CAST(120.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([AgentID], [CommissionPercentage]) VALUES (8, CAST(135.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([AgentID], [CommissionPercentage]) VALUES (9, CAST(140.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([AgentID], [CommissionPercentage]) VALUES (10, CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Customer] ([CustomerID]) VALUES (1)
INSERT [dbo].[Customer] ([CustomerID]) VALUES (2)
INSERT [dbo].[Customer] ([CustomerID]) VALUES (3)
INSERT [dbo].[Customer] ([CustomerID]) VALUES (4)
INSERT [dbo].[Customer] ([CustomerID]) VALUES (5)
INSERT [dbo].[Employee] ([EmployeeID], [HourlyWage]) VALUES (11, CAST(15.00 AS Decimal(4, 2)))
INSERT [dbo].[Employee] ([EmployeeID], [HourlyWage]) VALUES (12, CAST(12.00 AS Decimal(4, 2)))
INSERT [dbo].[Employee] ([EmployeeID], [HourlyWage]) VALUES (13, CAST(12.00 AS Decimal(4, 2)))
INSERT [dbo].[Employee] ([EmployeeID], [HourlyWage]) VALUES (14, CAST(15.00 AS Decimal(4, 2)))
INSERT [dbo].[Employee] ([EmployeeID], [HourlyWage]) VALUES (15, CAST(15.00 AS Decimal(4, 2)))
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (823, N'KLM', CAST(N'2016-10-07' AS Date), CAST(N'2016-10-14' AS Date), N'Washington', N'Chicago', 300)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (834, N'Airlingus', CAST(N'2016-10-08' AS Date), CAST(N'2016-10-15' AS Date), N'Washington', N'New York', 315)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (845, N'TAM', CAST(N'2016-10-09' AS Date), CAST(N'2016-10-16' AS Date), N'Washington', N'London', 330)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (856, N'EASYJET', CAST(N'2016-10-10' AS Date), CAST(N'2016-10-17' AS Date), N'Washington', N'Toronto', 345)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (867, N'IBERIA', CAST(N'2016-10-11' AS Date), CAST(N'2016-10-18' AS Date), N'Washington', N'Chicago', 360)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (878, N'Airlingus', CAST(N'2016-10-12' AS Date), CAST(N'2016-10-19' AS Date), N'Washington', N'New York', 300)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (889, N'TAM', CAST(N'2016-10-13' AS Date), CAST(N'2016-10-20' AS Date), N'Washington', N'London', 315)
INSERT [dbo].[Flight] ([FlightNumber], [AirlineName], [Depart], [Arrive], [DepartCity], [ArriveCity], [Capacity]) VALUES (890, N'KLM', CAST(N'2016-10-14' AS Date), CAST(N'2016-10-21' AS Date), N'Washington', N'Toronto', 335)
INSERT [dbo].[FlightBooking] ([FlightNumber], [ItineraryID]) VALUES (823, 3)
INSERT [dbo].[FlightBooking] ([FlightNumber], [ItineraryID]) VALUES (834, 4)
INSERT [dbo].[FlightBooking] ([FlightNumber], [ItineraryID]) VALUES (845, 5)
INSERT [dbo].[FlightBooking] ([FlightNumber], [ItineraryID]) VALUES (856, 6)
INSERT [dbo].[FlightBooking] ([FlightNumber], [ItineraryID]) VALUES (867, 7)
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([HotelID], [Location], [Name], [RoomsAvailable]) VALUES (1, N'Chicago', N'Sheraton', 40)
INSERT [dbo].[Hotel] ([HotelID], [Location], [Name], [RoomsAvailable]) VALUES (2, N'New York', N'Hilton', 35)
INSERT [dbo].[Hotel] ([HotelID], [Location], [Name], [RoomsAvailable]) VALUES (3, N'London', N'Plaza', 45)
INSERT [dbo].[Hotel] ([HotelID], [Location], [Name], [RoomsAvailable]) VALUES (4, N'Toronto', N'Four Seasons', 25)
INSERT [dbo].[Hotel] ([HotelID], [Location], [Name], [RoomsAvailable]) VALUES (5, N'New York', N'Manhattan', 30)
SET IDENTITY_INSERT [dbo].[Hotel] OFF
INSERT [dbo].[HotelBooking] ([HotelID], [ItineraryID]) VALUES (1, 3)
INSERT [dbo].[HotelBooking] ([HotelID], [ItineraryID]) VALUES (2, 4)
INSERT [dbo].[HotelBooking] ([HotelID], [ItineraryID]) VALUES (3, 5)
INSERT [dbo].[HotelBooking] ([HotelID], [ItineraryID]) VALUES (4, 6)
INSERT [dbo].[HotelBooking] ([HotelID], [ItineraryID]) VALUES (5, 7)
SET IDENTITY_INSERT [dbo].[Itinerary] ON 

INSERT [dbo].[Itinerary] ([ItineraryID], [CustomerID], [AgentID], [BookedDate]) VALUES (3, 1, 6, CAST(N'2016-01-10' AS Date))
INSERT [dbo].[Itinerary] ([ItineraryID], [CustomerID], [AgentID], [BookedDate]) VALUES (4, 2, 7, CAST(N'2016-02-10' AS Date))
INSERT [dbo].[Itinerary] ([ItineraryID], [CustomerID], [AgentID], [BookedDate]) VALUES (5, 3, 8, CAST(N'2016-03-10' AS Date))
INSERT [dbo].[Itinerary] ([ItineraryID], [CustomerID], [AgentID], [BookedDate]) VALUES (6, 4, 9, CAST(N'2016-04-10' AS Date))
INSERT [dbo].[Itinerary] ([ItineraryID], [CustomerID], [AgentID], [BookedDate]) VALUES (7, 5, 10, CAST(N'2016-05-10' AS Date))
SET IDENTITY_INSERT [dbo].[Itinerary] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (1, N'Jill', N'East', N'jillEast@hotmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (2, N'Seth', N'Rogan', N'seth7@gmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (3, N'Ailish', N'Halford', N'halhal@mail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (4, N'Nicole', N'Smith', N'smiley40@gmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (5, N'Niall', N'Holmes', N'holN33@yahoo.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (6, N'Lilly', N'Dawson', N'lilaD23@gmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (7, N'Lauren', N'Arpac', N'laureynm@hotmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (8, N'Olivia', N'Ryan', N'ollyw@yahoo.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (9, N'Susan', N'West', N'susy@hotmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (10, N'Finn', N'Murray', N'finnick@yahoo.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (11, N'Timothy', N'Rielly', N'timmy@mail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (12, N'Fred', N'Savage', N'freddie@hotmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (13, N'Valerie', N'Byrne', N'valval@gmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (14, N'Alice', N'Redmond', N'alally@hotmail.com')
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [Email]) VALUES (15, N'Luke', N'Mitchell', N'luke2016@gmail.com')
SET IDENTITY_INSERT [dbo].[Person] OFF
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (1, N'01 876 5465', N'(085)951-7812')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (2, N'01 533 6479', N'(089)546-5466')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (3, N'01 525 9678', N'(087)369-1241')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (4, N'01 876 8558', N'(085)322-4114')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (5, N'01 876 9889', N'(086)389-7845')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (6, N'01 876 1551', N'(089)952-8664')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (7, N'01 533 7552', N'(089)546-6468')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (8, N'01 876 4212', N'(089)354-5664')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (9, N'01 525 8565', N'(087)357-4162')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (10, N'01 876 4575', N'(085)421-7369')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (11, N'01 876 6543', N'(086)344-5677')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (12, N'01 876 2334', N'(087)234-6321')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (13, N'01 876 4553', N'(085)122-3345')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (14, N'01 876 7642', N'(086)432-5678')
INSERT [dbo].[PhoneNumber] ([PersonID], [Landline], [MobileNumber]) VALUES (15, N'01 876 4902', N'(087)322-1214')
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [fk_Address_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [fk_Address_Person]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [fk_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [fk_Agent]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [fk_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [fk_Customer]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [fk_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [fk_Employee]
GO
ALTER TABLE [dbo].[FlightBooking]  WITH CHECK ADD  CONSTRAINT [fk_FlightBooking_Flight] FOREIGN KEY([FlightNumber])
REFERENCES [dbo].[Flight] ([FlightNumber])
GO
ALTER TABLE [dbo].[FlightBooking] CHECK CONSTRAINT [fk_FlightBooking_Flight]
GO
ALTER TABLE [dbo].[FlightBooking]  WITH CHECK ADD  CONSTRAINT [fk_FlightBooking_Itinerary] FOREIGN KEY([ItineraryID])
REFERENCES [dbo].[Itinerary] ([ItineraryID])
GO
ALTER TABLE [dbo].[FlightBooking] CHECK CONSTRAINT [fk_FlightBooking_Itinerary]
GO
ALTER TABLE [dbo].[HotelBooking]  WITH CHECK ADD  CONSTRAINT [fk_HotelBooking_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[Hotel] ([HotelID])
GO
ALTER TABLE [dbo].[HotelBooking] CHECK CONSTRAINT [fk_HotelBooking_Hotel]
GO
ALTER TABLE [dbo].[HotelBooking]  WITH CHECK ADD  CONSTRAINT [fk_HotelBooking_Itinerary] FOREIGN KEY([ItineraryID])
REFERENCES [dbo].[Itinerary] ([ItineraryID])
GO
ALTER TABLE [dbo].[HotelBooking] CHECK CONSTRAINT [fk_HotelBooking_Itinerary]
GO
ALTER TABLE [dbo].[Itinerary]  WITH CHECK ADD  CONSTRAINT [fk_Itinerary] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([AgentID])
GO
ALTER TABLE [dbo].[Itinerary] CHECK CONSTRAINT [fk_Itinerary]
GO
ALTER TABLE [dbo].[Itinerary]  WITH CHECK ADD  CONSTRAINT [fk_Itinerary_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Itinerary] CHECK CONSTRAINT [fk_Itinerary_Customer]
GO
ALTER TABLE [dbo].[PhoneNumber]  WITH CHECK ADD  CONSTRAINT [fk_PhoneNumber_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[PhoneNumber] CHECK CONSTRAINT [fk_PhoneNumber_Person]
GO
/****** Object:  StoredProcedure [dbo].[GetAgentInformation]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAgentInformation]
@FirstName varchar(15) = NULL
AS

SELECT Agent.AgentID, Person.FirstName, Person.LastName, Person.Email, Agent.CommissionPercentage
FROM (Person INNER JOIN Agent ON Person.PersonID = Agent.AgentID) INNER JOIN Address ON Person.PersonID = Address.PersonID
WHERE FirstName = ISNULL(@FirstName, FirstName)

GO
/****** Object:  StoredProcedure [dbo].[GetCustomerAddress]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCustomerAddress]
@LastName varchar(15) = NULL
AS
SELECT Customer.CustomerID, Person.LastName, Person.FirstName, Person.Email, Address.StreetNumber, Address.StreetName, Address.State, Address.ZipCode
FROM (Person INNER JOIN Customer ON Person.PersonID = Customer.CustomerID) INNER JOIN Address ON Person.PersonID = Address.PersonID
WHERE LastName = ISNULL(@LastName, LastName)
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerInfoAndBooking]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCustomerInfoAndBooking]
@LastName varchar(15) = NULL
AS
SELECT Person.FirstName, Person.LastName, Itinerary.BookedDate, Itinerary.AgentID
FROM (Person INNER JOIN Customer ON Person.PersonID = Customer.CustomerID) INNER JOIN Itinerary ON Customer.CustomerID = Itinerary.CustomerID
WHERE LastName = ISNULL(@LastName, LastName)

GO
/****** Object:  StoredProcedure [dbo].[GetFlightByCity]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightByCity]
@ArriveCity varchar(15) = NULL
AS
SELECT Flight.ArriveCity, Flight.FlightNumber, Flight.AirlineName
FROM Flight
WHERE ArriveCity = ISNULL(@ArriveCity,ArriveCity)
GO
/****** Object:  StoredProcedure [dbo].[GetHotelAvailability]    Script Date: 31/10/2016 16:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHotelAvailability]
@Name varchar(15) = NULL
AS
SELECT Hotel.Name, Hotel.RoomsAvailable
FROM Hotel
WHERE Name = ISNULL(@Name, Name)

GO
