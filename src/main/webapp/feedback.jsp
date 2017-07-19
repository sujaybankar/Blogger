<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback form</title>
<link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.css">
<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">
</head>

<body>


<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contactno");
String feedback=request.getParameter("feedback");

if(name != null && email != null && contact !=null && feedback !=null)
{
 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://10.1.6.173:3306/sampledb";
 Connection con=DriverManager.getConnection(url,"mysql","root");

 PreparedStatement pstmt=con.prepareStatement("insert into feedback values(?,?,?,?)");
	
	pstmt.setString(1,name);
	pstmt.setString(2,email);
	pstmt.setString(3,contact);
	pstmt.setString(4,feedback);
	
	pstmt.executeUpdate();
	con.close();
%>
<jsp:forward page="index.jsp"></jsp:forward>

<% } else { %>


<form id="form1">
    <div class="container">
        <h3>FeedBack Form</h3>
        <hr/>
        <fieldset>

            <div class="form-group">
                <Label Class="control-label">Name</Label>
                <input type="text" name="name" Class="form-control" required autofocus placeholder="Write your Name" />
            </div>

            <div class="form-group">
                <Label Class="control-label">Email-Id</Label>
                <input type="text" name="email" Class="form-control" required TextMode="Email" placeholder="Write your Email-Id" />
            </div>

            <div class="form-group">
                <Label Class="control-label">Contact No</Label>
                <input type="text" name="contactno" Class="form-control" required TextMode="Phone" placeholder="write your contact no" />
            </div>


            <div class="form-group">
                <Label Class="control-label">Feedback</Label>
                <textarea rows="10" name="feedback" required Class="form-control" Rows="10" placeholder="write feedback" ></textarea>
            </div>

            <div class="form-group">
                <input type="reset" class="btn btn-default" value="Cancel" />
                <input type="submit" class="btn btn-primary" value="Submit" />
            </div>
        </fieldset>
    </div>
</form>
<% } %>

</body>
</html>
