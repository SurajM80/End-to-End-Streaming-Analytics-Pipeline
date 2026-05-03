# 🎬 Streaming Trends ETL Pipeline & Analytics Dashboard

## 📌 Project Overview
This project is an end-to-end Data Engineering and Business Intelligence pipeline. It dynamically extracts live trending movie data from a public API, cleans and transforms the data using Python, loads it into a resilient MySQL database, and visualizes the insights through a premium, interactive Power BI dashboard.

## 🛠️ Tech Stack
* **Language:** Python (`requests`,`mysql-connector-python`,`pandas`)
* **Database:** MySQL
* **Data Source:** REST API (Trending Movies)
* **Business Intelligence:** Power BI


## ⚙️ Architecture & Pipeline Flow

### 1. Data Extraction (API to Python)
* Developed a Python script to hit a live API endpoint for daily trending movies.
* Parsed nested JSON responses to extract core metrics.

### 2. Transformation (Pandas)
* Flattened the JSON data into a structured Pandas DataFrame.
* Selected critical business features: `MOVIE_ID`, `TITLE`, `POPULARITY`, `RELEASE_DATE`, `VOTE_AVERAGE`, and `VOTE_COUNT`.
* Handled null values and enforced strict data typing for dates and floats.

### 3. Loading (MySQL Database)
* Engineered a MySQL database schema with `MOVIE_ID` as the Primary Key.
* Wrote an automated insertion script connecting Python to MySQL.
* **Resiliency Built-In:** Utilized `INSERT IGNORE` logic to handle daily pipeline runs, preventing primary key constraint crashes when encountering duplicate movies already in the database.

### 4. Visualization (Power BI)
* Connected Power BI directly to the MySQL backend.
* Designed a "Dark Mode" cinematic UI focusing on User Experience.
* **Key Visuals:**
  * **Executive KPIs:** Distinct tracking of total unique titles, average network rating, and total user engagement (vote count).
  * **Top 10 Rankings:** Horizontal bar charting for instant volume-based insights.
  * **Correlation Matrix:** A scatter plot analyzing the relationship between media "hype" (Popularity) and actual quality (Vote Average).
  * **Time Series Analysis:** Tracking the release volume lifecycle of currently trending content.

## 📈 Key Insights Discovered
* *("High popularity does not strictly guarantee high user ratings, as shown in the correlation matrix.")*
