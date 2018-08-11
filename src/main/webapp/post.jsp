<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Post your room</title>
    <link rel="stylesheet" type="text/css" href="css/post.css">
   
   <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">

   <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/material-icons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/JLX-Footer-with-Icons.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Pretty-Footer.css">
    <link rel="stylesheet" href="assets/css/Responsive-footer.css">
    <link rel="stylesheet" href="assets/css/Responsive-footer1.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="css/glyphicon.css">
    <link rel="stylesheet" href="css/custom.css">
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
    <div class="container">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
        
            <a class="navbar-brand" href="afterlogin.jsp">
                <img class="rounded img-fluid" src="img/newlogo.jpg" width="140px" height="90px"></a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navcol-1" style="margin-left: 140px; margin-right: -1200px;">
                <ul class="nav navbar-nav mx-auto" >
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="about.jsp">About Us</a></li>
                    <li class="nav-item" role="presentation" ><a class="nav-link" href="contact.jsp">Contact Us</a></li>
                </ul>
                <form class="form-inline mr-auto" target="_self">
                    <div class="form-group">
                        <label for="search-field"></label>
                    </div>
                </form>
              </div>
            </nav>
            <hr style="size: 150px;">
          </div>  
        





    
    <p style="font-size:30px ; text-align: center; color: orange;margin-top: 30px; ">Post your room</p>
   <p style="font-size:40px ; text-align: center; color:black ; margin-top: 10px; margin-left: 10px; margin-bottom: 40px; "> It's FREE to advertise your room !</p>



  

  <form align="center" method="post" action="/projectRoom/addRoom.do" >

<h2><p style="text-align:middle ; font-size: 20px ;font-weight:bold; margin-left: -600px;">About the  property</p></h2>
<hr style="width: 900px">

<div class="box-content" >

 <div id="dwellingCode">
        <label><p style="text-align:middle ; font-size: 17px ;font-weight:bold; margin-left: -280px; margin-bottom: 60px;">Room type *</p></label>          
        
  <select name="roomType" style="margin-left: -70px;">
    <option value="">Select Room Types:</option>
    <option value="Single">Single</option>
    <option value="Double">Double</option>
    <option value="Flat">Flat</option>
    <option value="Apartment">Apartment</option>
   </div>
</select>

 &nbsp &nbsp  &nbsp &nbsp  &nbsp &nbsp


 

<div class="form-group" style="margin-right: 50px;">
  <label for="usr"><p style="margin-bottom: -40px;font-weight:bold; margin-right: 240px;">Rent Per Month (Rs) *</p></label>
  <input type="number" name="price" min="1" step="1"/ class="form-control" id="usr" style="margin-right: 50px;">
</div>

 

  <div class="form-group" style="margin-right: 50px;">
  <label for="usr"><p style="margin-bottom: 10px; font-weight:bold; margin-right: 230px;">Description  </p></label>
  <textarea name="description" style="width: 400px; height: 150px;"></textarea>
</div>


  <div class="form-group" style="margin-right: 50px;">
  <label for="usr"><p style="margin-bottom: 15px;font-weight:bold; margin-right: 350px;">Location</p></label>
  <input type="text" name="location" class="form-control" id="usr" style="margin-right: 50px;">
</div>

<div>

<p style="text-align:middle ; font-size: 17px ;font-weight:bold; margin-left: -480px; margin-bottom: -10px;">Facilities</p>   

      <label class="container"><p style="margin-left: -210px;">Water</p>
  <input type="checkbox" value="Water"  name="water_facilities">
  <span class="checkmark"></span>
</label>

<label class="container"><p style="margin-left: -200px;">Parking</p>
  <input type="checkbox" value="Parking"  name="parking_facilities">
  <span class="checkmark"></span>
</label>

     <label class="container"><p style="margin-left: -200px;">Internet</p>
  <input type="checkbox"  value="Internet" name="internet_facilities">
  <span class="checkmark"></span>
</label>

 <label class="container"><p style="margin-left: -200px;">Electricity</p>
  <input type="checkbox"  value="Electricity" name="electricity_facilities">
  <span class="checkmark"></span>
</label>
<!-- <div>
   <label><p style="text-align:middle ; font-size: 20px;font-weight:bold;  margin-bottom: 20px; margin-left: -420px; margin-top: 15px;">Picture Of Property</p></label> 

        &nbsp <br/>  
        

         <form action=" ">
        <input type="file" name="pic" accept="image/*">
         <input type="submit">
        </form>
      <br><br>

        
              
</div> -->

<br><br>
  
<input type="submit" value="Post Your Room" class="btn btn-primary"/>
</form>




<hr>
<hr>

</form>

 <div style="background-color:rgba(58,47,47,0); background-image:url(&quot;assets/img/footer.png&quot;); background-size:cover; background-repeat:no-repeat; height:366px; margin-top: 70px;">
        <div class="container">
            <h1 class="text-center" style="font-family:ABeeZee, sans-serif; font-size:46px; color:rgb(0,0,0);">Room Finder</h1>
            <hr>
            <ul class="list-inline" id="text_decoration" style="margin-top:30px;font-family:ABeeZee, sans-serif;">
                <li class="list-inline-item"><a href="#" class="decoration" style="color:rgb(0,0,0);font-size:20px;margin-right:10px;">Home</a></li>
                <li class="list-inline-item"><a href="#" style="font-size:20px;color:rgb(0,0,0);margin-right:10px;">Services</a></li>
                <li class="list-inline-item"><a href="#" style="font-size:20px;color:rgb(0,0,0);margin-right:10px;">About</a></li>
                <li class="list-inline-item"><a href="#" style="color:rgb(0,0,0);font-size:20px;margin-right:10px;">Terms</a></li>
                <li class="list-inline-item"><a href="#" style="color:rgb(0,0,0);font-size:20px;">Privacy Policy</a></li>
            </ul>
            <p class="text-center" style="margin-top:30px;margin-bottom:15px;"><a href="#" style="font-size:35px;margin-right:30px;"><i class="fa fa-facebook-square" style="color:rgb(0,0,0);margin-right:0px;"></i></a><a href="#" style="font-size:35px;margin-right:30px;"><i class="fa fa-instagram" style="color:rgb(0,0,0);margin-right:0px;"></i></a>
                <a
                    href="#" style="font-size:35px;margin-right:30px;"><i class="icon ion-social-twitter" style="color:rgb(0,0,0);margin-right:2px;"></i></a><a href="#" style="font-size:35px;margin-right:30px;"><i class="icon ion-social-snapchat" style="color:rgb(0,0,0);margin-right:0px;"></i></a><a href="#"
                        style="font-size:35px;"><i class="fa fa-google-plus-square" style="color:rgb(0,0,0);"></i></a></p>
            <p class="text-center" style="color:rgb(193,184,184);font-family:ABeeZee, sans-serif;margin-bottom:23px;">RoomFinder@ 2018</p>


        </div>
    </div>

</div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
   
</form></body>
</html>