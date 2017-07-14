<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">

<link rel="stylesheet" href="register.css" type="text/css">
</head>
<body>

<%
String fName=request.getParameter("fName");
String lName=request.getParameter("lName");
String logName=request.getParameter("logName");
String password=request.getParameter("password");
String password1=request.getParameter("password1");
String dName=request.getParameter("dName");
String city=request.getParameter("city");
String email=request.getParameter("email");

if(fName != null && lName!=null && logName!=null && password != null && password1!=null && dName!=null && city!= null && email!=null)
{
 if(password.equals(password1))
 {
  	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://172.30.55.21:3306/sampledb";
	Connection con=DriverManager.getConnection(url,"mysql","root");

	PreparedStatement pstmt=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?)");
	pstmt.setString(1, fName);
	pstmt.setString(2, lName);
	pstmt.setString(3, logName);
	pstmt.setString(4, password);
	pstmt.setString(5, dName);
	pstmt.setString(6, city);
	pstmt.setString(7, email);

	pstmt.executeUpdate();

	PreparedStatement pstmt2=con.prepareStatement("insert into login values(?,?,?)");
	pstmt2.setString(1, logName);
	pstmt2.setString(2, password);
	pstmt2.setInt(3, 2);

	pstmt2.executeUpdate();
	con.close();
 }
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%} else {

%>
<div class="register">
    <h2>REGISTERATION FORM</h2>

<form class="register-form" method="post">
    <div class="text_field">
        <input type="text" placeholder="FirstName" name="fName" required/>
    </div>
    <div class="text_field">
        <input type="text" placeholder="LastName" name="lName" required/>
    </div>
    <div class="text_field">
        <input type="text" placeholder="LoginName" name="logName" required/>
    </div>
    <div class="text_field">
        <input type="password" placeholder="Password" name="password" required/>
    </div>
    <div class="text_field">
        <input type="password" placeholder="Confirm Password" name="password1" required/>
    </div>
    <div class="text_field">
        <input type="text" placeholder="DisplayName" name="dName" required/>
    </div>
    <div class="text_field">
        <input type="text" placeholder="City" name="city" required/>
    </div>
    <div class="text_field">
        <input type="email" placeholder="Email-Id" name="email" required TextMode="Email"/>
    </div>
   
     <div class="text_field">
        <input type="submit" value="REGISTER"/>
    </div>
</form>
</div>

</body>
</html>
<%}%>
