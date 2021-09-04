<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeResterants.aspx.cs" Inherits="QuickFood.QuickFood.ListeResterants" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>

<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>

<!-- Mirrored from www.ansonika.com/quickfood/grid_list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:47:06 GMT -->
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
    <link href="css/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >

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
<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_short.jpg" data-natural-width="1400" data-natural-height="350">
    <div id="subheader">
	<div id="sub_content">
    	<h1>
            <asp:Label ID="lbl_nb" runat="server" Text=""></asp:Label> résultats dans votre zone</h1>
       
    </div><!-- End sub_content -->
</div><!-- End subheader -->
</section><!-- End section -->
<!-- End SubHeader ============================================ -->

   
    
    <div class="collapse" id="collapseMap">
       
		 <asp:ScriptManager ID="ScriptManager2" runat="server" />
       
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
           
            <ContentTemplate>
              <cc1:GMap ID="GMap1" runat="server" Width="1200px" Height="800px" OnLoad="GMap1_Load" />
            </ContentTemplate>
        </asp:UpdatePanel>
	</div><!-- End Map -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
    
		<div class="col-md-3">
			<p>
				<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap">Voir sur la carte</a>
			</p>
			
		</div><!--End col-md -->
        
		<div class="col-md-9">
        
        <div id="tools">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="styled-select">
							<select name="sort_rating" id="Evaluation">
								<option value="" selected> par classement</option>
								<option value="lower">plus bas rang</option>
								<option value="higher">Plus haut rang</option>
							</select>
						</div>
					</div>
					<div class="col-md-9 col-sm-9 hidden-xs">
						<a href="list_page.html" class="bt_filters"><i class="icon-list"></i></a>
					</div>
				</div>
			</div><!--End tools -->
        
        	<div class="row">
                <asp:Label ID="lbl_resto" runat="server" Text=""></asp:Label>
                             
            </div><!-- End row-->
           

          
                      
		</div><!-- End col-md-9-->
        
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
                    <li><a href="QuiSommeNous.aspx">À propos de nous</a></li>
                    <li><a href="Faq.aspx">Faq</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#login_2">S'identifier</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#register">Registre</a></li>
                
                </ul>
            </div>
           
            
              
                </div>
            </div><!-- End row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                   
                        <p>© Quick Food 2018</p>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </footer>
        
<div class="layer"></div><!-- Mobile menu overlay mask -->
    
<<!-- Login modal -->   
    
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
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAs_JyKE9YfYLSQujbyFToZwZy-wc09w7s"></script>
<script src="js/map.js"></script>
<script src="js/infobox.js"></script>
<script src="js/ion.rangeSlider.js"></script>
<script>
    $(function () {
		 'use strict';
        $("#range").ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 15,
            from: 0,
            to:5,
            type: 'double',
            step: 1,
            prefix: "Km ",
            grid: true
        });
    });
</script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCHIfMhFQszy0jw08Ykuz5Hr02PL6RSEts"></script>

</body>

<!-- Mirrored from www.ansonika.com/quickfood/grid_list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:47:06 GMT -->
</html>