<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'createidentity_result.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="identity" class="com.linli.datamodel.Identity"></jsp:useBean>
<jsp:setProperty property="*" name="identity"/>
<jsp:useBean id="identityServer" class="com.linli.service.IdentityService"></jsp:useBean>
<%
out.print(identity.getFirstName());
out.print(identity.getBirthDate());%>
<%
 if (identityServer.addIdentity(identity)){
 	out.print("success");
 }else{
 	out.print("error");
 }
 
 %>
  </body>
</html>