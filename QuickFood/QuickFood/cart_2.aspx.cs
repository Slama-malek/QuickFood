using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.QuickFood
{
    public partial class cart_2 : System.Web.UI.Page
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


            //lb_conf.Text += "<a class='btn_full' href='cart_3.aspx?id=" + id.ToString() + "&conx=" + conx.ToString() + "&n=" + n.ToString() + "'>Confirmez votre commande</a>";

        }
        protected void conf(object sender, EventArgs e)
        {
            string id = "";
            id = Request.QueryString.Get("id");
            if (credit.Checked == true)
            {
                string conx = "";
                conx = Request.QueryString.Get("conx");
                string n = "";
                n = Request.QueryString.Get("n");


                //connexion.cnx.Close();
                //connexion.cnx.Open();
                //connexion.cmd.CommandText = "update commande set type_pay= '" + L11.Text.ToString() + "', where idclient='" + conx.ToString() + "' ";

                //connexion.cmd.ExecuteNonQuery();
                //connexion.cnx.Close();
                String id1 = "";
             
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "SELECT * from commande where idclient='" + conx.ToString() + "'";
                SqlDataReader lir1 = connexion.cmd.ExecuteReader();
                while (lir1.Read() == true)
                {
                    id1 = lir1[0].ToString();

                }
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "update commande set type_pay= '" + L11.Text.ToString() + "',etat='En attente' where id_cmd='" + id1.ToString() + "' ";

                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();

                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "insert into notification (date_notfi,vue,etat_notfi,numero)values( '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "','non','En attente','" + id1.ToString() + "')";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from panier,platss ,resto where platss.id_platss=panier.id_platss and resto.id_resto=platss.id_resto and resto.id_resto='" + id.ToString() + "'";
                SqlDataReader lir = connexion.cmd1.ExecuteReader();

                while (lir.Read() == true)
                {
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "insert into detail_cmd (id_cmd,id_platss,quantite)values('" + id1.ToString() + "','" + lir[1].ToString() + "','" + lir[2].ToString() + "')";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();

                }
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "DELETE FROM panier";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();

                Response.Redirect("cart_3.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "&id1="+id1.ToString()+"");

            }
            else if (esp.Checked == true)
            {
                string conx = "";
                conx = Request.QueryString.Get("conx");
                string n = "";
                n = Request.QueryString.Get("n");


                //connexion.cnx.Close();
                //connexion.cnx.Open();
                //connexion.cmd.CommandText = "update commande set type_pay= '" + L22.Text.ToString() + "' where idclient='" + conx.ToString() + "' ";
                //connexion.cmd.ExecuteNonQuery();
                //connexion.cnx.Close();
                String id1 = "";

                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "SELECT * from commande where idclient='" + conx.ToString() + "'";
                SqlDataReader lir1 = connexion.cmd.ExecuteReader();
                while (lir1.Read() == true)
                {
                    id1 = lir1[0].ToString();

                }
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "update commande set type_pay= '" + L22.Text.ToString() + "',etat='En attente' where id_cmd='" + id1.ToString() + "' ";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "insert into notification (date_notfi,vue,etat_notfi,numero)values( '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "','non','En attente','" + id1.ToString() + "')";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();

                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from panier,platss ,resto where platss.id_platss=panier.id_platss and resto.id_resto=platss.id_resto and resto.id_resto='" + id.ToString() + "'";
                SqlDataReader lir = connexion.cmd1.ExecuteReader();

                while (lir.Read() == true)
                {
                    connexion.cnx.Close();
                    connexion.cnx.Open();
                    connexion.cmd.CommandText = "insert into detail_cmd (id_cmd,id_platss,quantite)values('" + id1.ToString() + "','" + lir[1].ToString() + "','" + lir[2].ToString() + "')";
                    connexion.cmd.ExecuteNonQuery();
                    connexion.cnx.Close();

                }
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "DELETE FROM panier";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();

                Response.Redirect("cart_3.aspx?conx=" + conx.ToString() + "&n=" + n.ToString() + "&id1=" + id1.ToString() + "");



            }


            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Choisir une méthode de paiement...')", true);
            }

           

        }
    }
}