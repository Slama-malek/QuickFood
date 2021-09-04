<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="QuickFood.QuickFood.cart" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from www.ansonika.com/quickfood/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:58:20 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="pizza, delivery food, fast food, sushi, take away, chinese, italian food">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>QuickFood - Quality delivery or take away food</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,300,300italic' rel='stylesheet' type='text/css'>

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">
    
    <!-- Radio and check inputs -->
    <link href="css/skins/square/grey.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

	<div id="preloader">
        <div class="sk-spinner sk-spinner-wave" id="status">
            <div class="sk-rect1"></div>
            <div class="sk-rect2"></div>
            <div class="sk-rect3"></div>
            <div class="sk-rect4"></div>
            <div class="sk-rect5"></div>
        </div>
    </div><!-- End Preload -->

    <!-- Header ================================================== -->
    <header>
    <div class="container-fluid">
        <div class="row">
            <div class="col--md-4 col-sm-4 col-xs-4">
                <a href="index.html" id="logo">
                <img src="img/logo.png" width="190" height="23" alt="" data-retina="true" class="hidden-xs">
                <img src="img/logo_mobile.png" width="59" height="23" alt="" data-retina="true" class="hidden-lg hidden-md hidden-sm">
                </a>
            </div>
    <asp:Label ID="l1" runat="server" Text=""></asp:Label>
            
        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->

<!-- SubHeader =============================================== -->
<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_cart.jpg" data-natural-width="1400" data-natural-height="350">
    <div id="subheader">
    	<div id="sub_content">
    	 <h1>Passer votre commande</h1>
            <div class="bs-wizard">
                <div class="col-xs-4 bs-wizard-step active">
                  <div class="text-center bs-wizard-stepnum"><strong>1.</strong> Vos details</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#0" class="bs-wizard-dot"></a>
                </div>
                               
                <div class="col-xs-4 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum"><strong>2.</strong> Payer</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart_2.html" class="bs-wizard-dot"></a>
                </div>
            
              <div class="col-xs-4 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum"><strong>3.</strong> Terminer!</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart_3.html" class="bs-wizard-dot"></a>
                </div>  
		</div><!-- End bs-wizard --> 
        </div><!-- End sub_content -->
	</div><!-- End subheader -->
</section><!-- End section -->
<!-- End SubHeader ============================================ -->

  

<!-- Content ================================================== -->
    <form runat="server">
<div class="container margin_60_35">
		<div class="row">
			
            
			<div class="col-md-9">
				<div class="box_style_2" id="order_process">
					<h2 class="inner">Vos détails de commande</h2>
					<div class="form-group">
						<label>Prénom</label>
						<input type="text" class="form-control" id="firstname_order" name="firstname_order" placeholder="Prénom">

					</div>
					<div class="form-group">
						<label>Nom</label>
						<input type="text" class="form-control" id="lastname_order" name="lastname_order" placeholder="Nom">
					</div>
					<div class="form-group">
						<label>Téléphone</label>
						<input type="text" id="tel_order" name="tel_order" class="form-control" placeholder="Téléphone">
					</div>
					<div class="form-group">
						<label>Email</label>
      <asp:TextBox ID="email" class="form-control form-white" type="email" runat="server" placeholder="Email"></asp:TextBox>
					</div>
					<div class="form-group">
						<label>Adresse </label>
						<input type="text" id="address_order" name="address_order" class="form-control" placeholder=" Votre adresse complète">
					</div>
					
						
							<div class="form-group">
								<label>Ville</label>
								<input type="text" id="city_order" name="Ville" class="form-control" placeholder="Ville">
							</div>
						
						
					
					<hr>
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label>Date de livraison</label>
                                        <asp:TextBox ID="date" class="form-control" runat="server" placeholder="Date de livraison" textmode=date></asp:TextBox>

                                
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label>Heure de livraison</label>
                              			
                                  <asp:TextBox ID="heure" runat="server" class="form-control" placeholder="Heure de livraison"></asp:TextBox>
                                
							</div>
							
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-12">
				
								<label>Notes pour le restaurant</label>
								<textarea class="form-control" style="height:150px"  name="notes" id="notes"></textarea>
				
						</div>
					</div>
				</div><!-- End box_style_1 -->
			</div><!-- End col-md-6 -->
            
			<div class="col-md-3" id="sidebar">
            	<div class="theiaStickySidebar">
				<div id="cart_box">
					<h3>Panier<i class="icon_cart_alt pull-right"></i></h3>
					
					<asp:Label ID="lb_panier" runat="server" Text=""></asp:Label>
					
					<hr>
					<div class="row" id="options_2">
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="" checked name="option_2" class="icheck">Livraison</label>
						</div>
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="" name="option_2" class="icheck">À emporter</label>
						</div>
					</div><!-- Edn options 2 -->
					<hr>
					<table class="table table_summary">
					<tbody>
					
					<tr>
						
                        <td class="total">
							 TOTAL <span class="pull-right"><asp:Label ID="Lb_total" runat="server" Text=""></asp:Label></span>
						</td>
					</tr>
					</tbody>
					</table>
					<hr>
                    <asp:Button ID="Button3" runat="server" class="btn_full" Text="Payer"  OnClick="ajouter" />
                    
                   
					<asp:Label ID="lb_aj" runat="server" Text=""></asp:Label>
				</div><!-- End cart_box -->
                </div><!-- End theiaStickySidebar -->
			</div><!-- End col-md-3 -->
            
		</div><!-- End row -->
</div><!-- End container -->
<!-- End container -->
<!-- End Content =============================================== -->
        </form>



<div class="layer"></div><!-- Mobile menu overlay mask -->

  
    

    
     <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->
    
<!-- COMMON SCRIPTS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="js/theia-sticky-sidebar.js"></script>
<script>
    jQuery('#sidebar').theiaStickySidebar({
      additionalMarginTop: 80
    });
</script>

</body>

<!-- Mirrored from www.ansonika.com/quickfood/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:58:20 GMT -->
</html>
