<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="njit.cs631.Clinicpersonnel"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'addclinicpersonnel.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>
<form action="<%=path%>/Clinicpersonnel.jsp" method="post">
    	<table border="1">
    	  <tr>
    	  	<td>${msg}</td>
    	  </tr>
    		<tr>
    			<td>employee number</td>
    			<td><input type="text" name="EMPnumber"></td>
    		</tr>
    		<tr>
    			<td>employee gender</td>
    			<td><input type="text" name="Clinicpersonnelgender"></td>
    		</tr>
    		<tr>
    			<td>employee name</td>
    			<td><input type="text" name="Clinicpersonnelname"></td>
    		</tr>
    		<tr>
    			<td>employee address</td>
    			<td><input type="text" name="Clinicpersonneladdress"></td>
    		</tr>
    		<tr>
    			<td>employee SSN</td>
    			<td><input type="text" name="ClinicpersonnelSSN"></td>
    		</tr>
    		<tr>
    			<td>employee salary</td>
    			<td><input type="text" name="Clinicpersonnelsalary"></td>
    		</tr>
    		<tr>
    			<td>employee phone number</td>
    			<td><input type="text" name="phonenumber"></td>
    		</tr>
    		<tr>
    			<td>employee work type</td>
    			<td><input type="text" name="worktype"></td>
    		</tr>
    		<tr>
    			<td>physician specialty</td>
    			<td><input type="text" name="physicianspecialty"></td>
    		</tr>
    		<tr>
    			<td>physician type</td>
    			<td><input type="text" name="physiciantype"></td>
    		</tr>
    		<tr>
    			<td>contract length</td>
    			<td><input type="text" name="contractlength"></td>
    		</tr>
    		<tr>
    			<td>contract amount</td>
    			<td><input type="text" name="contractamount"></td>
    		</tr>
    		<tr>
    			<td>contract type</td>
    			<td><input type="text" name="contracttype"></td>
    		</tr>
    		<tr>
    			<td>grade of nursing</td>
    			<td><input type="text" name="grade"></td>
    		</tr>
    		<tr>
    			<td>years of nursing</td>
    			<td><input type="text" name="years"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="submit"></td>
    		</tr>
    		
    	</table>
    	
    </form>
  </body>
</html>