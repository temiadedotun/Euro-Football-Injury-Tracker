# Football Injury Dashboard

![Football_Injury_Dashboard](https://github.com/user-attachments/assets/f742edac-cd3a-4c2a-adac-f31c8416c8a0)

## 📖 Project Overview
This project is a comprehensive Excel Data Visualization tool designed to track and analyze injury trends across Europe’s "Big Five" leagues: **English Premier League**, **Spanish La Liga**, **German Bundesliga**, **Italian Serie A**, and **French Ligue 1**.
By aggregating five seasons of data, the dashboard provides a high-level view of player availability, identifying which positions were most at risk, which months were the most severe, and which types of injuries were most prevalent in elite football.

## ✨ Key Features
- **Dynamic Interactive Dropdown**: Filter the entire dashboard instantly by Season, League, and Player Position
- **Injury Trend Analysis**: A line chart visualizing the frequency of injuries per month to pinpoint high-risk periods in the football calendar
- **Comparative Rankings**: Horizontal bar charts displaying total injuries by League and by Position in descending order
- **Deep-Dive KPI Cards**:
  - **Anatomy Profile**: Shows the most injured body part and its peak occurrence month
  - **Player Spotlight**: Identifies the most injured player, their club, and total games missed
  - **Injury Classification**: Highlights the most prominent injury type and its injury percentage
 
## 🛠 Data Transformation & Logic (SQL & Excel)
The original football injury data contained a lot of complex medical terminologies for the injuries, which could not be understood by non-medical personnel. A two-stage refinement process was thus performed to ensure the data was understandable and actionable.

#### 1. SQL Categorization (Bucketing) 🗄️
New created and updated columns in **SQL**, using WHERE function paired with wildcards, were used to map the injuries into standardized buckets. *ChatGPT was used to create the buckets for the injuries*

  - **Body Part Bucketing**: Grouping specific ailments by the area affected (e.g., Hamstring, Ankle, Knee)
``` SQL
  UPDATE football_injury
SET injured_body_part = 'Knee'
WHERE injury LIKE '%Meniscus%' OR 
        injury LIKE '%Patellar%' OR 
        injury LIKE '%Cruciate%' OR 
        injury LIKE '%Ligament%' OR 
        injury LIKE '%Knee%' OR 
        injury LIKE '%Arthroscopy%';

UPDATE football_injury
SET injured_body_part = 'Ankle'
WHERE injury LIKE '%Syndes%' OR
        injury LIKE '%Metatarsal%' OR
        injury LIKE '%Ankle%' OR 
        injury LIKE '%Tendon%';

UPDATE football_injury
SET injured_body_part = 'Foot'
WHERE injury LIKE '%Metatarsal%' OR
        injury LIKE '%Foot%' OR
        injury LIKE '%Toe%' OR
        injury LIKE '%Heel%' OR 
        injury LIKE '%Arch%' OR 
        injury LIKE '%Plantar%';
```
  - **Injury Classification**: Standardizing the type of injury (e.g., Strain, Tear, Fracture)
``` SQL
UPDATE football_injury
SET injury_classification = 'Fracture'
WHERE injury LIKE '%Fracture%' OR
        injury LIKE '%Broken%' OR 
        injury LIKE '%Crack%' OR
        injury LIKE '%Fissure%';

UPDATE football_injury
SET injury_classification = 'Tear'
WHERE injury LIKE '%Tear%' OR
        injury LIKE '%Torn%' OR
        injury LIKE '%Rupture%';
```
*Some of the injuries were ambiguous - the body part could not be determined from the injury (e.g., "Knock"), and the injury could not be placed in a certain type. Those injuries were labeled as "Unknown" (Body Part) or "Other" (Classification)*

#### 2. Smart KPI Logic (Excel Engineering) 🧠
In some scenarios, "Unknown" and "Other" could end up being the number 1 result. To prevent the dashboard from communicating nothing, I built a custom logic flow in Excel, such that the result presented is the next after "Unknown" or "Other", if the result is either of them.

In some other scenarios, the month where a particular injury type or body part was most prominent could be more than 1. I wrote a function such that, should such be the case, the months were put together.

![Excel Formula Screenshot](https://github.com/user-attachments/assets/85aacddf-dce5-4b59-b1dc-475cd83bae16)

*While the card shows the next best category (if Unknown or Other), the Percentage (%) Frequency displayed is still calculated against the entire dataset (including Unknowns). This ensures the metrics remain statistically honest while being visually useful.*

## 📊 Key Findings & Insights
- January was the primary month for injury spikes across all playing positions, as well as the month where the most prominent injury classification was the highest. The most injured body part, on the other hand, had its highest level of prominence in February, the same month where Functional injuries (such as Fatigue, Stiffness, Pain, Contortion, etc) were the highest.

- Defenders and strikers had the most injuries within the winter season (November - February). In Bundlesliga, they were also the most affected by thigh injuries. Midfielders had the most injuries within the first quarter of the calendar year.

- Knee and Thigh were the most injured body parts, with high prominence in February and November respectively. In Bundlesliga and La Liga, Thigh injuries were the most prominent in March and November, and January and February, respectively, with Midfielders being the most affected in La Liga. Knee injuries were the most prominent in Ligue 1 and Premier League, in January and October, and December and February, with Goalkeepers, and Strikers and Midfielders being the the most affected, respectively.

- Serie A had the most injuries that affected Internal organs and Lower leg.

- Functional injuries were the most prominent injury classification.

- June was the only month that did not have the most prominent injury classification.

## 📝 Limitation
- Some injuries lacked clear anatomical direction, so it was difficult to bucket them, resulting in about 25% of the injuries being classified as "Unknown/Other". The implication of this is that results such as the most injured body part and most prominent injury classification are missing a quarter of values.
- Some of the findings beg certain questions that can only be answered with a more robust dataset. For example, *"Did the injury occur during a home or away game?"*; *"Did the injury occur while in training?"* 

## Conclusion
A simple approach was taken towards the user interface and experience of the dashboard. However, its application and relevance are anything but simple. For example, if a club knows that players at a certain position are at high risk in a certain month or season, they can justify rotation policies or investments in depth and quantity of players during the transfer window, or adjust their medical preventative training programs. For league organizers, seeing a consistent spike in a month provides empirical evidence for the necessity of breaks (real breaks, and not breaks where the players play for their countries) or changes in match scheduling to protect the players.

In summary, data was not simply visualized. A solution that brings immediate visibility to decision makers was engineered.
