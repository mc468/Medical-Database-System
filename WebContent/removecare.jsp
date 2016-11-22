<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Care"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'removecare.jsp' starting page</title>
    
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
<form action="<%=path%>/Care1.jsp" method="post">
    <%
    	Connection conn=null;
		try{
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			List carelist =jdbc.queryCare();
		    if(carelist!=null && carelist.size()>0){
		    }
     %>
		    <tr>
    			<td>
    				<table>
    					<tr>
    						<td>Patient number</td>
    						<td>employee number</td>
    						<td>check to delete</td>
    					</tr>
    					
    		<%
    				for(int i=0;i<carelist.size();i++){
    					Care care=(Care)carelist.get(i);
    		%>
    			 <tr>
    			 	<td><%=care.getPatientnumber() %></td>
    			 	<td><%=care.getEMPnumber() %></td>
    			 	<td><input TYPE="checkbox" name="delete" VALUE=<%=care.getPatientnumber() %> ></td>
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