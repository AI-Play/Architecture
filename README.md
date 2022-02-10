# AI-Play Architecture
A simple introduce of our project architecture (temporary)

![Architecture Overview](https://user-images.githubusercontent.com/73585246/152648288-f4d44660-86f2-4e24-8b6d-76ea7c31d76f.png)

## Phase 1 : MalLang MalLang(말랑말랑) - 임시 제목
- 딱딱하게만 느껴진 머신 러닝을 **말랑말랑**하게 할 수 있다!
- Machine Learning을 잘 알지 못해도 ML Model을 만들 수 있게 해주는 웹 어플리케이션
- GUI 방식(마우스 클릭 + 간단한 값 입력)만으로 ML Process(Data EDA, Feature Engineering, Training, ...) 수행 가능

![Project Structure - Phase 1](https://user-images.githubusercontent.com/73585246/153371805-3bbf1b00-191e-43f6-a8c9-32e12354c2d3.png)

## Phase 2 : AI Play(인공지능 놀이)
- AI가 뭔지 궁금해요? 일단 재밌게 놀아봐요!
- ML과 함께 Deep Learning을 경험할 수 있는 웹 어플리케이션
- ML은 Phase 1을 기반으로 하여 기능 추가 및 고도화
- DL은 NLP, CV에 속하는 모델 몇 가지를 API 방식으로 연결하여 입력값만 넣으면 간단히 결과를 얻을 수 있게 함
  - 단순한 인풋-아웃풋보다는 모델을 체험하는 것에 흥미를 가질 수 있도록 하는 것이 목적
  - ex1. 얼굴 사진 업로드 - (Object Detection) - 닮은 과일 찾기
  - ex2. "나는 오늘 배가 고프다. 그래서" 문장 입력 - (Text Generation) - "나는 오늘 배가 고프다. 그래서 엘레강트하게 치킨을 먹어봐요 우리"

![Project Structure - Phase 1](https://user-images.githubusercontent.com/73585246/153371832-35546cca-5a23-44c8-bb01-6d534c6db6fc.png)