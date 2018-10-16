<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/basic.css">
<title>Cookie Practice</title>
</head>
<body>

<div class="header">
  <h1>My Website</h1>
  <p>Resize the browser window to see the effect.</p>
</div>

<%-- navigator메뉴(header)시작 --%>
<jsp:include page="/include/top.jsp"/>
<%-- navigator 종료 --%>

<div class="row">
  <div class="leftcolumn">
some 페이지 입니다아~
  </div>
<%-- 사이드메뉴 시작 --%>  
<jsp:include page="/include/aside.jsp"/>  
<%-- 사이드메뉴 끝 --%>  


</div>

<jsp:include page="/include/footer.jsp"/>

</body>
</html>
