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
    
    <title>My JSP 'Surgery2.jsp' starting page</title>
    
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
			int empnumber2=Integer.parseInt(request.getParameter("EMPnumber"));
			String surgerydate2=request.getParameter("Surgerydate");
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			Surgery surgery2=new Surgery();
			surgery2.setEMPnumber(empnumber2);
			surgery2.setSurgerydate(surgerydate2);
			List surgeryperdocdaylist1 =jdbc.querySurgeryperdocday(surgery2);
			if(surgeryperdocdaylist1.size()>0){
				request.setAttribute("surgeryperdocdaylist",surgeryperdocdaylist1);
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
     <jsp:forward page="/surgeryperdocday.jsp"/>
</body>
</html>