<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="QuickFood.app_liv.detail" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/map/map-google.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 23:56:55 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>Fox Admin - Dashboard  Google map </title>
  
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
      <span class="logo-lg"><b>Fox</b>Admin</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">		  
       
                 
          <!-- Notifications: style can be found in dropdown.less -->
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
                  <img src="images/user2-160x160.jpg" class="user-image rounded-circle" alt="User Image">  
            </a>
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
     
      <!-- START Map -->
       <div class="row">
        <div class="col-12">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Détail commande</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                
         
          <address>
            <strong class="text-red">Détail client</strong><br>
           <strong> Nom et prénom:</strong><asp:Label ID="lblnom" runat="server" Text="Label"></asp:Label><br>
           <strong> Téléphone:</strong> <asp:Label ID="lbltel" runat="server" Text="Label"></asp:Label><br>
         <strong>  Adresse:</strong> <asp:Label ID="lbladr" runat="server" Text="Label"></asp:Label>
          </address>
                <div class="row">
        <div class="col-12 table-responsive">

        <table class="table table-striped">
             <strong class="text-red">Détail commande</strong><br>
           <strong> Code Secret:</strong><asp:Label ID="lbl_code" runat="server" Text=""></asp:Label><br>

            <thead>
            <tr>
              <th></th>
              <th>Nom du plat</th>
              <th>Quantité</th>
              <th class="text-right">Prix</th>
           
            </tr>
            </thead>
            
                  <tbody>
                      <asp:Label ID="detcmd" runat="server"></asp:Label>
                      </tbody>
          </table>
             <div class="col-12 col-sm-12 text-right">
         	<div class="total-payment">
         		<h3><b>Montant Total :</b><asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label></h3>
         	</div>
         
        </div>
        </div>
         <div class="col-12">
             <asp:Button ID="Button1" class="btn btn-warning" OnClick="voir"  runat="server" Text="Voir sur le map" />
             <asp:Panel ID="Panel2" runat="server" Visible="false">
                          <asp:Button ID="Button2" class="btn btn-success pull-right" OnClick="annuler"  runat="server" Text="Annuler" />

                          <asp:Button ID="Button3" class="btn btn-danger pull-right" style="margin-right: 5px;" OnClick="verifier"  runat="server" Text="Verifier" />
             </asp:Panel>
               <asp:Panel ID="Panel3" runat="server" Visible="false">
                          <asp:Button ID="Button4" class="btn btn-success pull-right" OnClick="annuler"  runat="server" Text="Annuler" />

                          <asp:Button ID="Button5" class="btn btn-danger pull-right" style="margin-right: 5px;" OnClick="confirmer"  runat="server" Text="Confirmer" />
                   
             </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server" Visible="false">

             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          <asp:Button ID="Button7" class="btn btn-danger pull-right" style="margin-right: 5px;" OnClick="valider"  runat="server" Text="Valider" />
                   
               </asp:Panel>
         
         
         
        </div>
      </div>
      </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
              </div>
           <asp:Panel ID="Panel1" Visible="false" runat="server">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Adresse</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

       
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
       
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
           
            <ContentTemplate>
              <cc1:GMap ID="GMap1" runat="server" Width="1200px" Height="800px" OnLoad="GMap1_Load" />
            </ContentTemplate>
        </asp:UpdatePanel>          </div>
            <!-- /.box-body -->
          </div> 
</asp:Panel>
       </div> </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
 

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
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
	
    <!-- google maps api -->
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="assets/vendor_components/gmaps/gmaps.min.js"></script>
    <script src="assets/vendor_components/gmaps/jquery.gmaps.js"></script>
            <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCHIfMhFQszy0jw08Ykuz5Hr02PL6RSEts"></script>

	</form>
	
</body>

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/map/map-google.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 23:56:57 GMT -->
</html>
