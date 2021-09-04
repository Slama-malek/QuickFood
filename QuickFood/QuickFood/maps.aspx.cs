using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System.Drawing;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Data;
using System.Text;

namespace QuickFood.QuickFood
{
    public partial class maps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string la_m = "", lon_m = "";
            connexion.cnx1.Close();
            connexion.cnx1.Open();
            connexion.cmd1.CommandText = "select * from resto";
            SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
            while (lire1.Read() == true)
            {

                String address = lire1[3].ToString();



                string url = "http://maps.google.com/maps/api/geocode/xml?address=" + address.ToString() + "&sensor=false";
                WebRequest request = WebRequest.Create(url);
                using (WebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
                    {
                        DataSet dsResult = new DataSet();
                        dsResult.ReadXml(reader);

                        foreach (DataRow row in dsResult.Tables["result"].Rows)
                        {
                            string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                            DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                            la_m = location["lat"].ToString();
                            lon_m = location["lng"].ToString();

                            connexion.cnx.Close();
                            connexion.cnx.Open();
                            connexion.cmd.CommandText = "update  resto set  lat= '" + la_m.ToString() + "',lng= '" + lon_m.ToString() + "' where id_resto='" + lire1[0].ToString() + "' ";
                            connexion.cmd.ExecuteNonQuery();
                            connexion.cnx.Close();
                       

                        }



                    }
                }

            



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

                    win = new GInfoWindow(gm, "Numéro de Téléphone Taxi </br> Matricule Taxi ", false, GListener.Event.mouseover);
                    GMap1.Add(win);



                }

            }

        }
}

    }
