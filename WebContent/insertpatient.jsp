<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="njit.cs631.Patient"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'insertpatient.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>
<form action="<%=path%>/Patient.jsp" method="post">
    	<table border="1">
    	  <tr>
    	  	<td>${msg}</td>
    	  </tr>
    	    <tr>
    			<td>Patient number</td>
    			<td><input type="text" name="Patientnumber"></td>
    		</tr>
    		<tr>
    			<td>Patient address</td>
    			<td><input type="text" name="Patientaddress"></td>
    		</tr>
    		<tr>
    			<td>Patient name</td>
    			<td><input type="text" name="Patientname"></td>
    		</tr>
    		<tr>
    			<td>Patient gender</td>
    			<td><input type="text" name="Patientgender"></td>
    		</tr>
    		<tr>
    			<td>Patient SSN</td>
    			<td><input type="text" name="PatientSSN"></td>
    		</tr>
    		<tr>
    			<td>Patient phone number</td>
    			<td><input type="text" name="Patientphonenumber"></td>
    		</tr>
    		<tr>
    			<td>Patient birth day</td>
    			<td><input type="text" name="Patientbirth"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="submit"></td>
    		</tr>
    		
    	</table>
    	
    </form>
  </body>
</html>