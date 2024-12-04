Update Categories 
set VirtualPath='https://smthgoodcategory.s3.ap-southeast-1.amazonaws.com/kids.webp',
VirtualPathThumbnail ='https://smthgoodcategory.s3.ap-southeast-1.amazonaws.com/kids.webp'
where Name='Kidswear';

Update Categories 
set VirtualPath='https://smthgoodcategory.s3.ap-southeast-1.amazonaws.com/lifestyle.webp',
VirtualPathThumbnail='https://smthgoodcategory.s3.ap-southeast-1.amazonaws.com/lifestyle.webp' 
where Name='LifeStyle';

Update Categories 
set VirtualPath='https://smthgoodcategory.s3.ap-southeast-1.amazonaws.com/women.webp',
VirtualPathThumbnail='https://smthgoodcategory.s3.ap-southeast-1.amazonaws.com/women.webp' 
where Name='Women';



Update Categories 
set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/dev-smthgoodco.com/kids/newborn-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/dev-smthgoodco.com/kids/newborn-landscape.webp' 
where Name='Baby (<3Y)';

Update Categories 
set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/dev-smthgoodco.com/kids/shop-boys-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/dev-smthgoodco.com/kids/shop-boys-landscape.webp' 
where Name='Boys (>3Y)';

Update Categories 
set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/dev-smthgoodco.com/kids/shop-girls-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/dev-smthgoodco.com/kids/shop-girls-landscape.webp' 
where Name='Girls (>3Y)';

UPDATE Categories Set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/newborn-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/newborn-landscape.webp'
where ParentId in (
   Select Id
    from Categories
    where ParentId in (
        Select Id
    from Categories
    where Name='Kidswear') 
) and Name='Tops';

UPDATE Categories Set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/shop-boys-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/shop-boys-landscape.webp'
where ParentId in (
   Select Id
    from Categories
    where ParentId in (
        Select Id
    from Categories
    where Name='Kidswear') 
) and Name='Bottoms';

UPDATE Categories Set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/shop-girls-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/shop-girls-landscape.webp'
where ParentId in (
   Select Id
    from Categories
    where ParentId in (
        Select Id
    from Categories
    where Name='Kidswear') 
) and Name='Dresses & One-piece';

UPDATE Categories Set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/kids-accesories-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/kids-accesories-landscape.webp'
where ParentId in (
   Select Id
    from Categories
    where ParentId in (
        Select Id
    from Categories
    where Name='Kidswear') 
) and Name='Accessories';

UPDATE Categories Set VirtualPath='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/newborn-landscape.webp',
VirtualPathThumbnail='https://s3.ap-southeast-1.amazonaws.com/smthgoodcategory/kids/newborn-landscape.webp'
where ParentId in (
   Select Id
    from Categories
    where ParentId in (
        Select Id
    from Categories
    where Name='Kidswear') 
) and Name='Swim';
