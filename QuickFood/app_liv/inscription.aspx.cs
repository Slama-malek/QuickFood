using QuickFood.QuickFood;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickFood.app_liv
{
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void inscrit(object sender, EventArgs e)

        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" ||  TextBox5.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Remplir tous les champs...')", true);

            }
          

            else
            {


                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into livreur (nom_liv,email_liv,login_liv,mdp_liv)values('" + TextBox1.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox5.Text.ToString() + "')";
                connexion.cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('livreur est bien ajouté ...')", true);

                connexion.cnx.Close();
                Response.Redirect("inscription.aspx");


            }

        }



    }
}