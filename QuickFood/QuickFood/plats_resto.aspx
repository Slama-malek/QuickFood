<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="plats_resto.aspx.cs" Inherits="QuickFood.QuickFood.plats_resto" enableEventValidation = "false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>  
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
    <form runat="server">
    <header>
    <div class="container-fluid">
        <div class="row">
            <div class="col--md-4 col-sm-4 col-xs-4">
                <a href="index.html" id="logo">
                <img src="img/logo.png" width="190" height="23" alt="" data-retina="true" class="hidden-xs">
                <img src="img/logo_mobile.png" width="59" height="23" alt="" data-retina="true" class="hidden-lg hidden-md hidden-sm">
                </a>
            </div>
                         <asp:Label ID="l1" runat="server" Visible="true"></asp:Label>

        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->

<!-- SubHeader =============================================== -->

<section class="parallax-window" data-parallax="scroll" data-image-src="img/sub_header_2.jpg" data-natural-width="1400" data-natural-height="470">
    	
    <div id="subheader">
	<div id="sub_content">
    <asp:Label ID="lbl_pl" runat="server" Text="Label"></asp:Label>
	
           
 


 
     
         <h1><asp:Label ID="lbl_nom_resto" runat="server" Text="-"></asp:Label></h1>
                    <div><em>
       </em></div>
                    <div><i class="icon_pin"></i> <asp:Label ID="lbl_adr" runat="server" Text="-"></asp:Label> <strong></strong></div>
    </div><!-- End sub_content -->
</div><!-- End subheader -->
</section><!-- End section -->
<!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
         
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> recherche</a>
        </div>
    </div><!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
		<div class="row">
        
			<div class="col-md-3">
            	<p><a href="listeResterants.aspx" class="btn_side">retour à la recherche</a></p>
				<div class="box_style_1">
					<ul id="cat_nav">
						<li><a href="#starters" class="active">Entrées <span><asp:Label ID="lbl_nbe" runat="server" Text=""></asp:Label></span></a></li>
						<li><a href="#main_courses">Plat Principaux <span><asp:Label ID="lbl_nbp" runat="server" Text=""></asp:Label></span></a></li>
						
						<li><a href="#desserts">Desserts <span><asp:Label ID="lbl_nbd" runat="server" Text=""></asp:Label></span></a></li>
						<li><a href="#drinks">Biossons <span><asp:Label ID="lbl_nbb" runat="server" Text=""></asp:Label></span></a></li>
					</ul>
				</div><!-- End box_style_1 -->
            
				<p>
					<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap">voir sur map</a>
				</p>
				<div class="box_style_2">
					<h4 class="nomargin_top">
Horaire d'ouverture <i class="icon_clock_alt pull-right"></i></h4>
					<ul class="opening_list">
						<li>lundi <span>12h00-23h00</span></li>
						<li>Mardi<span>12h00-23h00</span></li>
						<li>Mercredi <span>12h00-23h00</span></li>
						<li>Jeudi<span>12h00-23h00</span></li>
						<li>Vendredi<span>12h00-23h00</span></li>
						<li>Samedi<span>12h00-23h00</span></li>
						<li>Dimanche <span>12h00-23h00</span></li>
					</ul>
				</div>
				<div class="box_style_2 hidden-xs" id="help">
					<i class="icon_lifesaver"></i>
					<h4>Besoin <span>d'aide?</span></h4>
					<a href="tel://004542344599" class="phone"><asp:Label ID="lbl_num" runat="server" Text="Label"></asp:Label></a>
					
				</div>
			
                
			
			</div><!-- End col-md-3 -->
            
			<div class="col-md-6">
				<div class="box_style_2" id="main_menu">
					<h2 class="inner">Menu</h2>
					<h3 class="nomargin_top" id="starters">Entrées</h3>
					<p>
						
					</p>
					<table class="table table-striped cart-list">
					<thead>
					<tr>
						<th>
							Article
						</th>
						<th>
							 Prix
						</th>
						<th>
							Commande
						</th>
					</tr>
					</thead>
					<tbody>
					<asp:Label ID="lbl_liste_plats" runat="server" Text=""></asp:Label>
				

					</tbody>
					</table>
					<hr>
					<h3 id="main_courses">Plats Principaux</h3>
					<p>
						
					</p>
					<table class="table table-striped cart-list ">
					<thead>
					<tr>
						<th>
							Article
						</th>
						<th>
							 Prix
						</th>
						<th>
							Commande
					</tr>
					</thead>
					<tbody>
					<asp:Label ID="lbl_listepp" runat="server" Text=""></asp:Label>
				

					</tbody>
					</table>
					
					
					<hr>
					<h3 id="desserts">Desserts</h3>
					<p>
					</p>
					<table class="table table-striped cart-list ">
					<thead>
					<tr>
						<th>
							Article
						</th>
						<th>
							 Prix
						</th>
						<th>
							Commande
						</th>
					</tr>
					</thead>
					<tbody>
					<asp:Label ID="lbl_pldesset" runat="server" Text=""></asp:Label>
					</tbody>
					</table>
					<hr>
					<h3 id="drinks">Boissons</h3>
					<p>
					</p>
					<table class="table table-striped cart-list ">
					<thead>
					<tr>
						<th>
							 Article
						</th>
						<th>
							Prix
						</th>
						<th>
							Commande
						</th>
					</tr>
					</thead>
					<tbody>
<asp:Label ID="Lblplboi" runat="server" Text=""></asp:Label>
					</tbody>
					</table>
				</div><!-- End box_style_1 -->
			</div><!-- End col-md-6 -->
            
			<div class="col-md-3" id="sidebar">
            <div class="theiaStickySidebar">
				<div id="cart_box" >
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
						<td>
							 Total <span class="pull-right"><asp:Label ID="Lb_total" runat="server" Text=""></asp:Label></span>
						</td>
					</tr>
					<tr>
						<td>
							 Frais livraison <span class="pull-right">3.000DT</span>
						</td>
					</tr>
					
					</tbody>
					</table>
					<hr>
					<asp:Label ID="lb_cmd" runat="server" Text=""></asp:Label>
				</div><!-- End cart_box -->
                </div><!-- End theiaStickySidebar -->
			</div><!-- End col-md-3 -->
            
		</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->

<!-- Footer ================================================== -->
	<footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-3">
                  	       	<h3>Paiements sécurisés avec</h3>
                    <p><img src="img/cards.png" alt="" class="img-responsive"></p>
                </div>
                <div class="col-md-3 col-sm-3">
                     <h3>Sur</h3>
                <ul>
                    <li><a href="about.html">À propos de nous</a></li>
                    <li><a href="faq.html">Faq</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#login_2">S'identifier</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#register">Registre</a></li>
                    <li><a href="#0">Termes et conditions</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-3" id="newsletter">
                <h3>Newsletter</h3>
                <p>
      Rejoignez notre newsletter pour rester informé des offres et des nouveautés.
					<div id="message-newsletter_2"></div>
						<div action="http://www.ansonika.com/quickfood/assets/newsletter.php" name="newsletter_2" id="newsletter_2">
                        <div class="form-group">
                            <input name="email_newsletter_2" id="email_newsletter_2"  type="email" value=""  placeholder="Your mail" class="form-control">
                          </div>
                            <input type="submit" value="Soucrire" class="btn_1" id="submit-newsletter_2">
                    	</div>
                </div>
                <div class="col-md-2 col-sm-3">
                    <h3>Paramètres</h3>
                <div class="styled-select">
                    <select class="form-control" name="lang" id="lang">
                        <option value="English" selected>Anglais</option>
                        <option value="French">Francais</option>
                        <option value="Spanish">Espanol</option>
                        <option value="Russian">Russien</option>
                    </select>
                    </div>
                    <div class="styled-select">
                        <select class="form-control" name="currency" id="currency">
                            <option value="USD" selected>USD</option>
                            <option value="EUR">EUR</option>
                            <option value="GBP">GBP</option>
                            <option value="RUB">RUB</option>
                        </select>
                    </div>
                </div>
            </div><!-- End row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                        <ul>
                            <li><a href="#0"><i class="icon-facebook"></i></a></li>
                            <li><a href="#0"><i class="icon-twitter"></i></a></li>
                            <li><a href="#0"><i class="icon-google"></i></a></li>
                            <li><a href="#0"><i class="icon-instagram"></i></a></li>
                            <li><a href="#0"><i class="icon-pinterest"></i></a></li>
                            <li><a href="#0"><i class="icon-vimeo"></i></a></li>
                            <li><a href="#0"><i class="icon-youtube-play"></i></a></li>
                        </ul>
                        <p>© Quick Food 2018</p>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </footer>
<!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->
    
<!-- Login modal -->   
     
<div class="modal fade" id="login_2" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myLogin">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
                    <asp:TextBox ID="login"  class="form-control form-white"  runat="server" placeholder="Nom d'utilisateur "></asp:TextBox>
                    <asp:TextBox ID="pwd" class="form-control form-white"  runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>
					
					
    <asp:Button ID="Button2" runat="server" class="btn btn-submit" Text="Se connecter" OnClick="connecter" />
				</div>
			</div>
		</div>
	</div><!-- End modal --> 
         
         <div class="modal fade" id="login_3" tabindex="-1" role="dialog" aria-labelledby="myLogin1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myLogin1">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
                    <asp:TextBox ID="login1"  class="form-control form-white"  runat="server" placeholder="Nom d'utilisateur "></asp:TextBox>
                    <asp:TextBox ID="pwd1" class="form-control form-white"  runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>
					
					
    <asp:Button ID="Button4" runat="server" class="btn btn-submit" Text="Se connecter" OnClick="connecter1" />
				</div>
			</div>
		</div>
	</div>  
    
<!-- Register modal --> 
     
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myRegister">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
      
    <asp:RadioButton ID="rd_client" GroupName="tt" AutoPostBack="true" runat="server" OnCheckedChanged="rd_client_CheckedChanged" />Client
    <asp:RadioButton ID="rd_resto" GroupName="tt" runat="server" AutoPostBack="true" OnCheckedChanged="rd_resto_CheckedChanged" />Restaurant
                       
     <asp:Panel ID="panel_client" Visible="false" runat="server">

        <asp:TextBox ID="TextBox1" class="form-control form-white" runat="server" placeholder="Nom prénom"></asp:TextBox>
	<asp:TextBox ID="TextBox2" class="form-control form-white" runat="server" placeholder="Téléphone"></asp:TextBox>
      <asp:TextBox ID="TextBox3" class="form-control form-white" runat="server" placeholder="Adresse"></asp:TextBox>
        <asp:TextBox ID="TextBox4" class="form-control form-white" type="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="TextBox5" class="form-control form-white" runat="server" placeholder="Date de naissance" textmode=date></asp:TextBox>
<asp:DropDownList ID="drop_sexe"  class="form-control form-white" runat="server" placeholder="Sexe" Width="100%" >
                                     <asp:ListItem>Homme</asp:ListItem>
                                     <asp:ListItem>Femme</asp:ListItem>
                                 </asp:DropDownList>                                          
                <asp:TextBox ID="TextBox7" class="form-control form-white" runat="server" placeholder="Nom d'utilisateur"></asp:TextBox>
        <asp:TextBox ID="TextBox8" class="form-control form-white" runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>

                    <div id="pass-info" class="clearfix"></div>
					
        <asp:Button ID="Button1" runat="server" class="btn btn-submit" Text="Sinscrire"  OnClick="inscrit" />
			</div>
             </asp:Panel>  
	
   
                  <asp:Panel ID="panel1" Visible="true" runat="server">
				<asp:DropDownList ID="DropDownList1"  class="form-control" runat="server"></asp:DropDownList>
     <asp:TextBox ID="nomr" class="form-control form-white" runat="server" placeholder="Nom "></asp:TextBox>
	<asp:TextBox ID="teler" class="form-control form-white" runat="server" placeholder="Téléphone"></asp:TextBox>
      <asp:TextBox ID="adrr" class="form-control form-white" runat="server" placeholder="Adresse"></asp:TextBox>
        <asp:TextBox ID="emailr" class="form-control form-white" type="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="descr" class="form-control form-white" runat="server" placeholder="Description"></asp:TextBox>
            <asp:TextBox ID="fourr" class="form-control form-white" runat="server" placeholder="Fourchette"></asp:TextBox>
                    
                <asp:TextBox ID="loginr" class="form-control form-white" runat="server" placeholder="Nom d'utilisateur"></asp:TextBox>
        <asp:TextBox ID="mdpr" class="form-control form-white" runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>

                    <div id="pass-info" class="clearfix"></div>
					
        <asp:Button ID="Button3" runat="server" class="btn btn-submit" Text="Sinscrire"  OnClick="inscrit1" />
			
                             </asp:Panel>
                 
                </div>
		</div>
	</div> 
    
      <!--se connectr -->
    

    

    <!-- fin se connecter -->
    
    
    
    
    
    </form> <!-- End Register modal -->



  
        
    <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<div role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</div>
	</div>
	<!-- End Search Menu -->
   
<!-- COMMON SCRIPTS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script  src="js/cat_nav_mobile.js"></script>
<script>$('#cat_nav').mobileMenu();</script>
<script src="js/theia-sticky-sidebar.js"></script>
<script>
    jQuery('#sidebar').theiaStickySidebar({
      additionalMarginTop: 80
    });
</script>
<script>
$('#cat_nav a[href^="#"]').on('click', function (e) {
			e.preventDefault();
			var target = this.hash;
			var $target = $(target);
			$('html, body').stop().animate({
				'scrollTop': $target.offset().top - 70
			}, 900, 'swing', function () {
				window.location.hash = target;
			});
		});
</script>

</body>
    </html>

