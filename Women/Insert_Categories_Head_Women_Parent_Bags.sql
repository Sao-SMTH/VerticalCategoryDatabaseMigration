-- Insert categories Head = Women , Parent = Bags
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Bags' 
-- and ParentId=88)
and ParentId in (Select Id from Categories where Name='Women')
)


--select  * from Categories where id in (select id from Categories where Name= 'Bags' and ParentId=88)

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Bag Straps',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Backpacks',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Bum Bags',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Luggage',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Purses and Wallets',1,1,GETDATE())
