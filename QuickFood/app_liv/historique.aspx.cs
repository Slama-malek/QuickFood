using QuickFood.QuickFood;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.app_liv
{
    public partial class historique : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select *from notification where vue='non'";
            SqlDataReader lire = connexion.cmd.ExecuteReader();
            int nb_no = 0;
            while (lire.Read() == true)
            {
                DateTime deb = DateTime.Parse(lire[4].ToString());
                DateTime fin = DateTime.Now;
                TimeSpan interval = new TimeSpan();
                interval = interval.Add(TimeSpan.FromMinutes((double)deb.Minute - fin.Minute));


                //TimeSpan Diff = fin - deb;
                //int date = int.Parse(lire[4].ToString()) - int.Parse(DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"));
                nb_no++;
                if (lire[2].ToString() == "Accepter")
                {
                    notfi.Text += "<li>" +
                   " <a href ='detail.aspx?idcmd=" + lire[3].ToString() + "&etat=" + lire[2].ToString() + "&rep=true'>" +


                  " <i class='fa fa-warning text-blue'></i>N°" + lire[3].ToString() + "est acceptée " +
                  "<small ><i class='fa fa-clock-o'></i> " + interval.ToString() + " mins</small>" +
                   " </a>" +
                 " </li> ";
                }
                if (lire[2].ToString() == "Refuser")
                {
                    notfi.Text += "<li>" +
                   " <a href = 'detail.aspx?idcmd=" + lire[3].ToString() + "&etat=" + lire[2].ToString() + "'>" +


                  " <i class='fa fa-warning text-red'></i>N°" + lire[3].ToString() + "est refusée " +
                  "<small ><i class='fa fa-clock-o'></i> " + interval.ToString() + " mins</small>" +
                   " </a>" +
                 " </li> ";
                }

            }

            lbl_nb_notification.Text = nb_no.ToString();
            nbn.Text = nb_no.ToString();


            string id = Session["id1"].ToString();

            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from livreur where id_liv='" + id.ToString() + "' ";
            SqlDataReader lire1 = connexion.cmd.ExecuteReader();
            if (lire1.Read() == true)
            {
                Label1.Text = lire1[1].ToString();
                Label2.Text = lire1[1].ToString();
                //lblimg.Text = "<img src ='images/livreur/" + lire1[0].ToString() + ".jpg' class='rounded float-left' alt='User Image'>";
                //lblimage.Text = "<img src ='images/livreur/" + lire1[0].ToString() + ".jpg' class='rounded float-left' alt='User Image'>";
                //Lblimge.Text = "<img src ='images/livreur/" + lire1[0].ToString() + ".jpg' class='rounded float-left' alt='User Image'>";


            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select distinct commande.id_cmd,commande.etat,commande.date_cmd,commande.heure_cmd,resto.nom_resto from commande,detail_cmd,platss,resto,livreur where  commande.id_cmd=detail_cmd.id_cmd and detail_cmd.id_platss=platss.id_platss and platss.id_resto=resto.id_resto and commande.id_liv=livreur.id_liv and livreur.id_liv='" + id.ToString() + "'";
            SqlDataReader lire_cmd = connexion.cmd.ExecuteReader();

            while (lire_cmd.Read() == true)
            {
                if (lire_cmd[1].ToString() == "Valider")
                {

                    hist.Text += "<tr>" +
                      "<td><a href = 'detail.aspx?idcmd=" + lire_cmd[0].ToString() + "&etat=" + lire_cmd[1].ToString() + "'>#" + lire_cmd[0].ToString() + "</a></td>" +
                     " <td> " + lire_cmd[4].ToString() + " </td>" +
                     " <td> " + lire_cmd[2].ToString() + " </td>" +
                        " <td><span class='text-muted'><i class='fa fa-clock-o'></i> " + lire_cmd[3].ToString() + "</span> </td>" +
                  " <td><span class='label label-success'>" + lire_cmd[1].ToString() + "</span></td>" +


                    "</tr>";
                }
            }

            }
        }
}