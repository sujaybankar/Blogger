<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="home.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://bootswatch.com/united/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    function f1()
    {
	 window.location="register.jsp";	
	}
    
    function f2()
    {
	 	window.location="login.jsp";
	}
    </script>
    
    <style>
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img 
    {
      width: 80%;
      margin: auto;
     
    }
    </style>
    
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
                     <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                    <li><a href="publicBlog.jsp">Public Blogs</a></li>
                    <li><a href="contactUs.jsp">Contact Us</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
      <br /><br />
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="CarsoleImages/b1.jpg"  alt="Chania" />
      </div>

      <div class="item">
        <img src="CarsoleImages/b2.jpg" alt="Chania" />
      </div>
    
      <div class="item">
        <img src="CarsoleImages/b3.jpg" alt="Flower" />
      </div>

      <div class="item">
        <img src="CarsoleImages/b8.jpg" alt="Flower" />
      </div>

      <div class="item">
        <img src="CarsoleImages/b11.jpg" alt="Flower" />
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<br /><br />
  </div>
    <div class="row">
        <div class="col-md-12" style="text-align:center;">
            <p style="color:red">&copy; InfoWay Pvt. Ltd. 2016-17. All Rights reserved by Blogger Team</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-2" style="text-align:center;">
            <a href="#">SiteMap</a>
        </div>
        <div class="col-md-2" style="text-align:center;">
            <a href="contactUs.jsp">About Us</a>
        </div>
        <div class="col-md-2" style="text-align:center;">
            <a href="#">Help</a>
        </div>
        <div class="col-md-2" style="text-align:center;">
            <a href="feedback.jsp">Feedback</a>
        </div>
        <div class="col-md-2">

        </div>
    </div>
</body>
</html>