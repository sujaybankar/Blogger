<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Blog</title>
<link rel="stylesheet" href="mainblog.css" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }
    </script>

</head>
<body>
<div id="mySidenav" class="sidenav">
    <a class="closebtn" onclick="closeNav()">&times;</a>
    <a href="myprofile.jsp">Profile</a>
    <a href="MyBlog.jsp">My Blogs</a>
    <a href="Createblog.jsp">Create Blog</a>
    <a href="publicBlog1.jsp">View Other Blog</a>
    <a href="logout.jsp">Log Out</a>
</div>

<span class="span1" onclick="openNav()">&#9776; open</span>
</body>
</html>