## Are there any data quality issues present?
 Yes there are multiple issues present in each table, these are listed here:
### Missing Data:
  - Products table has empty rows in all its columns; column CATEGORY_4 is 92% empty (Python code lines 19 and 75)
  - Transactions table has empty rows in the BARCODE column and rows with just a space in the FINAL_SALE column (Python code lines 21 and 27)
  - Users table has empty rows in the BIRTH_DATE, STATE, LANGUAGE, and GENDER columns (Python code line 23)
### General Quality:
  - FINAL_QUANTITY column in the Transactions table has a large number of entries with a "zero" or non-integer numbers; 
    also the data type for all its values is set to string despite being numbers (Python code lines 7, 31 and 33)
  - FINAL_SALE column in the Transactions table contains a large number of entries with just a space; also the data type for all its values is set to      string (Python code line 27)
  - All timestamp data in any of the three tables has a "Z" at the end; also the data type for all its values is set to string (Python code lines 7        and 82)
  - GENDER column in the Users table has different unique entries for similar things. For example there's "non-binary" and "Non-Binary", 
    and "prefer_not_to_say" and "Prefer not to say" (Python code line 17)
  - In the Transactions table, the SCAN_DATE will sometimes be one day ahead of the PURCHASE_DATE (Python code line 7)

## Are there any fields that are challenging to understand?
- The FINAL_QUANTITY column in the Transactions table confuses me because in some rows it says "zero" and I am not sure if that's somehow correct or a data error. Also it has non-integer values which I'm not sure if they're referring to the weight of produce being bought or something else.
- Not sure if the SCAN_DATE column is referring to the date when the product was scanned into the store or when it was scanned to be purchased
