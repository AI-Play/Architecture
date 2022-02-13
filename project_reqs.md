# Project Requirements
Frontend, Backend 등 각 파트별로 충족시켜야 할 조건 목록

## Frontend
- 모바일에서도 사용 가능 -> 반응형
- 사용자가 서비스 이용 중 ML 기능 요소를 추가/수정/삭제 시 해당 부분만 변동되어야 함 -> UI Component 방식
- 기능 요소의 자리 바꿈이 가능해야 함(Drag & Drop, Button to switch, ...)
- 웹 앱 자체에 검색 노출이 되어야 할 내용이 있진 않음 (∴ SEO 신경쓰지 않아도 됨) -> CSR
  - 별도의 서비스 소개 및 안내, 회원가입 및 로그인하는 웹사이트 만들기 (SEO 필요)

## Backend
- API를 통해 기능 작동 및 결과 반환해야 함
- ML의 경우 각각의 기능이 비동기로 수행되어야 함
- ML 기능 수행을 위해서 Python 기반이어야 함
  - 어차피 대부분의 기능을 Lambda로 구현할 것이라면 굳이 Backend Server가 Python 기반일 필요는 없다고 생각함
  - 그러나 모델 학습 기능은 Lambda의 시간 제한(15분)으로 인해 올릴 수 없음
  - 따라서 모델 학습 기능을 제공할 방안 필요. 이후 Python 기반으로 진행할지, 혹은 다른 방향으로 진행할지 결정 필요
- 리소스 분산 필요(여러 사용자가 동시에 서비스 이용할 경우)
  - Lambda로 제공되는 기능에 대해서는 리소스 분산을 우려할 필요 없음
  (Lambda 자체적으로 기능 수행에 필요한 만큼만 작동되고 완료되면 사라짐)
  - 결국 모델 학습 기능 제공 방안이 문제 -> AWS Fargate + AWS ECS(or EKS) 사용 예정
- 사용자의 서비스 이용 시간 로그 저장 필요 (정형)
- 각 기능별 사용 횟수 로그 저장 필요 (정형)
- 사용자의 ML 프로젝트 정보 저장 필요 (비정형)
- 사용자가 업로드한 파일 저장 필요 (using S3)
- 사용자가 제작한 모델 저장 필요 (using S3)

## Database
- Cloud로 서비스되는 것이어야 함 (Front / Back / DB의 완전한 분리 추구)
- 상업적 목적으로 사용해도 비용 발생 없어야 함 (서비스에 유료 기능 추가 시 분쟁 발생 방지하기 위함)
- 공식 문서뿐만 아니라 커뮤니티 등 실제 사용자들이 남긴 레퍼런스가 충분해야 함 (빠른 학습 목적)
- 정형(SQL), 비정형(NoSQL) 각각 필요 - 저장 데이터가 정형, 비정형 모두 존재함
- (Cloud인 경우) 사용량 초과만 안 한다면 장기간(1년 이상) 사용해도 비용 발생하지 않아야 함
- DB Schema
  - 사용자(user) - SQL :
    - 고유 번호(idx) int(auto increment) **PK**
    - 이메일(email) string
    - 비밀번호(pw) string(hashed)
    - 닉네임(nickname) string
    - 멤버십 구분(membership) boolean(0 | 1)
    - 최종 접속 시점(last_in) datetime
    - 가입 시점(created_at) datetime (auto)

  - 사용자 서비스 이용 시간 + 기능별 사용 횟수 체크(func_log) - SQL :
    - 사용자 고유 번호(user_idx) int(auto increment) **FK**
    - 기능 고유값(func_code) **int or string (논의 필요)**
    - 정상 작동 여부(is_worked) boolean(0 | 1)
    - 작동 시작 시각(start_time) datetime
    - 작동 종료 시각(end_time) datetime
    - 생성 시점(created_at) datetime (auto)

  - ML 프로젝트 정보(ml_project) - SQL :
    - 고유 번호(idx) int **PK**
    - 사용자 고유 번호(user_idx) int **FK**
    - 프로젝트명(proj_name) string
    - 최종 수정 시점(last_update) datetime
    - 생성 시점(created_at) datetime (auto)

  - ML 프로젝트 구조(ml_proj_structure) - NoSQL :
    - 사용자 번호(user_idx)
      - 프로젝트 번호(proj_idx)
        - 데이터 준비(EDA, 전처리) 파트(preparing)
          - 기능명
            - 기능 항목 : 항목 값
            - 기능 항목 : 항목 값
            - ...
          - 기능명
            - 기능 항목 : 항목 값
            - 기능 항목 : 항목 값
            - ...
          - ...
        - 모델 제작 파트(training)
          - 기능명
            - 기능 항목 : 항목 값
            - 기능 항목 : 항목 값
            - ...
          - 기능명
            - 기능 항목 : 항목 값
            - 기능 항목 : 항목 값
            - ...
          - ...

  - ML 모델 저장 경로(ml_model_path) - NoSQL :
    - 프로젝트 번호
      - 모델 파일명 : 모델 파일 S3 주소
      - 모델 파일명 : 모델 파일 S3 주소
      - ...

  - 채팅 메시지 기록(chat_log) - **SQL or NoSQL (논의 필요)** :
    - 사용자 번호(user_idx) int
    - 닉네임(user_nick) string
    - 채팅 내용(content) string
    - 생성 시점(created_at) datetime (auto)

## etc.
- 모델 학습 완료 시 사용자 메일로 알림 발송