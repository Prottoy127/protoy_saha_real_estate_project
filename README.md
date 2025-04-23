# New York Real Estate Housing Prices

# A. Problem Context

Building a Data Warehouse for New York State housing prices. Helping buyers with home purchase decision analysis. 
Adiitionally finding out cost of living, housing price, crime, and school rating.

# B. Requirements
## 1. Business Requirements
* Predict Real Estate Investment ROI: Use the NYC data to predict where it would be the best to invest in to get the most out of the investment.
* Predict Housing Prices: Create a model to predict property prices based on property related attributes such as zip code, square footage, etc.
* Find Market Trends: Analyze trends in specific regions that can help drive real estate investment.

## 2. Functional Requirements
* Data Ingestion & Cleaning: Importing real estate data, cleaning missing values or NULL values, and standardizing the various data fields.
* EDA: Begin with the summary statistics, histograms, and visual trends in housing sales.
* ROI Prediction Model: Create and implement a machine learning algorithm to predict real estate investment ROI.
* Trend Analysis: Create reports on top performing zip codes, cities, and municipalities, and type of property in demand.
* Data Visualization: Build dashboards to allow users to interact with the data to their liking and task requirements to explore trends or filter the data.

## 3. Data Requirements
* NYC Real Estate Data
* Source: 
* Connection string via Azure cloud storage.
* Housing sale price and listing data
* Crime data. Optional
* School rating data. Optional
* Cost of living data MIT Living Wages

# C. Architecture
## 1. Information Architecture
* The data is streamed via a connection string from Azure cloud storage to my Azure cloud storage. 
* My initial cloud storage will act as temporary storage. Thereafter, it will go through ELT process and put into the data warehouse. 
* From there, it will go to the BI tool for data visualization.
    * Information Architecture Diagram

## 2. Data Architecture
* The data arrives from the Azure cloud storage via a connection string to my Azure cloud storage. 
* A 2nd source is used as a data dictionary to provide metadata for the data. Later the data will go through a data integration process. 
* The data will be stored in a top-down process. Where all of the data will be kept in a data warehouse and specific data as required for the business requirements will be stored in data marts.

## 3. Technical Architecture
* Python for data analysis
* Azure for cloud computing
* DbSchema to create the data modeling
* Tableau for data visiualization

## 4. Product Architecture
* Provide an overview of the product's overall structure.
* Include any major components and how they interact.

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
* Metadata Management
    * Data Dictionary
    * Mapping Sources and Target Systems
    * List of all functions
        * Function 1
        * Function 2
        * Function 3
    * ETL Extract Load Transform
    * ELT Extract Transform Load
    * Tools

# F. Visualization
#### Provide details of the visualizations created for the project.
* Include charts, graphs, and any other visual representation of the data.
    * Visualization Example
* Mention any libraries or tools used for visualization (e.g., Matplotlib, Power BI).
# G. Insights
#### Highlight any key insights gained from the project.
* Provide an overview of what was learned or discovered through data analysis.
* Example:
    * High correlation between customer satisfaction and response time.
    * Significant opportunity for cost reduction in supply chain operations.
# H. Conclusion
#### Summarize the outcomes of the project and any potential next steps.

* What was achieved?
* How can the results be used moving forward?
* Example:
    * The project successfully reduced costs by 20% through process automation.
    * Future work may include expanding the solution to new departments.

# I. References
* Provide a list of all references used in the project, formatted according to MLA style.
1. Author Last Name, First Name. Title of Book. Publisher, Year.
2. "Title of Article." Name of Journal, vol. 1, no. 1, Year, pp. 1-10.
3. Title of Website. Website Publisher, Year, URL.


 As the project proceeds, I will include more information in this readme.
