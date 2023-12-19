# Project Tech Stacks

<범례>

- **강조** : 사용
- _기울임_ : 미정 | 검토 필요

## Front - 경호

- Stack :
  - Framework : **React** + **TailwindCSS**
    - UI 컴포넌트 방식 -> Single Page Application 구현 가능
    - 퍼포먼스(로딩 속도 등)는 Svelte가 최상이지만, 출시된지 얼마 되지 않아 참고 자료가 부족
    - React는 공식 문서 및 다수의 사용자들이 남긴 자료가 풍부하여 막혔을 때 빠른 대응이 가능할 것으로 판단함
    - 시장 점유율이 가장 높음 -> 프론트앤드와 협업할 경우 React 사용 확률이 가장 높으므로  
      이번 기회에 학습하는 것이 장기적으로 좋을 것이라고 생각하였음
    - TailwindCSS는 이전에 사용해봤던 Bootstrap와 비교했을 때 보다 자유로운 표현이 가능하다고 판단함
  - Deploy : **PaaS - Vercel**

<br/>

## Back

### ML Funcs - 경희, 경호, 민석

- Stack :
  - Framework : **FastAPI**
    - ML 관련 기능 지원을 위해 Python 기반이어야 함
    - [Web Framework Benchmark](https://www.techempower.com/benchmarks/#section=data-r20&hw=ph&test=composite&l=zijzen-sf)에서 Flask, DJango보다 우수한 성능
    - 공식 문서 등의 참고 자료가 충분히 존재함
  - Library : Pandas + Bokeh + Scikit-learn + etc.
  - Deploy : **PaaS - Heroku** -> **AWS Lambda**
    - 수많은 EDA, 전처리 기능을 분산시켜 서버 과부하 방지

### ML Training - 경희, 경호

- Stack :
  - Framework : **FastAPI**
    - (ML Funcs와 동일한 이유)
  - Library : Pandas + Scikit-learn, joblib(|pickle)
  - Deploy : **PaaS - Heroku** -> **AWS Lambda**

### User Auth - 민석, 경호

- Stack :
  - Framework : **Django**
    - 회원가입, 로그인 등의 기능부터 사용자의 결제 관련 기능까지 취급할 것이므로 보안이 중요
    - 따라서 데이터를 주고 받는 등의 성능보다는 얼마나 안정적이고 보안 관련 기능이 지원되는지가 중요
  - Deploy : **PaaS - Heroku**

### User Project Managing - 경호

- Stack :
  - Framework : **Fastify**
    - 사용자의 머신 러닝 프로젝트 구조가 변경될 때마다 변경 사항을 자동으로 저장할 예정
    - 프로젝트 구조 데이터는 JSON 형태로 저장할 것이므로 NoSQL DB인 MongoDB와 연결 예정
    - 상당히 빈번하게 요청이 발생할 것이므로 처리 속도가 중요
    - [Web Framework Benchmark](https://www.techempower.com/benchmarks/#section=data-r20&hw=cl&test=json&l=zijybj-sf&d=e)의 JSON 직렬화에서 두 번째로 성능이 높음
      - 비교 언어는 Java, JavaScript, Python, PHP, DB는 MongoDB 기준으로 필터링한 결과
  - Deploy : **PaaS - Vercel**

### Chatting - 경희

- Stack :
  - Language : **Go**
    - ---(근거 작성 필요)---
  - Deploy : **PaaS - Heroku**

<br/>

## Database & Storage

### SQL - 민석, 경호

- stack
  - DB : **PostgreSQL**
    - 오픈 소스이므로 상업적 용도 사용에도 비용 발생 없음
    - Cloud DB로 ElephantSQL 존재 with Free Plan
    - [Popularity 기준 DB 엔진 순위 4위(2022.2 기준)](https://db-engines.com/en/ranking) -> 다수의 참고 자료 존재
  - Service : **ElephantSQL**

### NoSQL - 경호

- Stack

  - DB : **MongoDB**
    - SSPL 라이센스 범위 내에서 문제 없이 사용 가능
      - MongoDB의 소스 코드를 변경하는 경우, 해당 소스 코드를 의무적으로 공개해야 함
    - Cloud DB로 MongoDB Atlas 존재 with Free Plan
    - [Popularity 기준 DB 엔진 순위 5위(2022.2 기준)](https://db-engines.com/en/ranking) -> 다수의 참고 자료 존재
  - Service : **MongoDB Atlas**

- Storage : **AWS S3**

<br/>

## etc.

- _CI/CD : Github Actions_
- Documentation : **Swagger**
- _Monitoring : (Prometheus & Grafana) | (Elasticsearch & Kibana)_
