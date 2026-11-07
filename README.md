# Telecom Customer Churn Prediction

## Project Overview

This project analyzes customer churn in a telecommunications company and builds machine learning models to identify customers who are at risk of leaving.

The main objective is to understand customer churn behavior, predict potential churners, and provide business insights that can support customer retention strategies.

## Business Objectives

- Analyze customer churn patterns using SQL and Python.
- Identify customer characteristics associated with higher churn.
- Build and compare machine learning classification models.
- Select an appropriate classification threshold to improve churn detection.
- Investigate and reduce model overfitting.
- Estimate potential revenue at risk and compare different retention-offer scenarios.

## Dataset

The project uses the Telco Customer Churn dataset.

- **Customers:** 7,043
- **Features:** 21 columns
- **Target variable:** Churn (Yes/No)

The dataset contains information about customer demographics, subscribed services, contract types, payment methods, tenure, and charges.

## Tools and Technologies

- Python
- Pandas and NumPy
- SQLite
- Matplotlib and Seaborn
- Scikit-learn
- XGBoost
- Jupyter Notebook

## Project Workflow

### 1. Data Loading and SQL Analysis

- Loaded the dataset using Pandas.
- Created a SQLite database.
- Organized the data into customers, services, and billing tables.
- Used SQL queries to analyze churn patterns across different customer segments.
- Identified service categories associated with higher churn rates.

### 2. Data Cleaning and Exploratory Data Analysis

- Converted TotalCharges into a numerical data type.
- Handled missing values.
- Examined the overall churn distribution.
- Analyzed churn according to contract type, internet service, and payment method.
- Created visualizations to understand customer behavior.
- Used a correlation matrix to examine relationships between numerical features and churn.

### 3. Data Preprocessing

- Encoded the target variable into binary values.
- Applied one-hot encoding to categorical features.
- Standardized numerical features using StandardScaler.
- Split the dataset into three subsets:
  - 60% Training
  - 20% Validation
  - 20% Testing
- Used stratified splitting to maintain the original churn distribution.

### 4. Machine Learning Models

Three classification algorithms were trained and compared:

- Logistic Regression
- Random Forest
- XGBoost

Models were evaluated using:

- Accuracy
- Precision
- Recall
- F1-score
- ROC-AUC

### 5. Overfitting Detection and Hyperparameter Tuning

The original Random Forest showed signs of overfitting:

- Training Accuracy: 99.8%
- Validation Accuracy: 78.6%

To address this issue, GridSearchCV with 5-fold cross-validation was used to find better hyperparameters.

The tuned Random Forest achieved:

- Training Accuracy: 95.2%
- Validation Accuracy: 79.0%

This reduced the training-validation performance gap and slightly improved validation accuracy.

### 6. Model Evaluation and Threshold Optimization

Logistic Regression was selected based on its validation performance and balance between precision and recall.

Different classification thresholds were evaluated using validation data.

A threshold of 0.3 was selected to improve churn detection:

- Precision: 53.9%
- Recall: 74.9%
- F1-score: 0.627

The selected threshold was then applied to the untouched test set for final evaluation.

### 7. Final Model Performance

Logistic Regression achieved the following test results at a threshold of 0.3:

| Metric | Score |
|---|---:|
| Accuracy | 75% |
| Precision | 52% |
| Recall | 75% |
| F1-score | 0.62 |
| ROC-AUC | 0.843 |

### 8. Business Impact Analysis

The project estimates potential revenue at risk by identifying customers predicted to churn.

It also explores different retention scenarios to compare the potential financial impact of offering discounts versus allowing customers to churn.

Different retention success rates and offer costs are considered as illustrative business assumptions.

**Note:** Revenue estimates are based on monthly customer charges and do not represent guaranteed revenue savings or profit. Actual retention success rates and campaign costs require real business data.

## Key Findings

- Customer churn varies across service and contract categories.
- Customer tenure and monthly charges are useful variables for understanding churn behavior.
- Logistic Regression provides a useful balance between precision and recall.
- Hyperparameter tuning reduced overfitting in the Random Forest model.
- Selecting a lower classification threshold improved the model's ability to identify potential churners.
- Predictive modeling can support more targeted customer retention strategies.

## How to Run the Project

1. Clone this repository.
2. Download the Telco Customer Churn dataset.
3. Place the dataset in the appropriate project directory.
4. Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn scikit-learn xgboost jupyter
```

5. Open the notebook:

```bash
jupyter notebook
```

6. Run `telco-churn1.ipynb` from beginning to end.

## Limitations

- The dataset is observational and does not establish causal relationships.
- Retention success rates are hypothetical assumptions.
- The dataset does not contain actual retention campaign costs or outcomes.
- Revenue estimates do not account for service delivery costs or profit margins.
- The random train/test split does not simulate a future-time deployment.

## Author

**Yehia El Salmy**
