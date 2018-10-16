<%@page import="kr.or.kosta.jsp.Account"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%
//Account account = new Account("1002-654-832899", "박시원", 1111, 1000000);
//동적생성  
//Class.forName("kr.or.kosta.jsp.Account").newInstance();
%>
<%-- 디폴트생성자 없으면 안됨. --%>
<jsp:useBean id="account" class="kr.or.kosta.jsp.Account" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>액션태그사용해서 출력</h2><br>
계좌번호: <jsp:getProperty property="accountNum" name="account"/><br>
예금주명: <jsp:getProperty property="accountOwner" name="account"/><br>
비밀번호: <jsp:getProperty property="passwd" name="account"/><br>
잔  액: <jsp:getProperty property="restMoney" name="account"/><br>

</body>
</html>