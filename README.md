# January 2021 E-commerce Insights from Google Analytics 4

This repository contains the SQL script used to extract e-commerce data from the public dataset `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events`, as well as the Tableau dashboard created to visualize the data.

## Project Overview

The project analyzes e-commerce data from January 2021, providing insights into user behavior, session counts, and purchase metrics. The extracted data was visualized in Tableau Public, resulting in an interactive dashboard that allows users to explore various metrics and trends.

## Files in This Repository

- **SQL Script:**
  - `data_extraction.sql`: The SQL script used to query the Google Analytics 4 data for January 2021.
  
- **Dashboard Link:**
  - The Tableau dashboard can be accessed on Tableau Public: [Dashboard Link](https://public.tableau.com/app/profile/lesia.kremsenko/viz/GA_4_Januar_2021/Dashboard1).


## Dashboard Features

The Tableau dashboard offers the following features:

- **Metric Selection:** Users can switch between session count, user count, and purchase count, with the dashboard updating dynamically.
  
- **Map Visualization:** A global view highlighting the selected metric by country, along with a top 10 country table.
  
- **Event Funnel Bar Chart:** Displays the percentage breakdown of key user actions from session start to purchase.

- **Device Category Pie Chart:** Shows the distribution of metrics across different device categories (mobile, tablet, desktop).

- **KPI Section:** Provides quick access to key performance indicators like session count, user count, and conversion rates.

- **Interactive Calendar Filter:** Allows filtering data by date, with heatmap visualization for the selected metric.

## How to Use

1. **SQL Script:** Run the `data_extraction.sql` script in your Google BigQuery environment to extract the data.

2. **Data Visualization:** Use the extracted data to recreate the Tableau dashboard or explore the metrics using your own tools.

## License

This project is open-source and available under the MIT License.
