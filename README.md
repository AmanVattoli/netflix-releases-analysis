# Netflix Releases Analysis

This project focuses on analyzing the Netflix shows and movies dataset to understand various trends and patterns in the content available on the platform.

[View the interactive Tableau dashboard here](https://public.tableau.com/shared/NNHGQMCGD?:display_count=n&:origin=viz_share_link)

## Steps Taken

### Data Collection
- **Objective**: To analyze Netflix's catalog of shows and movies.
- **Data Source**: Downloaded dataset containing information about Netflix shows and movies.
- **File Used**: `netflix_titles.csv`

### Data Preprocessing
- **Loading Data**: Loaded the dataset into a pandas DataFrame.
- **Data Cleaning**:
  - Removed unnecessary columns.
  - Dropped rows with missing values in the 'director', 'cast', 'country', and 'date_added' columns.
  - Converted the 'date_added' column to datetime format.
  - Dropped the 'description' column.
  - Saved the cleaned dataset to a new CSV file named `cleaned_netflix_titles.csv`.

### Data Analysis
- **SQL Views Creation**: Created SQL views to analyze various aspects of the data:
  - Popular Genres
  - Number of Releases Over Time (2015-2021)
  - Number of Releases In Each Country

### Data Visualization
- **Tool Used**: Visualized the results using Tableau based on the created views.
