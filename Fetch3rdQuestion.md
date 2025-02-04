## Construct an email or slack message that is understandable to a product or business leader who is not familiar with your day-to-day work. Summarize the results of your investigation

Hi [Product or Business Leader],

I was analyzing the Users, Products, and Transactions datasets and found multiple quality issues with the data that I have detailed below:
Missing Data:
  - Products table has empty rows in all its columns; column CATEGORY_4 is 92% empty
  - Transactions table has empty rows in the BARCODE column and rows with just a space in the FINAL_SALE column
  - Users table has empty rows in the BIRTH_DATE, STATE, LANGUAGE, and GENDER columns
General Quality:
  - FINAL_QUANTITY column in the Transactions table has a large number of entries with a "zero" or non-integer numbers; also the data type for all its values is set to string
  - FINAL_SALE column in the Transactions table contains a large number of entries with just a space; also the data type for all its values is set to string
  - All timestamp data in any of the three tables has a Z at the end; also the data type for all its values is set to string
  - GENDER column in the Users table has different unique entries for similar things. For example there's "non-binary" and "Non-Binary", and "prefer_not_to_say" and "Prefer not to say"
  - In the Transactions table, the SCAN_DATE will sometimes be one day ahead of the PURCHASE_DATE

Also, I noticed an interesting trend with the data. As you can see in Tableau dashboard I've linked below, male customers tend to buy items from the "Snacks" and "Health & Wellness" categories 
while female customers buy from a much more varied selection of products. There were lots of empty rows I had to exclude in order to properly visualize this data so this analysis is incomplete.

In order to better work with this data I will need additional help cleaning it up. Maybe one or two other people to assist me. There is lots of missing data in all three tables and formatting 
errors throughout (as detailed in the bullet points above). Either, a cleaner pull of the data needs to be done or we would need to spend a day cleaning up the data to fill in or delete empty 
rows and make corrections to several columns.

Tableau Dashboard: https://public.tableau.com/views/FetchProject/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
