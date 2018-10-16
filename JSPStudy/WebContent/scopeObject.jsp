<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>jsp가 제공하는 4개의 scope객체(context객체)들</h2>
<%-- 작은범위부터 --%>
<%
// 현재 페이지에서만 유지되는 정보
pageContext.setAttribute("message", "pageContext scope객체 입니다.");

// forward시켜서 공유할 수 있음
request.setAttribute("message", "request scope객체입 니다.");
//application.getRequestDispatcher("/scopeObject2.jsp").forward(request, response); //forward는 url변화 없이 현재 req, resp객체 들고 이동하려는 페이지로간다~~

//모든 브라우저가 공유-->session에 저장  
session.setAttribute("message", "session scope객체 입니다.");

//브라우저 상관없이 모두 공유
application.setAttribute("message", "application scope객체 입니다.");
%>

현재 페이지 정보: <%= pageContext.getAttribute("message") %>

<%=pageContext.findAttribute("이름") %> <%-- 4가지 scope모두 검색 --%>


</body>
</html>