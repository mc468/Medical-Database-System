<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="njit.cs631.Attendto"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'assignattendto.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>
<form action="<%=path%>/Attendto.jsp" method="post">
    	<table border="1">
    	  <tr>
    	  	<td>${msg}</td>
    	  </tr>
    	    <tr>
    			<td>Patient number</td>
    			<td><input type="text" name="Patientnumber"></td>
    		</tr>
    		<tr>
    			<td>employee number</td>
    			<td><input type="text" name="EMPnumber"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="submit"></td>
    		</tr>
    		
    	</table>
    	
    </form>
  </body>
</html>