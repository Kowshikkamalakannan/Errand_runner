<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
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

.topnav a.active {
  background-color: #40E0D0;
  color: white;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  margin-top: 100px;
  text-align: center;
  font-family: arial;
  flex: 33.33%;
  padding: 5px;
}

.title {
  color: grey;
  font-size: 18px;
}


a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}

a.cardButton:link, a.cardButton:visited {
  background-color: #40E0D0;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

.row {
  display: flex;
}
</style>
</head>

<body>
	<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
</div>
<div class="row">

<div class="card">
  <img src="https://pbs.twimg.com/profile_images/1241754669409611778/TGxfyMfe_400x400.jpg" alt="John" style="width:100%">
  <h1>Errand Runner</h1>
  <p class="title">Serving People</p>
  <a  class="cardButton" href="errandRegister.jsp">Register</a>
</div>

<div class="card">
  <img src="https://zboostyourlife.files.wordpress.com/2010/12/smart-phone-savvy.jpg" alt="user" style="width:100%">
  <h1>New User</h1>
  <p class="title">Looking for<br> service</p>
  <a  class="cardButton" href="userRegister.jsp">Register</a>
</div>

<div class="card">
  <img src="https://thumbs.dreamstime.com/b/beautiful-woman-cooking-soup-woman-cuts-knife-vegetables-vector-illustration-beautiful-woman-cooking-soup-woman-cuts-149072635.jpg" alt="John" style="width:100%">
  <h1>Home Chef</h1>
  <p class="title">Delicious Food<br> From<br> Home</p>
  <a  class="cardButton" href="cookRegister.jsp">Register</a>
</div>

</div> 

</body>

</html>