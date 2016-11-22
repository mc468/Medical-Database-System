<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Diagnosisforillness"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkdiagnosis.jsp' starting page</title>
    
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
			List diagnosisforillnesslist =jdbc.queryDiagnosisforillness();
		    if(diagnosisforillnesslist!=null && diagnosisforillnesslist.size()>0){
		    }
     %>
		    <tr>
    			<td>
    				<table>
    					<tr>
    						<td>Diagnosis code</td>
    						<td>Illness code</td>
    					</tr>
    					
    		<%
    				for(int i=0;i<diagnosisforillnesslist.size();i++){
    					Diagnosisforillness diagnosisforillness=(Diagnosisforillness)diagnosisforillnesslist.get(i);
    		%>
    			 <tr>
    			 	<td><%=diagnosisforillness.getDiagnosiscode() %></td>
    			 	<td><%=diagnosisforillness.getIllnesscode() %></td>
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