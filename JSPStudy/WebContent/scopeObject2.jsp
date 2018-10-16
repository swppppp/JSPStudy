<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>jsp가 제공하는 4개의 scope객체(context객체)들</h2>


현재 페이지 정보: <%= pageContext.getAttribute("message") %><br>
request정보: <%= request.getAttribute("message") %><br>
session정보(without forward): <%= session.getAttribute("message") %><br>
application정보: <%= application.getAttribute("message") %>

</body>
</html>