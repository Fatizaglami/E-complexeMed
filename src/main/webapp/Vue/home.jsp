<%--
  Created by IntelliJ IDEA.
  User: Yoga
  Date: 25/05/2022
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Hello home
</body>
</html>
