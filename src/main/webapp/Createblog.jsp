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
<title>Create Blog</title>
<link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.css">
<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">
</head>
<body>
<jsp:include page="header1.jsp"></jsp:include>
<%
String id=request.getParameter("id");
String title=request.getParameter("title");
String blog=request.getParameter("blogContent");
Date date=new Date();
String createdDate=date.toString();

if(title != null && blog != null && createdDate !=null)
{
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://10.1.0.103:3306/sampledb";
	Connection con=DriverManager.getConnection(url,"mysql","root");

 
    String uName=(String)session.getAttribute("uname");

	PreparedStatement pstmt=con.prepareStatement("insert into blogs values(?,?,?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,title);
	pstmt.setString(3,"20-12-2016");
	pstmt.setString(4,uName);
	pstmt.setString(5, blog);
	pstmt.executeUpdate();
	
	con.close();
    
%>
<jsp:forward page="MyBlog.jsp"></jsp:forward>
<% } else { %>

<div class="container">
<fieldset>
    <h1>Write your blog</h1>
    <hr/>
    
<form class="blog-form" method="post">
    
    <div class="form-group">
        <label class="control-label">Blog Title</label>
        <input type="text" name="title" class="form-control" placeholder="Title" autofocus required/>
    </div>

    <div class="form-group">
        <label class="control-label">Write Blog</label>
        <textarea class="form-control" rows="20" name="blogContent" placeholder="Write your blog" required></textarea>
    </div>

    <div class="form-group">
        <button type="reset" class="btn btn-default">Cancel</button>
        <input type="submit" class="btn btn-primary" value="Submit" />
     </div>
     </form>
</fieldset>
</div>
<%} %>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
