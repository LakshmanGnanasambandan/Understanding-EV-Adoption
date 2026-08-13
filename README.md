# 🚗 Understanding EV Adoption: Data-Driven Analysis of Consumer Purchase Decisions

## 📌 Project Overview

Electric vehicle (EV) adoption is growing, yet many consumers remain hesitant to purchase EVs due to factors such as range anxiety, charging availability, affordability, environmental concerns, and government incentives.

This project analyzes EV consumer survey data to identify the key factors associated with EV purchase intention and translate those findings into actionable business and marketing recommendations.

The project combines data preparation, exploratory analysis, SQL business analysis, and interactive Power BI visualization.

---

## 🎯 Business Objective

To identify the key factors influencing EV purchase intention and develop data-driven insights that can help EV manufacturers and marketers improve customer targeting and accelerate EV adoption.

---

## 🛠️ Tech Stack

- Microsoft Excel — Data cleaning and preparation
- Python — Exploratory data analysis
- Microsoft SQL Server / SSMS — Business analysis and segmentation
- Power BI — Interactive dashboard and visualization
- Git & GitHub — Version control and project management

---

## 🔄 Project Workflow

Business Understanding
↓
Data Cleaning & Preparation
↓
Exploratory Data Analysis
↓
SQL Business Analysis
↓
Customer Segmentation
↓
Power BI Dashboard
↓
Business Insights & Recommendations

---

## ❓ Key Business Questions

The analysis investigates questions such as:

1. Does environmental concern influence EV purchase intention?
2. Does range anxiety influence EV purchase intention?
3. Does annual income influence EV purchase intention?
4. Does home charging availability influence EV purchase intention?
5. Does government subsidy availability influence EV purchase intention?
6. How do income, range anxiety, environmental concern, and subsidies interact?
7. Which customer segments show the highest EV purchase intention?

---

## 📊 Key Findings

### 🌱 Environmental Concern

EV adoption increases substantially as environmental concern increases.

The analysis indicates a strong positive relationship between environmental concern and EV purchase intention.

**Business implication:** Sustainability-focused messaging can be particularly effective for environmentally conscious consumers.

---

### 🔋 Range Anxiety

Customers with low range anxiety show substantially higher EV adoption than customers with medium or high range anxiety.

**Business implication:** EV marketers should communicate real-world driving range, battery performance, charging infrastructure, and route planning capabilities.

---

### 💰 Income

Higher-income customer groups demonstrate stronger EV adoption.

| Income Group | EV Adoption |
|---|---:|
| High | 26.0% |
| Upper Middle | 19.6% |
| Middle | 15.1% |
| Low | 9.4% |

**Business implication:** Higher-income customers represent an attractive initial target market, while financing and affordability initiatives can help expand adoption among lower-income consumers.

---

### 🎁 Government Subsidies

Subsidy availability is strongly associated with EV purchase intention.

The Power BI Key Influencers analysis identifies:

> **Subsidy Available = True → 10.91× likelihood**

This is an association identified by the Key Influencers model and should not be interpreted as proof of causation.

**Business implication:** EV manufacturers and dealers should clearly communicate subsidy eligibility and estimated savings during the purchase journey.

---

### 🎯 Customer Segmentation

Power BI's Top Segments analysis identified customer groups with significantly higher EV purchase intention than the overall average.

The strongest identified segment showed:

> **69.9% Will_Buy_EV = True**

compared with the overall average of:

> **17.5%**

The strongest segment was characterized by:

- High environmental concern
- Non-low income
- Subsidy availability

**Business implication:** Environmentally conscious, financially capable customers with access to subsidies represent a high-priority target segment.

---

## 📈 Power BI Dashboard

The interactive Power BI dashboard provides:

- EV Adoption Rate KPI
- EV Buyer and Total Customer KPIs
- Adoption by Range Anxiety
- Adoption by Environmental Concern
- Adoption by Income Group
- EV Buyer vs Non-Buyer analysis
- Customer distribution by Income Group
- Key Influencers
- Top Segments
- Decomposition Tree
- Age Group analysis
- Interactive filters for:
  - Age Group
  - Gender
  - City Type
  - Income Group

---

## 💡 Business Recommendations

### 1. Reduce Range Anxiety

Communicate real-world EV range, charging infrastructure, battery technology, and practical driving scenarios.

### 2. Promote Government Incentives

Clearly communicate subsidy eligibility, estimated savings, and incentive benefits during the customer purchase journey.

### 3. Target High-Value Customer Segments

Prioritize environmentally conscious and higher-income consumers with access to subsidies.

### 4. Use Sustainability-Focused Marketing

Develop campaigns highlighting environmental benefits for customers with strong environmental concerns.

### 5. Improve Affordability

Use financing options and incentive communication to make EVs more accessible to lower-income customer groups.

---

## 📁 Project Structure

```text
Understanding-EV-Adoption/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── eda/
│   └── 01_Data_Profiling.ipynb
│
├── reports/
│   └── Insights_Register.md
│
├── SQL/
│   ├── 01_Database_Setup.sql
│   ├── 02_Table_Creation.sql
│   └── 03_Business_Queries.sql
│
├── Power BI/
│   └── EV_Adoption project.pbix
│
├── Business_Questions.md
├── Project_Plan.md
├── README.md
└── .gitignore

## 📊 Project Status

🟢 Completed

