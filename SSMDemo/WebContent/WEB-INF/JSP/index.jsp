<%@ page language="java" contentType="text/html; charset=utf-8"

    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Index</title>

</head>

<body>

	<h1 style="text-align:center;color:red">Index</h1>
	<p>

		The account name:${account.username }

		<br />

		The account password:${account.password }

	</p>
	
	<div>
	 <c:forEach items="${rolelist}" var="role">
	 
	 <p> Id: ${role.id}  RoleName:${role.rolename }  Des: ${role.description}</p>
	 
	 </c:forEach>
	 ${role1.id }     
	 ${role1.description}
	 
	 
	 
	 
	 <!-- role1.role_name 不正确，bean虽为role_name但此处用rolename-->
	 ${role1.rolename}
	 
	 
	</div>
	
</body>

</html>