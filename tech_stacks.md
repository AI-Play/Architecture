# Project Tech Stacks

<Legend>

- **Bold** : In use
- _Italic_ : Undecided | Needs review

## Front - Gyeongho

- Stack :
  - Framework : **React** + **TailwindCSS**
    - UI component-based -> Enables Single Page Application implementation
    - Performance (loading speed, etc.) is superior in Svelte, but it has been released for a short time, so there is a lack of reference material
    - React has abundant reference materials in official documentation and from many users, making quick responses possible when stuck
    - Highest market share -> When collaborating with frontend, the probability of using React is the highest, so learning it at this opportunity is considered beneficial in the long run
    - Compared to Bootstrap, TailwindCSS allows more flexible expressions
  - Deploy : **PaaS - Vercel**

<br/>

## Back

### ML Funcs - Kyounghee, Gyeongho, Minseok

- Stack :
  - Framework : **FastAPI**
    - Should be Python-based for ML-related functionality support
    - Superior performance compared to Flask and Django in [Web Framework Benchmark](https://www.techempower.com/benchmarks/#section=data-r20&hw=ph&test=composite&l=zijzen-sf)
    - Sufficient reference materials available in official documentation and more
  - Library : Pandas + Bokeh + Scikit-learn + etc.
  - Deploy : **PaaS - Heroku** -> **AWS Lambda**
    - Distribute numerous EDA and preprocessing functions to prevent server overload

### ML Training - Kyounghee, Gyeongho

- Stack :
  - Framework : **FastAPI**
    - (Same reasons as ML Funcs)
  - Library : Pandas + Scikit-learn, joblib(|pickle)
  - Deploy : **PaaS - Heroku** -> **AWS Lambda**

### User Auth - Minseok, Gyeongho

- Stack :
  - Framework : **Django**
    - Security is crucial as it handles functions from user registration and login to user's payment-related functions
    - Stability and support for security features are more important than performance in terms of data exchange
  - Deploy : **PaaS - Heroku**

### User Project Managing - Gyeongho

- Stack :
  - Framework : **Fastify**
    - Automatically save changes whenever the user's machine learning project structure changes
    - Intend to connect project structure data to MongoDB, a NoSQL DB, as it will be stored in JSON format
    - Speed is crucial as requests are expected to occur frequently
    - Second-highest performance in JSON serialization in [Web Framework Benchmark](https://www.techempower.com/benchmarks/#section=data-r20&hw=cl&test=json&l=zijybj-sf&d=e)
      - Compared languages are Java, JavaScript, Python, PHP, and filtered based on MongoDB as the DB
  - Deploy : **PaaS - Vercel**

### Chatting - Kyounghee

- Stack :
  - Language : **Go**
    - ---(Need to provide evidence)---
  - Deploy : **PaaS - Heroku**

<br/>

## Database & Storage

### SQL - Minseok, Gyeongho

- Stack
  - DB : **PostgreSQL**
    - No cost for commercial use as it is open source
    - ElephantSQL available as a Cloud DB with a Free Plan
    - Ranked 4th in [Popularity-based DB Engine Ranking (as of 2022.2)](https://db-engines.com/en/ranking) with plenty of reference material
  - Service : **ElephantSQL**

### NoSQL - Gyeongho

- Stack

  - DB : **MongoDB**
    - Usable within the scope of SSPL license without issues
      - When modifying MongoDB's source code, the modified source code must be disclosed
    - MongoDB Atlas available as a Cloud DB with a Free Plan
    - Ranked 5th in [Popularity-based DB Engine Ranking (as of 2022.2)](https://db-engines.com/en/ranking) with plenty of reference material
  - Service : **MongoDB Atlas**

- Storage : **AWS S3**

<br/>

## etc.

- _CI/CD : Github Actions_
- Documentation : **Swagger**
- _Monitoring : (Prometheus & Grafana) | (Elasticsearch & Kibana)_
