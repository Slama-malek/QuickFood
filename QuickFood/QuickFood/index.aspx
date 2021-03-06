<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="QuickFood.QuickFood.index" %>

<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>

<!-- Mirrored from www.ansonika.com/quickfood/index_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:46:43 GMT -->
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
    
     <!-- SPECIFIC CSS -->
     <link href="css/morphext.css" rel="stylesheet">

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
                        <asp:Label ID="l1" runat="server" Visible="true"></asp:Label>

        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->
    
    <!-- SubHeader =============================================== -->
    <section class="parallax-window" id="home" data-parallax="scroll" data-image-src="img/sub_header_home.jpg" data-natural-width="1400" data-natural-height="550">
    <div id="subheader">
        <div id="sub_content">
            <h1>Order <strong id="js-rotating">Takeaway,Delivery,Quick</strong> Food</h1>
            <p>
               
            </p>
            <form method="post" action="http://www.ansonika.com/quickfood/list_page.html">
                <div id="custom-search-input">
                    <div class="input-group ">
                        <input type="text" class=" search-query" placeholder="Votre adresse ou code postal">
                        <span class="input-group-btn">
                        <input type="submit" class="btn_search" value="submit">
                        </span>
                    </div>
                </div>
            </form>
        </div><!-- End sub_content -->
    </div><!-- End subheader -->
    <div id="count" class="hidden-xs">
        <ul>
            <li><span class="number">2650</span> Restaurant</li>
            <li><span class="number">5350</span> Personnes servies</li>
            <li><span class="number">12350</span> Utilisateurs enregistrés</li>
        </ul>
    </div>
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->
    
    <!-- Content ================================================== -->
         <div class="container margin_60">
        
         <div class="main_title">
            <h2 class="nomargin_top" style="padding-top:0">Comment ça marche</h2>
            <p>
       
            </p>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="box_home" id="one">
                    <span>1</span>
                    <h3>Recherche par Restaurants</h3>
                    <p>
                        
						Recerche Tous les restaurants disponible dans votre Ville
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box_home" id="two">
                    <span>2</span>
                    <h3>choisir un restaurant</h3>
                    <p>
                       Nous avons plus de 1000 menus en ligne.
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box_home" id="three">
                    <span>3</span>
                    <h3>Payer par carte ou en espèces</h3>
                    <p>
                        C'est rapide, facile et totalement sécurisé.
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box_home" id="four">
                    <span>4</span>
                    <h3>Livraison ou à emporter</h3>
                    <p>
                        Vous êtes paresseux? Êtes-vous de retour à la maison?
                    </p>
                </div>
            </div>
        </div><!-- End row -->
        
        <div id="delivery_time" class="hidden-xs">
            <strong><span>2</span><span>5</span></strong>
            <h4>Les minutes qui prennent habituellement pour livrer!</h4>
        </div>
        </div><!-- End container -->
            
   
        
       <div class="high_light">
      	<div class="container">
      		<h3>Choisissez parmi plus de 2 000 restaurants</h3>
            <p></p>
            <a href="list_page.html">Voir tous les restaurants</a>
        </div><!-- End container -->
      </div><!-- End hight_light -->
            
    <section class="parallax-window" data-parallax="scroll" data-image-src="img/bg_office.jpg" data-natural-width="1200" data-natural-height="600">
    <div class="parallax-content">
        <div class="sub_content">
            <i class="icon_mug"></i>
            <h3>Nous livrons également à votre bureau</h3>
            <p>
               
            </p>
        </div><!-- End sub_content -->
    </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End Content =============================================== -->
	
	<div class="container margin_60">
      <div class="main_title margin_mobile">
            <h2 class="nomargin_top">Travailler avec nous</h2>
            <p>
        
            </p>
        </div>
      	<div class="row">
            <div class="col-md-4 col-md-offset-2">
            	<a class="box_work" href="submit_restaurant.html">
                <img src="img/submit_restaurant.jpg" width="848" height="480" alt="" class="img-responsive">
                <h3>Soumettez votre restaurant<span>Commencez à gagner des clients</span></h3>
                <p></p>
                <div class="btn_1">Lire la suite</div>
                </a>
            </div>
            <div class="col-md-4">
            	<a class="box_work" href="submit_driver.html">
                <img src="img/delivery.jpg" width="848" height="480" alt="" class="img-responsive">
				<h3>Nous recherchons un chauffeur<span>Commencez à gagner de l'argent</span></h3>
                <p></p>
                <div class="btn_1">Lire la suite</div>
                </a>
            </div>
      </div><!-- End row -->
    </div><!-- End container -->

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
     <form runat="server"> 
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
    
    
    
    
    
    
    
    </form> <!-- End Register modal -->
    
<!-- COMMON SCRIPTS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="js/morphext.min.js"></script>
<script>
$("#js-rotating").Morphext({
    animation: "fadeIn", // Overrides default "bounceIn"
    separator: ",", // Overrides default ","
    speed: 2300, // Overrides default 2000
    complete: function () {
        // Overrides default empty function
    }
});
    

    $(function () {
        $("#btnShowLogin").click(function () {
            $('#LoginModal').modal('show');
        });
    });

</script>

</body>

<!-- Mirrored from www.ansonika.com/quickfood/index_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:46:45 GMT -->
</html>