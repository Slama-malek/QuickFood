<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faq.aspx.cs" Inherits="QuickFood.QuickFood.Faq" %>

<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>

<!-- Mirrored from www.ansonika.com/quickfood/faq.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:47:22 GMT -->
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
          
           <asp:Label ID="l1" runat="server"></asp:Label>

        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->

<!-- SubHeader =============================================== -->
<section class="parallax-window" id="short"  data-parallax="scroll" data-image-src="img/sub_header_short.jpg" data-natural-width="1400" data-natural-height="350">
    <div id="subheader">
    	<div id="sub_content">
    	 <h1>Questions fréquemment posées</h1>
         <p></p>
        </div><!-- End sub_content -->
	</div><!-- End subheader -->
</section><!-- End section -->
<!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
         
        </div>
    </div><!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
    
    <div class="col-md-3" id="sidebar">
    <div class="theiaStickySidebar">
        <div class="box_style_1" id="faq_box">
			<ul id="cat_nav">
				<li><a href="#payment" class="active">Commnade</a></li>
				<li><a href="#works">Paiement</a></li>
				<li><a href="#delay">Livraison</a></li>
				<li><a href="#takeaway">Contact</a></li>
				<li><a href="#preorder">Restaurant</a></li>
                <li><a href="#register_2">Se connecter</a></li>
             
			</ul>
		</div><!-- End box_style_1 -->
        </div><!-- End theiaStickySidebar -->
     </div><!-- End col-md-3 -->
        
        <div class="col-md-9">
        <h3 class="nomargin_top">Commnade</h3>
       	 
         <div class="panel-group" id="payment">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#payment" href="#collapseOne">Comment passer une commande sur le site de Quickfood?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse">
                      <div class="panel-body">
                          Une fois que vous avez choisi votre repas, cliquez sur « Passer une commande ». Vous pouvez régler QuickFood en espèces à réception de votre commande, ou par carte bancaire sur notre site. Notre système de paiement accepte les cartes suivantes : MasterCard,Visa. 
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#payment" href="#collapseTwo">Puis-je passer ma commande par téléphone?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
Non. Les commandes ne se font que depuis notre site Internet ou notre application mobile.                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#payment" href="#collapseThree">Ma commande est incomplète
<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">
Si cela se produit, vous pouvez :

Vérifier la présence de l'élément manquant dans le message de confirmation
Contacter le restaurant pour déterminer l'origine du problème et trouver une solution.                      </div>
                    </div>
                  </div>
                </div><!-- End panel-group -->
                
                <h3>Paiement</h3>
       	 
         <div class="panel-group" id="works">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#works" href="#collapseOne_works">Comment puis-je payer ma commande?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseOne_works" class="panel-collapse collapse">
                      <div class="panel-body">
Vous pouvez régler QuickFood en espèces à réception de votre commande ou par carte bancaire sur notre site. Notre système de paiement accepte les cartes suivantes : MasterCard, Visa.
Une fois que vous avez choisi votre repas, cliquez sur « Passer une commande ». Vous pouvez régler QuickFood en espèces à réception de votre commande, ou par carte bancaire sur notre site. Notre système de paiement accepte les cartes suivantes : MasterCard, Visa. 
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#works" href="#collapseTwo_works">Mon repas était inacceptable. Comment puis-je demander un remboursement ou obtenir une compensation ?
<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseTwo_works" class="panel-collapse collapse">
                      <div class="panel-body">
Si vous n'êtes pas satisfait de votre repas, veuillez contacter le restaurant pour nous expliquer le problème.                       </div>
                    </div>
                  </div>
               
                </div><!-- End panel-group -->
                
                 <h3>Livraison</h3>
       	 
         		<div class="panel-group" id="delay">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#delay" href="#collapseOne_delay">Puis-je programmer la réception de ma commande à une heure précise ?
<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseOne_delay" class="panel-collapse collapse">
                      <div class="panel-body">
Oui. Le délai minimum de livraison pour tous les restaurants partenaires est de 30 minutes après l'envoi de votre commande.

                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#delay" href="#collapseTwo_delay">Livraison retardée<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseTwo_delay" class="panel-collapse collapse">
                      <div class="panel-body">
Nos restaurants mettent tout en œuvre pour préparer les repas en 30 minutes. Cependant, lors des jours d'affluence, comme le week-end, il se peut que ce délai soit légèrement allongé.                      </div>
                    </div>
                  </div>
               
                </div><!-- End panel-group -->
                                
                <h3>Contact</h3>
       	 
         		<div class="panel-group" id="takeaway">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#takeaway" href="#collapseOne_takeaway">Comment puis-je vous contacter ?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseOne_takeaway" class="panel-collapse collapse">
                      <div class="panel-body">
À travers notre chat, disponible en haut à droite de cette page, ou par courrier électronique à quickFood@gmail.com.                      </div>
                    </div>
                  </div>
              
              
                </div><!-- End panel-group -->
                
                <h3>Restaurant</h3>
       	 
         		<div class="panel-group" id="preorder">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#preorder" href="#collapseOne_preorder">Rejoignez-nous<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseOne_preorder" class="panel-collapse collapse">
                      <div class="panel-body">
Si vous souhaitez rejoindre le réseau de restaurants partenaires de QuickFood, faites-nous simplement part de votre intérêt.
Remplir  le formulaire trouvé en haut del page a droite.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#preorder" href="#collapseTwo_preorder">En tant que restaurateur, puis-je refuser de traiter une commande ?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseTwo_preorder" class="panel-collapse collapse">
                      <div class="panel-body">

Oui, vous pouvez refuser de traiter une commande, au risque de ternir votre réputation et de perdre des clients.

Nous pouvons tolérer les refus liés aux circonstances exceptionnelles, comme en cas de neige. En revanche, si vous êtes simplement débordés au restaurant, nous vous encourageons à contacter notre service client pour tenter de trouver une solution.                    
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#preorder" href="#collapseThree_preorder">De combien de temps je dispose pour préparer le repas ?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseThree_preorder" class="panel-collapse collapse">
                      <div class="panel-body">
Le délai maximum dont vous disposez pour préparer le repas est de 25 à 30 minutes (en fonction de la distance qui sépare le client de votre restaurant). Si vous n'êtes pas en mesure de respecter ce délai, veuillez contacter notre client pour nous en informer.

                      </div>
                    </div>
                  </div>
                </div><!-- End panel-group -->
                
                <h3>Se connecter</h3>
       	 
         		<div class="panel-group" id="register_2">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#register_2" href="#collapseOne_register">Comment puis-je connecter?<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseOne_register" class="panel-collapse collapse">
                      <div class="panel-body">
Remplir le formulaire de connexion trouvé au haut a doite de la page .                     
                    </div>
                  </div>
                
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#register_2" href="#collapseThree_register">Comment puis-je créer un compte ?
<i class="indicator icon_plus_alt2 pull-right"></i></a>
                      </h4>
                    </div>
                    <div id="collapseThree_register" class="panel-collapse collapse">
                      <div class="panel-body">
Cliquez sur « Inscription » en haut à droite de notre site, puis  choisir « Client» puis remplir le formulaire .Une fois que vous aurez enregistré toutes vos informations, vous pourrez commander dans tous les restaurants de votre choix.                      
                    </div>
                  </div>
                </div><!-- End panel-group -->
                
            
                
               
         
        </div><!-- End col-md-9 -->
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
    
     <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<div role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</div>
	</div>
    </form>
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
<script>
$('#faq_box a[href^="#"]').on('click', function (e) {
			e.preventDefault();
			var target = this.hash;
			var $target = $(target);
			$('html, body').stop().animate({
				'scrollTop': $target.offset().top - 120
			}, 900, 'swing', function () {
				window.location.hash = target;
			});
		});
</script>

</body>

<!-- Mirrored from www.ansonika.com/quickfood/faq.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:47:22 GMT -->
</html>