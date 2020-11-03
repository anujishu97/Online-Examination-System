using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select * from Registration where userid='"+txtUser.Text+"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (txtPass.Text == dr[3].ToString())
            {
                Session["userid"] = txtUser.Text;
                Session["name"] = dr[0] + " " + dr[1];
                Session["pic"]=dr[9].ToString();
                cn.Close();
                Response.Redirect("/online_testing/testuser");
            }
            else
                lblError.Text = "Entered password is wrong...";
        }
        else
            lblError.Text = "Entered user id does not exist...";
        cn.Close();
    }
}