<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>jsp가 제공하는 9개의 디폴트 객체</h2>
<%
String id = request.getParameter("id");
// response.sendRedirect("Hello.jsp");
out.print("안녕..\n");
%>
아이디: <%=id %><br>
was에 등록된 웹 애플리케이션 이름: <%=application.getContextPath() %><br>
was 정보: <%=application.getServerInfo() %><br>
location: <%= config.getInitParameter("location") %><br>
현재 페이지: <%=this %><br>
현재 페이지: <%=page %><br>
<%-- 예외: <%=exception %> --%>
</body>
</html>