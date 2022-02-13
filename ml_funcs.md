# Machine Learning Functions

**!!! 머신 러닝 기능은 최종적으로 AWS Lambda(or else)를 이용해 Serverless로 제공하는 것이 목표 !!!**
**!!! 머신 러닝 기능은 최종적으로 AWS Lambda(or else)를 이용해 Serverless로 제공하는 것이 목표 !!!**
**!!! 머신 러닝 기능은 최종적으로 AWS Lambda(or else)를 이용해 Serverless로 제공하는 것이 목표 !!!**

## Project Phase 1(MLML)에서 구현할 머신 러닝 관련 기능 목록

순서와 중요도는 상관 없습니다.

확인 후 추가해야 할 기능이 있다면 repository의 issue에 남겨주세요.
형식 : 파트 이름 - 대분류 번호 - 추가할 기능
ex. ml - 1 - 행 열 자리 바꾸기(transpose)

※ 기능 구현의 난이도 혹은 비용이 높은 경우 Phase 2(AI Play)에서 구현하기

### 1. EDA (데이터 탐색)
- 데이터셋 업로드(csv, xlsx, ...)
- 데이터프레임 만들기(read_csv, ...)
- 데이터 조회(head, tail, ...)
- 형태 확인(shape)
- 데이터 타입 확인(dtypes)
- 데이터 분포 확인(describe)
- 컬럼 목록 조회(df.columns)
- 컬럼 내 고유값 조회(unique)
- 결측치 확인(isna)
- 이상치 확인
- 상관 관계 확인(df.corr())
- 데이터 그룹핑(groupby)
- 행 열 자리 바꾸기(transpose)

### 2. Feature Engineering (특성 공학)
- 특정 데이터만 가져오기(loc, iloc, 슬라이싱, 조건문, ...)
- 행 or 열 제거(drop)
- 결측치 제거(dropna)
- 이상치 제거
- 컬럼 추가
- 컬럼명 변경(rename, ...)
- 데이터프레임 정렬(sort_values)
- 데이터프레임 합치기(concat, merge)

### 3. Visualization (시각화)
- boxplot
- histplot
- countplot
- scatterplot
- barplot

### 4. Machine Learning Model Making (머신 러닝 모델 만들기)
- 특성 / 타겟 분리하기
- 훈련 / 검증 / 테스트 데이터셋 나누기(train_test_split)
- 인코더 : One-hot, Target, Ordinal, ...
- 타겟 클래스 비중 계산(class weight)

- 회귀 : Linear, Ridge, Decision Tree, Random Forest, Boosting, ...
- 분류 : Logistic, Decision Tree, Random Forest, Boosting, ...
- 튜닝 : Grid, Randomized, ...
- 평가지표
  - 회귀 : Accuracy, MSE, MAE, R Squared, ...
  - 분류 : Accuracy, Precision, Recall, F1 Score, AUC Score, ROC Curve, ...

### 5. Model Interpretation (모델 해석)
- 특성 중요도 / 순열 중요도
- PDP
- SHAP

### 6. Model Saving & Loading (모델 저장 & 불러오기)
- 모델 저장하기
- 모델 불러오기