<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit-no" />
 <meta name="viewport"  content="width-device-width, initial-scale-1, maximum-scale-1">
 <title>DashboardAdmin</title>
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <!-- CSS -->
  <link rel="stylesheet" href="dashboardAdmin.css" />
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

  
  <!-- google font -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"  />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine"/>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>


  <!-- google materiel icon -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
  </head>
  <body>
  <div class="wrapper">
  <div class="body-overlay"></div>
  <!----------sidebar------------->
  <nav class="sidebar" id="sidebar">
  <div class="sidebar-header">
  <h5><img src="logo-.png" class="img-fluid"/><span>Complexe medicale</span></h5>
  </div>
  <ul class="list-unstyled components">
  <li class="active">
  <a href="#" class="dashboard"><i class="material-icons">dashboard</i><span>dashboard</span></a>
  </li>
  <div class="small-screen navbar-display">
  <li class="dropdown d-lg-none d-md-bloc d-xl-none d-sm-block">
  <a href="homesubmenu0" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" > 
  <ul class="collapse list-unstyled menu" id="homesubmenu0">
  <li> <a href="#"> You have 5 new Messages</a></li>
  <li> <a href="#"> You have 5 new Messages</a></li>
  <li> <a href="#"> You have 5 new Messages</a></li>
  <li> <a href="#"> You have 5 new Messages</a></li>
  </ul>
  </li>
  
  
  <li class="d-lg-none d-md-block d-xl-none d-sm-block">
  <a href="#"><i class="material-icons">apps</i><span>apps</span></a>
  </li>
  <li class="d-lg-none d-md-block d-xl-none d-sm-block">
  <a href="#"><i class="material-icons">person</i><span>user</span></a>
  </li>
  <li class="d-lg-none d-md-block d-xl-none d-sm-block">
  <a href="#"><i class="material-icons">settings</i><span>settings</span></a>
  </li> 
  </a>
 </div>
 

 <li class="dropdown">
 <a href="#pagesubmenu2" data-toggle="dropdown" aria-expended="false" class="dropdown-toggle">
 <i class="material-icons">apps</i><span>Layouts</span></a>
 <ul class="collapse list-unstyled menu" id="#pagesubmenu2">
 <li> <a href="#">Home 1</a></li>
 <li> <a href="#">Home 2</a></li>
 <li> <a href="#">Home 3</a></li>
 <li> <a href="#">Home 4</a></li>
 </ul>
 </li>
  
 
 <li class="dropdown">
 <a href="#pagesubmenu3" data-toggle="collapse" aria-expended="false" class="dropdown-toggle">
 <i class="material-icons">people</i><span>Doctors</span></a>
 <ul class="collapse list-unstyled menu" id="pagesubmenu3">
 <li> <a href="#">Home 1</a></li>
 <li> <a href="#">Home 2</a></li>
 <li> <a href="#">Home 3</a></li>
 <li> <a href="#">Home 4</a></li>
 </ul>
 </li> 
  
  <li class="dropdown">
 <a href="#pagesubmenu4" data-toggle="collapse" aria-expended="false" class="dropdown-toggle">
 <i class="material-icons">people</i><span>Patients</span></a>
 <ul class="collapse list-unstyled menu" id="pagesubmenu4">
 <li> <a href="#">Home 1</a></li>
 <li> <a href="#">Home 2</a></li>
 <li> <a href="#">Home 3</a></li>
 <li> <a href="#">Home 4</a></li>
 </ul>
 </li> 
  <li class="dropdown">
 <a href="#pagesubmenu2" data-toggle="collapse" aria-expended="false" class="dropdown-toggle">
 <i class="material-icons">extension</i><span>ui element</span></a>
 <ul class="collapse list-unstyled menu" id="pagesubmenu2">
 <li> <a href="#">Home 1</a></li>
 <li> <a href="#">Home 2</a></li>
 <li> <a href="#">Home 3</a></li>
 <li> <a href="#">Home 4</a></li>
 </ul>
 </li> 
<li class="">
<a href="#"><i class="material-icons">apps</i><span>apps</span></a></li>
 <li class="">
<a href="#"><i class="material-icons">library_books</i><span>calender</span></a></li>
   
 
  
  </nav>
  <!---------Page content---------->
  <div id="content">
  
  <!-- ---- top-navbar---design------->
 <div class="top-navbar">
  <nav class="navbar navbar-expand-lg" id = "wrapper">
   <div class="cont-right">
  <button type="button" id="sidebar-collapse" class="d-xl-block d-lg-block d-md-none d-none">
  <span class="material-icons">arrow_back_ios</span>
  </button>
  <a class="navbar-brand" href="#">Dashboard</a></div>
  <div class="cont-left">
  <button class="d-inline-block d-lg-none ml-auto more-button" type="button" data-toggle="collapse"
  data-target="#navbarcollapse" area-controls="#navbarcollapse" aria-expanded="false" aria-label="Toggle">
  <span class="material-icons">more_vert</span>
  </button>
  <div class="collapse navbar-collapse d-lg-block d-xl-block d-sm-none d-md-none d-none" id="navbarcollapse">
  
  <ul class="nav navbar-nav ml-auto">
  <li class=" nav-item dropdown active">
  <a class="nav-link" role="navigation" href="#" data-toggle="dropdown" >
  <span class="material-icons">notifications</span>
  <span class="notification">4</span>
  </a>
  <ul class="dropdown-menu">
  <li>
  <a href="#" class="dropdown-item">You have 4 New Messages</a>
  </li>
  <li>
  <a href="#" class="dropdown-item">You have 4 New Messages</a>
  </li>
  <li>
  <a href="#" class="dropdown-item">You have 4 New Messages</a>
  </li>
  <li>
  <a href="#" class="dropdown-item">You have 4 New Messages</a>
  </li>
  </ul>
  </li>
 <li class="nav-item">
 <a class="nav-link" href="#"><span class="material-icons">apps</span></a>
 </li> 
 <li class="nav-item">
 <a class="nav-link" href="#"><span class="material-icons">person</span></a>
 </li> 
 <li class="nav-item">
 <a class="nav-link" href="#"><span class="material-icons">settings</span></a>
 </li> 
  
  
  
  
  </ul>
  </div>
</div>
  </nav>
  </div>
  <!------ main content-------- -->
  <div class="main-content">
  <div class="row">
  <div class="col-lg-3 col-md-6 col-sm-6">
  <div class="card card-stats">
  <div class="card-header">
  <div class="icon icon-warning">
  <span class="material-icons">people</span>
  </div>
  </div>
  <div class="card-content">
  <p class="category"><strong>Visits</strong></p>
  <h3 class="card-title">70,340</h3>
  </div>
  <div class="card-footer">
  <div class="stats">
  <i class="material-icons text-info">info</i>
  <a href="#">See detailed report</a>
  </div>
  </div>

  </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
  <div class="card card-stats">
  <div class="card-header">
  <div class="icon icon-warning">
  <span class="material-icons">people</span>
  </div>
  </div>
  <div class="card-content">
  <p class="category"><strong>Patients</strong></p>
  <h3 class="card-title">20</h3>
  </div>
  <div class="card-footer">
  <div class="stats">
  <i class="material-icons text-info">info</i>
  <a href="#">See detailed report</a>
  </div>
  </div>

  </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
  <div class="card card-stats">
  <div class="card-header">
  <div class="icon icon-warning">
  <span class="material-icons">people</span>
  </div>
  </div>
  <div class="card-content">
  <p class="category"><strong>Doctors</strong></p>
  <h3 class="card-title">100</h3>
  </div>
  <div class="card-footer">
  <div class="stats">
  <i class="material-icons text-info">info</i>
  <a href="#">See detailed report</a>
  </div>
  </div>

  </div>
  
  </div>
  </div>
  <!-- second row -->
  
  <div class="row">
  <div class="col-lg-7 col-md-12">
  <div class="card" style="min-height: 485px">
  <div class="card-header card-header-text">
  <h4 class="card-title">Employess stats</h4>
  <p class="cateory"> New employees on 15th mai,2022</p>
  
  </div>
  <div class="card-content table-responsive">
     <table class="table table-hover">
     <thead class="text-primary">
     <tr>
     <th>ID</th>
     <th>name</th>
     <th>salary</th>
     <th>country</th>
  </tr>
     </thead>
     <tbody>
     <tr>
     <td>1</td>
     <td>nouhaila elfahsi</td>
     <td>23.46$</td>
     <td>usa</td>
  </tr>
   <tr>
     <td>2</td>
     <td>jihane el fahsi</td>
     <td>23.46$</td>
     <td>canada</td>
  </tr>
  <tr>
     <td>3</td>
     <td>ilyass el</td>
     <td>23.46$</td>
     <td>france</td>
  </tr>
  <tr>
     <td>4</td>
     <td>fati</td>
     <td>23.46$</td>
     <td>canada</td>
  </tr>
   <tr>
     <td>5</td>
     <td>oumaima idhika</td>
     <td>23.46$</td>
     <td>canada</td>
  </tr>
   <tr>
     <td>6</td>
     <td>jihane el fahsi</td>
     <td>23.46$</td>
     <td>canada</td>
  </tr>
     
     </tbody>
     </table>
  </div>
  </div>
  </div>
  <div class="col-lg-5 col-md-12">
  <div class="card" style="min-height:485">
  <div class="card-header card-header-text">
  <h4 class="card-title">activities</h4>
  </div>
  
  </div>
  <div class="card-content">
  <div class="steamline">
  <div class="sl-item sl-primary">
  <div class="sl-content">
  <small class="text-muted">5 min Ago</small>
  <p> Nouhaila has just joined </p>
  
  </div>
  </div> 
  
  <div class="sl-item sl-danger">
  <div class="sl-content">
  <small class="text-muted">20 min Ago</small>
  <p> Nouhaila has just joined </p>
  
  </div>
  </div>  
  <div class="sl-item  sl-warning">
  <div class="sl-content">
  <small class="text-muted">45 minn Ago</small>
  <p> Nouhaila has just joined </p>
  
  </div>
  </div>  
  <div class="sl-item sl-warning">
  <div class="sl-content">
  <small class="text-muted">55 minn Ago</small>
  <p> Nouhaila has just log out </p>
  
  </div>
  </div>  
   
  </div>
  </div>
  
  
  </div>
  
  
  
  </div>
  <!-- footer -->
  <footer class="footer">
  <div class="container-fluid">
  <div class="row">
  <div class="col-md-6">
  <nav class="d-flex">
   <ul class="m-0 p-0">
   <li><a href="#">Home</a></li>
   <li><a href="#">company</a></li>
   <li><a href="#">portfolio</a></li>
    <li><a href="#">blogs</a></li>
   </ul>
  </nav>

  </div>
  <div class="col-md-6">
  <p class="copyright d-flex justify-content-end">
  &copy 2022 design By
  <a href="#">Nouhaila elfahsi</a> complexe medicale admin
  </p>
  </div>
  
  
  </div>
  </div>
  </footer>
  
  </div>
  </div>
  
  </div> 
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" ></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

$(documaent)ready(fuction(){
	$("#sidebarcollapse").on('click',function(){
		$('#sidebar').toggleClass('active');
		$('#content').toggleClass('active');
		
	});
	$(".more-button, .body-overlay").on('click',function(){
		$('#sidebar, .body-overlay').toggleClass('show-nav');
		
	});
	
	
	
});


</script>
  
  </body>
     
  
  