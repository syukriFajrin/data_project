#  Sportify Dataset Analysis Project

## Overview

This project aims to analyze an audio dataset containing information about sound tracks, including title, duration, and artist. The goal of this analysis is to explore duration patterns, artist distribution, and content characteristics.

---

##  Objectives

- Analyze track duration distribution  
- Identify the longest and shortest tracks  
- Explore artist frequency  
- Extract insights from track names  
- Perform basic descriptive statistical analysis  

---

##  Dataset Information

The dataset contains the following columns:

| Column Name         | Description |
|---------------------|------------|
| D                   | Unique track ID |
| Name                | Track title |
| Duration (Minutes)  | Duration in minutes |
| Artists             | Artist name |

### Example Data

| D | Name | Duration (Minutes) | Artists |
|---|------|-------------------|----------|
| 026O2YP2wRl9h3Ht9ClZST | Steady Rain in a Forest with Light Background Bird Chirping (Storm Ambience Sound Effects) | 100 | Nature Sounds |

---

##  Exploratory Data Analysis (EDA)

The following analyses were performed:

- Checking missing values  
- Duration statistics (mean, min, max)  
- Distribution of track durations  
- Artist frequency analysis  
- Title keyword analysis  

---

##  Data Preprocessing

- Renamed columns for consistency  
- Converted duration to numeric format  
- Handled missing values (if any)  
- Cleaned text data in the `Name` column  

---

##  Tech Stack

- Python  
- Pandas  
- NumPy  
- Matplotlib  

---

##  Key Insights

- Some tracks have unusually long durations (e.g., ambient sound tracks)  
- Nature/ambient artists tend to produce longer audio tracks  
- Track names often describe sound environments  

---



##  Future Improvements

- Build audio category classifier  
- Perform NLP analysis on track titles  
- Create dashboard visualization  
- Cluster tracks based on duration patterns  

---

##  Author

Syukri Fajrin  
Data Analyst | Machine Learning Enthusiast  

---
