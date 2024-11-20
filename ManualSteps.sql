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

-----------Men-------------

-- Insert Parent categories Head = Kidswear 
declare @HeadCatIDMen as int
select @HeadCatIDMen = id
from Categories
where id in (select id
from Categories
where Name= 'Men')


INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatIDMen, 'Accessories', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatIDMen, 'Bags', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatIDMen, 'Clothing', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatIDMen, 'Shoes', 1, 1, GETDATE())


-- Insert categories Head = Men , Parent = Accessories
declare @CatIDMenAccessories as int
select @CatIDMenAccessories = id
from Categories
where id in (select id
from Categories
where Name= 'Accessories'
    -- ParentId=87)
    and ParentId in (Select Id
    from Categories
    where Name='Men')
)

--select  * from Categories where id in (select id from Categories where Name= 'Accessories' and ParentId=87)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Belts', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Eyewear', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Gloves', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Hats and Caps', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Scarves', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Suspenders', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Jewellery', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDMenAccessories, 'Watches', 1, 1, GETDATE())

-- Insert categories Head = Men , Parent = Bags
declare @CatIDBags as int
select @CatIDBags = id
from Categories
where id in (select id
from Categories
where Name= 'Bags'
    -- ParentId=87)
    and ParentId in (Select Id
    from Categories
    where Name='Men')
)

--select  * from Categories where id in (select id from Categories where Name= 'Bags' and ParentId=87)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBags, 'Backpacks', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBags, 'Luggage', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBags, 'Wallets', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBags, 'Crossbody Bags', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBags, 'Briefcases', 1, 1, GETDATE())


-- Insert categories Head = Men , Parent = Clothing
declare @Clothing as int
select @Clothing = id
from Categories
where id in (select id
from Categories
where Name= 'Clothing'
    -- and ParentId=87)
    and ParentId in (Select Id
    from Categories
    where Name='Men')
)

--select  * from Categories where id in (select id from Categories where Name= 'Clothing' and ParentId=87)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Shirts', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'T-shirts', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Polos', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Pants', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Shorts', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Hoodies & Jackets & Coats', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Blazers & Suits', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Underwear & Loungewear', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Socks', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@Clothing, 'Swimwear', 1, 1, GETDATE())


-- Insert categories Head = Men , Parent = Bags
declare @CatIDBagsMen as int
select @CatIDBagsMen = id
from Categories
where id in (select id
from Categories
where Name= 'Shoes'
    -- and ParentId=87)
    and ParentId in (Select Id
    from Categories
    where Name='Men')
)
--select  * from Categories where id in (select id from Categories where Name= 'Shoes' and ParentId=87)

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Sport shoes', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Formal Shoes', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Loafers & Boat Shoes', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Sneakers', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Sandals & Flipflops', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Ski & Snow Boots', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@CatIDBagsMen, 'Desert & Hiking Boots', 1, 1, GETDATE())













