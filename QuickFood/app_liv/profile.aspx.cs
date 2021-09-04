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
    public partial class profile : System.Web.UI.Page
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

            if (!IsPostBack)
            {
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
                    lblnom.Text = lire1[1].ToString();
                    lblemail.Text = lire1[3].ToString();
                    lbltele.Text = lire1[2].ToString();
                    lbladr.Text = lire1[4].ToString();
                    TextBox1.Text = lire1[1].ToString();
                    TextBox2.Text = lire1[3].ToString();
                    TextBox3.Text = lire1[2].ToString();
                    TextBox4.Text = lire1[4].ToString();
                    TextBox5.Text = lire1[5].ToString();
                    TextBox6.Text = lire1[6].ToString();

                }
            }

        }


        protected void valider (object sender, EventArgs e)

        {


          


            String id = Session["id1"].ToString();
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update  livreur set  nom_liv= '" + TextBox1.Text.ToString() + "',tel_liv= '" + TextBox3.Text.ToString() + "',email_liv= '" + TextBox2.Text.ToString() + "',adr_liv='" + TextBox4.Text.ToString() + "', login_liv='" + TextBox5.Text.ToString() + "', mdp_liv='" + TextBox6.Text.ToString() + "' where id_liv='" + id.ToString() + "' ";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();




        }


    }
}