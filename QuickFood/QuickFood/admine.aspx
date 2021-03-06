<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admine.aspx.cs" Inherits="QuickFood.QuickFood.admine" EnableEventValidation="false" %>

<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>


<!-- Mirrored from www.ansonika.com/quickfood/admin.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:58:50 GMT -->
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

	<!-- SPECIFIC CSS -->
	<link href="css/skins/square/grey.css" rel="stylesheet">
	<link href="css/admin.css" rel="stylesheet">
	<link href="css/bootstrap3-wysihtml5.min.css" rel="stylesheet">
	<link href="css/dropzone.css" rel="stylesheet">

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
	</div>
	<!-- End Preload -->

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
				 <nav class="col--md-8 col-sm-8 col-xs-8">
            <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
            <div class="main-menu">
                <div id="header_menu">
                    <img src="img/logo.png" width="190" height="23" alt="" data-retina="true">
                </div>
                <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
                 <ul>
                    <li class="submenu">
                    <a href="index.aspx" class="show-submenu">Accueil</a>
                   
                    </li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Food<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="ListeResterants.aspx">Liste des Restaurants</a></li>
                        <li><a href="ListePlats.aspx">Liste des plats</a></li>
                        <li><a href="specialite.aspx">Liste des spécialités</a></li>
                    </ul>
                    </li>
                    <li><a href="QuiSommeNous.aspx">Qui somme nous?</a></li>
                    <li><a href="Faq.aspx">Faq</a></li>
                   
                    <li><a href="index.aspx">Deconnexion</a></li>
                   </ul>
            </div><!-- End main-menu -->
            </nav>
			</div><!-- End row -->
		</div><!-- End container -->
	</header>
	<!-- End Header =============================================== -->

	<!-- SubHeader =============================================== -->

    
	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_cart.jpg" data-natural-width="1400" data-natural-height="350">
		<div id="subheader">
			<div id="sub_content">
				<h1>Bienvenue</h1>
		
				
			</div><!-- End sub_content -->
		</div><!-- End subheader -->
	</section><!-- End section -->
	<!-- End SubHeader ============================================ -->

	<div id="position">
		<div class="container">
		
			<a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
		</div>
	</div><!-- Position -->

	<!-- Content ================================================== -->
	<form runat="server">
    
    <div class="container margin_60">
		<div id="tabs" class="tabs">
			<nav>
				<ul>
					<li><a href="#section-1" class="icon-profile"><span>Informations</span></a>

					</li>
					<li><a href="#section-2" class="icon-menut-items"><span>Menu</span></a>
					</li>
					<li><a href="#section-3" class="icon-settings"><span>listes des commandes</span></a>

					</li>
				</ul>
			</nav>
			<div class="content">
               
				<section id="section-1">
					<div class="indent_title_in">
						<i class="icon_house_alt"></i>
						<h3>Description général du restaurant</h3>
						
					</div>

			
            	<div class="wrapper_indent">
						<div class="form-group">
							<label>Nom du restaurant </label>
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<label>Description du restaurant</label>
                            <asp:textbox id="textarea" mode="multiline" class="form-control" placeholder="Entrer text ..." style="height: 200px;" runat="server"/>
                         </div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Telephone</label>
								<asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Email</label>
<asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>							
								</div>
							</div>
						</div>
					</div><!-- End wrapper_indent -->

					<hr class="styled_2">

					<div class="indent_title_in">
						<i class="icon_pin_alt"></i>
						<h3>Adresse</h3>
						
					</div>
					<div class="wrapper_indent">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Addresse du restaurant</label>
                                    <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>
						
						</div>
                    <hr class="styled_2">

					<div class="indent_title_in">
					<i class="icon_mail_alt"></i>
								<h3>Changer votre nom d'utilisateur</h3>
						
					</div>
					<div class="wrapper_indent">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Nom d'utilisateur</label>
                                    <asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>
						
						</div>
                    	<hr class="styled_2">

					<div class="indent_title_in">
					<i class="icon_lock_alt"></i>
								<h3>Changer votre mot de passe</h3>
						
					</div>
					<div class="wrapper_indent">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Mot de passe</label>
                                    <asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>
						
						</div>
			

					<hr class="styled_2">
					<div class="indent_title_in">
						<i class="icon_images"></i>
						<h3>Photos du restaurant </h3>
						
					</div>

					<div class="wrapper_indent add_bottom_45">
						<div class="form-group">
							<label>Télécharger une image</label>
                            <div class="row">
							<div class="col-sm-3">
                            <b>Choisir une Image:</b><asp:FileUpload ID="FileUpload2" runat="server" /></div>
                         <div class="col-sm-3"> <asp:Button ID="Button9" class="btn_1" OnClick="oke" Text="ok" runat="server" /></div>
 </div>
                            <asp:Image ID="Image1" runat="server" />

                        </div>

						</div>

						

						
					<!-- End wrapper_indent -->
                    
					<hr class="styled_2">
					<div class="wrapper_indent">
    <asp:Button ID="Button1" class="btn_1" OnClick="enregistrer" Text="ENREGISTRER" runat="server" />
					
					
						
						
					</div><!-- End wrapper_indent -->

					
                    
				</section><!-- End section 1 -->

				<section id="section-2">
					<div class="indent_title_in">
						<i class="icon_document_alt"></i>
						<h3>Ajouter un nouveau plat</h3>
						
					</div>
                    
					<div class="wrapper_indent">
						<div class="form-group">
							<label>
                           Type</label>
                            <asp:DropDownList ID="DropDownList1"  class="form-control" runat="server"></asp:DropDownList>


						</div>

						<div class="menu-item-section clearfix">
							<h4>
Caractéristique</h4>
							
						</div>

						<div class="strip_menu_items">
							<div class="row">
								<div class="col-sm-3">
							
                            <b>Choisir une Image:</b><asp:FileUpload ID="FileUpload1" runat="server" />
                          <asp:Button ID="Button2" class="btn_1" OnClick="oke1" Text="ok" runat="server" />
 
                            <asp:Image ID="Image2" runat="server" />
									
								</div>
								<div class="col-sm-9">
									<div class="row">
										<div class="col-md-8">
											<div class="form-group">
												<label>Nom du plat</label>
                         <asp:TextBox ID="nomp" class="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Prix</label>
                                    <asp:TextBox ID="prix" class="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label>Description</label>
                                    <asp:TextBox ID="desc" class="form-control" runat="server"></asp:TextBox>
									</div>

									

									
								</div>
							</div><!-- End row -->
						</div><!-- End strip_menu_items -->
</div><!-- End wrapper_indent -->
                    	<div class="wrapper_indent">
					    <asp:Button ID="Button6" class="btn_1" OnClick="ajouter" Text="AJOUTER" runat="server" />
</div><!-- End wrapper_indent -->



                    <hr class="styled_2">





                    	<div class="col-md-12">
				<div class="box_style_2" id="main_menu">
					<asp:Label ID="lbl_plat1" runat="server" Text=""></asp:Label>
					
				</div><!-- End box_style_1 -->
			</div><!-- End col-md-6 -->



					<hr class="styled_2">
                    
                    <asp:Panel ID="panel_sup" Visible="false" runat="server">
                    
                    <div class="col-lg-12">
					<div class="wrapper_indent">
					

						<div class="indent_title_in">
						<i class="icon_document_alt"></i>
						<h3>Supprimer Plat</h3>
					</div>

						<div class="strip_menu_items">
							<div class="row">
								
								<div class="col-sm-9">
									<div class="row">
										<div class="col-md-8">
											<div class="form-group">
												<label>Nom du plat </label>
                                    <asp:TextBox ID="sup" class="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
								
								</div>

								<div class="wrapper_indent">
					    <asp:Button ID="Button5" class="btn_1" OnClick="supprimer" Text="SUPPRIMER" runat="server" />
                                    					    <asp:Button ID="Button7" class="btn_1" OnClick="Annuler" Text="ANNULER" runat="server" />

</div><!-- End wrapper_indent -->

								
								</div>
							</div><!-- End row -->
						</div><!-- End strip_menu_items -->
					</div>
                        </div></asp:Panel>

 
<asp:Panel ID="panel_mod" Visible="false" runat="server">
<div class="col-lg-12">
	<div class="indent_title_in">
						<i class="icon_document_alt"></i>
						<h3>Modifier un plat</h3>
						
					</div>
    <div class="wrapper_indent">
						<div class="form-group">
							<label>
                           Menu Catégorie</label>
                         <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>

						</div>

						<div class="menu-item-section clearfix">
							<h4>
E                         Elément du menu</h4>
							
						</div>

						<div class="strip_menu_items">
							<div class="row">
								<div class="col-sm-3">
								
									                            <div><b>Choisir une Image :</b><asp:FileUpload ID="FileUpload3" runat="server" /></div>

								</div>
								<div class="col-sm-9">
									<div class="row">
										<div class="col-md-8">
											<div class="form-group">
												<label>Nom du plat</label>
                         <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Prix</label>
                                    <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label>Description</label>
                                    <asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
									</div>

									

									
								</div>
							</div><!-- End row -->
						</div><!-- End strip_menu_items -->
</div><!-- End wrapper_indent -->
   	<div class="wrapper_indent">
					    <asp:Button ID="Button4" class="btn_1" OnClick="modifier" Text="MODIFIER" runat="server" />
           					    <asp:Button ID="Button8" class="btn_1" OnClick="annulermod" Text="ANNULER" runat="server" />

</div><!-- End wrapper_indent -->
                    
</div>  </asp:Panel>                   
				</section><!-- End section 2 -->

				<section id="section-3">

					<!-- End row -->
                   






                   



 	<h2 class="inner">Listes des commandes</h2>
					<p>
						
					</p>
					<table class="table table-striped cart-list">
					<thead>
					<tr>
						<th>
							Détail Client
						</th>
						<th>
							Détail commande
						</th>
						<th>
							Accepter
						</th>
                        <th>
							Refuser
						</th>
					</tr>
					</thead>
					<tbody>
                    <asp:Label ID="lbl_cmd" runat="server"></asp:Label>  
				

					</tbody>
					</table>
					
					
				<!-- End row -->
					<!-- End wrapper_indent -->
                    
	</section><!-- End section 3 -->

			</div><!-- End content -->
		</div>
	</div><!-- End container  -->
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

	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->

	<!-- Login modal -->
	<div class="modal fade" id="login_2" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div  class="popup-form" id="myLogin">
					<div class="login_icon"><i class="icon_lock_alt"></i>
					</div>
					<input type="text" class="form-control form-white" placeholder="Username">
					<input type="text" class="form-control form-white" placeholder="Password">
					<div class="text-left">
						<a href="#">Forgot Password?</a>
					</div>
					<button type="submit" class="btn btn-submit">Submit</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End modal -->

	<!-- Register modal -->
	<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<div class="popup-form" id="myRegister">
					<div class="login_icon"><i class="icon_lock_alt"></i>
					</div>
					<input type="text" class="form-control form-white" placeholder="Name">
					<input type="text" class="form-control form-white" placeholder="Last Name">
					<input type="email" class="form-control form-white" placeholder="Email">
					<input type="text" class="form-control form-white" placeholder="Password" id="password1">
					<input type="text" class="form-control form-white" placeholder="Confirm password" id="password2">
					<div id="pass-info" class="clearfix"></div>
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_2" id="check_2" name="check_2" />
							<label for="check_2"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span>
							</label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Register</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Register modal -->

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

	<!-- Specific scripts -->
	<script src="js/tabs.js"></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>

	<script src="js/bootstrap3-wysihtml5.min.js"></script>
	<script type="text/javascript">
		$('.wysihtml5').wysihtml5({});
	</script>
	<script src="js/dropzone.min.js"></script>
	<script>
		if ($('.dropzone').length > 0) {
			Dropzone.autoDiscover = false;
			$("#photos").dropzone({
				url: "upload",
				addRemoveLinks: true
			});

			$("#logo_picture").dropzone({
				url: "upload",
				maxFiles: 1,
				addRemoveLinks: true
			});

			$(".menu-item-pic").dropzone({
				url: "upload",
				maxFiles: 1,
				addRemoveLinks: true
			});
		}
	</script>

</body>


<!-- Mirrored from www.ansonika.com/quickfood/admin.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Mar 2018 13:58:51 GMT -->
</html>
