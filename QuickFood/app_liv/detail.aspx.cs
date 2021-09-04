using QuickFood.QuickFood;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.app_liv
{
    public partial class detail : System.Web.UI.Page
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

            String code1 = "";
            string  id1=null;
            try
            {
                 id1 = Session["id1"].ToString();
            }
            catch { Response.Redirect("auth.aspx"); }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from livreur where id_liv='" + id1.ToString() + "' ";
            SqlDataReader lire2 = connexion.cmd.ExecuteReader();
            if (lire2.Read() == true)
            {
                Label1.Text = lire2[1].ToString();
                Label2.Text = lire2[1].ToString();
             

            }

            String rep = "";
            String id = "";
            id = Request.QueryString.Get("idcmd");
            rep = Request.QueryString.Get("rep");
            if (rep == "true")
            {
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "update  notification set vue='oui' where numero='" + id.ToString() + "' ";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();
            }
                detcmd.Text = "";
        int total = 0;
           
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from client,commande,detail_cmd,platss where client.idclient=commande.idclient and  commande.id_cmd=detail_cmd.id_cmd and detail_cmd.id_platss=platss.id_platss and commande.id_cmd='" + id.ToString() + "' ";
            SqlDataReader lire1 = connexion.cmd.ExecuteReader();

            while (lire1.Read() == true)
            {
             //TextBox1.Text = id.ToString() + DateTime.Parse(lire1[11].ToString()).Day.ToString() + DateTime.Parse(lire1[11].ToString()).Month.ToString();

                lbl_code.Text = id.ToString() + DateTime.Parse(lire1[11].ToString()).Day.ToString() + DateTime.Parse(lire1[11].ToString()).Month.ToString();
                total = int.Parse(lire1[27].ToString())+total;
                lblnom.Text = lire1[1].ToString();
                lbltel.Text = lire1[2].ToString();
                lbladr.Text = lire1[3].ToString();

                detcmd.Text += "<tr>" +
              "<td>" + lire1[10].ToString() + "</td>" +
             " <td>" + lire1[25].ToString() + "</td>" +

                " <td>" + lire1[23].ToString() + "</td >" +

                " <td class='text-right'>" + lire1[27].ToString() + "</td>" +

            "</tr>";
            }
            lbltotal.Text = total.ToString();

            string id2 = "";
            id2 = Request.QueryString.Get("etat");
            if (id2=="En attente")
            {
                Panel2.Visible = true;

            }
            if(id2 == "Accepter")
            {
                Panel3.Visible = true;
            }
            if(id2=="En cours")
            {
                Panel4.Visible = true;
            }

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



                //string la_m = "", lon_m = "";
                //PinIcon p = null;
                //GMarker gm;
                //GInfoWindow win;
                //connexion.cnx1.Close();
                //connexion.cnx1.Open();
                //connexion.cmd1.CommandText = "select * from commande";
                //SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
                //while (lire1.Read() == true)
                //{

                //    String address = lire1[3].ToString();


                //    la_m = lire1[3].ToString();
                //    lon_m = lire1[4].ToString();




                //    p = new PinIcon(PinIcons.home, Color.Red);
                //    gm = new GMarker(new GLatLng(Convert.ToDouble(la_m.ToString()), Convert.ToDouble(lon_m.ToString())),
                // new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));

                //    win = new GInfoWindow(gm, "Nom : </br> Numéro de Téléphone:  ", false, GListener.Event.mouseover);
                //    GMap1.Add(win);



                //}

            }


       }

        protected void annuler (object sender, EventArgs e)
        {
            Response.Redirect("acc.aspx");


            }
        protected void confirmer (object sender, EventArgs e)
        {
            string id1 = null;
            try
            {
                id1 = Session["id1"].ToString();
            }
            catch { Response.Redirect("auth.aspx"); }

            String idresto = "";
            //idresto = Request.QueryString.Get("idresto");
            String id = "";
            id = Request.QueryString.Get("idcmd");
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from commande,detail_cmd,platss,resto where resto.id_resto=platss.id_resto and  commande.id_cmd=detail_cmd.id_cmd and detail_cmd.id_platss=platss.id_platss and commande.id_cmd='" + id.ToString() + "' ";
            SqlDataReader lire = connexion.cmd.ExecuteReader();

            while (lire.Read() == true)
            {
                idresto = lire[20].ToString();
            }
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update  commande set  etat='En cours' where id_cmd='" + id.ToString() + "' ";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();

            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from resto where id_resto='" + idresto.ToString() + "' ";
            SqlDataReader lire1 = connexion.cmd.ExecuteReader();

           if (lire1.Read() == true)
            {
               String latliv=null;
                String lngliv=null;
                latliv = lire1[9].ToString();
                latliv=latliv.Replace(",", ".");
                lngliv = lire1[10].ToString();
                lngliv = lngliv.Replace(",", ".");

                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "update  trace_liv set  latliv='" + latliv + "',lngliv=" + lngliv + " where id_liv='" + id1.ToString() + "' ";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();
            }
            connexion.cnx.Close();
            Panel4.Visible = true;
            Panel3.Visible = false;

        }
        protected void verifier(object sender, EventArgs e)
        {
            String id = "";
            id = Request.QueryString.Get("idcmd");
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update  commande set  etat='En attente' where id_cmd='" + id.ToString() + "' ";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();


        }

        protected void voir(object sender, EventArgs e)
        {

            Panel1.Visible = true;

        }
 public string code()
        {
            String id = "";
            id = Request.QueryString.Get("idcmd");
            String code1 = "";
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select * from client,commande,detail_cmd,platss where client.idclient=commande.idclient and  commande.id_cmd=detail_cmd.id_cmd and detail_cmd.id_platss=platss.id_platss and commande.id_cmd='" + id.ToString() + "' ";
            SqlDataReader lire1 = connexion.cmd.ExecuteReader();

            while (lire1.Read() == true)
            {
                code1 = id.ToString() + DateTime.Parse(lire1[11].ToString()).Day.ToString() + DateTime.Parse(lire1[11].ToString()).Month.ToString() + DateTime.Parse(lire1[11].ToString()).Year.ToString();

            }
            return code1;
        }
    protected void valider(object sender, EventArgs e)
        {
            String id = "";
            id = Request.QueryString.Get("idcmd");
            String  code1 = code();
            //TextBox1.Text = code1;

            if (TextBox1.Text==code1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('code secret est verifié ...')", true);
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "update  commande set  etat='Valider' where id_cmd='" + id.ToString() + "' ";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();


            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('code secret est incorrecte...')", true);

            }
        }






        }
}