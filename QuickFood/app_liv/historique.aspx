<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="historique.aspx.cs" Inherits="QuickFood.app_liv.historique" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/invoice.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 23:57:18 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>QuickFood -historique</title>
  
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
         
          <!-- Notifications: style can be found in dropdown.less -->
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
          <!-- Tasks: style can be found in dropdown.less -->
       
         <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <img src="images/user2-160x160.jpg" class="user-image rounded-circle" alt="User Image"></a>
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
     
        <li class="active">
          <a href="acc.aspx">
            <i class="fa fa-dashboard"></i> <span>Accueil</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
        </li>
       
        <li class="treeview">
          <a href="#">
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
    

    

    <!-- Main content -->
    <section class="content">
      
    <div class="row">
        <div class="col-12">
            <div class="box">
            <div class="box-header">
              <h3 class="box-title">Historiques</h3>

             
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-hover table-responsive">
                <tr>
                  <th><strong> commande</strong></th>
                  <th><strong> Restaurant</strong></th>
                  <th><strong> Date</strong></th>
                  <th><strong> Heure</strong></th>
                  <th><strong> Etat</strong></th>
                </tr>
              
                  <asp:Label ID="hist" runat="server"></asp:Label>
               
               
              
              </table>
            </div> </div> </div>
      
          </div>
        
    </section>
    <!-- /.content -->
    <div class="clearfix"></div>
  </div>
  <!-- /.content-wrapper -->
 
  <footer class="main-footer">
  </footer>

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
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
	
	<!-- JqueryPrintArea -->
	<script src="assets/vendor_plugins/JqueryPrintArea/demo/jquery.PrintArea.js"></script>
	
	<script>
    $(document).ready(function() {
        $("#print").click(function() {
            var mode = 'iframe'; //popup
            var close = mode == "popup";
            var options = {
                mode: mode,
                popClose: close
            };
            $("section.printableArea").printArea(options);
        });
    });
    </script>

</body>

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/invoice.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 23:57:22 GMT -->
</html>

