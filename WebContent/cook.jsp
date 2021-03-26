
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
*{
    padding: 0;
    margin: 0;
    -webkit-box-sizing: border-box;
            box-sizing: border-box;
}


a:hover{
  opacity: 1;
  color: black;
}


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
  padding: 14px 16px;
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



/*cards*/
.main-cont{
    padding: 0;
    margin: 0;
    top: -215px;
}

.news-row {
	margin: 0;
    margin-top: 50px;
    margin-bottom: 50px;
}

.news-block{
    margin: auto;
    padding: 0;
    background-color: transparent;
    max-width: 1060px;
    min-width: 100px;
    border: 20px solid transparent;
    -o-border-image: linear-gradient(to bottom right,rgba(255, 255, 255, 0.75) 0%,rgba(245, 245, 245, 0.75) 0%,rgba(245, 245, 245, 0.75) 16.6%,rgb(245, 245, 245) 37.8%,rgb(245, 245, 245) 48.8%,rgb(254, 254, 254) 53.1%,rgba(245, 245, 245, 0.75) 79.4%,rgba(245, 245, 245, 0.75) 84.3%) !important;
       border-image: -webkit-gradient(linear,left top, right bottom,from(rgba(255, 255, 255, 0.75)),color-stop(0%, rgba(245, 245, 245, 0.75)),color-stop(16.6%, rgba(245, 245, 245, 0.75)),color-stop(37.8%, rgb(245, 245, 245)),color-stop(48.8%, rgb(245, 245, 245)),color-stop(53.1%, rgb(254, 254, 254)),color-stop(79.4%, rgba(245, 245, 245, 0.75)),color-stop(84.3%, rgba(245, 245, 245, 0.75))) !important;
       border-image: linear-gradient(to bottom right,rgba(255, 255, 255, 0.75) 0%,rgba(245, 245, 245, 0.75) 0%,rgba(245, 245, 245, 0.75) 16.6%,rgb(245, 245, 245) 37.8%,rgb(245, 245, 245) 48.8%,rgb(254, 254, 254) 53.1%,rgba(245, 245, 245, 0.75) 79.4%,rgba(245, 245, 245, 0.75) 84.3%) !important;
    border-image-slice: 1 !important;
    -webkit-transition: all 0.6s ease;
    transition: all 0.6s ease;
    -webkit-animation: blockAppear .6s ease-in-out;
            animation: blockAppear .6s ease-in-out;
    -webkit-animation-duration: 1s;
            animation-duration: 1s;
}

.underlay{
  /*display: none;*/
  margin: 0;
  padding: 0;
  max-height: 350px;
  max-width: 340px;
}

.card{
    margin: 0;
    width: 340px;
    max-height: 350px;
    max-width: 340px;
    background-color: transparent;
    border: 20px solid transparent !important;
    -o-border-image: linear-gradient(to bottom right,rgba(255, 255, 255, 0.75) 0%,rgba(245, 245, 245, 0.75) 0%,rgba(245, 245, 245, 0.75) 16.6%,rgba(245, 245, 245, 0.75) 79.4%,rgba(245, 245, 245, 0.75) 84.3%) !important;
       border-image: -webkit-gradient(linear,left top, right bottom,from(rgba(255, 255, 255, 0.75)),color-stop(0%, rgba(245, 245, 245, 0.75)),color-stop(16.6%, rgba(245, 245, 245, 0.75)),color-stop(79.4%, rgba(245, 245, 245, 0.75)),color-stop(84.3%, rgba(245, 245, 245, 0.75))) !important;
       border-image: linear-gradient(to bottom right,rgba(255, 255, 255, 0.75) 0%,rgba(245, 245, 245, 0.75) 0%,rgba(245, 245, 245, 0.75) 16.6%,rgba(245, 245, 245, 0.75) 79.4%,rgba(245, 245, 245, 0.75) 84.3%) !important;
    border-image-slice: 1 !important;
    -webkit-transition: -webkit-transform 0.6s ease;
    transition: -webkit-transform 0.6s ease;
    transition: transform 0.6s ease;
    transition: transform 0.6s ease, -webkit-transform 0.6s ease;
    -webkit-animation: blockAppear .6s ease-in-out;
            animation: blockAppear .6s ease-in-out;
    -webkit-animation-duration: 1.5s;
            animation-duration: 1.5s;
}

@-webkit-keyframes blockAppear {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px) ;
            transform: translateY(20px) ;
  }
  ready.css:1
  40% {
    opacity: 0;
    -webkit-transform: translateY(20px);
            transform: translateY(20px);
    -webkit-box-shadow: 0 10px 35px rgba(0,0,0,.15), 0 1px 0 rgba(0,0,0,.15);
            box-shadow: 0 10px 35px rgba(0,0,0,.15), 0 1px 0 rgba(0,0,0,.15);
  }
  ready.css:1
  80% {
    opacity: 1;
    -webkit-transform: translateY(-5px);
            transform: translateY(-5px);
  }
  ready.css:1
  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-box-shadow: none;
            box-shadow: none;
  }
}

@keyframes blockAppear {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px) ;
            transform: translateY(20px) ;
  }
  ready.css:1
  40% {
    opacity: 0;
    -webkit-transform: translateY(20px);
            transform: translateY(20px);
    -webkit-box-shadow: 0 10px 35px rgba(0,0,0,.15), 0 1px 0 rgba(0,0,0,.15);
            box-shadow: 0 10px 35px rgba(0,0,0,.15), 0 1px 0 rgba(0,0,0,.15);
  }
  ready.css:1
  80% {
    opacity: 1;
    -webkit-transform: translateY(-5px);
            transform: translateY(-5px);
  }
  ready.css:1
  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    -webkit-box-shadow: none;
            box-shadow: none;
  }
}

.card:hover{
    z-index: 999;
    max-height: 800px;
    width: 400px;
    max-width: 400px;
    border: none !important;
    border-right: 60px solid transparent !important;
    border-bottom: 20px solid transparent !important;
    margin-right: -20px;
	  -webkit-transform:  translate(-30px, -50px);
	          transform:  translate(-30px, -50px);
}

.card:before{
  -webkit-box-shadow: none;
          box-shadow: none;
  display: block;
  content: '';
  position: absolute;
  width: 100%;
  max-width: 400px;
  height: 100%;
  -webkit-transition: -webkit-box-shadow 0.6s ease;
  transition: -webkit-box-shadow 0.6s ease;
  transition: box-shadow 0.6s ease;
  transition: box-shadow 0.6s ease, -webkit-box-shadow 0.6s ease;
}

.card:hover:before
{
  max-width: 300px;
  -webkit-box-shadow: 60px 60px 20px RGBA(142, 142, 142, .6);
          box-shadow: 60px 60px 20px RGBA(142, 142, 142, .6);
}

.card:hover .card-img-top{
	height: 300px;
}

.card:hover .card-block {
  width: 300px;
	background-image: -webkit-gradient(linear,right bottom, left top,from(rgb(72, 85, 108)),color-stop(50%, rgb(27, 33, 43)),color-stop(51%, rgb(20, 25, 34)),to(rgb(53, 59, 69)));
	background-image: linear-gradient(to top left,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 50%,rgb(20, 25, 34) 51%,rgb(53, 59, 69) 100%);
}
.card-title{
margin-left:10px;
margin-top:10px;
}

.card:hover .card-title{
    color: white;
}

.card:hover .card-text{
	  /*display: block !important;*/
    color: white;
}

.card-block{
    background-color: transparent;
    background-image: -webkit-gradient(linear,left top, right bottom,from(rgba(255, 255, 255, 0.75)),color-stop(0%, rgba(245, 245, 245, 0.75)),color-stop(16.6%, rgba(245, 245, 245, 0.75)),color-stop(37.8%, rgb(245, 245, 245)),color-stop(48.8%, rgb(245, 245, 245)),color-stop(53.1%, rgb(254, 254, 254)),color-stop(79.4%, rgba(245, 245, 245, 0.75)),color-stop(84.3%, rgba(245, 245, 245, 0.75)));
    background-image: linear-gradient(to bottom right,rgba(255, 255, 255, 0.75) 0%,rgba(245, 245, 245, 0.75) 0%,rgba(245, 245, 245, 0.75) 16.6%,rgb(245, 245, 245) 37.8%,rgb(245, 245, 245) 48.8%,rgb(254, 254, 254) 53.1%,rgba(245, 245, 245, 0.75) 79.4%,rgba(245, 245, 245, 0.75) 84.3%);
    background-repeat: no-repeat;
}

.card-text {
	display: none;
}

.card-img-top{
    width: 300px;
    height: 250px;
    background-color: #fff;
    -webkit-transition: height 0.8s ease;
    transition: height 0.8s ease;
}

@media (max-width: 1120px){
    .bar-cont{
        width: 100%;
    }
    .news-block{
       max-width: 720px;
    }
    .card:hover{
      margin-right: -20px;
    }
    .card:hover .card-block{
      width: 300px;
    }
}

@media (max-width: 800px){
    .news-block{
       min-width: 380px;
    }
    .card:hover{
      border-left: 20px solid transparent !important;
      margin-right: -40px;
      -webkit-transform:  translate(0, -50px);
              transform:  translate(0, -50px);
    }
    .card:hover:before{
      -webkit-box-shadow: 0px 60px 40px RGBA(142, 142, 142, .5);
              box-shadow: 0px 60px 40px RGBA(142, 142, 142, .5);
    }
    .card:hover .card-block{
      width: 300px;
    }
}

@media (max-width: 580px){
  .news-block{
     max-width: 380px;
  }
}

/*cards*/


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
<div class="container-fluid main-cont">
    <div class="row news-row">
        <div class="container-fluid col-md-12 col-sm-6 justify-content-center news-block">
            <div class="card-group">
              <div class="underlay">
                <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1493174221118-fc9fb83deec5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')"></div>
                    <div class="card-block" >
                    <h5 class="card-title" style="font-family: 'Anton', sans-serif">Tacos</h5>
                    <p class="card-text" >Canon will have a full slate of new and updated products to show attendees at this year’s NAB Show. The company has announced its new Compact-Servo 70-200mm telephoto zoom lens</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
              </div>
              <div class="underlay">
               <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1469533667357-006056eaf780?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Cookies for life</h5>
                      <p class="card-text" >The brown Sennheiser HD 598 audiophile headphones have excellent, detailed hi-fi sound and a stylish design. They are comfortable to wear and offer versatility as well. These accessories feature a multi-dimensional soundstage</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1532636875304-0c89119d9b4d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Mouth Watering Tacos</h5>
                      <p class="card-text" >The harnessing of energy has never been without projects of monolithic scale. From the Hoover Dam to the Three Gorges—the world's largest power station—engineers the world over have recognised that with size comes advantages</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Starwberry Shake</h5>
                      <p class="card-text" >In 2015 we reported on an issue with MacBook Retina displays that were seeing problems with the anti-reflective coating wearing off, which came to be known as ‘Staingate.’</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Spicy Burger<hr></h5>
                      <p class="card-text" >Modern processors can run at temperatures ranging from 25 to 90 degrees, depending on configuration, cooling and workload. That said, when a CPU takes on a heavy load, that increase is gradual</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Red Velvet <hr></h5>
                      <p class="card-text" >In the latest edition of the T3 Agenda, we prepare to box our ears with Beats By Dre's Anthony Joshua headphones, detail the pre-order incentives and special editions of Call of Duty WW2 <a href="#"><u>Read More...</u></a></p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1536184071535-78906f7172c2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=820&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Tacos cart<hr></h5>
                      <p class="card-text" >It has been 5 years since Steve Jobs passed away. Many publications write about how Apple Inc. has faired under Tim Cook's leadership post-Jobs <a href="#"><u>Read More...</u></a></p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1497051788611-2c64812349fa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=414&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">Dragon Chicken<hr></h5>
                      <p class="card-text" >Officially, in order to use AirPlay to stream music from your iOS device, you would need either an Apple TV, AirPort Express, or an AirPlay-enabled receiver or set of speakers</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1536184071535-78906f7172c2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=820&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">A Great Indian Cuisine<hr></h5>
                      
                      <p class="card-text" >In a makeshift lab, a trio of brainiac students argue over their time-travel device. The skeptic on the team has her doubts—not that the invention will work</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
                <div class="underlay">
                  <div class="card">
                    <div class="card-img-top" style="background-image: url('https://images.unsplash.com/photo-1536184071535-78906f7172c2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=820&q=80')"></div>
                    <div class="card-block" >
                      <h5 class="card-title" style="font-family: 'Anton', sans-serif">A Great Indian Cuisine<hr></h5>
                      <p class="card-text" >In a makeshift lab, a trio of brainiac students argue over their time-travel device. The skeptic on the team has her doubts—not that the invention will work</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
            </div>
        </div>
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

<script type="text/javascript">
  var main = function () {
    $('.card').on('mouseenter', function() {
      $(this).find('.card-text').slideDown(300);
    });
  
    $('.card').on('mouseleave', function(event) {
       $(this).find('.card-text').css({
         'display': 'none'
       });
     });
};
$(document).ready(main);

</script>


</body>
</html>

