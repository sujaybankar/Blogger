<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">
</head>
 <body>
<%
String uName=request.getParameter("uName");
String password=request.getParameter("password");

 session.setAttribute("uname",uName);
session.setAttribute("pwd", password); 


if(uName != null && password != null )
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bloggerdb";
Connection con=DriverManager.getConnection(url, "root", "root");

Statement stmt=con.createStatement();
String query="select * from login";
ResultSet set=stmt.executeQuery(query);

while(set.next())
{
	String uname=set.getString(1);
	String pwd=set.getString(2);
	int roleId=set.getInt(3);
	if(uName.equals(uname) && password.equals(pwd))
	{
		session.setAttribute("uname2", uname);
		session.setAttribute("roleid",roleId);

	%>
	<jsp:forward page="mainblog.jsp"></jsp:forward>
 <% } %> 
<%}con.close(); %>

<jsp:forward page="register.jsp"></jsp:forward>
<% }else { %>
 <div class="login-box">
    <h3 class="head1">LOG IN</h3>
    <form class="user-login" method="post">
        <div class="u-form-group">
            <input type="text" placeholder="UserName" name="uName" required="true"/>
        </div>
        <div class="u-form-group">
            <input type="password" placeholder="Password" name="password" required/>
        </div>
        <div class="u-form-group">
            <input type="submit" value="LOG IN"/>
        </div>
    </form>

</div>

</body>
</html>
<%} %>