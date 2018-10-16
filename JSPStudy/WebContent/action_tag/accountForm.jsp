<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- 
<link rel="stylesheet" type="text/css" href="../css/basicCss.css">
 -->
<style type="text/css">
input[type=text], input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit], input[type=button], button {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover, button {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width: 40%;
    margin-top : 100px;
    margin-bottom : 30px;
    margin-right: auto;
    margin-left: auto;
}

h3 {
    margin-top: 80px;
    text-align: center;
}

</style>
</head>
<body>

<h3>계좌등록</h3>

<div>
  <form name="accountForm" action="accountAction.jsp" method="post">
  
    <label for="accountNum">계좌번호</label>
    <input type="text" id="accountNum" name="num" placeholder="계좌번호..">
    
    <label for="accountOwner">예금주</label>
    <input type="text" id="accountOwner" name="accountOwner" placeholder="예금주명">
    
    <label for="passwd">비밀번호</label>
    <input type="password" id="passwd" name="passwd" placeholder="비밀번호">
    
    <label for="restMoney">잔액</label>
    <input type="text" id="restMoney" name="restMoney" placeholder="잔액">

    <input type="submit" value="계좌등록">   
  </form>
</div>

</body>
</html>
