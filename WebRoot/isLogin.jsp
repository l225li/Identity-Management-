<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.linli.datamodel.UserTable" %>
<%@ page import="com.linli.service.UserService" %>

<%
UserTable user = (UserTable) session.getAttribute("user");
if(user==null)
{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>