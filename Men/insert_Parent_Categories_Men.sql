-- Insert Parent categories Head = Kidswear 
declare @HeadCatID as int
select @HeadCatID = id
from Categories
where id in (select id
from Categories
where Name= 'Men')

--select  * from Categories where id in (select id from Categories where Name= 'Kidswear')

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Accessories', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Bags', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Clothing', 1, 1, GETDATE())

INSERT INTO [Categories]
    ([ParentId],[Name],[Published],[DisplayOrder],[CreationTime])
VALUES(@HeadCatID, 'Shoes', 1, 1, GETDATE())

