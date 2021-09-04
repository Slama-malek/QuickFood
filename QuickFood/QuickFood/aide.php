
<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>

<!-- Mirrored from www.ansonika.com/quickfood/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:47:21 GMT -->
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
    <link href='http://fonts.googleapis.com/css?family=Gochi+Hand' rel='stylesheet' type='text/css'>

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">

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
 
    <?php 

session_start();


if (isset($_GET["click"])) {
	unset($_SESSION['username']);
}
if(isset($_SESSION['username']))
{
	echo"
	 <header>
    <div class='container-fluid'>
        <div class='row'>
            <div class='col--md-4 col-sm-4 col-xs-4'>
                <a href='index.html' id='logo'>
                <img src='img/logo.png' width='190' height='23' alt='' data-retina='true' class='hidden-xs'>
                <img src='img/logo_mobile.png' width='59' height='23' alt='' data-retina='true' class='hidden-lg hidden-md hidden-sm'>
                </a>
            </div>
                        <nav class='col--md - 8 col - sm - 8 col - xs - 8'>
                      <a class='cmn-toggle-switch cmn-toggle-switch__htx open_close' href='javascript:void(0);'><span>Menu mobile</span></a>

                <div class='main-menu'>
                <div id ='header_menu'>
                    <img src='img/logo.png' width='190' height='23' alt='' data-retina='true'>
                </div>
               <a href = '#' class='open_close' id='close_in'><i class='icon_close'></i></a>
                 <ul>
                    <li class='submenu'>
                    <a href = 'index.aspx' class='show-submenu'>Accueil</a>

                    </li>
                    <li class='submenu'>
                    <a href = 'javascript:void(0);' class='show-submenu'>Food<i class='icon-down-open-mini'></i></a>
                    <ul>
                        <li><a href = 'ListeResterants.aspx' > Liste des restaurants</a></li>
                        <li><a href = 'ListePlats.aspx' > Liste des plats</a></li>
            <li><a href = 'specialite.aspx' > Liste des spécialités</a></li>

                   </ul>
                    </li>
                    
                   
				   <li><a href= 'deconx.php'> Deconnecter</a></li>
<li><a href= '#0' data-toggle= 'modal' data-target='#login_2'>".$_SESSION['username']."</a></li>
<li><a href = 'aide.php'> Aide</a></li>

                    

                   </ul>
            </div><!-- End main-menu -->
            </nav>

        </div><!-- End row -->
    </div><!-- End container -->
</header>";}
	else{
		
    echo"<header>
    <div class='container-fluid'>
        <div class='row'>
            <div class='col--md-4 col-sm-4 col-xs-4'>
                <a href='index.html' id='logo'>
                <img src='img/logo.png' width='190' height='23' alt='' data-retina='true' class='hidden-xs'>
                <img src='img/logo_mobile.png' width='59' height='23' alt='' data-retina='true' class='hidden-lg hidden-md hidden-sm'>
                </a>
            </div>
                        <nav class='col--md - 8 col - sm - 8 col - xs - 8'>
                      <a class='cmn-toggle-switch cmn-toggle-switch__htx open_close' href='javascript:void(0);'><span>Menu mobile</span></a>

                <div class='main-menu'>
                <div id ='header_menu'>
                    <img src='img/logo.png' width='190' height='23' alt='' data-retina='true'>
                </div>
               <a href = '#' class='open_close' id='close_in'><i class='icon_close'></i></a>
                 <ul>
                    <li class='submenu'>
                    <a href = 'index.aspx' class='show-submenu'>Accueil</a>

                    </li>
                    <li class='submenu'>
                    <a href = 'javascript:void(0);' class='show-submenu'>Food<i class='icon-down-open-mini'></i></a>
                    <ul>
                        <li><a href = 'ListeResterants.aspx' > Liste des restaurants</a></li>
                        <li><a href = 'ListePlats.aspx' > Liste des plats</a></li>
            <li><a href = 'specialite.aspx' > Liste des spécialités</a></li>

                   </ul>
                    </li>
                    
                   
<li><a href= '#0' data-toggle= 'modal' data-target='#login_2'> Se connecter</a></li>
                    <li><a href ='#0' data-toggle= 'modal' data-target='#register'> S'inscrire </a></li>
					<li><a href ='#0' data-toggle= 'modal' data-target='#register1'>Rejoindre gratuitement </a></li>
					<li><a href = 'aide.php'> Aide</a></li>

                    

                   </ul>
            </div><!-- End main-menu -->
            </nav>

        </div><!-- End row -->
    </div><!-- End container -->
</header>";}
	?>
    <!-- End Header =============================================== -->

<!-- SubHeader =============================================== -->
<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_cart.jpg" data-natural-width="1400" data-natural-height="350">
    <div id="subheader">
    	<div id="sub_content">
    	 <h1>À propos de nous</h1>
         <p></p>
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
		<div class="col-md-4">
			<h3 class="nomargin_top">Quelques mots à propos de nous</h3>
			<p>
                Lancée à Tunis en 2018, QuickFood est une start-up foodtech, faisant le lien entre les restaurants les plus demandés, des coursiers passionnés, et des clients désireux de se faire livrer des repas de qualité.

			</p>
			<p>
Son modèle économique unique offre aux restaurants partenaires un service de livraison fiable et clé en main, tout en leur fournissant une deuxième source de revenus. La livraison de nourriture est une activité très différente de celle de la restauration, et est très complexe à mettre en oeuvre.
			</p>
			<h4>Mission</h4>
			<p>
Avec QuickFood, les restaurants peuvent augmenter leurs revenus par mètre carré, et offrir un service de livraison impeccable, sans risque ni coût additionnel.			</p>
			<p>
Grâce aux nouvelles technologies, QuickFood va une étape plus loin en permettant aux clients de suivre leur commande en temps réel. L’algorithme unique développé par l’équipe permet aujourd’hui de se faire livrer en des temps record parmi des centaines de restaurants.			</p>
			
		</div>
		<div class="col-md-7 col-md-offset-1 text-right hidden-sm hidden-xs">
			<img src="img/devices.jpg" alt="" class="img-responsive">
		</div>
	</div><!-- End row -->
	<hr class="more_margin">
    <div class="main_title">
            <h2 class="nomargin_top">Les meilleurs restaurants de la ville sont enfin livrés à domicile

</h2>
            <p>
             
            </p>
        </div>
	
</div><!-- End container -->

<div class="container-fluid">
	<div class="row">
		<div class="col-md-6 nopadding features-intro-img">
			<div class="features-bg img_2">
				<div class="features-img">
				</div>
			</div>
		</div>
		<div class="col-md-6 nopadding">
			<div class="features-content">
				<h3>"Travail flexible et frais importants"</h3>
				<p>
Ils mirent en place une technologie appropriée permettant d’effectuer des livraisons rapides depuis les meilleurs restaurants de la ville, via une flotte de coursiers en scooter et vélo.les coursiers vont rapidement apprécier l’originalité et les bénéfices du modèle. Horaires de travail à la carte, rémunération directe sur les frais de livraison et le plaisir de circuler simplement en ville, tout le monde était conquis. Dans un contexte socio-économique nouveau, la création d’emploi pour des dizaines de jeunes travailleurs allait pouvoir se concrétiser. L’aventure allait pouvoir commencer.				</p>
				<p>
Les trois fondateurs, passionnés par la bonne cuisine et la technologie, ont ainsi rassemblé leurs compétences afin de révolutionner le secteur de la livraison à domicile et régaler des milliers de foodies tunisiens, chez eux.				</p>
			</div>
		</div>
	</div>
</div><!-- End container-fluid  -->
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
     <form method ="POST" action ="login.php">
<div class="modal fade" id="login_2" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myLogin">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
					<input type ="text" name = "id" class="form-control form-white" placeholder="Nom d'utilisateur " >
                    
					<input type = "password" class="form-control form-white" name ="pw" placeholder="Mot de passe">
					
					<div class="text-left">
						<a href="#">Forgot Password?</a>
					</div>
					<input type ="submit" value ="Se connecter" class="btn btn-submit">
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- End modal -->   
    </form>
<!-- Register modal --> 
    <form method ="POST" action ="inscription.php"> 
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myRegister">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
       
                            
   
<input type ="text" name = "nom" class="form-control form-white" placeholder="Nom prénom " >
<input type ="text" name = "tel" class="form-control form-white" placeholder="Téléphone " >
<input type ="text" name = "addresse" class="form-control form-white" placeholder="Adresse " >
<input type ="text" name = "email" class="form-control form-white" placeholder="Email " >
<input type ="text" name = "daten" class="form-control form-white" placeholder="Date de naissance " >

<select name="sexe" id="sexe" class="form-control form">
    <option value="homme">Homme</option>
    <option value="femme">Femmme</option>
    
  
</select>
<input type ="text" name = "id" class="form-control form-white" placeholder=" Nom d'utilisateur" >
<input type = "password" name = "pw" class="form-control form-white" placeholder="Mot de passe " >


                    <div id="pass-info" class="clearfix"></div>
					<input type ="submit" value ="S'inscrire" class="btn btn-submit">
				

			</div>
           
                </div>
		</div>
	</div> 
    
    
    
    
    
    
    
    </form> <!-- End Register modal -->
	
	
	
	 <form method ="POST" action ="inscriptionresto.php"> 
<div class="modal fade" id="register1" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myRegister">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
       
                            
    <input type ="text" name = "nom" class="form-control form-white" placeholder=" Nom" >
<input type ="text" name = "tel" class="form-control form-white" placeholder="Téléphone " >
<input type ="text" name = "adresse" class="form-control form-white" placeholder="Adresse" >
<input type ="text" name = "desc" class="form-control form-white" placeholder="Description " >
<input type ="text" name = "fourchette" class="form-control form-white" placeholder="Fourchette " >
	
		<input type ="text" name = "id" class="form-control form-white" placeholder=" Nom d'utilisateur" >
<input type = "password" name = "pw" class="form-control form-white" placeholder="Mot de passe " >

                    <div id="pass-info" class="clearfix"></div>
		
                   <input type ="submit" value ="S'inscrire" class="btn btn-submit">
                </div>
		</div>
	</div> 
    
    
    
    
    
    
    
    </form> 
<div class="modal fade" id="login_2" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myLogin">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
                    <asp:TextBox ID="login"  class="form-control form-white"  runat="server" placeholder="Nom d'utilisateur "></asp:TextBox>
                    <asp:TextBox ID="pwd" class="form-control form-white"  runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>
					
					<div class="text-left">
						<a href="#">Forgot Password?</a>
					</div>
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
         				<asp:DropDownList ID="DropDownList2"  class="form-control" runat="server"></asp:DropDownList>
      <asp:TextBox ID="TextBox4" class="form-control form-white" type="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="TextBox5" class="form-control form-white" runat="server" placeholder="Date de naissance" textmode=date></asp:TextBox>
<asp:DropDownList ID="drop_sexe"  class="form-control form" runat="server" placeholder="Sexe" Width="100%" >
                                     <asp:ListItem>Homme</asp:ListItem>
                                     <asp:ListItem>Femme</asp:ListItem>
                                 </asp:DropDownList>                                          
                <asp:TextBox ID="TextBox7" class="form-control form-white" runat="server" placeholder="Nom d'utilisateur"></asp:TextBox>
        <asp:TextBox ID="TextBox8" class="form-control form-white" runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>

                    <div id="pass-info" class="clearfix"></div>
				
        <asp:Button ID="Button1" runat="server" class="btn btn-submit" Text="S'inscrire"  OnClick="inscrit" />
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
					
        <asp:Button ID="Button3" runat="server" class="btn btn-submit" Text="S'inscrire"  OnClick="inscrit1" />
			
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
	<!-- End Search Menu -->
    </form>
<!-- COMMON SCRIPTS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>

</body>

<!-- Mirrored from www.ansonika.com/quickfood/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:47:22 GMT -->
</html>