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
<title>Contact Us</title>
<link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.css">
<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String message=request.getParameter("feedback");

if(name != null && email != null && contact !=null && message !=null)
{
 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/bloggerdb";
 Connection con=DriverManager.getConnection(url,"root","root");

 PreparedStatement pstmt=con.prepareStatement("insert into ContactUs values(?,?,?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,name);
	pstmt.setString(3,email);
	pstmt.setString(4,contact);
	pstmt.setString(5,message);
	
	pstmt.executeUpdate();
	con.close();
%>
<%-- <jsp:forward page="home.jsp"></jsp:forward> --%>

<% } else { %>
 
  <div class="container">
  <fieldset> 
    <center> <h2 style="align-content:center">We're here to Help!</h2>
        <div>
            We're friendly and available to chat. Reach out to us anytime & we'll happily answer your questions.
        </div>
    </center>

    <div class="jumbotron text-center">
        <div> Phone No:9156047105</div>
        <div> Email:Blogger@gmail.com</div>
        <div>Support EMail:supported.blogger@gmail.com</div>
    </div>
    
<form class="query-form" method="post">
        <h2>Have a Question?</h2>
        <p>Get in Touch!</p>

        <div class="form-group">
            <Label Class="control-label">Enter your Name</Label>
               <input type="text" name="name" class="form-control" placeholder="Name" autofocus required/>
        </div>
        

        <div class="form-group">
            <Label Class="control-label">Email-Id</Label>
            <input type="text" name="email" class="form-control" placeholder="Email" required/>
        </div>

        <div class="form-group">
            <Label Class="control-label">Contact No</Label>
          <input type="text" name="contact" class="form-control" placeholder="Contact No" required/>
        </div>

        <div class="form-group">
            <Label Class="control-label">Write Message</Label>
           <input type="text" name="feedback" class="form-control" textmode="multiline" rows="10" required/>
        </div>

        <div class="form-group">
            <button type="reset" class="btn btn-default">Cancel</button>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>

    </form>
    </fieldset>
</div>
<% } %>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>