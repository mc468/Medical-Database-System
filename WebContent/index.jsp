<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="njit.cs631.Patient"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   </head>
   <body>
    <a href="insertpatient.jsp">Insert A New Patient</a><br/>
    <a href="viewpatient.jsp">View Patient Information</a><br/>
    <a href="scheduleappointment.jsp">Schedule An Appointment with A Doctor</a><br/>
    <a href="checkdiagnosis.jsp">Check Previous Diagnosis and Illness</a><br/>
    <a href="scheduleperdocday.jsp">View Appointment Scheduled per Doctor and per Day</a><br/>
    <a href="checkclinicbed.jsp">Check for Available Room/Bed</a><br/>
    <a href="assignlive.jsp">Assign A Patient to A Room/Bed</a><br/>
    <a href="removelive.jsp">Remove A Patient to A Room/Bed</a><br/>
    <a href="assigncare.jsp">Assign A Doctor to A Patient</a><br/>
    <a href="removecare.jsp">Remove A Doctor to A Patient</a><br/>
    <a href="assignattendto.jsp">Assign A Nurse to A Patient</a><br/>
    <a href="removeattendto.jsp">Remove A Nurse to A Patient</a><br/>
    <a href="surgeryperroomday.jsp">View Surgery Scheduled per Room and per Day</a><br/>
    <a href="surgeryperdocday.jsp">View Surgery Scheduled per Surgeon and per Day</a><br/>
    <a href="booksurgery.jsp">Book A Surgery</a><br/>
    <a href="surgeryperpatient.jsp">View Surgery Scheduled per Patient</a><br/>
    <a href="addclinicpersonnel.jsp">Add A Staff Member</a><br/>
    <a href="removeclinicpersonnel.jsp">Remove A Staff Member</a><br/>
    <a href="clinicpersonnelperjobtype.jsp">View Staff Member per Job Type</a><br/>
    <a href="addshift.jsp">Schedule Job Shift</a><br/>
  </body>
</html>




