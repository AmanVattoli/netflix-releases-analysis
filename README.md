# Netflix Releases Analysis

This project focuses on analyzing the Netflix shows and movies dataset to understand various trends and patterns in the content available on the platform.

[View the interactive Tableau dashboard here](https://public.tableau.com/shared/48R8Q782X?:display_count=n&:origin=viz_share_link)

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
  - Popular genres
  - Number of releases over time
  - Number of releases in each country

### Data Visualization
- **Tool Used**: Visualized the results using Tableau based on the created views.

## Results

Below are the key visualizations and insights from the project.

### Dashboard

![Dashboard](https://github.com/user-attachments/assets/db58bdff-50e0-420c-a004-8a61356a8e6e)

**Findings**:
  - International Movies, Dramas and Comedies are among the top genres.
  - Significant increase in the number of shows and movies added from 2016 onwards.
  - The highest number of releases was in 2019.
  - The United States leads in content production
  - Countries like Canada, France, and Japan also contribute significantly to Netflix's catalog.
