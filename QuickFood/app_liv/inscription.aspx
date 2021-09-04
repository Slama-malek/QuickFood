<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="QuickFood.app_liv.inscription" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 10 May 2018 00:00:39 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>Fox Admin - Registration </title>
  
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
<body class="hold-transition register-page">
<div class="register-box">
 <form runat="server">
     
  <div class="register-box-body">
    <p class="login-box-msg">Inscription</p>

    <form action="http://html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/index.html" method="post" class="form-element">
      <div class="form-group has-feedback">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"  placeholder="Nom et prénom"></asp:TextBox>        <span class="ion ion-person form-control-feedback "></span>
      </div>
      <div class="form-group has-feedback">
                        <asp:TextBox ID="TextBox3" class="form-control" runat="server" type="email" placeholder="Email"></asp:TextBox>        <span class="ion ion-email form-control-feedback "></span>
      </div>
         <div class="form-group has-feedback">
                        <asp:TextBox ID="TextBox2" class="form-control" runat="server"  placeholder="Nom d'utilisateur"></asp:TextBox>        <span class="ion ion-email form-control-feedback "></span>
      </div>
      <div class="form-group has-feedback">
<asp:TextBox ID="TextBox5" class="form-control" runat="server" type="password"  placeholder="Mot de passe"></asp:TextBox>        <span class="ion ion-locked form-control-feedback "></span>
      </div>
    
      <div class="row">
        <div class="col-12">
        </div>
        <!-- /.col -->
        <div class="col-12 text-center">
                            <asp:Button ID="Button1" runat="server" class="btn btn-info btn-block btn-flat margin-top-10" Text="S'inscrire"  OnClick="inscrit" />
        </div>
        <!-- /.col -->
      </div>
    </form>
	
	
	<!-- /.social-auth-links -->
    
     <div class="margin-top-20 text-center">
    	<p>Vous avez déjà un compte?
<a href="auth.aspx" class="text-info m-l-5"> Se connecter</a></p>
     </div>
    
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->
    </form>

	<!-- jQuery 3 -->
	<script src="assets/vendor_components/jquery/dist/jquery.min.js"></script>
	
	<!-- popper -->
	<script src="assets/vendor_components/popper/dist/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="assets/vendor_components/bootstrap/dist/js/bootstrap.min.js"></script>
	
	
</body>

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 10 May 2018 00:00:39 GMT -->
</html>

