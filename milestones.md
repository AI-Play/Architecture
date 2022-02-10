# Project Milestones

프로젝트 기간 동안 달성해야 할 세부 목표들의 목록입니다.
크게 Phase 1과 Phase 2로 구분하였으며, 그 안에서 Frontend / Backend / DB 로 나누어 설정했습니다.

## Phase 1 : GUI 방식의 Machine Learning Model Making Web App 구현

|우선 순위|Frontend|Backend|Database|
|:-:|-|-|-|
|필수 목표|- GUI 방식의 ML 기능 이용에 필요한 페이지 및 UI 컴포넌트 구현 <br><br> -사용자의 ML 프로젝트 관리 화면 제작<br>(프로젝트 목록 등)|- ML Functions 기능 API를 제공하는 서버 구축<br><br> - ML Training 기능 API를 제공하는 서버 구축|- SQL : 테이블 설계 및 구현 완료 <br><br> - NoSQL : 없음 (Phase 2에서 진행)|
|추가 목표|- 사용자 회원가입, 로그인 양식 제작 <br><br> - 색상 및 간단한 레이아웃 디자인 적용<br>(버튼 모양, 요소 테두리 등)|- ML 기능 API 서버에 K8s 적용 <br><br> - 사용자 회원가입, 로그인 기능 구현 <br><br> - ML 기능 작동 로그를 DB 연결하여 저장|- SQL : 사용자(user), 기능 사용 로그(func_log) 테이블에 데이터 저장 <br><br> - NoSQL : 없음 (Phase 2에서 진행)|



## Phase 2 : Phase 1 Upgrade + 여러 가지 Deep Learning 모델 체험 가능한 웹 앱 구현 + @

|우선 순위|Frontend|Backend|Database|
|:-:|-|-|-|
|필수 목표|- 서비스 소개 페이지 제작(사용자 회원가입, 로그인 기능 포함) <br><br> - 완성된 Deep Learning 모델에 맞춰서 모델 사용 가능한 페이지(컴포넌트) 제작|- ML Functions 기능을 Serverless(AWS Lambda)로 옮기기 <br><br> - ML Training 기능을 Serverless(AWS Fargate + ECS)로 옮기기 <br><br> - 사용자 회원가입, 로그인 등의 기능 구현<br>(비밀번호 찾기, 회원 탈퇴 및 서비스 이용 약관 등 포함) <br><br> - ML 기능 작동 로그 DB에 저장 <br><br> - 사용자의 ML 프로젝트 관리 기능 구현<br>(프로젝트 정보, 구조 및 모델 저장 경로) <br><br> - ML 프로젝트 정보(SQL)와 구조(NoSQL), 모델 저장 경로(NoSQL) DB 저장 기능 구현<br><br> - 사용자의 ML 모델 파일 S3에 저장 기능 구현|- SQL : ML 프로젝트 정보(ml_project) 테이블에 데이터 저장 <br><br> - NoSQL : ML 프로젝트 구조(ml_proj_structure), 모델 저장 경로(ml_model_path) 컬렉션에 데이터 저장|
|추가 목표|- 공개 채팅방 기능 추가<br><br> - 디테일한 디자인 적용하기(기존 컴포넌트 색상, 디자인부터 컴포넌트 애니메이션 등)|- 관리자 기능 : <br> └ 사용자 목록 조회 및 관리 기능<br> └ ML 기능들의 사용 현황 대시보드 기능<br> └ 서버 리소스 모니터링 기능 <br><br> - 채팅 서버 구현 + Frontend에 연결|없음|

### Other Parts : Deep Learning, Data Engineering, Data Analysis
- DL : DL 모델 배포 + Frontend에 연결
- DE : DB의 데이터를 꺼내어 가공하는 데이터 엔지니어링 과정 구현
- DA : 엔지니어링 과정을 거친 데이터가 저장된 DB에서 데이터를 꺼내 분석 + 인사이트 도출

#### ※ 번외 목표
- Frontend : 사용자 멤버십 결제 화면 구현
- Backend : 사용자 멤버십 결제 기능 구현
- Database : 사용자 멤버십 결제 여부 사용자(user) 테이블 데이터에 반영