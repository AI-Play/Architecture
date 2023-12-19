# ❇️ AI Play

## 1️⃣ Project Introduction

🏠 ~~[www.aiplay.online](www.aiplay.online)~~ -> - Because of the server cost, it is temporarily closed

### AI Play

- "Curious about AI? Let's play with it first!"
- A web application that allows users to experience deep learning alongside machine learning.
- Provides the ability to connect several models belonging to natural language processing (NLP) or computer vision (CV) through an API, allowing users to get simple results by inputting values.
  - The goal is to make experiencing the model more interesting than a simple input-output.
  - Examples: Upload a face photo - (Object Detection) - Find fruits that resemble the face.
  - Enter the sentence, "I'm hungry today. So," - (Text Generation) - "I'm hungry today. So, let's eat chicken elegantly."

### Main Service: MalLang MalLang

- Make the rigid machine learning **soft and flexible**!
- A web application service that allows users to create machine learning models even if they are not familiar with machine learning.
- The entire machine learning process (EDA, Feature Engineering, Training, ...) can be performed using a GUI (mouse click + simple value input).

### Project Function by Result Repository

| Function                                              | Repository Address                                                  |
| ----------------------------------------------------- | ------------------------------------------------------------------- |
| Web App UI                                            | [Front-Web](https://github.com/AI-Play/Front-Web)                   |
| EDA and Data Preprocessing Function API               | [ML-Funcs](https://github.com/AI-Play/ML-Funcs)                     |
| Machine Learning Model Training Function API          | [ML-Train](https://github.com/AI-Play/ML-Train)                     |
| User Account Management Function API                  | [User-Auth](https://github.com/AI-Play/User-Auth)                   |
| User Machine Learning Project Management Function API | [User-Proj-Managing](https://github.com/AI-Play/User-Proj-Managing) |
| Deep Learning Experience Function API                 | [DL-API](https://github.com/AI-Play/DL-API)                         |
| Chatting Server                                       | [Chatting](https://github.com/AI-Play/Chatting)                     |

<br/>

## 2️⃣ Production Period & Team Members

- 14 Feb 2022 - 28 Mar 2022
- Team Project: 3 members
- Team Members:
  <details>
    <summary>[Ahn Gyeongho](https://github.com/seahahn)</summary>

  - Team Leader, Overall Planning & Development
    - Proposal and planning of project ideas, design
    - Selection of technologies for the project
    - Leading team schedule and to-dos management using Github Issues and Project Kanban Board
    - Code Review of Github Pull Requests submitted by team members
    - Documentation of project content
  - Full-stack development of frontend (web app UI) and backend - Implementation and refactoring of the server for user account-related APIs (registration, login, etc.) - Implementation and deployment of the server for managing user's machine learning projects API - Implementation and deployment of the server for deep learning experience model API
  </details>
  <details>
    <summary>[Lee Kyounghee](https://github.com/KayyoungHL)</summary>

  - Development of APIs related to machine learning functions
  - Full implementation of machine learning API servers (ML-Funcs, ML-Train)
  - Implementation of the chat server
  </details>
  <details>
    <summary>[Kim Minseok](https://github.com/Library-of-jade)</summary>

  - Implementation of data visualization features
  - Implementation of the server for user account-related APIs (registration, login, etc.)
  - Deployment of machine learning and user account-related API servers
  - Database model design and implementation
  </details>

<br/>

## 3️⃣ Used Technologies

- Reason for technology selection: [tech_stacks.md](https://github.com/AI-Play/Architecture/blob/main/tech_stacks.md)

| Category     | Technology List                                                      |
| ------------ | -------------------------------------------------------------------- |
| Frontend     | React.js 17.0.2, TailwindCSS 3.0.22                                  |
| Backend      | FastAPI 0.75.0, Django 4.0.3, Fastify 3.27.2, Python 3.8.10, Go 1.17 |
| Database     | PostgreSQL(ElephantSQL), MongoDB(MongoDB Atlas) 5.0.6                |
| DevOps       | AWS (S3, Lambda), GCP (App Engine, Cloud Build), Heroku, Vercel      |
| Data Science | Pandas 1.4.1, Scikit-Learn 1.0.2, Bokeh 2.4.2                        |
| etc.         | Git · Github, JWT                                                    |

<br/>

## 4️⃣ Overall Project Structure

![Project Structure](https://user-images.githubusercontent.com/73585246/162391560-59af981e-2634-40ad-aab8-fd4141c46401.png)

<br/>

## 5️⃣ ERD

![ERD](https://user-images.githubusercontent.com/73585246/162384496-4ea3963b-e87d-4fed-9468-33c2afca07ad.png)

<br/>

## 6️⃣ Project Demonstration Video (Click to Watch)

[![Project AI-Play Presentation](https://user-images.githubusercontent.com/73585246/162387097-fadcab28-3555-4a27-9dc1-3964d140105c.png)](https://youtu.be/eAUlGmGqqqc)
