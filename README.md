# The Influence of Social Media
## Project Info
- Course: Special Topics in Data Management (SQL & NoSQL)
- Project Timeline: Spring 2025

### Tools & Languages
- SQL (Azure Data Studio)
- Jupyter Notebook
- Tableau Public [Dashboard](https://public.tableau.com/app/profile/kai.lin.wang2341/viz/Final_17557324288900/Dashboard1)



## Research Background
In recent years, social media platforms have become increasingly prevalent and have significantly transformed the way we live, communicate, and interact. While these platforms offer some benefits such as enhancing social connectivity and providing a space for self-expression. They also come with drawbacks, and one of the most concerning being addiction. 

Personally, I’ve found myself increasingly drawn to social media and that’s why I have become curious about how it truly impact users’ lives. For this project, I’ll be working individually and using a comprehensive dataset from Kaggle titled “Social Media Menace”, which contains detailed user behavior, demographics, and platform usage data. I will use SQL to create and manage the database, platform analysis, and explore the relationship between addiction level and potential influencing factors.

### Research Question
> What factors are associated with higher addiction levels among users on the social media platform?

### Dataset
Dataset from Kaggle - [Social Media Menace](https://www.kaggle.com/datasets/zeesolver/dark-web)



## Data Pipeline
The total data count is 1000. We also created new variables for further analysis.

| Type                     | Features                                                                                                   | Notes/Analysis                           |
|--------------------------|------------------------------------------------------------------------------------------------------------|------------------------------------------|
| **Numeric**              | Age, Income, Total Time Spent, Number of Sessions, Video Length, Engagement, Time Spent On Video, Number of Videos Watched, Scroll Rate | • AVG                                     |
| **Label (Text/Categorical)** | Gender, Location, Profession, Demographics, Platform, Video Category, Frequency, Watch Reason, DeviceType, OS, CurrentActivity, ConnectionType | • GROUP BY <br> Analysis with Addiction Level |
| **Time-Series**          | Watch Time (**Watch_Hour**)                                                                                | Transform into Hour                       |
| **Boolean**              | Debt (**Debt_Bool**), <br> Owns Property (**Owns_Property_Bool**)                                         |                                          |
| **Ordinal**              | Importance Score, ProductivityLoss, Satisfaction, Self Control, Addiction Level                            |                                          |



## Data Analysis
- **Higher Addiction Level Feature:** Description and general insights about users with higher addiction levels.
- **Demographics:** Gender and income distribution analysis.
- **User Engagement:** Time spent and number of videos watched.
- **Technical Profiles:** Device types, operating systems (OS), and connection types used.
- **Technical Usage Counts:** Count distribution of device types, OS, and connection types.
- **Geographic Distribution:** User locations overview.
- **User Count by Location & Platform:** Number of users across different locations and platforms.
- **Location & Demographic Correlation:** Analysis of how location correlates with demographic factors.
- **Video Categories & Watch Reasons:** Insights into preferred video categories and reasons for watching.
- **Activity Patterns & Watch Motivations:** Relationship between user activity and reasons for video consumption.



## Result and Visualization
### Dashboard Summary
<img width="1582" height="885" alt="image" src="https://github.com/user-attachments/assets/f907ec6c-fad7-4d65-b297-40146b3612e0" />

### User Profile & Usage Impact (Age, Income, Self-control, Productivity, Satisfaction)
**Results**
- Higher Addiction Levels are associated with lower self-control scores (down to 3 for
Level 7 users).
- Average age and income slightly decrease as Addiction Level increases.
- Productivity loss increases with Addiction Level, while user satisfaction paradoxically
increases.
- Majority of users are in medium Addiction Levels (2-4).

**Conclusions**
- High Addiction Level users exhibit impulsive behaviors with significant productivity loss, yet feel more satisfied, indicating a risk of self-reinforcing addictive habits.
- Medium-level users represent the largest target group for potential intervention.
---
### Videos Info (Sessions, Videos Watched, Time Spent)
**Results**
- Users with higher Addiction Levels watch more videos and spend more total time on content.
- Average scroll rate and session counts are higher among users with Level 5-7 Addiction Levels.

**Conclusions**
- Time spent and content consumption are strong indicators of addiction severity.
- Monitoring user activity metrics can help identify at-risk users early.
---
### Technical Usage Counts (Device, OS, Connection Type)
<img width="1360" height="895" alt="image" src="https://github.com/user-attachments/assets/b9c0a7d1-791b-45d7-af60-a46ed8452b1f" />

**Results**
- Smartphones are the dominant device for high-addiction users, especially on Android.
- Tablets and computers show lower average Addiction Levels compared to smartphones.
- iOS users show slightly higher addiction scores on smartphones and tablets compared to Android in some categories.

**Conclusions**
- Smartphones, particularly Android devices, are the primary platform for addictive behavior.
- Platform-specific features (e.g., usage tracking, app limits) can be effective in managing user addiction.
---
### Geographic Distribution (Location & Self-Control)
<img width="1360" height="750" alt="image" src="https://github.com/user-attachments/assets/98a4627f-c7bc-4820-badc-077b572414ad" />

**Results**
- Users from Brazil and Germany show higher average Addiction Levels and lower self-control scores.
- Countries like Vietnam, India, and the United States show slightly better self-control but still fall into mid-range Addiction Levels.

**Conclusions**
- Geographic factors influence self-control and addiction behaviors.
- Cultural or regional-specific interventions (e.g., local awareness campaigns) might be effective.
---
### User Count by Location & Platform
<img width="650" height="500" alt="image" src="https://github.com/user-attachments/assets/8cf559cf-2ebd-4d5d-9165-8dc39c29990f" />
<img width="650" height="480" alt="image" src="https://github.com/user-attachments/assets/24f7b47d-d502-4e85-883d-58555605dce2" />

**Results**
- India and the United States have the highest user counts.
- TikTok and YouTube dominate as preferred platforms across most regions.
- Rural users outnumber urban users in most countries.

**Conclusions**
- Platform preference and regional demographics should guide targeted content moderation and addiction management strategies.
- Rural areas may need more digital literacy education and responsible usage programs.
---
### Current Activity & Watch Reason
<img width="1894" height="524" alt="image" src="https://github.com/user-attachments/assets/7cec7ef5-c5a0-41ba-bf3f-ada10e44b5ef" />

**Results**
- Watching videos out of habit has the highest correlation with higher Addiction Levels, especially during work or school time.
- Procrastination-driven watching peaks at work and school, while boredom is more common during commuting.

**Conclusions**
- Habitual and procrastination-driven video consumption are key contributors to addiction.
- Context-aware interventions (e.g., notifications during work hours) can reduce compulsive usage.
---
### Video Category & Watch Reason
**Results**
- Trends, Jokes/Memes, and Entertainment categories show the highest Addiction Level averages.
- Procrastination is the top watch reason for ASMR and Entertainment content.
- Comedy and Pranks also show high Addiction Levels under procrastination and entertainment reasons.

**Conclusions**
- Specific content types are more addictive due to their engagement patterns.
- Content moderation and user prompts can be customized by category to mitigate excessive consumption.



## Conclusions
- **Self-Control Drops as Addiction Increases:** High-addiction users (Level 6-7) show significantly lower self-control and productivity loss.
- **High Usage ≠ Productivity, but Feels "Satisfying":** Despite clear negative impacts, satisfaction scores paradoxically rise with addiction level.
- **Smartphones (especially Android) are the Main Addictive Device:** Targeted interventions should focus on mobile platforms.
- **Habit & Procrastination are Major Triggers:** Habitual viewing during work/school is the strongest addiction driver.
- **India & U.S. = Largest User Base:** Rural users dominate; TikTok & YouTube are the most addictive platforms.
- **Content Type Matters: Trends, Entertainment & Memes are Risky:** These categories correlate with higher addiction levels, especially under procrastination.



## Recommendations
- **Promote Healthy Usage Habits:** Context-aware reminders, app time limits, and self-control features.
- **Target Medium-Addiction Users for Engagement & Prevention:** They are the largest segment with manageable risk.
- **Platform & Content-Specific Interventions:** Focus on smartphones, short-form content, and high-addiction categories.
- **Regional Strategies:** Tailor interventions for rural users and high-risk countries (e.g., India, Brazil).
