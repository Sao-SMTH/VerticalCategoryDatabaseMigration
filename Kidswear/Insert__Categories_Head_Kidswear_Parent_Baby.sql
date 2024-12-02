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
VALUES(@catId, 'Dresses & One-piece', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Accessories', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Swim', 1, 1, GETDATE())

