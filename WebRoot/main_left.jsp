<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'main_left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<a href="createidentityinfo.jsp" target="main_right">Identity
		Creation</a>
	<br />
	<a href="displayidentityinfo.jsp" target="main_right">Identity
		Display</a>
	<br />
	<a href="modifyidentityinfo.jsp" target="main_right">Identity
		Modification</a>
	<br />
	<a href="deleteidentityinfo.jsp" target="main_right">Identity
		Deletion</a>
	<br />
	<a href="exit.jsp" target="_top">Exit</a>
	<br />
</body>
</html>
