<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="njit.cs631.Schedule"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'scheduleperdocday.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   </head>
   <body>
    <form action="<%=path%>/Schedule1.jsp" method="post">
    	<table border="1">
    	  <tr>
    	  	<td>${msg}</td>
    	  </tr>
    	    <tr>
    			<td>Please input the employee number of the physician</td>
    			<td><input type="text" name="EMPnumber"></td>
    		</tr>
    		<tr>
    			<td>Please input the day(numbers only)</td>
    			<td><input type="text" name="day"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="submit"></td>
    		</tr>
    		<%
    			List scheduleperdocdaylist=(List)request.getAttribute("scheduleperdocdaylist");
    			if(scheduleperdocdaylist!=null && scheduleperdocdaylist.size()>0){
    		 %>
    		<tr>
    			<td>
    				<table>
    					<tr>
    						<td>Employee number</td>
    						<td>Patient number</td>
    						<td>day</td>
    						<td>begin time</td>
    					</tr>
    					
    			<%
    				for(int i=0;i<scheduleperdocdaylist.size();i++){
    					Schedule schedule1=(Schedule)scheduleperdocdaylist.get(i);
    			 %>
    			 <tr>
    			 	<td><%=schedule1.getEMPnumber() %></td>
    			 	<td><%=schedule1.getPatientnumber() %></td>
    			 	<td><%=schedule1.getday() %></td>
    			 	<td><%=schedule1.getbegintime() %></td>
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