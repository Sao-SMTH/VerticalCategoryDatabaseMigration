-- Insert categories Head = Women , Parent = Clothing
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Clothing' 
-- and ParentId=88)
and ParentId in (Select Id from Categories where Name='Women')
)


INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Robes',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Dresses',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Jackets and Coats',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Loungewear & Nightwear',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Rompers & Jumpsuits',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Pants',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Skirts',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Tops',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Socks',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Intimate Wear',1,1,GETDATE())
