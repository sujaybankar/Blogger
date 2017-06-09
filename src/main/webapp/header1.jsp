<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>

<link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.css">
<link rel="stylesheet" href="files/bootstrap.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="files/bootstrap.min.js" type="text/css">

</head>
<body>

<nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="font-family:Calibri;font-size:xx-large">Blog4All</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                     <li class="active"><a href="mainblog.jsp">Home <span class="sr-only">(current)</span></a></li>
                      <li><a href="myprofile.jsp">My Profile</a></li>
                    <li><a href="publicBlog1.jsp">Public Blogs</a></li>
                    <li><a href="MyBlog.jsp">My Blogs</a></li>
                    <li><a href="Createblog.jsp">Create Blogs</a></li>
                    <li><a href="contactUs.jsp">Contact Us</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="logout.jsp">Log Out</a></li>
                </ul>
            </div>
        </div>
    </nav>


</body>
</html>