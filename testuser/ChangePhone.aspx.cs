using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testuser_ChangePhone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            Response.Redirect("Login.aspx");
            return;
        }
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "select mobileno from Registration where userid='" + Session["userid"] + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        lblPhone.Text = dr[0].ToString();
        cn.Close();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = (SqlConnection)Session["cn"];
        cn.Open();
        string qr = "update Registration set mobileno='" + txtNewPhone.Text + "' where userid='" + Session["userid"] + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblMessage.Text = "Phone number has been changed...";
    }
}