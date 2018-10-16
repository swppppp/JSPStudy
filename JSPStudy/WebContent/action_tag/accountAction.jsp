<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="account" class="kr.or.kosta.jsp.Account" scope="request"/>
<jsp:setProperty property="*" name="account"/>
<%--bean의 프로퍼티명과 form태그 안의 파리미터 name이 일치하지 않을때, 이름만 맞춰줌 --%>
<jsp:setProperty property="accountNum" param="num" name="account"/> 

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