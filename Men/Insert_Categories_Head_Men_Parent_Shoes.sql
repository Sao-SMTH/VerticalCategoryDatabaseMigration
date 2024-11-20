-- Insert categories Head = Men , Parent = Bags
declare @CatID as int
select @catId = id
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
VALUES(@catId, 'Sport shoes', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Formal Shoes', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Loafers & Boat Shoes', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Sneakers', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Sandals & Flipflops', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Ski & Snow Boots', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Desert & Hiking Boots', 1, 1, GETDATE())

