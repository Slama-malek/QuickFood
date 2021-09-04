using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace QuickFood.QuickFood
{
    public partial class plats_resto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {




            string id = "";
            string id1 = "";
            string sup1 = "";
            string nom = "";
            string prix = "";
            string sup2 = "";
            string conx = "";
            string n = "";
            try
            {
                id = Request.QueryString.Get("id");
                id1 = Request.QueryString.Get("id1");
                sup1 = Request.QueryString.Get("sup1");
                nom = Request.QueryString.Get("nom");
                prix = Request.QueryString.Get("prix");
                sup2 = Request.QueryString.Get("sup2");
                conx = Request.QueryString.Get("conx");
                n = Request.QueryString.Get("n");

                Session["id_resto"] = id.ToString();
            }
            catch { }




            if (conx == null || conx == "")
            {
                acceuil(sender, e);
                conx = "";
                n = "";

            }
            else if (conx != null && conx != "")
            {
                authentification(sender, e);


                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from panier,platss ,resto where platss.id_platss=panier.id_platss and resto.id_resto=platss.id_resto and resto.id_resto='"+id.ToString()+"'";
                SqlDataReader lir = connexion.cmd1.ExecuteReader();
               
                while (lir.Read() == true)
                {
                    if (prix == null || prix == "" || id1 == "" || id1 == null)
                    {
                        lb_panier.Text += "<table class='table table_summary'><tbody><tr><td>" +
                        "<a href ='plats_resto.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "&sup2=true'class='remove_item'><i class='icon_minus_alt'></i></a> <strong>" + lir[2].ToString() + " X </strong>" + lir[5].ToString() + "" +
                       "</td><td><strong class='pull-right'>" + lir[3].ToString() + "</strong></td></tbody></table></tr>";
                    }
                    else
                    {
                        lb_panier.Text += "<table class='table table_summary'><tbody><tr><td>" +
                        "<a href ='plats_resto.aspx?id1=" + id1.ToString() + "&id=" + id.ToString() + "&conx=" + conx.ToString() + "&prix=" + prix.ToString() + "&n=" + n.ToString() + "&sup2=true'class='remove_item'><i class='icon_minus_alt'></i></a> <strong>" + lir[2].ToString() + " X </strong>" + lir[5].ToString() + "" +
                       "</td><td><strong class='pull-right'>" + lir[3].ToString() + "</strong></td></tbody></table></tr>";
                    }
                }
                lir.Close();

                double sump = 0;
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "SELECT prix_u from panier,platss where platss.id_platss=panier.id_platss";
                SqlDataReader lir1 = connexion.cmd.ExecuteReader();
                while (lir1.Read() == true)
                {
                    sump += double.Parse(lir1[0].ToString());

                }
                Lb_total.Text = sump.ToString();

            }
            try
            {
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from platss,resto where resto.id_resto=platss.id_resto and resto.id_resto='" + id.ToString() + "'  ";
                SqlDataReader lire_plats = connexion.cmd.ExecuteReader();
                int nbe = 0;
                int nbp = 0;
                int nbd = 0;
                int nbb = 0;
                while (lire_plats.Read() == true)
                {
                    lbl_pl.Text = "<div id='thumb'> <img src='img/resto/" + lire_plats[6].ToString() + ".jpg' alt=''></div>";

                    lbl_nom_resto.Text = lire_plats[7].ToString();
                    lbl_num.Text = lire_plats[8].ToString();
                    lbl_adr.Text = lire_plats[9].ToString();
                    String type = lire_plats[4].ToString();
                    if (type == "entrees")
                    {

                        nbe++;


                        lbl_liste_plats.Text += "<tr><td>" +

                                    "<figure class='thumb_menu_list'><img src = 'img/plats/" + lire_plats[0].ToString() + ".jpg' alt='thumb'></figure>" +
                                    "<h5>" + lire_plats[1].ToString() + "    </h5>" +
                                    "<p>  " + lire_plats[2].ToString() + "    </p></td><td><strong>   " + lire_plats[3].ToString() + "</strong>" +

                                "</td><td class='options'><div class='dropdown dropdown-options'>" +
                                    "<a href ='plats_resto.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "&id1=" + lire_plats[0].ToString() + "&id=" + lire_plats[6].ToString() + "&sup1=ok&nom=" + lire_plats[1].ToString() + "&prix=" + lire_plats[3].ToString() + "'><i class='icon_plus_alt2'></i></a>" +
                                              "</div></td></tr>";
                    }



                    else if (type == "plats principals")
                    {
                        nbp++;
                        lbl_listepp.Text += "<tr><td>" +

                                    "<figure class='thumb_menu_list'><img src = 'img/plats/" + lire_plats[0].ToString() + ".jpg' alt='thumb'></figure>" +
                                    "<h5>" + lire_plats[1].ToString() + "    </h5>" +
                                    "<p>  " + lire_plats[2].ToString() + "    </p></td><td><strong>   " + lire_plats[3].ToString() + "</strong>" +

                                "</td><td class='options'><div class='dropdown dropdown-options'>" +
                                    "<a href ='plats_resto.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "&id1=" + lire_plats[0].ToString() + "&id=" + lire_plats[6].ToString() + "&sup1=ok&nom=" + lire_plats[1].ToString() + "&prix=" + lire_plats[3].ToString() + "'><i class='icon_plus_alt2'></i></a>" +
                                              "</div></td></tr>";
                    }

                    else if (type == "desserts")
                    {
                        nbd++;

                        lbl_pldesset.Text += "<tr><td>" +

                                    "<figure class='thumb_menu_list'><img src = 'img/plats/" + lire_plats[0].ToString() + ".jpg' alt='thumb'></figure>" +
                                    "<h5>" + lire_plats[1].ToString() + "</h5>" +
                                    "<p>" + lire_plats[2].ToString() + "</p></td><td><strong>" + lire_plats[3].ToString() + "</strong>" +

                               "</td><td class='options'><div class='dropdown dropdown-options'>" +
                                    "<a href ='plats_resto.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "&id1=" + lire_plats[0].ToString() + "&id=" + lire_plats[6].ToString() + "&sup1=ok&nom=" + lire_plats[1].ToString() + "&prix=" + lire_plats[3].ToString() + "'><i class='icon_plus_alt2'></i></a>" +
                                              "</div></td></tr>";
                    }

                    else if (type == "boissons")
                    {
                        nbb++;

                        Lblplboi.Text += "<tr><td>" +

                                    "<figure class='thumb_menu_list'><img src = 'img/plats/" + lire_plats[0].ToString() + ".jpg' alt='thumb'></figure>" +
                                    "<h5>" + lire_plats[1].ToString() + "</h5>" +
                                    "<p>" + lire_plats[2].ToString() + "</p></td><td><strong>" + lire_plats[3].ToString() + "</strong>" +

                               "</td><td class='options'><div class='dropdown dropdown-options'>" +
                                    "<a href ='plats_resto.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "&id1=" + lire_plats[0].ToString() + "&id=" + lire_plats[6].ToString() + "&sup1=ok&nom=" + lire_plats[1].ToString() + "&prix=" + lire_plats[3].ToString() + "'><i class='icon_plus_alt2'></i></a>" +
                                              "</div></td></tr>";


                    }

                    lbl_nbe.Text = nbe.ToString();
                    lbl_nbp.Text = nbp.ToString();
                    lbl_nbd.Text = nbd.ToString();
                    lbl_nbb.Text = nbb.ToString();

                }
            }
            catch { Response.Redirect("ListeResterants.aspx"); }


            int nB = 0;
            if (sup1 == "ok")
            {


                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select count(*) from panier where id_platss='" + id1.ToString() + "'";
                Int32 count = (Int32)connexion.cmd1.ExecuteScalar();



                if (count == 0)
                {


                    nB = 1;
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "insert into panier (id_platss,qte,prix_u)values('" + id1.ToString() + "','" + nB.ToString() + "','" + prix.ToString() + "')";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();



                }
                else
                {


                    float p = float.Parse(prix);
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "update  panier set qte= qte+1,prix_u=prix_u+" + p + " where id_platss='" + id1.ToString() + "'";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();



                }


                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from panier,platss ,resto where platss.id_platss=panier.id_platss and resto.id_resto=platss.id_resto and resto.id_resto='" + id.ToString() + "'";
                SqlDataReader lir = connexion.cmd1.ExecuteReader();
              
                while (lir.Read() == true)
                {
                    lb_panier.Text += "<table class='table table_summary'><tbody><tr><td>" +
                      "<a href ='plats_resto.aspx?id1=" + id1.ToString() + "&id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "&prix=" + prix.ToString() + "&sup2=true'class='remove_item'><i class='icon_minus_alt'></i></a> <strong>" + lir[2].ToString() + " X </strong>" + lir[5].ToString() + "" +
                     "</td><td><strong class='pull-right'>" + lir[3].ToString() + "</strong></td></tbody></table></tr>";
                }
                lir.Close();

                double sump = 0;
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "SELECT prix_u from panier,platss where platss.id_platss=panier.id_platss";
                SqlDataReader lir1 = connexion.cmd.ExecuteReader();
                while (lir1.Read() == true)
                {
                    sump += double.Parse(lir1[0].ToString());

                }
                Lb_total.Text = sump.ToString();

            }



            if (sup2 == "true")
            {
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from panier where id_platss='" + id1.ToString() + "'";
                SqlDataReader lir2 = connexion.cmd1.ExecuteReader();
               
                int Q = Int32.Parse(lir2[2].ToString());
                lir2.Close();
                if (Q == 1)
                {
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "delete  from panier where id_platss='" + id1.ToString() + "'";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();


                }
                else
                {
                    float p = float.Parse(prix);
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "update  panier set qte= qte-1,prix_u=prix_u-" + p + " where id_platss='" + id1.ToString() + "'";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();
                }

                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from panier,platss ,resto where platss.id_platss=panier.id_platss and resto.id_resto=platss.id_resto and resto.id_resto='" + id.ToString() + "'";
                SqlDataReader lir = connexion.cmd1.ExecuteReader();

                while (lir.Read() == true)
                {
                    lb_panier.Text += "<table class='table table_summary'><tbody><tr><td>" +
                      "<a href ='plats_resto.aspx?id1=" + lir[1].ToString() + "&id=" + id.ToString() + "&conx=" + conx.ToString() + "&prix=" + prix.ToString() + "&n=" + n.ToString() + "&sup2=true'class='remove_item'><i class='icon_minus_alt'></i></a> <strong>" + lir[2].ToString() + " X </strong>" + lir[5].ToString() + "" +
                     "</td><td><strong class='pull-right'>" + lir[3].ToString() + "</strong></td></tbody></table></tr>";
                }
                lir.Close();

                double sump = 0;
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "SELECT prix_u from panier,platss where platss.id_platss=panier.id_platss";
                SqlDataReader lir1 = connexion.cmd.ExecuteReader();
                while (lir1.Read() == true)
                {
                    sump += double.Parse(lir1[0].ToString());

                }
                Lb_total.Text = sump.ToString();






            }
        }







        protected void connecter(object sender, EventArgs e)
        {

            var id = (string)Session["id_resto"];
            if (login.Text == "" || pwd.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Remplir tout les champs...')", true);

            }
            else
            {
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from client  where login_cl='" + login.Text.ToString() + "' and mdp_cl='" + pwd.Text.ToString() + "'  ";
                SqlDataReader lire1 = connexion.cmd.ExecuteReader();
                if (lire1.Read() == true)
                {

                    Session["nomC"] = lire1[1].ToString();
                    Session["idc"] = lire1[0].ToString();
                    var cn = (string)Session["idc"];
                    var nomc = (string)Session["nomC"];

                    Response.Redirect("plats_resto.aspx?id=" + id.ToString() + "&conx=" + cn.ToString() + "&n=" + nomc.ToString() + "");




                }
                else
                {
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "select * from resto  where login_resto='" + login.Text.ToString() + "' and mdp_resto='" + pwd.Text.ToString() + "'  ";
                    SqlDataReader lire2 = connexion.cmd.ExecuteReader();
                    if (lire2.Read() == true)
                    {

                        Session["idp"] = lire2[0].ToString();
                        Response.Redirect("admine.aspx");

                    }
                    else
                    {

                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('cordonnees incorrectes  ...')", true);
                        Response.Redirect("plats_resto.aspx?id=" + id.ToString() + "");
                    }





                }



            }

        }




        protected void connecter1(object sender, EventArgs e)
        {

            var id = (string)Session["id_resto"];
            string id1 = "";
            id1 = Request.QueryString.Get("id1");

            if (login1.Text == "" || pwd1.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Remplir tout les champs...')", true);

            }
            else
            {
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from client  where login_cl='" + login1.Text.ToString() + "' and mdp_cl='" + pwd1.Text.ToString() + "'  ";
                SqlDataReader lire1 = connexion.cmd.ExecuteReader();
                if (lire1.Read() == true)
                {

                    Session["nomC"] = lire1[1].ToString();
                    Session["idc"] = lire1[0].ToString();
                    var cn = (string)Session["idc"];
                    var nomc = (string)Session["nomC"];

                    Response.Redirect("cart.aspx?id=" + id.ToString() + "&id1=" + id1.ToString() + "&conx=" + cn.ToString() + "&n=" + nomc.ToString() + "");

                }





            }



        }






        protected void inscrit(object sender, EventArgs e)

        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox7.Text == "" || TextBox8.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Remplir tous les champs...')", true);

            }
            else
                   if (TextBox2.Text.Length != 8)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Entrer un numero de téléphone valide...')", true);

            }

            else
            {


                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into client (nom_pre_client,tel_client,adr_cl,email_cl,date_nai_cl,sexe_cl,mdp_cl,login_cl,id_ville)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + drop_sexe.SelectedItem.Value.ToString() + "','" + TextBox7.Text.ToString() + "','" + TextBox8.Text.ToString() + "','5')";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();
                Response.Redirect("plats_resto.aspx");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('client est bien ajouté ...')", true);


            }

        }
        protected void inscrit1(object sender, EventArgs e)

        {
            if (nomr.Text == "" || teler.Text == "" || adrr.Text == "" || emailr.Text == "" || descr.Text == "" || fourr.Text == "" || loginr.Text == "" || mdpr.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Remplir tous les champs...')", true);

            }
            else
                if (teler.Text.Length != 8)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Entrer un numero de téléphone valide...')", true);

            }

            else
            {


                //choisir specialite
                string id_sp = null;
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from specialite where nom_sp='" + DropDownList1.Text.ToString() + "'";
                SqlDataReader lire = connexion.cmd.ExecuteReader();
                if (lire.Read() == true)
                {

                    id_sp = lire[0].ToString();
                }

                connexion.cnx.Close();

                //insertion restorant
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into resto (nom_resto,tel_resto,adr_resto,email_resto,description,login_resto,mdp_resto,fourchette,id_sp)values('" + nomr.Text.ToString() + "','" + teler.Text.ToString() + "','" + adrr.Text.ToString() + "','" + emailr.Text.ToString() + "','" + descr.Text.ToString() + "','" + loginr.Text.ToString() + "','" + mdpr.Text.ToString() + "','" + fourr.Text.ToString() + "','" + id_sp.ToString() + "')";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();
                Response.Redirect("plats_resto.aspx");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('restaurant est bien ajouté ...')", true);

            }


        }


        protected void rd_client_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_client.Checked == true)
            {
                panel_client.Visible = true;
                panel1.Visible = false;
                panel_client.Focus();

            }
        }

        protected void rd_resto_CheckedChanged(object sender, EventArgs e)
        {
            panel_client.Visible = false;
            panel1.Visible = true;
            panel1.Focus();


        }

        protected void authentification(object sender, EventArgs e)
        {
            string n = "";
            n = Request.QueryString.Get("n");

            string conx = "";
            conx = Request.QueryString.Get("conx");

            //var id = (string)Session["id_resto"];
            string id1 = "";
            id1 = Request.QueryString.Get("id1");

            string id = "";
            id = Request.QueryString.Get("id");

            l1.Text += "<nav class='col--md - 8 col - sm - 8 col - xs - 8'>" +
                          "<a class='cmn-toggle-switch cmn-toggle-switch__htx open_close' href='javascript:void(0);'><span>Menu mobile</span></a>" +

                    "<div class='main-menu'>" +
                    "<div id ='header_menu'>" +
                        "<img src='img/logo.png' width='190' height='23' alt='' data-retina='true'>" +
                    "</div>" +
                    "<a href = '#' class='open_close' id='close_in'><i class='icon_close'></i></a>" +
                     "<ul>" +
                        "<li class='submenu'>" +
                        "<a href = 'index.aspx' class='show-submenu'>Accueil</a>" +

                        "</li>" +
                        "<li class='submenu'>" +
                        "<a href = 'javascript:void(0);' class='show-submenu'>Food<i class='icon-down-open-mini'></i></a>" +
                        "<ul>" +
                            "<li><a href = 'ListeResterants.aspx?conx=&conx=" + conx.ToString() + "&n=" + n.ToString() + "&id=" + id.ToString() + "'> Liste des restaurants</a></li>" +
                            "<li><a href = 'ListePlats.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des plats</a></li>" +
                                                                 "<li><a href = 'specialite.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des spécialités</a></li>" +

                        "</ul>" +
                        "</li>" +
                        "<li><a href = 'QuiSommeNous.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Qui somme nous?</a></li>" +
                        "<li><a href = 'Faq.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Faq </a></li>" +
                        "<li><a href = 'plats_resto.aspx?id=" + id.ToString() + "&conx=&n='> Se déconnecter </a></li>" +
                        "<li><a href ='#0'> " + n.ToString() + " </a></li>" +

                       "</ul>" +
                "</div><!-- End main-menu -->" +
                "</nav>";
            lb_cmd.Text += "<a class='btn_full' href='cart.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "'>Passer une commande</a>";
        }


        protected void acceuil(object sender, EventArgs e)
        {
            l1.Text += "<nav class='col--md - 8 col - sm - 8 col - xs - 8'>" +
                      "<a class='cmn-toggle-switch cmn-toggle-switch__htx open_close' href='javascript:void(0);'><span>Menu mobile</span></a>" +

                "<div class='main-menu'>" +
                "<div id ='header_menu'>" +
                    "<img src='img/logo.png' width='190' height='23' alt='' data-retina='true'>" +
                "</div>" +
                "<a href = '#' class='open_close' id='close_in'><i class='icon_close'></i></a>" +
                 "<ul>" +
                    "<li class='submenu'>" +
                    "<a href = 'index.aspx' class='show-submenu'>Accueil</a>" +

                    "</li>" +
                    "<li class='submenu'>" +
                    "<a href = 'javascript:void(0);' class='show-submenu'>Food<i class='icon-down-open-mini'></i></a>" +
                    "<ul>" +
                        "<li><a href = 'ListeResterants.aspx' > Liste des restaurants</a></li>" +
                        "<li><a href = 'ListePlats.aspx' > Liste des plats</a></li>" +
                                     "<li><a href = 'specialite.aspx' > Liste des spécialités</a></li>" +

                    "</ul>" +
                    "</li>" +
                    "<li><a href = 'QuiSommeNous.aspx'> Qui somme nous?</a></li>" +
                    "<li><a href = 'Faq.aspx'> Faq </a></li>" +
                    "<li><a href= '#0' data-toggle= 'modal' data-target='#login_2'> Se connecter</a></li>" +
                    "<li><a href ='#0' data-toggle= 'modal' data-target='#register'> S'inscrire </a></li>" +

                   "</ul>" +
            "</div><!-- End main-menu -->" +
            "</nav>";

            lb_cmd.Text += "<a href='#0' data-toggle= 'modal' data-target='#login_3' class='btn_full'>Passer une commande</a>";
        }



    }
}