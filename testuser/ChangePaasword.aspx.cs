using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlClient;

public partial class testuser_ChangePaasword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select password from Registration where userid='" + Session["userid"] + "' and password='"+txtCurPass.Text+"'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            cn.Close();
            cn.Open();
            qr = "update Registration set password='"+txtNewPass.Text+"' where userid='" + Session["userid"] + "'";
            cmd = new SqlCommand(qr, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            lblMessage.Text = "Your password has been changed...";
            return;
        }
        else
            lblMessage.Text = "Your current password is wrong...";
        cn.Close();
    }
}