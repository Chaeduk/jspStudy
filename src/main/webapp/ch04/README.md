## 지시어(Directive Tag)

- JSP 파일의 속성을 기술하는 JSP 문법
- JSP 컨테이너에게 해당 페이지를 어떻게 처리해야 하는지 내용을 전달

| 디렉티브 태그 | 형식            | 설명                                         |
| ------------- | --------------- | -------------------------------------------- |
| page          | <%@page...%>    | JSP 페이지에 대한 정보를 설정                |
| include       | <%@include...%> | JSP 페이지의 특정 영역에 다른 문서를 포함    |
| taglib        | <%@taglib=...%> | JSP 페이지에서 사용할 태그 라이브러리를 설정 |

## page 지시어

- 현재 jsp 페이지를 컨테이너에서 처리하는 데 필요한 각종 속성을 기술하는 부분
- 보통 jsp 페이지 맨 앞에 위치

## 언어 처리 속성

- pageEncoding 속성
  - 컨테이너에서 처리할 jsp 파일 자체의 문자 인코딩 방식을 설정
  - 기본 값은 iso-8859-1
- contentType의 charset 속성
  - 브라우저가 받을 http 응답 페이지의 문자 인코딩 방식을 설정
- language 속성
  - jsp 페이지에서 사용할 프로그래밍 언어를 설정(기본 값은 java)

## import 속성

- jsp에서 사용할 자바 클래스 또는 패키지를 설정하는데 사용
- 패키지 import 구분을 ,을 이용하거나 라인 단위로 작성해야 한다

## session 속성

- 세션은 웹 브라우저와 웹 서버가 지속적으로 클라이언트 인식을 위해 필요한 정보를 임시로 저장해두는 방법
- 기본 값은 true(사용을 제한할 목적이 아니라면 별도로 설정하지 않아도 됨)

## buffer 속성

- jsp 페이지 데이터를 출력하기 위한 JspWriter 즉 out 내장객체의 버퍼 크기 지정
- 기본값은 8KB

## autoFlush 속성

- 버퍼를 자동으로 비울 것인지를 지정하는 속성
- 기본값은 true
- 지정되어 있는 크기만큼 버퍼를 유지하고 있다가 버퍼가 다 차면 자동으로 전송

## errorPage, isErrorPage 속성

- jsp 파일의 오류 처리를 위한 설정
- errorPage는 현재 페이지에 오류 발생시 호출할 페이지를 지정하는 속성
- isErrorPage는 오류 처리를 위한 전용 페이지임을 알리는 속성

## include 지시어

- 현재 jsp 파일에 다른 html이나 jsp 문서를 포함하기 위한 기능을 제공

## taglib 지시어

- jsp기능을 확장하기 위해 만든 커스텀 태그 라이브러리를 사용하기 위한 지시어
