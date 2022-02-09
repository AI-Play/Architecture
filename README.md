# AI-Play Architecture
A simple introduce of our project architecture (temporary)

![Architecture Overview](https://user-images.githubusercontent.com/73585246/152648288-f4d44660-86f2-4e24-8b6d-76ea7c31d76f.png)

## Phase 1 : MalLang MalLang(말랑말랑) - 임시 제목
- 딱딱하게만 느껴진 머신 러닝을 **말랑말랑**하게 할 수 있다!
- Machine Learning을 잘 알지 못해도 ML Model을 만들 수 있게 해주는 웹 어플리케이션
- GUI 방식(마우스 클릭 + 간단한 값 입력)만으로 ML Process(Data EDA, Feature Engineering, Training, ...) 수행 가능

![Project Structure - Phase 1](https://user-images.githubusercontent.com/73585246/153166716-d67c515b-dba1-4187-bedb-7fe2674df96b.png)

## Phase 2 : AI Play(인공지능 놀이)
- AI가 뭔지 궁금해요? 일단 재밌게 놀아봐요!
- ML과 함께 Deep Learning을 경험할 수 있는 웹 어플리케이션
- ML은 Phase 1을 기반으로 하여 기능 추가 및 고도화
- DL은 NLP, CV에 속하는 모델 몇 가지를 API 방식으로 연결하여 입력값만 넣으면 간단히 결과를 얻을 수 있게 함
  - 단순한 인풋-아웃풋보다는 모델을 체험하는 것에 흥미를 가질 수 있도록 하는 것이 목적
  - ex1. 얼굴 사진 업로드 - (Object Detection) - 닮은 과일 찾기
  - ex2. "나는 오늘 배가 고프다. 그래서" 문장 입력 - (Text Generation) - "나는 오늘 배가 고프다. 그래서 엘레강트하게 치킨을 먹어봐요 우리"

![Project Structure - Phase 1](https://user-images.githubusercontent.com/73585246/153166764-01720f29-fa38-4a0b-855c-8132f8c58d10.png)