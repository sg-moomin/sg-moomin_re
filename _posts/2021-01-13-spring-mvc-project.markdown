---
layout: post
title:  "Spring MVC project version 1"
date:   2021-01-13 14:46:00
img:
description: Spring MVC를 이용하여 웹 페이지 제작 vo1 : Spring MVC을 이해하자
---

우선 Spring Mvc를 이용해서 웹 페이지를 만드는 걸 주로 했는데

기록으로 남긴건 항상 포토폴리오를 제외하고는 없었다.

그래서 이번 기회에 기록으로 남겨볼 생각이다.

포스팅이 얼마나 많아질 지 모르지만 이론부터 실습까지 제작할 생각이다. 

---

우선 Spirng MVC라는 말은 엄청 들었을것이라고 생각된다.

![springMvcimge1](https://blog.kakaocdn.net/dn/re9KF/btqSKMaNcB0/rFan6TZbyGkWcWokjiRl2k/img.png)

위의 이미지는 실제 md 파일로 SpringMVC와 관련해서 이론적인 부분을 정리해놓은 파일이 있구 

이 파일을 기반으로 간단하게 설명 후 바로 코드로 넘어가도록 하겠습니다.

**우선 Spinrg FrameWork에 대해서 이해하는 것이 중요하다.**

**Spring FrameWork는 자바 엔터프라이즈 개발을 편하게 해주는 오픈소스 프레임워크!**

**더 쉽게 말한다면 자바 프레임 워크 중 하나!**

**Spring은 유연성과 속도가 좋고 다양한 기능들을 제공해주기 때문에 웹을 제작하기 수월하다. **

**Spring Core를 알면 좋지만 이부분은 추후에 설명할 예정 **

**그래도 핵심 Core로는 AOP, PSA, IOC/DI가 있다.**

---

Spirng은 대략 자바 프레임 워크로 웹 개발에 도움되는 것이라는 걸 인지했는데 

**그렇다면 MVC는 무엇일까?**

![springMvcimge1](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FczzmGU%2FbtqSIYWTCJ4%2FjiaSbBDjBqvBc7cnywy4r1%2Fimg.png)

**MVC는 말 그대로 Model, View, Controller이다.**

**MVC패턴은 결국에는 "어떻게 구조를 나눌 것인지"라는 부분을 인식하면 된다.**

---

아직 MVC 패턴에 대해 잘 이해가 안되기 때문에 사용자 입장에서 보도록 하자 

![springMvcimge1](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FpYsnV%2FbtqSKMBVz3h%2Fb8kaYjceqRxaA57ZFCcTek%2Fimg.png)

**즉 사용자는 Controller을 조작하거나 무언가 요청을 했을 때!**

**Controller는 Model을 통해서 사용자가 요구하는 데이터를 호출하고 **

**그 정보들을 기반으로 시각적인 표현을 담당해주는 View를 이용해서**

**사용자가 요청했던 조건에 대한 값을 반환해주는 구조가 된다.**

대략 이런 흐름을 알게 된다면 이해하는 건 쉬워진다.

---

이제 그러면 이론적인 부분으로 MVC에서 강조하는 Model, View, Controller에 대해 간단하게 알아보자!

![springMvcimge1](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbkcJ0h%2FbtqSIZIjK11%2FMvbcUd3uR9xb0Lkt679HKk%2Fimg.png)

위에 그림들로 설명했던 내용을 이해했다면 조금 쉽게 이론적인 부분도 이해가 될것이다. 

결론적으로 MVC라는 건 

**Model은 데이터를 가공하는 모델**

**View는 Jsp, Html과 같이 사용자들이 직접 볼 수 있는 화면 **

**Controller는 이벤트를 처리 담당!**

---

여기까지 Spring MVC에 대한 이론을 알아봤는데 사실 Spring MVC의 이론을 아는 것도 중요하지만 

DispatcherServlet, Maven 라는 개념을 알아야 한다. 

**DispatcherServlet이란?**

**Http 프로토콜을 통해서 들어오는 모든 요청을 프레젠테이션 계층 제일 앞에서 중앙집중식으로 처리해주는 컨트롤러!**

이렇게 말한다면 처음 시작하는 사람들에게는 물음표만 생길 것이다. 

그래서 좀 더 이해를 돕기 위해 그림을 보여주면 

![springMvcimge1](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCH5f4%2FbtqSASDwJ1y%2FggNMKl8mPMHWdsyIkHO6Zk%2Fimg.png)
위의 그림을 보면 조금 이해가 될것이라고 생각된다. 

**말 그대로 Http 요청이 들어왔을 때 DispacherServlet과 FrontController가 요청을 받아서 Controller에게 **

**처리를 넘기는 역할을 한다고 보면 된다!**

**넘긴 후에는 컨트롤러 -> 모델 -> 뷰를 거쳐서 결과 값을 Http 요청에 대해 반환해주게 된다 . **

위의 그림을 이해한다면 굳이 이론적인 내용을 암기할 필요는 없다고 생각된다. 

그래도 혹시 모르니 요약해서 적어보면 

**DispatcherServlet -> Web에서 모든 요청을 받은 후 결과를 되돌려주는 창구 역할 **

**FrontController -> 요청을 받은 후 컴포넌트로 요청을 전송할 지 결정 후 처리를 위임하는 역할**

이런 컨트롤러나 서블릿이 필요한 이유는?

**다양한 요청을 한곳으로 집중시켰을 때 개발 및 유지보수에 대한 효율성이 극대화 할 수 있기 때문!**

---

대략적으로 DispacherServlet에 대해 알아봤는데

이제 Maven이 뭐길레 중요하다고 앞에서 강조했는지 한번 알아보도록 하자!

**Maven이란 자바 프로젝트 빌드를 자동화 해주는 빌드 툴이다. **

일단 자동화 해주는 빌드 툴이라는건? 그만큼 엄청 편리하게 사용가능하다는 의미! 

**요약하면 자바 소스를 compile하고 package해서 deploy하는 일들을 자동화 시켜주는 것!**

**그만큼 간편하게 이용할 수 있다.**

**Maven 참조 설정 파일은 2가지가 있는데 **

**1\. settings.xml **

maven tool 자체에 관련된 설정을 담당하는 xml 파일이다.

**2\. pom.xml **

프로젝트 최상위 디렉토리에 생성되는데 project object model로 프로젝트 내 빌드 옵션을 성정하는 xml 파일이다.

**여기서 직접적으로 수정하는 부분은 pom.xml 파일이다.**

사실 pom.xml을 추가하는 방법을 모르겠다고 할 수 있는데 

이 부분은 직접 코드를 만들 때 언급하겠지만 우선 프로젝트를 maven 업그레이드만 해주면 되구

[mvnrepository.com/](https://mvnrepository.com/)


 위의 사이트에서 직접 필요로 하는 빌드파일을 검색해서 넣어주면 끝이다.

완전 간편하다.

이번 포스팅에서는 Spring MVC에 대해 간략하게 이론으로 접근해봤는데 

다음 포스팅에서는 기초 세팅을 하는 과정을 설명할 예정이다.
