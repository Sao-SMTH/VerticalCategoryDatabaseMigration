-- Insert Parent categories Head = Kidswear 
declare @HeadCatID as int
select  @HeadCatID = id from Categories where id in (select id from Categories where Name= 'Kidswear')

--select  * from Categories where id in (select id from Categories where Name= 'Kidswear')

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Baby (<3Y)',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Boys (>3Y)',1,1,GETDATE())

INSERT INTO [Categories]([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Girls (>3Y)',1,1,GETDATE())