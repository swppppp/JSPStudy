<%@page import="kr.or.kosta.jsp.dao.User"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.kosta.jsp.dao.UserDao"%>
<%@page import="kr.or.kosta.jsp.dao.JdbcDaoFactory"%>
<%@page import="kr.or.kosta.jsp.dao.DaoFactory"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
DaoFactory factory = new JdbcDaoFactory();
UserDao dao = factory.getUserDao();
List<User> list = dao.listAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

<table style="border-collapse: collapse; border: 1px black solid; width:500px;">
<tr style="border-collapse: collapse;">
  <td>아이디</td>
  <td>이름</td>
  <td>이메일</td>
  <td>가입일자</td>
</tr>
<% 
for(User user : list){

%>
<tr>
  <td><%= user.getId() %></td>
  <td><%= user.getName() %></td>
  <td><%= user.getEmail() %></td>
  <td><%= user.getRegdate() %></td>
</tr>

<%
}
%>


</table>

</body>
</html>