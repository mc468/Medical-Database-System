<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Clinicbed"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkclinicbed.jsp' starting page</title>
    
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
			List clinicbedlist =jdbc.queryClinicbed();
		    if(clinicbedlist!=null && clinicbedlist.size()>0){
		    }
     %>
		    <tr>
    			<td>
    				<table>
    					<tr>
    						<td>bed number</td>
    						<td>room number</td>
    						<td>bed letter</td>
    						<td>nursing unit</td>
    						<td>wing</td>
    					</tr>
    					
    		<%
    				for(int i=0;i<clinicbedlist.size();i++){
    					Clinicbed clinicbed=(Clinicbed)clinicbedlist.get(i);
    		%>
    			 <tr>
    			 	<td><%=clinicbed.getbednumber() %></td>
    			 	<td><%=clinicbed.getroomnumber() %></td>
    			 	<td><%=clinicbed.getbedletter() %></td>
    			 	<td><%=clinicbed.getnursingunit() %></td>
    			 	<td><%=clinicbed.getwing() %></td>
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