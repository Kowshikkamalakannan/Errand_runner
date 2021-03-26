<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
function loginFunction() {
	  var message = '${message}';
	  //console.log(message);
	  console.log("hi");
	  if(message!=null){
		  alert(message); 
	  }
	  
}
</script>

<style>
* {
  box-sizing:border-box;
}

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

.container-1 {
  padding: 64px;
}

.row-1:after {
  content: "";
  display: table;
  clear: both
}

.column-66 {
  float: left;
  width: 66.66666%;
  padding: 20px;
}

.column-33 {
  float: left;
  width: 33.33333%;
  padding: 20px;
}

.large-font {
  font-size: 48px;
}

.xlarge-font {
  font-size: 64px
}

.button {
  border: none;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  background-color: #4CAF50;
}

img {
  display: block;
  height: auto;
  max-width: 100%;
}

@media screen and (max-width: 1000px) {
  .column-66,
  .column-33 {
    width: 100%;
    text-align: center;
  }
  img {
    margin: auto;
  }
}
  /*login css*/
  .button{
  background-color: #40E0D0;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  }


.bg-img {
  /* The image used */
  background-image: url("https://image.freepik.com/free-vector/woman-washing-dishes-home_74855-11268.jpg");

  min-height: 900px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 200px;
  max-width: 300px;
  padding: 50px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* The actual popup */
.popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}

</style>
</head>
<body >

    <div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
</div>

  <!---login form with bg image*-->
<div class="bg-img">
  <form action="/ErrandRunner/user/sign-in" method="post" class="container">
    <h1>Login</h1>

    <label for="phone"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter Phone" name="phone" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

	<input type="submit" class="button" value="Login">
    <!--  <button class="button" onClick="loginFunction">Login</button>-->
    <% if(request.getAttribute("message")!=null){
    	String msg = request.getAttribute("message").toString();
    
    %>
    <p> <%= request.getAttribute("message") %></p>
    <%} %>
    
 
   
     
    <p>Don't have an account? <a href="registerHome.jsp" style="color:dodgerblue">Register</a>.</p>
  </form>
</div>
<!--  <span class="popuptext" id="myPopup">A Simple Popup!</span>-->


<!-- The App Section -->
<div class="container-1">
  <div class="row-1">
    <div class="column-66">
      <h1 class="xlarge-font"><b>Services</b></h1>
      <h1 class="large-font" style="color:#F08080;"><b>What you get?</b></h1>
      <p><span style="font-size:36px">Get anything done!.</span>Guests coming home and your maid took leave and have no one to clean your home? Forgot something somewhere and dont have time to go get it? Your favourite pani puri shop not on popular food delivery apps? Solution is here! </p>
    </div>
    <div class="column-33">
        <img src="https://image.freepik.com/free-vector/online-assistant-user-help-frequently-asked-questions-call-center-worker-cartoon-character-woman-working-hotline_335657-2336.jpg" width="335" height="471">
    </div>
  </div>
</div>

<!-- Clarity Section -->
<div class="container-1" style="background-color:#f1f1f1">
  <div class="row-1">
    <div class="column-33">
      <img src="https://image.freepik.com/free-vector/customer-service-operators-with-headsets-computers-consulting-clients-24-7-call-center-handling-call-system-virtual-call-center-concept-illustration_335657-2329.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      <h1 class="xlarge-font"><b>Any time!</b></h1>
      <h1 class="large-font" style="color:#FFA07A;"><b>Round the clock</b></h1>
      <p>Get your service or food or anything you want at any time**</p>
    </div>
  </div>
</div>

<!-- The App Section -->
<div class="container-1">
  <div class="row-1">
    <div class="column-66">
      <h1 class="xlarge-font"><b>Home Food</b></h1>
      <h1 class="large-font" style="color:#CD853F;"><b>Wanna taste something good and different?</b></h1>
      <p><span style="font-size:36px">Yummy food for your tummy.</span> Bored of restaurant foods? Don't know to cook or don't have time to cook? Get delicious and healthy home made foods that are cooked by anyone around you</p>
    </div>
    <div class="column-33">
        <img src="https://image.freepik.com/free-vector/food-typography-flat-icon-set_74855-5838.jpg" width="335" height="471" >
    </div>
  </div>
</div>





</body>
</html>