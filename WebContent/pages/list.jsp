<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h4>List Page</h4>
	
	Welcome: <shiro:principal></shiro:principal>
	
	<shiro:hasRole name="admin">
	<br><br>
	<a href="<%=path%>/pages/admin.jsp">Admin Page</a>
	</shiro:hasRole>
	
	<shiro:hasRole name="user">
	<br><br>
	<a href="<%=path%>/pages/user.jsp">User Page</a>
	</shiro:hasRole>
	
	<br><br>
	<a href="<%=path%>/shiro/testShiroAnnotation">Test ShiroAnnotation</a>
	
	<br><br>
	<a href="<%=path%>/shiro/logout">Logout</a>
	
</body>
</html>