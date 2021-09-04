<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auth.aspx.cs" Inherits="QuickFood.app_liv.auth"  EnableEventValidation="false" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 10 May 2018 00:00:39 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>Fox Admin - Log in </title>
  
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
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    
  </div>
  <!-- /.login-logo -->
    <form runat="server">
  <div class="login-box-body">
    <p class="login-box-msg">Connectez-vous </p>

    <form action="http://html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/index.html" method="post" class="form-element">
      <div class="form-group has-feedback">
    <asp:TextBox ID="log" class="form-control" runat="server"  placeholder="Nom d'utilisateur"></asp:TextBox>        <span class="ion ion-email form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
<asp:TextBox ID="TextBox2" class="form-control" runat="server" type="password"  placeholder="Mot de passe"></asp:TextBox>        <span class="ion ion-locked form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-6">
        
        </div>
        <!-- /.col -->
        <div class="col-6">
       
        </div>
        <!-- /.col -->
        <div class="col-12 text-center">
                              <asp:Button ID="Button2" runat="server" class="btn btn-info btn-block btn-flat margin-top-10" Text="Se connecter" OnClick="connecter" />
        </div>
        <!-- /.col -->
      </div>
    </form>

  
    <!-- /.social-auth-links -->

    <div class="margin-top-30 text-center">
    	<p>Vous n'avez pas de compte? <a href="inscription.aspx" class="text-info m-l-5"> S'inscrire</a></p>
    </div>

  </div>
  <!-- /.login-box-body -->
</div>
    </form>
<!-- /.login-box -->


	<!-- jQuery 3 -->
	<script src="assets/vendor_components/jquery/dist/jquery.min.js"></script>
	
	<!-- popper -->
	<script src="assets/vendor_components/popper/dist/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="assets/vendor_components/bootstrap/dist/js/bootstrap.min.js"></script>

</body>

<!-- Mirrored from html-templates.multipurposethemes.com/bootstrap-4/admin/foxadmin-minimal/pages/examples/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 10 May 2018 00:00:39 GMT -->
</html>

