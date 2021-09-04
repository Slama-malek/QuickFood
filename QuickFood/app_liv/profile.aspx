<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="QuickFood.app_liv.profile" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 23:57:22 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>QuickFood - Dashboard  Profile </title>
  
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="assets/vendor_components/bootstrap/dist/css/bootstrap.min.css">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="assets/vendor_components/font-awesome/css/font-awesome.min.css">

	<!-- Ionicons -->
	<link rel="stylesheet" href="assets/vendor_components/Ionicons/css/ionicons.min.css">

	<!-- Theme style -->
	<link rel="stylesheet" href="css/master_style.css">

	<!-- foxadmin Skins. Choose a skin from the css/skins
	   folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="css/skins/_all-skins.css">	

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

</head>
<body class="hold-transition skin-blue sidebar-mini">
    <form runat="server">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>F</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Quick</b>Food</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">		  
          <!-- Messages: style can be found in dropdown.less-->
         
         <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell"></i>
              <span class="label label-warning">
                  <asp:Label ID="lbl_nb_notification" runat="server" Text=""></asp:Label></span>
            </a>
            <ul class="dropdown-menu scale-up">
              <li class="header">Vous avez <asp:Label ID="nbn" runat="server" ></asp:Label> notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu inner-content-div">
               
               
                 
                
                    <asp:Label ID="notfi" runat="server" ></asp:Label>
                </ul>
              </li>
            </ul>
          </li>
         
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         <img src="images/user2-160x160.jpg" class="user-image rounded-circle" alt="User Image">   </a>        

            <ul class="dropdown-menu scale-up">
              <!-- User image -->
              <li class="user-header">
                   <img src="images/user2-160x160.jpg" class="rounded float-left" alt="User Image">
                <p>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>    
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">

                  <a href="profile.aspx" class="btn btn-block btn-primary">Profil</a>
                </div>
                <div class="pull-right">

                  <a href="auth.aspx" class="btn btn-block btn-danger">Déconnexion
</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Control Sidebar Toggle Button -->
  
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="image float-left">
                <img src="images/user2-160x160.jpg" class="rounded" alt="User Image">
        </div>
        <div class="info float-left">
          <p>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
          <a href="#"><i class="fa fa-circle text-success"></i>En ligne</a>
        </div>
		  <!-- search form -->
    
      <!-- /.search form -->
      </div>
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">        
     
        <li>
          <a href="acc.aspx">
            <i class="fa fa-dashboard"></i> <span>Accueil</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
        </li>
      
        <li>
          <a href="historique.aspx">
            <i class="fa fa-th"></i>
            <span>Historiques</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
        
        </li>
      
      
        
      
       
       
       
      
       
      </ul>
    </section>
    <!-- /.sidebar -->
  
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
  
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-xl-4 col-lg-5">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img rounded-circle img-fluid mx-auto d-block" src="images/user2-160x160.jpg" alt="User profile picture">

              <h3 class="profile-username text-center">
                  <asp:Label ID="lblnom" runat="server" Text="Label"></asp:Label></h3>

				
              
            
              <div class="row">
              	<div class="col-12">
              		<div class="profile-user-info">
						<p>Email  </p>
						<h6 class="margin-bottom">                  <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
</h6>
						<p>Téléphone</p>
						<h6 class="margin-bottom">
                            <asp:Label ID="lbltele" runat="server" Text="Label"></asp:Label></h6> 
						<p>Addresse</p>
						<h6 class="margin-bottom">
                            <asp:Label ID="lbladr" runat="server" Text="Label"></asp:Label></h6>
						

					</div>
             	</div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-xl-8 col-lg-7">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              
 
              <li><a href="#settings" data-toggle="tab">Paramétres</a></li>
            </ul>
                        
            <div class="tab-content">
             
               
              <!-- /.tab-pane -->
              
              
              <!-- /.tab-pane -->
              
              <div class="tab-pane" id="settings">
                <form class="form-horizontal form-element col-12">
                  <div class="form-group row">
                    <label for="inputName" class="col-sm-2 control-label">Nom et prénom</label>

                    <div class="col-sm-10">
                     <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>       


                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                             <asp:TextBox ID="TextBox2" class="form-control" runat="server" type="email"></asp:TextBox> 
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPhone" class="col-sm-2 control-label">Téléphone</label>

                    <div class="col-sm-10">
                     <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>  
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputExperience" class="col-sm-2 control-label">Adresse</label>

                    <div class="col-sm-10">
<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>                      </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputSkills" class="col-sm-2 control-label">Nom d'utilisateur</label>

                    <div class="col-sm-10">
                     <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>  
                    </div>
                  </div>
                     <div class="form-group row">
                    <label for="inputSkills" class="col-sm-2 control-label">Mot de passe </label>

                    <div class="col-sm-10">
                     <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>  
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="ml-auto col-sm-10">
                    
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="ml-auto col-sm-10">
                   <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Valider"  OnClick="valider" />

                  
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
  <footer class="main-footer">
  </footer>

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
 
<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="assets/vendor_components/jquery/dist/jquery.min.js"></script>
	
	<!-- popper -->
	<script src="assets/vendor_components/popper/dist/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="assets/vendor_components/bootstrap/dist/js/bootstrap.min.js"></script>
	
	<!-- SlimScroll -->
	<script src="assets/vendor_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	
	<!-- FastClick -->
	<script src="assets/vendor_components/fastclick/lib/fastclick.js"></script>
	
	<!-- foxadmin App -->
	<script src="js/template.js"></script>
	
	<!-- foxadmin for demo purposes -->
	<script src="js/demo.js"></script>
	
	</form>
</body>

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 23:57:55 GMT -->
</html>

