CREATE DATABASE ABC

USE [ABC]
GO
/****** Object:  UserDefinedTableType [dbo].[CategoryIDTableType]    Script Date: 2024-08-12 10:01:02 ******/
CREATE TYPE [dbo].[CategoryIDTableType] AS TABLE(
	[CategoryID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[CategoryIDTableTypeS]    Script Date: 2024-08-12 10:01:02 ******/
CREATE TYPE [dbo].[CategoryIDTableTypeS] AS TABLE(
	[CategoryID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TestTypeTable]    Script Date: 2024-08-12 10:01:02 ******/
CREATE TYPE [dbo].[TestTypeTable] AS TABLE(
	[CategoryID] [int] NULL
)
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryRelations]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryRelations](
	[ParentCategoryID] [int] NOT NULL,
	[ChildCategoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ParentCategoryID] ASC,
	[ChildCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Elektronik')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Telefonlar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Kameralar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Akıllı Telefonlar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Lensler')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Cam')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'Dizüstü Bilgisayar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (8, N'Kahve Makinesi')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (9, N'Android Telefon')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (10, N'IOS Telefon')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (11, N'Bilgisayar Aksesuarları')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (12, N'TV ve Eğlence Sistemleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (13, N'Ev Aletleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (14, N'Mutfak Gereçleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (15, N'Spor ve Outdoor')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (16, N'Kitaplar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (17, N'Müzik Aletleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (18, N'Akıllı Ev Sistemleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (19, N'Oyun Konsolları')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (20, N'Kişisel Bakım Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (21, N'Eğitim Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (22, N'Sağlık Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (23, N'Oto Aksesuarları')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (24, N'Giyim ve Moda')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (25, N'Çocuk Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (26, N'Ofis Malzemeleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (27, N'Hobi Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (28, N'Güvenlik Sistemleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (29, N'Yatak ve Yastıklar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (30, N'Züccaciye')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (31, N'Lightning Şarj Kablosu')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (32, N'TYPE-C Şarj Kablosu')
GO
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (1, 2)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (1, 3)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (1, 12)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (2, 4)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (3, 5)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (3, 6)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (4, 9)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (4, 10)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (7, 11)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (7, 27)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (8, 14)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (9, 32)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (10, 31)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (13, 14)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (13, 29)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (13, 30)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (18, 28)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (19, 23)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (20, 21)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (21, 16)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (22, 24)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (23, 24)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (24, 25)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (26, 27)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (26, 28)
INSERT [dbo].[CategoryRelations] ([ParentCategoryID], [ChildCategoryID]) VALUES (27, 17)
GO
ALTER TABLE [dbo].[CategoryRelations]  WITH CHECK ADD FOREIGN KEY([ChildCategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[CategoryRelations]  WITH CHECK ADD FOREIGN KEY([ParentCategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryHierarchyWParams]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCategoryHierarchyWParams]
    @CategoryID INT
AS
BEGIN
    WITH CategoryHierarchy AS
    (
        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            0 AS Level                                        
        FROM Categories c
        LEFT JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        WHERE c.CategoryID = @CategoryID                      

        UNION ALL

        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(ch.FullPath + ' -> ' + c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            ch.Level + 1                                       
        FROM Categories c
        INNER JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        INNER JOIN CategoryHierarchy ch ON cr.ParentCategoryID = ch.CategoryID
    )
    SELECT * FROM CategoryHierarchy
    ORDER BY Level
END;
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryHierarchyWParams1]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCategoryHierarchyWParams1]
    @CategoryID INT
AS
BEGIN
    WITH CategoryHierarchy AS
    (
        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            0 AS Level                                        
        FROM Categories c
        LEFT JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        WHERE c.CategoryID = @CategoryID                      

        UNION ALL

        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(ch.FullPath + ' -> ' + c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            ch.Level + 1                                       
        FROM Categories c
        INNER JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        INNER JOIN CategoryHierarchy ch ON cr.ParentCategoryID = ch.CategoryID
    )
    SELECT * 
    FROM CategoryHierarchy
    ORDER BY FullPath
END;
GO
/****** Object:  StoredProcedure [dbo].[IDLISTESIYLEGETIRME]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Prosedürü oluşturuyoruz
CREATE PROCEDURE [dbo].[IDLISTESIYLEGETIRME]
    @CategoryIDList dbo.CategoryIDTableTypeS READONLY
AS
BEGIN
    WITH CategoryHierarchy AS
    (
        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            0 AS Level                                        
        FROM Categories c
        LEFT JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        WHERE c.CategoryID IN (SELECT CategoryID FROM @CategoryIDList)                      

        UNION ALL

        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(ch.FullPath + ' -> ' + c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            ch.Level + 1                                       
        FROM Categories c
        INNER JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        INNER JOIN CategoryHierarchy ch ON cr.ParentCategoryID = ch.CategoryID
    )
    SELECT * 
    FROM CategoryHierarchy
    ORDER BY FullPath;
END;
GO
/****** Object:  StoredProcedure [dbo].[IdListesineGoreSıralama]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[IdListesineGoreSıralama]
	@CategoryIdList TestTypeTable READONLY
AS
BEGIN
	WITH KATEGORIHIYERARSISI AS
	(
		SELECT
			c.CategoryID,
			c.CategoryName,
			cr.ParentCategoryID,
			CAST(c.CategoryName AS NVARCHAR(MAX)) AS TamDizin,
			0 AS SEVIYE
		FROM Categories c
		LEFT JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
		WHERE c.CategoryID IN (SELECT CategoryID FROM @CategoryIdList)


		UNION ALL

		SELECT
				c.CategoryID,
				c.CategoryName,
				cr.ParentCategoryID,
				CAST(kh.TamDizin + ' -> ' + c.CategoryName AS NVARCHAR(MAX)) AS TamDizin,
				kh.TamDizin+1	
			FROM Categories c
			INNER JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
			INNER JOIN KATEGORIHIYERARSISI kh ON cr.ParentCategoryID = kh.CategoryID
	)

	SELECT * FROM KATEGORIHIYERARSISI
	ORDER BY TamDizin
END;

GO
/****** Object:  StoredProcedure [dbo].[TUMUNULISTELE]    Script Date: 2024-08-12 10:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TUMUNULISTELE]
AS
BEGIN
    WITH CategoryHierarchy AS
    (
        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            0 AS Level                                        
        FROM Categories c
        LEFT JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID

        UNION ALL

        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(ch.FullPath + ' -> ' + c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            ch.Level + 1                                       
        FROM Categories c
        INNER JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        INNER JOIN CategoryHierarchy ch ON cr.ParentCategoryID = ch.CategoryID
    )
    SELECT * FROM CategoryHierarchy
    ORDER BY FullPath
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[STRINGIDLISTESIYLEGETIRME]    Script Date: 2024-08-12 10:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STRINGIDLISTESIYLEGETIRME]
   @CategoryIDList NVARCHAR(MAX),
    @Level INT
AS
BEGIN
    ;WITH CategoryHierarchy AS
    (
        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(c.CategoryName AS NVARCHAR(MAX)) AS FullPath, 
            0 AS Level
        FROM Categories c
        LEFT JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        WHERE c.CategoryID IN (SELECT value FROM STRING_SPLIT(@CategoryIDList, ','))

        UNION ALL

        SELECT 
            c.CategoryID,
            c.CategoryName,
            cr.ParentCategoryID,
            CAST(ch.FullPath + ' -> ' + c.CategoryName AS NVARCHAR(MAX)) AS FullPath,
            ch.Level + 1
        FROM Categories c
        INNER JOIN CategoryRelations cr ON c.CategoryID = cr.ChildCategoryID
        INNER JOIN CategoryHierarchy ch ON cr.ParentCategoryID = ch.CategoryID
        WHERE ch.Level < @Level - 1
    )
    SELECT 
        CategoryID,
        CategoryName,
        ParentCategoryID,
        FullPath
    FROM CategoryHierarchy
    WHERE Level < @Level
    ORDER BY FullPath;
END;


