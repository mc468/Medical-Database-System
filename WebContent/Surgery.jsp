<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Surgery"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Surgery.jsp' starting page</title>
    
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
			int surgerynumber=Integer.parseInt(request.getParameter("Surgerynumber"));
			int empnumber=Integer.parseInt(request.getParameter("EMPnumber"));
			String surgerycode=request.getParameter("Surgerycode");
			int patientnumber=Integer.parseInt(request.getParameter("Patientnumber"));
			String surgerydate=request.getParameter("Surgerydate");
			String theater=request.getParameter("theater");
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			Surgery surgery=new Surgery();
			surgery.setSurgerynumber(surgerynumber);
			surgery.setEMPnumber(empnumber);
			surgery.setSurgerycode(surgerycode);
			surgery.setPatientnumber(patientnumber);
			surgery.setSurgerydate(surgerydate);
			surgery.settheater(theater);
			jdbc.insertSurgery(surgery);
			
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