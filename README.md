# Crowdfunding_ETL

This program creates an SQL database from 2 excel files with crowdfunding data.  Utilizes ETC (Extract, Transform, Load)

# Excel Files:
Resources/contact.xlsx
  - initial file with contacts to load into SQL database

Resources/crowdfunding.xlsx
  - initial file with crowdfunding data to load into SQL database

# Jupyter File:
ETL_Mini_Project_JPos_LDudley.ipynb
  - creates dataframe category
    - exports dataframe to file Resources/category.csv
    - columns:
      - category_id
      - category
  - creates dataframe subcategory
    - exports as Resources/subcategory.csv
    - columns:
      - subcategory_id
      - subcategory
  - creates dataframe campaign
    - exports as Resources/campaign.csv
    - columns:
      - cf_id
      - contact_id
      - company_name
      - description
      - goal
      - pledged
      - outcome
      - backers_count
      - country
      - currency
      - launched_date
      - end_date
      - category_id
      - subcagtegory_id
  - creates dataframe contacts
    - exports as Resources/contacts.csv
    - columns:
      - contact_id
      - first_name
      - last_name
      - email

# SQL Files:
Resources/crowdfunding_db_schema.sql
  - Code to initialize schema for 4 tables (shown above)

Resources/crowdfunding_db.sql
  - Code to query the 4 sequel tables (shown above)
