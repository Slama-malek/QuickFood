using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace QuickFood.QuickFood
{
    public partial class admine : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select distinct commande.id_cmd,client.nom_pre_client,client.tel_client,client.adr_cl,detail_cmd.quantite,platss.nom_plat from client,commande,detail_cmd,platss where client.idclient=commande.idclient and  commande.id_cmd=detail_cmd.id_cmd and detail_cmd.id_platss=platss.id_platss and commande.etat='En attente'";
            SqlDataReader lire_plats = connexion.cmd.ExecuteReader();

            while (lire_plats.Read() == true)
            {



                lbl_cmd.Text += "<tr><td>" +
                                "<h5>Nom et prénom</h5><p>" + lire_plats[1].ToString() + " </p>" +
                                "<h5>adresse</h5><p>  " + lire_plats[3].ToString() + "</p><h5>Téléphone</h5><p>  " + lire_plats[2].ToString() + "    </p></td><td><strong>" + lire_plats[4].ToString() + " X </strong>" + lire_plats[5].ToString() + "" +

                            "</td><td class='options'><div class='dropdown dropdown-options'>" +

      " <a href='admine.aspx?rep=acc&id1=" + lire_plats[0].ToString() + "' class='add_to_basket'><i class='icon-ok-circled2'></i></a> " +
                                       "</div></td><td class='options'><div class='dropdown dropdown-options'>" +

     " <a href='admine.aspx?rep=refuser&id1=" + lire_plats[0].ToString() + "' class='add_to_basket'><i class=' icon-cancel-circled2'></i></a> " +
                                       "</div></td></tr>";
                
            }

            string id1 = "";

            string rep = "";
            try

            {
                id1 = Request.QueryString.Get("id1");
                rep = Request.QueryString.Get("rep");
            }
            catch { }

            if (rep == "acc")
            {
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "update  commande set  etat= 'Accpter' where id_cmd='" + id1.ToString() + "' ";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();


                connexion.cnx1.Close();
                connexion.cnx1.Open();               
                connexion.cmd1.CommandText = "insert into notification (date_notfi,vue,etat_notfi,numero)values( '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "','non','Accepter','" + id1.ToString() + "')";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();


            }

            if (rep == "refuser")
            {
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "update  commande set  etat= 'Refuser' where id_cmd='" + id1.ToString() + "' ";
                connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();

                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "insert into notification (date_notfi,vue,etat_notfi,numero)values( '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "','non','Refuser','" + id1.ToString() + "')";
                connexion.cmd1.ExecuteNonQuery();
                connexion.cnx1.Close();
            }





            if (!IsPostBack)
            {

                String idr = null;

                try
                {

                    idr = Session["idp"].ToString();
                }
                catch
                {
                    Response.Redirect("index.aspx");
                }



                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from resto where resto.id_resto='" + idr.ToString() + "' ";
                SqlDataReader lire = connexion.cmd1.ExecuteReader();
               if (lire.Read() == true)
                {
                    TextBox1.Text = lire[1].ToString();

                    textarea.Text = lire[5].ToString();
                    TextBox2.Text = lire[2].ToString();
                    TextBox3.Text = lire[4].ToString();
                    TextBox4.Text = lire[3].ToString();
                    TextBox9.Text = lire[7].ToString();
                    TextBox10.Text = lire[6].ToString();
                    Image1.ImageUrl = "img/resto/" + lire[0].ToString() + ".jpg";
                }

                //charger type
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "select distinct type from platss";
                SqlDataReader lire1 = connexion.cmd.ExecuteReader();
                while (lire1.Read() == true)
                {

                    DropDownList1.Items.Add(lire1[0].ToString());
                }
            }



            charger_palts();


            string id = "";

            string type = "";
            try

            {
                id = Request.QueryString.Get("id");
                type = Request.QueryString.Get("type");
            }
            catch { };



            if (type == "supprimer")

            {
                panel_sup.Visible = true;


                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from platss where id_platss='" + id.ToString() + "'";
                SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
                while (lire1.Read() == true)
                {


                    sup.Text = lire1[1].ToString();

                }




            }



            if (type == "modifier")

            {
                panel_mod.Visible = true;


                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from platss where id_platss='" + id.ToString() + "'";
                SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
                while (lire1.Read() == true)
                {


                    TextBox6.Text = lire1[1].ToString();

                    TextBox7.Text = lire1[3].ToString();

                    TextBox5.Text = lire1[4].ToString();
                    TextBox8.Text = lire1[2].ToString();
                }




            }







        }

        protected void enregistrer(object sender, EventArgs e)

        {


            if (FileUpload2.HasFile)
            {

                
                String FileName = Session["idp"].ToString() + ".jpg";
                //sauvgarder image
                FileUpload2.SaveAs(Server.MapPath("img/resto/" + FileName.ToString()));
               


            }


            String idr = Session["idp"].ToString();
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update  resto set  nom_resto= '" + TextBox1.Text.ToString() + "',adr_resto= '" + TextBox4.Text.ToString() + "',tel_resto= '" + TextBox2.Text.ToString() + "',email_resto='" + TextBox3.Text.ToString() + "', mdp_resto='" + TextBox9.Text.ToString() + "',login_resto='" + TextBox10.Text.ToString() + "',description='" + textarea.Text.ToString() + "' where id_resto='" + idr.ToString() + "' ";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();




        }

        //protected void changermdp(object sender, EventArgs e)

        //{
        //    if (nmdp.Text.ToString() == cmdp.Text.ToString()) { 

        //    String idr = Session["idp"].ToString();
        //    connexion.cnx.Close();
        //    connexion.cnx.Open();
        //    connexion.cmd.CommandText = "update  resto set mdp_resto= '" + nmdp.Text.ToString() + "' where id_resto='9' ";
        //    connexion.cmd.ExecuteNonQuery();
        //    connexion.cnx.Close();
        //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Changement avec succés')", true);
        //        nmdp.Text = "";
        //        ancienmdp.Text = "";
        //        cmdp.Text = "";
        //    }
        //else {
        //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('mot de passe incorrecte')", true);


        //    }


        //}


        //protected void changerlogin(object sender, EventArgs e)

        //{
        //    if (nlogin.Text.ToString() == cnlogin.Text.ToString())
        //    {

        //        String idr = Session["idp"].ToString();
        //        connexion.cnx.Close();
        //        connexion.cnx.Open();
        //        connexion.cmd.CommandText = "update  resto set login_resto= '" + nlogin.Text.ToString() + "' where id_resto='" + idr.ToString() + "' ";
        //        connexion.cmd.ExecuteNonQuery();
        //        connexion.cnx.Close();
        //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Chanemment avec succés')", true);
        //        nlogin.Text = "";
        //        alogin.Text = "";
        //        cnlogin.Text = "";

        //    }
        //    else
        //    {
        //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('nom d'utilisateur incorrecte')", true);


        //    }
        //}


               protected void ajouter(object sender, EventArgs e)

        {

          



            String idr = Session["idp"].ToString();
                connexion.cnx.Close();
                connexion.cnx.Open();
                connexion.cmd.CommandText = "insert into platss (nom_plat,descrip_plat,prix_plat,type,id_resto)values('" + nomp.Text.ToString() + "','" + desc.Text.ToString() + "','" + prix.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + idr.ToString() + "')";
            connexion.cmd.ExecuteNonQuery();
                connexion.cnx.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Changemment avec succés')", true);
               nomp.Text = "";
               
                desc.Text = "";
          prix.Text = "";




        }


        protected void supprimer(object sender, EventArgs e)

        {
          

            

            String idr = Session["idp"].ToString();
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "delete from platss where nom_plat='" + sup.Text.ToString() + "'";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Changemment avec succés')", true);
           sup.Text = "";

            


        }
        protected void Annuler (object sender, EventArgs e)

        {


            panel_sup.Visible = false;




        }
        protected void annulermod (object sender, EventArgs e)

        {
            panel_mod.Visible = false;





        }
        protected void oke(object sender, EventArgs e)

        {
            if (FileUpload2.HasFile)
            {


                String FileName = Session["idp"].ToString() + ".jpg";
                //sauvgarder image
                FileUpload2.SaveAs(Server.MapPath("img/resto/" + FileName.ToString()));
                Image1.ImageUrl = "img/resto/" + FileName.ToString();


            }
           





        }
        protected void oke1(object sender, EventArgs e)

        {
            if (FileUpload1.HasFile)
            {
                int count=0;
                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from platss";
                SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
              while(lire1.Read() == true)
                {
                    count = int.Parse(lire1[0].ToString());
                }
                count = count + 1;

                //sauvgarder image
                FileUpload1.SaveAs(Server.MapPath("img/plats/" + count.ToString() + ".jpg"));
                Image2.ImageUrl = "img/plats/" + count.ToString() + ".jpg";


            }






        }


        protected void modifier(object sender, EventArgs e)

        {
            String name = "";
            String idr = Session["idp"].ToString();
            connexion.cnx1.Close();
            connexion.cnx1.Open();
            connexion.cmd1.CommandText = "select * from platss where id_resto='" + idr.ToString() + "'and nom_plat='" + TextBox6.Text.ToString() + "'";
            SqlDataReader lire1 = connexion.cmd1.ExecuteReader();
          if (lire1.Read() == true)
            {
                 name = lire1[0].ToString();
            }

                if (FileUpload3.HasFile)
            {

                String FileName = name+".jpg";
                //sauvgarder image
                FileUpload3.SaveAs(Server.MapPath("img/plats/" + FileName.ToString()));


            }

            //String idr = Session["idp"].ToString();
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "update  platss set nom_plat= '" + TextBox6.Text.ToString() + "' ,descrip_plat= '" + TextBox8.Text.ToString() + "' ,prix_plat= '" + TextBox7.Text.ToString() + "',type= '" + TextBox5.Text.ToString() + "' where nom_plat='" + TextBox6.Text.ToString() + "'and id_resto= '" + idr.ToString() + "'";
            connexion.cmd.ExecuteNonQuery();
            connexion.cnx.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Changemment avec succés')", true);
          TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";




        }











     


        public void charger_palts()
        {

            try
            {
                String idr = Session["idp"].ToString();

            lbl_plat1.Text += "<h2 class='inner'>Menu</h2>";



            //charger type plat
            connexion.cnx.Close();
            connexion.cnx.Open();
            connexion.cmd.CommandText = "select distinct type from platss,resto where platss.id_resto=resto.id_resto and resto.id_resto='" + idr.ToString() + "'  "; 
            SqlDataReader lires = connexion.cmd.ExecuteReader();
            while (lires.Read() == true)
            {
              
                lbl_plat1.Text+= "<h3 class='nomargin_top' id='starters'>"+lires[0].ToString()+"</h3>";

                connexion.cnx1.Close();
                connexion.cnx1.Open();
                connexion.cmd1.CommandText = "select * from platss,resto where type='"+lires[0].ToString()+ "' and platss.id_resto=resto.id_resto and resto.id_resto='" + idr.ToString() + "' ";
                SqlDataReader lire_p = connexion.cmd1.ExecuteReader();
                while (lire_p.Read() == true)
                {
                    lbl_plat1.Text += "<table class='table table-striped cart-list'>" +
            "<thead><tr><th>Plat</th><th>Prix</th><th>Modifier</th><th>Supprimer</th></tr></thead>" +
            "<tbody><tr>" +

                "<td><figure class='thumb_menu_list'><img src = 'img/plats/" + lire_p[0].ToString() + ".jpg' alt='thumb'></figure>" +

                    "<h5>" + lire_p[1].ToString() + "</h5><p> " + lire_p[2].ToString() + " </p></td></td><td><strong>" + lire_p[3].ToString() + "</strong></td>"+


                   " <td class='options'><div class='dropdown dropdown-options'>"+

                          " <a href='admine.aspx?type=modifier&id=" + lire_p[0].ToString() + "' class='add_to_basket'><i class='icon_pencil-edit'></i></a>" +
                    "</div></td> " +
                    " <td class='options'><div class='dropdown dropdown-options'>" +
                          " <a href='admine.aspx?type=supprimer&id=" + lire_p[0].ToString() + "' class='add_to_basket'><i class='icon_trash'></i></a>" +
                    "</div></td></tr></tbody></table> <hr> "
                    ;



                }
                }

             

            }
            catch { }



          

















        }
    }
}