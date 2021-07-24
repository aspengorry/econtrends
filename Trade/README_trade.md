# Notes on trade scripts/data

## Goods and Services Trade

- Data released as Exhibit 1 here: https://www.census.gov/foreign-trade/Press-Release/current_press_release/index.html

## Real Trade

- Data released in 2 separate files (imports and exports), located here under Chained 2012 Dollars: https://www.census.gov/foreign-trade/statistics/historical/index.html

## USA Trade Online (disaggregated trade)

- Harmonized System (HS) District-level data obtained from USA Trade Online system, found here: https://usatrade.census.gov/data/Perspective60/Browse/BrowseTables.aspx
- Want data from 2010 to most recent release
- Must create an account to access
- Must create separate reports for imports and exports
- Must use the in-house database system to wrangle the data into a useable format -- tutorial for how I did this included below
- In addition to the instructions below, there are Help PDFs available in 'Tutorials' under the Help dropdown in the upper left corner of the website

### USA Trade Online Instructions
*This is how I generated the data used in trade_disaggregated.R. If you find a better way, feel free to employ that -- just remember to modify the R code to account for your changes.*

**For exports:**

- Click on Harmonized System (HS) District-level Data -- Exports
- Make the following selections for report contents:
  - Measures: trade value
  - Commodity: All Commodities
  - Country: World Total + all members of the 2nd level (to select this, use the 2nd green check mark along the top dashboard, underneath 'Select/Clear members by level')
  - Domestic/Foreign: Total Exports
  - District: All Districts
- Now, click on the Time dimension, and navigate to the 'Time series' tab
  - Here, click 'Create new time series set'
  - Set periodicity to 'Monthly'
  - Unselect 'Show in reverse order'
  - Keep 'most recent' as ending period
  - Enter into 'Number of periods in series' the relevant figure -- this will be a number of months that you would like to pull data back to. Since we want data 2010-most recent month, will need to do a quick calculation to determine how many months you want to enter here. For example, for data starting in May 2021, I entered '137' here, and so I got a dataset extending from May 2021 back to January 2010.
  - Once done, select 'Create time series'
    - Note: if you've messed up (which you will be able to tell once you view the report), you can easily nagivate back to the Time dimension and click on the 'Time series set 1' (or whatever name you may have named it) to edit your selections
- With the time series set created, now navigate to 'Report' which can be found along the top of the dashboard
- Now, we would like to rearrange this messy report into a panel format we can work with in R easily
  - Drag Time and Country dimensions to the lefthand side until an arrow pointing left appears, then release. This will add Time and Country as row elements (making the data a panel)
  - Drag 'Measure (trade value)' from the side to the top, making it a column element
  - Drag everything else (District, Commodity, Domestic/Foreign) to the bar along the top that removes those dimensions from the report
  - The end result should be a 3 column panel that tracks each Country's trade value across the period Jan 2010-most recent month
- Downloading: click the green arrow along the top
  - Download format: comma-delimited (.csv) file
  - Data format: Multi-dimensional
  - Hit 'OK' then open in Excel
  - 'Save As' an Excel Workbook, saving to the /data folder in the GitHub repository (wherever it lives locally on your computer)
  
**For imports:**

- Click on Harmonized System (HS) District-level Data -- Imports
- Make the following selections for report contents:
  - Measures: Customs Value (Gen) ($US)
  - Commodity: All Commodities
  - Country: World Total + all members of the 2nd level (to select this, use the 2nd green check mark along the top dashboard, underneath 'Select/Clear members by level')
  - Country subcode: All Country Subcodes
  - District: All Districts
  - Rate Provision: All Rate Provisions
- Now, click on the Time dimension, and navigate to the 'Time series' tab
  - Here, click 'Create new time series set'
  - Set periodicity to 'Monthly'
  - Unselect 'Show in reverse order'
  - Keep 'most recent' as ending period
  - Enter into 'Number of periods in series' the relevant figure -- this will be a number of months that you would like to pull data back to. Since we want data 2010-most recent month, will need to do a quick calculation to determine how many months you want to enter here. For example, for data starting in May 2021, I entered '137' here, and so I got a dataset extending from May 2021 back to January 2010.
  - Once done, select 'Create time series'
    - Note: if you've messed up (which you will be able to tell once you view the report), you can easily nagivate back to the Time dimension and click on the 'Time series set 1' (or whatever name you may have named it) to edit your selections
- With the time series set created, now navigate to 'Report' which can be found along the top of the dashboard
- Now, we would like to rearrange this messy report into a panel format we can work with in R easily
  - Drag Time and Country dimensions to the lefthand side until an arrow pointing left appears, then release. This will add Time and Country as row elements (making the data a panel)
  - Drag 'Measure (Customs Value)' from the side to the top, making it a column element
  - Drag everything else (District, Commodity, Country Subcode, Rate Provision) to the bar along the top that removes those dimensions from the report
  - The end result should be a 3 column panel that tracks each Country's trade value across the period Jan 2010-most recent month
- Downloading: click the green arrow along the top
  - Download format: comma-delimited (.csv) file
  - Data format: Multi-dimensional
  - Hit 'OK' then open in Excel
  - 'Save As' an Excel Workbook, saving to the /data folder in the GitHub repository (wherever it lives locally on your computer)

Note: once you have saved the file to econtrends/data, you will want to commit this change and then push it to the repository