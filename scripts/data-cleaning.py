import pandas as pd

# Load the dataset
file_path = 'C:/Users/amans/Downloads/netflix_titles.csv'
df = pd.read_csv(file_path, encoding='latin1')

# Remove unnecessary columns
df = df.loc[:, ~df.columns.str.contains('^Unnamed')]

# Drop rows with missing values
df.dropna(subset=['director', 'cast', 'country', 'date_added'], inplace=True)

# Convert the 'date_added' column to datetime format
df['date_added'] = pd.to_datetime(df['date_added'], errors='coerce')

# Drop the 'description' column
df.drop(columns=['description'], inplace=True)

# Save the cleaned dataset to a new CSV file
cleaned_file_path = 'C:/Users/amans/Downloads/cleaned_netflix_titles.csv'
df.to_csv(cleaned_file_path, index=False)

# Display the cleaned dataset
print(df.head())
