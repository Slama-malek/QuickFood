using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace QuickFood.QuickFood
{
    public class connexion
    {

        public static SqlConnection cnx = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn_quickfood"].ConnectionString);
        public static SqlCommand cmd = new SqlCommand("",cnx);
        public static SqlConnection cnx1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn_quickfood"].ConnectionString);
        public static SqlCommand cmd1 = new SqlCommand("", cnx1);
        public static SqlConnection cnx2 = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn_quickfood"].ConnectionString);
        public static SqlCommand cmd2 = new SqlCommand("", cnx2);

    }
}