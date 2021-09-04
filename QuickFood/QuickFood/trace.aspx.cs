using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.QuickFood
{
    public partial class trace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            }

            }

        }
}