# New Jersey Real Estate Housing Prices

# A. Problem Context

Building a Data Warehouse for New Jersey State housing prices. Helping buyers with home purchase decision analysis. 
Adiitionally finding out cost of living, housing price, crime, and school rating.

# B. Requirements
## 1. Business Requirements
* Predict Real Estate Investment ROI: Use the NJ data to predict where it would be the best to invest in to get the most out of the investment.
* Identify Property Types: Identify property types with highest sale prices based on property related attributes such as zip code, square footage, etc.
* Find Market Trends: Analyze trends in specific regions that can help drive real estate investment.

## 2. Functional Requirements
* Data Ingestion & Cleaning: Importing real estate data, cleaning missing values or NULL values, and standardizing the various data fields.
* EDA: Begin with the summary statistics, histograms, and visual trends in housing sales.
* ROI Prediction Model: Create and implement a machine learning algorithm to predict real estate investment ROI.
* Trend Analysis: Create reports on top performing zip codes, cities, and municipalities, and type of property in demand.
* Data Visualization: Build dashboards to allow users to interact with the data to their liking and task requirements to explore trends or filter the data.

## 3. Data Requirements
* NJ Real Estate Data
* Source: 
* Connection string via Azure cloud storage.
* Housing sale price and listing data
* Crime data. Optional
* School rating data. Optional
* Cost of living data MIT Living Wages. Optional

# C. Architecture
## 1. Information Architecture
* The data is streamed via a connection string from Azure cloud storage to my Azure cloud storage. 
* My initial cloud storage will act as temporary storage. Thereafter, it went to my Snowflake datawarehouse.
* Then Dbt was used to complete the ELT process and the data was put into the datawarehouse. 
* From there, it will go to the Tableau tool for data visualization.
    * Information Architecture Diagram

## 2. Data Architecture
* The data arrives from the Azure cloud storage via a connection string to my Azure cloud storage. 
* A 2nd source is used as a data dictionary to provide metadata for the data. Later the data will go through a data integration process. 
* The data will be stored in a top-down process. Where all of the data will be kept in a data warehouse and specific data as required for the business requirements will be stored in data marts.

## 3. Technical Architecture
* Python for data extraction
* Azure for cloud computing
* Snowflake for datawarehousing
* DbSchema to create the data modeling
* Tableau for data visiualization

## 4. Product Architecture
* Provide an overview of the product's overall structure.
   * The Snowflake datawarehouse is a simple warehouse to house NJ real estate data.
* Include any major components and how they interact.
   * The major component of the project is how Tableau is connected to Snowflake and its efficient data streaming capabilities that make real-time analytics possible.

# D. Modeling
* The dimensional modeling consists of 7 tables. 
    * Facts: fact_price
        * Includes sale_id, sale_price, and other foreign keys from the dimension tables.
    * Dimension: dim_location, dim_buyer, dim_seller_name, dim_transaction_details, dim_date, dim_property.
        * dim_location: includes information related to the property's location such as the zip code.
        * dim_buyer: includes information related to the buyer.
        * dim_seller_name: includes information related to the seller.
        * dim_transaction_details: includes information related to the transaction such as the deed type.
        * dim_date: includes information related to the date of when the transaction took place.
        * dim_property: includes information related to the property such as number of beds.
# E. Methodology and Implementation
#### Describe the methodology used in the project and the steps followed during implementation.
* Outline the approach taken (e.g., Agile, Waterfall).
* Describe key phases, such as development, testing, deployment.
* Example:
    * Sprint 1: Setup and Data Collection
    * Sprint 2: Data Processing and Model Building
    * Spring 3: Tableau Data Visualization
* Metadata Management
    * Data Dictionary
    * Mapping Sources and Target Systems
    * List of all functions
        * Function 1
        * Function 2
        * Function 3
    * ELT Extract Load Transform
    * Tools: Dbt, Tableau, Snowflake, Azure

# F. Visualization
#### Provide details of the visualizations created for the project.
* Include charts, graphs, and any other visual representation of the data.
    * Visualization Example
    * Four different visualizations were created to understand trends and historical real estate trends in NJ.
       * Sale Price by Building Year Built
       * Total Sale Prices by County Heatmap
       * Total Sale Prices by County
       * Total Sale Prices by Property Type
* Mention any libraries or tools used for visualization (e.g., Matplotlib, Power BI).
*    None
# G. Insights
#### Highlight any key insights gained from the project.
* Provide an overview of what was learned or discovered through data analysis.
    * High correlation between colonial property type and sale prices in NJ.
    * Significant opportunity for real estate investment in key zipcodes yet to be explored.
# H. Conclusion
#### Summarize the outcomes of the project and any potential next steps.
* The project's goal was to explore real estate but not just be a mere data analyst. I hoped to learn how to interact with location data in a datawarehouse, I have done that. Additionally, I always wanted to work with real estate data and see trends and explore questions that I always stumble upon. For example, I always wondered if a certain property type or a specific zipcode would be more active in terms of sale prices. I was happy to find answer to those questions. Many zipcodes in NJ near NYC have high sale prices. Which makes sense as a lot of people work in the Manhattan and live in NJ.

* What was achieved?
* The project helped to ease stakeholder decision making based on clear visualizations.
* How can the results be used moving forward?
    * Future work may include expanding the solution to new areas such as income, school districts, zoning, etc.

# I. References
   ### NONE
* Provide a list of all references used in the project, formatted according to MLA style.
1. Author Last Name, First Name. Title of Book. Publisher, Year.
2. "Title of Article." Name of Journal, vol. 1, no. 1, Year, pp. 1-10.
3. Title of Website. Website Publisher, Year, URL.


 As the project proceeds, I will include more information in this readme.
