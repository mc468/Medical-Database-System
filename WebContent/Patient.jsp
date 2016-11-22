<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Patient"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Patient.jsp' starting page</title>
    
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
			int pnumber=Integer.parseInt(request.getParameter("Patientnumber"));
			String paddress=request.getParameter("Patientaddress");
			String pname=request.getParameter("Patientname");
			String pgender=request.getParameter("Patientgender");
			int pSSN=Integer.parseInt(request.getParameter("PatientSSN"));
			int pphonenumber=Integer.parseInt(request.getParameter("Patientphonenumber"));
			String pbirth=request.getParameter("Patientbirth");
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			Patient patient=new Patient();
			patient.setPatientnumber(pnumber);
			patient.setPatientaddress(paddress);
			patient.setPatientname(pname);
			patient.setPatientgender(pgender);
			patient.setPatientSSN(pSSN);
			patient.setPatientphonenumber(pphonenumber);
			patient.setPatientbirth(pbirth);
			jdbc.insertPatient(patient);
		}
		catch(Exception ex){
			request.setAttribute("msg","网络故障！");
			ex.getStackTrace();
		}
		finally{
			DBUtils.close(conn);
		}   
     %>
   <jsp:forward page="/insertpatient.jsp"/>
  </body>
</html>