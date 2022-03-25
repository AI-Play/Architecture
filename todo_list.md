# Project Todo List (WebApp)

각각의 Milestone을 세분화하여 만든, 프로젝트 기간 동안 진행할 작업 목록입니다. (WebApp Team 기준)
각각의 작업 번호는 작업해야 할 순서라고 생각하시면 됩니다.
번호가 동일한 경우, 동일한 우선 순위를 가진 것입니다.

## Phase 1

### Frontend

**※ 구현 방식 : Bottom-up, Component-Driven Development**  
**※ 범례**  
[] : 모양은 같거나 비슷하지만 세부 내용이 다른 컴포넌트들이 함께 있는 경우  
{} : 모양과 세부 내용이 다르지만 같거나 비슷한 역할인 컴포넌트들이 함께 있는 경우

- [ ] 0. (Optional) 화면 설계 문서화 (using Adobe XD | Figma | Framer)
- [x] 1. 주요 컴포넌트 구현
  - [x] (1) 상단 Nav : 햄버거 버튼(좌 Sidebar Open/Close), 프로젝트명, 마지막 저장 시점, 채팅 버튼, 프로필 버튼
  - [x] (2) 좌측 Sidebar : [버튼], 구분선, [버튼]
    - 버튼 : 아이콘, 텍스트
  - [x] (3) 우측 Sidebar : ~~상단 Tab-Nav~~, ML 기능 ~~탭~~, ~~프로젝트 정보 탭~~->서비스 이용 현황 Modal
    - [x] (3-1) ~~상단 Tab-Nav : _기능(Function)$^*$$^1$ 버튼, 프로젝트 정보(Info)$^*$$^2$ 버튼_~~
    - [x] (3-2) ML 기능 ~~탭~~ : [ML 기능 분류 영역]
      - ML 기능 분류 영역 : 영역명, [기능 선택 버튼]
        - 기능 선택 버튼 : 텍스트
    - [x] (3-3) _서비스 이용 현황 ~~탭~~Modal : 사용자 모델 목록, 서비스 사용량_ -> _별도의 Modal 구현으로 변경_
      - 사용자 모델 목록 : 영역명, [모델 아이템]
        - 모델 아이템 : 모델명, 사이즈, 수정 아이콘, 삭제 아이콘
      - 서비스 사용량 : 영역명, _프로젝트 수, 모델 개수, 모델 용량_ -> _미확정_
  - [x] (4) 중앙 Container : [_프로세스 블록(Process Block)$^*$$^3$_] -> _명칭 미확정_
    - 프로세스 블록 : [_ML 기능 분류 영역$^*$$^4$_], _저장/불러오기_ -> _명칭 미확정_
      - ML 기능 분류 영역 : 영역명, 실행 버튼, 요소 목록 숨김 버튼, [_기능 관련 요소$^*$$^5$_] -> _명칭 미확정_
        - 기능 관련 요소 : 기능명, 실행 버튼, 옵션 숨김 버튼, 결과 숨김 버튼, {옵션명 : 옵션 값, ...}
- [x] 2. 보조 컴포넌트 구현
  - [x] (1) 새 프로젝트 만들기 Modal : 제목 입력란, 확인 버튼, 취소 버튼
  - [x] (2) 프로젝트 열기 Modal : 프로젝트 목록([아이템] 포함), 확인 버튼, 취소 버튼
    - 프로젝트 목록 아이템 : 프로젝트명, 수정 버튼, 삭제 버튼
  - [x] (3) 채팅창 Modal : 채팅 메시지 출력 영역([메시지] 포함), 최소화 버튼, 닫기 버튼, 메시지 입력란, 전송 버튼
    - 채팅 메시지 : 사용자 프로필 사진, 사용자 닉네임, 사용자 메시지, 메시지 전송 시각
  - [x] (4) 사용자 프로필 Modal : 사용자 프로필 사진, 사진 수정 버튼, 사용자 닉네임 텍스트, 닉네임 수정 버튼, 사용자 이메일 텍스트, 로그아웃 버튼, 회원 탈퇴 버튼
  - [x] (5) 사용자 회원가입, 로그인, 비밀번호 찾기
    - 회원가입 양식 : 이메일 입력란, 이메일 인증 번호 발송 버튼, 인증 번호 입력란, 비밀번호 입력란, 닉네임 입력란, 약관 동의 체크박스, 회원가입 버튼, 뒤로 가기 버튼
    - 로그인 양식 : 이메일 입력란, 비밀번호 입력란, 로그인 버튼, 회원가입 버튼, 비밀번호 찾기 버튼
    - 비밀번호 찾기 : 이메일 입력란, 이메일 인증 번호 발송 버튼, 인증 번호 입력란, 새 비밀번호 입력란
- [x] 3. 색상, 레이아웃 등의 디자인 요소 적용

> *1 : ML 관련 EDA, 전처리, 모델 학습 등의 기능을 선택할 수 있는 Tab으로 이동  
> *2 : 프로젝트에서 저장한 모델 목록과 각각의 정보, 그리고 사용자 계정의 현재 서비스 사용량 정보 확인 가능한 Tab으로 이동  
> *3 : 각각의 블록마다 1개의 데이터셋을 갖고, 이를 토대로 EDA & 전처리 -> 모델 학습 -> 모델 평가&해석 으로 이어지는 과정 수행이 가능함  
> *4 : *3에서 언급된 (EDA & 전처리) / (모델 학습) / (모델 평가 & 해석) 각각의 묶음을 '영역'이라고 임시로 지칭하였음  
> *5 : \*4에서 언급된 각 영역별로 포함되는 기능들을 뜻함. ex) EDA & 전처리 (영역) -> 데이터 형태 확인(shape) (기능)

---

### Backend

#### 1. ML Functions 기능 API 서버 구축

**※ 아래의 "3. ML 기능 작동 로그 DB(func_log)에 저장" 고려하여 구현하기**

- **1. EDA (데이터 탐색)**

  - [x] 1-1. 데이터셋 업로드(csv, xlsx, ...)
  - [x] 1-2. 데이터프레임 만들기(read_csv, ...)
  - [x] 1-3. 데이터 조회(head, tail)
  - [x] 1-4. 데이터 형태 확인(shape)
  - [x] 1-5. 데이터 타입 확인(dtypes)
  - [x] 1-6. 데이터 분포 확인(describe)
  - [x] 1-7. 컬럼 목록 조회(columns)
  - [x] 1-8. 컬럼 내 고유값 조회(unique)
  - [x] 1-9. 데이터 결측치 확인(isna)
  - [ ] 1-10. _데이터 이상치 확인 - 구현 방안 논의 필요_
  - [x] 1-11. 데이터 상관 관계 확인(corr())
  - [x] 1-12. 데이터 그룹핑(groupby)
  - etc.

- **2. Feature Engineering (특성 공학)**

  - [x] 2-1. 특정 데이터만 가져오기(loc, iloc, 슬라이싱, 조건문, ...)
  - [x] 2-2. 행 또는 열 제거(drop)
  - [x] 2-3. 데이터 결측치 제거(dropna)
  - [ ] 2-4. _데이터 이상치 제거 - 구현 방안 논의 필요_
  - [x] 2-5. 컬럼 추가
  - [x] 2-6. 컬럼명 변경(rename, ...)
  - [x] 2-7. 데이터프레임 정렬(sort_values)
  - [x] 2-8. 데이터프레임 합치기(concat, merge, ...)
  - [x] 2-9. 행 열 자리 바꾸기(transpose)
  - etc.

- **3. Visualization (시각화)**

  - [x] 3-1. boxplot
  - [x] 3-2. histplot
  - [x] 3-3. countplot
  - [x] 3-4. scatterplot
  - [ ] ~~3-5. barplot~~
  - etc.

- **4. Data Preparation(학습 데이터 준비)**
  - [x] 4-1. 특성 / 타겟 분리하기
  - [x] 4-2. 훈련 / 검증 / 테스트 데이터셋 나누기(train_test_split, ~~시계열~~)
  - [x] 4-3. Encoder : One-hot, Target, Ordinal, ...
  - [x] 4-3. Scaler : Standard, MinMax, ...
  - [ ] 4-4. _타겟 클래스 비중 계산(class weight) - 구현 방안 논의 필요_
  - etc.

#### 2. ML Training 기능 API 서버 구축

**※ 아래의 "3. ML 기능 작동 로그 DB(func_log)에 저장" 고려하여 구현하기**

- **1. Model Training(모델 학습)**

  - 1-1. Regression Model(회귀)
    - [x] 1-1-1. Linear
    - [x] 1-1-2. Ridge
    - [x] 1-1-3. Decision Tree
    - [x] 1-1-4. Random Forest
    - [ ] 1-1-5. Boosting
    - etc.
  - 1-2. Classification Model(분류)
    - [x] 1-2-1. Logistic
    - [x] 1-2-2. Decision Tree
    - [x] 1-2-3. Random Forest
    - [ ] 1-2-4. Boosting
    - etc.
  - 1-3. Model Hyper-parameter Tuning(모델 튜닝)
    - [ ] 1-3-1. Grid
    - [ ] 1-3-2. Randomized
    - etc.

- **2. Model Evaluation(모델 평가)**

  - 2-1. Regression(회귀)
    - [x] 2-1-1. Mean Squared Error(MSE)
    - [x] 2-1-2. Mean Absolute Error(MAE)
    - [x] 2-1-3. R-Squared
    - etc.
  - 2-2. Classification(분류)
    - [x] 2-2-1. Accuracy
    - [x] 2-2-2. Precision
    - [x] 2-2-3. Recall
    - [x] 2-2-4. F1 Score
    - [ ] 2-2-5. Confusion Matrix
    - [x] 2-2-6. AUC Score
    - [ ] 2-2-7. ROC Curve
    - etc.

- **3. Model Interpretation(모델 해석)**

  - [ ] 3-1. Feature Importance(특성 중요도)
  - [ ] 3-2. Permutation Importance(순열 중요도)
  - [ ] 3-3. Partial Dependence Plot(PDP)
  - [ ] 3-4. SHapley Additive exPlanations(SHAP)
  - etc.

- **4. Model Saving & Loading (모델 저장 및 불러오기)**
  - [x] Model Save(모델 저장)
  - [ ] Model Load(모델 불러오기) -> **모델 다운로드 기능 추가 필요**

#### 3. ML 기능 작동 로그 DB(func_log)에 저장

- [ ] 0. 각 기능별 고유값(func_code) 지정
- [ ] 1. 각 기능별 정상 / 비정상 작동 구분
- [ ] 2. 각 기능별 작동 시작 / 종료 시각 기록
- [ ] 3. 각 기능별 작동 결과를 DB에 저장하기

#### 3. 사용자 계정 관련 기능 구현

- [ ] 0. 개인정보처리방침, 서비스 이용 약관 작성
- [x] 1. 회원가입 기능
- [x] 2. 로그인 / 로그아웃 기능
- [x] 3. 비밀번호 찾기 기능
- [x] 4. 사용자 정보 변경 기능
- [x] 5. 회원 탈퇴 기능

#### 4. ML Functions, ML Training 기능 API 서버에 K8s 적용

- 0. ML Functions, ML Training 기능 API 서버 각각 PaaS에 **컨테이너 형식**으로 배포
  - [ ] ML-Funcs
  - [ ] ML-Train
- 1. ML Functions, ML Training 기능 API 서버 각각 PaaS에 **K8s 적용**하여 배포
  - [ ] ML-Funcs
  - [ ] ML-Train

---

### DB

#### SQL

- 1. RDB 테이블 설계
  - [x] 1-1. DB 요구사항 정리 및 문서화
  - [ ] 1-2. 개체-관계 도출
  - [ ] 1-3. UML(Unified Modeling Language) 작성
- 2. RDB 테이블 구현
  - [x] 2-1. 설계 내용 구현할 SQL 스크립트 작성
  - [x] 2-2. SQL 스크립트 작동 테스트
  - [x] 2-3. 스크립트 실행 -> DB 구현
