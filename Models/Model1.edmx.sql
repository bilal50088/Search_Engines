
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/22/2016 04:42:58
-- Generated from EDMX file: C:\Users\Bilal\Downloads\BilalEADProject\BilalEADProject\BilalEADProject\Models\Model1.edmx
-- --------------------------------------------------




-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Admins'
CREATE TABLE [dbo].[Admins] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Password] varchar(50)  NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] varchar(50)  NULL,
    [Password] varchar(50)  NULL,
    [Email] varchar(50)  NULL,
    [Address] varchar(50)  NULL,
    [Phoneno] int  NULL,
    [Cnic] int  NULL,
    [Ans1] varchar(50)  NULL,
    [Ans2] varchar(50)  NULL,
    [Ans3] varchar(50)  NULL
);
GO

-- Creating table 'Posts1'
CREATE TABLE [dbo].[Posts1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Model] varchar(50)  NULL,
    [Make] varchar(50)  NULL,
    [Year] int  NULL,
    [Engine] varchar(50)  NULL,
    [Registration] varchar(50)  NULL,
    [Price] int  NULL,
    [Location] nchar(10)  NULL,
    [Type] varchar(50)  NULL,
    [Status] varchar(50)  NULL,
    [CID] int  NULL
);
GO

-- Creating table 'Purchases'
CREATE TABLE [dbo].[Purchases] (
    [Id] int  NOT NULL,
    [PostID] int  NULL,
    [PurchaserID] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Admins'
ALTER TABLE [dbo].[Admins]
ADD CONSTRAINT [PK_Admins]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts1'
ALTER TABLE [dbo].[Posts1]
ADD CONSTRAINT [PK_Posts1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Purchases'
ALTER TABLE [dbo].[Purchases]
ADD CONSTRAINT [PK_Purchases]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PurchaserID] in table 'Purchases'
ALTER TABLE [dbo].[Purchases]
ADD CONSTRAINT [FK_Purchases_To_Customer]
    FOREIGN KEY ([PurchaserID])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Purchases_To_Customer'
CREATE INDEX [IX_FK_Purchases_To_Customer]
ON [dbo].[Purchases]
    ([PurchaserID]);
GO

-- Creating foreign key on [CID] in table 'Posts1'
ALTER TABLE [dbo].[Posts1]
ADD CONSTRAINT [FK_Posts_To_Customer]
    FOREIGN KEY ([CID])
    REFERENCES [dbo].[Posts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Posts_To_Customer'
CREATE INDEX [IX_FK_Posts_To_Customer]
ON [dbo].[Posts1]
    ([CID]);
GO

-- Creating foreign key on [PostID] in table 'Purchases'
ALTER TABLE [dbo].[Purchases]
ADD CONSTRAINT [FK_Purchases_To_Posts]
    FOREIGN KEY ([PostID])
    REFERENCES [dbo].[Posts1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Purchases_To_Posts'
CREATE INDEX [IX_FK_Purchases_To_Posts]
ON [dbo].[Purchases]
    ([PostID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------