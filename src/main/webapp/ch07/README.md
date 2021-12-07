## JSP에서 데이터베이스와의 연동을 위한 빈즈 구현의 세가지 형태

1. 데이터베이스 연동을 포함해서 데이터와 기능을 함께 구현하는 방법<br>
   (DO, DAO 클래스의 통합 형태)
2. 데이터 매핑과 데이터 처리를 분리 구현 방법<br>
   (DO, DAO 클래스의 분리 형태)
3. 별도의 O-R 매핑 프레임워크를 사용하는 방법

## DO, DAO 클래스의 통합 형태

- 빈즈 내부에 데이터베이스 접속과 관련한 정보를 포함하여 입력, 출력, 삭제와 같은 모든 데이터베이스 처리 로직을 갖는 형태
- 쉽고 빠르게 개발할 수 있는 장점 때문에 비교적 간단한 프로그램 구현에 이용된다.

## DO, DAO 클래스의 분리 형태

- DO와 DAO를 분리한 형태로, DO 클래스에는 테이블과 대응할 수 있는 필드 관련 기능만 존재한다.
- 데이터베이스 접속과 관련한 정보와 입력, 출력, 삭제와 같은 기능은 DAO라는 별도의 클래스에 구현한다.
- 데이터와 비즈니스 로직을 분리하기 때문에 유지보수에 유리하다는 장점이 있다.
- 주로 MVC 패턴과 함께 사용된다.

## 별도의 O-R 매핑 프레임워크를 사용하는 방법

- DO, DAO 클래스의 분리 형태에서 실질적인 데이터베이스 처리를 담당하는 DAO 대신 O-R 매핑 프레임워크를 사용하는 방식이다.
- O-R 매핑이란 빈즈(도메인) 객체와 데이터베이스 테이블의 칼럼을 자동으로 연결하고, 이들의 값을 동기화하며 상태를 유지하는 메커니즘을 제공함으로써 개발의 생산성과 안정성을 높일 수 있는 방법이다.