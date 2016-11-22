<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Schedule"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Schedule1.jsp' starting page</title>
    
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
			int empnumber1=Integer.parseInt(request.getParameter("EMPnumber"));
			int day1=Integer.parseInt(request.getParameter("day"));
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			Schedule schedule1=new Schedule();
			schedule1.setEMPnumber(empnumber1);
			schedule1.setday(day1);
			List schedulelist1 =jdbc.queryScheduleperdocday(schedule1);
			if(schedulelist1.size()>0){
				request.setAttribute("scheduleperdocdaylist",schedulelist1);
			}
		}
		catch(Exception ex){
			request.setAttribute("msg","网络故障！");
			ex.getStackTrace();
		}
		finally{
			DBUtils.close(conn);
		}   
     %>
     <jsp:forward page="/scheduleperdocday.jsp"/>
</body>
</html>