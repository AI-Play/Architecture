# Project Milestones

This is a detailed list of goals to achieve during the project period, divided into two main phases: Phase 1 and Phase 2. Each phase is further divided into Frontend, Backend, and Database tasks.

## Phase 1: Implementation of a GUI-based Machine Learning Model Making Web App

|     Priority     | Frontend                                                                                                                                  | Backend                                                                                                                                              | Database                                                                                                                    |
| :--------------: | ----------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| Essential Goals  | - Implementation of pages and UI components for GUI-based ML functionality<br>(e.g., Project management screen)                           | - Establishment of a server providing ML Functions API<br> - Establishment of a server providing ML Training API                                     | - SQL: Design and implementation of tables completed <br> - NoSQL: None (to be implemented in Phase 2)                      |
| Additional Goals | - User registration and login form creation<br> - Application of colors and basic layout design<br>(button styles, element borders, etc.) | - Application of K8s to ML Function API server <br> - Implementation of user registration, login, and logging ML function operations to the database | - SQL: Data storage in user(user) and function usage log(func_log) tables <br> - NoSQL: None (to be implemented in Phase 2) |

## Phase 2: Phase 1 Upgrade + Implementation of a Web App for Experimenting with Various Deep Learning Models

|    Priority     | Frontend                                                                                                                                                                                | Backend                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Database                                                     |
| :-------------: | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| Essential Goals | - Creation of a service introduction page (including user registration and login functionality) <br> - Creation of a page (component) where a completed Deep Learning model can be used | - Transition of ML Functions to Serverless (AWS Lambda) <br> - Transition of ML Training to Serverless (AWS Fargate + ECS) <br> - Implementation of user-related functionalities<br>(password recovery, user withdrawal, terms of service, etc.) <br> - Logging ML function operations to the database <br> - Implementation of ML project management features<br>(project information, structure, and model storage path) <br> - Implementation of ML project information(SQL), structure(NoSQL), and model storage path(NoSQL) DB storage functionalities | - SQL: Storage of data in ML project information(ml_project) |

### Other Parts: Deep Learning, Data Engineering, Data Analysis

- **Deep Learning (DL):** Deployment of DL models + Integration with Frontend
- **Data Engineering (DE):** Implementation of the data engineering process for retrieving and processing data from the database
- **Data Analysis (DA):** Retrieval and analysis of data from the database after the engineering process + Extracting insights

#### ※ Supplementary Goals

- **Frontend:** Implementation of the user membership payment screen
- **Backend:** Implementation of user membership payment functionality
- **Database:** Reflecting the user membership payment status in the user table data
