/*
USER_TAKEHOME = Users
TRANSACTION_TAKEHOME = Transactions
PRODUCTS_TAKEHOME = Products

What are the top 5 brands by receipts scanned among users 21 and over? */

Select p.BRANDS, count(distinct t.RECEIPT_ID) as Receipts_scanned
From Users u
Inner Join Transactions t on u.ID=t.USER_ID
Inner Join Products p on t.BARCODE=p.BARCODE
Group by p.BRANDS
Having datediff(day, cast(BIRTH_DATE as date), current_date()) >= (21*365)
Order by 2 desc
Limit 5

/*
What are the top 5 brands by sales among users that have had their account for at least six months? */

Select p.BRANDS, sum(t.FINAL_SALE) as Quantity_sold_per_brand
From Users u
Inner Join Transactions t on u.ID=t.USER_ID
Inner Join Products p on t.BARCODE=p.BARCODE
Group by p.BRANDS
Having datediff(month, cast(u.CREATED_DATE as date), current_date()) >= 6
Order by 2 desc
Limit 5

/*
Which is the leading brand in the Dips & Salsa category?
For this question I am assuming that by "leading brand" you mean the brand that's selling most and that FINAL_SALE is the best indicator for whether a brand is leading or not.
I thought about using FINAL_QUANTITY as an indicator but concluded FINAL_SALE was better because you can sum up the value of all the goods sold. */

Select p.BRANDS, sum(t.FINAL_SALE) as Revenue_per_brand
From  Transactions t
Inner Join Products p on t.BARCODE=p.BARCODE
Where p.CATEGORY_2 = "Dips & Salsa"
Group by p.BRANDS
Order by 2 desc
Limit 1
