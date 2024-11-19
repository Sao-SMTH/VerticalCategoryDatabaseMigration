-- Insert categories Head = Men , Parent = Bags
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Bags' and 
-- ParentId=87)
and ParentId in (Select Id from Categories where Name='Men')
)

--select  * from Categories where id in (select id from Categories where Name= 'Bags' and ParentId=87)

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Backpacks',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Luggage',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Wallets',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Crossbody Bags',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Briefcases',1,1,GETDATE())

