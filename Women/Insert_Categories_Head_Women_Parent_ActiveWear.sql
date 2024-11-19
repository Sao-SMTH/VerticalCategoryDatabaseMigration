-- Insert categories Head = Women , Parent = Activewear
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Activewear' 
-- and ParentId=88)
and ParentId in (Select Id from Categories where Name='Women')
)


--select  * from Categories where id in (select id from Categories where Name= 'Activewear' and ParentId=88)

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Activewear',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Sports Top',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Sports Bottoms',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Sports Outerwear',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Swim & Beachwear',1,1,GETDATE())