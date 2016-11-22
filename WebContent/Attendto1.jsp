<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Attendto"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Attendto1.jsp' starting page</title>
    
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
			int patientnumber=Integer.parseInt(request.getParameter("delete"));
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			Attendto attendto1=new Attendto();
			attendto1.setPatientnumber(patientnumber);
			jdbc.deleteAttendto(attendto1);
			
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