<%@ page contentType="text/html; charset=utf-8" %>
<%
request.setCharacterEncoding("utf-8");


String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");

Cookie cookie = null;

Cookie[] cookies = request.getCookies();
if(cookies != null){
 for(Cookie cookiee : cookies){
	// if(cookiee.getName().equals("userid")){
      cookiee.setPath("/");
      cookiee.setMaxAge(0);
      break;
   
 }
}

// response.sendRedirect("index.html");

%>
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
<div class="topnav">
  <a href="#">Link</a>
  <a href="#">Link</a>
  <a href="#">Link</a>
  <a href="#" style="float:right">Link</a>
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Dec 7, 2017</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
    <div class="card">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
  </div>
  
  <div class="rightcolumn">
    <div class="card">
      <div>
      <%
      if(cookies == null){
      %>
        <form name="loginForm" action="cookie.jsp" method="post">
          <input type="text" id="userId" name="userid" placeholder="Identifier...">
          <input type="password" id="userPw" name="userpw" placeholder="Password...">
          <input type="submit" id="loginButton" value="Login">
        </form>
      <%
      } else if(cookies != null) {
        cookie = new Cookie("userid", userid);
        cookie.setMaxAge(60*60*24*30);
        cookie.setPath("/");
        response.addCookie(cookie);
      %>
      <form name="loginForm" action="cookie.jsp" method="get">
          <div><%= cookie.getValue() %>님 로그인중</div>
          <input type="submit" id="loginButton" value="Logout">
        </form>
      <%
      }
      %>
        
      </div>
      
    </div>
    
    <div class="card">
      <h3>Popular Post</h3>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
      <div class="fakeimg"><p>Image</p></div>
    </div>
    <div class="card">
      <h3>Follow Me</h3>
      <p>Some text..</p>
    </div>
  </div>
</div>

<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>