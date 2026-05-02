# Analyzing-the-Relationship-Between-Social-Media-Usage-and-Mental-Health-in-Young-People

## Overview

This project explores the relationship between social media usage and mental health indicators in young people. The analysis focuses on identifying patterns and potential correlations between time spent on social media and indicators such as anxiety and depression.

## Business Context

Understanding how digital behavior impacts mental health is increasingly relevant for educational institutions, organizations, and digital platforms. Insights from this analysis can support the development of strategies to improve student well-being and promote healthier digital habits.

## Objective

The objective of this project is to analyze whether higher levels of social media usage are associated with changes in mental health indicators.

Key questions:
- Is there a relationship between time spent on social media and anxiety levels?
- Are there thresholds where mental health indicators worsen?
- How does variability change across different usage groups?

## Raw data

The analysis is based on two independent datasets:

- Social media usage dataset  
- Mental health indicators dataset
  
## Clean data
```
│
├── 01_mental_health_usage_groups.csv
├── 02_usage_vs_anxiety.csv
├── 03_usage_vs_sleep.csv
├── 04_platform_mental_health.csv
├── 05_usage_groups_distribution.csv
```

These datasets include variables such as:
- Daily time spent on social media  
- Anxiety and depression scores  
- Demographic variables (where available)

## Data Approach

Due to the absence of a shared unique identifier, both datasets were analyzed separately. Insights were then compared at an aggregate level to identify consistent patterns.

## Methodology

The analysis was conducted using:

- Python (Pandas, Matplotlib / Seaborn)
- Exploratory Data Analysis (EDA)
- Grouping and segmentation (usage levels)
- Visualization of relationships between variables

## 📊 Key Visualizations

### Social Media Usage vs Anxiety
![Usage vs Anxiety](figures/usage_vs_anxiety.png)

### Mental Health by Usage Group
![Usage Groups](figures/usage_groups_boxplot.png)

### Distribution of Social Media Usage
![Usage Distribution](figures/usage_distribution.png)

## Key Insights

- Higher social media usage is associated with increased anxiety levels  
- Users with higher daily usage show greater variability in mental health indicators  
- Moderate usage groups tend to display more stable patterns  

## Conclusion

The analysis suggests a relationship between increased social media usage and negative mental health indicators. While causality cannot be established, the observed patterns highlight the importance of monitoring digital behavior in younger populations.

## 📌 Recommendations

- Encourage awareness of daily social media usage habits  
- Promote digital well-being initiatives in educational environments  
- Develop strategies to support students with high usage patterns  
- Explore interventions focused on balanced digital consumption  

## ▶️ How to Run
1. Clone the repository  
2. Open the notebook in Jupyter Notebook or JupyterLab  
3. Run all cells to reproduce the analysis  


## 📁 Project Structure

```
├── data/                  # Raw datasets
├── figures/               # Generated visualizations
├── notebooks/             # Jupyter notebooks
│   └── analysis.ipynb
├── README.md
```

## Tools Used

- Python (Pandas, Matplotlib, Seaborn)  
- SQL (for data exploration)  

## 👤 About Me

Data analyst with a background in design, innovation, and higher education. Experienced in working within Scrum teams and innovation departments, focusing on improving the student experience through data-driven insights.

I have contributed to initiatives that optimize processes across the student journey, from enrollment to graduation, leveraging data analysis for strategic and innovative decision-making.

Currently building projects using SQL, Python, and data visualization to strengthen my ability to solve real-world business problems and support data-driven strategies.
