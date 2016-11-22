<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Clinicpersonnel"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'removeclinicpersonnel.jsp' starting page</title>
    
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
<form action="<%=path%>/Clinicpersonnel1.jsp" method="post">
    <%
    	Connection conn=null;
		try{
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			List clinicpersonnellist =jdbc.queryClinicpersonnel();
		    if(clinicpersonnellist!=null && clinicpersonnellist.size()>0){
		    }
     %>
		    <tr>
    			<td>
    				<table>
    					<tr>
    						<td>employee number</td>
    						<td>employee gender</td>
    						<td>employee name</td>
    						<td>employee address</td>
    						<td>employee SSN</td>
    						<td>employee salary</td>
    						<td>employee phone number</td>
    						<td>employee work type</td>
    						<td>physician specialty</td>
    						<td>physician type</td>
    						<td>contract length</td>
    						<td>contract amount</td>
    						<td>contract type</td>
    						<td>grade of nursing</td>
    						<td>years of nursing</td>
    						<td>check to delete(only one)</td>
    					</tr>
    					
    		<%
    				for(int i=0;i<clinicpersonnellist.size();i++){
    					Clinicpersonnel clinicpersonnel=(Clinicpersonnel)clinicpersonnellist.get(i);
    		%>
    			 <tr>
    			 	<td><%=clinicpersonnel.getEMPnumber() %></td>
    			 	<td><%=clinicpersonnel.getClinicpersonnelgender() %></td>
    			 	<td><%=clinicpersonnel.getClinicpersonnelname() %></td>
    			 	<td><%=clinicpersonnel.getClinicpersonneladdress()%></td>
    			 	<td><%=clinicpersonnel.getClinicpersonnelSSN() %></td>
    			 	<td><%=clinicpersonnel.getClinicpersonnelsalary() %></td>
    			 	<td><%=clinicpersonnel.getphonenumber() %></td>
    			 	<td><%=clinicpersonnel.getworktype() %></td>
    			 	<td><%=clinicpersonnel.getphysicianspecialty() %></td>
    			 	<td><%=clinicpersonnel.getphysiciantype() %></td>
    			 	<td><%=clinicpersonnel.getcontractlength() %></td>
    			 	<td><%=clinicpersonnel.getcontractamount() %></td>
    			 	<td><%=clinicpersonnel.getcontracttype() %></td>
    			 	<td><%=clinicpersonnel.getgrade() %></td>
    			 	<td><%=clinicpersonnel.getyears() %></td>
    			 	<td><input TYPE="checkbox" name="delete" VALUE=<%=clinicpersonnel.getEMPnumber() %> ></td>
    			 </tr>
    		   <%
    			 	}
    		   %>
    		   
	                </table>
	                <tr>
    			    <td><input type="submit" value="submit"></td>
    		        </tr>
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
             </form>
  </body>
</html>