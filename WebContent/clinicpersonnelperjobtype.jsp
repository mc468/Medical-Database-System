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
    
    <title>My JSP 'clinicpersonnelperjobtype.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   </head>
   <body>
    <form action="<%=path%>/Clinicpersonnel2.jsp" method="post">
    	<table border="1">
    	  <tr>
    	  	<td>${msg}</td>
    	  </tr>
    	    <tr>
    			<td>Please input the work type</td>
    			<td><input type="text" name="worktype"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="submit"></td>
    		</tr>
    		<%
    			List clinicpersonnelperjobtypelist=(List)request.getAttribute("clinicpersonnelperjobtypelist");
    			if(clinicpersonnelperjobtypelist!=null && clinicpersonnelperjobtypelist.size()>0){
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
    					</tr>
    					
    			<%
    				for(int i=0;i<clinicpersonnelperjobtypelist.size();i++){
    					Clinicpersonnel clinicpersonnel1=(Clinicpersonnel)clinicpersonnelperjobtypelist.get(i);
    			 %>
    			 <tr>
    			 	<td><%=clinicpersonnel1.getEMPnumber() %></td>
    			 	<td><%=clinicpersonnel1.getClinicpersonnelgender() %></td>
    			 	<td><%=clinicpersonnel1.getClinicpersonnelname() %></td>
    			 	<td><%=clinicpersonnel1.getClinicpersonneladdress()%></td>
    			 	<td><%=clinicpersonnel1.getClinicpersonnelSSN() %></td>
    			 	<td><%=clinicpersonnel1.getClinicpersonnelsalary() %></td>
    			 	<td><%=clinicpersonnel1.getphonenumber() %></td>
    			 	<td><%=clinicpersonnel1.getworktype() %></td>
    			 	<td><%=clinicpersonnel1.getphysicianspecialty() %></td>
    			 	<td><%=clinicpersonnel1.getphysiciantype() %></td>
    			 	<td><%=clinicpersonnel1.getcontractlength() %></td>
    			 	<td><%=clinicpersonnel1.getcontractamount() %></td>
    			 	<td><%=clinicpersonnel1.getcontracttype() %></td>
    			 	<td><%=clinicpersonnel1.getgrade() %></td>
    			 	<td><%=clinicpersonnel1.getyears() %></td>
    			 </tr>
    			 <%
    			 	}
    			  %>
    				</table>
    			</td>
    		</tr>
    		<%
    			}
    		 %>
    	</table>
    	
    </form>
  </body>
</html>