using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.QuickFood
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            id = Request.QueryString.Get("id");
            connexion.cnx1.Close();
            connexion.cnx1.Open();
            connexion.cmd1.CommandText = "select * from panier,platss ,resto where platss.id_platss=panier.id_platss and resto.id_resto=platss.id_resto and resto.id_resto='" + id.ToString() + "'";
            SqlDataReader lir = connexion.cmd1.ExecuteReader();
           
            while (lir.Read() == true)
            {

                lb_panier.Text += "<table class='table table_summary'><tbody><tr><td>" +
                  "<a href ='plats_resto.aspx?id1=" + lir[1].ToString() + "&sup2=true'class='remove_item'><i class='icon_minus_alt'></i></a> <strong>" + lir[2].ToString() + " X </strong>" + lir[5].ToString() + "" +
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



            string n = "";
            n = Request.QueryString.Get("n");

            string conx = "";
            conx = Request.QueryString.Get("conx");

           
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
                            "<li><a href = 'ListeResterants.aspx?conx=&conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des restaurants</a></li>" +
                            "<li><a href = 'ListePlats.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des plats</a></li>" +
                          "<li><a href = 'specialite.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des spécialités</a></li>" +

                        "</ul>" +
                        "</li>" +
                        "<li><a href = 'QuiSommeNous.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Qui somme nous?</a></li>" +
                        "<li><a href = 'Faq.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Faq </a></li>" +
                        "<li><a href = 'plats_resto.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Se déconnecter </a></li>" +
                        "<li><a href ='#0'> " + n.ToString() + " </a></li>" +

                       "</ul>" +
                "</div><!-- End main-menu -->" +
                "</nav>";

            lb_aj.Text += "<a class='btn_full_outline' href='plats_resto.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "'><i class='icon - right'></i> Ajouter un autre plat</a>";

            //Lb_pay.Text += "<a class='btn_full' href='cart_2.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "&data=ajouter'>Payer</a>";






        }


        protected void ajouter(object sender, EventArgs e)
        {
            string conx = "";
            conx = Request.QueryString.Get("conx");
            string n = "";
            n = Request.QueryString.Get("n");



            string id = "";
            id = Request.QueryString.Get("id");
            //string dateC = string.Concat("Le", date.Text.ToString(), " ", heure.Text.ToString());


            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "insert into commande (date_cmd,heure_cmd,idclient)values('" + date.Text.ToString() + "','" +heure.Text.ToString()+"','" + conx.ToString() + "')";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();
            Response.Redirect("cart_2.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "");
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('client est bien ajouté ...')", true);
        }

    }
}