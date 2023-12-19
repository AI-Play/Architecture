# Project Todo List (WebApp)

A detailed list of tasks for the project, broken down into milestones. (WebApp Team perspective)
Each task number represents the order in which the tasks should be carried out.
If the numbers are the same, they have the same priority.

## Phase 1

### Frontend

**※ Implementation Method: Bottom-up, Component-Driven Development**
**※ Legend**
[]: Components with similar appearance but different details
{}: Components with different appearance but similar or identical roles

- [ ] 0. (Optional) Document UI/UX Design (using Adobe XD | Figma | Framer)
- [x] 1. Implement Key Components
  - [x] (1) Top Nav: Hamburger button (Toggle Left Sidebar), Project Name, Last Save Time, Chat button, Profile button
  - [x] (2) Left Sidebar: [Buttons], Separator, [Buttons]
    - Buttons: Icon, Text
  - [x] (3) Right Sidebar: ~~Top Tab Nav~~, ML Functions ~~Tab~~, ~~Project Info Tab~~ -> Service Usage Status Modal
    - [x] (3-1) ~~Top Tab Nav: _Function$^*$$^1$ Button, Info$^*$$^2$ Button_~~
    - [x] (3-2) ML Functions ~~Tab~~: [ML Function Category Area]
      - ML Function Category Area: Category Name, [Function Select Button]
        - Function Select Button: Text
    - [x] (3-3) _Service Usage Status ~~Tab~~Modal: User Model List, Service Usage_
      - User Model List: Category Name, [Model Item]
        - Model Item: Model Name, Size, Edit Icon, Delete Icon
      - Service Usage: Category Name, _Project Count, Model Count, Model Size_ -> _Undecided_
  - [x] (4) Central Container: [_Process Block$^*$$^3$_] -> _Undecided Name_
    - Process Block: [_ML Function Category Area$^*$$^4$_], _Save/Load_ -> _Undecided Name_
      - ML Function Category Area: Category Name, Execute Button, Hide Elements Button, [_Function-Related Elements$^*$$^5$_] -> _Undecided Name_
        - Function-Related Elements: Function Name, Execute Button, Hide Options Button, Hide Results Button, {Option Name: Option Value, ...}
- [x] 2. Implement Auxiliary Components
  - [x] (1) New Project Modal: Title Input, Confirm Button, Cancel Button
  - [x] (2) Open Project Modal: Project List([Item] included), Confirm Button, Cancel Button
    - Project List Item: Project Name, Edit Button, Delete Button
  - [x] (3) Chat Modal: Chat Message Output Area([Messages] included), Minimize Button, Close Button, Message Input, Send Button
    - Chat Message: User Profile Picture, User Nickname, User Message, Message Sending Time
  - [x] (4) User Profile Modal: User Profile Picture, Edit Picture Button, User Nickname Text, Edit Nickname Button, User Email Text, Logout Button, Withdrawal Button
  - [x] (5) User Sign-Up, Login, Password Recovery
    - Sign-Up Form: Email Input, Send Email Verification Code Button, Verification Code Input, Password Input, Nickname Input, Terms Agreement Checkbox, Sign-Up Button, Back Button
    - Login Form: Email Input, Password Input, Login Button, Sign-Up Button, Password Recovery Button
    - Password Recovery: Email Input, Send Email Verification Code Button, Verification Code Input, New Password Input
- [x] 3. Apply Design Elements such as Colors, Layout, etc.

> *1: Move to the tab where you can select ML-related functions such as EDA, preprocessing, and model training
> *2: Move to the tab where you can check the list and information of models saved in the project and the current service usage information of the user account
> *3: Each block has one dataset, and based on this, it is possible to proceed with the process of EDA & preprocessing -> Model training -> Model evaluation & interpretation
> *4: We temporarily refer to each set mentioned in *3 (EDA & preprocessing) / (Model training) / (Model evaluation & interpretation) as 'Area'
> *5: Refers to the functions included in each area mentioned in \*4. e.g., EDA & preprocessing (Area) -> Check data shape (Function)

---

### Backend

#### 1. Build ML Functions Feature API Server

**※ Consider implementing "3. Save ML Function Operation Logs in the DB (func_log)"**

- **1. EDA (Exploratory Data Analysis)**

  - [x] 1-1. Upload dataset (csv, xlsx, ...)
  - [x] 1-2. Create a dataframe (read_csv, ...)
  - [x] 1-3. Data retrieval (head, tail)
  - [x] 1-4. Check data shape (shape)
  - [x] 1-5. Check data types (dtypes)
  - [x] 1-6. Check data distribution (describe)
  - [x] 1-7. Column list retrieval (columns)
  - [x] 1-8. Retrieve unique values in a column (unique)
  - [x] 1-9. Check for missing data (isna)
  - [ ] 1-10. _Check for data anomalies - Need to discuss implementation_
  - [x] 1-11. Check data correlation (corr())
  - [x] 1-12. Data grouping (groupby)
  - etc.

- **2. Feature Engineering**

  - [x] 2-1. Retrieve specific data (loc, iloc, slicing, conditional statements, ...)
  - [x] 2-2. Remove rows or columns (drop)
  - [x] 2-3. Remove missing data (dropna)
  - [ ] 2-4. _Remove data anomalies - Need to discuss implementation_
  - [x] 2-5. Add columns
  - [x] 2-6. Change column names (rename, ...)
  - [x] 2-7. Sort dataframe (sort_values)
  - [x] 2-8. Merge dataframes (concat, merge, ...)
  - [x] 2-9. Swap rows and columns (transpose)
  - etc.

- **3. Visualization**

  - [x] 3-1. boxplot
  - [x] 3-2. histplot
  - [x] 3-3. countplot
  - [x] 3-4. scatterplot
  - [ ] ~~3-5. barplot~~
  - etc.

- **4. Data Preparation**

  - [x] 4-1. Separate features/target
  - [x] 4-2. Split into train/validation/test datasets (train_test_split, ~~time series~~)
  - [x] 4-3. Encoder: One-hot, Target, Ordinal, ...
  - [x] 4-3. Scaler: Standard, MinMax, ...
  - [ ] 4-4. _Calculate target class imbalance (class weight) - Need to discuss implementation_
  - etc.

#### 2. Build ML Training Feature API Server

**※ Consider implementing "3. Save ML Function Operation Logs in the DB (func_log)"**

- **1. Model Training**

  - 1-1. Regression Model
    - [x] 1-1-1. Linear
    - [x] 1-1-2. Ridge
    - [x] 1-1-3. Decision Tree
    - [x] 1-1-4. Random Forest
    - [ ] 1-1-5. Boosting
    - etc.
  - 1-2. Classification Model
    - [x] 1-2-1. Logistic
    - [x] 1-2-2. Decision Tree
    - [x] 1-2-3. Random Forest
    - [ ] 1-2-4. Boosting
    - etc.
  - 1-3. Model Hyper-parameter Tuning
    - [x] 1-3-1. Grid
    - [x] 1-3-2. Randomized
    - etc.

- **2. Model Evaluation**

  - 2-1. Regression
    - [x] 2-1-1. Mean Squared Error (MSE)
    - [x] 2-1-2. Mean Absolute Error (MAE)
    - [x] 2-1-3. R-Squared
    - etc.
  - 2-2. Classification
    - [x] 2-2-1. Accuracy
    - [x] 2-2-2. Precision
    - [x] 2-2-3. Recall
    - [x] 2-2-4. F1 Score
    - [ ] 2-2-5. Confusion Matrix
    - [x] 2-2-6. AUC Score
    - [ ] 2-2-7. ROC Curve
    - etc.

- **3. Model Interpretation**

  - [ ] 3-1. Feature Importance
  - [ ] 3-2. Permutation Importance
  - [ ] 3-3. Partial Dependence Plot (PDP)
  - [ ] 3-4. SHapley Additive exPlanations (SHAP)
  - etc.

- **4. Model Saving & Loading**

  - [x] Model Save
  - [x] Model Load -> **Added Model Download Feature**

#### 3. Save ML Function Operation Logs in the DB (func_log)

- [x] 0. Assign unique values (func_code) for each function
- [x] 1. Distinguish between normal and abnormal operation for each function
- [x] 2. Record start/end time for each function
- [x] 3. Save operation results for each function in the DB

#### 3. Implement User Account Related Features

- [x] 0. Write Privacy Policy, Terms of Service
- [x] 1. Implement Sign-Up Feature
- [x] 2. Implement Login/Logout Feature
- [x] 3. Implement Password Recovery Feature
- [x] 4. Implement User Information Update Feature
- [x] 5. Implement Withdrawal Feature

#### 4. Apply K8s to ML Functions, ML Training Feature API Servers

- 0. Deploy ML Functions, ML Training Feature API Servers to PaaS in **container format**
  - [ ] ML-Funcs
  - [ ] ML-Train
- 1. Apply **K8s** to ML Functions, ML Training Feature API Servers and deploy to PaaS
  - [ ] ML-Funcs
  - [ ] ML-Train

---

### DB

#### SQL

- 1. Design RDB Tables
  - [x] 1-1. Document DB requirements and documentation
  - [ ] 1-2. Derive Entity-Relationship
  - [ ] 1-3. Create UML (Unified Modeling Language)
- 2. Implement RDB Tables
  - [x] 2-1. Write SQL scripts to implement the design
  - [x] 2-2. Test the SQL scripts
  - [x] 2-3. Execute scripts -> Implement DB
