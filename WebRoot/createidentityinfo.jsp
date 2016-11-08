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

<title>My JSP 'createidentityinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel='stylesheet prefetch'
	href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
<link rel="stylesheet" href="css/style.css">
</head>

<jsp:include page="isLogin.jsp"></jsp:include>
<body>
<div class="wrapper">
		<form method="post" action="createidentity_result.jsp" class="form-signin">
			<table>
				<tr>
					<td colspan="2">Identity Creation</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName" /></td>
				</tr>

				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" /></td>
				</tr>
				<tr>
					<td>Sex</td>
					<td><input type="radio" name="sex" checked value="1"/>M
					<input type="radio" name="sex" value="0">F</td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"  /></td>
				</tr>

				<tr>
					<td>Birth Date</td>
					<td><input type="text" name="birthDate" /></td>
				</tr>

			</table>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Create
				an account</button>
		</form>
		</div>
</body>
</html>
