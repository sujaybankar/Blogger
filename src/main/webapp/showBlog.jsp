<%@page import="java.sql.ResultSet"%>
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
<title>Public BlogDetail</title>
<link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.css">


<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">
</head>
<body>

<!-- 
<nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" style="font-family:Calibri;font-size:xx-large">Blog4All</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                     <li class="active"><a href="publicBlog.jsp">Back </a></li>
                </ul>
           
            </div>
        </div>
    </nav> -->



<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bloggerdb";
Connection con=DriverManager.getConnection(url,"root","root");

int blogid=Integer.parseInt(request.getParameter("blogid"));

Statement stmt=con.createStatement();
String query="select r.first_name,r.last_name,b.BlogContent,b.BlogTitle,b.createdDate from registration r inner join blogs b on r.login_name=b.login_name where b.blogid="+blogid; 
ResultSet rs=stmt.executeQuery(query);

while(rs.next())
{
%>
<div class="container">
<div class="profile_border">
  <div class="profile">
   <div class="protext">
   <div class="name">
 
<h3>Title:<%=rs.getString(4) %> </h3><br />
<p>Publish Date:<%=rs.getString(5) %></p><br />
<p>Author:<%=rs.getString(1) %>  <%=rs.getString(2) %></p>
<p>Content:<%=rs.getString(3) %></p>
<hr />
<%
}
String name =request.getParameter("name");
String comment =request.getParameter("comment");
String id=request.getParameter("id");
if(name!=null && comment!=null)
{

PreparedStatement pstmt=con.prepareStatement("insert into comments values(?,?,?,?)");
pstmt.setString(1, id);
pstmt.setString(2, comment);
pstmt.setString(3, name);
pstmt.setInt(4, blogid);
pstmt.executeUpdate();
} else 
{ %>

<form method="post">
      <div class="form-group">
        <label class="control-label">Name</label>
        <input type="text" name="name" class="form-control" placeholder="Name" autofocus required/>
    </div>

    <div class="form-group">
        <label class="control-label">Comment</label>
        <textarea class="form-control" rows="5" name="comment" required></textarea>
    </div>

    <div class="form-group">
        <button type="reset" class="btn btn-default">Cancel</button>
        <input type="submit" class="btn btn-primary" value="Comment"/>
     </div>
 </form>
</div>
</div>
</div>
</div>
</div>
<% } %>

<hr />
<%
Statement stmt1=con.createStatement();
String query1="select name,commentcontent from comments where blogid="+blogid;
ResultSet rs1=stmt1.executeQuery(query1);
%>
<div class="container">
<b>Comments:</b>
<hr/>
</div>
<% while(rs1.next())
{
%>
	<div class="container">

<p><%=rs1.getString(2) %></p><br/>
<p>--<%=rs1.getString(1) %></p>
<hr/>
</div>

<% }
con.close();%>

</body>
</html>