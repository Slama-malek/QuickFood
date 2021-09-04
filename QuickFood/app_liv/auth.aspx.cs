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
    public partial class auth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id1"] = null;
        }

        protected void connecter(object sender, EventArgs e)
        {
            if (log.Text == "" || TextBox2.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Remplir tout les champs...')", true);

            }
            else
            {
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select * from livreur where login_liv='" + log.Text.ToString() + "' and mdp_liv='" + TextBox2.Text.ToString() + "'  ";
                SqlDataReader lire1 = connexion.cmd.ExecuteReader();
                if (lire1.Read() == true)
                {
                    Session["id1"] = lire1[0].ToString();
                    Response.Redirect("acc.aspx");
                }
            }
        }

    }
}