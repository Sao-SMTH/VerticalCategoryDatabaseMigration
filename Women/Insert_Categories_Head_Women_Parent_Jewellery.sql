-- Insert categories Head = Women , Parent = Jewellery
declare @CatID as int
select  @catId = id from Categories where id in (select id from Categories where Name= 'Jewellery' 
-- and ParentId=88)
and ParentId in (Select Id from Categories where Name='Women')
)


--select  * from Categories where id in (select id from Categories where Name= 'Jewellery' and ParentId=88)

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Bracelets',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Brooches Badges and Pins',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Cufflinks',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Earrings and Earcuffs',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Keyrings',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Necklaces',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Pendants and Chains',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Hair Accessories',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@catId, 'Rings',1,1,GETDATE())
