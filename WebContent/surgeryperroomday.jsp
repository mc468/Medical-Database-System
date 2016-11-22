<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="njit.cs631.Surgery"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'surgeryperroomdays.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   </head>
   <body>
    <form action="<%=path%>/Surgery1.jsp" method="post">
    	<table border="1">
    	  <tr>
    	  	<td>${msg}</td>
    	  </tr>
    	    <tr>
    			<td>Please input the theater of the surgery</td>
    			<td><input type="text" name="theater"></td>
    		</tr>
    		<tr>
    			<td>Please input the surgery date</td>
    			<td><input type="text" name="Surgerydate"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="submit"></td>
    		</tr>
    		<%
    			List surgeryperroomdaylist=(List)request.getAttribute("surgeryperroomdaylist");
    			if(surgeryperroomdaylist!=null && surgeryperroomdaylist.size()>0){
    		 %>
    		<tr>
    			<td>
    				<table>
    					<tr>
    						<td>surgery number</td>
    						<td>employee number</td>
    						<td>surgery code</td>
    						<td>patient number</td>
    						<td>surgery date</td>
    						<td>theater</td>
    					</tr>
    					
    			<%
    				for(int i=0;i<surgeryperroomdaylist.size();i++){
    					Surgery surgery1=(Surgery)surgeryperroomdaylist.get(i);
    			 %>
    			 <tr>
    			 	<td><%=surgery1.getSurgerynumber() %></td>
    			 	<td><%=surgery1.getEMPnumber() %></td>
    			 	<td><%=surgery1.getSurgerycode() %></td>
    			 	<td><%=surgery1.getPatientnumber() %></td>
    			 	<td><%=surgery1.getSurgerydate() %></td>
    			 	<td><%=surgery1.gettheater() %></td>
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