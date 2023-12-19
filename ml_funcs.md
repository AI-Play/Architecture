# Machine Learning Functions

**!!! The ultimate goal is to provide Machine Learning functions as a Serverless service using AWS Lambda (or else) !!!**

## List of Machine Learning-related Functions to Implement in Project Phase 1 (MLML)

The order and importance are not relevant.

If there are additional features to be added after confirmation, please leave them in the repository's issue.
Format: Part Name - Major Category Number - Feature to Add
e.g., ml - 1 - Transpose Rows and Columns

※ If the difficulty or cost of implementing a feature is high, implement it in Phase 2 (AI Play).

### 1. Exploratory Data Analysis (EDA)

- Upload dataset (csv, xlsx, ...) **-> maybe in Frontend**
- Create DataFrame (read_csv, ...) **-> maybe in Frontend**
- Data retrieval (head, tail, ...) **-> maybe in Frontend**
- Shape confirmation (shape) **-> maybe in Frontend**
- Check data types (dtypes)
- Check data distribution (describe) **-> maybe in Frontend**
- List columns (columns)
- Retrieve unique values in columns (unique)
- Check for missing values (isna)
- Identify outliers
- Confirm correlation (corr())
- Group data (groupby)
- Transpose rows and columns

### 2. Feature Engineering

- Retrieve specific data (loc, iloc, slicing, conditional statements, ...)
- Remove rows or columns (drop)
- Remove missing values (dropna)
- Remove outliers
- Add columns
- Change column names (rename, ...)
- Sort DataFrame (sort_values)
- Merge DataFrames (concat, merge)

### 3. Visualization

- boxplot
- histplot
- countplot
- scatterplot
- barplot

### 4. Machine Learning Model Making

- Separate features/targets
- Split into training/validation/test datasets (train_test_split)
- Encoders: One-hot, Target, Ordinal, ...
- Calculate class weights

- Regression: Linear, Ridge, Decision Tree, Random Forest, Boosting, ...
- Classification: Logistic, Decision Tree, Random Forest, Boosting, ...
- Tuning: Grid, Randomized, ...
- Evaluation metrics
  - Regression: Accuracy, MSE, MAE, R Squared, ...
  - Classification: Accuracy, Precision, Recall, F1 Score, AUC Score, ROC Curve, ...

### 5. Model Interpretation

- Feature importance / Permutation importance
- PDP (Partial Dependence Plot)
- SHAP (SHapley Additive exPlanations)

### 6. Model Saving & Loading

- Save the model
- Load the model
