using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System.Drawing;
using System.Net;
using System.IO;
using System.Text;
using System.Data;

namespace QuickFood.QuickFood
{
    public partial class ListeResterants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double moyen = 0;
            int nb_note = 0;
            int snote = 0;
            int nb = 0;
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from resto,specialite where resto.id_sp=specialite.id_sp ";
            SqlDataReader lire = connexion.cmd.ExecuteReader();

            string conx = "";
            conx = Request.QueryString.Get("conx");
            string n = "";
            n = Request.QueryString.Get("n");


            if (conx == null || conx == "")
            {
                acceuil(sender, e);
                conx = "";
                n = "";
            }
            else if (conx != null && conx != "")
            {
                authentification(sender, e);
            }
            while (lire.Read() == true)
            {

                nb++;
                lbl_resto.Text += "<div class='col-md-6 col-sm-6 wow zoomIn' data-wow-delay='0.1s'>" +
                       "<a class='strip_list grid' href='plats_resto.aspx?id=" + lire[0].ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "'>" +
                           "<div class='ribbon_1'>Populair</div>" +
                           "<div class='desc'>" +
                               "<div class='thumb_strip'>" +
                                   "<img src ='img/resto/" + lire[0].ToString() + ".jpg'>" +
                               "</div><div class='rating'>";
                snote = 0;
                nb_note = 0;
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from note_resto where id_resto='" + lire[0].ToString() + "' ";
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
                        lbl_resto.Text += "<i class='icon_star voted'></i>";
                    }
                    else
                    {
                        lbl_resto.Text += "<i class='icon_star'></i>";
                    }
                }


                lbl_resto.Text += "</div><h3>" + lire[1].ToString() + "</h3>" +
                               "<div class='type'>" + lire[13].ToString() + "</div>" +
                               "<div class='location'>" + lire[3].ToString() + "</div> " +



                               "</div></a></div>";
                lbl_nb.Text = nb.ToString();

            }
            connexion.cnx.Close();

            string la_m = "", lon_m = "";
            //connexion.cnx1.Close();
            //connexion.cnx1.Open();
            //connexion.cmd1.CommandText = "select * from resto";
            //SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
            //while (lire1.Read() == true)
            //{

            //    String address = lire1[3].ToString();



            //    string url = "http://maps.google.com/maps/api/geocode/xml?address=" + address.ToString() + "&sensor=false";
            //    WebRequest request = WebRequest.Create(url);
            //    using (WebResponse response = (HttpWebResponse)request.GetResponse())
            //    {
            //        using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
            //        {
            //            DataSet dsResult = new DataSet();
            //            dsResult.ReadXml(reader);

            //            foreach (DataRow row in dsResult.Tables["result"].Rows)
            //            {
            //                string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
            //                DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
            //                la_m = location["lat"].ToString();
            //                lon_m = location["lng"].ToString();

            //                connexion.cnx.Close();
            //                connexion.cnx.Open();
            //                connexion.cmd.CommandText = "update  resto set  lat= '" + la_m.ToString() + "',lng= '" + lon_m.ToString() + "' where id_resto='" + lire1[0].ToString() + "' ";
            //                connexion.cmd.ExecuteNonQuery();
            //                connexion.cnx.Close();


            //            }

            //            connexion.cnx.Close();

            //        }
            //    }





            //}
        }


        protected void GMap1_Load(object sender, EventArgs e)
        {






            string mla = "35.8369428";
            mla = mla.Replace(".", ",");
            string mlo = "10.6132453";
            mlo = mlo.Replace(".", ",");

            //inserer_maposition();

            if (!IsPostBack)
            {



                GLatLng mainLocation = new GLatLng(Convert.ToDouble(mla.ToString()), Convert.ToDouble(mlo.ToString()));
                GMap1.setCenter(mainLocation, 15);
                XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "Me", Color.Blue, Color.White, Color.Chocolate);
                GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));



                string la_m = "", lon_m = "";
                PinIcon p = null;
                GMarker gm;
                GInfoWindow win;
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from resto";
                SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
                while (lire1.Read() == true)
                {

                    String address = lire1[3].ToString();


                    la_m = lire1[9].ToString();
                    lon_m = lire1[10].ToString();




                    p = new PinIcon(PinIcons.home, Color.Red);
                    gm = new GMarker(new GLatLng(Convert.ToDouble(la_m.ToString()), Convert.ToDouble(lon_m.ToString())),
                 new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));

                    win = new GInfoWindow(gm, "Nom : " + lire1[1].ToString() + "</br> Numéro de Téléphone: " + lire1[2].ToString() + " ", false, GListener.Event.mouseover);
                    GMap1.Add(win);



                }

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
                connexion.cmd.CommandText = "select * from client  where login_cl='" + login.Text.ToString() + "'and mdp_cl='" + pwd.Text.ToString() + "'";
                SqlDataReader lire1 = connexion.cmd.ExecuteReader();
                if (lire1.Read() == true)
                {

                    Session["nomC"] = lire1[1].ToString();
                    Session["idc"] = lire1[0].ToString();
                    var cn = (string)Session["idc"];
                    var nomc = (string)Session["nomC"];

                    Response.Redirect("ListeResterants.aspx?conx=" + cn.ToString() + "&n=" + nomc.ToString() + "");




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
                        Response.Redirect("ListeResterants.aspx");
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
                Response.Redirect("ListeResterants.aspx");
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
                Response.Redirect("ListeResterants.aspx");
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
                        "<li><a href = 'ListeResterants.aspx'> Se déconnecter </a></li>" +
                        "<li><a href ='#0'> " + n.ToString() + " </a></li>" +

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