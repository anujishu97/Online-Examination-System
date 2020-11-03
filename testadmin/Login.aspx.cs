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
        if (txtUser.Text == "admin" && txtPass.Text == "12345")
        {
            Session["admin"] = "admin";
            Response.Redirect("/online_testing/testadmin");
        }
        else
            lblError.Text = "Login failed....";
    }
}