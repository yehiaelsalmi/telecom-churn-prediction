# Telecom Customer Churn Prediction

Predicting which telecom customers are likely to leave, understanding why, and turning the predictions into a retention decision. Built end to end: SQL for data preparation and analysis, Pandas for exploration, three models compared, SHAP for explanations, and a cost analysis to choose the decision threshold.

**Result:** XGBoost reached the best ROC-AUC (**0.844**), narrowly ahead of logistic regression (0.842). The main churn drivers are tenure, contract type and fiber optic service.

## Business problem

A telecom company loses customers every month, and a retention offer costs money. The team cannot contact everyone, so it needs to know:

- Which customers are most likely to churn?
- Why are they leaving?
- How many customers should be contacted, given the cost of an offer?

## Data

Telco Customer Churn dataset (Kaggle).

| | |
|---|---|
| Customers | 7,043 |
| Churn rate | about 26.5% (imbalanced classes) |
| Information | demographics, subscribed services, contract, billing and payment details |

The raw data is not included in this repository. Download it from Kaggle.

## Approach

1. **SQL.** Loaded the flat file into SQLite and split it into three tables (`customers`, `services`, `billing`) linked by `customerID`. Wrote analysis queries using joins, grouping and filtering (see the `sql/` folder).
2. **Exploratory analysis.** Cleaned the data and looked at churn by contract, internet service, payment method and tenure.
3. **Preparation.** Converted categories to numbers with one-hot encoding, split the data 80/20 with stratification, and scaled the numeric columns using statistics learned from the training set only, to avoid data leakage.
4. **Modeling.** Compared Logistic Regression, Random Forest and XGBoost.
5. **Explanation.** Used SHAP to see which factors push a customer's churn risk up or down.
6. **Decision analysis.** Compared decision thresholds
