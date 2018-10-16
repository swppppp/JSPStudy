<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%

// get방식-> logout(쿠키삭제)
if(request.getMethod().equals("GET")){
  Cookie[] cookies = request.getCookies();
  if(cookies!=null){
   for(Cookie cookie : cookies){
	   if(cookie.getName().equals("userid")){
         cookie.setMaxAge(0);
         response.addCookie(cookie);
         response.sendRedirect("cookiePracticeMain.jsp");
     }
   }
  }
  
}else{
 // post 방식-> login(쿠키생성)
 String id = request.getParameter("userid");
 String pw = request.getParameter("userpw");
 
 Cookie cookie = new Cookie("userid", id);
 cookie.setMaxAge(60*60*24*30);
 cookie.setPath("/");
 
 response.addCookie(cookie);
 response.sendRedirect("cookiePracticMain.jsp");
}

%>
