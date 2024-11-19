-- Insert categories Head = Men , Parent = Clothing
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Clothing' 
-- and ParentId=87)
and ParentId in (Select Id from Categories where Name='Men')
)

--select  * from Categories where id in (select id from Categories where Name= 'Clothing' and ParentId=87)

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Shirts',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'T-shirts',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Polos',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Pants',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Shorts',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Hoodies & Jackets & Coats',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Blazers & Suits',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Underwear & Loungewear',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Socks',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Swimwear',1,1,GETDATE())

