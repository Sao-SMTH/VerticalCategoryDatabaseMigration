Select *
from Categories
where ParentId is null;

Select *
from Categories
Where Id in 
(Select Id
from Categories
where ParentId is null);
--Then insert women head category
-- Insert the new category and retrieve its ID
DECLARE @InsertedId INT;

INSERT INTO [Categories]
    ([Name], [Published], [DisplayOrder], [CreationTime])
VALUES
    ('Women', 1, 1, GETDATE());

SET @InsertedId = SCOPE_IDENTITY();

-- Update existing categories to set their ParentId to the inserted ID
UPDATE [Categories]
SET ParentId = @InsertedId
WHERE Id IN (
    SELECT Id
    FROM [Categories]
    WHERE ParentId IS NULL
) and Id not in (Select Id
    from Categories
    where Name='Women');

INSERT INTO [Categories]
    ([Name],[Published],[DisplayOrder],[CreationTime])
VALUES('Kids', 1, 1, GETDATE());

INSERT INTO [Categories]
    ([Name],[Published],[DisplayOrder],[CreationTime])
VALUES('Men', 1, 1, GETDATE());

-- Insert Parent categories Head = Kidswear 
DECLARE @HeadCatID AS INT;

SELECT @HeadCatID = ID
FROM Categories
WHERE Name = 'Kids';

--select  * from Categories where id in (select id from Categories where Name= 'Kidswear')

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Baby (<3Y)', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Boys (>3Y)', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Girls (>3Y)', 1, 1, GETDATE())

Select *
from Categories
where ParentId in 
(Select Id
from Categories
where Name='Kids');

--------------------
-- Insert categories Head = Kidswear , Parent = Baby (<3Y)
declare @CatID as int
select @catId = id
from Categories
where id in (select id
from Categories
where Name= 'Baby (<3Y)'
    -- and ParentId=89
    and ParentId in (Select Id
    from Categories
    where Name='Kids')
)

--select  * from Categories where id in (select id from Categories where Name= 'Baby (<3Y)' and ParentId=89)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Tops', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Bottoms', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'One-piece', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Accesories', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Swim', 1, 1, GETDATE())
-------------------------------------
-- Insert categories Head = Kidswear , Parent = Boys (>3Y)
declare @CatIDBoys as int
select @CatIDBoys = id
from Categories
where id in (select id
from Categories
where Name= 'Boys (>3Y)'
    -- and ParentId=89)
    and ParentId in (Select Id
    from Categories
    where Name='Kids')
)

--select  * from Categories where id in (select id from Categories where Name= 'Boys (>3Y)' and ParentId=89)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBoys, 'Tops', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBoys, 'Bottoms', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBoys, 'One-piece', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBoys, 'Accesories', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBoys, 'Swim', 1, 1, GETDATE())
-------------------------------------
-- Insert categories Head = Kidswear , Parent = Girls (>3Y)
declare @CatIDGirl as int
select @CatIDGirl = id
from Categories
where id in (select id
from Categories
where Name= 'Girls (>3Y)'
    -- and ParentId=89)
    and ParentId in (Select Id
    from Categories
    where Name='Kids')
)

--select  * from Categories where id in (select id from Categories where Name= 'Girls (>3Y)' and ParentId=89)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDGirl, 'Tops', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDGirl, 'Bottoms', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDGirl, 'One-piece', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDGirl, 'Accesories', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDGirl, 'Swim', 1, 1, GETDATE())







