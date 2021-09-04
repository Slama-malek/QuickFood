using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.QuickFood
{
    public partial class cart_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id1 = "";
           id1 = Request.QueryString.Get("id1");
            connexion.cnx1.Close();
            connexion.cnx1.Open();
            connexion.cmd1.CommandText = "select * from commande,detail_cmd,platss where commande.id_cmd=detail_cmd.id_cmd and platss.id_platss=detail_cmd.id_platss and commande.id_cmd='" + id1.ToString() + "'";
            SqlDataReader lir = connexion.cmd1.ExecuteReader();
            int total = 0;
            int qte = 0;
            int produit = 0;
            int somme=0;
            while (lir.Read() == true)
            {
                total = int.Parse(lir[13].ToString());
               qte = int.Parse(lir[17].ToString());
                produit = total * qte;
                lb_panier.Text += "<tr>" +
                    "<td>" +
                        "<strong>" + lir[13].ToString() + "X</strong>" + lir[15].ToString() + "" +
                          "</td>" +

                          "<td >" +
                              "<strong class='pull-right'>" + produit.ToString() + "</strong>" +
                    "</td>" +
                "</tr>";
                somme += produit;
            }
          

            lir.Close();

            //double sump = 0;
            //connexion.cnx.Close();
            //connexion.cnx.Open();
            //connexion.cmd.CommandText = "select * from commande,detail_cmd,platss where commande.id_cmd=detail_cmd.id_cmd and platss.id_platss=detail_cmd.id_platss and commande.id_cmd='" + id1.ToString() + "'";
            //SqlDataReader lir1 = connexion.cmd.ExecuteReader();
            //while (lir1.Read() == true)
            //{
            //    sump += double.Parse(lir1[17].ToString());

            //}
            Lb_total.Text = somme.ToString();



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
                            "<li><a href = 'ListeResterants.aspx?conx=&conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des restaurants</a></li>" +
                            "<li><a href = 'ListePlats.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des plats</a></li>" +
                                     "<li><a href = 'specialite.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Liste des spécialités</a></li>" +

                        "</ul>" +
                        "</li>" +
                        "<li><a href = 'QuiSommeNous.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Qui somme nous?</a></li>" +
                        "<li><a href = 'Faq.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Faq </a></li>" +
                        "<li><a href = 'plats_resto.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "'> Se déconnecter </a></li>" +
                        "<li><a href ='#0'> " + n.ToString() + " </a></li>" +

                       "</ul>" +
                "</div><!-- End main-menu -->" +
                "</nav>";

        }
    }
}