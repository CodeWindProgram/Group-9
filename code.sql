 select * from sys.database_mirroring_endpoints
 GRANT CONNECT ON ENDPOINT::Mirroring TO [username]
  select * from sys.database_mirroring

SELECT 
   d.name  as [Mirrored database],
   mirroring_state_desc as [Mirrored database state],
   mirroring_role_desc as [Mirrored database role],
   mirroring_partner_instance as [Mirrored database instance],
   case(m.mirroring_witness_state_desc) when 'Unknown' then 'No Witness Server Configured'
      else m.mirroring_witness_name end as 'Witness Server'
FROM 
  sys.database_mirroring M inner join SYS.DATABASES d
  on m.database_id = d.database_id
WHERE mirroring_state_desc is not null 
ORDER BY d.name,mirroring_state_desc

 /Create demo table /
CREATE TABLE [Person](
	[BusinessEntityID] [int] NOT NULL,
	[PersonType] [nchar](2) NOT NULL,
	[NameStyle] [dbo].[NameStyle] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [dbo].[Name] NOT NULL,
	[MiddleName] [dbo].[Name] NULL,
	[LastName] [dbo].[Name] NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailPromotion] [int] NOT NULL
 CONSTRAINT [PK_Person_BusinessEntityID] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/Insert Data/

insert into person (BusinessEntityID,PersonType,NameStyle,Title,FirstName,MiddleName,LastName,Suffix,EmailPromotion)
select BusinessEntityID,PersonType,NameStyle,Title,FirstName,MiddleName,LastName,Suffix,EmailPromotion from Person.Person
Where Title is not null

/ BACKUP DATABASE & RESTORE DATABASE  /
USE [master]
BACKUP DATABASE [AdventureWorks2017] TO  DISK = N'\\DC.Local\Backup\AdventureWorks2017.bak' WITH  COMPRESSION,  STATS = 5
GO
USE [master]
BACKUP Log [AdventureWorks2017] TO  DISK = N'\\DC.Local\Backup\ Adv_Logbackup.trn' WITH  COMPRESSION,  STATS = 5
GO
USE [master]
RESTORE DATABASE [AdventureWorks2017] FROM  DISK = N'\\DC.Local\Backup\AdventureWorks2017.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5
GO
RESTORE LOG [AdventureWorks2017] FROM  DISK = N'\\DC.Local\Backups\Adv_Logbackup.trn' WITH  FILE = 1,  NORECOVERY,  NOUNLOAD,  STATS = 10
GO
