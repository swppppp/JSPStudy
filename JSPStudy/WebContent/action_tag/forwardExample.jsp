<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
int age=26;
%>
<jsp:forward page="/Hello.jsp">
  <jsp:param value="siwon" name="id"/>
  <jsp:param value="<%=age %>" name="age"/>
</jsp:forward>

<%
//  request.setAttribute("name", "value");
//  application.getRequestDispatcher("/Hello.jsp?id=bangry).forward(request,response);
%>
