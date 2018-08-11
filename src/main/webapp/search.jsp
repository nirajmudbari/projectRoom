<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Search One</title>

    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="searchone.css">


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
   
</head>
<body>



	 <div class="container">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search" style="width: 100%;">
        
            <a class="navbar-brand" href="indexone.html">
                <img class="rounded img-fluid" src="img/newlogo.jpg" width="100px" height="80px"></a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navcol-1" style="margin-left: 140px; margin-right: -1250px;">
                <ul class="nav navbar-nav mx-auto" >
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="index.html">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="about.html">About Us</a></li>
                    <li class="nav-item" role="presentation" ><a class="nav-link" href="contactus.html">Contact Us</a></li>
                </ul>
                <form class="form-inline mr-auto" target="_self">
                    <div class="form-group">
                        <label for="search-field"></label>
                    </div>
                </form>
              </div>
            </nav>
            <hr>
          </div>  




    <table border="0" cellspacing="0" cellpadding="50px" width="100%">
        
        <tr>
            <td colspan="4">
                <table width="300px" border="1"   cellspacing="0" cellpadding-left="50px"  style="margin-right: 5px; border-radius: 20px;" align="center">
                    <tr >
                        <td>
                             <form method="post" action="search.do"> 
                                <label for="roomtype" style="color: black; margin-left: 20px; margin-bottom: -30px; border-radius: 20px;">Room Type:</label>
                                <select name="roomType" style="margin-top: 40px; border-radius: 30px; ">
                                    <option value="Single">Single</option>
                                    <option value="Double">Double</option>
                                    <option value="Flat">Flat</option>
                                    <option value="House">House</option>
                                </select>
                                <br><br>
                            
                            <div class="price">
                                <label style="margin-top: -30px;  ">Price Range:</label>   
                                 <br> Rs. &nbsp<input type="number"  min="1" step="1"/ name="priceFrom" size="2" maxlength="10" class="txt" value="" id="box1" style="border-radius: 50px; margin-bottom: 10px;"> to 
                                 <input type="number" min="1" step="1"/ name="priceTo" size="2" maxlength="10" class="txt" value="" id="box2" style="border-radius: 50px; margin-left: 30px;">
                             </div>
  
                                <div class="facility" >
                                <label style="margin-top: 20px;">Facilities:</label>    
                                
                                <label class="container"><p>Water</p>
                                    <input type="checkbox" value="Water"  name="water_facilities" />
                                    <span class="checkmark"></span>
                                </label>

                                <label class="container"><p>Parking</p>
                                    <input type="checkbox" value="Parking"  name="parking_facilities" />
                                    <span class="checkmark"></span>
                                </label>

                                <label class="container"><p>Internet</p>
                                    <input type="checkbox" value="Internet"  name="internet_facilities" />
                                    <span class="checkmark"></span>
                                </label>

                                <label class="container"><p>Electricity</p>
                                    <input type="checkbox" value="Electricity"  name="electricity_facilities" />
                                    <span class="checkmark"></span>
                                </label>
                                </div>

                                <div align="center" style="margin-bottom: 5px">
                                <button type="submit" name="submitbtn">Search</button>
                                </div>  
                                </form> 

                               
                        </td>
                    </tr>
                </table>
            </td>




            <td colspan="8">
                <table width="500px" border="1"  cellspacing="0"  cellpadding-left="-30px" style="margin-left: -70px" align="center">
                    <tr>
                        <td class="info">
                           <div class="row">
                            <table>
                                <tr>
                                    <td colspan="3">
                                        <img src="img/home.jpg" style="width: 120px; height: 80px; padding-left: 30px">
                                    </td>
                                    <td colspan="9">
                                        <p align="left" style="color: black; margin-top: 30px; margin-left: 80px;" align="center">
                                        Home<br>
                                        Balaju, Kathmandu<br>
                                        House Owner Name:Niraj Mudbari<br>
                                        Price: Rs 10000
                                        </p>
                                        <div align="right" >
                                            <button type="submit" name="btn1" ><a href="displayinfo.html">Click Here</a></button>

                                        </div>
                               </td>
                               </tr>
                           </table>
                           </div>
                           <hr>
                           <div class="row">
                              <table>
                                <tr>
                                    <td colspan="3">
                                        <img src="img/home1.jpg" style="width: 120px; height: 80px; padding-left: 30px">
                                    </td>
                                    <td colspan="9">
                                        <p align="left" style="color: black; margin-top: 30px ; margin-left: 80px;">
                                        Home<br>
                                        Nayabazzar, Kathmandu<br>
                                        House Owner Name:Mahesh Timasina<br>
                                        Price: Rs 11000
                                        </p>
                                        <div align="right">
                                            <button type="submit" name="btn1"><a href="displayinfo.html">Click Here</a></button>
                                        </div>
                               </td>
                               </tr>
                           </table>
                           </div>
                           <hr>
                           <div class="row">
                            <table>
                                <tr>
                                    <td colspan="3">
                                        <img src="img/home2.jpg" style="width: 120px; height: 80px; padding-left: 30px">
                                    </td>
                                    <td colspan="9">
                                        <p align="left" style="color: black; margin-top: 30px; margin-left: 80px; margin-bottom: 30px;">
                                        Home<br>
                                        Sitapaila, Kathmandu<br>
                                        House Owner Name:Narayan Upreti<br>
                                        Price: Rs 15000
                                        </p>
                                        <div align="right">
                                            <button type="submit" name="btn1"><a href="displayinfo.html">Click Here</a></button>
                                        </div>
                               </td>
                               </tr>
                           </table>
                           </div>

                           <hr>

                           <div class="row">
                              <table>
                                <tr>
                                    <td colspan="3">
                                        <img src="img/home3.jpg" style="width: 120px; height: 80px; padding-left: 30px">
                                    </td>
                                    <td colspan="9">
                                        <p align="left" style="color: black; margin-top: 30px ; margin-left: 80px;">
                                        Home<br>
                                        Banasthali, Kathmandu<br>
                                        House Owner Name:Bijya Thapa<br>
                                        Price: Rs 13 000
                                        </p>
                                        <div align="right">
                                            <button type="submit" name="btn1"><a href="displayinfo.html">Click Here</a></button>
                                        </div>
                               </td>
                               </tr>
                           </table>
                           </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    </table>




 <div style="background-color:rgba(58,47,47,0); background-image:url(&quot;assets/img/footer.png&quot;); background-size:cover; background-repeat:no-repeat; height:366px;">
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
   
</body>
</html>