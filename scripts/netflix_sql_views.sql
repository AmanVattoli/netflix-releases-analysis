-- Create a view to show the distribution of shows by type (Movie or TV Show)
CREATE VIEW DistributionOfShowsByType AS
SELECT 
    type, 
    COUNT(*) AS count, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflix.dbo.netflix_titles)) AS percentage
FROM 
    netflix.dbo.netflix_titles
GROUP BY 
    type;
GO

-- Create a view to show the number of shows added over time
-- Groups data by year and month of the date when the show was added to Netflix
CREATE VIEW NumberOfShowsAddedOverTime AS
SELECT 
    CAST(date_added AS DATE) AS added_date,
    YEAR(CAST(date_added AS DATE)) AS added_year,
    MONTH(CAST(date_added AS DATE)) AS added_month,
    COUNT(*) AS show_count
FROM 
    netflix.dbo.netflix_titles
WHERE 
    date_added IS NOT NULL
GROUP BY 
    CAST(date_added AS DATE), 
    YEAR(CAST(date_added AS DATE)), 
    MONTH(CAST(date_added AS DATE));
GO

-- Create a view to show the top countries by the number of shows produced
CREATE VIEW TopCountriesByNumberOfShows AS
SELECT 
    country, 
    COUNT(*) AS show_count
FROM 
    netflix.dbo.netflix_titles
WHERE 
    country IS NOT NULL
GROUP BY 
    country;
GO

-- Create a view to show the popular genres
-- Splits the 'listed_in' column to handle multiple genres per show
CREATE VIEW PopularGenres AS
WITH GenreSplit AS (
    SELECT 
        show_id,
        TRIM(value) AS genre
    FROM 
        netflix.dbo.netflix_titles
        CROSS APPLY STRING_SPLIT(listed_in, ',')
)
SELECT 
    genre, 
    COUNT(*) AS show_count
FROM 
    GenreSplit
GROUP BY 
    genre;
GO

-- Select data from the 'DistributionOfShowsByType' view
SELECT * FROM DistributionOfShowsByType;

-- Select data from the 'NumberOfShowsAddedOverTime' view
SELECT * 
FROM NumberOfShowsAddedOverTime
ORDER BY added_year, added_month;

-- Select data from the 'TopCountriesByNumberOfShows' view
SELECT * 
FROM TopCountriesByNumberOfShows
ORDER BY show_count DESC;

-- Select data from the 'PopularGenres' view
SELECT * 
FROM PopularGenres
ORDER BY show_count DESC;


