-- Insert categories Head = Women , Parent = Accessories
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Accessories' 
-- and ParentId=88)
and ParentId in (Select Id from Categories where Name='Women')
)

--select  * from Categories where id in (select id from Categories where Name= 'Accessories' and ParentId=88)

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Belts',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Eyewear',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Gloves',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Hats and Caps',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Scarves',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Suspenders',1,1,GETDATE())
