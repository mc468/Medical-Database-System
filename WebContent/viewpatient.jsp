<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Patient"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewpatient.jsp' starting page</title>
    
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
    <%
    	Connection conn=null;
		try{
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			List patientlist =jdbc.queryPatient();
		    if(patientlist!=null && patientlist.size()>0){
		    }
     %>
		    <tr>
    			<td>
    				<table>
    					<tr>
    						<td>Patient number</td>
    						<td>Patient address</td>
    						<td>Patient name</td>
    						<td>Patient gender</td>
    						<td>Patient SSN</td>
    						<td>Patient phone number</td>
    						<td>Patient birth day</td>
    					</tr>
    					
    		<%
    				for(int i=0;i<patientlist.size();i++){
    					Patient patient=(Patient)patientlist.get(i);
    		%>
    			 <tr>
    			 	<td><%=patient.getPatientnumber() %></td>
    			 	<td><%=patient.getPatientaddress() %></td>
    			 	<td><%=patient.getPatientname() %></td>
    			 	<td><%=patient.getPatientgender() %></td>
    			 	<td><%=patient.getPatientSSN() %></td>
    			 	<td><%=patient.getPatientphonenumber() %></td>
    			 	<td><%=patient.getPatientbirth() %></td>
    			 </tr>
    		   <%
    			 	}
    		   %>
	                </table>
    			</td>
    		</tr>
    		<%
		    }
		    catch(Exception ex){
			    request.setAttribute("msg","网络故障！");
			    ex.getStackTrace();
		    }
		    finally{
			     DBUtils.close(conn);
		    }   
             %>
  </body>
</html>