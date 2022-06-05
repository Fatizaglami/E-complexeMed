<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit-no" />
 <meta name="viewport"  content="width-device-width, initial-scale-1, maximum-scale-1">
 <title>DashboardAdmin</title>
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <!-- CSS -->
  <link rel="stylesheet" href="css/dashboardAdmin.css" />
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
   
  
  
  <!-- google font -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"  />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css">
  
  <link rel="preconnect" href="https://fonts.googleapis.com "/>
  <link rel="preconnect" href="https://fonts.gstatic.com"/ >
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>


  <!-- google materiel icon -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  </head>
  <body>
  
  <div class="wrapper">
  <div class="body-overlay"></div>
  <!----------sidebar------------->
  <nav class="sidebar" id="sidebar">
  <div class="sidebar-header">
  <h5><img src="img/logo-.png" class="img-fluid"/><span>Complexe medicale</span></h5>
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
 <a href="#pagesubmenu2" data-toggle="collapse" class="dropdown-toggle">
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
 <li class="nav-item">
 <a class="nav-link" href="#"><span class="material-icons">logout</span></a>
 </li>
 </ul>
 </div>
 </div>
 </nav>
 </div>
 <div class="row" style="display:flex;
                       margin-left:60px;
                     width:1100px ">
  <div class="col-lg-7 col-md-12">
  <div class="card" style="min-height: 485px">
  <div class="card-header card-header-text">
  <h4 class="card-title">Doctors stats</h4>
  <p class="cateory"> New Doctors on 15th mai,2022</p>
  <div class="col-sm-6 p-0 flex d-flex justify-content-lg-end justify-content-center">
 <a href="#" style="margin:5px;" data-bs-toggle="modal" data-bs-target="#addDoctorModal" class="btn btn-success d-flex" data-toggle="modal">
  <i class="material-icons">&#xE147;</i>
  <span> add new doctor</span></a>
   <a href="#" style="margin:5px;" data-bs-toggle="modal" data-bs-target="#deleteDoctorModal" class="btn btn-danger d-flex" data-toggle="modal">
  <i class="material-icons">&#xE15c;</i>
  <span> delete a doctor</span></a>
  </div>
  </div>
  <div class="card-content table-responsive">
     <table class="table table-hover">
     <thead class="text-primary">
     <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="selectAll" > 
     <label for ="selectAll"></label></span></th>
     <th>ID</th>
     <th>nom</th>
     <th>prenom</th>
     <th>email</th>
     <th>telephone</th> 
     <th>Actions</th>
        </tr>
     </thead>
     <tbody>
     <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="checkbox1" name="option[]" value="1" > 
     <label for ="checkbox1"></label></span></th>
     <th>1</th>
     <th>elfahsi</th>
     <th>nouhaila</th>
     <th>nouhaila.elfahsi@gmail.com</th>
      <th>0615143781</th>
       <th><a href="#" class="edit" data-toggle="modal" data-bs-toggle="modal" data-bs-target="#editDoctorModal">
       <i class="material-icons" data-toogle="tooltip" title="edit">&#xE254;</i>
       </a>
      <a href="#" class="delete" data-toggle="modal" data-bs-toggle="modal" data-bs-target="#deleteDoctorModal">
       <i class="material-icons" data-toogle="tooltip" title="Delete">&#xE872;</i>
       </a>
       </th>
        </tr>
   <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="checkbox2" name="option[]" value="2" > 
     <label for ="checkbox2"></label></span></th>
     <th>2</th>
     <th>elfahsi</th>
     <th>nouhaila</th>
     <th>nouhaila.elfahsi@gmail.com</th>
      <th>0615143781</th>
       <th><a href="#" class="edit" data-toggle="modal" data-bs-toggle="modal" data-bs-target="#editDoctorModal">
       <i class="material-icons" data-toogle="tooltip" title="edit">&#xE254;</i>
       </a>
      <a href="#" class="delete" data-toggle="modal" data-bs-toggle="modal" data-bs-target="#deleteDoctorModal">
       <i class="material-icons" data-toogle="tooltip" title="Delete">&#xE872;</i>
       </a>
       </th>
        </tr>
  <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="checkbox3" name="option[]" value="3" > 
     <label for ="checkbox1"></label></span></th>
     <th>2</th>
     <th>elfahsi</th>
     <th>nouhaila</th>
     <th>nouhaila.elfahsi@gmail.com</th>
      <th>0615143781</th>
       <th><a href="#editDoctorModal" class="edit" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="edit">&#xE254;</i>
       </a>
      <a href="#deleteDoctorModal" class="delete" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="Delete">&#xE872;</i>
       </a>
       </th>
        </tr>
 <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="checkbox1" name="option[]" value="1" > 
     <label for ="checkbox1"></label></span></th>
     <th>3</th>
     <th>elfahsi</th>
     <th>nouhaila</th>
     <th>nouhaila.elfahsi@gmail.com</th>
      <th>0615143781</th>
       <th><a href="#editDoctorModal" class="edit" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="edit">&#xE254;</i>
       </a>
      <a href="#deleteDoctorModal" class="delete" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="Delete">&#xE872;</i>
       </a>
       </th>
        </tr>
   <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="checkbox4" name="option[]" value="4" > 
     <label for ="checkbox4"></label></span></th>
     <th>4</th>
     <th>elfahsi</th>
     <th>nouhaila</th>
     <th>nouhaila.elfahsi@gmail.com</th>
      <th>0615143781</th>
      
       <th><a href="#editDoctorModal" class="edit" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="edit">&#xE254;</i>
       </a>
      <a href="#deleteDoctorModal" class="delete" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="Delete">&#xE872;</i>
       </a>
       </th>
        </tr>
   <tr>
     <th><span class="custom-checkbox">
     <input type="checkbox" id="checkbox5" name="option[]" value="5" > 
     <label for ="checkbox5"></label></span></th>
     <th>5</th>
     <th>elfahsi</th>
     <th>nouhaila</th>
     <th>nouhaila.elfahsi@gmail.com</th>
      <th>0615143781</th>
       <th><a href="#editDoctorModal" class="edit" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="edit">&#xE254;</i>
       </a>
      <a href="#deleteDoctorModal" class="delete" data-toggle="modal">
       <i class="material-icons" data-toogle="tooltip" title="Delete">&#xE872;</i>
       </a>
       </th>
        </tr>
     
     </tbody>
     </table>
  </div>
  </div>
  
  <!-- add modal start -->
  <div class="modal fade" tabindex="-1" id="addDoctorModal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Doctors</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div> <form action="AddDoc" method="POST">
      <div class="modal-body">
     
       <div class="form-group">
       <label>Nom</label> 
       <input type="text" class="form-control" name="nom" required >
       </div>
       <div class="form-group">
       <label>Prenom</label>
       <input type="text" class="form-control" name="prenom"required >
       </div>
       <div class="form-group">
       <label>Email</label>
       <input type="email" class="form-control" name="email"required >
       </div>
       <div class="form-group">
       <label>Telephone</label>
       <input type="text" class="form-control" name="tel"required >
       </div>
       <div class="form-group">
       <label>Mot de passe</label>
       <input type="password" class="form-control" name="password"required >
       </div>
       
       <div class="form-group">
       <label>Username</label>
       <input type="text" class="form-control" name="username"required >
       </div>
      </div>
      
      <div class="modal-footer">
        <button type="submit" class="btn btn-success" >Add</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        
      </div>
      </form>
    </div>
  </div>
</div>
  
  <!-- add modal end -->
  
  
  
  
  <!-- edit modal start -->
  <div class="modal fade" tabindex="-1" id="editDoctorModal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Doctors</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="crud">
       <div class="form-group">
       
       <label>Nom</label>
       <input type="text" class="form-control" required >
       </div>
       <div class="form-group">
       <label>Prenom</label>
       <input type="text" class="form-control" required >
       </div>
       <div class="form-group">
       <label>Email</label>
       <input type="email" class="form-control" required >
       </div>
       <div class="form-group">
       <label>Telephone</label>
       <input type="text" class="form-control" required >
       </div>
       <div class="form-group">
       <label>Mot de passe </label>
       <input type="password" class="form-control" required >
       </div>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-success">Save</button>
      </div>
    </div>
  </div>
</div>
  
  <!-- edit modal end -->
  
  
  
  <!-- delete modal start -->
  <div class="modal fade" tabindex="-1" id="deleteDoctorModal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Delete Doctors</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       
       <p>Are you sure you wanna delete this Records</p>
       <p class="text-warnings" style="color:orange"><small >this action cannot be Undone,</small></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-success">Delete</button>
      </div>
    </div>
  </div>
</div>
  
  <!-- delete modal end -->
  
  
  
  
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
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" ></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
const button= document.getElementById('sidebar-collapse');
  const sidebar= document.getElementById('sidebar');
  const content= document.getElementById('content');
  
  
  
  button.onclick=function(){
  button.classList.toggle('active');
  sidebar.classList.toggle('active');
  content.classList.toggle('active');
}




</script>
<script type="text/javascript">
const moreButton= document.getElementById('more-button'); 
  const overlay=document.getElementById('body-overlay');

moreButton.onclick= function(){
sidebar.classList.toggle('show-nav);
}
overlay.onclick= function(){
sidebar.classList.toggle('show-nav);
}
</script>



  
  </body>
     
  </html>