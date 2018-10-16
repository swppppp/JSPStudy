# JSP  
- 서버단 스크립트 언어  
- ASP대항해서나온 jsp  
- jsp가 servlet으로 변환된 파일은..  
> 이클립스 워크스페이스의 .metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\jsp\org\apache\jsp  
> - HttpServlet을 상속받아 생성된다..==>결국 jsp도 서블릿이다~~  

## jsp구성요소  
- page지시어: <%@ page contentType="text/html; charset=utf-8" %>  
- html 태그(템플릿 데이터): <html>  
- jsp주석: <%-- 주석내용쓰 --%>...웹컨테이너를위한 주석  
- 스크립트릿(실행문): <% %>
> - 서비스메소드 영역  
> - 여기서 만든변수는 지역변수  
> - 인스턴스변수로 만들고싶을때 선언문 사용  
- 표현식(출력문): <%= %>  
- 선언문: <%! %>  
> - 지역변수아닌 인스턴스변수로 만들어달라  
> - 메소드만들거나 뭐 그런거  

## jsp 지시어  
- <%@ 지시어이름 속성="값"...%>  
- page  
> 마임타입과 문자 인코딩설정, 임포트지정 등  
- include  
> 자바스크립트에서 외부파일가져오는거랑 같아용..  
- taglib  

## jsp 디폴트객체...9가지  
- pageContext: 현재페이지관련 정보를 담는 맵 객체  
- page.. this라 생각하면됨(현재 페이지자체)  
-
### jsp에서 scope객체..4가지    
- servlet의 3개(request, session, app(context)) + pageContext  

## 예외처리  
- 발생 예외를 처리하는 새로운 페이지 생성..예외를 처리하는 서블릿 생성!  
- 각 페이지에서 발생한 exception 객체를 생성한 예외서블릿에 forward  
- page지시어의 errorPage  
- 예외처리를 해주는 페이지의 page지시어중 isErrorPage값을 true로 줌  
- exception객체는 isErrorPage가 true인 곳에서만 사용 가능  
- 글로벌하게 처리하기위해 web.xml에 에러핸들페이지등록  
```  
  <!-- 에러페이지 등록 -->
  <error-page>
  	<exception-type>java.lang.Exception</exception-type>
  	<location>/errors/error_500.jsp</location>
  </error-page>
  
  <error-page>
  	<error-code>400</error-code>
  	<location>/errors/error_400.jsp</location>
  </error-page>

  <error-page>
  	<error-code>404</error-code>
  	<location>/errors/error_404.jsp</location>
  </error-page>
```  

## action태그  
- container를 위한 태그  
- 요청,응답에 대한 제어권을 jsp페이지 사이에서 이동가능: dispatcher기능  
- 자바빈사용  
- xml문서 제어가능  
> - xml형식따르며, 대소구분  
- 접두어 필수(빼먹으면 브라우저태그로인식)  
- forward액션태그: <jsp:foward></jsp:foward>  
> - forward하면서 필요한 값들 <jsp:param value= name= />으로 포함 가능  
- include액션태그: <jsp:include></jsp:include>  
> - <%@ include %>지시어와 다름...->소스파일  
> - include액션태그는 결과만 가져옴  
> ---------------------------------------------  
> - 페이지 모듈화에 많이쓰임  
> - flush: default값은 false.. 순차적으로 보여주는거 true값 주면 됨  
- <jsp:userBean />  
> - javaBean: 웹앱작성시 데이터저장목적의 재사용가능한 컴포넌트  
> - 자바빈규약: 디폴트생성자, 공개속성(프로퍼티..setter/getter), 접근제한자 public또는 생략  
> - userBean의 id값은 키값! not reference..  
> - scope객체 4개에서 순서대로 찾아보는개념 없으면 pageContext scope에 저장(기본)  
> - userBean의 scope속성으로 저장될 범위 설정 가능  
> - <jsp:setProperty property="*" name="beanName.."/> 와일드카드..!!  

## 추상팩토리 패턴 적용  
db연동..  


### jsp 등록방법  
- web.xml에..  
```  
  <!-- jsp등록 -->
  <servlet>
  	<servlet-name>defaultObject</servlet-name>
  	<jsp-file>/defaultObject.jsp</jsp-file>
  </servlet>
  <servlet-mapping>
  	<servlet-name>defaultObject</servlet-name>
  	<url-pattern>/default.action</url-pattern>
  </servlet-mapping>
```  








