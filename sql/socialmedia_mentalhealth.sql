-- =========================================
-- Project: Social Media Usage and Mental Health Analysis
-- Author: Ernesto Gutiérrez
-- Description: SQL queries for data exploration, segmentation, and analysis
-- =========================================


-- =========================================
-- 1. Data Exploration
-- =========================================

-- Social media dataset preview
SELECT *
FROM social_media_impact_on_life
LIMIT 10;

-- Teen mental health dataset preview
SELECT *
FROM teen_mental_health_dataset
LIMIT 10;


-- =========================================
-- 2. Aggregations & Baseline Metrics
-- =========================================

-- Baseline metrics - social media dataset
SELECT 
    AVG("Avg_Daily_Usage_Hours") AS avg_usage,
    AVG("Mental_Health_Score") AS avg_mental_health,
    AVG("Sleep_Hours_Per_Night") AS avg_sleep
FROM social_media_impact_on_life;

-- Baseline metrics - teen mental health dataset
SELECT 
    AVG(daily_social_media_hours) AS avg_usage,
    AVG(sleep_hours) AS avg_sleep,
    AVG(stress_level) AS avg_stress,
    AVG(anxiety_level) AS avg_anxiety,
    AVG(addiction_level) AS avg_addiction
FROM teen_mental_health_dataset;


-- =========================================
-- 3. Segmentation Analysis
-- =========================================

-- Social media usage segmentation (dataset 1)
SELECT 
    CASE 
        WHEN "Avg_Daily_Usage_Hours" < 2 THEN 'Low Usage'
        WHEN "Avg_Daily_Usage_Hours" BETWEEN 2 AND 4 THEN 'Medium Usage'
        ELSE 'High Usage'
    END AS usage_group,
    COUNT(*) AS total_users,
    AVG("Mental_Health_Score") AS avg_mental_health,
    AVG("Sleep_Hours_Per_Night") AS avg_sleep
FROM social_media_impact_on_life
GROUP BY 
    CASE 
        WHEN "Avg_Daily_Usage_Hours" < 2 THEN 'Low Usage'
        WHEN "Avg_Daily_Usage_Hours" BETWEEN 2 AND 4 THEN 'Medium Usage'
        ELSE 'High Usage'
    END;

-- Social media usage segmentation (dataset 2)
SELECT 
    CASE 
        WHEN daily_social_media_hours < 2 THEN 'Low Usage'
        WHEN daily_social_media_hours BETWEEN 2 AND 4 THEN 'Medium Usage'
        ELSE 'High Usage'
    END AS usage_group,
    COUNT(*) AS total_users,
    AVG(stress_level) AS avg_stress,
    AVG(anxiety_level) AS avg_anxiety,
    AVG(addiction_level) AS avg_addiction,
    AVG(sleep_hours) AS avg_sleep
FROM teen_mental_health_dataset
GROUP BY usage_group
ORDER BY avg_anxiety DESC;


-- =========================================
-- 4. Relationship Analysis
-- =========================================

-- Usage vs mental health (dataset 1)
SELECT 
    "Avg_Daily_Usage_Hours",
    "Mental_Health_Score"
FROM social_media_impact_on_life;

-- Usage vs anxiety (dataset 2)
SELECT 
    daily_social_media_hours,
    anxiety_level
FROM teen_mental_health_dataset;

-- Usage vs sleep (dataset 2)
SELECT 
    daily_social_media_hours,
    sleep_hours
FROM teen_mental_health_dataset;


-- =========================================
-- 5. Behavioral Insights (Platform, Distribution, etc.)
-- =========================================

-- Social media usage distribution (dataset 1)
SELECT 
    "Avg_Daily_Usage_Hours"
FROM social_media_impact_on_life;

-- Mental health indicators by platform
SELECT 
    platform_usage,
    COUNT(*) AS total_users,
    AVG(daily_social_media_hours) AS avg_usage,
    AVG(anxiety_level) AS avg_anxiety,
    AVG(addiction_level) AS avg_addiction
FROM teen_mental_health_dataset
GROUP BY platform_usage
ORDER BY avg_addiction DESC;

-- Anxiety distribution
SELECT 
    anxiety_level,
    COUNT(*) AS total_users
FROM teen_mental_health_dataset
GROUP BY anxiety_level
ORDER BY anxiety_level;

-- Academic performance vs usage
SELECT 
    academic_performance,
    COUNT(*) AS total_users,
    AVG(daily_social_media_hours) AS avg_usage,
    AVG(anxiety_level) AS avg_anxiety
FROM teen_mental_health_dataset
GROUP BY academic_performance
ORDER BY avg_usage DESC;

-- Addiction level by usage group
SELECT 
    CASE 
        WHEN daily_social_media_hours < 2 THEN 'Low Usage'
        WHEN daily_social_media_hours BETWEEN 2 AND 4 THEN 'Medium Usage'
        ELSE 'High Usage'
    END AS usage_group,
    AVG(addiction_level) AS avg_addiction,
    COUNT(*) AS total_users
FROM teen_mental_health_dataset
GROUP BY usage_group
ORDER BY avg_addiction DESC;