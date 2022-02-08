# Project Tech Stacks

<범례>
- **강조** : 사용 예정
- _기울임_ : 미정 | 검토 필요

## Front - 경호
- Stack :
  - Framework : (**React**(Next.js) | Vue(Nuxt.js) | Svelte(SvelteKit)) + TailwindCSS
    - UI 컴포넌트 방식 -> Single Page Application 구현 가능
    - 퍼포먼스(로딩 속도 등)는 Svelte가 최상이지만, 출시된지 얼마 되지 않아 참고 자료가 부족
    - React는 공식 문서 및 다수의 사용자들이 남긴 자료가 풍부하여 막혔을 때 빠른 대응이 가능할 것으로 판단함
    - 시장 점유율이 가장 높음 -> 프론트앤드와 협업할 경우 React 사용 확률이 가장 높으므로  
      이번 기회에 학습하는 것이 장기적으로 좋을 것이라고 생각하였음
  - Deploy : AWS EC2 -> _PaaS_

## Back

### ML Funcs - 경희, 경호, 민석(DevOps)
- Stack :
  - Framework : Flask | **FastAPI**
    - ML 관련 기능 지원을 위해 Python 기반이어야 함
    - [Web Framework Benchmark](https://www.techempower.com/benchmarks/#section=data-r20&hw=ph&test=composite&l=zijzen-sf)에서 Flask, DJango보다 우수한 성능
    - 공식 문서 등의 참고 자료가 충분히 존재함
  - Library : Modin(|Dask) + Bokeh + Scikit-learn + etc.
  - Deploy : AWS Lambda (+ Step Functions) -> _PaaS_ with Docker & K8s
    - 수많은 EDA, 전처리 기능을 분산시켜 서버 과부하 방지

### ML Training - 경희, 경호, 민석(DevOps)
- Stack :
  - Framework : Flask | **FastAPI**
    - (ML Funcs와 동일한 이유)
  - Library : Modin(|Dask) + Scikit-learn, _joblib(|pickle)_
  - Deploy : AWS Fargate + AWS ECS(|EKS) -> _PaaS_ with Docker & K8s
            (|containers with K8s in AWS EC2)

### User Funcs - 경호
- Stack :
  - Framework :
    - Python : Flask | DJango | FastAPI
    - NodeJS : Express | Nest.js
    - Java : Spring
    - PHP : CI | Laravel
  - Deploy : AWS Lambda (+Step Functions) -> _PaaS_
            (|AWS EC2)

### Chatting - 경희
- Stack : 
  - Language : **Go**
    - ---(근거 작성 필요)---
  - Deploy : AWS EC2 -> _PaaS_

## Database & Storage

### SQL 
- stack 
  - DB : **PostgreSQL**
    - 오픈 소스이므로 상업적 용도 사용에도 비용 발생 없음
    - Cloud DB로 ElephantSQL 존재 with Free Plan
    - [Popularity 기준 DB 엔진 순위 4위(2022.2 기준)](https://db-engines.com/en/ranking) -> 다수의 참고 자료 존재
  - Service : AWS RDS -> ElephantSQL

### NoSQL
- Stack
  - DB : **MongoDB**
    - SSPL 라이센스 범위 내에서 문제 없이 사용 가능
      - MongoDB의 소스 코드를 변경하는 경우, 해당 소스 코드를 의무적으로 공개해야 함
    - Cloud DB로 MongoDB Atlas 존재 with Free Plan
    - [Popularity 기준 DB 엔진 순위 5위(2022.2 기준)](https://db-engines.com/en/ranking) -> 다수의 참고 자료
  - Service : **MongoDB Atlas**

- Storage : **AWS S3** | Google Cloud Storage

## etc.
- CI/CD : Github Actions
- Documentation : Swagger
- Monitoring : (Prometheus & Grafana) | (Elasticsearch & Kibana)