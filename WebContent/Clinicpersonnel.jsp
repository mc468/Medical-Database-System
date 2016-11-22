<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="njit.cs631.JDBC"%>
<%@ page import="njit.cs631.DBUtils"%>
<%@ page import="njit.cs631.Clinicpersonnel"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Clinicpersonnel.jsp' starting page</title>
    
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
			int empnumber=Integer.parseInt(request.getParameter("EMPnumber"));
			String clinicpersonnelgender=request.getParameter("Clinicpersonnelgender");
			String clinicpersonnelname=request.getParameter("Clinicpersonnelname");
			String clinicpersonneladdress=request.getParameter("Clinicpersonneladdress");
			int clinicpersonnelSSN=Integer.parseInt(request.getParameter("ClinicpersonnelSSN"));
			int clinicpersonnelsalary=Integer.parseInt(request.getParameter("Clinicpersonnelsalary"));
			int phonenumber=Integer.parseInt(request.getParameter("phonenumber"));
			String worktype=request.getParameter("worktype");
			String physicianspecialty=request.getParameter("physicianspecialty");
			String physiciantype=request.getParameter("physiciantype");
			String contractlength=request.getParameter("contractlength");
			int contractamount=Integer.parseInt(request.getParameter("contractamount"));
			String contracttype=request.getParameter("contracttype");
			String grade=request.getParameter("grade");
			int years=Integer.parseInt(request.getParameter("years"));
			conn=DBUtils.getConnection();
			JDBC jdbc=new JDBC(conn);
			Clinicpersonnel clinicpersonnel=new Clinicpersonnel();
			clinicpersonnel.setEMPnumber(empnumber);
			clinicpersonnel.setClinicpersonnelgender(clinicpersonnelgender);
			clinicpersonnel.setClinicpersonnelname(clinicpersonnelname);
			clinicpersonnel.setClinicpersonneladdress(clinicpersonneladdress);
			clinicpersonnel.setClinicpersonnelSSN(clinicpersonnelSSN);
			clinicpersonnel.setClinicpersonnelsalary(clinicpersonnelsalary);
			clinicpersonnel.setphonenumber(phonenumber);
			clinicpersonnel.setworktype(worktype);
			clinicpersonnel.setphysicianspecialty(physicianspecialty);
			clinicpersonnel.setphysiciantype(physiciantype);
			clinicpersonnel.setcontractlength(contractlength);
			clinicpersonnel.setcontractamount(contractamount);
			clinicpersonnel.setcontracttype(contracttype);
			clinicpersonnel.setgrade(grade);
			clinicpersonnel.setyears(years);
			jdbc.insertClinicpersonnel(clinicpersonnel);
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