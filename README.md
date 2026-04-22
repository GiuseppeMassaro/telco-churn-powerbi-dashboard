# 📊 Telco Customer Churn Analysis Dashboard

<div align="center">

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-Data%20Analysis-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)

</div>

---

## 🚀 Overview

This project is an **end-to-end data analysis** focused on customer churn in the telecom industry.

The objective is to **analyze customer behavior, identify high-risk segments, and provide actionable retention strategies**.

👉 Full pipeline:
**Python (ETL) → SQL (Analysis) → Power BI (Visualization)**

---

## 🧠 Objectives

- Understand customer churn patterns  
- Identify high-risk and high-value customers  
- Analyze drivers of churn  
- Provide business recommendations  

---

## 🛠️ Tools & Technologies

<div align="center">

![Python](https://img.shields.io/badge/Python-Pandas%20%7C%20Seaborn%20%7C%20Matplotlib-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Visualization-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-Measures%20%26%20KPIs-ff6f00?style=for-the-badge)

</div>

---

## 🔄 Project Workflow

### 1️⃣ Data Preparation (Python)

- Data loading and exploration  
- Data cleaning (nulls, duplicates, type conversion)  
- Outlier detection (IQR method)  
- Feature preparation  
- Data ready for SQL integration  

---

### 2️⃣ Data Analysis (SQL)

- Churn rate calculation  
- Segmentation by:
  - Contract type  
  - Tenure  
  - Payment method  
  - Internet service  
- Customer value analysis  
- High-value churn detection  

---

### 3️⃣ Data Visualization (Power BI)

Interactive dashboard with **3 analytical layers**:

---

## 📊 Dashboard Preview

### 🏠 Overview
![Overview](images/0_Home.png)

- Customer base overview  
- Churn drivers  
- Behavioral patterns  

---

### 📈 Risk & Value
![Risk & Value](images/1_Rick%20%26%20Value.png)

- Customer segmentation:
  - 🔴 Critical (High Value + High Risk)  
  - 🟡 At Risk  
  - 🟢 Low Priority  
  - 🔵 Stable  

---

### 🎯 Retention Strategy
![Retention Strategy](images/2_Strategy.png)

- Early churn focus  
- Executive insights  
- Strategic actions  

---

## 🔍 Key Insights

- 📌 **55%+ of churn occurs within the first year**  
- ⚡ **Month-to-month fiber customers = highest risk segment (~70%)**  
- 📉 Long-term contracts significantly reduce churn  
- 💰 High-value customers with high churn risk are the top priority  

---

## 🎯 Business Recommendations

- 🚀 Improve onboarding in the first 12 months  
- 📑 Promote long-term contracts  
- 🎯 Target high-risk customers early  
- 🔧 Improve service quality for fiber users  
- 💡 Focus retention on high-value segments  

---

## 💡 Business Impact

Reducing churn can:

- Increase **Customer Lifetime Value (CLTV)**  
- Improve retention rates  
- Protect long-term revenue  
- Enable data-driven decision making  

---

## 📁 Repository Structure

```text
telco-churn-powerbi-dashboard/
│
├── data/
├── etl/
│   └── pulizia etl.ipynb
│
├── images/
│   ├── 0_Home.png
│   ├── 1_Rick & Value.png
│   └── 2_Strategy.png
│
├── report/
│   └── Dashboard Telco.pbix
│
├── sql/
│   └── churn_analysis.sql
│
└── README.md

## 🤝 Connect with Me

Se ti è piaciuto il progetto o vuoi collaborare 👇

<div align="center">

<a href="https://www.linkedin.com/in/giuseppe-massaro/" target="_blank">
  <img src="https://img.shields.io/badge/LinkedIn-Giuseppe%20Massaro-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white"/>
</a>

<br><br>

<a href="https://giuseppe-massaro-portafoglio.netlify.app/" target="_blank">
  <img src="https://img.shields.io/badge/Portfolio-Visit%20My%20Website-000000?style=for-the-badge&logo=vercel&logoColor=white"/>
</a>

<br><br>

<a href="mailto:massaro.98@hotmail.it">
  <img src="https://img.shields.io/badge/Email-Contact%20Me-D14836?style=for-the-badge&logo=gmail&logoColor=white"/>
</a>

</div>

---

## ⭐ Support

Se questo progetto ti è stato utile:

👉 lascia una ⭐ al repository  
👉 condividilo su LinkedIn  

---

## 👨‍💻 Author

**Giuseppe Massaro**  
Aspiring Data Analyst 🚀
