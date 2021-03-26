
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}
 
.card {
	float:left;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: 50px;
  margin-top: 100px;
  text-align: center;
  font-family: arial ;
  flex: 33.33%;
  padding: 5px;
}

.row {
  display: flex;
}

.container-1 {
  padding: 64px;
}

.row-1:after {
  content: "";
  display: table;
  clear: both
}
.carousel-inner img {
    width: 100%;
    height: 100%;
  }

  .myprofile {
  float: right;
  overflow: hidden;
}

.myprofile .myprofile-button {
   font-size: 18px;  
   background-color:#1ac6ff;
   border: none;
   outline: none;
  color: white; 
  padding: 10px 12px;
  font-family: inherit;
  margin: 0;
}

.myprofile-content {
  right: 0;
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.myprofile-content a {

  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.myprofile-content a:hover {
  background-color: #ddd;
}

.myprofile:hover .myprofile-content {
  display: block;
}

</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="#home">Userhome</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <div class="myprofile">
    <button class="myprofile-button">Myprofile</button>
    <div class="myprofile-content">
      <a href="#">My Profile</a>
      <a href="#">Orders</a>
      <a href="#">Logout</a>
    </div>
  </div> 
</div>

<div class="row">
<div class="card">
  <img src="https://images.unsplash.com/photo-1523476467467-16477f18dba0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80" alt="John" style="width:100%">
  <h1>Pizza</h1>
  <p class="title">Serves 3 made with olives,lemongrass,extra cheese!!</p>
</div>

<div class="card">
  <img src="https://images.unsplash.com/photo-1438522014717-d7ce32b9bab9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80" alt="user" style="width:100%">
  <h1>Starwberry Shake</h1>
  <p class="title">Made with real berries</p>
</div>

<div class="card">
  <img src="https://images.unsplash.com/photo-1536184071535-78906f7172c2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=820&q=80" alt="John" style="width:100%">
  <h1>Tacos</h1>
  <p class="title">Delicious Mexican Tacos<br>Straight From<br> Home</p>
</div>

<div class="card">
  <img src="https://images.unsplash.com/photo-1536184071535-78906f7172c2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=820&q=80" alt="John" style="width:100%">
  <h1>Tacos</h1>
  <p class="title">Delicious Mexican Tacos<br>Straight From<br> Home</p>
</div>

</div>


<div class="container-1" style="background-color:#f1f1f1">
  <div class="row-1">
    	<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80" alt="New York" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
  </div>
</div>
</body>
</html>

