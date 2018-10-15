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

## jsp 디폴트객체  
- pageContext새로 생긴거  


