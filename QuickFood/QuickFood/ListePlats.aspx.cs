using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace QuickFood.QuickFood
{
    public partial class ListePlats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double moyen=0;
            int nb_note = 0;
            int snote =0 ;
            int cpt = 0;
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from platss,resto where resto.id_resto=platss.id_resto ";
            SqlDataReader lire_plats = connexion.cmd.ExecuteReader();
            while (lire_plats.Read() == true)
            {
                String type = lire_plats[4].ToString();
                cpt++;
                if (type == "boissons")
                {
                    Lblsup.Text += " <div class='strip_list wow fadeIn' data-wow-delay='0.2s'>" +
                        "<div class='row'>" +
                        "<div class='col-md-9 col-sm-9'>" +
                                    "<div class='desc'>" +
                                "<div class='thumb_strip'>" +
                                    "<a href='detaille.aspx?id1=" + lire_plats[0].ToString() + "&id2=" + lire_plats[5].ToString() + "'><img src='img/plats/" + lire_plats[0].ToString() + ".jpg' alt=''></a>" +
                                "</div> "+
                                 "<div class='rating'>";


                    //"<i class='icon_star voted'></i><i class='icon_star voted'></i><i class='icon_star voted'></i><i class='icon_star voted'></i><i class='icon_star'></i> " +
                    snote = 0;
                    nb_note = 0;
                    connexion.cnx1.Close();
                    connexion.cnx1.Open();
                    connexion.cmd1.CommandText = "select * from note_plat where id_platss='" + lire_plats[0].ToString() + "' ";
                    SqlDataReader lirenote = connexion.cmd1.ExecuteReader();

                    if (lirenote.Read() == true)
                    {

                        nb_note++;
                        snote += int.Parse(lirenote[1].ToString());

                    }
                    connexion.cnx1.Close();
                    moyen = snote / nb_note;
                    for (int i = 0; i < 5; i++)
                    {
                        if (i < moyen)
                        {
                            Lblsup.Text += "<i class='icon_star voted'></i>";
                        }
                        else
                        {
                            Lblsup.Text += "<i class='icon_star'></i>";
                        }
                    }




                    Lblsup.Text += "</div><h3>" + lire_plats[1].ToString() + "</h3>" +
                                "<div class='type'>" +
                                    "" + lire_plats[7].ToString() + "" +
                                "</div>" +



                            "</div>" +
                            "</div>" +
                       "</div>" +
                        "</div>";
                }
                else
                {
                    lbl_pl.Text += " <div class='strip_list wow fadeIn' data-wow-delay='0.2s'>" +
                       "<div class='row'>" +
                       "<div class='col-md-9 col-sm-9'>" +
                                   "<div class='desc'>" +
                               "<div class='thumb_strip'>" +
                                   "<a href='detaille.aspx?id1=" + lire_plats[0].ToString() + "&id2=" + lire_plats[5].ToString() + "'><img src='img/plats/" + lire_plats[0].ToString() + ".jpg' alt=''></a>" +
                               "</div> "+
                                 "<div class='rating'>";




                    //"<i class='icon_star voted'></i><i class='icon_star voted'></i><i class='icon_star voted'></i><i class='icon_star voted'></i><i class='icon_star'></i> " +


                    snote = 0;
                    nb_note = 0;
                    connexion.cnx1.Close();
                    connexion.cnx1.Open();
                    connexion.cmd1.CommandText = "select * from note_plat where id_platss='" + lire_plats[0].ToString() + "' ";
                    SqlDataReader lirenote = connexion.cmd1.ExecuteReader();

                    if (lirenote.Read() == true)
                    {

                        nb_note++;
                        snote += int.Parse(lirenote[1].ToString());

                    }
                    connexion.cnx1.Close();
                    try
                    {

                   
                    moyen = snote / nb_note;
                    }
                    catch
                    {
                        moyen = 0;
                    }
                    for (int i = 0; i < 5; i++)
                    {
                        if (i < moyen)
                        {
                            lbl_pl.Text += "<i class='icon_star voted'></i>";
                        }
                        else
                        {
                            lbl_pl.Text += "<i class='icon_star'></i>";
                        }
                    }




                    lbl_pl.Text +=  "</div><h3>" + lire_plats[1].ToString() + "</h3>" +
                               "<div class='type'>" +
                                   "" + lire_plats[7].ToString() + "" +
                               "</div>" +



                           "</div>" +
                           "</div>" +
                      "</div>" +
                       "</div>";
                }

                lbl_nbp.Text = cpt.ToString();
            }

            string conx = "";
            conx = Request.QueryString.Get("conx");


            if (conx == null)
            {
                acceuil(sender, e);
            }
            else
            {
                authentification(sender, e);
            }
        }


        protected void connecter(object sender, EventArgs e)
        {
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

                    Response.Redirect("ListePlats.aspx?conx=" + cn.ToString() + "&n=" + nomc.ToString() + "");




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
                        Response.Redirect("ListePlats.aspx");
                    }





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
                Response.Redirect("ListePlats.aspx");
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
                Response.Redirect("ListePlats.aspx");
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
                            "<li><a href = 'ListeResterants.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des restaurants</a></li>" +
                            "<li><a href = 'ListePlats.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des plats</a></li>" +
                                                        "<li><a href = 'specialite.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des spécialités</a></li>" +

                        "</ul>" +
                        "</li>" +
                        "<li><a href = 'QuiSommeNous.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Qui somme nous?</a></li>" +
                        "<li><a href = 'Faq.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Faq </a></li>" +
                        "<li><a href = 'index.aspx'> Se déconnecter </a></li>" +
                        "<li><a href ='#0'>" + n.ToString() + "</a></li>" +

                       "</ul>" +
                "</div><!-- End main-menu -->" +
                "</nav>";
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
        }

    }
}